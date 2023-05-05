pragma solidity ^0.8.0;

// This contract is for debugging/testing purposes
library PoseidonU1bn256 {
    struct HashInputs2 {
        uint t0;
        uint t1;
    }

    function mix(HashInputs2 memory i, uint q) internal pure {
        HashInputs2 memory o;

        o.t0 = 0;
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t0,
                0x010000f8c9faf0a148b8dc3c24f419942eacc040db2228dc14d0987039273218,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t1,
                0x010000a0624e412db6f5d0fbda9a227093e50001cf8335d01bc0cb40f7de4220,
                q
            ),
            q
        );

        o.t1 = 0;
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t0,
                0x010000a0624e412db6f5d0fbda9a227093e50001cf8335d01bc0cb40f7de4220,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t1,
                0x010000f42e78e9f26c144b5b36ee26de450221e148343c4a1f38e528d63a4b24,
                q
            ),
            q
        );

        i.t0 = o.t0;
        i.t1 = o.t1;
    }

    function ark(
        HashInputs2 memory i,
        uint q,
        HashInputs2 memory c
    ) internal pure {
        HashInputs2 memory o;

        o.t0 = addmod(i.t0, c.t0, q);
        o.t1 = addmod(i.t1, c.t1, q);

        i.t0 = o.t0;
        i.t1 = o.t1;
    }

    function sbox_full(HashInputs2 memory i, uint q) internal pure {
        HashInputs2 memory o;

        o.t0 = mulmod(i.t0, i.t0, q);
        o.t0 = mulmod(o.t0, o.t0, q);
        o.t0 = mulmod(i.t0, o.t0, q);
        o.t1 = mulmod(i.t1, i.t1, q);
        o.t1 = mulmod(o.t1, o.t1, q);
        o.t1 = mulmod(i.t1, o.t1, q);

        i.t0 = o.t0;
        i.t1 = o.t1;
    }

    function sbox_partial(HashInputs2 memory i, uint q) internal pure {
        HashInputs2 memory o;

        o.t0 = mulmod(i.t0, i.t0, q);
        o.t0 = mulmod(o.t0, o.t0, q);
        o.t0 = mulmod(i.t0, o.t0, q);

        i.t0 = o.t0;
    }

    function hash(HashInputs2 memory i, uint q) internal pure returns (uint) {
        // validate inputs
        require(i.t0 < q, "INVALID_INPUT");
        require(i.t1 < q, "INVALID_INPUT");

        // round 0
        ark(
            i,
            q,
            HashInputs2(
                0xca69a0bed279d51f8c5208a38e4a01dbd3d16b47ee7b1307f79d47c9c49b7604,
                0x2c025b2a0a3c9fcf6ab486a0203b1113226b1812b41c8da5259f8d79ecedbf12
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 1
        ark(
            i,
            q,
            HashInputs2(
                0x8544c404f547d87a63bd94564724bf17ae63e7cb754136bed2d1cbfa55372e0b,
                0xc4362e6365780460e15cc1ba04d7f50ab04942b21e0ebc1420648d00337f661d
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 2
        ark(
            i,
            q,
            HashInputs2(
                0x04c0f21c6f555aedab71c585ba72dfa7083cfc6d044778931f3f1b39c808a92f,
                0x6e9528751165243d3c87230634a6e8fb26d60da7593eafea749dd06eafc17d08
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 3
        ark(
            i,
            q,
            HashInputs2(
                0x8c48ee3d3524ca00c385a0bd0e50224701545bc1231f742e3b554aacf2b3ad04,
                0x2b8c4112c79523f441783f768afd2669f1eef4cf9ad85903334a9331b086020d
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 4
        ark(
            i,
            q,
            HashInputs2(
                0x3a8d09b03f78a4328174f05bc3f4e5323294cb2b8bf167d11da91601e2caeb2e,
                0x8d9e18de98d511eea3498dac2e626790bfef5ee6fb375351d063c788fbeea40d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 5
        ark(
            i,
            q,
            HashInputs2(
                0x1f8cad42d0da80404767acbcca76630c53eb03fc30c7ca857ebe71d2dcc02f30,
                0x2836ddae85d791bdfcffad259bb9c3e5c9ad4121d7629947a62cf78101799c2a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 6
        ark(
            i,
            q,
            HashInputs2(
                0x67d6d0ceb45d0ed719f52fa149a101c08f4a73c8673f506c2020fbabb69a762c,
                0xaca8a9fbb946c118375c595f92d8195c58efcc19312462bd01d4737c2b4d372f
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 7
        ark(
            i,
            q,
            HashInputs2(
                0x79e65b1d1445765a2001df16eafaa1d9818f4456158ff5a19cf5925ec5991c0a,
                0xbddc477cef151267bb4cf9216e10ff40dbb9e8b3c3afef58d89d5d92093d0920
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 8
        ark(
            i,
            q,
            HashInputs2(
                0x0cdb20d84d14bba498c80ad276957d071fbbb39107993c0f9fd8183afefbfe02,
                0x63dcf803a3970b0a51bb92f3b29a80681138f6a69e10d7fa33b0b0542cc04512
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 9
        ark(
            i,
            q,
            HashInputs2(
                0xefd05af90d8de9c0c37fabc41939f4c9e6029f8b66a3afbf47989c658f45f70c,
                0x5aa7dc4225cae69d186a0e2c19cee0341f9b42f46deb0a8fd1e41e0ef7b93516
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 10
        ark(
            i,
            q,
            HashInputs2(
                0xabd30197eed5fc565c53cef1be05302e5dc5acd1bfaed1f7dff7f3c8710fc801,
                0x94185f60500e77ca856e368db25a178ed6637249a194f9ecaddc68f9fddc3828
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 11
        ark(
            i,
            q,
            HashInputs2(
                0xc90f057ab43d97cfc025a4570ac48198b5259346821a6697cf135990d9812005,
                0xc3b1de86f90ebaa6153b1baa58d6daca5b4fa4a16f0051f7450a1127d1fa6a1d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 12
        ark(
            i,
            q,
            HashInputs2(
                0xc2d8ec0dfb0ddd043bd846471ef63a66e05c643e7a5ad59cac913e33977e231c,
                0x733d8ef59d29d51d4e29f20739002ef21850126ad492ae185c9012eb2d970427
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 13
        ark(
            i,
            q,
            HashInputs2(
                0x283b880c647b2079ba03bb39595861ad0c5e5cef72c59a7355e0c3cdf412ce03,
                0x7d3ef814306867c01e99c25308b7a193742a8a6f27122e17065f733597faa605
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 14
        ark(
            i,
            q,
            HashInputs2(
                0xd81db9f5e63125adb186550959e8eebade4d0803b66b68dc3a55c0a42ea20715,
                0x49d2fd2dd2577d7df2d99b8b50acaa29cdc25f95732faa28712ed180378f652e
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 15
        ark(
            i,
            q,
            HashInputs2(
                0x31543ca391b9db067eb0d1fa49abbad8c886bbffa306beeeac46f7732e7cc705,
                0x0fc58ca98ab2994a9d829dd8c5cf2fb74fc26aa3adb3b9eeacd705abb2b65d02
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 16
        ark(
            i,
            q,
            HashInputs2(
                0xa536a980c534bf4fc567a07a096d554b5cd5829db3600974ea686de62ea6af28,
                0x33187ca8aad4084641cb430da33cea0ceef74e856ed7ac4ae4bc453223674e0f
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 17
        ark(
            i,
            q,
            HashInputs2(
                0x67f46620585c962ab8b03cabceed6bffa15b3519639f07b19402478e92a21321,
                0x6cd7b8b5a63c23cbeca631c63d11fa0df56df77b0f7761b27add0d0324a53721
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 18
        ark(
            i,
            q,
            HashInputs2(
                0xd8de94783690920cc4ed53a9ee81e15f6fb21d46fc1fa09890df78b22956c00a,
                0xee490912ca5b2eba747310dd68226a8c1c1be5f2104f5e4208d346f3694b8805
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 19
        ark(
            i,
            q,
            HashInputs2(
                0x5e797a54b9bdb31df1f9537412b280c6950ebc2820eee510c603ab36769d0b04,
                0x1efad2a30869c7def5c0e22a77cbb09e56566b2ede4f3053aed97e41e28a1730
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 20
        ark(
            i,
            q,
            HashInputs2(
                0x8f1480cec3ce23a3b38c6255c02e1e22fb2e2e700ebff95c4393f75c88c1e71a,
                0x853491b7c7b00787b2d82689f57a811b95ae1cfd0e981fd97109f1d880e86b1b
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 21
        ark(
            i,
            q,
            HashInputs2(
                0xdcd0096469592c082b8dc03a003fbad73c5aff423a4f24a866da3fdce6a73c10,
                0xbbde4c0f9161a5dcaaecf3e4cebca9fe4b39327a37eba4fdae6bbbc59005d006
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 22
        ark(
            i,
            q,
            HashInputs2(
                0x730ff68d66a9a8281071ef9126cbc5de38749b3a682e9898560b0f7742b7ea0e,
                0x9c2ae65f0fd084773ffdf70ed2803bb8389a2e7e7765f81d51e18241c3283806
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 23
        ark(
            i,
            q,
            HashInputs2(
                0xab361c5e642d47db842d62f4bfe938bdfe33ccda2eab5302dd4a4b2ef858f912,
                0x0866c576f60da6610b68cf25b7a54c76a4b060c3a86e3d8626beaaf57dba960a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 24
        ark(
            i,
            q,
            HashInputs2(
                0xb46fd214e8bc82f40e193e13391fd9d1920606cee61e550ae2dae6397c95f323,
                0x2ce999c0a63e01f36ca298c39f50e6f8631351c389dc0b76db0ab7133c3c2c28
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 25
        ark(
            i,
            q,
            HashInputs2(
                0x79e4c95597395fcac7b59944f844868f1be77a62b7737426ceb6b0cdc36efa27,
                0xca361b0a2f3f08b6ae5141c2a7e1a96c9fd349bfd4b609fd65d4c0723b2d230b
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 26
        ark(
            i,
            q,
            HashInputs2(
                0x109377a5ce4ba24193ac71783495793eba280d3e5ad3840a6412687de4e62123,
                0x9ba180081860aa2d9ac3b69f3881c18747e68cd5766ed193c424e5c84e1b8508
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 27
        ark(
            i,
            q,
            HashInputs2(
                0x99264f546c412e89dc8c43610913f54814d3eb42eea0787cd42e1bee7fb74e20,
                0x93eba67266631772a9e248a73ab0c8305c69a8bba508d12d7a044e0cb6a13519
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 28
        ark(
            i,
            q,
            HashInputs2(
                0x457bfc4bbb3adc7642a9b460da0ce18d61146bd598fa17da2ca3a4d50746362b,
                0xd639e2ef6eb040746cf35514d594a656138ffedd3ee01815ac460bdfaabe6d0b
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 29
        ark(
            i,
            q,
            HashInputs2(
                0x2cc4d1d35cdd1b288fcb550e8993eb8a7cc308a3be64a661a1092fbf88138408,
                0x8fbccc8c2254dcfd4a2e54aad0faea86364a1c5a291c145ff84bb630a7662910
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 30
        ark(
            i,
            q,
            HashInputs2(
                0x817a69e1e2bb1b72f9c1a8dd39dc8d702e0703c2991cf1c2c77ced9f66f9961d,
                0x1bb80e6501c59437875557560e4f4efbba1f0a0086d43007112729b6f458fe01
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 31
        ark(
            i,
            q,
            HashInputs2(
                0xc73cda9f095f64ed7429ffd11f48da776158847e505dab1f9f6cfeb390880414,
                0x4a703fdd03b0c99f7f11d50009f98913b0f7991e81535f1644778462c639332e
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 32
        ark(
            i,
            q,
            HashInputs2(
                0xe6dd5fc9996e16f2be1c7a736bf3d8e5012366b6a1f9c7815fc80d587f19e71b,
                0x00fd218f3aab956af67db613fd706b43acba0e137babf826e56d4af4f5e75a1e
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 33
        ark(
            i,
            q,
            HashInputs2(
                0x2dcdf21d6af9d51e7db44b3cc99aee8d97c3a91fa1b12f9d7036985068868e05,
                0x3a3c33c02cd288f5b178c1a0d8b520250ea71338f7d54c47aa87ae87212f3505
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 34
        ark(
            i,
            q,
            HashInputs2(
                0xed5cf39f48c0118831c139ae6587ea7eb448ae5094ef1d84fd0e021f43b7d604,
                0xfec151be3932a9091f54886d8ca36b6ee891b75dc4bf7e1dbcf8e968bbc2012f
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 35
        ark(
            i,
            q,
            HashInputs2(
                0x24f316ac0763c02034ecacc622555c9f8a44c41aaca116a873fc8531e8452e0c,
                0x726fafa9c326f2093eb267ef7975bf101b2ed7fa2cf98c7a85fb7852e3f78420
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 36
        ark(
            i,
            q,
            HashInputs2(
                0x7c4544846191a5596422dc81331a63e258348eb4a91af4c47f0f539db74f041f,
                0x271f79959c31a7f671d28f34668e83b765f97a9b1de972b7f8e9e3f41ab0c220
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 37
        ark(
            i,
            q,
            HashInputs2(
                0x6335863368c2c945aebdb1b8d41922b763f94f760afbbe86a8575b43ce04a32d,
                0x6e02d5c9e9c33a400aadd573f8b0e01dafaeb2fb87fae2f76d082dfbbc7a0c21
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 38
        ark(
            i,
            q,
            HashInputs2(
                0xb6271b5690249a11336f48078dafe310e2468459e195ec8b343298fcaec0d815,
                0x0edcc17427ff72478a33af1cd3bd83dc5338112562670928ad6af8f8ccff6027
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 39
        ark(
            i,
            q,
            HashInputs2(
                0xaffa27911239dd7865927bf165807e27ee8559c43bbb5d7b762f1ee03a81ce2c,
                0x32cb694f49ad581d9c55703ce311b202b788a42e549c34af5b69fc9018496523
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 40
        ark(
            i,
            q,
            HashInputs2(
                0x31ef814f28cb67bee707e07620b5eb3de7917b0b0f045e1dcbb4283bfb888311,
                0xa7ba872491e3a48db773ad1fcd57d68de7caddb2963d8133878dad06d3c5ee2d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 41
        ark(
            i,
            q,
            HashInputs2(
                0x7b5c0cff0d1d2261a504aeea798321d615f116c6adea15bb7b8e47a3c062c610,
                0x50565366d86aac498d3f7b7d7b1c034cf0d441a0a3eea6add100e59d94666a2a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 42
        ark(
            i,
            q,
            HashInputs2(
                0x0da62e96849569f80c0d650f04a25e902d2ae749c94078f51785a28eb4743405,
                0x5e4cf21170f77527519469fc7ec74ecb739ab6995b3e7546586d80852e1e3d05
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 43
        ark(
            i,
            q,
            HashInputs2(
                0xa2805eab51b96bb5f8de26c1c4858fa5acacfa056e350abc88ef9b276f023b0b,
                0xf2ecd318d739421b22c8e2d7b2e89db6cc60632c86d9e52c271256d321d11429
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 44
        ark(
            i,
            q,
            HashInputs2(
                0x76817c221fa97cf22223d5f958e4a16ae9250e29104602bbd479c5599b367605,
                0xfbf62526cd3ad0e17a27c0089764055e2fb6b5fa5895f06747d53fac3105ed1c
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 45
        ark(
            i,
            q,
            HashInputs2(
                0x95945069800d6b92cefbbd9bfdeb34261375d2a0fe218d81b0f47b4f3ed3b21f,
                0x48b75801681bd4eb0aa7f407b64c92429fcc1a8338ffd79ce8801894b8334a0d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 46
        ark(
            i,
            q,
            HashInputs2(
                0x1e213c67fe90ad58cd8358efd2740178c097d50359bb94158a68a12397620610,
                0x6d007fe763c84d0778a9233db160bd35e95c12f8128ac19f83f5904993993f2b
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 47
        ark(
            i,
            q,
            HashInputs2(
                0x1f575646dea1ac0c01544d58034a2e8bbeee0a8c6c97461706e858c21138ab16,
                0xbf1e17334ab3f42a6aa1e7dd736dbb2bd164ef239808491bcdf596399c59f41f
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 48
        ark(
            i,
            q,
            HashInputs2(
                0xa736b6f889b37094ccbba0f2596d5032cfe0703cf5c6ce283a0715b5c205f62c,
                0x72270d8a00f4e9583655242c5f612c9538ebed629363d8b6c453a19fc9671b12
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 49
        ark(
            i,
            q,
            HashInputs2(
                0xa2f0b3fd84abc36c7184d5a841bd41f629ce3f81490a5f4c1994b4c30bd6f429,
                0x556e6d8025fb129f840a2869b70e1316fb34fc6f55a953128c6021fccdba9d29
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 50
        ark(
            i,
            q,
            HashInputs2(
                0x940b4d3f01f9de2d35f24bafd61067f6c87309cc531dc6dd40c38b30e7b18a2f,
                0x21307879083a3f95217bb6dc8e441a11dee1af032df9dcfa0eb89b956db1f609
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 51
        ark(
            i,
            q,
            HashInputs2(
                0xdc952ae853752aba6083ea4dabdc6a61e2ff528dbc7638a04669c9c22000f720,
                0x757875dd63ff1ad40b33792228c19e1d208d353a07ef1b002a4924f0b84c0623
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 52
        ark(
            i,
            q,
            HashInputs2(
                0x58a749b36f53adb3542a5f7f1200ad2a50e9f4b359d088a2b6259472a0d9d705,
                0x30e06e378393678a5f4f90e01c3c746deb5c1c841f7be109234fee9db4ebb819
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 53
        ark(
            i,
            q,
            HashInputs2(
                0xbc0adc12d73b0cb63d9075b7bc24f34d10f0375c2651969c5856dacf488db205,
                0xa4b88e8252f4e8cd270d758fa317f1aba85797f01dec1ac29be75236a03c4e24
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 54
        ark(
            i,
            q,
            HashInputs2(
                0xe06ba0460ba12921e9623bd245890822da113f55cf7a045524430673c35ae912,
                0x133afa9ed306563c5e7fe1bf7732b58f395d77ab7bfe321c1437a00047f81c11
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 55
        ark(
            i,
            q,
            HashInputs2(
                0xcf8221b5135b9f2038d688e854a3ea0bc5b6147b2eefb051df27846dcc63d327,
                0x434d30d08a442a9870b2a36683786c081205aaa54c40d287ac5c8ab6675d9d04
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 56
        ark(
            i,
            q,
            HashInputs2(
                0x7091f5e4bfaed4dfe9eb8f26b67e7271f295de8924ad4f2b9d3b045245a72118,
                0x472bd775e82eb27906b5c81a5005e9342f2eb35c9bee05c1312db26b65edae24
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 57
        ark(
            i,
            q,
            HashInputs2(
                0xbdf5e59f2a0ac6a52d21c73a9566cfee69ccbf6b795c95c32368c8179cdc9d14,
                0x431a0350fcd95e9ed630cc172aa0800f7d30ea6c8ea87407f615ad8866c1cc2d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 58
        ark(
            i,
            q,
            HashInputs2(
                0x38e641d32c43b6b7cb41fc18e0ebbe1e71a74756582882e90212549b57a41c18,
                0xdd57e30335edc6a5e39355f4240b5676507b1dd3eaf10509009e978361e04b11
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 59
        ark(
            i,
            q,
            HashInputs2(
                0x1435bf7596e81f720873dc26a165d9a45692981b9fd81fc55669e35b06902d11,
                0xfaf348349e372ed026edffead898ced0f4890e1f8962078d88b0ffd2de88451a
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 60
        ark(
            i,
            q,
            HashInputs2(
                0xc30d9cff7811f7f0446891829157f23241d810defbe5fb6f783840b525fb8529,
                0x8b3d02451ee117f8e4180c89216411165b6759b2c296040f748119909af22d0d
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 61
        ark(
            i,
            q,
            HashInputs2(
                0x4b32762ed815d8ed0a5fb1d0bfceee1f935a5a4a1af5fc2eac5935fd03482c01,
                0x34969776a253c9764cd741330c08c41de9e91b5b58aa52c61ded49177e0f6b15
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 62
        ark(
            i,
            q,
            HashInputs2(
                0x00d6356fdc09e93c7a9a94b1acc7aade5f89f785d5eece3906bf76d6a8aeb92e,
                0xcc4fe19b7e992484a4321147c3e466a66210db2656ba288933ad28337f7ce607
            )
        );
        sbox_full(i, q);
        mix(i, q);

        return i.t1;
    }
}
