pragma solidity ^0.8.0;

// This contract is for debugging/testing purposes
library PoseidonU3bn256 {
    struct HashInputs4 {
        uint t0;
        uint t1;
        uint t2;
        uint t3;
    }

    function mix(HashInputs4 memory i, uint q) internal pure {
        HashInputs4 memory o;

        o.t0 = 0;
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t0,
                0x010000f42e78e9f26c144b5b36ee26de450221e148343c4a1f38e528d63a4b24,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t1,
                0x676666c6d4fbf3e7062d4acae95caea98b56cd337cb5b949aad9135a94525b13,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t2,
                0x01000048fba191b82333c5ba91412b4cf81e41c1c2e442c422b0fe10b5965328,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t3,
                0x6edbb6fdcb90b209a734885a0ad8e24e0de8ededd0c09dac733b506910c2e906,
                q
            ),
            q
        );

        o.t1 = 0;
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t0,
                0x676666c6d4fbf3e7062d4acae95caea98b56cd337cb5b949aad9135a94525b13,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t1,
                0x01000048fba191b82333c5ba91412b4cf81e41c1c2e442c422b0fe10b5965328,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t2,
                0x6edbb6fdcb90b209a734885a0ad8e24e0de8ededd0c09dac733b506910c2e906,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t3,
                0x01000072e1b6651b7f42826a3f6b2d83512d51b1ff3c4681246c0b85a4c4572a,
                q
            ),
            q
        );

        o.t2 = 0;
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t0,
                0x01000048fba191b82333c5ba91412b4cf81e41c1c2e442c422b0fe10b5965328,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t1,
                0x6edbb6fdcb90b209a734885a0ad8e24e0de8ededd0c09dac733b506910c2e906,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t2,
                0x01000072e1b6651b7f42826a3f6b2d83512d51b1ff3c4681246c0b85a4c4572a,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t3,
                0x010000808368ac919d47c14f79ced8ea193201acbeaf9c1525006556f4d3032b,
                q
            ),
            q
        );

        o.t3 = 0;
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t0,
                0x6edbb6fdcb90b209a734885a0ad8e24e0de8ededd0c09dac733b506910c2e906,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t1,
                0x01000072e1b6651b7f42826a3f6b2d83512d51b1ff3c4681246c0b85a4c4572a,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t2,
                0x010000808368ac919d47c14f79ced8ea193201acbeaf9c1525006556f4d3032b,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t3,
                0x3433335bb4f8ea15ccce01229922f1687457a75a99fd0401eabca29d83d0df21,
                q
            ),
            q
        );

        i.t0 = o.t0;
        i.t1 = o.t1;
        i.t2 = o.t2;
        i.t3 = o.t3;
    }

    function ark(
        HashInputs4 memory i,
        uint q,
        HashInputs4 memory c
    ) internal pure {
        HashInputs4 memory o;

        o.t0 = addmod(i.t0, c.t0, q);
        o.t1 = addmod(i.t1, c.t1, q);
        o.t2 = addmod(i.t2, c.t2, q);
        o.t3 = addmod(i.t3, c.t3, q);

        i.t0 = o.t0;
        i.t1 = o.t1;
        i.t2 = o.t2;
        i.t3 = o.t3;
    }

    function sbox_full(HashInputs4 memory i, uint q) internal pure {
        HashInputs4 memory o;

        o.t0 = mulmod(i.t0, i.t0, q);
        o.t0 = mulmod(o.t0, o.t0, q);
        o.t0 = mulmod(i.t0, o.t0, q);
        o.t1 = mulmod(i.t1, i.t1, q);
        o.t1 = mulmod(o.t1, o.t1, q);
        o.t1 = mulmod(i.t1, o.t1, q);
        o.t2 = mulmod(i.t2, i.t2, q);
        o.t2 = mulmod(o.t2, o.t2, q);
        o.t2 = mulmod(i.t2, o.t2, q);
        o.t3 = mulmod(i.t3, i.t3, q);
        o.t3 = mulmod(o.t3, o.t3, q);
        o.t3 = mulmod(i.t3, o.t3, q);

        i.t0 = o.t0;
        i.t1 = o.t1;
        i.t2 = o.t2;
        i.t3 = o.t3;
    }

    function sbox_partial(HashInputs4 memory i, uint q) internal pure {
        HashInputs4 memory o;

        o.t0 = mulmod(i.t0, i.t0, q);
        o.t0 = mulmod(o.t0, o.t0, q);
        o.t0 = mulmod(i.t0, o.t0, q);

        i.t0 = o.t0;
    }

    function hash(HashInputs4 memory i, uint q) internal pure returns (uint) {
        // validate inputs
        require(i.t0 < q, "INVALID_INPUT");
        require(i.t1 < q, "INVALID_INPUT");
        require(i.t2 < q, "INVALID_INPUT");
        require(i.t3 < q, "INVALID_INPUT");

        // round 0
        ark(
            i,
            q,
            HashInputs4(
                0x21905ff3d0515133f34fab644443c955186680adc8cf20606cc4921eca6a2c06,
                0x495cbd349a10a77f74beecb7d4cdbb00fbbe4f16a8e1ea158ff23b21a2abee14,
                0xf830967ea5cbc498330bff20df8a722828b098e45616f63bf58332797c2d6a29,
                0x44454bd114a989ceb3ed07617c7c3fe8515528f79e52f55ebbc60c1dc475b01a
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 1
        ark(
            i,
            q,
            HashInputs4(
                0x6deb4e0e37816451f60541d8e58b66f039e9f7d95700e9df35189c4d8455cd2b,
                0x3a1e43200dfa78ac5d906dc80ef48229c8fc4466daa0e72576bab8a24acbfb15,
                0xfa942825b12eab0e6d25006768e03c1faada7bc1ea0575f00575cf2dbb3cec0f,
                0xda5d7e8a37ecb8d326045391063b5f04438bd45c673a0443315951116318bb2e
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 2
        ark(
            i,
            q,
            HashInputs4(
                0x6ea19ff811b54600621e37e3b9d3afd2f59fd54f48ea76c832f0dad195652529,
                0xd06326ba035ba20e1b2cb2064d9ce9bd0e86236d5caea0d6b5a841835cc8f211,
                0xfa78f54b18c7ba08198915237e583fc5d65feb50c1663c56355196e18d372302,
                0x1430753bc7d5014dfe1ea22f3496de734657848169c3a8d43cb3d8f3435c7701
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 3
        ark(
            i,
            q,
            HashInputs4(
                0x76229942aecac84ec5a1b8fd4667a9cf3f6203bfaa1e3da3dbb9968998627724,
                0xc30ec14a9ad17befb59a8ec3f53c31d89bd0d5c7bd0f3acae2976a48c4ac1419,
                0x623894de51f9aeb9209541146e96bad4a9258ad8cc9d32421bf92b8d85fe0a23,
                0xd26d18e577b36cad7a2db11032484909995e97f7ed3e8958edff42ede4d26e04
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 4
        ark(
            i,
            q,
            HashInputs4(
                0x4cf1c5e04e8fa151282ed6dabe599cdfde43b17f1f9069873b05384511c3951e,
                0x149217cc5488b33bf54fc2f7c55b0f1e82cdc0e96159e9ed85762af1d89ce300,
                0x76bd87697bb8d185825987d89189e37b9376b1bc1dc9f5916cb756bc1e8da422,
                0x96eeb0cb13dfa2403d525bfd3f4eab0847466e75234d994335ea9f8873d12a17
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 5
        ark(
            i,
            q,
            HashInputs4(
                0x66369254c229987fc00f26159695451a247099f25659302ef40e342006bb1726,
                0x11ac8a367cab9079040c0be4d3dc9b6ef6dbe64226baa910c3b3684d68acbe23,
                0xe324dd791d755fe599965208cc8f5fa99aa9bad771ceb808b8dcc9973de21104,
                0xeed0390445f7e6117e77b815b06d54800852dc5c2bb3963e8ea51966583a3a27
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 6
        ark(
            i,
            q,
            HashInputs4(
                0xfb2e28aefa090bd3a134b175ab38885a9c56574f95fa5f02d149781df914672b,
                0xa0ce928886e7ad995ea3d87c2ca76d2794eead52b1eeda7c3cbbcd2383323b24,
                0x68f90717dd63e87b3fface290b0303019143f9c0eea4e9ac978eb699f972a926,
                0x0a749cef6d37c91a8331841576cb9dfbe003f410fab8542c058c4922b31bdf2a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 7
        ark(
            i,
            q,
            HashInputs4(
                0xdd68fe6d23edb4765a0aecddd1515720c7fde3648680a2b2ab0b0cf47e0b3123,
                0xcb05ede3ffbb659d49cda6aaafa65e5ad6387095eee3ba19d1339296f9748414,
                0x8df1e8bc3e8048e03ffaeb1be11ebe673c73a07f73ae922e566e9f4ccd49d42e,
                0xa6de2d9dca6f96cc811625879e76614ba3e670a59586b56b6b8c5c958ba39d26
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 8
        ark(
            i,
            q,
            HashInputs4(
                0x1018f6fc6a9f4cc391687bd4f41f4d58c6929e87f109d50766b43744c4697a27,
                0x27671793b36d78605abe04df5ab618ef5b962dd0bc44807c3661142ab03dc72a,
                0x1f3e6b0bbfa945d22ddd76bbbba63859c046b8f371243cbccd889c095152ad23,
                0xb0d7ad117f9cef80b65c9b29cca65b88b05b326687b29dfb782cc67eeb36452e
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 9
        ark(
            i,
            q,
            HashInputs4(
                0x43621002673f3b75f8f16f2df9c2fa3b69dc22d959ec2ddbccc72775b4672d08,
                0xfb55a7c29328c8b972d25979822c65bdd3ec7773ed7d7d653335b17c0387672f,
                0xc4533f18fc46af7cd14a3516d0dd238e759566fd0e2311a3876914fb3ac31407,
                0x2a1c3bb20b22ab61593d237e828befd1600f6f68a180b062f075b29fd50a192e
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 10
        ark(
            i,
            q,
            HashInputs4(
                0x9463e1a9ec497e1f3e4d13f5b586788fd02632b92443dc7b05ae9299269d5521,
                0x469e71f6a884f7849259c5a2b84552142058ceb6fd114fb721d79979d5a4f21c,
                0x09660176a8539c89bcae90cab0bec711c27240640762fba40463f9cf5fe21a0e,
                0xf7abc7772ea9141dbdb386e8e57dc00f3068a9fa6cc5acf33307cc7354ec8415
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 11
        ark(
            i,
            q,
            HashInputs4(
                0xfef72c11fbbbc2e3622f9e2a093c27fa2c06b8651287041f517d4454b1c37b0a,
                0xf439a9def7726b367191ae952ab6cac357889aa7ce88b9405dbed2ec36787428,
                0x0ad3c2c71dd8f3db4a363857723dc3eaa5150283b17d93e2c1971ee57e30be23,
                0x1f8373b8b7cb07951b21f574469bb6c8c8f96322365efb72db967f9407ef1d18
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 12
        ark(
            i,
            q,
            HashInputs4(
                0x88b5393e7b91214268cf3e59b45e5c5ff5f7f8659d3af8b9f4b118c8a7218d0f,
                0xa46b1e44df63d04722ddf76ca9b28134982bb8c16405828292d159ef19552905,
                0xd20a13b7680dc4bd3a4164aa1a5b3189522b27a893fd62a0387744512fcda305,
                0x74c46f3bfe10c3f28d0083f3b0503cafb33313e2930d37cf9d824639232a4911
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 13
        ark(
            i,
            q,
            HashInputs4(
                0xb8ccfe6d1c51d246905ee5ccc1d8e0903af0d96f9788bb31bde9afaaedcf1c10,
                0x38b92aa6c645e081b3dbafee3624b2c5ce20eb28f7a2852777b2e55b322c150a,
                0xea44594c2b3e34d89ab54bbceb4995560cf6d294d10178817e2effb20516fa15,
                0x48358bb0211f0deb7b51bcf0b2bfe9c87a1f7b11c0c8a5e809988b811e889829
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 14
        ark(
            i,
            q,
            HashInputs4(
                0x32b96e5621e3d4e83963bea3c5984a7896ac7dbb3e14aa95f5027e36c633d226,
                0x8f173f740024e15a04c4320f5c71571f914634cfbc5457429cb6844f23c7d523,
                0xd3795d170e0292d18e656540744b7297dc9daa42635774323b9262011a113e0c,
                0xd941cad4d21aed7f7a9c2c9e8d5b4551e622c36ef1a9fbc79a0ebf1cb24ee804
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 15
        ark(
            i,
            q,
            HashInputs4(
                0x8a09aa8715dae8120e001b11bec920bedd790b772abd28940ba9292324ae7e17,
                0xbb9c6084020646dcb5658cf01c2b11634f95175939d25621453ed857af07fd1d,
                0xde44b180bd325f164ca87600065988f664e7dd3130e7fe1f8728178122cc930c,
                0x5843af6bef9ba25acc6b829340e39b1da13b0cff34de2b2a469fd06d40a92b19
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 16
        ark(
            i,
            q,
            HashInputs4(
                0x23c22f6768a6c8a467d3de0ae038bab759b24d3d7058a9d25e0c913f3944a51b,
                0x52ffc06272566112eb4a742c52c62df2e15df03cc4214d2af9365ab73a3c0d13,
                0x07b9556adce10f513e206de0924bb599f97c27be5566ad5bf81e5351f842b92e,
                0x3abee9242d623bc8a426077105eb5ed411640ccfd786e5fef012c12fd2ae6a13
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 17
        ark(
            i,
            q,
            HashInputs4(
                0x7b63c2d903ae06d40ccc2e51b8f5fc04462cfdd41a3147f806c71400a19ea112,
                0x1c2d9982b45dba4044ea1e39a5494081fbe102233cd83709aa77e21634b7961b,
                0x9151ec9556db10275344b0e7c2c8bdf04281dc9cba898b59e1926e2eb678fe0c,
                0x7db04438f8e8149cb80a8ce91b13a9a73370ec8e3531a320c6d8bd1eedaa570c
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 18
        ark(
            i,
            q,
            HashInputs4(
                0x8f5f75d25f63de74f326c14189c3c09ac4c9fdb490d583a981677d71f2e15501,
                0x7cdb7e6c5ddf6ee2d3e6c2f15dcd86536ebac63837e191e565c154c1fa358c2f,
                0xef5ce1117d2ba2a7e0236b7a90b51955bd32caea87bc44eafca49b2b7532eb26,
                0xcf27986c080443a7d51a9e224c23f1a537478ee2ca1754bf3f1911b1eae5211b
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 19
        ark(
            i,
            q,
            HashInputs4(
                0xa024a979698adce51cebfb38818e6064779e12dd74e723520055fb78c6c21d11,
                0x30e8f89fc5a43ca6271ff6466cec30da1715772f36baa648b24f64e27aa22430,
                0x035be724e040fd17fb641de7b9b1597ff2e252e166173b72e2c5f6efbe298401,
                0x95130479dd1d31f9f7590b8d3a08e5b81548456622489ba03d152f767c745a0e
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 20
        ark(
            i,
            q,
            HashInputs4(
                0xfabb343b8104fdfe4f7e1d7dc5ac052595c55ad2f8895264cc41b21877639d07,
                0x5854228c110bee703c7bdcb3add5b91e43366c08cda8ec734ea9d6b24f077000,
                0x2bc86af948e98cbf0104a2dc66d04408bba264cbc36ae8d59fca3d7e19c64d23,
                0x57fd0d831dbe46c2beb57f8b066b76888b07622899b09d7d5e70a021a4b52502
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 21
        ark(
            i,
            q,
            HashInputs4(
                0x5475b9604235e44139808ef78394429f33e22513e9b7d2f99a65fa9eb9cd0809,
                0xab4dab412e999b1cd6b5cc7344832c630bf1c7d6398005704230c8a86527c70a,
                0x7beac9c4a109b4862b0ab6c6fb24a07049db32749ca2073a8510ea2984cd1c1d,
                0x9961996eadf5dbc2ecab61ff263ec4fd5e073c5a85678c91b6dc8be3fbf1cc11
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 22
        ark(
            i,
            q,
            HashInputs4(
                0x97a826959aae16f8184ddba855536b4c4444871f0bc058f897c8736bc5e4432a,
                0x583b9093bdf617a64da8d61f2081af9b38f0060b169a37ddc26f00fd17f61224,
                0x4021c4316f499e7311287dd61b6fa94523ebfd34c931c83e733177b20e035617,
                0x087b63f429ec1ace854a9eb54a7e943999c0d0a577af8fd33b4c3f5bde15b703
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 23
        ark(
            i,
            q,
            HashInputs4(
                0xcc793d6cea8bdfc84b75dc38d2188271b8807e7498db28d153bdd67db2458517,
                0x4e6b41718ab2c8787a792ce8912e7ec4cdd5836f9e743fb02ce3be6aaa797010,
                0x81d5448a482f8d39830bd08fc620943e50736ecdc8a420fac586d358362a0804,
                0x65228f7902e0c364d43e24bb690f5b7b4838fefd20f1020ecbad6d9d8f507022
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 24
        ark(
            i,
            q,
            HashInputs4(
                0x1cd647f824fb2a905e5857ce3648ab99d9849ea3583efcf82c550025250e6f04,
                0x42a3fae3f511c24518607be65c610038c5a6a816dda33c32845dd555bffaa91e,
                0x03db4d22700b8ea5cdfd7a80aa4d281fb7fd02105beaaac6e46cb01456f7f424,
                0xc3a9492e6fd353bd840528c2ce7c9cf89f21f601194e0112327bcdba98a49405
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 25
        ark(
            i,
            q,
            HashInputs4(
                0x80ed1a90a969e2f62aae2dacfe0993224295fe0fadecdc86ef7618e28fdae82c,
                0x9205810240c65fd77510c4c7f68d428471dad35fe825b17d0fa65899df892e2b,
                0x687692d4beef294df8ce2b237b04d841b6c57ce4f873c87caf3bd34c21d5c025,
                0x35dd9320fe18c342a974a37eb7ae62dcf1fbc46b79963c7fbca3340f703b5302
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 26
        ark(
            i,
            q,
            HashInputs4(
                0x37d4fbf20ff565c92acb22cff078ba1524d0a27badf4063ac5e52712fdd5b30b,
                0xc3fc37afa9151832e6ffe586f2046f2f456b3268698d48064c6dcab99af6dc24,
                0xb191def8fd89fcc7c14da78a8f74e5426be16356e57a162678ce67563898b126,
                0xaad4b20394dcbbca5f8217dc78b00f800bcd76ca295458d4a57d4103a583550c
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 27
        ark(
            i,
            q,
            HashInputs4(
                0x9d03c55e0bf882fd11afa24c64a3db9edf9e416dee57814b49a4a01c75375607,
                0xd7af782d25d4961a7f8d9ea9ad9e29a7d9bbeb28b13a2d6c56411b3656163515,
                0x7395351b8677363d53dea45dc34bccac299f0434a5ac1e40c6e3d7768f4a5f00,
                0x498d4253275aa087f4a9ccf037c2330a686fa9400eb2e535b7dd245cd0a79604
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 28
        ark(
            i,
            q,
            HashInputs4(
                0x077671c17a38351cc23802327cf43b8006f4a8b68e6692696b3fe656e2f4e80f,
                0x67573da416dabc95d4b115a89413f896632dfa2025a135e5b9197fbaea7a7c0b,
                0xed3ed6c0288ffccfbf50b49e89399253bb43dfdd23d2b9720e0659f23ae05f1a,
                0x8c5be252f79ed1817768de5a5c22841951aa16293ce159e33620dcd11563782d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 29
        ark(
            i,
            q,
            HashInputs4(
                0xf540dd03992fe08730b476e248fff4341bbea5040334e746170d1210a12aee05,
                0x6d210574edd5636ada3e8e16b39ce3647c3c5533984b1d1bf8f9485e9faaf216,
                0x37569889c0d9f3660fbc271196f0deb6442af40b205c3655182803a64cf39d1c,
                0xcbb1fa6224a0d8f51c30b1cfc9b6df40452585e4b3a765429425f7128672ff27
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 30
        ark(
            i,
            q,
            HashInputs4(
                0x31ef73d5d9138a48382251fb8574edd35c1c8f018fcbec1288d50bdbac274d13,
                0xadbeb89c597799a185fac2c9fa318a33571ca847c14f7dc08a250306c1689125,
                0x1289699981803d6f64bd28b5391016edf8a4300ace9e7607c83a31a898d65d03,
                0x31eed2bc01aca024e55b46017c6192515b9715238530d04870f62410780fcc28
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 31
        ark(
            i,
            q,
            HashInputs4(
                0x5a6d8fe51ff3ec40266f59276dd79cce249fc42d2a43e41f180b99ecd6112805,
                0x0820e2f40dce90175c968de2771ab32b8328fcfa65b4853b7b5945049dc2c807,
                0x745da909be3d03ea7a64be71c7f377fe98d3222021c14ff417e2a72a7979f504,
                0x1c6e4d7b8eb26579e50c80556e0c8f860a5ee0a25e7b84067e7051e731870c03
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 32
        ark(
            i,
            q,
            HashInputs4(
                0xc98316e385a9c0456a7ecb3496f3518e1f7ce9fea8e022815d20a128871a8f17,
                0xf597f3404ce46358092750aa63d052964cf135dfaa4aca8a4bf3b6328000b616,
                0xae4eb7b78b7f1e99bb2b66244a15f6512dd50c35f281ac47c88539592cef4e1e,
                0xd8f7824c235f61815dddd194d579466057662201749b2509a8ce5da507171a28
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 33
        ark(
            i,
            q,
            HashInputs4(
                0x628e3901cad90b3830bd2942f17198036be6a82e2fa50222f474c6ad4e596b01,
                0x4b408f30036eae97a81d665c4daf92ddf2f6a44a140b21f43331877d817e311b,
                0x9450727e7cb4a4afaa60ac06fcefcb065e3d18b36d332a40d5cc253dfea80819,
                0x962466d9474c1bbee75c8ed565a441a3db982f77cce8c5381337afa5e4626926
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 34
        ark(
            i,
            q,
            HashInputs4(
                0x332b6d41491577308193a5c38a911f268ff9fc1aa7bdbe53a769168acb6c7421,
                0x1258dbaf374a014990a00451c209fdb742b91de906773ee61d025a5977bfae19,
                0x9619b10f843d2975435b76925ab45f3188f69b6742c47e77f41ab28bc33c6022,
                0x45f2f09ed89059517b8a4b988275ad0bbeb33e3e38c4a713790387bc23ae350d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 35
        ark(
            i,
            q,
            HashInputs4(
                0x8d404a5fc90a942bedfc247ba4c64f3b96a3923d9c67c1881ce4a81079691c1c,
                0xe6be807cff3b2ac396b891cf37d2efd9138f5198f8d4644abe4fbf8656e3a91c,
                0xfd8a4e3a5b2c5af100d14d7608e645a4b060df1e69de4e967d1894b8d181cb14,
                0x1ae4def987ae9d430a1734c45d24d079919a87981b9cefcd74df726fcb8b6c2a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 36
        ark(
            i,
            q,
            HashInputs4(
                0x8e155d658805b8c21f5a3c244e316e6ef5054b5b3693961978412deaae434c0a,
                0xaa56d87c2b7127fedfd7e0294c355fb287819f1bb58e2f97690352ec77fbdb1b,
                0xc0a189f1a880260b6b1e11be2fada568b9ba770f4762a2145cde65705200c41a,
                0x743638146437ddd133125efd88d4c547649281dae5fe112b712b670c13fd2605
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 37
        ark(
            i,
            q,
            HashInputs4(
                0xc1143e31fe7426e3e1f4074a83eea96bfa4aa447e2bf8ac8349ba1b8fad1f812,
                0x05372d2e23400fccf14314e1408c99d0fad38329cf62830c4158e26d5e8df92b,
                0xbe10ca445612315c982f904ed8f1bfb9c4f4fbce8d2d9be2ed7cdb8db1abc80b,
                0xecfb69dad05e0eea1988fc4ec06232e08b5b81bc308f1b6b0dd7ce07ecc7c708
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 38
        ark(
            i,
            q,
            HashInputs4(
                0x3e7f9aa77c7b9ea8e433a96b6946bab37138201ae5cbfda48200f5cf23019825,
                0x0f7b93d0deb0eee271b78a41c7f16355a54c8df4065dccbdf4746ffcef757a20,
                0x7e0f834081fb770c576a5a12154b07db01afa37ae85f698bb63f0221ea014710,
                0xec78bed0d7a0de7513c1977ebf68cb055ea20828c3b257b6830a50eb61550020
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 39
        ark(
            i,
            q,
            HashInputs4(
                0x88c26511a27a84ee5605a0c4db63b6d1d5e547e9ea25912c8cacf63df6a4031f,
                0x1056074f79b6f90d5680d4664d4c8615a08b03ecaf38d71e11613409f871211d,
                0x0fe93f860f6726e910ac03438ada170ec56e539cfc6ca5320a33916619baff08,
                0xdcf8dc7bebfde0ea43dfe0feb45496cdc0919d05877501721504deb5fb60ab02
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 40
        ark(
            i,
            q,
            HashInputs4(
                0xfa2e3f4c7c4811b95396fd42dec99320901c90226af6ee12a4b5d989d26a6e16,
                0x8aa43f59b89038d3de768daafc3077f383d21b3894a982921b6efcd77ae64c2d,
                0x97f7454e08896214ac310130a05a1a40c21dc36f4bdfcb6d6661c4ec253b8e20,
                0x332d5ac132b9c0bac852b30a93d9af75f0a6b86bb47233152ac90fdefd25002f
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 41
        ark(
            i,
            q,
            HashInputs4(
                0x8687e21d250a53886d1c2ea3092201856ddce0b3dbd6ad2e0efc53c275c58515,
                0xcc5dbdc830fa49a22d317358ed0cb226b87f0b52fe67aee87f2ae5a2d6fc411c,
                0xe3d738bde732bab3cc71d479a5d0adbfa64112f48a05dc5b312b3dde7114c313,
                0xab4018fc5315382246c11ac5070926862e12fd7e39eaced31d99bb61bd406709
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 42
        ark(
            i,
            q,
            HashInputs4(
                0x3c5094bf04280e20247e0cae8077a48e273c057a8d15fc96c42e2bc137276710,
                0x6d2b581853c8911f99e2e26536550a66c5be7d8a9c58ed6321004cc073c4ac0a,
                0x0e99ff17ddc3f6563725fe41a7e2e73e65ed744887df5e27dd3931f2a8e37e0d,
                0x95c7b92f9b38d0f8cc4ac5f42875e5cdb9ef8fde5998db8efa017cd8d2e7aa15
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 43
        ark(
            i,
            q,
            HashInputs4(
                0x660ddbe5a80374a86e971634a152c122d261e7e5e86fe6b2d93dc52daac4d400,
                0x6e2a95dfd1861833dfb42b51fa510e883163877e9890cfb83caba67dd119ba27,
                0x86977d0e591a53fd4ea8c0ad6496fc653dfdde430d4d65286325f003369b1d17,
                0x913ad8f32694e5e99f4fdb282e2ae51bac6da462d90a9f958b635c930e0b5001
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 44
        ark(
            i,
            q,
            HashInputs4(
                0xdf3d39aa20de5e1cd2a901dbdc77898ec706c5e40232c557f85b8d0c9f61e11a,
                0xf9e9be3eb271fe6db9cd094ddd8d0496ecc03bd3fb62b8b2f51fb59ce8589b13,
                0x4a5b95626bf228d900944c489d1705a4bb29cce251af0f321cf20c8c81b9a61d,
                0x4809ef9f480dbf04b05ed7853c33782dd76e0fe317b96aff7373877115328725
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 45
        ark(
            i,
            q,
            HashInputs4(
                0x62fba48075c70a6e6747ccca7ff4a6c47e86f2cc080f4d94aef3b67ea7812104,
                0x04bb62c716c147372f18b553ef20054111afe8ab14a27a2dacf9453c4df22c01,
                0x797adedf56c71b1e46ee0d8d1b5ce1e019ebae9c562d7b1d455f7979aa66942c,
                0xc203c60e6ae61b32039b71cc39006f3e71ae25e779fa37dfeec333454b8b402d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 46
        ark(
            i,
            q,
            HashInputs4(
                0xf39cc26ac4591e12ea383133e092a35bdca3dd24ce2ecb5ebada8169441dc41f,
                0x89912dba888ed5d84108ab06829d0739ee829e8a4690a24076f741752b08aa06,
                0x84be4ec6387608a0644b06059168819798b203cdc35c097f4777f3509d3bef15,
                0xf9bcca8c7a8d4d609271a295cd998e5b2afc43b6802ccfbe7f03b4fab5e6900a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 47
        ark(
            i,
            q,
            HashInputs4(
                0x222af969fc3bc84a54e30b5922e037c248aa389d4cecd73d997a7671fd25b10d,
                0x3da78d34378feb02fd976310dd9f1ed04f09cfa41ae04dd2e273b1e774760306,
                0xd167b2791ad45aa420dbf9b0f349fd7a83ba30e7168ccc8580b08aacf9e84118,
                0x8069a5d29f2cb61b26f8c957cb692864cd87005e442483faf63016315f5a7225
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 48
        ark(
            i,
            q,
            HashInputs4(
                0x8853efcb2539e36028332b7b3859c6b109006b18539099973c716fedc5c35d09,
                0xe667e8619331518970bb4a43c3192e11f11f129804241da40040b437d4ba9a0d,
                0xe493cd721afd4454ce7d70811d33397127c6d9461a5838f2f0352bcdb567ef07,
                0xea4d3c65e34e154c7aa773325974578b80938c5ffe23a1ec216714d9c179dd07
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 49
        ark(
            i,
            q,
            HashInputs4(
                0x9b967a79310c30dc2813859c60659e17c718e20f8e76ad987fc871b9ae948118,
                0xa121758902e09be09558101a25a3485b4668dbd49bf28284f98b13172636b012,
                0x3073aa7d53a7056b9f4829d2a8e38606f08821b3b50d4be9b23907efa839392c,
                0x135ec1c0f90ae207a1ea5c9713fda3fc84156c26a40a81e5a2fd5dde227e3030
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 50
        ark(
            i,
            q,
            HashInputs4(
                0xae10d5b3c8d33086ed39cc034206b6ceff065751f5f0a6ee9adbe8676fb41a0d,
                0x139d52fff37317246bfc3742b9e8ecce8960ecbb08d916993206b8be4bb72f1d,
                0xc9be19a9d3ccea75d13e0e57da45dce637fcbae2a3a5e9955aa85df796803119,
                0x37c9586d287b5c40f8641002cebfd5708889e6e61960e6f978bcffa42872d114
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 51
        ark(
            i,
            q,
            HashInputs4(
                0xc6faf33542c1edde81d01ad198ac50ee78a36786cad2cc05a1e10273f72d6a02,
                0xacb7d15dd1709ae6ff5061fd8f9deee1a4eb21d9203013c9ee15ff6a8400ce18,
                0xa2b4e2e14dc971785ca3f95a4e4950a6724abca0a94b488ac6c83d567894870c,
                0x2f81c325927750f066c59c2c6a721627c25e7211e93b63e8910057c509e26f2b
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 52
        ark(
            i,
            q,
            HashInputs4(
                0x2e9b98aa10cc799fd833633809019525a01c9ccd5a993b40221535826217eb21,
                0x2d9b25bdb4cf7194cca907b4629746c58de872782f7cc6126b8ee29530774c23,
                0x3609b803eec34f66e35bd5329786e0a9cbcdab92fc76792a704147ebd1fc8322,
                0x04d60e7917451c2a4b970556e66a0a6752f5a7168592db7330f3fc0b10e5f01c
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 53
        ark(
            i,
            q,
            HashInputs4(
                0x111cbd7c5538311443ee046e40c2076332af166163991589f035b0cd02f9132a,
                0xf3a2dd4e57b50a5e4dc2844db8f16bbc4dc88da9fe4196d88e5166fe9c2ddc16,
                0x66212844d29ea6a01e26733911874e018fac96eeb1ecf70df8dd296b0a82fd23,
                0x76a173cd1b1b9e72b8fdf853f86d0f4c978757d180382f514008b8a1661d2302
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 54
        ark(
            i,
            q,
            HashInputs4(
                0x8db3ce518c7ce6dd9f417d52239035fc4374e30d624a0d33dac1cd395ed53d11,
                0x5208ea3ceba59c49cce94290b7b5f082c6069937aa75f941b66150f7b8d2ed0a,
                0xf4ec0dce56cc1e48bd2b225f1efecba0fd0d5ca0499734eeacbd4c0ed587b90b,
                0xcca070b0b690f5fefb9be4495bfc5785e8fb6789eab5aaec265200f4b9670725
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 55
        ark(
            i,
            q,
            HashInputs4(
                0xc8db57d81491d46ba9cd1225d498c5bd0ad4452bea197d436a483151995e921e,
                0xc34427a0ba83e1ee7bb20d6457a8b1a70492fa85bf50bb7acb14ef00184a1128,
                0xed0c136b8b496fab28be5ea3868131c593b211079d7d4c441cd881eb7e8cbe07,
                0xe04c6d54d17d87e44dadd72fd0cf8ffa1c3ee28f42a21db95bfcde188a3ddf24
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 56
        ark(
            i,
            q,
            HashInputs4(
                0x23fd84d2301b03db3bf65a91832547e8d587bf5f28ffc7b5345bdc7d566daa00,
                0x558704b009123516152aa16445c13247f9bbf81eef873635a9e414a6f70a2911,
                0xff61123ff450d2dc0b95f1007c2a9f2170b981e34eb31fb9716ed79d044ab419,
                0x30be5e50ca971f31e22c43fae4ef2b34afc679f6843f2d4c802efa0c42120523
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 57
        ark(
            i,
            q,
            HashInputs4(
                0x103566e09d4ac36d3e7d4f5400f242c5f3ce2a88a935deae8020750ee086e613,
                0x07d756af6fafac88157cb27763dc700a9ed7070356337a7e4503a555962a6f24,
                0xb6dc313a08be2071c834cddd6a52e0c75b5f528c3950689fcf30723e41578603,
                0xbb9bda86d88a8d031f6cb88c11bbe69ab6428fb1e2023fb50f4ae71bbb6f7512
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 58
        ark(
            i,
            q,
            HashInputs4(
                0xfc81ca76fc34bb72102c8ccae65704f56ece9dbd099ac2c52003e11d3a02750f,
                0xd70611bcd3dc7358109fb3ae2ad67eae7dd43b6ed26414742a92415d317dfe25,
                0x7be50ecfd0fbeb97128701dcf542f21853aee5c435a92ab908cc4fac54881d1d,
                0xeb0fa51f90262aaa9e64ee350d9176e7fb5b50d6bc1f60e8d183f35334da9f0b
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 59
        ark(
            i,
            q,
            HashInputs4(
                0x62c9ec5a6167e9f60c50b548b5b40e4f8bb79872f55f0c686e0e1a40d9d4cf12,
                0x09d886585705a14df75e383bf9e745c89ab60fffc1ecf28bf46b61ca09944f24,
                0x5b32e90c9d5aee7b97cfb76e795c648bb0ea13e9adac8214f59f6b640dcd3319,
                0x0309a9ebdbff5b25bad2fb51dce643ea86a4db945ebc5177cb50951d96b58510
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 60
        ark(
            i,
            q,
            HashInputs4(
                0xcbceed6d8aad358d70b3837b91b96c082274ab2a00af6ff7478ca0a6f0c3721e,
                0xe785ecab5ab15982b17227e6196ed519498d0e968b64deecf87b41207e150017,
                0x98bd87d1a1aba028bbcca853116c84a5a02962e6b3ad2dab6a4a9e4e41c3fa1d,
                0xb271b52dbcdc35304dbfdbe66ef2f7ee2cfc8308b63b7094617d3eaf6ea12e1b
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 61
        ark(
            i,
            q,
            HashInputs4(
                0x6b59c840a0e1263248460e9c134e17f2719747b5f38c04655bb0cbd659b74e0a,
                0x312cacb8198dd7616ad7f6b9ce3ea310cfd4ba15e320851d0bfeca7f35b53308,
                0x99326097c3bec15d6bce9088bb5df6ec4134e5f8365fb28d238fee5544183c2c,
                0xf759d13f0c7d788ec45dc708cbc705a78522ee5c9a7df43a58f992e32cfe3f1c
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 62
        ark(
            i,
            q,
            HashInputs4(
                0xb877251e194536633379b0dace2f543cd92faf24f50e2baabf1cb77396afb921,
                0x0d3105c61dacd78c5b0879e2d89d095e93d7770249e17163ecf2b64ed4509322,
                0x2fe8ef47c3db9d382df5628d42d452f91705b6a4302a86b67ac14a6f8d286127,
                0xa341b6bcade5f2680228d75f255162628384afebc430f894ebe28dd1d6ea031b
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 63
        ark(
            i,
            q,
            HashInputs4(
                0xf0a7db760ab64c61e8c5b44f906266a273fa39df269e61cbed05d2adff84c729,
                0x0dbdd43ac552e73f29f30244341a2573d20ebf17311ba7f41b3acd8ad8973b26,
                0xb1d697b95db10cf6d75f3df1df9c8766476a9c4d9f50a62dfb2962a13c4a3d30,
                0xd75ce945110bab03bd82f04bdb28e150769a8f0b9ba33c815c9cec8b9de24b23
            )
        );
        sbox_full(i, q);
        mix(i, q);

        return i.t1;
    }
}
