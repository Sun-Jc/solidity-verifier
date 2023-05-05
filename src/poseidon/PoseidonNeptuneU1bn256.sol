pragma solidity ^0.8.0; 

 // This contract is for debugging/testing purposes 
 library PoseidonU1bn256 
 { 
 struct HashInputs2 
 { 
 uint t0;
uint t1; 
 }
 
 function mix(HashInputs2 memory i, uint q) internal pure 
{
HashInputs2 memory o;

o.t0 = 0;
o.t0 = addmod(o.t0, mulmod(i.t0, 0x183227397098d014dc2822db40c0ac2e9419f4243cdcb848a1f0fac9f8000001, q), q);
o.t0 = addmod(o.t0, mulmod(i.t1, 0x2042def740cbc01bd03583cf0100e59370229adafbd0f5b62d414e62a0000001, q), q);

o.t1 = 0;
o.t1 = addmod(o.t1, mulmod(i.t0, 0x2042def740cbc01bd03583cf0100e59370229adafbd0f5b62d414e62a0000001, q), q);
o.t1 = addmod(o.t1, mulmod(i.t1, 0x244b3ad628e5381f4a3c3448e1210245de26ee365b4b146cf2e9782ef4000001, q), q);

i.t0 = o.t0;
i.t1 = o.t1;
}

function ark(HashInputs2 memory i, uint q, HashInputs2 memory c) internal pure 
{
HashInputs2 memory o;

o.t0 = addmod(i.t0, c.t0, q);
o.t1 = addmod(i.t1, c.t1, q);

i.t0 = o.t0;
i.t1 = o.t1;
}

function sbox_full(HashInputs2 memory i, uint q) internal pure 
{
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

function sbox_partial(HashInputs2 memory i, uint q) internal pure 
{
HashInputs2 memory o;

o.t0 = mulmod(i.t0, i.t0, q);
o.t0 = mulmod(o.t0, o.t0, q);
o.t0 = mulmod(i.t0, o.t0, q);

i.t0 = o.t0;
}

function hash(HashInputs2 memory i, uint q) internal pure returns (uint)
{
// validate inputs
require(i.t0 < q, "INVALID_INPUT");
require(i.t1 < q, "INVALID_INPUT");

// round 0
ark(i, q, HashInputs2(0x04769bc4c9479df707137bee476bd1d3db014a8ea308528c1fd579d2bea069ca,
0x12bfedec798d9f25a58d1cb412186b2213113b20a086b46acf9f3c0a2a5b022c)
);
sbox_full(i, q);
mix(i, q);
// round 1
ark(i, q, HashInputs2(0x0b2e3755facbd1d2be364175cbe763ae17bf24475694bd637ad847f504c44485,
0x1d667f33008d642014bc0e1eb24249b00af5d704bac15ce160047865632e36c4)
);
sbox_full(i, q);
mix(i, q);
// round 2
ark(i, q, HashInputs2(0x2fa908c8391b3f1f937847046dfc3c08a7df72ba85c571abed5a556f1cf2c004,
0x087dc1af6ed09d74eaaf3e59a70dd626fbe8a6340623873c3d2465117528956e)
);
sbox_full(i, q);
mix(i, q);
// round 3
ark(i, q, HashInputs2(0x04adb3f2ac4a553b2e741f23c15b54014722500ebda085c300ca24353dee488c,
0x0d0286b031934a330359d89acff4eef16926fd8a763f7841f42395c712418c2b)
);
sbox_full(i, q);
mix(i, q);
// round 4
ark(i, q, HashInputs2(0x2eebcae20116a91dd167f18b2bcb943232e5f4c35bf0748132a4783fb0098d3a,
0x0da4eefb88c763d0515337fbe65eefbf9067622eac8d49a3ee11d598de189e8d)
);
sbox_partial(i, q);
mix(i, q);
// round 5
ark(i, q, HashInputs2(0x302fc0dcd271be7e85cac730fc03eb530c6376cabcac67474080dad042ad8c1f,
0x2a9c790181f72ca6479962d72141adc9e5c3b99b25adfffcbd91d785aedd3628)
);
sbox_partial(i, q);
mix(i, q);
// round 6
ark(i, q, HashInputs2(0x2c769ab6abfb20206c503f67c8734a8fc001a149a12ff519d70e5db4ced0d667,
0x2f374d2b7c73d401bd62243119ccef585c19d8925f595c3718c146b9fba9a8ac)
);
sbox_partial(i, q);
mix(i, q);
// round 7
ark(i, q, HashInputs2(0x0a1c99c55e92f59ca1f58f1556448f81d9a1faea16df01205a7645141d5be679,
0x20093d09925d9dd858efafc3b3e8b9db40ff106e21f94cbb671215ef7c47dcbd)
);
sbox_partial(i, q);
mix(i, q);
// round 8
ark(i, q, HashInputs2(0x02fefbfe3a18d89f0f3c990791b3bb1f077d9576d20ac898a4bb144dd820db0c,
0x1245c02c54b0b033fad7109ea6f6381168809ab2f392bb510a0b97a303f8dc63)
);
sbox_partial(i, q);
mix(i, q);
// round 9
ark(i, q, HashInputs2(0x0cf7458f659c9847bfafa3668b9f02e6c9f43919c4ab7fc3c0e98d0df95ad0ef,
0x1635b9f70e1ee4d18f0aeb6df4429b1f34e0ce192c0e6a189de6ca2542dca75a)
);
sbox_partial(i, q);
mix(i, q);
// round 10
ark(i, q, HashInputs2(0x01c80f71c8f3f7dff7d1aebfd1acc55d2e3005bef1ce535c56fcd5ee9701d3ab,
0x2838dcfdf968dcadecf994a1497263d68e175ab28d366e85ca770e50605f1894)
);
sbox_partial(i, q);
mix(i, q);
// round 11
ark(i, q, HashInputs2(0x052081d9905913cf97661a82469325b59881c40a57a425c0cf973db47a050fc9,
0x1d6afad127110a45f751006fa1a44f5bcadad658aa1b3b15a6ba0ef986deb1c3)
);
sbox_partial(i, q);
mix(i, q);
// round 12
ark(i, q, HashInputs2(0x1c237e97333e91ac9cd55a7a3e645ce0663af61e4746d83b04dd0dfb0decd8c2,
0x2704972deb12905c18ae92d46a125018f22e003907f2294e1dd5299df58e3d73)
);
sbox_partial(i, q);
mix(i, q);
// round 13
ark(i, q, HashInputs2(0x03ce12f4cdc3e055739ac572ef5c5e0cad61585939bb03ba79207b640c883b28,
0x05a6fa9735735f06172e12276f8a2a7493a1b70853c2991ec067683014f83e7d)
);
sbox_partial(i, q);
mix(i, q);
// round 14
ark(i, q, HashInputs2(0x1507a22ea4c0553adc686bb603084ddebaeee859095586b1ad2531e6f5b91dd8,
0x2e658f3780d12e7128aa2f73955fc2cd29aaac508b9bd9f27d7d57d22dfdd249)
);
sbox_partial(i, q);
mix(i, q);
// round 15
ark(i, q, HashInputs2(0x05c77c2e73f746aceebe06a3ffbb86c8d8baab49fad1b07e06dbb991a33c5431,
0x025db6b2ab05d7aceeb9b3ada36ac24fb72fcfc5d89d829d4a99b28aa98cc50f)
);
sbox_partial(i, q);
mix(i, q);
// round 16
ark(i, q, HashInputs2(0x28afa62ee66d68ea740960b39d82d55c4b556d097aa067c54fbf34c580a936a5,
0x0f4e67233245bce44aacd76e854ef7ee0cea3ca30d43cb414608d4aaa87c1833)
);
sbox_partial(i, q);
mix(i, q);
// round 17
ark(i, q, HashInputs2(0x2113a2928e470294b1079f6319355ba1ff6bedceab3cb0b82a965c582066f467,
0x2137a524030ddd7ab261770f7bf76df50dfa113dc631a6eccb233ca6b5b8d76c)
);
sbox_partial(i, q);
mix(i, q);
// round 18
ark(i, q, HashInputs2(0x0ac05629b278df9098a01ffc461db26f5fe181eea953edc40c9290367894ded8,
0x05884b69f346d308425e4f10f2e51b1c8c6a2268dd107374ba2e5bca120949ee)
);
sbox_partial(i, q);
mix(i, q);
// round 19
ark(i, q, HashInputs2(0x040b9d7636ab03c610e5ee2028bc0e95c680b2127453f9f11db3bdb9547a795e,
0x30178ae2417ed9ae53304fde2e6b56569eb0cb772ae2c0f5dec76908a3d2fa1e)
);
sbox_partial(i, q);
mix(i, q);
// round 20
ark(i, q, HashInputs2(0x1ae7c1885cf793435cf9bf0e702e2efb221e2ec055628cb3a323cec3ce80148f,
0x1b6be880d8f10971d91f980efd1cae951b817af58926d8b28707b0c7b7913485)
);
sbox_partial(i, q);
mix(i, q);
// round 21
ark(i, q, HashInputs2(0x103ca7e6dc3fda66a8244f3a42ff5a3cd7ba3f003ac08d2b082c59696409d0dc,
0x06d00590c5bb6baefda4eb377a32394bfea9bccee4f3ecaadca561910f4cdebb)
);
sbox_partial(i, q);
mix(i, q);
// round 22
ark(i, q, HashInputs2(0x0eeab742770f0b5698982e683a9b7438dec5cb2691ef711028a8a9668df60f73,
0x063828c34182e1511df865777e2e9a38b83b80d20ef7fd3f7784d00f5fe62a9c)
);
sbox_partial(i, q);
mix(i, q);
// round 23
ark(i, q, HashInputs2(0x12f958f82e4b4add0253ab2edacc33febd38e9bff4622d84db472d645e1c36ab,
0x0a96ba7df5aabe26863d6ea8c360b0a4764ca5b725cf680b61a60df676c56608)
);
sbox_partial(i, q);
mix(i, q);
// round 24
ark(i, q, HashInputs2(0x23f3957c39e6dae20a551ee6ce060692d1d91f39133e190ef482bce814d26fb4,
0x282c3c3c13b70adb760bdc89c3511363f8e6509fc398a26cf3013ea6c099e92c)
);
sbox_partial(i, q);
mix(i, q);
// round 25
ark(i, q, HashInputs2(0x27fa6ec3cdb0b6ce267473b7627ae71b8f8644f84499b5c7ca5f399755c9e479,
0x0b232d3b72c0d465fd09b6d4bf49d39f6ca9e1a7c24151aeb6083f2f0a1b36ca)
);
sbox_partial(i, q);
mix(i, q);
// round 26
ark(i, q, HashInputs2(0x2321e6e47d6812640a84d35a3e0d28ba3e7995347871ac9341a24bcea5779310,
0x08851b4ec8e524c493d16e76d58ce64787c181389fb6c39a2daa60180880a19b)
);
sbox_partial(i, q);
mix(i, q);
// round 27
ark(i, q, HashInputs2(0x204eb77fee1b2ed47c78a0ee42ebd31448f5130961438cdc892e416c544f2699,
0x1935a1b60c4e047a2dd108a5bba8695c30c8b03aa748e2a97217636672a6eb93)
);
sbox_partial(i, q);
mix(i, q);
// round 28
ark(i, q, HashInputs2(0x2b364607d5a4a32cda17fa98d56b14618de10cda60b4a94276dc3abb4bfc7b45,
0x0b6dbeaadf0b46ac1518e03eddfe8f1356a694d51455f36c7440b06eefe239d6)
);
sbox_partial(i, q);
mix(i, q);
// round 29
ark(i, q, HashInputs2(0x08841388bf2f09a161a664bea308c37c8aeb93890e55cb8f281bdd5cd3d1c42c,
0x102966a730b64bf85f141c295a1c4a3686eafad0aa542e4afddc54228cccbc8f)
);
sbox_partial(i, q);
mix(i, q);
// round 30
ark(i, q, HashInputs2(0x1d96f9669fed7cc7c2f11c99c203072e708ddc39dda8c1f9721bbbe2e1697a81,
0x01fe58f4b62927110730d486000a1fbafb4e4f0e565755873794c501650eb81b)
);
sbox_partial(i, q);
mix(i, q);
// round 31
ark(i, q, HashInputs2(0x14048890b3fe6c9f1fab5d507e84586177da481fd1ff2974ed645f099fda3cc7,
0x2e3339c662847744165f53811e99f7b01389f90900d5117f9fc9b003dd3f704a)
);
sbox_partial(i, q);
mix(i, q);
// round 32
ark(i, q, HashInputs2(0x1be7197f580dc85f81c7f9a1b6662301e5d8f36b737a1cbef2166e99c95fdde6,
0x1e5ae7f5f44a6de526f8ab7b130ebaac436b70fd13b67df66a95ab3a8f21fd00)
);
sbox_partial(i, q);
mix(i, q);
// round 33
ark(i, q, HashInputs2(0x058e8668509836709d2fb1a11fa9c3978dee9ac93c4bb47d1ed5f96a1df2cd2d,
0x05352f2187ae87aa474cd5f73813a70e2520b5d8a0c178b1f588d22cc0333c3a)
);
sbox_partial(i, q);
mix(i, q);
// round 34
ark(i, q, HashInputs2(0x04d6b7431f020efd841def9450ae48b47eea8765ae39c1318811c0489ff35ced,
0x2f01c2bb68e9f8bc1d7ebfc45db791e86e6ba38c6d88541f09a93239be51c1fe)
);
sbox_partial(i, q);
mix(i, q);
// round 35
ark(i, q, HashInputs2(0x0c2e45e83185fc73a816a1ac1ac4448a9f5c5522c6acec3420c06307ac16f324,
0x2084f7e35278fb857a8cf92cfad72e1b10bf7579ef67b23e09f226c3a9af6f72)
);
sbox_partial(i, q);
mix(i, q);
// round 36
ark(i, q, HashInputs2(0x1f044fb79d530f7fc4f41aa9b48e3458e2631a3381dc226459a591618444457c,
0x20c2b01af4e3e9f8b772e91d9b7af965b7838e66348fd271f6a7319c95791f27)
);
sbox_partial(i, q);
mix(i, q);
// round 37
ark(i, q, HashInputs2(0x2da304ce435b57a886befb0a764ff963b72219d4b8b1bdae45c9c26833863563,
0x210c7abcfb2d086df7e2fa87fbb2aeaf1de0b0f873d5ad0a403ac3e9c9d5026e)
);
sbox_partial(i, q);
mix(i, q);
// round 38
ark(i, q, HashInputs2(0x15d8c0aefc9832348bec95e1598446e210e3af8d07486f33119a2490561b27b6,
0x2760ffccf8f86aad2809676225113853dc83bdd31caf338a4772ff2774c1dc0e)
);
sbox_partial(i, q);
mix(i, q);
// round 39
ark(i, q, HashInputs2(0x2cce813ae01e2f767b5dbb3bc45985ee277e8065f17b926578dd39129127faaf,
0x2365491890fc695baf349c542ea488b702b211e33c70559c1d58ad494f69cb32)
);
sbox_partial(i, q);
mix(i, q);
// round 40
ark(i, q, HashInputs2(0x118388fb3b28b4cb1d5e040f0b7b91e73debb52076e007e7be67cb284f81ef31,
0x2deec5d306ad8d8733813d96b2ddcae78dd657cd1fad73b78da4e3912487baa7)
);
sbox_partial(i, q);
mix(i, q);
// round 41
ark(i, q, HashInputs2(0x10c662c0a3478e7bbb15eaadc616f115d6218379eaae04a561221d0dff0c5c7b,
0x2a6a66949de500d1ada6eea3a041d4f04c031c7b7d7b3f8d49ac6ad866535650)
);
sbox_partial(i, q);
mix(i, q);
// round 42
ark(i, q, HashInputs2(0x053474b48ea28517f57840c949e72a2d905ea2040f650d0cf8699584962ea60d,
0x053d1e2e85806d5846753e5b99b69a73cb4ec77efc6994512775f77011f24c5e)
);
sbox_partial(i, q);
mix(i, q);
// round 43
ark(i, q, HashInputs2(0x0b3b026f279bef88bc0a356e05faacaca58f85c4c126def8b56bb951ab5e80a2,
0x2914d121d35612272ce5d9862c6360ccb69de8b2d7e2c8221b4239d718d3ecf2)
);
sbox_partial(i, q);
mix(i, q);
// round 44
ark(i, q, HashInputs2(0x0576369b59c579d4bb024610290e25e96aa1e458f9d52322f27ca91f227c8176,
0x1ced0531ac3fd54767f09558fab5b62f5e05649708c0277ae1d03acd2625f6fb)
);
sbox_partial(i, q);
mix(i, q);
// round 45
ark(i, q, HashInputs2(0x1fb2d33e4f7bf4b0818d21fea0d275132634ebfd9bbdfbce926b0d8069509495,
0x0d4a33b8941880e89cd7ff38831acc9f42924cb607f4a70aebd41b680158b748)
);
sbox_partial(i, q);
mix(i, q);
// round 46
ark(i, q, HashInputs2(0x1006629723a1688a1594bb5903d597c0780174d2ef5883cd58ad90fe673c211e,
0x2b3f99934990f5839fc18a12f8125ce935bd60b13d23a978074dc863e77f006d)
);
sbox_partial(i, q);
mix(i, q);
// round 47
ark(i, q, HashInputs2(0x16ab3811c258e8061746976c8c0aeebe8b2e4a03584d54010caca1de4656571f,
0x1ff4599c3996f5cd1b49089823ef64d12bbb6d73dde7a16a2af4b34a33171ebf)
);
sbox_partial(i, q);
mix(i, q);
// round 48
ark(i, q, HashInputs2(0x2cf605c2b515073a28cec6f53c70e0cf32506d59f2a0bbcc9470b389f8b636a7,
0x121b67c99fa153c4b6d8639362edeb38952c615f2c24553658e9f4008a0d2772)
);
sbox_partial(i, q);
mix(i, q);
// round 49
ark(i, q, HashInputs2(0x29f4d60bc3b494194c5f0a49813fce29f641bd41a8d584716cc3ab84fdb3f0a2,
0x299dbacdfc21608c1253a9556ffc34fb16130eb769280a849f12fb25806d6e55)
);
sbox_partial(i, q);
mix(i, q);
// round 50
ark(i, q, HashInputs2(0x2f8ab1e7308bc340ddc61d53cc0973c8f66710d6af4bf2352ddef9013f4d0b94,
0x09f6b16d959bb80efadcf92d03afe1de111a448edcb67b21953f3a0879783021)
);
sbox_partial(i, q);
mix(i, q);
// round 51
ark(i, q, HashInputs2(0x20f70020c2c96946a03876bc8d52ffe2616adcab4dea8360ba2a7553e82a95dc,
0x23064cb8f024492a001bef073a358d201d9ec1282279330bd41aff63dd757875)
);
sbox_partial(i, q);
mix(i, q);
// round 52
ark(i, q, HashInputs2(0x05d7d9a0729425b6a288d059b3f4e9502aad00127f5f2a54b3ad536fb349a758,
0x19b8ebb49dee4f2309e17b1f841c5ceb6d743c1ce0904f5f8a679383376ee030)
);
sbox_partial(i, q);
mix(i, q);
// round 53
ark(i, q, HashInputs2(0x05b28d48cfda56589c9651265c37f0104df324bcb775903db60c3bd712dc0abc,
0x244e3ca03652e79bc21aec1df09757a8abf117a38f750d27cde8f452828eb8a4)
);
sbox_partial(i, q);
mix(i, q);
// round 54
ark(i, q, HashInputs2(0x12e95ac37306432455047acf553f11da22088945d23b62e92129a10b46a06be0,
0x111cf84700a037141c32fe7bab775d398fb53277bfe17f5e3c5606d39efa3a13)
);
sbox_partial(i, q);
mix(i, q);
// round 55
ark(i, q, HashInputs2(0x27d363cc6d8427df51b0ef2e7b14b6c50beaa354e888d638209f5b13b52182cf,
0x049d5d67b68a5cac87d2404ca5aa0512086c788366a3b270982a448ad0304d43)
);
sbox_partial(i, q);
mix(i, q);
// round 56
ark(i, q, HashInputs2(0x1821a74552043b9d2b4fad2489de95f271727eb6268febe9dfd4aebfe4f59170,
0x24aeed656bb22d31c105ee9b5cb32e2f34e905501ac8b50679b22ee875d72b47)
);
sbox_partial(i, q);
mix(i, q);
// round 57
ark(i, q, HashInputs2(0x149ddc9c17c86823c3955c796bbfcc69eecf66953ac7212da5c60a2a9fe5f5bd,
0x2dccc16688ad15f60774a88e6cea307d0f80a02a17cc30d69e5ed9fc50031a43)
);
sbox_partial(i, q);
mix(i, q);
// round 58
ark(i, q, HashInputs2(0x181ca4579b541202e98228585647a7711ebeebe018fc41cbb7b6432cd341e638,
0x114be06183979e000905f1ead31d7b5076560b24f45593e3a5c6ed3503e357dd)
);
sbox_partial(i, q);
mix(i, q);
// round 59
ark(i, q, HashInputs2(0x112d90065be36956c51fd89f1b989256a4d965a126dc7308721fe89675bf3514,
0x1a4588ded2ffb0888d0762891f0e89f4d0ce98d8eaffed26d02e379e3448f3fa)
);
sbox_full(i, q);
mix(i, q);
// round 60
ark(i, q, HashInputs2(0x2985fb25b54038786ffbe5fbde10d84132f2579182916844f0f71178ff9c0dc3,
0x0d2df29a901981740f0496c2b259675b16116421890c18e4f817e11e45023d8b)
);
sbox_full(i, q);
mix(i, q);
// round 61
ark(i, q, HashInputs2(0x012c4803fd3559ac2efcf51a4a5a5a931feecebfd0b15f0aedd815d82e76324b,
0x156b0f7e1749ed1dc652aa585b1be9e91dc4080c3341d74c76c953a276979634)
);
sbox_full(i, q);
mix(i, q);
// round 62
ark(i, q, HashInputs2(0x2eb9aea8d676bf0639ceeed585f7895fdeaac7acb1949a7a3ce909dc6f35d600,
0x07e67c7f3328ad338928ba5626db1062a666e4c3471132a48424997e9be14fcc)
);
sbox_full(i, q);
mix(i, q);

return i.t1;
}


 
 }