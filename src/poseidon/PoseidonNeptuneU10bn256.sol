pragma solidity ^0.8.0;

// This contract is for debugging/testing purposes
library PoseidonU10bn256 {
    struct HashInputs11 {
        uint t0;
        uint t1;
        uint t2;
        uint t3;
        uint t4;
        uint t5;
        uint t6;
        uint t7;
        uint t8;
        uint t9;
        uint t10;
    }

    function mix(HashInputs11 memory i, uint q) internal pure {
        HashInputs11 memory o;

        o.t0 = 0;
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t0,
                0x2fbae8e292706901ef282ccfeb252a3d96f1d1172b5fd78883512969b5d69811,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t1,
                0x0100009cc7cb397eda513f1aed942fbaaa3b61a13c95493e262818f993f25b2c,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t2,
                0x010000409ca70b66720535fa7d11a6c2a48ced9e1e8fac47756c06461b5cab2c,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t3,
                0xb76ddbfe6548d984531a442d056c71a706f4f67668e04ed6b91da83408e17403,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t4,
                0xcdccccec46a9a6a25764c398f81e3ae383c7996629e73dc338f35b7331c67306,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t5,
                0x010000b13ad6a32f88d91df2c3a9b055d74269195b41cb1c27861eb38b095e2d,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t6,
                0x9796963634de6d907eebb9ee73ca8a68a8971e976debb2e63bed7a4fec571411,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t7,
                0x010000b80b2fc76a175cbde4605b86893b45c196ba7af6662750cb9b3311b42d,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t8,
                0x3694d7a058356a54a98c75ebcde3b1d91f1280a8ee7c7d757bed60fe20048c02,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t9,
                0x9a99992d5a7cf50a66e700914c917834baab53adcc7e8200755ed1ce41e8ef10,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t10,
                0x254992a4ca2cdc19688cc046c6ea5cd2781525252d02fa7634492b6ed65a6f12,
                q
            ),
            q
        );

        o.t1 = 0;
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t0,
                0x0100009cc7cb397eda513f1aed942fbaaa3b61a13c95493e262818f993f25b2c,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t1,
                0x010000409ca70b66720535fa7d11a6c2a48ced9e1e8fac47756c06461b5cab2c,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t2,
                0xb76ddbfe6548d984531a442d056c71a706f4f67668e04ed6b91da83408e17403,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t3,
                0xcdccccec46a9a6a25764c398f81e3ae383c7996629e73dc338f35b7331c67306,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t4,
                0x010000b13ad6a32f88d91df2c3a9b055d74269195b41cb1c27861eb38b095e2d,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t5,
                0x9796963634de6d907eebb9ee73ca8a68a8971e976debb2e63bed7a4fec571411,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t6,
                0x010000b80b2fc76a175cbde4605b86893b45c196ba7af6662750cb9b3311b42d,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t7,
                0x3694d7a058356a54a98c75ebcde3b1d91f1280a8ee7c7d757bed60fe20048c02,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t8,
                0x9a99992d5a7cf50a66e700914c917834baab53adcc7e8200755ed1ce41e8ef10,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t9,
                0x254992a4ca2cdc19688cc046c6ea5cd2781525252d02fa7634492b6ed65a6f12,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t10,
                0x185d746913b3a522c0cc72241a07afb2f9a4a9cc70d293a0d6782d259492fe20,
                q
            ),
            q
        );

        o.t2 = 0;
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t0,
                0x010000409ca70b66720535fa7d11a6c2a48ced9e1e8fac47756c06461b5cab2c,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t1,
                0xb76ddbfe6548d984531a442d056c71a706f4f67668e04ed6b91da83408e17403,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t2,
                0xcdccccec46a9a6a25764c398f81e3ae383c7996629e73dc338f35b7331c67306,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t3,
                0x010000b13ad6a32f88d91df2c3a9b055d74269195b41cb1c27861eb38b095e2d,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t4,
                0x9796963634de6d907eebb9ee73ca8a68a8971e976debb2e63bed7a4fec571411,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t5,
                0x010000b80b2fc76a175cbde4605b86893b45c196ba7af6662750cb9b3311b42d,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t6,
                0x3694d7a058356a54a98c75ebcde3b1d91f1280a8ee7c7d757bed60fe20048c02,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t7,
                0x9a99992d5a7cf50a66e700914c917834baab53adcc7e8200755ed1ce41e8ef10,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t8,
                0x254992a4ca2cdc19688cc046c6ea5cd2781525252d02fa7634492b6ed65a6f12,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t9,
                0x185d746913b3a522c0cc72241a07afb2f9a4a9cc70d293a0d6782d259492fe20,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t10,
                0x862c6431a9e52bf943e910aa8b922a8ad6381154958a2aa17fda8dd22199ef12,
                q
            ),
            q
        );

        o.t3 = 0;
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t0,
                0xb76ddbfe6548d984531a442d056c71a706f4f67668e04ed6b91da83408e17403,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t1,
                0xcdccccec46a9a6a25764c398f81e3ae383c7996629e73dc338f35b7331c67306,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t2,
                0x010000b13ad6a32f88d91df2c3a9b055d74269195b41cb1c27861eb38b095e2d,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t3,
                0x9796963634de6d907eebb9ee73ca8a68a8971e976debb2e63bed7a4fec571411,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t4,
                0x010000b80b2fc76a175cbde4605b86893b45c196ba7af6662750cb9b3311b42d,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t5,
                0x3694d7a058356a54a98c75ebcde3b1d91f1280a8ee7c7d757bed60fe20048c02,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t6,
                0x9a99992d5a7cf50a66e700914c917834baab53adcc7e8200755ed1ce41e8ef10,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t7,
                0x254992a4ca2cdc19688cc046c6ea5cd2781525252d02fa7634492b6ed65a6f12,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t8,
                0x185d746913b3a522c0cc72241a07afb2f9a4a9cc70d293a0d6782d259492fe20,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t9,
                0x862c6431a9e52bf943e910aa8b922a8ad6381154958a2aa17fda8dd22199ef12,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t10,
                0x010000c6ade00de13561fcc99abe31f1034a719179ed4cfb27e4246d8320602e,
                q
            ),
            q
        );

        o.t4 = 0;
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t0,
                0xcdccccec46a9a6a25764c398f81e3ae383c7996629e73dc338f35b7331c67306,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t1,
                0x010000b13ad6a32f88d91df2c3a9b055d74269195b41cb1c27861eb38b095e2d,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t2,
                0x9796963634de6d907eebb9ee73ca8a68a8971e976debb2e63bed7a4fec571411,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t3,
                0x010000b80b2fc76a175cbde4605b86893b45c196ba7af6662750cb9b3311b42d,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t4,
                0x3694d7a058356a54a98c75ebcde3b1d91f1280a8ee7c7d757bed60fe20048c02,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t5,
                0x9a99992d5a7cf50a66e700914c917834baab53adcc7e8200755ed1ce41e8ef10,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t6,
                0x254992a4ca2cdc19688cc046c6ea5cd2781525252d02fa7634492b6ed65a6f12,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t7,
                0x185d746913b3a522c0cc72241a07afb2f9a4a9cc70d293a0d6782d259492fe20,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t8,
                0x862c6431a9e52bf943e910aa8b922a8ad6381154958a2aa17fda8dd22199ef12,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t9,
                0x010000c6ade00de13561fcc99abe31f1034a719179ed4cfb27e4246d8320602e,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t10,
                0xaf47e11ad4f64bfedb2fa35602664c7566bec33e115c65d5a9ab2bc6acb5952a,
                q
            ),
            q
        );

        o.t5 = 0;
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t0,
                0x010000b13ad6a32f88d91df2c3a9b055d74269195b41cb1c27861eb38b095e2d,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t1,
                0x9796963634de6d907eebb9ee73ca8a68a8971e976debb2e63bed7a4fec571411,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t2,
                0x010000b80b2fc76a175cbde4605b86893b45c196ba7af6662750cb9b3311b42d,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t3,
                0x3694d7a058356a54a98c75ebcde3b1d91f1280a8ee7c7d757bed60fe20048c02,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t4,
                0x9a99992d5a7cf50a66e700914c917834baab53adcc7e8200755ed1ce41e8ef10,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t5,
                0x254992a4ca2cdc19688cc046c6ea5cd2781525252d02fa7634492b6ed65a6f12,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t6,
                0x185d746913b3a522c0cc72241a07afb2f9a4a9cc70d293a0d6782d259492fe20,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t7,
                0x862c6431a9e52bf943e910aa8b922a8ad6381154958a2aa17fda8dd22199ef12,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t8,
                0x010000c6ade00de13561fcc99abe31f1034a719179ed4cfb27e4246d8320602e,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t9,
                0xaf47e11ad4f64bfedb2fa35602664c7566bec33e115c65d5a9ab2bc6acb5952a,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t10,
                0x0100001898cef6d4013bf739e3fc6cf5807237906a6afe7f4f069c1347d5872e,
                q
            ),
            q
        );

        o.t6 = 0;
        o.t6 = addmod(
            o.t6,
            mulmod(
                i.t0,
                0x9796963634de6d907eebb9ee73ca8a68a8971e976debb2e63bed7a4fec571411,
                q
            ),
            q
        );
        o.t6 = addmod(
            o.t6,
            mulmod(
                i.t1,
                0x010000b80b2fc76a175cbde4605b86893b45c196ba7af6662750cb9b3311b42d,
                q
            ),
            q
        );
        o.t6 = addmod(
            o.t6,
            mulmod(
                i.t2,
                0x3694d7a058356a54a98c75ebcde3b1d91f1280a8ee7c7d757bed60fe20048c02,
                q
            ),
            q
        );
        o.t6 = addmod(
            o.t6,
            mulmod(
                i.t3,
                0x9a99992d5a7cf50a66e700914c917834baab53adcc7e8200755ed1ce41e8ef10,
                q
            ),
            q
        );
        o.t6 = addmod(
            o.t6,
            mulmod(
                i.t4,
                0x254992a4ca2cdc19688cc046c6ea5cd2781525252d02fa7634492b6ed65a6f12,
                q
            ),
            q
        );
        o.t6 = addmod(
            o.t6,
            mulmod(
                i.t5,
                0x185d746913b3a522c0cc72241a07afb2f9a4a9cc70d293a0d6782d259492fe20,
                q
            ),
            q
        );
        o.t6 = addmod(
            o.t6,
            mulmod(
                i.t6,
                0x862c6431a9e52bf943e910aa8b922a8ad6381154958a2aa17fda8dd22199ef12,
                q
            ),
            q
        );
        o.t6 = addmod(
            o.t6,
            mulmod(
                i.t7,
                0x010000c6ade00de13561fcc99abe31f1034a719179ed4cfb27e4246d8320602e,
                q
            ),
            q
        );
        o.t6 = addmod(
            o.t6,
            mulmod(
                i.t8,
                0xaf47e11ad4f64bfedb2fa35602664c7566bec33e115c65d5a9ab2bc6acb5952a,
                q
            ),
            q
        );
        o.t6 = addmod(
            o.t6,
            mulmod(
                i.t9,
                0x0100001898cef6d4013bf739e3fc6cf5807237906a6afe7f4f069c1347d5872e,
                q
            ),
            q
        );
        o.t6 = addmod(
            o.t6,
            mulmod(
                i.t10,
                0x565555255d1fdaf1643d7e98409259067d832b0f27a7f9996f3532bd770b781e,
                q
            ),
            q
        );

        o.t7 = 0;
        o.t7 = addmod(
            o.t7,
            mulmod(
                i.t0,
                0x010000b80b2fc76a175cbde4605b86893b45c196ba7af6662750cb9b3311b42d,
                q
            ),
            q
        );
        o.t7 = addmod(
            o.t7,
            mulmod(
                i.t1,
                0x3694d7a058356a54a98c75ebcde3b1d91f1280a8ee7c7d757bed60fe20048c02,
                q
            ),
            q
        );
        o.t7 = addmod(
            o.t7,
            mulmod(
                i.t2,
                0x9a99992d5a7cf50a66e700914c917834baab53adcc7e8200755ed1ce41e8ef10,
                q
            ),
            q
        );
        o.t7 = addmod(
            o.t7,
            mulmod(
                i.t3,
                0x254992a4ca2cdc19688cc046c6ea5cd2781525252d02fa7634492b6ed65a6f12,
                q
            ),
            q
        );
        o.t7 = addmod(
            o.t7,
            mulmod(
                i.t4,
                0x185d746913b3a522c0cc72241a07afb2f9a4a9cc70d293a0d6782d259492fe20,
                q
            ),
            q
        );
        o.t7 = addmod(
            o.t7,
            mulmod(
                i.t5,
                0x862c6431a9e52bf943e910aa8b922a8ad6381154958a2aa17fda8dd22199ef12,
                q
            ),
            q
        );
        o.t7 = addmod(
            o.t7,
            mulmod(
                i.t6,
                0x010000c6ade00de13561fcc99abe31f1034a719179ed4cfb27e4246d8320602e,
                q
            ),
            q
        );
        o.t7 = addmod(
            o.t7,
            mulmod(
                i.t7,
                0xaf47e11ad4f64bfedb2fa35602664c7566bec33e115c65d5a9ab2bc6acb5952a,
                q
            ),
            q
        );
        o.t7 = addmod(
            o.t7,
            mulmod(
                i.t8,
                0x0100001898cef6d4013bf739e3fc6cf5807237906a6afe7f4f069c1347d5872e,
                q
            ),
            q
        );
        o.t7 = addmod(
            o.t7,
            mulmod(
                i.t9,
                0x565555255d1fdaf1643d7e98409259067d832b0f27a7f9996f3532bd770b781e,
                q
            ),
            q
        );
        o.t7 = addmod(
            o.t7,
            mulmod(
                i.t10,
                0xdcb66df7fc9e5d6472c57ed326aad2e731263c7c0f934fc7f1deec8abd97ec19,
                q
            ),
            q
        );

        o.t8 = 0;
        o.t8 = addmod(
            o.t8,
            mulmod(
                i.t0,
                0x3694d7a058356a54a98c75ebcde3b1d91f1280a8ee7c7d757bed60fe20048c02,
                q
            ),
            q
        );
        o.t8 = addmod(
            o.t8,
            mulmod(
                i.t1,
                0x9a99992d5a7cf50a66e700914c917834baab53adcc7e8200755ed1ce41e8ef10,
                q
            ),
            q
        );
        o.t8 = addmod(
            o.t8,
            mulmod(
                i.t2,
                0x254992a4ca2cdc19688cc046c6ea5cd2781525252d02fa7634492b6ed65a6f12,
                q
            ),
            q
        );
        o.t8 = addmod(
            o.t8,
            mulmod(
                i.t3,
                0x185d746913b3a522c0cc72241a07afb2f9a4a9cc70d293a0d6782d259492fe20,
                q
            ),
            q
        );
        o.t8 = addmod(
            o.t8,
            mulmod(
                i.t4,
                0x862c6431a9e52bf943e910aa8b922a8ad6381154958a2aa17fda8dd22199ef12,
                q
            ),
            q
        );
        o.t8 = addmod(
            o.t8,
            mulmod(
                i.t5,
                0x010000c6ade00de13561fcc99abe31f1034a719179ed4cfb27e4246d8320602e,
                q
            ),
            q
        );
        o.t8 = addmod(
            o.t8,
            mulmod(
                i.t6,
                0xaf47e11ad4f64bfedb2fa35602664c7566bec33e115c65d5a9ab2bc6acb5952a,
                q
            ),
            q
        );
        o.t8 = addmod(
            o.t8,
            mulmod(
                i.t7,
                0x0100001898cef6d4013bf739e3fc6cf5807237906a6afe7f4f069c1347d5872e,
                q
            ),
            q
        );
        o.t8 = addmod(
            o.t8,
            mulmod(
                i.t8,
                0x565555255d1fdaf1643d7e98409259067d832b0f27a7f9996f3532bd770b781e,
                q
            ),
            q
        );
        o.t8 = addmod(
            o.t8,
            mulmod(
                i.t9,
                0xdcb66df7fc9e5d6472c57ed326aad2e731263c7c0f934fc7f1deec8abd97ec19,
                q
            ),
            q
        );
        o.t8 = addmod(
            o.t8,
            mulmod(
                i.t10,
                0x0100004013220f272b87cdcd4eabe2bc97adba59dcf39cc342e1640e9b1fb92e,
                q
            ),
            q
        );

        o.t9 = 0;
        o.t9 = addmod(
            o.t9,
            mulmod(
                i.t0,
                0x9a99992d5a7cf50a66e700914c917834baab53adcc7e8200755ed1ce41e8ef10,
                q
            ),
            q
        );
        o.t9 = addmod(
            o.t9,
            mulmod(
                i.t1,
                0x254992a4ca2cdc19688cc046c6ea5cd2781525252d02fa7634492b6ed65a6f12,
                q
            ),
            q
        );
        o.t9 = addmod(
            o.t9,
            mulmod(
                i.t2,
                0x185d746913b3a522c0cc72241a07afb2f9a4a9cc70d293a0d6782d259492fe20,
                q
            ),
            q
        );
        o.t9 = addmod(
            o.t9,
            mulmod(
                i.t3,
                0x862c6431a9e52bf943e910aa8b922a8ad6381154958a2aa17fda8dd22199ef12,
                q
            ),
            q
        );
        o.t9 = addmod(
            o.t9,
            mulmod(
                i.t4,
                0x010000c6ade00de13561fcc99abe31f1034a719179ed4cfb27e4246d8320602e,
                q
            ),
            q
        );
        o.t9 = addmod(
            o.t9,
            mulmod(
                i.t5,
                0xaf47e11ad4f64bfedb2fa35602664c7566bec33e115c65d5a9ab2bc6acb5952a,
                q
            ),
            q
        );
        o.t9 = addmod(
            o.t9,
            mulmod(
                i.t6,
                0x0100001898cef6d4013bf739e3fc6cf5807237906a6afe7f4f069c1347d5872e,
                q
            ),
            q
        );
        o.t9 = addmod(
            o.t9,
            mulmod(
                i.t7,
                0x565555255d1fdaf1643d7e98409259067d832b0f27a7f9996f3532bd770b781e,
                q
            ),
            q
        );
        o.t9 = addmod(
            o.t9,
            mulmod(
                i.t8,
                0xdcb66df7fc9e5d6472c57ed326aad2e731263c7c0f934fc7f1deec8abd97ec19,
                q
            ),
            q
        );
        o.t9 = addmod(
            o.t9,
            mulmod(
                i.t9,
                0x0100004013220f272b87cdcd4eabe2bc97adba59dcf39cc342e1640e9b1fb92e,
                q
            ),
            q
        );
        o.t9 = addmod(
            o.t9,
            mulmod(
                i.t10,
                0x6766666e6d4f4473746a3e89a003b785f08f0df46f16c73db1c9462a520a6c1b,
                q
            ),
            q
        );

        o.t10 = 0;
        o.t10 = addmod(
            o.t10,
            mulmod(
                i.t0,
                0x254992a4ca2cdc19688cc046c6ea5cd2781525252d02fa7634492b6ed65a6f12,
                q
            ),
            q
        );
        o.t10 = addmod(
            o.t10,
            mulmod(
                i.t1,
                0x185d746913b3a522c0cc72241a07afb2f9a4a9cc70d293a0d6782d259492fe20,
                q
            ),
            q
        );
        o.t10 = addmod(
            o.t10,
            mulmod(
                i.t2,
                0x862c6431a9e52bf943e910aa8b922a8ad6381154958a2aa17fda8dd22199ef12,
                q
            ),
            q
        );
        o.t10 = addmod(
            o.t10,
            mulmod(
                i.t3,
                0x010000c6ade00de13561fcc99abe31f1034a719179ed4cfb27e4246d8320602e,
                q
            ),
            q
        );
        o.t10 = addmod(
            o.t10,
            mulmod(
                i.t4,
                0xaf47e11ad4f64bfedb2fa35602664c7566bec33e115c65d5a9ab2bc6acb5952a,
                q
            ),
            q
        );
        o.t10 = addmod(
            o.t10,
            mulmod(
                i.t5,
                0x0100001898cef6d4013bf739e3fc6cf5807237906a6afe7f4f069c1347d5872e,
                q
            ),
            q
        );
        o.t10 = addmod(
            o.t10,
            mulmod(
                i.t6,
                0x565555255d1fdaf1643d7e98409259067d832b0f27a7f9996f3532bd770b781e,
                q
            ),
            q
        );
        o.t10 = addmod(
            o.t10,
            mulmod(
                i.t7,
                0xdcb66df7fc9e5d6472c57ed326aad2e731263c7c0f934fc7f1deec8abd97ec19,
                q
            ),
            q
        );
        o.t10 = addmod(
            o.t10,
            mulmod(
                i.t8,
                0x0100004013220f272b87cdcd4eabe2bc97adba59dcf39cc342e1640e9b1fb92e,
                q
            ),
            q
        );
        o.t10 = addmod(
            o.t10,
            mulmod(
                i.t9,
                0x6766666e6d4f4473746a3e89a003b785f08f0df46f16c73db1c9462a520a6c1b,
                q
            ),
            q
        );
        o.t10 = addmod(
            o.t10,
            mulmod(
                i.t10,
                0x5b6badf58e9bebadd0374141a6d38a70b955a5ce1f8dd03860eb163ebc7d3e06,
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
        i.t6 = o.t6;
        i.t7 = o.t7;
        i.t8 = o.t8;
        i.t9 = o.t9;
        i.t10 = o.t10;
    }

    function ark(
        HashInputs11 memory i,
        uint q,
        HashInputs11 memory c
    ) internal pure {
        HashInputs11 memory o;

        o.t0 = addmod(i.t0, c.t0, q);
        o.t1 = addmod(i.t1, c.t1, q);
        o.t2 = addmod(i.t2, c.t2, q);
        o.t3 = addmod(i.t3, c.t3, q);
        o.t4 = addmod(i.t4, c.t4, q);
        o.t5 = addmod(i.t5, c.t5, q);
        o.t6 = addmod(i.t6, c.t6, q);
        o.t7 = addmod(i.t7, c.t7, q);
        o.t8 = addmod(i.t8, c.t8, q);
        o.t9 = addmod(i.t9, c.t9, q);
        o.t10 = addmod(i.t10, c.t10, q);

        i.t0 = o.t0;
        i.t1 = o.t1;
        i.t2 = o.t2;
        i.t3 = o.t3;
        i.t4 = o.t4;
        i.t5 = o.t5;
        i.t6 = o.t6;
        i.t7 = o.t7;
        i.t8 = o.t8;
        i.t9 = o.t9;
        i.t10 = o.t10;
    }

    function sbox_full(HashInputs11 memory i, uint q) internal pure {
        HashInputs11 memory o;

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
        o.t6 = mulmod(i.t6, i.t6, q);
        o.t6 = mulmod(o.t6, o.t6, q);
        o.t6 = mulmod(i.t6, o.t6, q);
        o.t7 = mulmod(i.t7, i.t7, q);
        o.t7 = mulmod(o.t7, o.t7, q);
        o.t7 = mulmod(i.t7, o.t7, q);
        o.t8 = mulmod(i.t8, i.t8, q);
        o.t8 = mulmod(o.t8, o.t8, q);
        o.t8 = mulmod(i.t8, o.t8, q);
        o.t9 = mulmod(i.t9, i.t9, q);
        o.t9 = mulmod(o.t9, o.t9, q);
        o.t9 = mulmod(i.t9, o.t9, q);
        o.t10 = mulmod(i.t10, i.t10, q);
        o.t10 = mulmod(o.t10, o.t10, q);
        o.t10 = mulmod(i.t10, o.t10, q);

        i.t0 = o.t0;
        i.t1 = o.t1;
        i.t2 = o.t2;
        i.t3 = o.t3;
        i.t4 = o.t4;
        i.t5 = o.t5;
        i.t6 = o.t6;
        i.t7 = o.t7;
        i.t8 = o.t8;
        i.t9 = o.t9;
        i.t10 = o.t10;
    }

    function sbox_partial(HashInputs11 memory i, uint q) internal pure {
        HashInputs11 memory o;

        o.t0 = mulmod(i.t0, i.t0, q);
        o.t0 = mulmod(o.t0, o.t0, q);
        o.t0 = mulmod(i.t0, o.t0, q);

        i.t0 = o.t0;
    }

    function hash(HashInputs11 memory i, uint q) internal pure returns (uint) {
        // validate inputs
        require(i.t0 < q, "INVALID_INPUT");
        require(i.t1 < q, "INVALID_INPUT");
        require(i.t2 < q, "INVALID_INPUT");
        require(i.t3 < q, "INVALID_INPUT");
        require(i.t4 < q, "INVALID_INPUT");
        require(i.t5 < q, "INVALID_INPUT");
        require(i.t6 < q, "INVALID_INPUT");
        require(i.t7 < q, "INVALID_INPUT");
        require(i.t8 < q, "INVALID_INPUT");
        require(i.t9 < q, "INVALID_INPUT");
        require(i.t10 < q, "INVALID_INPUT");

        // round 0
        ark(
            i,
            q,
            HashInputs11(
                0x8c044dc47433d62ab3acfab2a52f0563a92d3c61aeef5e0283f48240a606c323,
                0xc12dd144855c2c96a4b4e1e31d09d0e6a3f5ed429b90445b3a486fab30c96007,
                0x8b0ab9952904c334791cf700c1965d612d67ba1e760f9edc35655af6c8a08a03,
                0x5fece3ef027245ee10807a2259b1e9435cffc8de87adc9c9fd43c12c5d5c3e24,
                0x2d103224f71c1094c85af02db8336161c7f8f2f276a25d36f747de429e3edb16,
                0x3ce662f5530375c2bb5260eb50ce2bdde37074634817c805afc8f3adbb1d7413,
                0xcd0b4b812808b7b3fbc3e61c5c161fab798595e2d1b2bc06becb84dd2f0b3e26,
                0x3146d463f1dd7c274f9acefabe26fa6dda0b1bb2916ad172fcad71b1ee084d2c,
                0x67a16be003528561ab52268107b7ddea50c4a1db78e452bfc9a6fa019939e019,
                0x264cfe5616e9cd6a02239856692cfc42f8ae26385d16867f1ffbb91aef089c20,
                0x805a3f8deef805ff2ce8678e34a1e26cb6a1ffb4d66efa804f2b209d8fd1c012
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 1
        ark(
            i,
            q,
            HashInputs11(
                0xd0823cfa2b983e6dd49d901d1194646ac0eec34a90cf9376660b96a23f00882c,
                0x879c63ac1fa56ce368f54b85c3eb90af02f637f6647af7147080ffdfef299c09,
                0xfb1dac69f9bc37ffd5ab9dc03d82aea90a0352f76abc6671038f99f67c64b224,
                0x53cd35e1648d5311e893eccd9dbe520c470ab6e667e6ae06071e683d3343dc0b,
                0x2152f504fb3dee0fe138665a981464e7f5e59fa2ce11ac92c477c18686a9582f,
                0xf3baaac355f4bacda22ac729a6d4320608f9c1ba039182195ef773318fd2d806,
                0x233a010cea0809a2f25b7efdc56161b9cec46343824da794464e2d77a0bb5116,
                0x216e8ae4d2ff29131bcfec8567306352e4b07cd36e68e995f25f4bb81f7d0a1f,
                0x71b080db83aeff747c8f7a12e7c35641dfb98dfba277409702f40be4feca672f,
                0x9197d9a624b30a4f3a43cf4e32f09c18e065ac0443dfd2758a3a5c0f07bbf312,
                0xcff64202d883542287e0423cfd141a46b5b3531dd0f6b3793e9e7bc7e512cf15
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 2
        ark(
            i,
            q,
            HashInputs11(
                0x3ab4e3aea4acec5cf1a4eb8b75202abb5691c589c2330c00223fcfaf1ca00210,
                0x2f450c4daafb5a40eec93f18ee1420857101893217812312b598a1f62861af24,
                0x036deb74bd739095de6a3e6b501a3b5e30eb202529b7e0c54230c3bbe452611d,
                0x803ea11eb327eaab07af674af843964b3b39e2ed03e81c3a97d98c7293da6b2f,
                0xca1316f809f82784e95266a373c73e129bccf20e922bdee4cb75b596d3a2d30b,
                0x443445c0bbe8005a0df9bab10e255da2bf86e44c894baf38d5bd0e15c4d5a003,
                0x56687a5bb6b3f6f387557efc186b67be755285d20f0535cabf2486362d86700b,
                0x8c31fce388521cf2dba677abe613ceb25ff900267052ce1703aa17e2863fdb08,
                0xc32636a904b838cced1170505aa543c4ad009fe998b9d24675006e960505a310,
                0x0d43d3c90d1c4e72fe149cb302c2d7fbaf07796b033ae8515082d6ce2bbb2606,
                0xe0044d01e2cd1cf13995ca21b73881071947584cd1f8adf4591ee8232d820315
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 3
        ark(
            i,
            q,
            HashInputs11(
                0x5ebe8f8abdad355fa0c42ed70785150b01018e7046a6e5e3ce123869db6ae824,
                0x7eb2f223a12a5f3550aeddf1e7444fa1daeaa156ff61a7b95619c783b3267404,
                0xd57fe014b29715743bf36e5259917c150c3f2cad3681b3b596a419f76b141a00,
                0x1829ec2856928f3cba622f6e789843d4c7c678171a88064a8f93c368a0035b0f,
                0x09b38e4ec882714895fbc982cc96510f9fdab35c7af5977248fecc97f80eff13,
                0x69b54dd4fe46680347b47960df630b420a2f9e6f8b3f4abf1187782e061edf14,
                0x3f17975163e1f893d6bc4b835dd77a4c8c3e07c35ee1f0a6568b25160cf6532c,
                0xf7f09840cd2a255d43404f1747885bb63cabc2276469474859ee37ebf0dc5a17,
                0x34735b11a301a3902a8e939a79e90d720203feb8f61b093ec4fd509464c4e829,
                0x9442e57483ab25e77137bd9b803b67bcfb3866383a62ddd28eb19c3681fe6912,
                0x63f7f85d0a2095bdb5756fc6238a34d7a83449c6ff2c2fe6c82a50bb3174a428
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 4
        ark(
            i,
            q,
            HashInputs11(
                0x79f908a7e340574b190d2723a6384f8a7232e69d3c3571f36f36e3c577434a02,
                0x4e614a8734db13ebfe9b7df92a60727f82d76b1359c35bd4bce89f7beb177a13,
                0xfd8a9ad65fdb9d51a7b3f9b831341023c1c808bc8e5a549e05dda9a109c3f911,
                0x9cf1d35f2183099921d3f6f120226f3346306b8473f4da128ce6f50dc8c93a06,
                0x989318966dfca80f95c0f3ae650aa1c13ed47dec3205e705ea34b6a1fe2e5e1f,
                0x3f97f8b1f4e4a1e33c574c4287aecfdcb2ec6ac72f512add6b68b42c8a4db413,
                0x8594b161bb2c89f61e4b2bb23df2d3ae48692a74bb5db7860820859eea4f5f15,
                0xd2d1129bfcfa768126309f48c85338d946126631186eb3c0bbd1c38284714829,
                0x58148a7021aea33ac42822b16344b39110489f9ae30162a35ce94e9684d04930,
                0x722c9ccad3b0881bab7c70f68f6a0ea36638c3b3bfac9db14ac1a106adac1912,
                0x2bc6f1313be719e2b1dff8909befd369685994d4b7198611cb9e930fda457a09
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 5
        ark(
            i,
            q,
            HashInputs11(
                0xf53e6b5bf8695317defd900aca8191e299b0129a616bf18e375ec9c9080b9119,
                0xc460f69537118bcb9b352f49a1b156dbabf61ae465b99978d097f66f99588e2b,
                0x0533fcc705aa87dca4cc31198cae30b325ad937de48df195f0ac18297d2b1612,
                0x7b6bda298ced35957bc8221f0b2d037f798b170cd0527523e106e30cf5d4732f,
                0xca5e918091ddd2a92786ca74a9bf876d12d480c985bb5edd97735f4754a3300c,
                0x6a05280909c8ac0229c13dbfe2267c737390cb14adcb00cc31a52f00f47f752d,
                0x8ef9d42654fbe6b83ea552dabe9ece5ccbbae9cd6f4fdbc07b272a73c5399524,
                0x6b86f534cbe585c693e4bed998882b216998ddc0175fdf0b4fa4a8b4866e7b2e,
                0xd75a917c6fb7fe0d47fb6e11500c178b7409214e2e12ebe5ba54eba162531c26,
                0x4ef294cb7785f44876c33b9ba28949e08d22a7cc6a6bedb46858c6fd1bf23a03,
                0x0d20abe26a7257212c0d3dd5ff506d8beec503d0f40c78e2b4cfae70a9380f18
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 6
        ark(
            i,
            q,
            HashInputs11(
                0x4652bf1e63671217d144b8b6c273816f8023b4b209347921322fa8bb9f524a2b,
                0xfea123531593f8b8afaea9cceeb0c505a03d194feda41716c6ec0afdbb2bc02b,
                0x03cbff7355760be27acb9a8f428ee6537066318451c95ba66d59498addab5c2c,
                0x09db776a93a2814dc3d9a458feda4f3fd012b59d9a74174a3b9a95feed83ed1e,
                0x480931f39e355076cbeb9e51bade3992038bf337aeb1a5cf995e74b9ddc08308,
                0x2671f97aced8461bf11e4cb64fe31eb836c335beadc485cf1f9f939632f5ef1e,
                0x47cb18d6c2bb7cd3ecd6e24a22c3ed74169cc35a47d724562afdb832ddcbb90c,
                0x0da5061760cf4cac6a007849494b7979c989e29ee9fda332be238385df131108,
                0x83ef62dc8cb8135a97c3c5c47844d720fb36fbca9baf563da433be5cc61c8e12,
                0x9953f5619e4b3041628e611fb96c03a2373c5a85e432ff798dc064d18cfac92d,
                0x703b1f7484d7f16c81a483262e29d621a092058fd13dca496a742cf4a89b2709
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 7
        ark(
            i,
            q,
            HashInputs11(
                0x6bc4eb2c057c4e2fa6bcf565e742437f6f24957d3b77adf64288a01710e52007,
                0xbb05e27842a39a871f0d196a757f30f7749c558afd0712ec4e3dbd24cc9d860b,
                0x9c9ba87f8521ee481f85c860a5f4c89c49b90d2a41f3599ca4b838572686d916,
                0xae352344dbde97d8379d4637eb1a220da18fc20e114756eae69d5d4fb9b0c52b,
                0x6d5df980c1d741d59d9ceefc8bb7f773ebcbf023c1e44dc8d217d5599c751409,
                0x4528f4f0c7a31dc50534d32e49a58d23210a2b38646e6a5271a4083e4a37e609,
                0x122255ee34a3618a95e8f7686ed91f6deee5695f35c838c5416b61b5dc4dfc18,
                0x9b5ad6eddc83d261edbee027efa63ac8c1b72acc8e238045bf31f6e153c5051e,
                0x28330ed2e975390056e474cee89e6c398847480e44aa0fcd6678c1a132f4d70a,
                0xafd79164639ead32e105f593d5857ba75187387ce3a56c314496998ca334f90c,
                0x9d0bacdb6f5e97a5529aed05c3749aa0ff14efdf244f1dd964cb15211f837527
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 8
        ark(
            i,
            q,
            HashInputs11(
                0x4e16386fcd0d86b73d919c1a4d2f580b486e26c2f41164cefe8dad2ce6219c07,
                0x269f5eeb7bacd729f35fff04977a1626cf792779bc40e155985ffee705623115,
                0x95f4e931dde3936e6c517121212faca1af9ae049b9caee0dd068fcae43b5cd2c,
                0xbc8c01f5367f064f9002ced7835d0ee0c6f329102b16d2b891293c6871d54e1f,
                0xe6664e01d6e1dc1b859e502da7b6c7b4d2858c3a94d62615ca8411ce091ac917,
                0x7493eefcef7e87550d0d5269fddef10f60a933e1ee522e5506f6bc29ba905027,
                0x5c220d9471813d5d73f35aa48b7517da6c504e144feb7b550e3d23cd38692511,
                0x0f3120f4c15d104aedb1d3a52e04800671a8bc21e8a2f7cf74d5b08402f50c1f,
                0x4a21069aa643b6bc2a0e17e1248b72f2cb5b72cc2cb9e1b5443ca64303aba91e,
                0x223245311b6b4af4edef3b3cb5acde9bca9ed9ee75c796aae38f255e3fe3411f,
                0xf651dd192203eaacf037bd8fc992b475c2b0588d9efb96da5c4237088887131e
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 9
        ark(
            i,
            q,
            HashInputs11(
                0x58e3fa55312327de31d46914d08bb4bfe836e826bdb78ee96f13124540be700f,
                0x714d879542bc36e1613b55646e4f762d5f47c51b5183f5b5e4fb5c5ead181e08,
                0x21f36556f0e3589d7353b3871765a9b486601cbb6e27b8b2ce3b6d7596546500,
                0x7557000b03e5f40e85dc8a40dca58ff4aac7594da82566c629839a0c469c022d,
                0xb357e9270071207c170605e60351d777fac4c5f69d030513c75d93930dc10905,
                0xf4135e3db68c4591cc01c71c08aa48e3e8cada3e2c2aece5f9acb1bf48b2d91b,
                0x8687c6830c7ce19f0858fb9be7d19edc57d3855040efc6a060f63fe78c355b23,
                0xb5ad9ff851168a6a28e364f91cac94405bb335e0e812cfa00eee7457c8579c11,
                0xd231eedec5145d38c5640393462b30af76d5428cd2e8b4550b53b2f20762ea10,
                0x8d430ceae3845fd172ed8f992cc0d6b459ad1c3f284606de2f6c60eb7ea16801,
                0xe971df95b6469684b330171cd6c96632b6d8e77f38bc2179742aed5f00da2c0a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 10
        ark(
            i,
            q,
            HashInputs11(
                0xcf0a536132521fb4c4eca82f4161a99225c8a82283a4de5516249b1eaa69c018,
                0x0422a81636d6ef0cd93ea69282ca2fdf7d0c218d754c71c8d1059e80ca70c801,
                0xc1e349dea6efd512e918a7beb8be171887150af6ff917fa9050991cb74161606,
                0xe81111e2de164f06deefba8270a2b670c57439078cc2f85f2c236bb2a3081e1b,
                0x87facae03002b55e3dcd1f1ffdfcce2480d267efd700d4035edb5dbd18813c25,
                0xb9efabfceadfbca73d51ec309221b3a0db5a2a9110f3df726638ccb272072812,
                0x2babf1a9e164bb1af24626ca176401924d243f1afc9b767718d5c11e3d493609,
                0x0772d946df36c9e94e4b376ce1f78d398ef440c132da2eac3eebc0dc48c78209,
                0xc27bafdd4dba360e9db2e7dea94c158e1e1017a0d4e5787e0265509054cb4e15,
                0x8da5716e7df4e9d2757f88c48e1e0bb6fc5f705513534139a11d6a7db135141b,
                0xc6f3763a3f25ef9dfaf7f960deb93cb51d8c3eaf3a7e1017d436644283e8fe11
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 11
        ark(
            i,
            q,
            HashInputs11(
                0x6c1cb9da810e2eff273ed79a559d50d26801e948b595d3a9ed05937fa6cbe725,
                0x59912e7cc2c317a763e54b2a07a979116ad6fca0867e33fec8f3451f1419eb1c,
                0x5b10f811d5fe115fe58e18c7d21c13db44d37fdfdc92e33b5877cb1ec9e0561a,
                0x8ff7b56491611e49d356ba7c8f74898d898f906a866fc569df9778f96351c41a,
                0xca6dc03de11369655c3222a41cdc94a62a9d96da3b7668f8df6909543133a10e,
                0x5136aa5e91d0303b0a1ba4fbaa6fdadc9b678b41e3ce539f48ec5142d19c051a,
                0xa540c83c0e29a93f320d9b4a47fdf46b9dcc95b5c0444d7e61f6392a4a0e0414,
                0xe8d899d5b4c2eb14926b4b83d7d9398a8255c2ffcfadca49eec207e9110bbd20,
                0xc7a8e8964c9096a8490c4c52eb2b05a5e3bbfa13ac3140872c47ba2f10c48b1c,
                0x29c9f4ba677cfc7ff047e1b8ec3ae6ec92647eb46a076696a3e49d38cdaa952e,
                0x1d03f62f105bb65d2c66a1721da6c15447cc61f39e2bf3f12f21bcd70e790220
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 12
        ark(
            i,
            q,
            HashInputs11(
                0xd476eeeb1b1fad9bb22f6362872dbb65de257b1339c67bcdbef6900dae18ff27,
                0x595e016c13d42c517e3c5e828008b69ecea1599a9eb2a7dceee7ea9e16878a2d,
                0xb75f9d8970f652ff1d697c9478b908ea6cc908216c25b9ec145fd24d8baa3b24,
                0x93cc1d1bb0d8ce76b9e6bb187567acf92af5eb5e9c05a36ee17550fca8f6181b,
                0x60645d955e4195c54e2f45bd5dca17f4c7448764befa24b23477e278e9db6a00,
                0x333b8ca4b5c8e7dddd920c31d508234626d09bf3c2b5352c6270eced8b4d9e1c,
                0xe343ddecdfe28c25c1c363879fd18eeef8168bca09bbf586f14be1764affd11c,
                0x151ea306930a8508a36b0bc5514e907482def3e6c3de1bccd89307dc9830d828,
                0xf80e1759da895d3829b94473fb1d7f23b46111052e284b8c958797e51f652824,
                0xe6ddac196eb6d4ff4a9ecff44e3680c8683937c9103afad3689dbb93b8b04308,
                0xbddae8812a5739422d8ea17449d2c86bcbb46dada31b893c3ad28c056f0f0b07
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 13
        ark(
            i,
            q,
            HashInputs11(
                0x4faa088086efcd6890b4f85f0d44bd3393c7c1c5a6fa2ea08803bab20356cb1c,
                0xa7ecd50681bd54f5411d6226fbee84f89ee896821e06b993014938fce7d5cd00,
                0xc1fca73815d2a5cfe9fac889400eecaa15299a6e7131b54daa72675774487d09,
                0x301ddb62f08ebed52acf24ae720648774e1c542836bc152e19244701d92fd808,
                0x55f5d6ed802592ea9e5d6a09dd41eb59c583b96ab1378af3bb1cfbfcf340300d,
                0xb94d718708451834332aef5161a3c7cad236a8bab049e6657204ee27f7312320,
                0xf18be634bfe2ca22ec432f1e44a395a74447357704f845665f68d079c7058917,
                0xc8478b4f0e78e4c4892df5818b70e41406e009ccf28aff28583ae2831184e71e,
                0x1ac0f6f8160fd0ddc8502fa8987d5a31ecba25e8d383ac4c1870e010cb94441a,
                0x7b1a58ae34b8b3368e0a7e7b0ed164dc5020ef70e3e1156b57dac7d29497e929,
                0x65a26d3d7d56c8f0dc93f0c87428eb50c261e5317db23ba5f5326192c7dfa30d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 14
        ark(
            i,
            q,
            HashInputs11(
                0x63e042adee99eb77a52c92737540fa2355bb456bbc18c87ce05957c12502c92a,
                0x144e51528689929b9222bcd51514a520bbdead5bdca603fdaea19422e5def705,
                0x622b5e4ccf98e0eba7fc4fc98ae39db7e96605fac1bcf60f55659067de1def25,
                0x2da2daedb1334407f8b8d2de044ba5c0a70442619cc04efda2594da2b276f524,
                0xef18a6b6e7b14ce069709d346ccae695432cf72c1e657d41c29f9d4e5e80a42d,
                0xaef8a1093e918ebf490df50145ebf916c2fc9beb3769b208e5f501de5a047e0e,
                0x4e6be2cb754a927e20c88fb54dd32319d5daedb76d07d345062f06a6dbea2621,
                0x1ad4aeadc36e539c71e22a3bd1cfc91ebc4fa398a2e3f100e87e7d7e0a6d1522,
                0x1956e809762fc98f677c5d036a866bd8f06373b86a5cf4a75ff6c4424ae31009,
                0x7a26c82ee96eba1ea4be9fb25c539013a808f93c84640f595a568729b8d7f10e,
                0x53d04f85fffbc071b85a2d98a53253fad9440015d329408364e2cab6cfb0ed22
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 15
        ark(
            i,
            q,
            HashInputs11(
                0x6da6121432bdbb0a2aca5f9d7b9dfef682d889128d87183112f6174ba0c0a41c,
                0xe5e1351a3939f6444c7bfef08babec8fa47346e8c288252392eae1e8f62dc219,
                0x375a60839d4952159f2fa0afe4747c38fa1a0ad1e4ec3e7d80583b01db1d730e,
                0xdcf9dadf0768a3505cb8dffb1b5f267e2922b21294c33c72ae1fe10ec2d4ba28,
                0x7d97bc866efc9b8fa232ca3fe7567b0af520db3c301180e0d910b1c6cd8f820f,
                0x8252d274bd0b98f030ddfe6c9901c16a9bc497fc87ccf71e48b4fa8c76d74a04,
                0x000eb15ad967a29965131d61c739135e7fc9a85b150fe5ebdf15f1815eeeb40b,
                0x9467b091526ea47cae9f23b2a0227422ceed26e330785b779466d2afa983bc1a,
                0x3206c83fd52705af80966a282a7fea3d6d58e5b4214ea41e661654dbdfd15c1d,
                0x75ff6dfab03747278bf17d9ce6aa65f36278d47b63e153f91e6dbec80d43a824,
                0xf4da35cc24a4d028b2208b97548b7e76bcfba0fe219f11f16919ad8f01462a2c
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 16
        ark(
            i,
            q,
            HashInputs11(
                0x3dd3d226595518887e7b13360191499c48230cb9d8b11709f1ae9e500f83be2a,
                0x154eb7c0bbe5fc988c4a962061c3d67c0b82d58812472ba43a0c0334c9ec2613,
                0xd9be30cd5597498a0a7b2cba0e8b0c753c6546ba6a15e72b672b08897b313228,
                0xae2ccc8614afdacc9d17393a2dc1668250e1e746ac8d63018db04b4431b69a0d,
                0x8fe48cd679a3098b950e6441e17ad3064d7d75dc0b9ea3343176091688092110,
                0x8d61f64cd7209971bc36dcd8673c153cdd0104683a0c271df1b2e02e0f68dc29,
                0xf1f8c11ed29e5bd91231aa63b0e97a52ffd746384691f15b2686486b0147180e,
                0xa8f3153799e8d0c348c30f22cb5c5773f82ff2da3ce64c3adf2cae9d7082f806,
                0x5e88667575f76a633e06d5130b0cb68990c624e5279e704b63b278002b25af03,
                0x994e35d9597e47b4d5f045828d3de025e63f877e53cb52369329774142159c06,
                0x0820039313d2f598140e63584833707962e4f18e9d18b325fd0f7c0906644b00
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 17
        ark(
            i,
            q,
            HashInputs11(
                0xbea19b937a09affa12da21e893578fb22abb5caed20d177737865b75c7629305,
                0xf51ddb41e2e47983aecfcd5f2317be426203881aec79b821b82a1efba32ff126,
                0x12492aa1b26bdf6e9febf4eea9305e5ec578301eba0eb8a5dc418664ce5a1b0b,
                0x1f4ff0043ce281eb612ff8b3628fe00266b2b7e133ed33db564fac78f40e880e,
                0x9016bdfcba3275753dd215ea98296ac7e8a4ceae8bf18b5afa3de2d967f47d14,
                0x6b3a83098698cf4239f8abec73217d46403c0d0e92515244ed6e1e3d9495c51c,
                0x22f78ebb37bf9b0ff235d326b4567e7527151d5920729632d2f9b766675b660e,
                0xd35fa00160cb144da717118b179663f6da542c5966554018d05d402c776df620,
                0xd7066c4a702db408ae773aaf5350cc0425aaa94e7a80236b9099b3f1e400a314,
                0x28b97f9e0aa8c6ac8f5af00e5bd2a73a158acd340110b499ef28a2eeb80f7f16,
                0x24c50283e37110c227003ca0fa7eb84c106e94753dc0dfd268adeec0779eae0d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 18
        ark(
            i,
            q,
            HashInputs11(
                0xe6ef541987a3e8d4854916360d99ecc9e8e1bfd6ee8649618d107df7bf8e3e03,
                0x18f95fe6cd15859ad44146d562a59bce5504340d0f2f46e8c10797116212d702,
                0x9a4d6cb6771a7d20c69ebd7def8aedf403809835cbb220ce534eee7bde830b28,
                0x98b0f047461e0db60e49259f2edcfe16af06486192405054bc13cdfe6e9e6a03,
                0x52f687bf8a4d49c9a8af78ef3f0f23916bdffef48b535ee963b0f5b82faf8809,
                0x2514104918a40a34b2e0b60a7f9e89761f19b07162877b08dc0d6767b1031b0a,
                0x541e26581efda4874d19f6ad55a9f1c93593f9385b38ec26b056810ea539731c,
                0x2bdaf13b01a804b616353ef02c9f5c978b0976efacbd12d51dde9fe7ee8a430c,
                0x6abe1b474a9345dcfc94cc7e1cb96eecdc7ace08856e0199008970cdec1e4d21,
                0x4aa017fbc816c3cd5bb3961f25185111397c682836694dd6838ad357253de427,
                0xf6da55e440f7906372d7522ae9cab48155a75d600f0fd9445084426f9e568c1f
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 19
        ark(
            i,
            q,
            HashInputs11(
                0xa451fe9c6623f77415c7437ea92ef4852ce95b286b7c3ec458a914c0ace3da26,
                0x8dcda6c137a54eec25f479c0105044c014c4e88cc2b1b2591cc9e75f40ee8e01,
                0x5d5ae63262270d96764df3ef4fdf53bdc47dedd08eb5601d88e9c4b2da65100a,
                0x79068cf072066f7402bb21fa64b45eaf408e3ea6bd44b778f9d20f2f5e475b17,
                0x09044be8a03f5b01215dd58635d23dc1d2aabe847ec0749d3c1a9fd76e05a925,
                0x43023018051abcee700a20af41560917fa0957bd30b1eea758cc68c293205d14,
                0xf11273c6bfad0dabfc166d4f96b5435fc1e707d89530a09725da7a0a538b170d,
                0xa1abb555009b585dd5a7b90cc474c783f14098d54d15926e7ee0f651fb1fa826,
                0x69a993488d184c528f8de0e7e0e0fee58d953d851f88a6f28a306a79a65c7d1c,
                0x65f511aced647954e3f5cf147da4e5fab9794ee9bc8cb64d9258b18cd873a604,
                0xd85bacbd233bede1155b5e073684a035a1ad26498c1e69ada75be77f7f2b6e10
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 20
        ark(
            i,
            q,
            HashInputs11(
                0x869e9489cab1a099ce586a01d4b2b661b3eff1855e566cfd0d1151e691c86716,
                0x232d9a68f171342ea9d6b9476e3fd33773052055a141550c68c2db6df7071c28,
                0x8a13246acc101a0265b82dcdf955e9d1539e572ac5cbbed1c2a45efa78f0f02c,
                0x18370dc47d780be58588921a14b0dce4571a419aac345de177928abe8eac0b0c,
                0x5061d14bf321f81ffb3bb837aeea7a74737335308fc301c53cbf34df09ff7915,
                0xdb0ce04e7e3e2089ec4571a4bfee044a075f840151ffc22de64ddd2258700809,
                0x9cec567027a279f8844256f145f0477c1f9dee4483c408aeadcb173c19d42e2e,
                0xe27e2591287d0473c996dc50e71794c8f7387247aaa3380d39f6b3d28989350b,
                0x012d986e2f72da9aa2155e1b04cac0074b6a3c654f42fabe458b6d4cc2ccc80e,
                0xdec9579d68f6d7ae6f32868af88cfaa5964c5e955ccf7d3fc884abfb70f1e52e,
                0x6ec23887cea5b5d3447db38888e27e7e172810fd7714a5e61b1095c02779b70d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 21
        ark(
            i,
            q,
            HashInputs11(
                0xaf0748af9831fa529456eacaa6e053a3363db27cd7cfb1fc60908ddd0b5e2f11,
                0xc8592417609d556892cf9e9f58b6fe3e90fcbe4acf0dfbdbb37cbe7bb8d3b62e,
                0x0cea778886510ca1b1d1a833d29be7d142d75ceb3aea0f70ef94084f0e8cc60d,
                0x15b32c0f8d215268008d413b294e455853ca95933b1598a35b2c139dfde7a925,
                0xdc00e8ce8d88bcfa4ae92b6ec3d5f1c257dd22504acbf00bb23296348cbc1628,
                0xa2ac08fdb34279bc9239f2c164629d74e0750e2937a5dbe9f1702011825ac911,
                0x783de05dcee41b5e089a25f2f44ac95cd0d99832376b40327657c147c305292b,
                0xcf08b9bd8af61dda5d9ba667b483707b0ef710bd87c5d9d3c9fe59c28467780d,
                0xa10ac359c02c3da44e89716e1d7d3671abf23de0a17918dc888826c05735980b,
                0x5fbaf7c424c1dabe6c2663a4972f0a47bd48f9ed8e6ea892b50ef820d1dd7825,
                0xe9fe507b1f6fa205557192ea70beb8cc2d74b7e26d5099d833a994d2a0571705
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 22
        ark(
            i,
            q,
            HashInputs11(
                0xfd227dc916a5f66d71fdd71893c1cb6b468b79b9e1503d9ba0ff3b929c3e471a,
                0xc30214cd63d9e427ce43ab0c31d6093ddf2e9a2646a681a5206c2ed9ca1e0317,
                0x12b22f448a7c4238fccc95eba39f336b738fd68ec38d37f712ee62390fe2fd07,
                0x8487fd9c72f5116aa34c92a2590f62ec6f89554b4fbafd13201dcb9195d30002,
                0x28cd832db28907e1cd79205e1444134dbc5476b8416d9fcf2740da1703f2561a,
                0xa988f998d691848be5462eb257d0ecafbe57ff34459a5300a9642dd72294ce26,
                0xf3bd88cc1e10730009e511785f6a48e5f325ebe2abd15dd1aa77d48193ed9d18,
                0x6f9541389a82bd0a37d88b83c9150b41f2301a76ab709d25705cc90871388b1c,
                0xb13a0dd697fdf700af53d2098c0f1c69324cd43aad3d451774e4a3c8ab028116,
                0x6f51036b837a1bdcaa775166b21b78e2c15325ec4caf143b401e2747ab63a116,
                0x67d377d8fafa4c45e07641fb6719c625dedd81749e67262884bf2660c6510315
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 23
        ark(
            i,
            q,
            HashInputs11(
                0x892f6229c9b17b0e7fcec7a032f57864ee1d5dae1c1d03aa899f29879dd20614,
                0x3c474adcaae22e50a0aae27129a2e54a6caa4b8256695ed9c9799653847ebb01,
                0x4aa77ee3c6603b7dcf4d3f5d779af3af4d09f79a45b12e17f94458a8e7b2792b,
                0x6d72d227a96d52e90e21666849d8b96470c56b6e4edbeae7f764d82fe209b80e,
                0x5053228570e5a4accee080f2a3addf5e02a02f244f1d7d4573e4e0293be61229,
                0x79d97c4dede113b29c3e87bb55f600bb41aa45d6ccefcb876a9b5a010fd11328,
                0x5eb10bed68789e4fdd682da5709634ef2b62d6f44d8ae3ac2e9ee6b053b7e209,
                0xf5e2adbb29a4cdc1cacf89bd23583e088d53924a10333acddad7a6f6eb983c09,
                0x1b2ec0a24105da9097a1c207a71b73422cd0ed35ab3b26bffa794365075c611c,
                0xfb540e17f8cbdcab76ed60731383391cb31c3ad27921517bab54c9b60791ef03,
                0xa7d8f33a0edce90ab441fcb905671ef81fa95fe0da1e90a5b98d4a3b67e1b21d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 24
        ark(
            i,
            q,
            HashInputs11(
                0x3515538ea35f8b9937d79e3ec4bd0ad067073741bc6378b5ec8737decc1b580f,
                0xc00440f6631937e9bfee3db47922364f735ccbc6ead52a1afe06612cca2c5c25,
                0x05347d6c9eb5365776cfa6857136896ee6e880f036819dfd6fe84f63cc943b27,
                0xb29a1971b98c9e7c3edd466ee8ca4bbf9c61882df180d1011c37279782021d22,
                0x1082b1d8035240fa1b517dd340c5b185a3e3b49724576b8090333febd1f7b327,
                0x46933e3ec684b0871f401332a456ec21761b8d01564ed32563bc68965e67e50d,
                0xdef4d30e85d9c656baf03820187f62d50cde49cafe9ca3fc209102ee78defc26,
                0xd47539f344cc0c527c25173e8ceec1f74b4a12c5b1399ab624e0a68a77319a1c,
                0x13916056189f2db2502fb80be420ca465e4a3d380199d213d190a37062c78529,
                0x0b31bff9d3c005f68442a3aa38eccd3872839ba061c41fd365cc7bf920b81e09,
                0x52541279fdbf5d64d2fbfff1d0f1d83e6501c1d1910d6889015bac27d721cb03
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 25
        ark(
            i,
            q,
            HashInputs11(
                0x5163e0699c771c7b0cf467206a146ac1f1208c32e789de0b8f499193d3651b0b,
                0x199ad718d7816baa061469118441fc02a6ea10fedcb8782f555ba86801584e1c,
                0xca7ee57a9ccddcb62f378a4c77320655994c28f45b012a0431f6e057ebbeca0a,
                0xac7b41d9303da81922fa1e5ec3a69852a5d15052677cb09345aee8582e1da706,
                0x96686c6952ade1f08c287217cd486715c5ef0d3f4473a0c06c1505ff31caf503,
                0x45712f6e9596f216b668d2affb990c5560c9f98cb4f68aa7a98b69765a460f0d,
                0x66d641ab4ade7ae1f409d5c8a7c0729b71a6a7d617290c218a1aa294e30ae309,
                0xf1d08a386738f7f61602cc1bfd8db392f2c68c9c3964b72045a7f559036b4d1d,
                0x10c01d61170912a48526949b86d92a5fa72f9fabc57895b0b718d5593ba50225,
                0xf54e08b40b9f9894dd2a44dfbdc85fc3ccd8c7b5c8ab6d51a688f2b7d7f64d30,
                0xd367f219e63dba02b6db1e00fb16842bd63ab5f44c7c2736b9afeb2a1f12a106
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 26
        ark(
            i,
            q,
            HashInputs11(
                0xa4e20bad13ecef238a1e491d79bb712ab6b1b899be556f9cf35004616095c71b,
                0xd4014eaf1b2acb937afa6bda9ea9f3fa0e9794bcbbfbc734c36e24021b41dd24,
                0xfbf0c2bf134119749b9eef6a8d147d1f0065036e58ea983342ca6075bcdfa323,
                0x8d630741549ee0f41ba1b7284d7b24bcd62bb53a97a0509743d913b37a550b2f,
                0xcb557bf7160407b5e8ba60a32df95159985053ae94292d154ce58ba9803b2507,
                0xb4c5d7fcdce4c3b388e5f888dedd769febde97283975c900ed0e8c976840df00,
                0x60ab00d0dbc45111181218fa2127fd28e59cc5262b59723b58d2fce730ae6314,
                0xf1641217ee05159023b9063b7f3ea2e9f71e3ec0c590d35b4442775c2f16b829,
                0xfba854a68b0b4c8dfc2643eaac94506cd3d958342f3a0d7e173800fc135cdd2a,
                0x318ba8c78f5e622ac323b7698368ee28ab993f9aa03bce4c94a2a4138f6bfe2d,
                0xac4696b9ff7444cd714c2836ba1d9e2706ed0f27fffa35e0e79e12f327664104
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 27
        ark(
            i,
            q,
            HashInputs11(
                0x1a25b8cba413f0fc3bb7236ad6427e3c201a8389fe67cd2ef1aea61bfee4880a,
                0xacbf19482165024c1dc218e65a1bae6e22c0a928dc62ba98b47275b8199eff17,
                0xbce0c6ab64df9390e68e784ada7b4d76b29915a798f85659ee166eddc5e78304,
                0xcb13b1a4e5d9f48b6e96367c3d013c36f5e59c301bd5768d96f6bf09ed93130b,
                0xff7559e3274f149545f6af469e8880a17df9688e5c92b2fe0c70f4410c35742a,
                0x334efbb8164231ed47429f1b65f20174fc35a7c2275d4fe613dcc9bf31f2a419,
                0x2cf8c1d2640f58b47f3c528b1ce762558414267e0d2cff980c51d0bd6e690710,
                0x7efee22b165d73b6189ae4f0e8f0e2c5d7a50b2647edfaa028bd04920a2a6023,
                0x30af71052b7167b972c14efd1c9dae9025fbc01be3ed9140744350f1b124ad2a,
                0x868c1ddc6eedf972172d75fdbf1ee976480aa6df15c8a04b47e43d5e22edf72a,
                0xfb63b9b5d374f7a3f828324957638762fae26924c03db63c0b48adb7d5c64624
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 28
        ark(
            i,
            q,
            HashInputs11(
                0x7010e68f757f2a03e9adb31c86d1e13ab56c9bb48b1cdcb25bc4fe956640eb14,
                0xca1bc4196c0d5d7a170a9c6bc72d1687e6059999df7f66607bc875b9a0d1da0d,
                0x1c3296dcf0f1994015095a729da1da1875c13252e5c4975d530bcb0e7bdd9829,
                0xefaf5dd0ecd691b2186abe304d927cb8384bb5d7efe84bd4494597bfe8fd4205,
                0x7569ac0930a52e2cd0427119ae558f30aec320bcb1714f0ff99aae1d130f800e,
                0x96514d84e122e0638fbffadae1ca0f14ed3732f0c082c77adea93b03f76d1b0e,
                0x2ee7b37863fc59c764d010f86a2226a79478d063e2d331e8a873abc2d5b75810,
                0xf5f9d66fe36a5fa4f4a36ad2d29eaee129adc6e4b90b24d9eb6109c589574321,
                0x1e67fca665d457e89c8ff8941f9a0390af21e7fc31d538cc58e321ea85fc760b,
                0x90710f396463ca5504ca36f1b8f4fa7e296b44cdc1e4bb0eea710ad4bc9cc30e,
                0xeb3a7f001b864c62d91a2d78d3727e59505304267e4c594c8225a76f6ceee10c
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 29
        ark(
            i,
            q,
            HashInputs11(
                0xb3e9b20051989b030eab3b4cac1b633431deb18805cad7a2ddfc3174a4ddd416,
                0xd628e50c1f409e8125ed4f9307dea044d8da704e288bc7abedbb1296b8dc1b0f,
                0x35161ace12d648bf974050cc69180299bfbf4e552176ceb88687adbca6ff2e14,
                0x3ea4bffe8f31503ffafc8eacb070f9fab681304dbcbb62abda5de827dd630324,
                0xbca7554f8a92a8876604a79b5621cddbbc6ae1f5d7d4837d3e5d5b8fa96ac42f,
                0xa50a48a75835cadcb44aec5726234905f12941db3d2ce5885eb2259a0e0ae80f,
                0x7911fe33e584d39988b530fbd0c5a9094f4bdd8aea2a42084789709d00915e00,
                0x8ce7786ace51265e71e5094d04138e3b811e6c96712f47fc16972492ff284011,
                0xa9c0a7393c40e81ae6c1bd91c82e613632629970ebbcf40eb72b35e784fee41d,
                0xbc6e065c13aca5c17f1290838ae9fb1c372f69e49635ac200dcfc6e1453a400c,
                0x6ca5b0a743558c3d30747ea3a0bfed02a41ad2da0c564a4e1b9d4481eab76c28
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 30
        ark(
            i,
            q,
            HashInputs11(
                0x57a712413cb6039f96bb9009abc15dcb80e9ea6ba462d9b227aa2c054f315815,
                0x33c41eb2d74d4db84f6c079453e0169ee47ade23a4c3aa8728aa31a7c0d2260f,
                0x554028b77f8dbefd15f34cc0a6d082f67d562f33518aaceffb0f5cf8391cbb20,
                0xca374238e2e62af33a7ec7da199679de7bcbb1b73136a6abe5767e517664b325,
                0x3ca77f9d548289e4d896dd471227d387c1bc1f92905dcec3d568d3da74311110,
                0x339e24bad5216d77183c2ac8a5ffe2a186e7ba4f814006b3acdd628a15dd551e,
                0x455fae0a83c6afb0c95f952f31873b7c92e81758babb233a02374bcdf6041504,
                0x25a4405dc5ff0cd4ee1c82b2dcc4258e693b36c3f3cdcd8c67d15d8f060eaf25,
                0xdd3e51bc0362c856362c6a1fb4b06bc67a4aa39a20f3e3607def79024d2ab109,
                0x416258490badc70c5c8d3ef3966fdbfaebc96799928834db87e6eca630935901,
                0x49f0af6b65457b70e1f5e9a68352064d4978caff8df15190fc565db736534600
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 31
        ark(
            i,
            q,
            HashInputs11(
                0x2d3ef74ecfcb0907d9474793b981fc1b370f5cddc94777cda813ecced3781a1a,
                0x98462326269227258da2896bfcc4be3d96c6353fe9e2067dacd12cf35b30b102,
                0x0d02ea84b6197aa9c37868038fc14c6d3d4d283518f01f938613df3dbfe1491c,
                0x87d7ff918329ecbce8aa4c45da66ebe010e645d9c49070ccf9047186e1666126,
                0xa647e9b1b12bc177991bce9419d559e31e49ee29e9868fb0bd010ab4d3bf7520,
                0x6e8fe4e780c30b322081b9911535771e5850cfca1914266887a5dde55ca4472e,
                0xd321de4ad074f8e2aa8bb0740f936e9bdb13c57a019176a044ed24a1d5150c2a,
                0xd5914bc29d168fc4808b1de1baaece1fb849d770725f77a6a7e0a2587fd4d029,
                0x7e21c7e56392950e67e7d3091d1faa1b78d2df0a61d78b66e6badd7a1a208d08,
                0xef6380e61effd1ae765c3c493a8d919322fbcc76850f8f5325e13a5c346c2411,
                0x9a1cf666dbda69b8c11c0f892b18fefc2bfdf240693cdc75ae45ca37f9030f09
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 32
        ark(
            i,
            q,
            HashInputs11(
                0xf601891a9dd7808b24ab9b26ca8ea3155ad20d9781bd5dbc136df36713acbc23,
                0x5500a5c6535a03944e393ca4b2b5fa37283989db1e323c38d4a3fff7674e520a,
                0x1439ae101ba1c1d5970ae1744a308418cad8174c05a4598ee02604a692455e1a,
                0xbbd057bf6b9e36b6840fd4bbbaa48152477283e3f5885d1befe2b0a593220f23,
                0xfb489bfeefda4cff4abe869637a23c12d0561d48378c4316fc24e6fcfcf2b410,
                0x80f78ff0d458abde93f3b084e599457badd5e15cd96607eb50f2a6730466bf12,
                0xfe48d3e7e5c1b23a33a7ab6f4ed1e19b9c350026cd96482dd9ae854f71a1ae05,
                0x5f82399cb3ea0218a7bee05cb0c12d69511e4cc8c62e1f32765d7c74245dd204,
                0x69c965f4dea57a178ea00d51e2f50802bade9b1b442bc571bd774d41f64c8229,
                0xcf02a5463a2a1fd0959fab383240dc340ce04993bca575716dd88c0d3392bc03,
                0x573b5d9e47e5260471e484c46b8993a2e418c7d1eb1426da3eedc981ca43af0a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 33
        ark(
            i,
            q,
            HashInputs11(
                0x5381b30311c96818b9d394bea6d8099a74d97f1f5c19261e6e7d86eec5fa9101,
                0x879ec0f1485015c7b18df38c48cf948f34dac9d0a967d764642a0dff439fd201,
                0x0746e7a35431a69891eca892d15d31545c625a8d5f7d7ed588311c9ea0cdfa1e,
                0xf5c783bc3d132339ad921ecf54263806d89f69d7806d529708515466251d080e,
                0x58b42c713702a94399c5e3cacf163b00a23e7c957ddf16f22652661bb0f22512,
                0xf496c15063d9a965b2f70c7a9c26e9a0a0947e2b86d696531bd498c14b42a511,
                0x4c7fed5d25eae719a9692065473e2c1359cbb0a9f1d809d0e63e8346939b5114,
                0x1b1a0190df6dafe1cb99583fd430da823219a7630a428059ce60046651b25411,
                0x83ef24b7684f878dc26d1983ed4c6d3706139e27a8f47ac6dae26dc38bc1750e,
                0x32a6baf5d528ed2ec198cacd88a6541a33f3d9c4ae0138109a48854cdf509225,
                0x6b3a69806cbfea53534bd1a5cf313f4926c47c83264d456f799ac679b3416203
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 34
        ark(
            i,
            q,
            HashInputs11(
                0x14c8fe628c903861652f5def9bbe87a29064826c5b0387ee6c3065abc1ef9c27,
                0xff14b50099c5fbe8e6b3582a33c1cc55f9846a29cd2036d1d220b04d489c9b1a,
                0x62f235de77de6039945a731889df491caf5e15c1f4462a458f14daaff3e21113,
                0x71c8eb63a438739bc0decb1ab85b98ac5a3b5ceb6a493d1a9eb170a485285c27,
                0x9f11dd760d07cc60fc6553cd610a27fe1aa2593bf23bd6be1778f683c0334f03,
                0x521bfba22d5ecee81945b1402926ca5b618c075d10ddcf0851226074dd887f2d,
                0x43d7c6ace5288a37317098336cae8c953139024d32d03722b46c713244b2ed2a,
                0x91693e66742c25f01bd769e558214bb5ad46dd2dbeb2e2a6993f221b2fea2507,
                0xe83966721e76db14004214e4a1d4c408ed5e2cbc576abf2b1326e44d5cb4c10a,
                0x241d9d3cfc681afb417abdfc6ed068e80b5a0bd2cba5c446256a83aca658ca0f,
                0x0b44c0be447450d28c78b1627201c5b00a9b6506a0352e8fd2eb6a0af844e906
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 35
        ark(
            i,
            q,
            HashInputs11(
                0x12e34ca0a3debd1e2597cef1541f21badcaecd50eeafecfdf3570cb38373a201,
                0xce30664043ff282ec5480f91d80b60e350e62c80621361d35f6b78b5b70b3a17,
                0x3b4dd3173ade5a200c267019ac362f70d07a5046e42080dd3110978bd9a3cb17,
                0xf18cd213ca56aa4ff7d850d991b8f5170b180d49bc2270361dfc264b612aee1d,
                0xe120aa759d3927246cd07675f57adbf21e43b574a44dae450e3e4f7c2e40071e,
                0x3e2605ada19ea1bb4e86dbfe466b7c7c2a68d903153ad8d5dc64f8a05d6a0830,
                0xa49afec93714a558a2c41e712788fb3347c3837f59eadde1cfe16b0a447e4a0b,
                0xfc6b4f4b902f3c8eb7d476e9c4a5fcc9351554a9309a70309284e45deb51b21c,
                0xf2efc15d49914b34317b00284f4cf778ff3b2923e05984f51925d806d8eb340d,
                0x9b06c4014efd10a405e428d9f36cc7621a2f5b0abfd1f328f217b39d0be27022,
                0x3a9304e562a3e854eb69c53f9b680f07e26b7f6112f6e436428590d98b6f9c2f
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 36
        ark(
            i,
            q,
            HashInputs11(
                0xb9a9ae588aba3c79fc3a80280fc0289b6689964bf3885551cce47c9acd5aec09,
                0x823c72d7bc908b43c0a2d85a7d70d8d76a8aea6167aed30bf93b34ec258e2f07,
                0x2f2ade6f785119f7c261a75a662c416509c98231f23347d5432b1b35d956b809,
                0xfb194be382e69237645c3ba27e2aa306a39ca79b3a6ea3e72cd9e07b57cba017,
                0xe7370aaa0b2f7b6372ec859c7d3039ded6c06c3ab12c6c88cee700fa74d82318,
                0x101d298c57caeb623a65978590c9859bbf2616c5d5ff1926d9e45285055b2420,
                0x47fd6c099040030863a3551716e459ca6fe78bb9056320bc712906e6e1f50c01,
                0x91d31e0dc01458fd35d2b8dc280186fbb8f1a3c7f16e342611cf23c0b47e720c,
                0xcebbdfe3065fd469de126fb9d21b127193d9437f9b9e65484f0776490a688a08,
                0x9758eccf6cf188aff724774de4d96c981957acc73348887ca339e810d989e426,
                0x6572f95948d2f36edbae4c6ba7ab1c4418f9da93756795ca5cea766951c1a920
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 37
        ark(
            i,
            q,
            HashInputs11(
                0xe773694955fefc63e7cddcdc2624170d921d4a2d0dd9d6570b36f8e63cd3f01d,
                0xfaa0ab8f1cff62bff7ef4ca131350b17cea14556781e64058b33ee5585c39104,
                0xbf25cb18445da70326c4629bfc69e81e071bcc21c670c23f90888e4fcf4a0f2f,
                0xc1f1e16a7b4ca4acab3927995732c3b53628a06905d8dbc86aedf9dbec073505,
                0x2b65b2ede1d7c52c80869fe5d6299b2c48409c333d6e1ce36f0fade65f9fb319,
                0xb6f20d1cd064706dcf8d847a3e21e052cf99df047ff1d0971c0f661bd9e06408,
                0xfaee4c09ef4a820c3cb174c6d19243f0651b72264cba92290351d89b8aa2411a,
                0xe354b5a1cbc0d55fc4085ccd3ced0fd45b864c25c2073e63910780db17fee422,
                0x282a5258acbbfc89f0416262344b0abd160d80e6a7e8b191e4868400947dd91e,
                0xa87b7f6f066470d8bacb21c99ec4fa29fbccad6a93af1c31354340b6de74560d,
                0x6a10fedd15ce73d139e42fc6bae66c299a7a3f6a927eeecc0887c2143f0f3619
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 38
        ark(
            i,
            q,
            HashInputs11(
                0x4881dd9b1aff72a91f2e3df8175d6a25d68d075e0e3ce532d0c6902b8dcd7117,
                0x73994fee6270f3e40b6a5941a5db77ba2633745d6d3aa2d2755a3385af885001,
                0x42a1711ce06d60fd9a4368e2613dc163e73155837575ed30b717f4c334931d30,
                0x1e48bdb6f3470666bcba24754867868e8d6263d02fcc966c3a68fdc91f9f0814,
                0x84d149ae89cc4c40bb926586d598d11653ba3c6c81b4871d8c4ad512c57cfc03,
                0xe5fd992b1c9e36d2adf4c3bf59b66850143454992d0c11ffe5d145457b5b9c01,
                0x3a49a14fecabc26607fcf9d8e5f971f865c2ceb1bd485226c418ab10aea16606,
                0x9c309be9373584e89522ff46da9156c97dd1fec8b3bba9004a1737a51edbc321,
                0x5e5a0d419a345f3cc4ab352cee1b61e2df5ac79520c3dcab702cd8403aa8240b,
                0x3d4b81e5082b3de7242510c1ce7a266926a83a26fc5a17c57cf44da7da46d40e,
                0xcb00b4483ab969b5d8a0ea2859ad4ded56806acc3ea11de66718b0e6dc333b29
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 39
        ark(
            i,
            q,
            HashInputs11(
                0x4fe61375a1e2e0ad92a6a62cee1d0f283d93e48d5f3f80416a8f6eae3fc1430f,
                0x1e55a5b1533855a1731469af981f7cd69141c71e51128c431cca069fd1b47018,
                0xe51b663e6a0c9c6f202cfbd889d687601c71ff3a211bf3096f32abf45ee9112c,
                0xc0dc4cea442043e9dfd8830686e4de82f73aea8314899374eff10453b3415b0b,
                0x6527b7414620942e975f7a1d70b2a620aa1d3a73090a2c11462dc3315a59cf23,
                0x04dfe4002230864393ad3e36d3db002031c3eda3699f1c3b7bec95e15599a719,
                0x5c2ee9d658b67f5101ed7a0d52df24e28e8b7f8f7186c14a0a36189f7b1c4607,
                0x180a793f06bbee7b9507d01b9ec0b43a177efdcec18fa04c0a7ae13a1a80b61d,
                0xfa3693097c53da0f41b02bcc1558286f8e8a246a85914f5bd2a631d3d42a8e07,
                0xff7dacb629c1426c4a29ebdc80bbe07bfd000007adeffbee9d1c009ba1d58719,
                0x5775f61394b93dcd95bfae37d248d25352e8e28421aa51d0460b8d16e3071007
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 40
        ark(
            i,
            q,
            HashInputs11(
                0x7843fdef9c6735ccfaeb4c14f6c3d1d467520eccf3245a76b1d0cc676c65d017,
                0xd357f1e26df5d4ffb02ad38f26398a3a61719366ffdd634b6168da488e9b941e,
                0xcbd411991b16bb11848f16c77f1edba6e801864e0f9779e9bb8973d0427f0920,
                0x14df9544c12f42c361a0a10028131e0213e64c539f0d45a0829992ac7bb8dd20,
                0x228dbc3980f53bcabc5b91773c62d99e8f80a44a8a7e32495e6f2dc22d19cf17,
                0xfd384932b9778e35a9a639ac4a896490a3f3055e9a376930c9d45e7b3477e11c,
                0xa54787cd3ff4e9a1d1afd16f499f46c681d7292931b12e7fba0088a2ce056f06,
                0x07b5dd1815d3b6b850cbaf5e5efec8b286d99811696f58efdc313094907a4023,
                0x21b684fb597631e0683307489fa7b6462f97ab185b3db8516ecd18253703aa13,
                0xd9c83af5a4ea94053fe23a7305013de20b2a0fa6dd7928e9d91e578038d12821,
                0x2e8419923492918e01ba1b3090de0f387a52edb1bcdbc1b6c488de2e6f2e9901
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 41
        ark(
            i,
            q,
            HashInputs11(
                0x3a6544487341e014fa57ace59bd6cea8a819cb60f8e73d2bc82fdcd128026e04,
                0x4e8a2ca75b5b0a8e60f768e35ee2df2828825add782a739974d461c083d67324,
                0x0966af352f8508c4cdf8722fa63d1ebbf33728dda3cc8650896bf8df227ebd23,
                0x81898efb69d38b6eff1299097773df1cf2a7f90e6e1122a55d037c5e7755220e,
                0x666b905f77027d4ff984b213f5ba35d7492cd1485692b4221da9568d21bd8d2a,
                0x0715da1fbadbcc96876cd030a82a9dd15f0461e47c97905770ffe74dbc15212a,
                0x1083702b14dc0a1e990008e3b03a363e1661ffb0017a7348dc6a6604eec6b201,
                0x41941b06ac3b402db375b394755916ee323dd4f67b01c299623f22d80fc18113,
                0xdcaf203da4ecaf3bbd33d5615dee4d8358078d71e33e28c35fa8b96379dde003,
                0x322517a26e3af86d8cbbd53828b4ec4bfaac9f46fa1c8d546ff44bd79300d82e,
                0x03cf2f741caaddba42fe0da831de9365a99e564553011f6a45c8e13f0c441511
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 42
        ark(
            i,
            q,
            HashInputs11(
                0x76d622a62953d874ce92c6a490e633c0a0bea401d25f9da62637c555de76da04,
                0xadaf996bb28466cf657ac60127951a494b1d4298c029f8e44277bfbec6728107,
                0x232322c7ac7dfad65e33fd3bac757ead3ac3fd169a8d711c3eddd7bf12f55a30,
                0x2aaffb0ce7d906bf18a4a6b0379046a05ecf5799aaca799fbbcf5ddcf87ef811,
                0x19e414d6cd9ad0dd170606700cae76acea1dd999fb3492e6fafce18f97d04026,
                0xea12410d6099764cc6754fc8dcdea1d21d1581e736c656335007ee0218487d00,
                0xd499dbf75d93556bbf5cdf8d27dc17dd463788fda72cf4837e7e56ce5c4c6f1f,
                0x0ce57dc16883d2e9d7d7d4cc5d4444cd149d6199774fb3e0c358d33821b68c00,
                0x5c3997607ab6507baf5d31373e76956b56e34da589e012cbdfcaa3dcd5b7dd0d,
                0x0a632a1da48b94aaba87c397809507c5fb13fe801ba141bfa87324815489742d,
                0xe44f93214736660525bdc39438776587025ad56d428399bb65e8d8b5fc38f804
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 43
        ark(
            i,
            q,
            HashInputs11(
                0x2933ebed952cdc4149565ab8dd1aa5f0a0af89afa51f1df0331920611aee4425,
                0x2ad068cd1e1522311514cd1c84d5ffc29f45b660f66d3f69b8121f7b926ab215,
                0x87bfd00fc65b75fda94519bdc7ff6ffd919fc34b3e40432deffa5a97c57c4110,
                0xb3bd1c2209fdd2a6392cb9ee98b20bfc2b9e4b9666d4843629cb09cb2447102d,
                0xd85cedf07f5204e09c53ec5a06cb549bcf34aabbacc39879010a81dde192612e,
                0x32b0964b2c6192428c29e083b026104f4fedc9ca483bba45c496c7cdf473f027,
                0x7f6c839f48b92bb36ec528459c1389ad32db6fb7f7aba06ba720bbedbd255027,
                0x96f428ea4454715c776efac4eb5bcf2fc072a7493e5d13f24aaa558bd057381c,
                0x85ece787568e02fb0cbe3a550de05763dc63c2c2d7e7e9ff40d5ecc05847af10,
                0x350e41908c1092fcc7cf44d659007c017ddbbca9d7216ecbe3dafd8446d39224,
                0xdbbbf3a4af751eee15dc4dad43382e25fbf6e638f17e81643390b719d55fbb26
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 44
        ark(
            i,
            q,
            HashInputs11(
                0x694cb5101ba9a787eb9cf4df706b6d8bf37e8cb2c5d13c804d88fa0f7fae8319,
                0xb2071dfd8379726e8e11014d91603eff97957b91bcdc4418d4d53374000e9b1a,
                0x3a998409e6a15558037c03db18937785bc3d9427981e185b7c8926f854c4080e,
                0xad7a88ca6cb295c8e0ecfa4307e9b1fca644f48d66729cfbcc01f82411e77e0e,
                0xefd530a88a44c0e584411611c6d358edcec15b91a1ee5cd460f357c093efde20,
                0x05cf136916b71e80a442e3366c66755275799e71d05f2398b860f0809abdee06,
                0x288995d571c28af61b3b060d893d24400532145c8ef6253705dff5e910026910,
                0xf0a0c3623edb0c4745db108ac6cadeb7fbd2b12cbae0e205a7210b600ce99c2d,
                0xa504f9f3d38587395c106c2493f2a727a7ea376c243c63cec1f6c677b9658f2c,
                0x8961251860d853b9bc151963f841c259fd6d06a3abfecdffc78ed84054ed9b2a,
                0x0e7f21d0c856e6cf8cdb113fb3156223f579a61440f6d292790f68d2ac3c9e27
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 45
        ark(
            i,
            q,
            HashInputs11(
                0x788a89d6981e1fb02c1ee3269fa629fc6c04008c61606cb54142efb059b95901,
                0xda40357cbeabccd67873509468a7c21b8210e7a9c4f00d9b7f2518275e2fe111,
                0x19364e34197e4071842588de20be32b9eecb1427f5caff8b228aebdacead721b,
                0x8a9bc23cd91bb1bb49c5dc59ad54f6fa992faf4daf9f3c071dda78c853d1f104,
                0x6ac7120638ae8621d3a12d3704f81fb56a641a46c0b95959ccf3dc926a099d19,
                0x82833522aba92650fe5945ef3558ba7961e1b4dc27ca6fedac0679a98c361619,
                0xa1dadcb0737c90f79595ce7f64a858c4b32ecf58bbc91fc6291bdeb324fa8002,
                0xb4de09a2d129fd1ead3bc99f5f74909480e0d421bfe40eefb50293820a0fff05,
                0xcb265bdd3537572feaa10ba0fcffd4cce997ed4d514c93b4c7e10da9418b4f14,
                0xe7e88de681ca48a4292893cebc248d1dbb08e506d533d6379d0f788c47a4330b,
                0x0ab91498a2726fb01429cb1837c370f070b7a932a5511be27ba1d8bb9bfe3707
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 46
        ark(
            i,
            q,
            HashInputs11(
                0xccce76cc319457606c040ef86a1466cabc99f4cddc9e1fdc429cafc28488381e,
                0xb7270a575fc810928b052575ab9e2c43744956ac653a4c8ad09a8cf8aa135312,
                0xfface9e051a6cf9dec9bbe8c001a416f0a94744a90d44bf10c4ea0028704fe29,
                0xd5df427be8bd731ceeb6788c99771fec954f385740756913f0fb3a024ef98a10,
                0x649c5c7252c566df828bdc9e91bc34eddf74e2266433b56d923139207d60571c,
                0x9a5462499fa7db8d24667c4036a77cd45072f8e08a5c4b465309576cbc4b5d11,
                0x79fef0fbef2dbfc31e93a04a9d85ffccf94bb224be6d815c4ea0f87c7fb4bb25,
                0xa9a724cb23f08e2e08153ff22d910982eabc02db5fc2a2ac9c6ab1818b234a1f,
                0x74c0f347266a1bb37172f123c6e743be448661341a7ec62828237f20599ca80d,
                0x2b17b30317ff6705329bf559ab78d63ea3fb2c631a77438a5ec6b1c6f3972923,
                0x7c9dcde657939e989a42d1d2e180162b31ae5ae38dae786851426f3d0761df0f
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 47
        ark(
            i,
            q,
            HashInputs11(
                0x9c8b349c706b6badbe4ccd6fe1712892b3a6dac131cb223426052456543be025,
                0x3b4ad82ca17d2b5e9256b6bd723580e2270e8e894588644cd1d6717cf2367111,
                0xc7e5481e87a5686a96cebfd686fd8450b32cdacf6da3fb6bda686512c0dbc311,
                0xbd69e0c6ea921c1b7a73a90460c076d5f3d2c3e8a1b098ef18f829325f9c3213,
                0x8b28115a5198d2cb31b5c8732161a433a7f97c5b866f7b51cbf45e8e8149cc2a,
                0xd07bed3ae38c871a211f5185869083ec75e5aaa5df0b16aa4a45300bf0a7b20f,
                0x8e7a23be0d071edfe1ed5111e2a9f68cf3423789e538adc2aa33b9582617eb2c,
                0xa00c140b6816f50c9dd83c1d3d2bce5a1c9df51b22369a760b993fef630ce10f,
                0x66317faa9a0d2310ead285ae6a149ec6746dfbd9e7a573d9087209e4ab339904,
                0x9c4a6db7bcbc8ec7729ef8b01bf82def2561965e054b97254db12dd0ba074f2e,
                0x28c0c3e7a52245467cea6fe9129c3ea49f35281faad39b5fba283317e3cb1819
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 48
        ark(
            i,
            q,
            HashInputs11(
                0x3c725e29a21e1f778cf158433d1fdd41860834beabdd7a867ba06ab39d70ba2b,
                0x784ef534ab0795f38f93de96d99ed715b5ca4ecf4a32d7deca3b313c77f45c03,
                0x08287813bc15ac6669b0c74255fdd50844be19abf9ab7b04467c7e3a639b222e,
                0x7dc9142deaf3bf8841095a916e3924021e68d78a3fabae9e8b63ee1391df8811,
                0x5edaecd0c813d8e4a9a2d984de8bcf09767536942901c7284720922ecfce8823,
                0xaa52281bbb01c2d3871b9cd42857c2fbcc90780b28bb7d26010185b63ade3b26,
                0xb6263465b5bec877407db0a8cd11fe229f7095cbfec142008bc65161058e8724,
                0xff987bedd01f4608474de33f0bac2e10e0d1a04c9b4c07f73783fa1d6ec6d12e,
                0xaa96fbb786380d371cacbaeb1a2834ae96fdc5f969feec2da019e6ac21c7641c,
                0x592bd459a7ed415de10b254559f7f5247f2c09566f2bcf024a08fa2a6022421d,
                0x301517c58a7cefe90a14c026c9a465b31d411ef889416e0b8597131e69835019
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 49
        ark(
            i,
            q,
            HashInputs11(
                0xa4fff6018aac19ccae2aae7e5e55f72e1616d99e7d7260bb65c79a091741d605,
                0x5a4bb0b633d783dd32a918ac112ea5a6a4cc7291b51b53e12f41861f006a2d19,
                0xe787411ff4092e0d32f72f5da4b724676f6fa08799c9b3a2f94ca8409f4be229,
                0x2718d08a63f5d916cb832616b8344d1123e07f4c2ef8816b2367c829414e7b00,
                0xb3c69d46c560b171f34676a677c908572463a5816518006cc1522da30483951a,
                0x75bd57e3cafc8c3605b3899a167068585f2e3abaf4d181459f1fa588b8d8fb1f,
                0xd9879d4442250ce66003eb654c34f4d3a41211b8c417d961d2b326d98a90bb2a,
                0x2f7fde4e571625dc16e45615769f2c71db0d96f6787bba039cfb3aceef276402,
                0xacd2aa2c8fba6a5356ba0e3cf791e492de2c8a9d482360fd56007ea1079e3518,
                0x93ece689e991a7c00d5991399176c6069adbed4796cd106120db98b82cde4506,
                0x5756a8b021a590e60a4b0008d192b163d379ebfa0a411203015c86b63d03e60f
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 50
        ark(
            i,
            q,
            HashInputs11(
                0xa0f07625b578d61be3080319b15425e08212c3f6e741f68e9cdfb9c7d062ce14,
                0xcadf089c32896b8bd76b8698781f0dddba4d0d10b24c3d82fd2e16660fa1d102,
                0x2deb3b0417c9d76aad7ce236c05414b968af3ccda1ff306735228d0a3c1c3d2b,
                0xa3c4104a34c7334294f4b5f58d3f7276b170ed1b17a3dfa5fc51ba6b7999391c,
                0x187ebdb0b76336209e0381b0b16b4c99d49e9014af26f87cca0990f148033e0b,
                0xcdcec5d1a0e4e7fa545025f935e9d6870bbb59ac5e7533cb4650d8b17f2e882d,
                0x9aea8a659097db9e68a8fdab91189f34faa057cc6401551e64d8f2f8a84f0919,
                0x8a36f23e540269dbdb7f6f2350fe4885f0962f90edd856f34a9c252288eb731a,
                0x64cc18ee4ff2ed9cd8d6a438379076b3f543266d186df962e58723efe11acc28,
                0xc34bea9726c68c753e42aa754eb0f2c56720d6e24108437be5ae5caadf8b4d2f,
                0x61551b583188f34d43b61e80e2fa14a3ca7726c3abd8361c9c3f4384dc429327
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 51
        ark(
            i,
            q,
            HashInputs11(
                0x251f1e22c91ea5fbf36395a11bf10663df03549111c51e5b5f065f891d110800,
                0xc5facb54cb0d7f6fe60a7a319d3b71b62c06d75112a78b0585ef21e90633240b,
                0xb76021de77c26cebb035415adb5f4a691e4e1e4d070635e3c8680e8e39b38914,
                0x49eaf58260f61b300bbb88d5c28b43cdeb189bf600a040a3e3d6ecb89d28611b,
                0x37fea06ae7e3941255adb592d63257af303dd9c3382348a070c56eebb05d6b04,
                0xc1b4d72bbd98a02a08e699eb72200c90edc539658fa68b1400bfaaf25ec2ca2b,
                0x5145c16ce2c16a9f14c0ef40d96f1437d394237a68c84bc0a88a35dd25cf451e,
                0x6f32d36de52d0a879731131d38227bf75c5446382c7954f92df5f2742c90c80f,
                0x4d2d2cecb2d61c1d36c156c9a58e24ce0f844a66c838a5ad21283d72542b2324,
                0xd67bd576ea2a52913324aba82269fbee0f7759d508e1b98860feb19ce2a6c62b,
                0x132e8370a73f41df4f77f69cb9f9c1914dc20f80b974628e418726f147ad0724
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 52
        ark(
            i,
            q,
            HashInputs11(
                0x03e55227bdd5791b888107a1e27ae97f098dc4d17d00d7457ca21138c0ca190c,
                0xf5739979977b218e1b443da1371547070cc8fd1ad64a5e68cbc3f899fde40b2a,
                0x3d99cdbca1295cfe22f6d4ca29f0ad0551b85d5ec5cab95d32fde094c536cb19,
                0xe3d164b44d4cdbe3f80d830e7e5c274a7cb21a0540cd6e25ef54f5f79ab0cd1e,
                0x9a29e33fb8e56b53e9aa1f8044beef9236a0799081c99f193907b6dae48de61b,
                0xe1a912d2894a3073930b82d352310fbb5be6fba1940f5ed61f40cd044b97930c,
                0x6843ad25f7ae77a55671a02e754b344dff0338c3ad2ba3149cdca656cba54a2c,
                0xa82d125f20bddd7b170699cd67ca34f928662596fa002c30dcd9c625612bf026,
                0x6e22a9c7d46a6e449be0499297a41b3aabefd58f9e6f608ef7e05ddf26565713,
                0xdf1c2a9141aa83b902e361d0624993e07e488a89784461af626d76549b85420f,
                0xf1754e5405be986514074d4a12eab0abe401e7832b4f2a7593ea2a9b031b351a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 53
        ark(
            i,
            q,
            HashInputs11(
                0xfff4b00f33a149540714ed36f442df6739b38ecd1bb50d787b6ca92d87185f2e,
                0x30fe173607fcb36e98a3d975918fe297e7d8fd596812ceb5791eb06fc340ca2c,
                0xfde738fd83f40e3427aa5159e15d3b2b91bcbd89f98699941ddfdebed6c0410d,
                0x5a052b42beac365eab8b649436de04471e4c4f67bcefe35e2a184f42571d2318,
                0xef53e3c37a4adf229594ee6e1e3399bf26766dca4f2c5480ff4afeee1067c22c,
                0xc09a50bf0d5b2a0dd14665fc2be6c60d6b073990ef41fb6d978d45f9b9465221,
                0x365aeaed98f5b44b8a228d5bdf8e4a6cae2eeb03922b714557842f5a9f473a1c,
                0xc38e488fb75fb246125820405610b586e6cb727e946bb49e42dcfe4e4b72f520,
                0xe2c1cbd3724afb4dd119fc398e7b32f34a70301bb358f5c7a7a42ae31874dd03,
                0x44b2998a9342b2c86dfe48a3bf4e09e78e7789a88e7052efae1da2fc49591729,
                0x81597dea9474a4599d05d48237fb72ba5e088fb3af94bbdf5dceec439bfd5726
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 54
        ark(
            i,
            q,
            HashInputs11(
                0x6398c4be85c901a824655ac1e879a831b37f54e894c44acd79777e5302b4711a,
                0x3bc430fb8d2df1f89e7d8e81617d7a09a0ba37a7da3d399e001170885288be29,
                0xf96ab4b1555aabf246d4075b0b5919cfab104bff762a88f641c7cb884a05e302,
                0x751b72f80948fc7b5876aeb74e74f958eaab7e8f8c5e713f2fe3a5ce5cd3c22a,
                0x0e0a6a65b130138b318899f3328c634ac547ac9f97f2f228f2999972bf5c140e,
                0xd11d51e5619e303e04899adbac8e0ec59b0ada5ba85b1c23b8836afda635d429,
                0x24a9b96231b8c2ed1f26913d06618af483f6d1a4547ab835583fe408c7932d25,
                0x10fc4beb4d94980a7232e53235247f3ba448f73aa24b2da90de5381f4218091c,
                0x544e9f7e76941453e48b8297b0e59a0af4ae331213e93a476a98892918dbd621,
                0x8f2d0111083b5ac70b988ffc49b6ec93ea8076cb5dc913f178323496a74a3f13,
                0x78a54a3d1d59a28ab54c0716f7c5a1a57325ffcddededce1eae6666048e1211d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 55
        ark(
            i,
            q,
            HashInputs11(
                0x79631ee1f02935d26455379f8310255eac5663aafd771461fe43e4205542a12f,
                0x6cf1a08f24b7afb322dad04654cf70e92be67c4f4f917812c75b3f69f0c94228,
                0x6e2bc7fd6d45707d41459dfd6fe70ef5c1573709f549862115ac9af9e08a802d,
                0xd72f85b405704b7e9b76cba98edf4b2441314d3c42ff461ba4cc04e0c2f67a18,
                0x6c613ee19648d5dfffcaa52f616bdbc41800ac3578706c6d1e6070fc08f83c24,
                0x2134dbf3ed26445e843cfdb6f5cc2f69c38a11afd95af139a9820c519f5d4f10,
                0xf574baabb607babc98974e8072b2649eb0ad335d4a3c55e16a0cb30161a4180e,
                0xd4b1c917bb4ae69d659a3c7a5763026e36bb5c3e2a8a81150409006be249c61d,
                0x9ab753d6d42616486f59f079ed95dd0c5c2109ab4565c437a5e0befc299c522b,
                0xaf142049f2ba5dd57d1a91c7ac801a1591bba9c02384183969c0bd190b066a13,
                0x8cf5a76656bf4e761c1678271f4c476a06bbe0273474bc2e9d7e630f4f864824
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 56
        ark(
            i,
            q,
            HashInputs11(
                0xb8c4c803bd3ba8c9f2e25e2a5b60f353dc348aff9fd7606777a4d0d7a5e69b23,
                0xc1741f11ee0e014ed5e8844a6faa942afd907df5368406ed4042146f12d2431c,
                0xe40fa33d56f78264fbfc85fce594e35fe8369c84378931b05452b3bd2623730d,
                0x73e1b6079ee2c4c4206f1b061fc3bbe0d4a4e4d3c100c7d80fc6901bf332df0f,
                0xaa072492c4a8df3858d624e708417390301e05c29c12268435c590bf932dec24,
                0x1a9c056391ca175546cc535c8fafdb030cf3860f9019c863226e78140f480f0c,
                0xab08bb4cc4e8d6bf0112f00131244ed1abc670d170d2d89415da97f32961ab09,
                0x93c2bbbbc31345aa91de4afe0043039fa11a148c0b46633474f15bcb09d4bb0f,
                0x7db846f12d4334fd150bb20e547cb0436774f8cbf242b98609ed2ac6d6d91918,
                0x7aaa63ee4266c6652dee0f8379d62fe0e3520ac6b6c9baf610ce262a3ef68a1e,
                0x531a9ba174bf7b3e7099b2c1cc1dabcc21cbdc44743a11f4607ae8e2cc809d2a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 57
        ark(
            i,
            q,
            HashInputs11(
                0x960ffba43f1f562d71a7cf3a4eec6707d0cbb349a67f1ef85cd98850fd3df817,
                0x855a9cd601db974e5033a449b1aa16bfdcd5b646dd6906911086dc9b34106f0f,
                0x98a0780f585bda5be4089d7b5cfaab70d5c8dc73ea73dfe0cbc74acb70a29e04,
                0x7c25fa5a0830a7a993cb229eb5256b1268f4f7bc808ce72e71793fcc0526f60c,
                0x5c4be97e5b7fed8863913d873783933a5a54b2353a1dd7790f670046ff9c3f2a,
                0x6bbbdfe40a1a642cb45a383b6660d5405e2d9cc0776be3559c702cf21c64ef28,
                0x4b3629c07f4ae034c3c25001bb50584bd5b0399873476563e1261b710331c600,
                0xfc05937e5f8d36a14ad04672efbadb038e7162c987399d4f981011503622ed12,
                0xbe117d2a3533955905938f1ced14f3384bb5ecd2122f1b649981c4244f717414,
                0xe95c1ce6ea48cf9f53037ffdd64a1b6fd7a33ded598b59accc604d6e27c3a928,
                0xc1ef545a8a86980c7d8005a8699fca23777e993c5b39ca07dcce7b2f7bcd8c27
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 58
        ark(
            i,
            q,
            HashInputs11(
                0xd0d59fabc012a60410dc79114ecaeadb6abda03113c3d054fcfdb4c281a58e0c,
                0xbfebd09dbb4864d8d2c2cab873acf1e1c8e1e27c51eacc15df8d0ea22262d717,
                0x341b3c5e50419d26790c89bce0ab4a238a6f5db26a3f4ee1331da0f7fb62f704,
                0xcf76ae2e6ffd3e9eb7ba641df894551cebd38bdb326584cb3db408590cc09d1c,
                0x1a6548a0355fb15cd3b13e1273304101128fe41bfbc7dbfb96ff262be875a201,
                0x0c279a94d8f8836a5078ad8e6a352792335825751b6a89022113ffff58ab4607,
                0x2fa61007dcc775dbc10e9fe7c3d925dc9e65d9e9fa2e3abcecd1eca5c099d417,
                0x982e68bde651bf0fc3c143beb0f6cefddc282bffd53bb36988b9d54b7031fd23,
                0x7285ef63064991b8406165c394b16e6d6b24d4f38f8d856c355cdde5dc75a22b,
                0x9d92577dd1aa90c845d2a1a464ce3516a9155958751c4593bae2bd90813ab410,
                0x915c5cdae7a5cdf41ce52a12c7d7202dc63063eb58ee668d325117a6eb57b509
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 59
        ark(
            i,
            q,
            HashInputs11(
                0x139ec974ad7dec746fe3807ce41461a443953bd854d408202027458da7e5932b,
                0x41fcdbdea21bc9a484e4f71b95da99762f2358cfb6c51517ad53de130b2eba19,
                0x7fae60b5ff2c5a6ee202cf9ccb926e9d229b49b8dd2b2391ced8e559e5b5ca03,
                0xb76a325f4d73c36c1c8a897492121a6133adae5d6e39a53c92b32c7098bcc32a,
                0xbd11a256ec0c4af7a8e3b121eae45ed5e90eff4a3427f5822d1cdc07e9bf3918,
                0x9740a0d17ea8ce86a9fdbc280cb01b4e592efa1f30ffff78a6292e4bdf251815,
                0x1b13ab76d2279c294bde08ae2901da4ae1eea5f8afd3380fa9a196fa67da1e24,
                0xd4f7225ad0af6e2e9912145cb86d481f9f6ff566f907780fd5748f9f8bf13607,
                0x0fc70b97ad7f50b73c9e63980df0608980a69fa96bb3ca0c6214887aebb1e600,
                0x2110e65baa3848eaa69570b8f175e409f76ecdc4906e2c32a4e9ca266907750e,
                0x0ec5735d6acea1d6ade510cf718be5a56d7db26107abc72f6c660d201719cf08
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 60
        ark(
            i,
            q,
            HashInputs11(
                0xbc63a49c225441a861e93843498b57c02ee212fb6f3e3c54444ee35dbe9ce117,
                0x7157eccb1d09843657e8dd477a513f14be1b44721cf1e41f2e26eead05f84430,
                0xdc968978767e355774fa9758fc3ccd261ace447ac941a8271647b17424deb707,
                0x33d5ac31ed5a62a33af996597460e35e5e6c3edd25b7db85f64128b167467825,
                0x80dfeeeb8dec1bcebc0254de5bfd4dbe5ff25654219df73c40950ded14c3eb15,
                0xfbc81f9656adb6b84c28193c66c7caab2a9dfcf376db729ee1fcf10b4497cd02,
                0xbff08839afe6fabd294657fa356058ddfbd27ecb3928182a97f2a4fb9d6d9213,
                0x5d5206c5b86e9542146f6d6fd310ef2cbe58153a5c961a4ee39dede5979f6c20,
                0xc538bb6f91057fc286b6ac9c241e23c93f032ac88ef594b0ad82f3f5601d4002,
                0xd465bdd3b4a2a9a1a36bce0e5423bddf973cc8b25025926f2e993ed5d4fa701e,
                0xadb3c7c5e4a375c8e5b1c4ef6fb799697370c8f507fa744fbaca0caa24337a11
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 61
        ark(
            i,
            q,
            HashInputs11(
                0xa1998a09000391e1946c884b5a879f328148326478f809bf867e915105b6460e,
                0x8a6caf7fc9656beef4ea32d55197be63277cf930b498059b325c958b51d91509,
                0xb157ea5633aaa1f57c2036970bcf4c6831307e8a2cd5c9dbfb97b0f7b3b81a1c,
                0xcf78c8a1bffa36ce67da0a95ccebec6550ae5c9e9ec153e03bef5475508cf403,
                0xd7f75296b7fa80ed5f7ad0d9c008470ec389ff84820cb707b3607440d1e5ee0b,
                0x4a3d250de308931483c3e69c93f2e93be58c32ff1c73dad1ae2618d15db87b22,
                0xc39e7d480aab75003645efef96947ce90836669a3cef91184d417dce34c92f06,
                0x8bc813a41ae91a1af2866f2db5f00eac1a4fda732e54c8013b5609b1dbadb822,
                0xa158f26b2f3b651f2d6555b1104d7dfea466ac59a159aafc502b4bcf26d8c601,
                0xb7edabfce86eee880c57ef8c58b99f9a7fe12b138388d433703040043aa0dc0a,
                0xfece78380fedde72187bea2c0482c4df907a8e61d99985cc4c5fb4d56de2c214
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 62
        ark(
            i,
            q,
            HashInputs11(
                0xb0d9c50cf32b25f40880d720e6b301dbf7a7b44da3ead80f238aa83dd5f55f1a,
                0x398d9a7f224bd5224d0dde905b618821856f437d03c2e407d2af7c1fa55e172c,
                0x5a37bca43eed918e62f6cf9a0e2d43b62b20ef49d3724dfe46f7454cb25ab410,
                0x7c0c099bb62d8ae342965e347c151cbf691ed5d95933d5b9c919d9e1c14c232a,
                0x8f067b1b139e7c390ce4972b303007ff4ca869a1ba4304f8f62efe8fd444dd16,
                0x0de34dceb8fb06eab68a71c7fb9b97b8f4e84053fe845715ce31b1c6cb3cde28,
                0x9acab78848c01a807e7e3135409480c511d86bad4a5eb835c3fcb9b0db5d651d,
                0xf18d6b62942e6a95d647be71489d239070d7bbbd6088599dbc26910c6859bd11,
                0xa22fa91241c6baf24ccc369e793c230178dc633094e7d22451bac889c3ba0418,
                0x2203b1044ba598c89956ced2b25473653b71df68d14f11aea9dac6a7b996361e,
                0x3256d71526b7afcaae0145c9c088f979aaceab0b9a66184f9bc063682036cf05
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 63
        ark(
            i,
            q,
            HashInputs11(
                0x16db419380281f09ed68d22611ca4d19cb706223635a0fdc95209db5d82c6a2f,
                0x197a7ae91f8af3c019c7fcc6bdabb901ddd05d432a226afe4957f96f438ed704,
                0xf1def1ffc5493c10d859bca7dbae4c7114a94c0df811209cc82b6a60cf492604,
                0x8b0a57e2d754d0d9d1a2504321db400b0d681f02f12fdc07fb9086bff5bf932e,
                0x9f6f6655df2e3f37fcee54500212e2b98c70feb6add6ed9419e078072430300a,
                0x84fac2271613008ca7a68815ef7fb646fe25b17040ae0ef248c276c90a9d4529,
                0xdaaf00f807f63b2ee5d269eb2665bfd242fecade51a4decb5230d7aa7043bd17,
                0xe42fb7496aed6602f6cb78451eab4e3be36c61546a009df4122eb4e212f1e522,
                0x423adaf762ddad1249687626b698ac13fad7d25fc526060862de3014cd92f127,
                0x4c390e2957ebf99c6e79212a2633f8d3399b0b845f8015fd3c4ce5ff15070015,
                0x71e9608f82956cae92454c700c0112b64ba082446e5c51448ad95f23f0babd1f
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 64
        ark(
            i,
            q,
            HashInputs11(
                0xd969035dc69d69b829e07bfeec22a8844a767c97c1edcb4b6509e67e5569d914,
                0xc9ce8a210b8f77ddef92cc95f5525e21011cc58ac21551e54a35a48a2753e60f,
                0x900deb4dd78d4ad2f538dc711513e0c62bf5c1deea8201eee8df03e092f1641a,
                0x9bdcbf3fdc938afe36faed772f7434c53d2e7336f9990f15461cf3e034e62c17,
                0x6b615192edff4443b2a45032de1a09ee7c0847316daadef6ef9b08742089c90c,
                0xa3b22bb420353a3c5c8593c327a4cf34408482c0df13f2ef23e865472df44830,
                0x0580f1af10f020f43f4ce71711593a6bc574239976e11d9bfcdf658aabdf7520,
                0x2ea47a622b8adbe0c297b7a113b4116ed09d73927d7fe93cc4de85c00b9ac72f,
                0x27c8e84863c414efde427aae0b6cd6e4a85e60a9bd07d1e5efaf23e3b6ae6330,
                0xa8da2d0adeb0e2add7e6598238c5f773f20d97ab6059a884688f57f2f65f432f,
                0x81505eb5b30ca70392750f72873c275def9455810f97d5090a6389110e149917
            )
        );
        sbox_full(i, q);
        mix(i, q);

        return i.t1;
    }
}
