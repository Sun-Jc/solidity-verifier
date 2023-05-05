pragma solidity ^0.8.0;

// This contract is for debugging/testing purposes
library PoseidonU2bn256 {
    struct HashInputs3 {
        uint t0;
        uint t1;
        uint t2;
    }

    function mix(HashInputs3 memory i, uint q) internal pure {
        HashInputs3 memory o;

        o.t0 = 0;
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t0,
                0x010000a0624e412db6f5d0fbda9a227093e50001cf8335d01bc0cb40f7de4220,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t1,
                0x010000f42e78e9f26c144b5b36ee26de450221e148343c4a1f38e528d63a4b24,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t2,
                0x676666c6d4fbf3e7062d4acae95caea98b56cd337cb5b949aad9135a94525b13,
                q
            ),
            q
        );

        o.t1 = 0;
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t0,
                0x010000f42e78e9f26c144b5b36ee26de450221e148343c4a1f38e528d63a4b24,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t1,
                0x676666c6d4fbf3e7062d4acae95caea98b56cd337cb5b949aad9135a94525b13,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t2,
                0x01000048fba191b82333c5ba91412b4cf81e41c1c2e442c422b0fe10b5965328,
                q
            ),
            q
        );

        o.t2 = 0;
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t0,
                0x676666c6d4fbf3e7062d4acae95caea98b56cd337cb5b949aad9135a94525b13,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t1,
                0x01000048fba191b82333c5ba91412b4cf81e41c1c2e442c422b0fe10b5965328,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t2,
                0x6edbb6fdcb90b209a734885a0ad8e24e0de8ededd0c09dac733b506910c2e906,
                q
            ),
            q
        );

        i.t0 = o.t0;
        i.t1 = o.t1;
        i.t2 = o.t2;
    }

    function ark(
        HashInputs3 memory i,
        uint q,
        HashInputs3 memory c
    ) internal pure {
        HashInputs3 memory o;

        o.t0 = addmod(i.t0, c.t0, q);
        o.t1 = addmod(i.t1, c.t1, q);
        o.t2 = addmod(i.t2, c.t2, q);

        i.t0 = o.t0;
        i.t1 = o.t1;
        i.t2 = o.t2;
    }

    function sbox_full(HashInputs3 memory i, uint q) internal pure {
        HashInputs3 memory o;

        o.t0 = mulmod(i.t0, i.t0, q);
        o.t0 = mulmod(o.t0, o.t0, q);
        o.t0 = mulmod(i.t0, o.t0, q);
        o.t1 = mulmod(i.t1, i.t1, q);
        o.t1 = mulmod(o.t1, o.t1, q);
        o.t1 = mulmod(i.t1, o.t1, q);
        o.t2 = mulmod(i.t2, i.t2, q);
        o.t2 = mulmod(o.t2, o.t2, q);
        o.t2 = mulmod(i.t2, o.t2, q);

        i.t0 = o.t0;
        i.t1 = o.t1;
        i.t2 = o.t2;
    }

    function sbox_partial(HashInputs3 memory i, uint q) internal pure {
        HashInputs3 memory o;

        o.t0 = mulmod(i.t0, i.t0, q);
        o.t0 = mulmod(o.t0, o.t0, q);
        o.t0 = mulmod(i.t0, o.t0, q);

        i.t0 = o.t0;
    }

    function hash(HashInputs3 memory i, uint q) internal pure returns (uint) {
        // validate inputs
        require(i.t0 < q, "INVALID_INPUT");
        require(i.t1 < q, "INVALID_INPUT");
        require(i.t2 < q, "INVALID_INPUT");

        // round 0
        ark(
            i,
            q,
            HashInputs3(
                0x5d30d6e45b9908bf59855b4c90b13c038fb820734c3dcb5b1c78bb95d7ab5110,
                0x00dda367e3623837c262fadbae2c42b3be3c0099cac7538c4a3902e1e5c48026,
                0xb660616783b4f542768bdd68c990d8735f86b0a61c448a57322e37ba52822e13
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 1
        ark(
            i,
            q,
            HashInputs3(
                0xe78b10dd26e200d5e4030ad51bdae4637c856be0ed212e9d551f3bdf7369ff0d,
                0xbdabf122483cabdf2c327be5c991ea52caa7f9b1878594b25ed790023e46e905,
                0x38da424efd7605845879bc15b069bfeea2a6360319b89c60318e92b9a8c66523
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 2
        ark(
            i,
            q,
            HashInputs3(
                0x5884ae9b9cc341647a0b13c3aecc9f963af557423dbb1c8150f71116a08baa16,
                0x2df4288c1dbfa28afee89b3bfd4e02ea649e42699006f46a8c97f18ba5b11727,
                0xbf92725553db9d67e10286b83c6c83bc38fb2e49990085747c2d704c60bd262d
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 3
        ark(
            i,
            q,
            HashInputs3(
                0xe1855a24eb2ded7fed41a53246117a7c4f027ca27f5981973cab4cc4e64d4a17,
                0x0968ec04304a31283b215a988df6b4591a7d6edc641454595c8783b0cb5e3e1d,
                0xae4a9a2fb584fe0a6a4c1501e60487be0b1b2cf5b52d289eb68799586edb4e01
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 4
        ark(
            i,
            q,
            HashInputs3(
                0xd5cc8fa2a6e2f263afbe4591dd07c98afd68d3e7ea48a501b6743d061e8d0d0e,
                0xa28d062d311ccce65f6d42c62ffcd3034b492f3caee3e1ccf3139dfb8fae0206,
                0xb3a677118ccc67fa74c528181c707eb8aad9d63031d6a846938e107d038f8623
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 5
        ark(
            i,
            q,
            HashInputs3(
                0xd200af787774176ed3508fbd5bd66e1454e24e6b77e5166f2d0e85cea9b57310,
                0xc443655940911d780340e439dc849976fdd5dbc3cd9664e29f63a2b526a23d07,
                0xe6c9ddb596dedbf032a1a80fda4839fef34696366ddcd06f52b3b3aacafafb2c
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 6
        ark(
            i,
            q,
            HashInputs3(
                0x8ee88aa35cdf32f0c4382880590d4c9519baff864b16ac26b777b2695a85c00f,
                0xe0e017f92d631fd8964c1e4befcd233fc04ec5074ab409bead07e4f196f04926,
                0x40ca1804b16cff0a3a0f8476ac539b8212facfd149edc705a2480fc1a80a9c0f
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 7
        ark(
            i,
            q,
            HashInputs3(
                0xe1383843f8b7fff0b64731bebe10398219fec2afd4634639b01e4f707f7a5411,
                0x7d78619be825ed2c28a7ea6779003a5f2a65a70d640ed1c887346d07c7f7af16,
                0x860b48de77900fc878aef083f4479146fa3bbaafc30694bd9d35222849061a01
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 8
        ark(
            i,
            q,
            HashInputs3(
                0x34816047e4d963847d317f247f6a3c4c1c9b396668a3063bdd68f1e44f087f0d,
                0x27b165cba718cafdf50e12d07ceacc0ab2c946ff7900770724c36df429608b07,
                0xae93170757eef2130c3383bfae41e89c932f690abbae8436494b86de224eea2d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 9
        ark(
            i,
            q,
            HashInputs3(
                0x5f64572a8a936d943c24aae48054affe32f0b0e4757f20c081391bc9a0cbcb08,
                0x5e368cbb59c0d64801b30e827bebe778693e6cc541a75e02e1bd9da79ef9d802,
                0xa319e2b7ad80699f726e31ab71b1cd131b4a28c0eebe64271d12bdcd0b2d9b10
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 10
        ark(
            i,
            q,
            HashInputs3(
                0x35fef8b9d90befefd21ff3660c0d32dc44da4cda6249928cbf7162dc2658a206,
                0xa4bc32cc0bd2339f2dfa03940e562e87a951d62f204eb152bbec991ce1e4631a,
                0x5b7d683acf6cf084149d76601795588cfb2d1f093cfa55e91cdfda4ceb5dfb03
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 11
        ark(
            i,
            q,
            HashInputs3(
                0x01feb00ad8a02afe876b57c5d1e904779c1b7707d6af5c6c97434f7571c1da0b,
                0x51e75c6d97ef443f67c05157dc93d9fa20ef13474374270ac821b7cf2b503a25,
                0xc5c27136121bb845ba3c896e658242c50dda310d13dd5a25294853ec0a30210e
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 12
        ark(
            i,
            q,
            HashInputs3(
                0x369a229fe6203b1fa2db51f9ef53913d9174d28f50512778b3bbf66183749d0d,
                0xc8df5e57b1adffee341df8649f22e0d138fa5fe2abd7594079d00a861de9af1e,
                0x9b6b9b66aa9dd078488bbc43879b06d489f57e94770bbf04cd7723f32a790812
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 13
        ark(
            i,
            q,
            HashInputs3(
                0xa478ec109bcb21a40468396c67221eef43ac2fcaad20c522ba0e90fdf093850c,
                0xba0e7c23da1875348cbc06b00509aa9b26cf27dc985b53c27fef52ff8718d21b,
                0x11a226b598302b38dd96e02eef0d860a947452057c7787c5f9a425c4706d281f
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 14
        ark(
            i,
            q,
            HashInputs3(
                0x5cc10a24a0590327afe0adb51099f36f9837fc8dc98257e1617674a6cb95f212,
                0xaaf4cec522d96a4096d6918bd438b65c7bb9ee65c56ef022e2bd03027974b527,
                0xb73dcff14c0141b1763c126ac9f3a404aa7978bfb4f0cc062e9c9bed00c2480b
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 15
        ark(
            i,
            q,
            HashInputs3(
                0x5e80cb7492319504defcdd1589b6bd8bdb93b6321f8c5a98d2efd37d50422510,
                0x1a96923824527ac1ebae27d80c1e8f53d8c0e0b0f2a5c965d8060f2951cf9e17,
                0xe7d0f87aefd269f8931ca2efedeebcddd3185447d74e6c43b0a4f22d25955409
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 16
        ark(
            i,
            q,
            HashInputs3(
                0x04fdddeb1811cc2cf0f54b9f00053a85af0fab870d67dc9ac088e1fe0bf79901,
                0x4e89e81fc794fdd9f041e5024b454edeb81ac137031a0f44ac12661e6524442c,
                0x01d4efdae8b6912aef22d096c3ccef587819aca49a03255d5ff9fa99b1a62610
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 17
        ark(
            i,
            q,
            HashInputs3(
                0x47f4919c06c4254c3857a351e61fcd1c5eb25b5479e1a4b97cede9120f419215,
                0xc18e95e25005e52d7f98c8f32df7a21abaca7af00b22f78ad1ccec1d36a6b22e,
                0x3ac8c641685d3a1b4300833c523952aacf67eade8086c47b962f832f67184e00
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 18
        ark(
            i,
            q,
            HashInputs3(
                0x3c278f5f23ad626bfadec323e27d34cc9c549358c048faf43f1a1f46388ad515,
                0xfe36e5d7de6ad2544568502f69204ab7c200bcd8cddc9cc5b4d60eb03c368b2f,
                0xc7355c72f9e4ce92afa5041b0dc60d1adf23aa0c13fab5d1a5cc93ce5d3a7229
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 19
        ark(
            i,
            q,
            HashInputs3(
                0xaa8a6a4a04325255976ea4c72ca7291e64096dcf2e56c3e4097e6f6a5ad9542c,
                0xd1f94010d87ed06edbeb12a536e9e9a7573f78c98b1598d1474e40a747c8622a,
                0xdc9d48427fffbac6b985dfb5add4f299bb389c283487eb9f3a5bc556c0cf7612
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 20
        ark(
            i,
            q,
            HashInputs3(
                0x1744459a73aecfd3a20840c738822a0167298c967fe423c44dda68a0b94f0727,
                0xf6ba18a3a33f6977f01a5779b3bc3faea7783e5bee6278dbf0d3665d23ccb313,
                0x315e5323da8afd5ed7dd51c3aa0bb82ce4a6925cb4af613b0633d98ebb5c4f1d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 21
        ark(
            i,
            q,
            HashInputs3(
                0x2962666889c91e14e8a96ae4c92a82283b037f454454d1942163e3f753044a2d,
                0x3ccac6a45b18858d8b69bf4512d9201f03e724ff4c00ec4c309078b78d409609,
                0x7fbab1cb8122fccf9b52b381b318e687aed73f930f88bdbcb473bcd733444c15
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 22
        ark(
            i,
            q,
            HashInputs3(
                0xfdb4ee04e2fdff378afa9c8c7fe41d58b5e2c567df4a59eb3e78fa2d8c73fe0d,
                0xcb22be8618ccf4d45db5bfd32b7701e9246b4acedbb3c8f0462353abfc179500,
                0xf24eeac756dc245f6b13eb604890143905c41cc92298fb34bd4aa87b9bf6870e
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 23
        ark(
            i,
            q,
            HashInputs3(
                0x503dcefb521f0575f207cee00e38d3b5715efeebb47faf78d118b3f3e7ebf620,
                0xc96ab1e8711bbd1d72cc920d91b59dd5551e72dd06c1f04e8c37ddc44d93931f,
                0x9d4ff8f1e21aed5c2389f0253058e23e4a15ce622e34ed622f09459faf01961c
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 24
        ark(
            i,
            q,
            HashInputs3(
                0xb0134b497b5a72706853ade1bb3e9e1412ac281a917f4b2dc185a397671edd04,
                0xbaefcdefbfa37caa56fff89aa33a795beeeaea4eeda0164d61db3098d5a5e723,
                0x1d099fc6fe0fcb98e506265d7f553ba7f6cf5a6938d1014e389d1ec4d6f2f812
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 25
        ark(
            i,
            q,
            HashInputs3(
                0xb7d26890e9303245948b9cfc318f67dc6b3e4551c8d85eecfcf8bcf853663701,
                0x78ea0e5425d1eee4cbed18880513bac7740b927d433b4c7b4007941623bfb026,
                0x3d11672fb0e44326b9c06a5bd7813d8769dc0edc1ff583e344826d7f79a2a803
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 26
        ark(
            i,
            q,
            HashInputs3(
                0x7f698b1962a86141ad3629a664e02d2cd649318418f2ce9ae9ac4c2695e45807,
                0x78923956fc1f46bbe8594285d48bde7857bed3711e67385f6d99a8424ac07319,
                0xe5a6761e1a69e196189697dc5738eeb85e72c354d08ab64ce3ec99ebeb7df22f
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 27
        ark(
            i,
            q,
            HashInputs3(
                0xd2e3a9ed251d89745f6d6817a73018e99cef4a47473e5404a3bd66b7ea16231b,
                0xd3543477865b8b24444a0dd499031da1fe60d16c838a5138e8d143459e6c1829,
                0x6f15620dc839f309d74269cb0a5ec2cfdf42620437809de2f3b04faf9ae0b52f
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 28
        ark(
            i,
            q,
            HashInputs3(
                0xf7e5dcfc87965436cbdc6515fc754d58e40bdfeb9d246e7c49c48da01468022d,
                0xd529fd7da77d42eb2950a2e7e0dad5abdbdc050565595353b29391f94005531f,
                0x0c6a7a92359e9e8f101b917b1d6308f0e030f58cd75d8c8336f2fa4cd81a9f05
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 29
        ark(
            i,
            q,
            HashInputs3(
                0xa973a1d3642af3794bd58dc3343fda72873bcad7e3298d3fe158736e51b80c0f,
                0xb9acfade5bd7cf624ad4ef1ab3e013a4048ad31040ba305db0d3a21f2f0e7b0a,
                0x2a6ef065316d899a27ce8e75edf72c5e83d7b592af0f9d6a7c3f464aee5c7829
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 30
        ark(
            i,
            q,
            HashInputs3(
                0x414acde9c4e199156b9bc4a01d80aa1a15f59841ce5312eac7570a5251c95005,
                0x945a8d52d5844d7efeed8abea3da2706b63219726f45603b0d679aa913304f0e,
                0x61a47ffe3cc8ddcb3b37c1362567cf2b9fd9d8fe3222d0a05577bef5f5596111
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 31
        ark(
            i,
            q,
            HashInputs3(
                0x47ff5cde6757bd4af99eac52c8469a69e8871ec37a702decca0d9d6b52b1f305,
                0xe56fa16a27361161fe6350587099b300e821218038f54f7610e2444589045e09,
                0x39cf3dec8d114c8f77efda728927d18dca8d7578f217ff48bb129c237b48de2a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 32
        ark(
            i,
            q,
            HashInputs3(
                0x28419e0f930124829d86eede8a42ed86e1a0323346d226db6e47a2aba13a3e05,
                0x3fe2e5300879880d0cceea6ac22e4018e5628a928060c7497b859d2623ebf92d,
                0xd590157cba87a19c86d1f1769d8d05b734a4c312944e2e3778a9cb9e46834822
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 33
        ark(
            i,
            q,
            HashInputs3(
                0x8b96166f80cdc220527323a77ed906a181568313f9cfed89bb412b314cba0d0e,
                0x7b33259315c495e716c0feb0b256f4bed789fbf8d93b29edecc1ff058fe09c2d,
                0x98e948c2bda46a9b3da225984b085fe67c1ef67d7be381f7c5adc54995642b16
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 34
        ark(
            i,
            q,
            HashInputs3(
                0xc836090a3f73066ad383d51d74c107f388cde2692e30bfda806934c260a12323,
                0x87db9a634c3802eac5d58f880f8bf012a6af2b2b3490f2bf0629c43490627d04,
                0xc1e57e5d92ea2f76f3cbcada3299e689e355aa67611b2987bb68acaf75937416
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 35
        ark(
            i,
            q,
            HashInputs3(
                0xf9247555b208e522ae52d82d31377f58d61ababd38d9f4171123215fba33f614,
                0x82b7acc9833789f76981dab2fe8e160678793aa2cb899ed9d95af641b3f2022d,
                0xfabf485ac5d29fb336d9ed261b0e9625b804ecde351c22fffab27ceae265f525
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 36
        ark(
            i,
            q,
            HashInputs3(
                0xa98ba417ae9f8ac8cd252e3ef1f5ae038235fb3e3e352cb1b6499cf8fed4eb0f,
                0xc3d7ad41bb1365cd3543949423f5d63404dabff6de5cc986cd996045a901d011,
                0xb490d6fa1c1778500ae400f181e4aa76d9e83ced5b9581ffe5667dcd6fb6c21c
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 37
        ark(
            i,
            q,
            HashInputs3(
                0x6e516ffc161c1d3ddfa505f54d42e5bb68ba75d37dd5a962454bd31adc55a716,
                0x78b0148fbe4e38569b1267d5d81cf8920237cfd2da24039ff871d8777f0e6d1c,
                0x1d288a55399021eb267c3788ff72530a4b7313a054be259f4b153bfda7068027
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 38
        ark(
            i,
            q,
            HashInputs3(
                0xade87def8acf2af8bad065067cd0529241d84c8ba4d451ffb6a939a56728eb22,
                0x946ae566e4e2bf8879260ff580bd0eb526bb2545bca42ac2f1e3d488718b121a,
                0x93b0c55190a57419eb15c2c410451be73cb95097a8cb1335531daa285caa2f1d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 39
        ark(
            i,
            q,
            HashInputs3(
                0x4951481a7fee0be986e849dcca1a5b5e571fb87c03a8f9a38adc50a0411ceb28,
                0x6e8e07671f2ba720f7c9965e3823e766b8710249d16ac97a026423cacb86251e,
                0xbac906ed748e90f4faf038006d8bacf1e44e8aff429eecacd7334e72c7e5c713
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 40
        ark(
            i,
            q,
            HashInputs3(
                0x3e926670a8f64f91bef1fd73e50be4355d7872153784dfc6395c92b49a05bf09,
                0x38bdfa6df8485c4a19f936f2206ad21875f4a2921ec7cb7118120e92f375731b,
                0x362e9c2859dc73ebf6b633ba116e7f98191059d0d627e55d532e67108f849414
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 41
        ark(
            i,
            q,
            HashInputs3(
                0x0c6be3ecb8c351a73540ef64888baa417a48309e8de70aa046a6deafdc785319,
                0x0e9b89a5fdca6a1aefd7a2e780f325803811641711ef4338dba0a2a2765c6a0b,
                0xef2f4ce181f6efe4921600cd1c0b95b0ed96034aaf88492b71c4f757d1e12308
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 42
        ark(
            i,
            q,
            HashInputs3(
                0x22b2742056b42c3ad1b97f6df99bdec5c03627a5f5bd9d302846f1d248b03316,
                0x30e4d52ec826d23897b630ec3d5186704695a206ec95787323ab1e0fd9dd771f,
                0x4fb951c7aee7576dd7196c72948b5d7667ab7d71f3bcaeaaf62b67b33919c709
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 43
        ark(
            i,
            q,
            HashInputs3(
                0x7d93a12c742df3bc87856c30fe411dd97a5d00d0c5070b8df6f80e0f27398104,
                0xe5032c17a6b1529f5b1fa476232f8aedf334444ed784193259bf4c44b1df3a00,
                0xce898b861fb119de5ea2a5568b4f0c0d4bc7a9e942f8d33195bf23e87d4aec2e
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 44
        ark(
            i,
            q,
            HashInputs3(
                0xaf00898368a6c4009dac24eb4c4a48078fd02728123833a4cbf4b944b674a50e,
                0x9089d2bdd08ec2ec055392ba7b288bf0996dc82cdda40d9aca5c91cd55a04d05,
                0x06478f8b63e8837e8fc3b8e8508af0c34bf876197196af47d1fc261f1d5a9602
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 45
        ark(
            i,
            q,
            HashInputs3(
                0xb8911d055e4ca3a23fe3e2bfa3468ece52f06ef8892c189338f322964bb3971f,
                0xb51c6dea7f0c74469036e9b5bedd5e819f6989c0cfeeed938d46eab5b063a009,
                0x78b7467dc0977341651c29846a0cf0f16c4c53d03d7a5f59ccd7af240c824212
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 46
        ark(
            i,
            q,
            HashInputs3(
                0xa62d5109458bc01cd1b1aa57edd5f032987678038d6af8151d5bc1ae02c48329,
                0xd83d4a1397cb2440b4eae01235a7d2643767a89b00bd33c2ffeb4fb4a4716313,
                0x5e5225ee700c0ecb91eb013e8aef263ca015c2760a5dbf62838cbd9096727029
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 47
        ark(
            i,
            q,
            HashInputs3(
                0x7d4284cea23ce3608da6a6f946f6501796c0a55bf70e9b4b259bdbc5a25c391c,
                0x687f366f5dad3a1c7edb846925822746ce6c2029f5134fe19a4b8c52766c3502,
                0x8e38ec93f635b0c892ae6e3140d07befec62e0634df93fdb3b46768837675a0c
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 48
        ark(
            i,
            q,
            HashInputs3(
                0xf5bfe65ce37a53860dd9c3660e92cc2ff75db3485e1bf39ec9bf20f7e5af2a1b,
                0xa512968f081ff8874d7a4091c50fe9d303e21ea4ebf84828089b8b63b7877906,
                0x6d5e6d27e436d7bb8e1a5dd75f54a17272a513632bb6ceccca4b7418024b8d14
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 49
        ark(
            i,
            q,
            HashInputs3(
                0x47f88ead108d41c7942dcaa6b9cd5b1647c2f1e8a18086e8f8fc56cc86893f04,
                0x811f73793a5041912a06bb23087d3bcda35ca665c5be1f00c89143ffd935f01e,
                0x24e0bfebd4b9dac49938dd844f460a6a2f19a13986ba11ec0d325ab3e662510a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 50
        ark(
            i,
            q,
            HashInputs3(
                0x3bcf40a9eafbe62816ebf96941d316fe30b87ef8836ba3ba76ed2a87e9895c2b,
                0x270601f9e388819247df5ba88dbd8f23c0d14089d03f2d4f3750974926c12506,
                0x65d9cc5e1cbbbe0c3558322b30bbd2218274f18a43928144c63067fe5cb86b11
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 51
        ark(
            i,
            q,
            HashInputs3(
                0xfbab71c8a5be2e1bf59c9c5f77a3a7c41d8c45547e3766bb98a59db0a265aa11,
                0xf5bab61f3e4cad15f2250f0ff39dcd03b99cbfb08ec7db0306c5ccb18ebd0f28,
                0x76edf8632a7f50796c7913d7a37a666446f13a99248d74e279760812e8a36107
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 52
        ark(
            i,
            q,
            HashInputs3(
                0x6dc92ad16f528c33edb162008f69bb30ccb39e535d1510808c87bf0af168a62b,
                0x0cce210012873287efefdcc8b4915ce7c33d6d26511cf4edb2c1f74e91054e2f,
                0x0448c683dff158b107ad76814ffdff83f16cce8bf2827aecd563787dd34b2729
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 53
        ark(
            i,
            q,
            HashInputs3(
                0x1be498adbfa720bfa59dc24e394c3ee0eef8711945a50d9b3d000109d8fa480c,
                0xd9202fc3d14201eec7c74f1bf7cc2861ca929155d613e7245998dab9f22ccf16,
                0xc18c5cf189565da882587ecfba1970cf130c82a7a30506118bde733223d9b700
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 54
        ark(
            i,
            q,
            HashInputs3(
                0x186eb8cdb1582ae31d86c0540749766b3bde6289609438c7ab9ae9e75a1f290f,
                0x10f22cd9580d40afb290421b9107970db46e11263fe8b7f45c3fa396b5063425,
                0x6158e30f16b37caf8eab6db69fc3cf0c649b23d510571cadbe740d4d14a41208
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 55
        ark(
            i,
            q,
            HashInputs3(
                0x74f1f60ecdbb66a811de25069fe1ccadebde1b963bd139d2d5c5eb9edaa6812d,
                0x64506f64234d326785d85531effe04cdac4deb90928945f6b2ca79d9fada221a,
                0x1a189f28159cabd40f5b8565165a685d9a7acaf9da8cdb097decca8dae73ff1b
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 56
        ark(
            i,
            q,
            HashInputs3(
                0x09e73ec304e9cc228a1c1efefbc4c64b1fe3793e0f7eb5920cda4a83b0f8160a,
                0x8e54996d96ad3b311d805eef1d45161e149a00697e3581d589634c214c96e70c,
                0xe0b39392d19e4aa05003fe4d703e6a5bc47f9481ee6b46e8d5df75f96bc02528
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 57
        ark(
            i,
            q,
            HashInputs3(
                0x3f285870063bd3c48fdae2fd1defbdd9aafb2235a358b90976616c75cf175926,
                0x0c8e983b9c377403acd324cf47b301a59843fd648cad2ac9b9fb79d787695a30,
                0xeacab0528f79dfbbd0c673ef455da49213cacf8cdb1632df61be098c325aba19
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 58
        ark(
            i,
            q,
            HashInputs3(
                0x2ec96ff93fd66ead0e8440b4002354282249ffa3217146cf190f18327f056905,
                0xf3d7df1c45424940643652c3466baac852bf18500c65bd9caa09d4020ede0a30,
                0x76d52ed827969107b7284d9a8b0f73e969d0dcc601311d4205aeb8e5c3afe713
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 59
        ark(
            i,
            q,
            HashInputs3(
                0x74f6953c922efbfad689912041774d820a37c43e7e048b040dbc470fb8eb2c30,
                0x17765b42270a0ab7101c732181722ca8f29086cacbf6f3099fc1f906861eec0f,
                0xf8b4420c824b7bcaac00cbd6709e7f12c223420afa5dc8316fe3ab388b6cb301
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 60
        ark(
            i,
            q,
            HashInputs3(
                0x7e163669efa064cbf8b23ba38c652ebe3006d36ef4ea2632896f2ad6df00e81a,
                0x62793977a7a35d9e4f0e091c89c04329260c496b8e4764fefdeb270124803f04,
                0x8b61c007ed53f110a59876d9579776f680a148317b0ecac3384e9f3204c04c28
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 61
        ark(
            i,
            q,
            HashInputs3(
                0x02ef8eb5378f33511b2abbdc3add278597fbe495d4fbfa9c0bb7c420eacf180a,
                0xa402d35ae4af34e185446bfed0bf5a73fe501f1d6409fc5be489cc6a2f1bc11b,
                0x7fc048f5fb1cc42dc5091d2994c61c033ca5a61891997e77269f63948a04af27
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 62
        ark(
            i,
            q,
            HashInputs3(
                0xfde8d6436dc090aaea96c5cc2a38b3ade018378ca1df8f1b8dc5544db3b56a22,
                0x1746021d19b1d75661b795852892d68c90f620b57aa68563dcd7078886cc3424,
                0xcf155a403be2c0358cd4b2882be8e1dca3f98e4d6bed21ef77e1c74b5062f605
            )
        );
        sbox_full(i, q);
        mix(i, q);

        return i.t1;
    }
}
