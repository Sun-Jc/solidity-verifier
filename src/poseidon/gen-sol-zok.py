import subprocess
import sys
import os

t = int(sys.argv[1])
c = sys.argv[2]

level = sys.argv[3]
h_type = sys.argv[4]

fn = f"poseidon-{t}-{c}.json"

def input_struct(t):
    params = "\n".join([f"uint t{i};" for i in range(t+1)])
    return f"struct HashInputs{t+1} \n {{ \n {params} \n }}\n"

def full_sol(t, c, body):
    return f"pragma solidity ^0.8.0; \n\n // This contract is for debugging/testing purposes \n library PoseidonU{t}{c} \n {{ \n {input_struct(t)} \n {body} \n }}"

cmd = f"cargo run --no-default-features --features \"p{t} {c}\" --package neptune-constants-generator --release -- --security-level {level} --hash-type {h_type} --out-json-path {fn}"
print(cmd)

subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT).communicate()

result = subprocess.run(['python3', 'src/poseidon/contract_codegen.py', fn], stdout=subprocess.PIPE)
body = result.stdout.decode('utf-8')

sol = full_sol(t, c, body)
sol_file = f"PoseidonNeptuneU{t}{c}.sol"
zok_file = f"PoseidonNeptuneU{t}{c}.zok"

with open(f"src/poseidon/{sol_file}", "w") as f:
    f.write(sol)
    print(f"import \"src/poseidon/{sol_file}\";")


result = subprocess.run(['python3', 'src/poseidon/zokrates_codegen.py', fn], stdout=subprocess.PIPE)
body = result.stdout.decode('utf-8')

with open(f"src/poseidon/{zok_file}", "w") as f:
    f.write(body)

