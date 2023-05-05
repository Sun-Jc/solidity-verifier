use clap::Parser;

#[cfg(feature = "bn256")]
use neptune_old::{hash_type::HashType, poseidon::PoseidonConstants, Strength};

#[cfg(not(feature = "bn256"))]
use neptune_old::{hash_type::HashType, poseidon::PoseidonConstants, Strength};

use serde_json::json;
use std::fmt::Write;
use std::path::{Path, PathBuf};
use std::process::exit;

#[cfg(feature = "bn256")]
use nova_curves::bn256::Fr;

#[cfg(feature = "bls")]
use blstrs::Scalar as Fr;

#[cfg(feature = "pallas")]
use pasta_curves::Fp;

#[cfg(feature = "vesta")]
use pasta_curves::Fq;

#[cfg(any(feature = "bn256", feature = "bls"))]
type FieldElement = Fr;

#[cfg(feature = "pallas")]
type FieldElement = Fp;

#[cfg(feature = "vesta")]
type FieldElement = Fq;

#[cfg(feature = "p1")]
type Arity = generic_array::typenum::U1;
#[cfg(feature = "p1")]
const state_size: usize = 2;

#[cfg(feature = "p2")]
type Arity = generic_array::typenum::U2;
#[cfg(feature = "p2")]
const state_size: usize = 3;

#[cfg(feature = "p3")]
type Arity = generic_array::typenum::U3;
#[cfg(feature = "p3")]
const state_size: usize = 4;

#[cfg(feature = "p5")]
type Arity = generic_array::typenum::U5;
#[cfg(feature = "p5")]
const state_size: usize = 6;

#[cfg(feature = "p10")]
type Arity = generic_array::typenum::U10;
#[cfg(feature = "p10")]
const state_size: usize = 11;

// For BLS Fr
#[cfg(feature = "bls")]
fn to_be_bytes(scalar: FieldElement) -> [u8; 32] {
    scalar.to_bytes_be()
}

// For Fp / Fq
#[cfg(any(feature = "pallas", feature = "vesta"))]
fn to_be_bytes(scalar: FieldElement) -> [u8; 32] {
    let mut be_bytes = pasta_curves::group::ff::PrimeField::to_repr(&scalar);
    be_bytes.reverse();
    be_bytes
}

// For BN256 Fr
#[cfg(feature = "bn256")]
fn to_be_bytes(scalar: FieldElement) -> [u8; 32] {
    use nova_curves::group::ff::PrimeField;
    let mut be_bytes = scalar.to_repr();
    be_bytes.reverse();
    be_bytes
}

#[derive(Parser, Debug)]
#[command(author, version, about, long_about = None)]
struct Cli {
    #[arg(short, long, default_value = "standard")]
    security_level: String,

    #[arg(short, long, default_value = "sponge")]
    hash_type: String,

    #[arg(short, long)]
    out_json_path: Option<PathBuf>,
}

fn main() {
    let cli = Cli::parse();

    let security_level: Strength = match cli.security_level.as_str() {
        "standard" => Strength::Standard,
        "strengthened" => Strength::Strengthened,
        _ => {
            println!("two security levels are supported currently: 'standard' and 'strengthened'");
            exit(1);
        }
    };

    let hash_type = match cli.hash_type.as_str() {
        "encryption" => HashType::Encryption,
        "sponge" => HashType::Sponge,
        _ => {
            println!("two security levels are supported currently: 'encryption' and 'sponge'");
            exit(1);
        }
    };

    let out_json_path = match cli.out_json_path.as_deref() {
        Some(out_json_path) => out_json_path,
        None => Path::new("."),
    };

    let constants: PoseidonConstants<FieldElement, Arity> =
        PoseidonConstants::new_with_strength_and_type(security_level, hash_type.clone());

    fn format_scalar(scalar: FieldElement) -> String {
        let mut scalar_string = String::new();

        let be_bytes = to_be_bytes(scalar);

        write!(scalar_string, "0x").unwrap();
        for &b in be_bytes.iter() {
            write!(scalar_string, "{:02x}", b).unwrap();
        }
        scalar_string
    }

    let round_constants = constants
        .round_constants
        .clone()
        .unwrap()
        .into_iter()
        .map(|scalar| format_scalar(scalar))
        .collect::<Vec<String>>();

    let matrix_m = constants
        .mds_matrices
        .m
        .clone()
        .into_iter()
        .map(|m_row| {
            m_row
                .into_iter()
                .map(|scalar| format_scalar(scalar))
                .collect::<Vec<String>>()
        })
        .collect::<Vec<Vec<String>>>();

    let constants_serialized = json!({
        "state_size_field_elements": state_size,
        "full_rounds": constants.full_rounds,
        "partial_rounds": constants.partial_rounds,
        "round_constants": &round_constants,
        "matrix_M": &matrix_m
    });

    std::fs::write(out_json_path, constants_serialized.to_string()).expect("Unable to write file");

    println!("security_level: {:?}", security_level);
    println!("hash_type: {:?}", hash_type);
    println!(
        "output JSON path: {:?}",
        std::fs::canonicalize(out_json_path)
    );

    exit(0);
}
