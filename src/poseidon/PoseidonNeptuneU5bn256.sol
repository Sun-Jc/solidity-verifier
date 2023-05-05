pragma solidity ^0.8.0;

// This contract is for debugging/testing purposes
library PoseidonU5bn256 {
    struct HashInputs6 {
        uint t0;
        uint t1;
        uint t2;
        uint t3;
        uint t4;
        uint t5;
    }

    function mix(HashInputs6 memory i, uint q) internal pure {
        HashInputs6 memory o;

        o.t0 = 0;
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t0,
                0x01000048fba191b82333c5ba91412b4cf81e41c1c2e442c422b0fe10b5965328,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t1,
                0x6edbb6fdcb90b209a734885a0ad8e24e0de8ededd0c09dac733b506910c2e906,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t2,
                0x01000072e1b6651b7f42826a3f6b2d83512d51b1ff3c4681246c0b85a4c4572a,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t3,
                0x010000808368ac919d47c14f79ced8ea193201acbeaf9c1525006556f4d3032b,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t4,
                0x3433335bb4f8ea15ccce01229922f1687457a75a99fd0401eabca29d83d0df21,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t5,
                0x2fbae8e292706901ef282ccfeb252a3d96f1d1172b5fd78883512969b5d69811,
                q
            ),
            q
        );

        o.t1 = 0;
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t0,
                0x6edbb6fdcb90b209a734885a0ad8e24e0de8ededd0c09dac733b506910c2e906,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t1,
                0x01000072e1b6651b7f42826a3f6b2d83512d51b1ff3c4681246c0b85a4c4572a,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t2,
                0x010000808368ac919d47c14f79ced8ea193201acbeaf9c1525006556f4d3032b,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t3,
                0x3433335bb4f8ea15ccce01229922f1687457a75a99fd0401eabca29d83d0df21,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t4,
                0x2fbae8e292706901ef282ccfeb252a3d96f1d1172b5fd78883512969b5d69811,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t5,
                0x0100009cc7cb397eda513f1aed942fbaaa3b61a13c95493e262818f993f25b2c,
                q
            ),
            q
        );

        o.t2 = 0;
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t0,
                0x01000072e1b6651b7f42826a3f6b2d83512d51b1ff3c4681246c0b85a4c4572a,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t1,
                0x010000808368ac919d47c14f79ced8ea193201acbeaf9c1525006556f4d3032b,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t2,
                0x3433335bb4f8ea15ccce01229922f1687457a75a99fd0401eabca29d83d0df21,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t3,
                0x2fbae8e292706901ef282ccfeb252a3d96f1d1172b5fd78883512969b5d69811,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t4,
                0x0100009cc7cb397eda513f1aed942fbaaa3b61a13c95493e262818f993f25b2c,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t5,
                0x010000409ca70b66720535fa7d11a6c2a48ced9e1e8fac47756c06461b5cab2c,
                q
            ),
            q
        );

        o.t3 = 0;
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t0,
                0x010000808368ac919d47c14f79ced8ea193201acbeaf9c1525006556f4d3032b,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t1,
                0x3433335bb4f8ea15ccce01229922f1687457a75a99fd0401eabca29d83d0df21,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t2,
                0x2fbae8e292706901ef282ccfeb252a3d96f1d1172b5fd78883512969b5d69811,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t3,
                0x0100009cc7cb397eda513f1aed942fbaaa3b61a13c95493e262818f993f25b2c,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t4,
                0x010000409ca70b66720535fa7d11a6c2a48ced9e1e8fac47756c06461b5cab2c,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t5,
                0xb76ddbfe6548d984531a442d056c71a706f4f67668e04ed6b91da83408e17403,
                q
            ),
            q
        );

        o.t4 = 0;
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t0,
                0x3433335bb4f8ea15ccce01229922f1687457a75a99fd0401eabca29d83d0df21,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t1,
                0x2fbae8e292706901ef282ccfeb252a3d96f1d1172b5fd78883512969b5d69811,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t2,
                0x0100009cc7cb397eda513f1aed942fbaaa3b61a13c95493e262818f993f25b2c,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t3,
                0x010000409ca70b66720535fa7d11a6c2a48ced9e1e8fac47756c06461b5cab2c,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t4,
                0xb76ddbfe6548d984531a442d056c71a706f4f67668e04ed6b91da83408e17403,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t5,
                0xcdccccec46a9a6a25764c398f81e3ae383c7996629e73dc338f35b7331c67306,
                q
            ),
            q
        );

        o.t5 = 0;
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t0,
                0x2fbae8e292706901ef282ccfeb252a3d96f1d1172b5fd78883512969b5d69811,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t1,
                0x0100009cc7cb397eda513f1aed942fbaaa3b61a13c95493e262818f993f25b2c,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t2,
                0x010000409ca70b66720535fa7d11a6c2a48ced9e1e8fac47756c06461b5cab2c,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t3,
                0xb76ddbfe6548d984531a442d056c71a706f4f67668e04ed6b91da83408e17403,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t4,
                0xcdccccec46a9a6a25764c398f81e3ae383c7996629e73dc338f35b7331c67306,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t5,
                0x010000b13ad6a32f88d91df2c3a9b055d74269195b41cb1c27861eb38b095e2d,
                q
            ),
            q
        );

        i.t0 = o.t0;
        i.t1 = o.t1;
        i.t2 = o.t2;
        i.t3 = o.t3;
        i.t4 = o.t4;
        i.t5 = o.t5;
    }

    function ark(
        HashInputs6 memory i,
        uint q,
        HashInputs6 memory c
    ) internal pure {
        HashInputs6 memory o;

        o.t0 = addmod(i.t0, c.t0, q);
        o.t1 = addmod(i.t1, c.t1, q);
        o.t2 = addmod(i.t2, c.t2, q);
        o.t3 = addmod(i.t3, c.t3, q);
        o.t4 = addmod(i.t4, c.t4, q);
        o.t5 = addmod(i.t5, c.t5, q);

        i.t0 = o.t0;
        i.t1 = o.t1;
        i.t2 = o.t2;
        i.t3 = o.t3;
        i.t4 = o.t4;
        i.t5 = o.t5;
    }

    function sbox_full(HashInputs6 memory i, uint q) internal pure {
        HashInputs6 memory o;

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
        o.t4 = mulmod(i.t4, i.t4, q);
        o.t4 = mulmod(o.t4, o.t4, q);
        o.t4 = mulmod(i.t4, o.t4, q);
        o.t5 = mulmod(i.t5, i.t5, q);
        o.t5 = mulmod(o.t5, o.t5, q);
        o.t5 = mulmod(i.t5, o.t5, q);

        i.t0 = o.t0;
        i.t1 = o.t1;
        i.t2 = o.t2;
        i.t3 = o.t3;
        i.t4 = o.t4;
        i.t5 = o.t5;
    }

    function sbox_partial(HashInputs6 memory i, uint q) internal pure {
        HashInputs6 memory o;

        o.t0 = mulmod(i.t0, i.t0, q);
        o.t0 = mulmod(o.t0, o.t0, q);
        o.t0 = mulmod(i.t0, o.t0, q);

        i.t0 = o.t0;
    }

    function hash(HashInputs6 memory i, uint q) internal pure returns (uint) {
        // validate inputs
        require(i.t0 < q, "INVALID_INPUT");
        require(i.t1 < q, "INVALID_INPUT");
        require(i.t2 < q, "INVALID_INPUT");
        require(i.t3 < q, "INVALID_INPUT");
        require(i.t4 < q, "INVALID_INPUT");
        require(i.t5 < q, "INVALID_INPUT");

        // round 0
        ark(
            i,
            q,
            HashInputs6(
                0xc39422c4bce9a1808cd5e60fb449a498db1bb390ddc572905049511274ae0604,
                0xd2242f2cdf366a6f865c04c04455b7b091669e70c521d5e6946ad488b0f0342c,
                0x0463ae011df78ecd7fa7a9d876c8a94c68c10185c1bd74db7c661b528cc5180f,
                0x2665ce2aef3f2c932d0cea0d669f79ea49a42fe318ce49568006720f5d136700,
                0xd02025a3c4b6d577ddc18305e5d7a398a888d56208132cd63cf7d274ebb1261d,
                0x8926f0569533b3e36684e553faaa7bd31fa1c9377b82d355b02b269d93276713
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 1
        ark(
            i,
            q,
            HashInputs6(
                0x08cee620b63d30c65effb70a9641c37bfa18a57eba64832c47b02892cba02a22,
                0x7553b815251c06039b406cd67f625429ce94282bb4afe27a4f9d5532619f770e,
                0xdccf6a6277f20a1ab2e4b48e6ad60aa07f7939bd3b9191ee2102a59093688528,
                0xe2ad7984a4e29aa4e85908ad9f100b542d1edd76f833adff52ac905dd09b3c00,
                0xb39becdebed26b0581df485d548f531cf3039a247cbb206e14add2432c37791f,
                0xc26ec2f27d271378b91ae371d8d0859189e717d4858685097b628e6841fc1419
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 2
        ark(
            i,
            q,
            HashInputs6(
                0xf78c2136cc8a5bb9a8f69f304fc6b3ce6f5eaa3c0a8a7d6d78a3168db1753a22,
                0x7b123c6dc6d0075e6cad3723ce0532eb87efb3c25af98f5f123d962b02d0a01b,
                0x49c3a3fd4e2c43aa05eef730bd25dad091a65895cc80ed71efe5738790212f25,
                0xc3c56e4f10e628881fd7e8dbad6e6e41afa905f0315b97e242903514d48bfe21,
                0xedfe3d398d7ab51d96908c1d33201ccc38f900ceb6409fa1c15e779cb4ad2107,
                0x79ac02899485b1660bb75efa743e1c12189ec92be7e4e9dad8bf92f8d178a225
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 3
        ark(
            i,
            q,
            HashInputs6(
                0xc1e66993ad87c233c3fdaf889e5b27120e374958a0c40043238936cbdccb2407,
                0x4523ef9602c390e1e2ab5cecdc5467804b2d1e5046b1cf9bd0e9974c61fc1629,
                0x7f630852b7cd61e8da4dce8308cdc29432320fc872fe5c88b8a8dc5ea1a17d19,
                0x14f1e58f517171c325265c8c4c640fbff70ac0d680524cb00cdea39994ae1013,
                0xbc85e7ee3c5ffeef2bfa8d53728f732045dc0f9b5c504ff44956f0e2a62bb41f,
                0xc3f6624988b2945ccbf75f53d401694d138d5128b876163f8a9f1520ef19152a
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 4
        ark(
            i,
            q,
            HashInputs6(
                0xecab2a8ca6f30f71840273bb9aef029e30eff0861154e34e20ba7d00361ba900,
                0x1e4d81448d98f2ce895d62767288fd8a087ea90774cf778ca067128413ee0822,
                0xe603140f0f69e9063152618195a64fc23e7bf438d2387916e68a4c21f2ffad04,
                0x28b12f8fe695d21689f57bd4e47a59fb43075c60d462c40f035dc969ebe6e31c,
                0x625afb2758fe299d6e4c3cda54ee68bb96b250eb6ef26b3e92ff509504f8ab0d,
                0xd7574d4e2787e355e0795a07bbbde0415df2c0801918030c453feb58a8832020
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 5
        ark(
            i,
            q,
            HashInputs6(
                0x8b649ca5fa7288d41aa1a92b5097617beeef5f946db24123ec0103690684a80f,
                0x87596e3d8234ef2000c54b85072bb900215896792e2fc355bb12db28cdb5721d,
                0x5a2b8560d760543a2e04e216fa8a168bd80be8421d0f4a7dcbec3c448c2bca20,
                0x2bbdaa15ed61de956a6a3b56340ce49ff8a7778b771a6de19281b3ef5ce2de26,
                0x774fd838dd298b199aa24b7112b8b554f9cdf092a5c61d5c2fbbadb1499f1201,
                0xf307e91570c3e95b3560f6dedae137fcd787a962efe46c2435aee0ac0c9b3506
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 6
        ark(
            i,
            q,
            HashInputs6(
                0x42b2cde8339b0ac7dd55ae07e7a8cc52630ef750b50b8daad51f1643e6a8ad19,
                0x5cfc1add85bb59999d2b8dc8f60a73d3ec957ca7f67b19d5003b3da37c623804,
                0xd2b7c65f86fbf68511a10eb9acb1acd80906b46296bfe07a5955b2b1696bd113,
                0x3c13489dbe0b178ce374157da94721e3a2f80c2eb052a08a75e65db34a277706,
                0xca768cebec2c846c7db29f97fc1a523e84d5baf3e78df3df5f91d63881540303,
                0x96377c2ea9eaf172d7865fe3f713247506535c1cf34077cdfbbaa5fabacc0e1a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 7
        ark(
            i,
            q,
            HashInputs6(
                0xcc2ea8d91d79ce63a74f74850508d93ca3a7a75196abd7a74057c61eef27fb28,
                0x53ec122efd620e86f20227ce8a0f94948dfaaaa5ac3c7fc4727f30cc1b596c09,
                0x8da29775f2d535c54a32ea8e60ea7a4138359ac5597635f00b7ca4a371caf000,
                0x22988b265d9757006cb173dfc5e7dcc0bc28e15eb78180a52f9e2afa307bf902,
                0x8bad0331863cc2180882ed6bbc130f51dd3d2e735b59581200c6724ca468240a,
                0x3df48139c1275638f7bf838903de146eb5fcd8e6fe6ce36c47caecc03aa16c26
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 8
        ark(
            i,
            q,
            HashInputs6(
                0xbbe8d85b1edacb049df4336b80f90921957b089467e6543159b271e09ce5ca22,
                0xd8a473c0637da802972765de86640dd80030e8b32d813a5a3b5f73a81a7a530f,
                0x0c3ad4c8083201865dd0abad41ed506912763e3955a2f16dba9b1c31628e7403,
                0x382fc69e7453133fec1345632aea80eae95bfb76f9df1916c664b2334c782203,
                0x54b0568f2218d991ca2c1a91e841119e1c3c2d8c31471a90530dc8ef550f5a06,
                0x40ed0c1445d73a8a663b84f266fde20ff02bde1afdfbe83978260a63e189d921
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 9
        ark(
            i,
            q,
            HashInputs6(
                0xe94f559407c99b250fd0db99fc032d2a879574d94243e4a2273dca847b451130,
                0x7b8636a06c2f23e88c930e22236604f6be6c9471c82dc3794c396e3f9aaf471e,
                0x8b62d25d0b542d2962bbf77c96133948985586467b795562288b59c17b0c5d03,
                0x501fe19373803e4399444adc34b2bd9a87b53be6d09a66bf8de456764c23330d,
                0xe43101c09e7a5394f913bf8ea303932d884cba3ad7704d4e37b63125faee2e19,
                0x63f529efd3239ed2b6caa3741cc67e7bbe7aaf61519612042f15ffb23b1ed91a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 10
        ark(
            i,
            q,
            HashInputs6(
                0xfcbbc8b26065718e0865ab59eb89dda46737cf3ec17b910f56dd1404effe4b27,
                0x033dcee71f28cc7a18f3be0f487951c6051e55d1e03572cdad731eeac5cc5421,
                0xa0a11442e1dce67387659edd5ce29c84d4b22c45ffa404eb6d165d3bc87ebf0a,
                0xdafb1d23dd2b3a5ca31673d003b3ad85dda18a85cfa3043202fc96bc6681ce13,
                0x13ffd68870209df63be9d12d89a2edaa9c93ac90528777efb5c279f2e1ce6c25,
                0x8152e1082fc8df198bf58657ce10c2460ecb9ac3d7f72d340a8ec9a9e14fda29
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 11
        ark(
            i,
            q,
            HashInputs6(
                0x37b89060b0b80b02f4c8cda380f8ac538aae38797ffa259dd78e12df753cc217,
                0x8cbcb55d70c7a66d8f9ef508aba09277f73bad65c6d9344eaacce740a9dcba1f,
                0x7d8c67ecedfe8a0a0d3f9c9acbeaee7f6c41ce46ff26ca61e6cdb4bb68b11e24,
                0x2fb22055b7eb3025fa14f77be23ffe2313c64128012d594e89532d69ae77b409,
                0x34e0cbfbc14603e36cd404da28e626d8c6e057464d7ec2c94095f8b16516742f,
                0x1536e22aa673802d8a800b607b47d9927a27d689414b68638531158b1792de20
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 12
        ark(
            i,
            q,
            HashInputs6(
                0x57854e6f768343d2ac1e0108b3ba0aebcac8fc69d43170fcc02af0df6382d515,
                0xe9fe1b134487844953f2110c86f445cfcd5a15aade637acee17531d734b4de2e,
                0x26be0ae425ab21c1b3ef3ed1099be1d23569fb587299386d72a176e410e4e42e,
                0x6e011f1a5cbe5757b77ae7d10069a25cbffa6546580e79f42ba84ec2962ff514,
                0xdfae32b5daf42b32812e3cdac1c3085b2ff96ddddadd4aa1e0d1e63b055ff325,
                0x3ca8ba23a43bc8363a2a988912f316e49a460670e2d7c010d81898a80d972903
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 13
        ark(
            i,
            q,
            HashInputs6(
                0x9f3c6034e99ba73a06e35a8f53f16fb42fd0a39c235dd4a23a11cf82fb2b4f1c,
                0xff6ebbd6b81946ee10b45688a3eea07e45ec83747614a4edd5fe28cd5e68b82c,
                0x1b6d16ffe0b270ddfb5294143a8aa2d52a82b619f62c01ecdf9f64aef1bd572c,
                0x194746972ec1a8b1d7cac874cfaa1e2a74d25ded461094bb591b83d1f0f69c24,
                0xe32c68303fd66a67c53ed489ea4a24aa51b5008d776fe06ff5c8daada841d202,
                0x002c78e9bc3f282a386bac284a1cef6bbadd48da485775d1a4860ef62a3e5011
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 14
        ark(
            i,
            q,
            HashInputs6(
                0x9f56e02bcffbec278a8ba92ed9390c3ed83426038235a7a422fef066428cb326,
                0x6d2484c01396ce7192a9d4079a188935f4ec177dffe0828f3dd41bfa4375a723,
                0x29731446b9e7601160ee353cb06845817ed6aef44126d15f0869ccc83263d62c,
                0x1e8f4efbaa8a781a0e54c9ba0486deddd00270567510de111df4254adde44c17,
                0x025f5d684c3806fcdc020678950326ea4669d6776b249d0e685d14e8c5b1f825,
                0xa350dbba191259ebb8175837fcff8f82a5fce484f6390230f477421759a29c10
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 15
        ark(
            i,
            q,
            HashInputs6(
                0x3cc93d9ae0df59f737bf201c1908db02fa3f354318be9a0a5e3651be1251b82c,
                0x65b7ae9a151bb1cb6b7377d4d7e190cdc850083edb3b3003c0c81630eb330519,
                0x882c7fb0b5f71c52b40edf93dfe19b8d03e136709dac604c1fad3f4823634822,
                0x4c2062f98064f77d46b1cee72b305116ed4ec3872cfb94f6cb0e193609725f27,
                0xab4f01da56107d1aaa77a9d117f86687bf8114639787f31184171569566e8807,
                0xd973d2bc2404b2e8dd8076085a212f7191652eb9350ffd1e5c033bf40d021f19
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 16
        ark(
            i,
            q,
            HashInputs6(
                0x50db6f390b509fe8afa6ea40a1bcf6f3a92ba740b9d6410ccb3f584eed29821a,
                0x9892dfec725d3e7c58a7dac9b07b48be7cfd151260b1cc3934a42e37a2c2a42d,
                0xe2c78080445552c76c085a3aefa118bc694a0d1c0e600980373ddc2d2db92427,
                0x6d9ccaf9365b5f624f815fc4157970d26baab899a6c76fe161968f20df7b222e,
                0xcada5eb3cd254f1784c1bd149a04ef2d6edff116df4ccad7606c53e57fd8c328,
                0x5541f7507cf4c687b2fc7ed036dfedaef00f66769bcfcbe402c07ca26dd2af25
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 17
        ark(
            i,
            q,
            HashInputs6(
                0x9f1d49b433c2043a63bdc0aff576a445ffb5bf7e199228ca08c9d9d0b43fa608,
                0x6f90deb9c118991581e5f1c8dedca8df8544695b4462aa08bffddd1afc7c2c29,
                0xf429493de3d5dd17dcfecca5fc3b796c9659482fa8068229c69762f529b7b718,
                0x6fc2719f30da72c65bb5c66ab8c5b6c0e7c13b82b05ca409e04222fee8f90a2f,
                0x9a9e44d056fe6495dd9d6a90646699be1dd668cecfc7de1540674ac99a6fac21,
                0x2b84d678b303d2c3cb17edb1d370206004461fd855a90dfee75f578e9aabdb1d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 18
        ark(
            i,
            q,
            HashInputs6(
                0x943c7d74549ed9eb6a51ea724ef2d9a26ba097f16ebaf6abc320c3d52090c816,
                0xe005256d0d2915b161254026bcfd47f6d7a2aa4684989d0175365e6a7ae39025,
                0xc4509b78b2241afd6f752e7bf22b0dd513e73434a2f769f4f7258b62d6bbe41e,
                0x16a7d6cd405f1d1a13d4d1d255395e4bd611b02eaf27ea5bc9d6a6a61e4f350f,
                0x37a003cd1cdd7a5b26d4d563376b0d3a3129997f61241664fe249b1a1ecbf528,
                0x7203e8a725aeed0f5a62ae364318881888240ae685c5055cd2ffe42681dd580f
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 19
        ark(
            i,
            q,
            HashInputs6(
                0x17da1316741d680d3d7ec249e9b21287d63d74c9915d76f7d65507d28e415715,
                0xbea8897c8067055b4645992b83e2a9d52e475bcac7697ec4ee09d9dd372faf2f,
                0x0f86c687e20012b6b6cc50ec26c0c9a210105a3068e8bd22595be11dbbbb7e10,
                0x0d7c6fb715463ec93dcc1a2990cad4d528717f0a05095d74c9960e7cfe50eb0e,
                0x35dc1f39b0b741b35f0dca38367d3d3c9b18b01bef57d09aa2f1c81e15cf2a14,
                0xfdf5871cdc6928be64b28d7ba99a17262dc2b1cf6b3a8942c7f720c120ba2a30
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 20
        ark(
            i,
            q,
            HashInputs6(
                0x5795ea91f237f5e43b2b6d778017d04536c8489eb0bfb67c682740b162b1b329,
                0x0750034235047c3cb3dea18ea7ec12afa3f39a40c80ef9a300be0f0f17ba5e1f,
                0x0e43ef618b5b4c9f0b325fe66cd00303bd7d7e1003e1d42a92c78e0e722a221e,
                0x188627909dbbbcbbc3671b36bf80c0afba999b6d829c740a1e97ed053c719403,
                0x5049ca83ac020589f3ba23872608a8a5374a2ffa563965f91c57e4985c968e0d,
                0x6c31a91f64b3f3a115da6cb8a9632686136e774bfb7cd5f3f814637470e58200
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 21
        ark(
            i,
            q,
            HashInputs6(
                0x233c76ea7994481070fccbcc3fa476056c25a812dd68f0647001040eab166217,
                0x440467c1fe4ebf84104b9aaf7a08010debf72bac595a4b1a8e6afbad75031008,
                0xab68bc20b33c10eb76aeae81e74a11d8bd414aa48fa0856c8dc073644a9e5603,
                0x183ff0f08666c68ef3bcfbccea040287c60b85981fed704eddfd675c35be3b25,
                0xe0b973e8764ce8ac0a8468874c493f304424c1e4566d84631110406adb815b10,
                0xf0ac8a1cc3056382d9deb560abe6b0e8c5f50053363b5caccf768384a41f2202
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 22
        ark(
            i,
            q,
            HashInputs6(
                0x6677ae0764efa2df8efe0b8a281617fdd25f771365d8ca38a3fe0cff9f437a27,
                0x215071a1db68f49f4d2644e294e957cbffe6e46668aca27c09173a4dd6dc0f25,
                0x64e96a0c4afd3567d0aaf228f56fa2fc69e4bf208537445b4bfcf9b457669315,
                0x8228856bc21f589d20e5265a35c7298d9b4bc8c734e63b180f7ce2d5b234b107,
                0x1dfe2fa126372fbbf471b714e65d53904a08d756b5ac426abaf7258821c9422d,
                0x86351113dd91b767c6a1e4937f196c34f4e743b2ef4119b2d67dceadd1437d14
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 23
        ark(
            i,
            q,
            HashInputs6(
                0x30d7b5f0e746a62255fee3373cadc09b33a86b75180c065d342ad69d9b92480b,
                0x514879785ff78be3f80edbd097332e4a6641569d6fbcda9dd10be51d079e6d0f,
                0xd7b3bceba471075395af57c3833e8504af09b2ce1447dc6f9da230c5de00c72c,
                0xf513486550baf711499d82787da8ff27a04ca81e12ae12c8929431a5577b9c1f,
                0x203e7518e704314e48e6f00a8b1283f04689f91a209decc05cea86c845a7371d,
                0xb99012b76a7f3461d54bd6de5994c25ff45fa2dd343411064fa9cda4ca8d8903
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 24
        ark(
            i,
            q,
            HashInputs6(
                0x77fbbe14acfff3c1819168471c66fd5caed0d27e5b538dc320188c9220fa0d21,
                0x401ff6f7c7cb91c5daef7cf8b57b5be8bfb92e54f774b795cd95361770cbd818,
                0xc1eb0cf0a06b1ccbe260f4a1f12c98dba51fa8022492f2c1a602d39109b85915,
                0x808ef3da893bc9d1a42ec7ff8c5a69a800304678a626f1de777ece8f5f9eea03,
                0x0e8d1f1848575d83ad4bf54549e919bc3711098676da0643a42a90d7bbf32309,
                0x77cd6d41e85bab13e49151cc2026b5e9497c5260e91d84ea8184158971086e29
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 25
        ark(
            i,
            q,
            HashInputs6(
                0x0fc7cce4b9708e7e7d7c6db917377be16c5c6ac77509ac71bdc486be729ddb2f,
                0x89f015636c388fd9d0e9bacbac12ab3aed8e90f7cf56dfe01bba2896e8ec0d2b,
                0xcb2dc0a3a29513aea414801cf97cb36c6bf6f446d8a2917ef86a4f410ac70703,
                0x7c3252b3ade0800e3359a80d86419c42fb783130b5d9bcd6d56a17414789222d,
                0x39dbb93da63d8d4662632a7ae018003b29ad77df272b4c6bea6b8cda747bd519,
                0xed78faf37c2339a8b92f7185dd86e2a63d8001e74ef0014e16e0a3b8fb64cc06
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 26
        ark(
            i,
            q,
            HashInputs6(
                0xe678cf747b44906bfd4cc7c56b4826e2de9c0e07aa8e2564b5070d6163deff18,
                0x333c7d25e998480a540ee2aa52abf88bc120e17fa204c68c877c63b5b1835902,
                0x94d2d7c73e7ee0fc38e909306d67c887f3a8ad26081d3e134483389426c9a805,
                0xb625638509aa01f5cf3a0e54fca933b02bdd7ce541dd44169c1fa5c094b87422,
                0x0622d43092b2a72e8eb409badbd5468114269d0b825312a3c810397f1049f421,
                0x120710c490ac2e4adbeb28ea66144d2fdd5be9d3d89198ed9feb99a33c719e06
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 27
        ark(
            i,
            q,
            HashInputs6(
                0x350f5fbe68ace98147385386fb4f287a7068bdd540a5af0fad5eb491c117b80d,
                0x675f9b60d9d257014aa4158699be21bdc265077f342ea537b4838e274c391503,
                0x799f6d5871a421de9cb7a51eeee726a7a7256122b3a37d1d959a102e54a1ac04,
                0x21c54046fd1fe472b19d0b6bcdd34410280aa3fbb609f283e231451cd8ebde09,
                0xc8dafc472ec883a4479afe838205bbdaa6a27f7dbd9fdcad1b5ac6da1b5bc512,
                0x34efea3c136b89be633e88b2e43f1f41fa9c59deb3688ef36acfe29964954427
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 28
        ark(
            i,
            q,
            HashInputs6(
                0x9969a665d8d471a6757d8ee9ee2e7c2d4565f208ec8ba4cff576ebfb934efd19,
                0xfd41b58f861572044494d4f5fbc0169793a8e5b7423dbfffbb861f5980890c11,
                0x1f700c6b0d6e77da9db3280ec0296d44883b807a46cb462564149c7a92e02704,
                0x9789a8c07df2c610fd4558edc64b1eb38b8dd0b52ad340f69815064c8b337e1d,
                0x6a1dd584b056a9db082c739878771c6f0bc6471ddbf6b3b932aff8028cb2c210,
                0x61fd1118ad83f5baca299ea548468149442f71c6f3d085938366b1a78eb8720b
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 29
        ark(
            i,
            q,
            HashInputs6(
                0xd176d1137e8e48ec95ee83747fb85bfce68618bf2fdc0a6a86cc931eaf4ce60a,
                0x15b835d5866c988d63338aaa656beccb84aaa5b8ee52e1b423e406fb3e17d813,
                0x554669276ce0299160241f5d5ef9a0d68f8f2e93f6d92d7a2218289bf0aa9101,
                0xbb78e0e9c4fbba42d78af5dbdfc5c470f43f64655817a8af3d917c06696fec01,
                0xe40d1644bf614ca81dbaa6910a30fb98c9bddb4c18ac6af3f5c332f2d2a6d319,
                0x1982e0f5b28dbf253aafd4b89688ac89013ec9796238d6bf1d172d15d4b59e14
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 30
        ark(
            i,
            q,
            HashInputs6(
                0xa0bacc867ad058b2f1fc2d8d839f4da6fb2b5841a822f3c561b481529ee4be17,
                0xb5c05af3a7ac1da2a0f0757cbed1c279350459adc098439bbd08b28e3af5b807,
                0x6908a7f5ea17fe7c93621c9aec793377785cba7d4ae0f28fa6d1bd53e71b7422,
                0xbfd3feeb58d10d389dc5399b59530b7aa1a8e86f3e2ffa7cc06124a50c4b1805,
                0x29f9ceebae453e106e8830567667f3dcf07be4d72db3aa5953057244084d8f1c,
                0xba7fe8fa3b3685d5e811dc3ba9e3b945f6d84fe5592c34bfab5bbf2cec415a24
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 31
        ark(
            i,
            q,
            HashInputs6(
                0x1812d1843d8d6478dbf3cbab6d68183479c196f4f148c767e33f3ae90efabc1b,
                0x8a425bdb59a9d0e9112f30bf03cf0b181dc22c43deef2a2e554dad14a0e8cd1e,
                0x64c4bb7e9bb96c956bac43cefbd7bfc444890578b782e5499057726cc5a50012,
                0x7ca196e07cd2420d7a8cb6a07507ea859981ccc6b440a2b9555801ef94f4e21c,
                0xef395da4cda882f0c5fdd2afa3f4ad31be846bb36e509914753cfbbb475a0f0d,
                0xbe6e3c3cf3424d90789762336cf7cb5ed9bc48e75ac0f15fee388a75f082c202
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 32
        ark(
            i,
            q,
            HashInputs6(
                0xe785fe5bc5a44b1c1c8239b58aa5e018c324ff815585423e5d0455e30ad0bf07,
                0x609dc0ae8e3043ef17df392bfe17bd1a562c0b3471939a87c74552c33afa6019,
                0x6d9e13a6efd7022e16b729701ba9e69daefc5015c119de5be84494b0c8d5b002,
                0xc0a0be3dae2b604a00e859ce3b72643ee63fdc1d02d80796a102ce35cfc40e03,
                0xa495716ef03f41503a9e3b55eea11664fe169cae45f1e67dafc42ae2fe228e01,
                0x2b51ccf448b660eafbdf243b184e76184d69a97ce84694e8ec94d3439fb3a213
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 33
        ark(
            i,
            q,
            HashInputs6(
                0x5c4ad23a09c95ff9fba98893a27ca911f369bd3426c0f4d5c1842721a9b4380b,
                0x714e0970c09a6c5505d3f67b95e82c48157d6348b11c7a5a6de1c5abdaea3f16,
                0xb75e4345cc3262f9a164bafe9c22ed5dc103836451b68ea7f2bfa95c04f9742d,
                0x31f6c7bcdda447cda34074a6eedda6863ae32cb446bfcd07d726ffc5a323b806,
                0x581b32736608ca2bfa1e274627957f06f6482645cac8b418d9900b3c0bb44e01,
                0xa8c50311761df26b4f207fe45cefe25754338434bdd8a8cfb0b436f3ccefde01
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 34
        ark(
            i,
            q,
            HashInputs6(
                0x3e51689150866bdfd09d8bc1d342c797415ff4e2a3648ee0aa95ad42dff77c02,
                0x83ab51ee39b21f9f267fbfb47e21e8d953635a06a838c646b549bd78b99cff05,
                0x47f1bfae296ff89cd2333e00ec683af1a6dd5f1e0ac15fa37b0fb7a340953426,
                0xcd2bd4651de78c9c17295a210aa28d41ec93de9405c2ebefd6773d67988d011d,
                0xc9153cf1f77fa83461618c3c164e25685374ecbbd147d88e0ce852c947bc9106,
                0xc8f308383cbbb0f7358cc8ee9a72ae459d0c2c29956ed0460ecff0edce6c3e24
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 35
        ark(
            i,
            q,
            HashInputs6(
                0x6776884cd37f366d4a29234429702870d430929e4f1c761c2787f345b5caa30a,
                0xc3eb2d10bf6271cfef6ef9236d9fbe51c8385dd749b4e0f63585d389bd8e0f16,
                0xfc3d27d8bd20196fbf3d34ad89fb8356a44f0e9d9d20dd038335b212ca5fad0a,
                0xc8050bdfee103e0e4dd03f28d10bfa8060b84ba9fad31a4d8c5d720019a68e26,
                0x64ac8dddc9384e55f6b06034eb9da3e6c011a9d458f4018f0ef649b4a7c45608,
                0xe1b2797a24142fdfa2f94a38beac51bb57d7e4f5325dd07362b0f0dd4df5a307
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 36
        ark(
            i,
            q,
            HashInputs6(
                0xa6b8d8499d4ec1fc737316efae60ef1d26c68d69f516915c648fbe7285bf351b,
                0x6a92942f0d878811cc93e416dada80fa832174445dec99d2508c3799a9803e16,
                0xab92fe877570209a9376eae04db44ef129dfb5e9aa0640348b735a064f657410,
                0x702f19e6230634c497c1b3cdb75f8d9d10b22ca31b5d2545605c2ba4e77e7c1c,
                0xe5ba014b2eec4f72203fcfffcc261beb1a2f3308fa672361242f4fb962b8992e,
                0xcc3d13b7d2eb219f818ef61874609cb015bfb243c61bc8f6cafbea1aaeefd728
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 37
        ark(
            i,
            q,
            HashInputs6(
                0xe725ad2f5ff59c39dd0d1cd2735d7450d97ab75a72d679971c7a86a43bc15b23,
                0x4abb72a1919b75849660f9b2ed445a63c86786d889b3289ab5743029cf5ec403,
                0x30e1294012f38d1e686f5a2e0a9e956cdac77e4cd0975e1f6f179b550bfc9517,
                0x92e5b5997d8d92fc3e48863e4f47712c95826a1beb3d0a8b775533c9ce950d04,
                0xb7d4386965b23083877e4f87baada3146c5b44db23c90dfb7360588454e1f326,
                0x543d8d8df04ac93d4128d25afa41d9ed157fe7611ede000ee4dac56c60cb9120
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 38
        ark(
            i,
            q,
            HashInputs6(
                0x2aa93c072b564f45d5a5e0995455d56322801a1195e98d36846aaa706caa6804,
                0xb829d6b4bf6bea838ab963b6334cc995b6576295e1e115388d914f2a9acc7425,
                0x8f7783a0d0aaad6785ce060d7d6463d49144f9dd06a769673c684704d096bd0a,
                0xa44c4d0e8696689ffa595264facfbec53b723b9d939071c2f8e7f53b21321a16,
                0x0a0fd869d8004f5bf97bf5960277326c2f28eea18940f72f372b91beb023f810,
                0x446c5ccc3cddb412b6dca5038bf2024c91c92e178d76cf988e11f94cdd688c03
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 39
        ark(
            i,
            q,
            HashInputs6(
                0xe8672b59c75bc68118f36670cdd07d433b639f52474010ca8b7dc517a5a7ed03,
                0xfee626cf1a7ec465625fb002002f3b9142f27a1af4c7581be4c186255d59540e,
                0x1e2054408d6ef893e18529fbf44f46d2349afd98135bf9724be15133b3c79119,
                0x3fd891471a2882d1f487179603bb0766d0bba3acf6e333978f0abdb5a2469b20,
                0x5a3b9fd538dc2bc890d3aaff59f2e4fc99b6dd458ed27a7ccb5014d687980930,
                0x439db9f7e14e8f92afcef2dcdab808b14698db4f46c3d3c4b6a8bc16f6d67c0d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 40
        ark(
            i,
            q,
            HashInputs6(
                0x639c19624694245f9b586cab667bd33707645682fba4205ab0786ab749166218,
                0xdca421ac8742f83c596b6bde2bc9fdbcd07dc92fd2910bd1be174b242e8c1a19,
                0x672c639eab761024719a87915ef1388b33d5f944670c92f476d5fc2da0c67624,
                0xb79447a2105b05c17779efc13ac579f25f4d1f43cda5801761b75b08ea15301e,
                0xc696ed784bc19295bd5bb43f09024800c3db8d652e4d2705ca7cd1fb02f9280d,
                0x7e3cfd19e271fa9c07dc4193360f2883ccf90fd81eed233f8e8b934b7fce182c
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 41
        ark(
            i,
            q,
            HashInputs6(
                0x278333de0e374503f376775283adc3f6f71a5c74d288da3a899d01c431cd680d,
                0x63c8ca981a293f8dbeaa635121c66a75f36013f84426b2601cefacc41e0d651f,
                0x63ec4f2971c246cfa3f92884bd56c9f3e11954a813c572363be162a6f9e18f2a,
                0x186769e5fa7953c5992a40e79478819553c6470bb25776741746f2575789e323,
                0xdc54d030b999f9930a31ccb9f2c4a8732236b7a040c35727c29fff9ce616eb01,
                0xecb41f79314fdc2fd0595e0b4815ab38017d236fbaf8468081a124e0342f5509
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 42
        ark(
            i,
            q,
            HashInputs6(
                0x670ef69a12867e0f546ee406e26763e104054571fcb27c5c16a8a7b8c7b49b1e,
                0x491ab3c963b86124f836ed652d593da6866273b68ac0d3957f782638fd7aec24,
                0x1b211170baa42839bd245f410ee1e45d21265e0d717d477451e8640d27d1a113,
                0x487ab70cb99f770924d95c10d89469af8a4c31dd8d1ca3b1784b20c80953de1c,
                0x4e220fb1ab1c08fa6d32b2264490fef01c9c0db5e8f29c6771ca9d76a61ddf22,
                0x67e9a744f5ea6b8bf2c36045c0ec293d33ae96a0681235c7700d2148fdbc3129
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 43
        ark(
            i,
            q,
            HashInputs6(
                0x8e877d8ba93fc9c2d8d3dbf82f351a8d43e37ad9e8087a8337e4ee689becf920,
                0xd35cd9298f631f0656b1c2ac4670665af5f2be6fc72ad0d6c4f933d5c292b31c,
                0x9285c3990c97fd0bb111aeb2abb13f4aecf9f5c21940b0fbbcd74b7ec592fb14,
                0x31ce0bf955404023fce011ed3935454fd4596cb77c8fb2ee6274fc5fdc573001,
                0xbde3cdb7ce7a59ba07f2d665fb4ce3513089eb645149442a526de2b55975371e,
                0x816c28109d6fd56670473346878e8aeee14d5f05ed77a5d944739641047c1830
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 44
        ark(
            i,
            q,
            HashInputs6(
                0x7cd6e4b3bb7b41aeaa6d421b41fd0280cffb0ef678468189bef9cb0daa312b1a,
                0x5663e03aa08d5a8880d97792623d5661a7a10094e87fbfb669aa7e521980b30d,
                0x90a271e49d15eae4840fd655afab573dec7b47fdd40be2908b0926ce1ed80a0d,
                0xd573fb7c35946ba7d7a5eb37e9c5454c10fc0cc97b3c0450ebbeb4e9545ce104,
                0xdeb85228cc64095ffc25365f5b56d8865135779cd5b93400cc809648e6058729,
                0x1d08c12362f3f8eaab0ef652676215341c1cd181ddf07cab81068a66a15db01f
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 45
        ark(
            i,
            q,
            HashInputs6(
                0x18ca2bc6847adc9eeb93b449cfda39a52f9c812bc8915d5dfc408a6a1cf18705,
                0x5a0338f5330d201f745b3e15bff634aca55ab8b4fe5e2d7409a6840eb1ca8e16,
                0x039f826aa95afee337cd67f1c614b08efffca524737f284460345510aefabb12,
                0x8dcf7cabce35aed432dd70c639874924b09414e1992cc09dd3e8e19821406206,
                0x7ee7b01bd6d007b28941da0c040a91de533565bd36a719aef13d766c2126fd0e,
                0xded7bd0c6f3b6c453dd0316d362ebc1c31895198c863e7836c2fb145a7a52d13
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 46
        ark(
            i,
            q,
            HashInputs6(
                0xbf1acf08c9778a350b6245d7d58ef6d794b87ad35af1a5bffb74ca5ae4e0f60c,
                0x37f72df6a37cd5c2fc3f175d9236bd3b119a829dfae43efeccdec896deb0c32c,
                0x4db7eec478f8ff8677aca6e90f6dc27819b35ea6ba729f1863c9bac33c762822,
                0xd8d5469bff75dc979dde39526e8001a6274c0ee11187e69594ee64ae78745117,
                0x5b91483ecebee1c1453a4ba82856943f89e1134e063f8d5c6b60d635a8b55020,
                0xd73e45a32dfb3cd454c60dfdbc43705ad5a3d2c461d7f39c475a3ea03c717a27
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 47
        ark(
            i,
            q,
            HashInputs6(
                0x343d04186b18bc2ab0966cef063e0c82e92e1ce300d9466838df829cdba27629,
                0x811ab603969871bc49aa4ee6a98b627841a38c65394a695cb0b2c17515902529,
                0x32b1da8061a24a1cfea2a2a061c091ad6f0651af1123ab84b2b124061a11a423,
                0xacd328e4c7b3a9951b732ef10deabd422999a024adae993c05eacddb08f7de11,
                0xa9bf20c1603288c3dedb672be79387b8fc9239e7d7b312bf1ea1e38528938200,
                0xaa6cae517372279ab456685a32bb4ef5126f262cb5bc1662167e58109d334226
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 48
        ark(
            i,
            q,
            HashInputs6(
                0x8c899f3791ab4a46df511761d6eab54e39c9c7dc51ab7e352faa910854fe3e21,
                0xec7c1252e019129cb9f322c15946ff3c58e08030272f1a50295a3b44f0a6e406,
                0x5b46e1013685775932d523e2c289615711b728f9a324761726c63b8f424c1405,
                0x5f1961b10d9e1d8731211b78bb5681eab5c75979fa7ffb44cad6d56284100402,
                0xedb78c4a327f35dcb79d1b906ac9505089ed28a203ba186fdd0f4569b5a2b025,
                0xd39d619ee0e2b7f95901097689e32970fd15526ecf0dad6942f3cefd5291762c
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 49
        ark(
            i,
            q,
            HashInputs6(
                0x2992e880419f49a607606829177dc9835189792a978924c2375a8182dd9b4a08,
                0x9bac4bec25bcaf438d3e013ccc525f77c79af55bdd657a3d484398d4458b3816,
                0x5794eb1dcd83000966885f878853fc6a37bdcb55b0330baa6b3953a8094fdd20,
                0x29315958330f6b24c3b1cfc20e16fac84ad874c7c59a9766820dbb40b8f56821,
                0x03d58cba25ce4972023db503e28ea10409de3800a2680cdfdbeaf7fde7134e0b,
                0x00b552d75da1174a20cf9b9cca96c3f11365f98aa71e2b97df938e0dcadd9f0c
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 50
        ark(
            i,
            q,
            HashInputs6(
                0x9eb3239e437241f58831e3a67b2db3aea090bb60f1bb46df0453af924e502f26,
                0x1af3ad55381fccdc9db9038ce4d8ee2316fb00a5266caadda47209e24ead2229,
                0x0eec792d83524ccc0dfa33ea39746f917399ba5e214f03c03e50303cb5414522,
                0x05e2d851a3a4578fef6796bc0e5cca820e7a79d272fcdb95035bae21643cd711,
                0xec5c453dc02a16f76b2560a5cacba07cb231aeacaea8e464a603f65a45c77913,
                0x16fde62d1b6de38218f4e8766edffceffd8e637ab56972a69ebbd2cf7380bf18
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 51
        ark(
            i,
            q,
            HashInputs6(
                0x21eb2ae67fbfb682b35bfbd0c4ec05de3ff3de933f071a25a12445327899110e,
                0x72cd55575ea858673b90058c2c377cf9457e83172d9cb9963f9b0b36456d0804,
                0x95f5050979dfd0004e597785768fbabab40cc5341dba101e245e3c1a42ff2e1a,
                0xb0ccf70c0dd23e8bc3115e22acb7f504de49e3485368a730c6c55d0bb056221d,
                0xdb9f566ce5865128d9bb902777398c5aaaa0e0fa9684bacc779cd9d4e89a6711,
                0x1a6fe26eb1899703bee17ab4108dd3dada89fa196e4c88556774d8b1fc19a920
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 52
        ark(
            i,
            q,
            HashInputs6(
                0x5744f876f993bef4e00896f049b8a12166608b0692c08cd0908233f1182cd120,
                0xd1eba97a7ca78cafed455b29bda204952d181d27927a1cbbd61c536c3491a319,
                0xcb308372edc2e5f73d6ce1c6c5803976ce347921248b3f71a98ccbfa938f7e10,
                0x991c0a068c5f303c0cf5145407d8e7c0b1a51d48afda33448bf9670028b00025,
                0xc2c0f5406f7d2da1cfefb5f8e1a52e15f070f6bc05e7a7741d31836f098d4218,
                0xe2d728089b26d7c4f07a4c97d857f628dbcf15757787898d7f0c4cebb7e8e81d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 53
        ark(
            i,
            q,
            HashInputs6(
                0x9bef2f997d11dc823d18849b90b68fc6134e2a56421435d798a378a602439c03,
                0xcd991f39bbe8ea2f6c43fa8c4688c39ec4166c729236334e1e4ae3d3b0679d1f,
                0x48cbd208bb82ac24f0a56ca749f274152d8d040283efe086ef888ed6236a9518,
                0x8f5efc897755835a92eeaf84746c48b2f0cd1e03e583600b04b5b144c28d420c,
                0x2ffcc7efb1da5aebf27a36471e99a6f4c4ba95b440ae74bcbe939aaa2d975d29,
                0x3817098a8fbcfac9e8e09f8e9525a341eed4e529be93b2bd78c4819054422112
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 54
        ark(
            i,
            q,
            HashInputs6(
                0x1d6b80fa8f3bcdf3c643c08786fec45a2dd422d628e76d3a978cde50765d111e,
                0x3efd8fb46f2f3aca5450b2a9b32030da00550c6a52a8ec3d8167d5a03734421d,
                0xddbaff83f8b409e0b21e1e1776dd7a9c849426fb0aaa31efe61dd8753076391c,
                0x196e85cb606cfb6c5b544e7cf37ea853c91478b7c37db4a42ef96c1ef0d1bd18,
                0x5c211ae4887c6a2b7bc10e7fb5edb90f67a4ed41f9ade592607ccd6816cc232e,
                0x9d70323be0e23c54a30239e67c2fbf4331fdcc898691b04eb2a49fb8b738b909
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 55
        ark(
            i,
            q,
            HashInputs6(
                0x039a6e23773713aca141c0d3fe99012aeeea9def94fc5e4231c5c12ca4a12d1b,
                0x955f079f01ff9a82726b71e14892d41567547056372892433162b96c91e54f04,
                0x5e66c33ae625fa47956d38a987fc664fe8c49d1388054a973a6722a78e7e452a,
                0x451bbb5c39d801c2e72e54610e2a4f1a862040842b1c544946f9bf7e7fbc631a,
                0x2ad27679c27405b2655a2e026b219099fd5ec9950b81ab7f697babb298f6fa10,
                0xbdcbef08adeaef0b2610097aefdc34b77fe2c0fcf0e33be9983c83ca06838e2a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 56
        ark(
            i,
            q,
            HashInputs6(
                0x78399a4a080ac01acfbd76af616072a8e4d7d6b0ab4e4ee580cf9d97189b7a06,
                0x763746d3ee7552fba1eca217ca220e7430f2d3abff4b60cd6f07d29ecf951c15,
                0x61ddb6e526c83f3aed93388daacbeeb25de0cd8d82686b45ae41f2202968830c,
                0x8b6c849a1589dc443b521c95e561c2a528c20dc0cb7a1d4c37bbce8a41d4d614,
                0x44e758cc74af4af994b657619d6685b698375d5d880854b4c50c340b76c30a15,
                0x64ee22c9761d7ead2a54fd2b80db97812760a17e21d18f1240bc70ad35e62025
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 57
        ark(
            i,
            q,
            HashInputs6(
                0xa886cf18b41ae087bfb66bcec1758e9621f55f48d600b94ced265e4f2d5a0517,
                0xd81579c9f8ace9495b8d1670e6903c84fc220a370db2de1f03ab2eff50072517,
                0x0bd0b765685f7280d95150be2e5a5a5dd0dc1ca02de5fa3835b76fce4b9d2802,
                0x64113e71654099793466c30f08ffbb2673f67dd9dcd25a4afdccb56c87f28d13,
                0xf98f469250572c73c090d821f244fd394fc4516c93658cd28e0ac7fda1b38e26,
                0x76bbfc944fe31dcb372ce9c454a7fefe06cccea58dd1ea21867352f8c5e1ef27
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 58
        ark(
            i,
            q,
            HashInputs6(
                0x1071e2627b567c12d19b6d8e75f468e3da5ff9cc9a3be6647f925948fd4e0025,
                0x3bd36b8df27e5afb6ba1e240a8ac9864d7b78746794ec123f0c8b4545de1d204,
                0xe72fa96cfddede4f90e3df49e6a932dc365a7376da51432d77efb1b5f03b3d2c,
                0x870a962c3258f4c1e3ef75595e4bd497b19c1fd5198510279928a4c11311cf28,
                0xc6a6f5e35c9c8f86f597e3992be15d611139ba63fc276a01f7e501ecbd8a5f2c,
                0x11414b989ef8e09f083cf7c75fba8f45a665ad5296955189fa6cfb3ec41f260f
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 59
        ark(
            i,
            q,
            HashInputs6(
                0x6e941732ed759e0a477911ecf74d170be580b2ec71ce3dbb8d3f7080f8fdeb02,
                0x42a6a7943ebe8d60224953ce56778aa7afdc39bacc86899aee408785ea3a1914,
                0x7843de55e387c66bde49ee7f692b9d902581826fb4b211c3c441a54541c04f20,
                0x572a79be483b8722d0c8f39d923b2ce2091b2777de2cff2f73cdb942d06e0a06,
                0x73802c7abbbf5e55bf8b58e6506d675cceea8eb12b5522f7c56c4ec80dbab41e,
                0x6e627641731d9d1334305a8587d22e8c7c66067cb600c93a9516f0bf7f5af428
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 60
        ark(
            i,
            q,
            HashInputs6(
                0x660ce62f10be06280c6144d19d47a2cfacade1cd6668697499f03c9262939c0c,
                0x72114850c9ff82e76b6c0373758f35487165f24d6c778830a4de582a2b4bbe1a,
                0xce15d7229386aa19b70baa24ad485bfeaa40083f217be2ec3cbdbf023900471a,
                0xcf410a61bb111595b9bf96a7ca7602ffb08cb54365ab7408113a0ec04fff560a,
                0x80e73a5f39b8105ff9c0a7818638cbadbf8201e6def80df9b6cf746c708b4e27,
                0x0ad8ac5da763e582e6d773526c5425038da1b028debbb5826432df7a6252a924
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 61
        ark(
            i,
            q,
            HashInputs6(
                0x3360b893fae66955a336313c2c158632e488018f4e97152e7ba10f1354dd4613,
                0x865299f778a98b53f4af3debf129bdf880cdeba503ea12d6c72e4785b10e771e,
                0xf1be320b03e877190ee72d03ff1cc59d89dd4f0ecf0ba7e15aebeb80276e621a,
                0x818fcd3b279c3c684ad67532550327ae081dc2b0e482777507f660e6a9055720,
                0x3ac319da52dca8e01940021fdbe62ffd4ce15cb3dc2f0833ff3d857ee7011308,
                0xaae11f85aafa3c7860022232c85d239379461b6700b57c63ed24f61db017ef11
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 62
        ark(
            i,
            q,
            HashInputs6(
                0x6b9bebde692cfa70d85560b394aa979c7513d8aaf4fc64aa3ca4eb7360290326,
                0x92b0f68f3bf4b6a18c4776971c34e8b7b65d5e06e2743764cb5ac4bd5e71530a,
                0xa0ead22a16b9401229874dc27ade58b39e001daa546f3b8178e33d3f4790d307,
                0x86c8b825598bd0d8886fbc5674ddcc41d0ce58a9aba4b9d96df7b29ebe18112e,
                0x47c4ecc594816badf93294d1b31046371fc2fe6caee9793acdf253b0e9b8e525,
                0xa16e4a0345cce48b252adae6a68f26343edd7651d944ed4b5f868112efa21f0c
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 63
        ark(
            i,
            q,
            HashInputs6(
                0x316c4b11dddbc010174ee82961e3294ec03e42878cd3df622c10bced6363ee1f,
                0x30fd7eadb3097cd33fd6a1ae9305a46e0950c5865db93edcae9ef93f6b1f0826,
                0x7020ac6c6d044e436c83697777b4949b125eaba411d8543fe307f73593fca80f,
                0x43e962284a0e66960e308a926cdafe47f0674062d6347e0b7dd7151673f45410,
                0x07f6d4c311ce4df7e65839e7fd88b5f0b6cb8d823e9b406c08f7afaae9490314,
                0xd164d095834ade959f9464ff82e92a5be40afd246b73d29bdb85955234ec6e16
            )
        );
        sbox_full(i, q);
        mix(i, q);

        return i.t1;
    }
}
