//Maya ASCII 2018 scene
//Name: deeelk.ma
//Last modified: Thu, Aug 09, 2018 01:38:48 PM
//Codeset: 1252
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "F41B2EDD-4C85-946B-F4C9-F0A146D18AB2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 16.347594319572014 3.0689083441443286 9.1542040399783247 ;
	setAttr ".r" -type "double3" -12.93835272923906 61.799999999996743 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "99F99EFD-42F1-BFB3-8593-6E93C49F7DE5";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 19.383173929075127;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "53B7A7AC-4110-6E53-BFCB-40BD61497796";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "611A6C9C-4714-F9BA-B60B-6A8E89C43383";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "7013BAE7-4BC6-D909-A7D0-898C8A2EE847";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "5121F164-4C19-FB80-2A88-6BA2EE4DF229";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "5B968EC6-4C63-4E5D-D299-2098C99FECE5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 -2.4957469675467863 -0.2069240418799021 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "A1EBAA08-4BFD-041A-7B33-A2BC4DD72CBB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 17.523554951751215;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube1";
	rename -uid "AC01017D-4568-46C2-36CB-B2BE55A663F4";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 3.1147263219001124 1 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "4B40876E-4189-F3DF-2DCB-99819DDD01F8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000002980232239 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCubeShape1Orig" -p "pCube1";
	rename -uid "FB1ABD43-4214-4570-350A-A3BD79B59A0D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "joint1";
	rename -uid "4CD5E684-4FFE-0435-BCF5-148991CC1C27";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.1103047895500728 -0.34833091436864971 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 63.434948822921868 ;
	setAttr ".bps" -type "matrix" 0.4472135954999602 0.89442719099991486 0 0 -0.89442719099991486 0.4472135954999602 0 0
		 0 0 1 0 -1.1103047895500728 -0.34833091436864971 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "joint1";
	rename -uid "941065FC-47F2-86CD-08DD-22A1C80913D7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 120.29444134600315 -42.20853253456103 -174.86489910910362 ;
	setAttr ".bps" -type "matrix" -0.27062635405135282 -0.68949591306141034 0.67183090310321703 0
		 -0.25762591646349714 0.72428957321751675 0.63955726975364058 0 -0.92757224174681685 0 -0.37364386297754848 0
		 -0.93613933236574687 0 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "joint2";
	rename -uid "96023A7B-413F-6206-E2E1-F88773F98D71";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -111.98933869864678 3.7230119821403744 -47.911767566776341 ;
	setAttr ".bps" -type "matrix" 0.07000328148073251 -0.99754676110041574 -5.3082538364890297e-16 0
		 0.99754676110041574 0.07000328148073251 6.106226635438361e-16 0 -4.4408920985006262e-16 -4.9960036108132044e-16 1.0000000000000002 0
		 -1.1103047895500724 -0.6472585214074611 0.45711702695970091 1;
	setAttr ".radi" 0.56637096468058112;
createNode joint -n "joint4" -p "joint3";
	rename -uid "3B608E3C-4BBC-9C72-BFB4-DA859DAF1610";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999986 0.40440258768185122 -4.0141756954110814 ;
	setAttr ".bps" -type "matrix" 6.1375708873230474e-16 -0.99997509131569917 -0.007058098055404638 0
		 5.8632547320223109e-16 0.0070580980554045599 -0.99997509131569906 0 1.0000000000000002 5.9674487573602154e-16 7.940097464490021e-16 0
		 -1.108748032828337 -2.599897234644891 0.43168371062914579 1;
	setAttr ".radi" 0.56680566463742188;
createNode joint -n "joint5" -p "joint4";
	rename -uid "0846DCA2-4B6E-D444-AF4F-BDA3C5BFE63D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.595597412318128 -89.999999999999929 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -5.1345049469431117e-16 7.8617368347782981e-16 0
		 5.0061956645665554e-16 1.0000000000000002 2.7582103268031322e-16 0 -5.9064282632059344e-16 -1.4137996329210978e-16 1.0000000000000002 0
		 -0.94675651629916813 -4.8914163374873514 0.41550954122817108 1;
	setAttr ".radi" 0.56680566463742188;
createNode joint -n "joint6" -p "joint2";
	rename -uid "179F7D68-4972-F7D5-0FCF-26BB118D4905";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -21.93218302394099 0.62027962025657257 -44.869688733063242 ;
	setAttr ".bps" -type "matrix" 3.8163916471489756e-16 -0.99958018470022258 0.028973338686963064 0
		 2.2204460492503131e-15 0.028973338686963224 0.99958018470022236 0 -1.0000000000000002 -3.3306690738754696e-16 2.0539125955565396e-15 0
		 -0.93613933236574687 -0.66297600577344962 -0.4485405470203806 1;
	setAttr ".radi" 0.53908461394519358;
createNode joint -n "joint7" -p "joint6";
	rename -uid "EAD18CE7-498F-F2EC-174A-B3B18C5FAFDE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.3238309116639866e-17 1.1941449581964568e-14 -0.41491810221432901 ;
	setAttr ".bps" -type "matrix" 3.655495230237913e-16 -0.99976378882391648 0.021733995409217919 0
		 2.2231515143805848e-15 0.021733995409218075 0.99976378882391626 0 -1.0000000000000002 -3.3306690738754696e-16 2.0539125955565396e-15 0
		 -1.0793779413862843 -2.6063949124003098 -0.39767391435927391 1;
	setAttr ".radi" 0.56933196216985804;
createNode joint -n "joint8" -p "joint7";
	rename -uid "AC6BB455-46F1-33BC-8800-CB8DC9E9108F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000000156 -4.2363947990588624 -1.2453642667685161 ;
	setAttr ".bps" -type "matrix" -0.073871685515311841 -0.99726775445670923 -4.4501889040113043e-16 0
		 -0.99726775445670923 0.073871685515311841 -6.4897736268841689e-16 0 4.3396402629837524e-16 2.4633073358870749e-16 -1 0
		 -0.92381220983437107 -4.9462600148112124 -0.34680728169816938 1;
	setAttr ".radi" 0.56933196216985804;
createNode joint -n "joint9" -p "joint2";
	rename -uid "C0D37328-4443-35A2-C3B0-678BD09E7E83";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -18.826656723120827 11.477427749184745 -16.14129467227858 ;
	setAttr ".bps" -type "matrix" -4.7184478546569153e-16 -0.84640220197130545 0.53254418830565209 0
		 -1.3877787807814457e-15 0.53254418830565209 0.84640220197130545 0 -1.0000000000000002 -4.4408920985006262e-16 -1.4988010832439613e-15 0
		 1.1890174903718682 -5.5511151231257827e-17 0.010358798367052446 1;
	setAttr ".radi" 0.50629787343351196;
createNode joint -n "joint10" -p "joint9";
	rename -uid "79C4DA3E-4394-D2BE-D6DC-1B8E6D2935CF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 -34.631548773437615 ;
	setAttr ".bps" -type "matrix" 4.0042537067901407e-16 -0.99908289581766985 -0.042817838392186502 0
		 1.2875803436483332e-15 0.042817838392186502 -0.99908289581766985 0 1.0000000000000002 4.4933288272340257e-16 1.3764487161993636e-15 0
		 1.189017490371868 -0.76628145706916295 0.49249215721009143 1;
	setAttr ".radi" 0.54044653751566796;
createNode joint -n "joint11" -p "joint10";
	rename -uid "75F0E9E3-43D6-80D3-5232-BEB8B940B1A0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -0.60642140853243598 ;
	setAttr ".bps" -type "matrix" 3.8677538203694288e-16 -0.99948011433969974 -0.032241294010959466 0
		 1.2917462686933385e-15 0.032241294010959466 -0.99948011433969974 0 1.0000000000000002 4.4933288272340257e-16 1.3764487161993636e-15 0
		 1.1890174903718693 -2.5466136002078938 0.41619220821843078 1;
	setAttr ".radi" 0.61874853702515109;
createNode joint -n "joint12" -p "joint11";
	rename -uid "289634C9-4598-4374-13B9-06BFFE509946";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -164.47778367047454 15.701541956707501 -46.104163725282199 ;
	setAttr ".bps" -type "matrix" -0.27062635405135393 -0.68949591306141012 0.67183090310321703 0
		 -0.25762591646349831 0.72428957321751697 0.63955726975363969 0 -0.92757224174681641 -2.8494972514406866e-16 -0.37364386297755009 0
		 0.96519482790974465 -4.9119120189493479 0.33989225922676958 1;
	setAttr ".radi" 0.57068252119481111;
createNode joint -n "joint13" -p "joint9";
	rename -uid "E5CCB845-43DE-DFAB-66EB-A5803CD978B4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -28.259268234843116 ;
	setAttr ".bps" -type "matrix" 2.4145316287331618e-16 -0.99766256517344087 0.068333052409139949 0
		 -1.4457758526469004e-15 0.068333052409139949 0.99766256517344087 0 -1.0000000000000002 -4.4408920985006262e-16 -1.4988010832439613e-15 0
		 1.1890174903718684 -0.74084814073860938 -0.52484049601204064 1;
	setAttr ".radi" 0.54453355256759861;
createNode joint -n "joint14" -p "joint13";
	rename -uid "3267771C-4FBB-17BC-E61D-978A8791C0F9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.8451080087672977e-16 -1.1240868155826149e-14 -3.9182488640673938 ;
	setAttr ".bps" -type "matrix" 3.3968305895222299e-16 -1.0000000000000002 -1.3877787807814457e-16 0
		 -1.4258972141845502e-15 -1.3877787807814457e-16 1.0000000000000002 0 -1.0000000000000002 -4.4408920985006262e-16 -1.4988010832439613e-15 0
		 1.1890174903718687 -2.5974802328690005 -0.39767391435927424 1;
	setAttr ".radi" 0.5653568182803056;
createNode joint -n "joint15" -p "joint14";
	rename -uid "9A0A06B4-484B-7149-07B4-26BB518AB89B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 32.177517098910521 ;
	setAttr ".bps" -type "matrix" -4.7184478546569192e-16 -0.84640220197130545 0.53254418830565231 0
		 -1.3877787807814457e-15 0.53254418830565231 0.84640220197130545 0 -1.0000000000000002 -4.4408920985006262e-16 -1.4988010832439613e-15 0
		 1.0389045165027504 -4.8610453862882386 -0.39767391435927479 1;
	setAttr ".radi" 0.5653568182803056;
createNode joint -n "joint19" -p "joint9";
	rename -uid "503D4A2D-4E89-CDF0-E60D-7A9A3EAF4AC0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.0355549961366507e-13 98.011822132127676 57.8224829010897 ;
	setAttr ".bps" -type "matrix" 0.99023933136193443 -1.8474584912467496e-16 -0.13937742508695328 0
		 -3.3968305895221806e-16 1.0000000000000002 -3.3861802251067274e-15 0 0.13937742508695344 3.3925650844532716e-15 0.99023933136193432 0
		 2.305833151838776 1.7182105279415352e-17 -0.019951164932555811 1;
	setAttr ".radi" 0.50084616424222461;
createNode joint -n "joint20" -p "joint19";
	rename -uid "69EB62C9-48A2-9CC1-35A5-B794FCB2B18F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 6.7399928391197436e-15 -16.237632140966255 -4.7246424672024049e-14 ;
	setAttr ".bps" -type "matrix" 0.99930099865730515 1.631516256895871e-16 -0.037383339638306409 0
		 -3.3968305895221806e-16 1.0000000000000002 -3.3861802251067274e-15 0 0.037383339638306562 3.3936721155785038e-15 0.99930099865730504 0
		 3.3122719820606061 1.2347142021043609e-17 -0.021227173202131307 1;
	setAttr ".radi" 0.54689088487116821;
createNode joint -n "joint21" -p "joint20";
	rename -uid "5A94DE93-4BD7-6989-1DC2-D6B4AA47D018";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 80.307637760438965 -31.807383252411078 -84.856063942700047 ;
	setAttr ".bps" -type "matrix" 0.095843846406577393 -0.84640220197130533 0.52384851780273134 0
		 0.15232997453605993 0.53254418830565253 0.83258168749962136 0 -0.98367145732903927 2.130534979894305e-16 0.17997350926223621 0
		 4.1930374875420027 -5.3804163313618019e-16 0.028750229782083726 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint22" -p "joint20";
	rename -uid "0D5F0E11-4891-2E77-B33F-159A75E35E98";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99930099865730515 1.631516256895871e-16 -0.037383339638306409 0
		 -3.3968305895221806e-16 1.0000000000000002 -3.3861802251067274e-15 0 0.037383339638306562 3.3936721155785038e-15 0.99930099865730504 0
		 2.8624888826996102 0.40957443420340933 -0.60525438149945321 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint23" -p "joint20";
	rename -uid "E2B5FD64-4802-4D83-0A1B-4BA9922F043D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99930099865730515 1.631516256895871e-16 -0.037383339638306409 0
		 -3.3968305895221806e-16 1.0000000000000002 -3.3861802251067274e-15 0 0.037383339638306562 3.3936721155785038e-15 0.99930099865730504 0
		 2.8462222668121675 0.47148344114994278 0.71429391582289414 1;
	setAttr ".radi" 0.54689088487116821;
createNode joint -n "joint16" -p "joint2";
	rename -uid "A0AC4B51-4E1E-CBED-946F-89800E7324A7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -8.8992896965171589e-15 -69.059747992571275 43.590219255181069 ;
	setAttr ".bps" -type "matrix" -0.99984761349457185 1.1102230246251565e-16 -0.017457084212710916 0
		 1.42798426319878e-16 1.0000000000000002 -2.9829715714066721e-16 0 0.017457084212710916 -3.3306690738754696e-16 -0.99984761349457174 0
		 -1.0429962452951627 3.8163916471489756e-17 -0.019419641570682006 1;
	setAttr ".radi" 0.52478273384542173;
createNode joint -n "joint17" -p "joint16";
	rename -uid "B89F1494-45A5-B72F-F5DD-BBA300ABC53B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.7877062457040885e-17 2.9284499023407897 -3.0467009808991813e-15 ;
	setAttr ".bps" -type "matrix" -0.99943378713855668 1.2789332255383075e-16 0.033646769917521038 0
		 1.42798426319878e-16 1.0000000000000002 -2.9829715714066721e-16 0 -0.033646769917521038 -3.2695995853762415e-16 -0.99943378713855657 0
		 -2.183626285763534 1.5363455554401077e-18 -0.018479261554371858 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint18" -p "joint17";
	rename -uid "AB344BFE-47AF-F1BA-C8D4-2C97088BEF05";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.51034967208238935 -3.7936551941894417e-17 -7.2164496600635175e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -57.309585210894866 41.478946775007998 -66.971530871263511 ;
	setAttr ".bps" -type "matrix" -0.27062635405135299 -0.68949591306141045 0.67183090310321714 0
		 -0.25762591646349742 0.72428957321751664 0.63955726975364069 0 -0.92757224174681707 9.5675797369530394e-17 -0.37364386297754859 0
		 -2.6936869912977568 2.8870108840420698e-17 -0.0013076435603326733 1;
	setAttr ".radi" 0.5;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "67527280-4ED9-FCDD-7BA6-5E9DCB23D929";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "1B36BB8D-41C3-7DEC-1753-0AB1D8AC3F6E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "99C383BA-4257-E0B2-5494-8F9A777C9E44";
createNode displayLayerManager -n "layerManager";
	rename -uid "F251ABF3-4BD2-D968-5030-F790C7A76372";
createNode displayLayer -n "defaultLayer";
	rename -uid "BC955EB5-4AFA-0A09-D58F-11BCDB8F7C1A";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C988F83F-4018-6AE2-647A-8483ED99A169";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "BDE56E31-48FC-37EE-93F4-30A8E4427D25";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "28F9C0A3-4E26-6C32-0700-87BDD8A03CD6";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 188\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 187\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 187\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 435\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n"
		+ "                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n"
		+ "                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab 0\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n"
		+ "\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 435\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 435\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "5884C41A-4055-0E65-210F-91BEA1E2CBBA";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube1";
	rename -uid "A45E2CEC-41AD-80F9-9B37-73A454A6E965";
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit1";
	rename -uid "1F4ED299-479D-F879-A5D9-D482BCA8A7D7";
	setAttr -s 5 ".e[0:4]"  0.93743098 0.93743098 0.93743098 0.93743098
		 0.93743098;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483645 -2147483646 -2147483647 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "C5BD3759-4377-360F-D2A4-48BE0AF27EF0";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" 0.07992433 0.2181966 -0.2181966 ;
	setAttr ".tk[3]" -type "float3" 0.07992433 -0.2181966 -0.2181966 ;
	setAttr ".tk[5]" -type "float3" 0.07992433 -0.2181966 0.2181966 ;
	setAttr ".tk[7]" -type "float3" 0.07992433 0.2181966 0.2181966 ;
createNode polySplit -n "polySplit2";
	rename -uid "FB2DF18C-412A-6AAE-5484-56BBDDDC2BEC";
	setAttr -s 5 ".e[0:4]"  0.085034199 0.085034199 0.085034199 0.085034199
		 0.085034199;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483645 -2147483646 -2147483647 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "34ABC6A9-4811-D42F-2F29-1C9206372D26";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 3.1147263219001124 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.8063056 0 0 ;
	setAttr ".rs" 34392;
	setAttr ".lt" -type "double3" 7.3955709864469857e-32 2.4651903288156624e-32 0.74061381568527351 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.806305622133511 -0.28180339932441711 -0.28180339932441711 ;
	setAttr ".cbx" -type "double3" 1.806305622133511 0.28180339932441711 0.28180339932441711 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "B888AEC7-4173-66C3-7361-D6906E94CD51";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[0]" -type "float3" -0.12560588 0.15779175 -0.15779175 ;
	setAttr ".tk[2]" -type "float3" -0.12560588 -0.15779175 -0.15779175 ;
	setAttr ".tk[4]" -type "float3" -0.12560588 -0.15779175 0.15779175 ;
	setAttr ".tk[6]" -type "float3" -0.12560588 0.15779175 0.15779175 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "EA86F064-4CE0-FA36-72DC-708959AD8127";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 3.1147263219001124 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.5469196 0 0 ;
	setAttr ".rs" 52263;
	setAttr ".lt" -type "double3" 0 1.2325951644078312e-32 0.690559395299426 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.5469195993272216 -0.10703092813491821 -0.10703092813491821 ;
	setAttr ".cbx" -type "double3" 2.5469195993272216 0.10703092813491821 0.10703092813491821 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "A0C40309-4E6D-B596-2CA1-2FB417D132C6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[16:19]" -type "float3"  1.110223e-16 0.17477247 0.17477247
		 1.110223e-16 0.17477247 -0.17477247 1.110223e-16 -0.17477247 0.17477247 1.110223e-16
		 -0.17477247 -0.17477247;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "E7E6AA0D-41B1-DEC2-616F-E096855598F7";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 3.1147263219001124 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.9698734 0 0 ;
	setAttr ".rs" 41189;
	setAttr ".lt" -type "double3" -4.9303806576313238e-32 -2.4651903288156613e-32 0.90167344111067838 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.969873455015243 -0.40673902630805969 -0.40673902630805969 ;
	setAttr ".cbx" -type "double3" 2.969873455015243 0.40673902630805969 0.40673902630805969 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "E42D53B6-47D5-6E13-7459-9695C01952DC";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[20:23]" -type "float3"  -0.085916288 -0.2997081 -0.2997081
		 -0.085916288 -0.2997081 0.2997081 -0.085916288 0.2997081 -0.2997081 -0.085916288
		 0.2997081 0.2997081;
createNode polyTweak -n "polyTweak5";
	rename -uid "B076B2C9-430B-7EC3-E67A-75AF3CA35214";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[24:27]" -type "float3"  0.066249609 0.26010856 0.26010856
		 0.066249609 0.26010856 -0.26010856 0.066249609 -0.26010856 0.26010856 0.066249609
		 -0.26010856 -0.26010856;
createNode polySplit -n "polySplit3";
	rename -uid "620BC6C9-419C-5B91-6FB5-FEAAD0C8A194";
	setAttr -s 5 ".e[0:4]"  0.862589 0.862589 0.862589 0.862589 0.862589;
	setAttr -s 5 ".d[0:4]"  -2147483628 -2147483625 -2147483626 -2147483627 -2147483628;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "52517608-4928-3889-6056-32BCA22B3A32";
	setAttr -s 5 ".e[0:4]"  0.14524899 0.14524899 0.14524899 0.14524899
		 0.14524899;
	setAttr -s 5 ".d[0:4]"  -2147483628 -2147483627 -2147483626 -2147483625 -2147483628;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "E7E4A89E-4C3D-4192-A38D-B59867360648";
	setAttr -s 2 ".e[0:1]"  0.72621399 0.73218799;
	setAttr -s 2 ".d[0:1]"  -2147483624 -2147483584;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "528D9216-41E6-08C9-0B0E-CEBAEBEAC615";
	setAttr -s 2 ".e[0:1]"  0.33664101 0.33664101;
	setAttr -s 2 ".d[0:1]"  -2147483624 -2147483584;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "B1FC6812-40A2-19FC-335B-2BA975C67A4A";
	setAttr -s 2 ".e[0:1]"  0.75697702 0.248153;
	setAttr -s 2 ".d[0:1]"  -2147483589 -2147483632;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "1DF8DA4F-4101-9E59-919F-E8A734DD7077";
	setAttr -s 2 ".e[0:1]"  0.404578 0.59542203;
	setAttr -s 2 ".d[0:1]"  -2147483589 -2147483573;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "9609D9E8-427C-9D27-292A-C09C0913CD27";
	setAttr ".ics" -type "componentList" 3 "f[29:30]" "f[34]" "f[37]";
	setAttr ".ix" -type "matrix" 3.1147263219001124 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.026700493 -0.5 0 ;
	setAttr ".rs" 60498;
	setAttr ".lt" -type "double3" 0 -3.2010525971707726e-17 1.8941625928381165 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.3090767944858681 -0.5 -0.5 ;
	setAttr ".cbx" -type "double3" 1.3624777806346635 -0.5 0.5 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "5BD83F63-47A1-EEEE-7986-5BAE6E0078B1";
	setAttr ".ics" -type "componentList" 3 "f[29:30]" "f[34]" "f[37]";
	setAttr ".ix" -type "matrix" 3.1147263219001124 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.01827959 -2.3941627 0.0077111274 ;
	setAttr ".rs" 40908;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2776654707793169 -2.394162654876709 -0.46144673228263855 ;
	setAttr ".cbx" -type "double3" 1.3142246502932207 -2.394162654876709 0.47686898708343506 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "F95DD156-48EF-8799-10A9-1EA8BCC09214";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[44]" -type "float3" 0.01609635 0 0.032489531 ;
	setAttr ".tk[45]" -type "float3" 0.01609635 0 -0.033890758 ;
	setAttr ".tk[46]" -type "float3" -0.01609635 0 0.033890758 ;
	setAttr ".tk[47]" -type "float3" -0.01609635 0 -0.033890758 ;
	setAttr ".tk[48]" -type "float3" 0.010084782 0 -0.023131028 ;
	setAttr ".tk[49]" -type "float3" 0.010084782 0 0.022753565 ;
	setAttr ".tk[50]" -type "float3" -0.010084782 0 0.023131028 ;
	setAttr ".tk[51]" -type "float3" -0.010084782 0 -0.023131028 ;
	setAttr ".tk[52]" -type "float3" 0.015132516 0 -0.038553264 ;
	setAttr ".tk[53]" -type "float3" -0.015132514 0 -0.036870807 ;
	setAttr ".tk[54]" -type "float3" 0.015132516 0 0.038553257 ;
	setAttr ".tk[55]" -type "float3" -0.015132514 0 0.038553257 ;
	setAttr ".tk[56]" -type "float3" 0.015491937 0 -0.040255472 ;
	setAttr ".tk[57]" -type "float3" -0.015491937 0 -0.039709866 ;
	setAttr ".tk[58]" -type "float3" 0.015491937 0 0.040255472 ;
	setAttr ".tk[59]" -type "float3" -0.015491937 0 0.040255472 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "903A1A18-47B3-18C2-1993-D59188778300";
	setAttr ".ics" -type "componentList" 3 "f[29:30]" "f[34]" "f[37]";
	setAttr ".ix" -type "matrix" 3.1147263219001124 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.018279543 -2.3941627 0.0077111274 ;
	setAttr ".rs" 47669;
	setAttr ".lt" -type "double3" -2.2204460492503131e-16 -2.1123244339641424e-17 2.5951306353368651 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2776655636053948 -2.394162654876709 -0.46144673228263855 ;
	setAttr ".cbx" -type "double3" 1.3142246502932207 -2.394162654876709 0.47686898708343506 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "272D1D8E-4264-5066-32E1-B7A340E99BCA";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 3.1147263219001124 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2259078 0 0 ;
	setAttr ".rs" 40283;
	setAttr ".lt" -type "double3" -2.4651903288156619e-32 0 0.5561038200102586 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2259077137972998 -0.13907602429389954 -0.13907602429389954 ;
	setAttr ".cbx" -type "double3" -2.2259077137972998 0.13907602429389954 0.13907602429389954 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "9C93FDED-441D-ED94-A267-1EBBC6CE7A24";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk";
	setAttr ".tk[0]" -type "float3" -0.089033999 0.20313224 -0.20313224 ;
	setAttr ".tk[2]" -type "float3" -0.089033999 -0.20313224 -0.20313224 ;
	setAttr ".tk[4]" -type "float3" -0.089033999 -0.20313224 0.20313224 ;
	setAttr ".tk[6]" -type "float3" -0.089033999 0.20313224 0.20313224 ;
	setAttr ".tk[76]" -type "float3" -0.06799864 0 -0.058092948 ;
	setAttr ".tk[77]" -type "float3" -0.06799864 0 -0.094513513 ;
	setAttr ".tk[78]" -type "float3" -0.08566165 0 -0.057324138 ;
	setAttr ".tk[79]" -type "float3" -0.08566165 0 -0.094513513 ;
	setAttr ".tk[80]" -type "float3" 0.085786268 0 -0.096731983 ;
	setAttr ".tk[81]" -type "float3" 0.085786268 0 -0.055786502 ;
	setAttr ".tk[82]" -type "float3" 0.067787804 0 -0.055449679 ;
	setAttr ".tk[83]" -type "float3" 0.067787804 0 -0.096731983 ;
	setAttr ".tk[84]" -type "float3" 0.084745511 0 0.056180194 ;
	setAttr ".tk[85]" -type "float3" 0.068828553 0 0.057065014 ;
	setAttr ".tk[86]" -type "float3" 0.084745511 0 0.096731983 ;
	setAttr ".tk[87]" -type "float3" 0.068828553 0 0.096731983 ;
	setAttr ".tk[88]" -type "float3" -0.067873999 0 0.049836364 ;
	setAttr ".tk[89]" -type "float3" -0.085786268 0 0.05015181 ;
	setAttr ".tk[90]" -type "float3" -0.067873999 0 0.096381024 ;
	setAttr ".tk[91]" -type "float3" -0.085786268 0 0.096381024 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "BAB0A07E-42D7-275D-55DE-12BB99ED7A7F";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 3.1147263219001124 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.0778966 0 0 ;
	setAttr ".rs" 56057;
	setAttr ".lt" -type "double3" 1.355854680848614e-31 8.0118685686509011e-32 0.23441975021232775 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.0778967619551265 -0.14663046598434448 -0.14663046598434448 ;
	setAttr ".cbx" -type "double3" 4.0778967619551265 0.14663046598434448 0.14663046598434448 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "E7B42390-4469-6F8E-18DF-72AF42978AED";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[92]" -type "float3" -3.3306691e-16 0.10105404 0.10105409 ;
	setAttr ".tk[93]" -type "float3" -3.3306691e-16 0.10105404 -0.10105409 ;
	setAttr ".tk[94]" -type "float3" -3.3306691e-16 -0.10105409 -0.10105409 ;
	setAttr ".tk[95]" -type "float3" -3.3306691e-16 -0.10105409 0.10105409 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "25A50BCE-472F-6377-AF22-0EA516A64F36";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[96:99]" -type "float3"  0.00096033822 -0.018289225
		 -0.018289225 0.00096033822 -0.018289225 0.018289225 0.00096033822 0.018289225 -0.018289225
		 0.00096033822 0.018289225 0.018289225;
createNode polySplit -n "polySplit9";
	rename -uid "C3B5F103-4468-83E9-CFEA-38BF1F1A8400";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483607 -2147483605;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "4C05AF27-445E-046D-995A-9C8A259E4EDD";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483609 -2147483608;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak10";
	rename -uid "420DFC21-4962-E792-C98A-A1BB79AB9264";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[28]" -type "float3" -1.1175871e-08 -0.225997 0.154541 ;
	setAttr ".tk[29]" -type "float3" -1.1175871e-08 0.16565655 0.154541 ;
	setAttr ".tk[30]" -type "float3" -1.1175871e-08 0.16565655 -0.1910021 ;
	setAttr ".tk[31]" -type "float3" -1.1175871e-08 -0.225997 -0.1910021 ;
	setAttr ".tk[32]" -type "float3" 3.7252903e-09 -0.225997 0.154541 ;
	setAttr ".tk[33]" -type "float3" 3.7252903e-09 -0.225997 -0.1910021 ;
	setAttr ".tk[34]" -type "float3" 3.7252903e-09 0.16565655 -0.1910021 ;
	setAttr ".tk[35]" -type "float3" 3.7252903e-09 0.16565655 0.154541 ;
	setAttr ".tk[37]" -type "float3" 3.7252903e-09 -0.225997 0 ;
	setAttr ".tk[39]" -type "float3" 3.7252903e-09 -0.225997 0 ;
	setAttr ".tk[40]" -type "float3" -1.1175871e-08 -0.225997 -3.7252903e-09 ;
	setAttr ".tk[42]" -type "float3" -1.1175871e-08 -0.225997 0 ;
createNode polySplit -n "polySplit11";
	rename -uid "3FB50660-4D77-CBF0-C1B7-3DB55B5CB349";
	setAttr -s 4 ".e[0:3]"  0.5 0.5 0.5 0.5;
	setAttr -s 4 ".d[0:3]"  -2147483631 -2147483590 -2147483583 -2147483623;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "25D15E24-44AE-BAEB-E81E-3EADBA57D261";
	setAttr -s 4 ".e[0:3]"  0.5 0.5 0.5 0.5;
	setAttr -s 4 ".d[0:3]"  -2147483621 -2147483581 -2147483592 -2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak11";
	rename -uid "690BA15B-44A6-F0D1-158A-79880C9C0BBD";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[104]" -type "float3" 0 0 -0.30002078 ;
	setAttr ".tk[105]" -type "float3" 0 0 -0.30002078 ;
	setAttr ".tk[106]" -type "float3" 0 0 -0.30002078 ;
	setAttr ".tk[107]" -type "float3" 0 0 -0.30002078 ;
	setAttr ".tk[108]" -type "float3" 0 0 0.27926004 ;
	setAttr ".tk[109]" -type "float3" 0 0 0.27926004 ;
	setAttr ".tk[110]" -type "float3" 0 0 0.27926004 ;
	setAttr ".tk[111]" -type "float3" 0 0 0.27926004 ;
createNode polySplit -n "polySplit13";
	rename -uid "00C2CB49-426E-8C0D-C443-1393B1DA80EA";
	setAttr -s 4 ".e[0:3]"  0.5 0.5 0.5 0.5;
	setAttr -s 4 ".d[0:3]"  -2147483622 -2147483582 -2147483591 -2147483630;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "D9CC268B-4173-103A-4C5C-DD8674B226B4";
	setAttr ".ics" -type "componentList" 2 "f[29:30]" "f[34]";
	setAttr ".ix" -type "matrix" 3.1147263219001124 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.017532293 -4.9892936 0.0077111274 ;
	setAttr ".rs" 57663;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0104649554890053 -4.9892935752868652 -0.36471474170684814 ;
	setAttr ".cbx" -type "double3" 1.0455295423211159 -4.9892935752868652 0.38013699650764465 ;
createNode polyTweak -n "polyTweak12";
	rename -uid "63F7CE19-456F-952C-769D-58AE5F7E95A1";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[112]" -type "float3" 0 0.1266319 0 ;
	setAttr ".tk[113]" -type "float3" 0 0.1266319 0 ;
	setAttr ".tk[114]" -type "float3" 0 0.1266319 0 ;
	setAttr ".tk[115]" -type "float3" 0 0.1266319 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "E98FB0CD-4B02-78A4-2BC1-4FA7DEA75AE4";
	setAttr ".ics" -type "componentList" 3 "f[29:30]" "f[34]" "f[37]";
	setAttr ".ix" -type "matrix" 3.1147263219001124 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.018279497 -4.9892936 0.0077111274 ;
	setAttr ".rs" 34878;
	setAttr ".lt" -type "double3" 0 1.7914030407906754e-17 0.16932237933024741 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0104649554890053 -4.9892935752868652 -0.36471474170684814 ;
	setAttr ".cbx" -type "double3" 1.0470239493507527 -4.9892935752868652 0.38013699650764465 ;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "BC95AE80-47AC-892C-21B4-6F9A433DEE68";
	setAttr ".ics" -type "componentList" 2 "f[21]" "f[95]";
	setAttr ".ix" -type "matrix" 3.1147263219001124 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.864135 0.20336951 0 ;
	setAttr ".rs" 54265;
	setAttr ".lt" -type "double3" 3.0531133177191805e-16 0 0.47339722275949425 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.7583967128233882 0 -0.40673902630805969 ;
	setAttr ".cbx" -type "double3" 2.969873455015243 0.40673902630805969 0.40673902630805969 ;
createNode polyTweak -n "polyTweak13";
	rename -uid "49BC411A-4914-38F0-A5DC-37B96370B406";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[128]" -type "float3" -0.016969303 0 -0.034251522 ;
	setAttr ".tk[129]" -type "float3" -0.016969303 0 0.035728738 ;
	setAttr ".tk[130]" -type "float3" 0.016969303 0 -0.035728738 ;
	setAttr ".tk[131]" -type "float3" 0.016969303 0 0.035728738 ;
	setAttr ".tk[132]" -type "float3" -0.015256851 0 0.034993984 ;
	setAttr ".tk[133]" -type "float3" -0.015256851 0 -0.034422927 ;
	setAttr ".tk[134]" -type "float3" 0.015256853 0 -0.03499398 ;
	setAttr ".tk[135]" -type "float3" 0.015256853 0 0.034993984 ;
	setAttr ".tk[136]" -type "float3" -0.013859062 0 0.035308864 ;
	setAttr ".tk[137]" -type "float3" 0.013859065 0 0.033767972 ;
	setAttr ".tk[138]" -type "float3" -0.013859062 0 -0.035308868 ;
	setAttr ".tk[139]" -type "float3" 0.013859065 0 -0.035308868 ;
	setAttr ".tk[140]" -type "float3" -0.013616854 0 0.035383109 ;
	setAttr ".tk[141]" -type "float3" 0.013616849 0 0.034903526 ;
	setAttr ".tk[142]" -type "float3" -0.013616854 0 -0.035383113 ;
	setAttr ".tk[143]" -type "float3" 0.013616849 0 -0.035383113 ;
createNode skinCluster -n "skinCluster1";
	rename -uid "0A2961C1-442A-1182-2E0E-BD94105F845B";
	setAttr -s 150 ".wl";
	setAttr ".wl[0:149].w"
		3 1 0.0089442729949951172 20 0.53920793533325195 21 0.07937312126159668
		1 8 0.99434554576873779
		3 1 0.23565423488616943 20 0.53920793533325195 21 0.07937312126159668
		1 8 0.93599522113800049
		3 1 0.23551476001739502 20 0.56832396984100342 21 0.33219116926193237
		1 8 0.9352295994758606
		3 1 0.0089175701141357422 20 0.56832396984100342 21 0.33219116926193237
		1 8 0.97188764810562134
		2 8 1 9 0.99767696857452393
		2 8 1 12 1
		1 8 1
		1 8 1
		3 1 0.23244917392730713 2 1 20 0.28516983985900879
		3 1 0.23243826627731323 5 0.76714688539505005 20 0.37634396553039551
		2 1 0.96163266897201538 20 0.37634396553039551
		2 1 0.96193313598632813 20 0.28516983985900879
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		2 15 0.17217141389846802 16 0.07937312126159668
		1 15 0.07937312126159668
		2 15 0.17217141389846802 18 0.92293834686279297
		2 15 0.07937312126159668 19 0.99674391746520996
		1 17 0.39747452735900879
		1 17 0.7315819263458252
		1 17 0.39747452735900879
		1 17 0.7315819263458252
		2 8 1 9 0.51122546195983887
		1 8 0.94838196039199829
		1 8 0.98064625263214111
		2 8 0.90506047010421753 12 0.99989974498748779
		2 1 0.024814844131469727 2 1
		2 1 0.0049179196357727051 5 1
		1 1 0.07937312126159668
		1 1 0.13844579458236694
		4 0 0.28152215480804443 1 0.66335135698318481 5 0.46825301647186279 
		20 0.87267506122589111
		3 1 0.65831184387207031 5 1 20 0.033213973045349121
		4 0 0.07937312126159668 1 0.6300433874130249 2 0.99131923913955688 
		20 0.79503440856933594
		3 1 0.63372898101806641 2 1 20 0.014615356922149658
		2 8 1 9 0.07937312126159668
		2 8 1 9 0.080799520015716553
		2 8 1 12 0.47007155418395996
		2 8 1 12 0.45692187547683716
		1 9 0.93596929311752319
		1 9 1
		1 9 0.97817033529281616
		1 9 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 9 0.93596929311752319
		1 9 1
		1 9 0.97817033529281616
		1 9 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 11 0.63570398092269897
		1 11 0.96763134002685547
		1 11 0.89068782329559326
		1 11 1
		1 4 1
		1 4 0.81426465511322021
		1 4 0.47669374942779541
		1 4 1
		1 7 0.78503131866455078
		1 7 0.568065345287323
		1 7 1
		1 7 1
		1 14 0.39878582954406738
		1 14 0.948966383934021
		1 14 0.98459386825561523
		1 14 1
		1 22 0.07937312126159668
		1 22 0.15737330913543701
		1 22 0.15737450122833252
		1 22 0.079374074935913086
		1 17 0.07937312126159668
		1 17 0.5511021614074707
		1 17 0.07937312126159668
		1 17 0.5511021614074707
		1 15 0.93437707424163818
		1 15 0.77150797843933105
		1 15 0.98597973585128784
		1 15 0.91428935527801514
		2 8 0.75234723091125488 12 0.96303534507751465
		2 8 0.33073931932449341 12 0.07937312126159668
		1 5 0.07937312126159668
		3 1 0.1559138298034668 5 0.065554499626159668 20 0.11673933267593384
		3 1 0.20707404613494873 2 0.67462652921676636 20 0.07937312126159668
		2 1 0.0030465126037597656 2 0.07937312126159668
		1 8 0.5884774923324585
		1 8 0.87456393241882324
		2 1 1 20 0.61277830600738525
		2 1 0.77928227186203003 20 0.004355311393737793
		1 8 1
		1 8 1
		1 11 0.63570398092269897
		1 11 0.96763134002685547
		1 11 0.89068782329559326
		1 11 1
		1 4 1
		1 4 0.81426465511322021
		1 4 0.47669374942779541
		1 4 1
		1 7 0.78503131866455078
		1 7 0.568065345287323
		1 7 1
		1 7 1
		1 11 0.080715179443359375
		1 11 0.43637382984161377
		1 11 0.07937312126159668
		1 11 0.49647760391235352
		1 4 1
		1 4 0.29997211694717407
		1 4 0.07937312126159668
		1 4 0.95892614126205444
		1 7 0.11813211441040039
		1 7 0.07937312126159668
		1 7 0.91393786668777466
		1 7 0.79380553960800171
		1 14 0.07937312126159668
		1 14 0.6815643310546875
		1 14 0.87436175346374512
		1 14 1
		1 19 1
		1 19 1
		1 19 0.69018346071243286
		1 18 0.93287396430969238
		1 18 1
		1 18 0.82167512178421021;
	setAttr -s 23 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.44721359549996009 -0.89442719099991463 0 -0 0.89442719099991463 0.44721359549996009 -0 0
		 0 -0 1 -0 0.80810003831269772 -0.83730847343243053 -0 1;
	setAttr ".pm[1]" -type "matrix" -0.27062635405135277 -0.2576259164634972 -0.92757224174681663 0
		 -0.68949591306141 0.72428957321751641 5.5511151231257802e-17 0 0.67183090310321691 0.63955726975364036 -0.37364386297754831 -0
		 -0.25334397440220963 -0.24117375343825193 -0.86833685910986402 1;
	setAttr ".pm[2]" -type "matrix" 0.070003281480732468 0.99754676110041507 -5.719651415239702e-16 -0
		 -0.99754676110041507 0.070003281480732468 -5.7226873236342201e-16 0 -4.6728702008157896e-16 4.7797341763022371e-16 0.99999999999999978 -0
		 -0.56794566291237703 1.1528911671148414 -0.45711702695970174 1;
	setAttr ".pm[3]" -type "matrix" 6.0233421025368721e-16 7.8977808486389037e-16 0.99999999999999978 -0
		 -0.99997509131569862 0.0070580980554046354 6.096034581685008e-16 0 -0.0070580980554045573 -0.99997509131569873 5.9064282632059334e-16 -0
		 -2.5967856086669152 0.45002328757197962 1.1087480328283381 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 5.1345049469431088e-16 -7.8617368347782962e-16 -0
		 -5.0061956645665554e-16 0.99999999999999978 -2.7582103268031267e-16 0 5.9064282632059305e-16 1.4137996329211e-16 0.99999999999999978 -0
		 0.94675651629916524 4.8914163374873505 -0.41550954122817307 1;
	setAttr ".pm[5]" -type "matrix" 3.9243578606845519e-16 2.0434002713113598e-15 -0.99999999999999978 -0
		 -0.99958018470022214 0.028973338686963057 -3.1714521133349739e-16 0 0.028973338686963217 0.99958018470022236 2.2305712328020009e-15 -0
		 -0.64970196111918255 0.46756087119277689 -0.93613933236574598 1;
	setAttr ".pm[6]" -type "matrix" 3.7762796018439915e-16 2.0461885638106459e-15 -0.99999999999999978 -0
		 -0.99976378882391581 0.021733995409217909 -3.1714521133349729e-16 0 0.021733995409218065 0.99976378882391603 2.2305712328020005e-15 -0
		 -2.597136209763661 0.45422735439698469 -1.0793779413862841 1;
	setAttr ".pm[7]" -type "matrix" -0.073871685515311813 -0.99726775445670879 6.8007849270159989e-16 -0
		 -0.99726775445670879 0.073871685515311813 3.9586193787807636e-16 0 -2.7771535161535615e-16 -4.1458146353715173e-16 -1 0
		 -5.0009891829698745 -0.55589956375011784 -0.34680728169816677 1;
	setAttr ".pm[8]" -type "matrix" -4.2229972121899715e-16 -1.5050856649695661e-15 -1 0
		 -0.84640220197130533 0.53254418830565198 -3.3968305895222279e-16 0 0.53254418830565198 0.84640220197130533 -1.4258972141845498e-15 -0
		 -0.0055165178682034027 -0.0087677097476481329 1.1890174903718682 1;
	setAttr ".pm[9]" -type "matrix" 5.0785735634275517e-16 1.3559469065682271e-15 0.99999999999999978 -0
		 -0.9990828958176694 0.042817838392186482 3.4492673182556269e-16 0 -0.042817838392186482 -0.9990828958176694 1.3035448471399518e-15 -0
		 -0.74449124754320217 0.52485100618466407 -1.189017490371868 1;
	setAttr ".pm[10]" -type "matrix" 4.9347776875096437e-16 1.3612460466689947e-15 0.99999999999999978 -0
		 -0.9994801143396993 0.032241294010959452 3.4492673182556269e-16 0 -0.032241294010959452 -0.9994801143396993 1.3035448471399518e-15 -0
		 -2.5318710769645785 0.49808195367405816 -1.1890174903718687 1;
	setAttr ".pm[11]" -type "matrix" -0.27062635405135382 -0.25762591646349831 -0.92757224174681574 0
		 -0.68949591306140967 0.72428957321751675 -2.4980018054066007e-16 0 0.6718309031032168 0.63955726975363969 -0.37364386297754992 -0
		 -3.3538862286304671 3.5889252966714218 1.0222865869803297 1;
	setAttr ".pm[12]" -type "matrix" 3.4063352729267437e-16 -1.5256437046449193e-15 -0.99999999999999978 -0
		 -0.99766256517344043 0.068333052409139922 -3.3968305895222264e-16 0 0.068333052409139922 0.99766256517344043 -1.4258972141845494e-15 -0
		 -0.70325250337282574 0.57423813038658045 1.1890174903718671 1;
	setAttr ".pm[13]" -type "matrix" 4.4408920985006262e-16 -1.4988010832439607e-15 -0.99999999999999978 -0
		 -0.99999999999999978 -1.3877787807814501e-16 -3.3968305895222264e-16 0 -1.3877787807814385e-16 0.99999999999999978 -1.4258972141845496e-15 -0
		 -2.5974802328690001 0.39767391435927563 1.1890174903718667 1;
	setAttr ".pm[14]" -type "matrix" -4.2229972121899725e-16 -1.5050856649695653e-15 -0.99999999999999978 0
		 -0.84640220197130489 0.53254418830565198 -3.3968305895222259e-16 0 0.53254418830565198 0.84640220197130489 -1.4258972141845496e-15 -0
		 -3.902620586904026 2.9253135463380442 1.038904516502748 1;
	setAttr ".pm[15]" -type "matrix" 0.99023933136193409 -2.8990437980188812e-16 0.13937742508695325 -0
		 -1.3558955548391502e-16 0.99999999999999978 3.4004729920831088e-15 0 -0.13937742508695342 -3.3852007815773508e-15 0.99023933136193421 -0
		 -2.2861074205047953 5.8375032540797136e-16 -0.30162465916071657 1;
	setAttr ".pm[16]" -type "matrix" 0.99930099865730482 -2.8990437980188812e-16 0.037383339638306402 -0
		 2.1285889460623746e-16 0.99999999999999978 3.3965117677449592e-15 -0 -0.037383339638306555 -3.3852007815773512e-15 0.99930099865730493 -0
		 -3.3107502421231509 8.7603676935887442e-16 -0.10261145310025657 1;
	setAttr ".pm[17]" -type "matrix" 0.095843846406577199 0.1523299745360599 -0.98367145732903905 -0
		 -0.84640220197130478 0.5325441883056522 8.3266726846886704e-17 0 0.52384851780273134 0.83258168749962147 0.17997350926223629 -0
		 -0.41693760619082904 -0.66266220853398661 4.1193970162597573 1;
	setAttr ".pm[18]" -type "matrix" 0.99930099865730482 -2.8990437980188812e-16 0.037383339638306402 -0
		 2.1285889460623746e-16 0.99999999999999978 3.3965117677449592e-15 -0 -0.037383339638306555 -3.3852007815773512e-15 0.99930099865730493 -0
		 -2.8831144292383204 -0.4095744342034105 0.49782191376127588 1;
	setAttr ".pm[19]" -type "matrix" 0.99930099865730482 -2.8990437980188812e-16 0.037383339638306402 -0
		 2.1285889460623746e-16 0.99999999999999978 3.3965117677449592e-15 -0 -0.037383339638306555 -3.3852007815773512e-15 0.99930099865730493 -0
		 -2.8175300615692733 -0.47148344114993945 -0.82019591710300621 1;
	setAttr ".pm[20]" -type "matrix" -0.99984761349457152 1.1681976121255034e-16 0.017457084212710913 -0
		 1.3756926717409352e-16 0.99999999999999978 -3.0074454483301994e-16 0 -0.017457084212710913 -3.3107802680187906e-16 -0.99984761349457163 0
		 -1.0431763170604471 7.7249239237056577e-17 -0.0012090089917074355 1;
	setAttr ".pm[21]" -type "matrix" -0.99943378713855613 1.1681976121255029e-16 -0.033646769917521024 -0
		 1.5275430782766435e-16 0.99999999999999978 -2.93323551658793e-16 -0 0.033646769917521024 -3.3107802680187906e-16 -0.99943378713855624 -0
		 -2.1817681210141826 2.4743627827272689e-16 -0.091940769581746434 1;
	setAttr ".pm[22]" -type "matrix" -0.27062635405135277 -0.25762591646349714 -0.92757224174681641 0
		 -0.68949591306141 0.72428957321751641 -2.7755575615628889e-17 0 0.6718309031032168 0.63955726975364047 -0.37364386297754848 -0
		 -0.72810417405639449 -0.69312726685362758 -2.4990778740735777 1;
	setAttr ".gm" -type "matrix" 3.1147263219001124 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 23 ".ma";
	setAttr -s 23 ".dpf[0:22]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4;
	setAttr -s 23 ".lw";
	setAttr -s 23 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 4;
	setAttr ".ucm" yes;
	setAttr ".nw" 2;
	setAttr -s 23 ".ifcl";
	setAttr -s 23 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "49214A01-446A-388F-D6F1-7FB251D3283E";
	setAttr -s 7 ".vl[0].vt";
	setAttr ".vl[0].vt[144]" -type "float3" 0.075551897 0.31441876 0.067358136 ;
	setAttr ".vl[0].vt[145]" -type "float3" 0.075551882 0.51078129 0.20867963 ;
	setAttr ".vl[0].vt[146]" -type "float3" 0.075551882 0.37619972 -0.09359023 ;
	setAttr ".vl[0].vt[147]" -type "float3" 0.063171864 0.28185678 0.016321659 ;
	setAttr ".vl[0].vt[148]" -type "float3" 0.063171864 0.4541702 -0.11894497 ;
	setAttr ".vl[0].vt[149]" -type "float3" 0.063171864 0.34382632 0.15959874 ;
createNode objectSet -n "skinCluster1Set";
	rename -uid "C9897C1E-4776-9E74-C752-3E82E8D64B8D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "5653AC85-4CEA-61DA-32F4-2CB3897BB57D";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "17965B38-4504-F9AC-884C-8095842F7E6A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "5674D374-408C-7E11-8B84-5D9ADB8AFA83";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "36E8E586-4F3C-644E-24FB-E5B6C21463DC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "B3C1002D-4663-5346-2F9D-D48287C2252B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "9D64B72D-4494-38EC-05AF-E4B04473BDC1";
	setAttr -s 23 ".wm";
	setAttr -s 23 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.1103047895500728 -0.34833091436864971
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.52573111211913248 0.85065080835204054 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.38944580159647996 -2.7755575615628914e-17
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.14280442605780597 -0.81635092171631374 -0.44993000721425536 0.33277778940218661 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.80052121293028999 -0.13158054498796731
		 -0.0092479282307108297 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.7497991058745922 0.35302015851568025 -0.20235346962123743 0.52175774248541151 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.9479574020682691 -0.13513817984734658
		 -0.025433316330553981 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70658117429955913 0.027258835731847682 -0.022271037537805186 0.70675596982762701 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2915761829901533 4.6902540758757075e-16
		 0.16199151652916746 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49823235090281842 -0.50176142190671735 0.49823235090281787 0.50176142190671791 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.15577584565545799 -0.76705397590126445
		 0.16759442269075761 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.17379983726844667 0.077508036306266279 -0.37370668457490996 0.90781574935525156 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.9440768058119362 -0.0054620561218803494
		 0.14323860902053812 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0036208355930389606 0.99999344475331842 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.3404179352839232 -7.2287670902576174e-15
		 -0.15556573155191239 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70629785887288776 -0.03381323042206525 0.018454568936855945 0.70686592001974002 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.56816408186283673 -0.54087042928487139
		 -1.9751069795679426 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.14727472289629734 0.12051570487870115 -0.12161707881303188 0.97416395284079027 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.9053396308332633 9.6942372092737611e-17
		 -9.6740229530773334e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.95467889155997743 -0.29763772276009109 -1.8225054224182644e-17 5.8457222438123476e-17 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.7819663919695783 -4.3541559247017858e-16
		 5.5164206536062466e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0052920004157763594 0.99998599726776149 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.3665287430996802 -2.2829216890164913e-15
		 -0.22382266246212551 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.89595225013928148 0.40131743837486883 0.072152168926833363 0.17609072560968508 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.34203822384063454 -0.84752823302334712
		 8.831444095907279e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.24411660951601177 0.96974588473393741 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.8609820163069068 -4.4408920985006262e-16
		 2.2204460492503136e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.034186509229221895 0.99941547045596624 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2635651534192376 -3.0512319248589653e-17
		 0.15011297386911893 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.27712614278401709 0.96083354488987971 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.016141394802964511
		 -0.025654419678459515 -1.1168156614669078 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.36490019151483122 0.66070913628912153 0.31713680972037128 0.57422602812560464 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0.18095952070705651 0 0 0.99679316104255533
		 -2.9228644395090316e-16 0.13901129908816726 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 -0.14122635046141807 0 0.98997733203106664 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.87828152698046591 -9.7491009641807538e-16
		 0.082868424745540306 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.31645484381969269 -0.57299122169992045 -0.36549177510612896 0.66178029134121041 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.42763581288482982
		 0.40957443420341133 -0.60043336686153248 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.49322018055387695
		 0.47148344114994029 0.71758446400274967 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.015871581416898553
		 0.015109137181361202 0.10637353616619158 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.21045968403701687 -0.52631702653088785 0.30587895446774505 0.76494128806885742 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1404398075493811 -1.701870390356703e-16
		 -0.020852311387089907 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.025552764817221622 0 0.99967347479574342 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.51034967208238935 -3.7936551941894417e-17
		 -7.2164496600635175e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.20257491065964697 0.50659880592328999 -0.31115690408936436 0.77814037065676966 1
		 1 1 yes;
	setAttr -s 23 ".m";
	setAttr -s 23 ".p";
	setAttr ".bp" yes;
createNode skinBinding -n "skinBinding1";
	rename -uid "3B0477D5-480B-B21D-10EE-41B6B4D67162";
	setAttr -s 23 ".l[0:22]"  0.20963669901654347 0.47486415587123271 
		1.1861624661742711 0 0.14111000301314069 1.1984387557581782 0 0.11304846207213792 
		0.67807993308207859 0.95079987768854646 0 0.13370953459120161 1.2050982574902858 
		0 0.15670056335359872 0.43604467025292543 0.30977504355069818 0.12733976055435825 
		0.11989602388006981 0.19067935114707807 0.15243915660504725 0.10848742713871995 0.044798896500768848;
	setAttr -s 23 ".rr[0:22]"  0.30599924112705029 0.95169553764989023 
		0.53687354542106669 0 0.31916810922112288 0.58593581349285162 0 0.240880942932686 
		1.3219546536995013 0.33667387208499772 0 0.23018112179474556 0.50527484052533822 
		0 0.37193177578023878 0.64911188348203996 0.50589963724331755 0.28539198072324728 
		0.43283927844890563 0.33916476536665696 0.87830604656552735 0.22992814181204069 0.060440072550307228;
	setAttr -s 23 ".lr[0:22]"  0.30599924112705029 0.95169553764989023 
		0.53687354542106669 0 0.31916810922112288 0.58593581349285162 0 0.240880942932686 
		1.2123683003974994 0.33667387208499772 0 0.23018112179474556 0.50527484052533822 
		0 0.37193177578023878 0.64911188348203996 0.50589963724331755 0.28539198072324728 
		0.3186630989802739 0.43225471366320389 0.87830604656552735 0.22992814181204069 0.060440072550307228;
	setAttr -s 23 ".bpm";
	setAttr ".bpm[0]" -type "matrix" 0.4472135954999602 0.89442719099991486 0 0 -0.89442719099991486 0.4472135954999602 0 0
		 0 0 1 0 -1.1103047895500728 -0.34833091436864971 0 1;
	setAttr ".bpm[1]" -type "matrix" -0.27062635405135282 -0.68949591306141034 0.67183090310321703 0
		 -0.25762591646349714 0.72428957321751675 0.63955726975364058 0 -0.92757224174681685 0 -0.37364386297754848 0
		 -0.93613933236574687 0 0 1;
	setAttr ".bpm[2]" -type "matrix" 0.07000328148073251 -0.99754676110041574 -5.3082538364890297e-16 0
		 0.99754676110041574 0.07000328148073251 6.106226635438361e-16 0 -4.4408920985006262e-16 -4.9960036108132044e-16 1.0000000000000002 0
		 -1.1103047895500724 -0.6472585214074611 0.45711702695970091 1;
	setAttr ".bpm[3]" -type "matrix" 6.1375708873230474e-16 -0.99997509131569917 -0.007058098055404638 0
		 5.8632547320223109e-16 0.0070580980554045599 -0.99997509131569906 0 1.0000000000000002 5.9674487573602154e-16 7.940097464490021e-16 0
		 -1.108748032828337 -2.599897234644891 0.43168371062914579 1;
	setAttr ".bpm[4]" -type "matrix" 1.0000000000000002 -5.1345049469431117e-16 7.8617368347782981e-16 0
		 5.0061956645665554e-16 1.0000000000000002 2.7582103268031322e-16 0 -5.9064282632059344e-16 -1.4137996329210978e-16 1.0000000000000002 0
		 -0.94675651629916813 -4.8914163374873514 0.41550954122817108 1;
	setAttr ".bpm[5]" -type "matrix" 3.8163916471489756e-16 -0.99958018470022258 0.028973338686963064 0
		 2.2204460492503131e-15 0.028973338686963224 0.99958018470022236 0 -1.0000000000000002 -3.3306690738754696e-16 2.0539125955565396e-15 0
		 -0.93613933236574687 -0.66297600577344962 -0.4485405470203806 1;
	setAttr ".bpm[6]" -type "matrix" 3.655495230237913e-16 -0.99976378882391648 0.021733995409217919 0
		 2.2231515143805848e-15 0.021733995409218075 0.99976378882391626 0 -1.0000000000000002 -3.3306690738754696e-16 2.0539125955565396e-15 0
		 -1.0793779413862843 -2.6063949124003098 -0.39767391435927391 1;
	setAttr ".bpm[7]" -type "matrix" -0.073871685515311841 -0.99726775445670923 -4.4501889040113043e-16 0
		 -0.99726775445670923 0.073871685515311841 -6.4897736268841689e-16 0 4.3396402629837524e-16 2.4633073358870749e-16 -1 0
		 -0.92381220983437107 -4.9462600148112124 -0.34680728169816938 1;
	setAttr ".bpm[8]" -type "matrix" -4.7184478546569153e-16 -0.84640220197130545 0.53254418830565209 0
		 -1.3877787807814457e-15 0.53254418830565209 0.84640220197130545 0 -1.0000000000000002 -4.4408920985006262e-16 -1.4988010832439613e-15 0
		 1.1890174903718682 -5.5511151231257827e-17 0.010358798367052446 1;
	setAttr ".bpm[9]" -type "matrix" 4.0042537067901407e-16 -0.99908289581766985 -0.042817838392186502 0
		 1.2875803436483332e-15 0.042817838392186502 -0.99908289581766985 0 1.0000000000000002 4.4933288272340257e-16 1.3764487161993636e-15 0
		 1.189017490371868 -0.76628145706916295 0.49249215721009143 1;
	setAttr ".bpm[10]" -type "matrix" 3.8677538203694288e-16 -0.99948011433969974 -0.032241294010959466 0
		 1.2917462686933385e-15 0.032241294010959466 -0.99948011433969974 0 1.0000000000000002 4.4933288272340257e-16 1.3764487161993636e-15 0
		 1.1890174903718693 -2.5466136002078938 0.41619220821843078 1;
	setAttr ".bpm[11]" -type "matrix" -0.27062635405135393 -0.68949591306141012 0.67183090310321703 0
		 -0.25762591646349831 0.72428957321751697 0.63955726975363969 0 -0.92757224174681641 -2.8494972514406866e-16 -0.37364386297755009 0
		 0.96519482790974465 -4.9119120189493479 0.33989225922676958 1;
	setAttr ".bpm[12]" -type "matrix" 2.4145316287331618e-16 -0.99766256517344087 0.068333052409139949 0
		 -1.4457758526469004e-15 0.068333052409139949 0.99766256517344087 0 -1.0000000000000002 -4.4408920985006262e-16 -1.4988010832439613e-15 0
		 1.1890174903718684 -0.74084814073860938 -0.52484049601204064 1;
	setAttr ".bpm[13]" -type "matrix" 3.3968305895222299e-16 -1.0000000000000002 -1.3877787807814457e-16 0
		 -1.4258972141845502e-15 -1.3877787807814457e-16 1.0000000000000002 0 -1.0000000000000002 -4.4408920985006262e-16 -1.4988010832439613e-15 0
		 1.1890174903718687 -2.5974802328690005 -0.39767391435927424 1;
	setAttr ".bpm[14]" -type "matrix" -4.7184478546569192e-16 -0.84640220197130545 0.53254418830565231 0
		 -1.3877787807814457e-15 0.53254418830565231 0.84640220197130545 0 -1.0000000000000002 -4.4408920985006262e-16 -1.4988010832439613e-15 0
		 1.0389045165027504 -4.8610453862882386 -0.39767391435927479 1;
	setAttr ".bpm[15]" -type "matrix" 0.99023933136193443 -1.8474584912467496e-16 -0.13937742508695328 0
		 -3.3968305895221806e-16 1.0000000000000002 -3.3861802251067274e-15 0 0.13937742508695344 3.3925650844532716e-15 0.99023933136193432 0
		 2.305833151838776 1.7182105279415352e-17 -0.019951164932555811 1;
	setAttr ".bpm[16]" -type "matrix" 0.99930099865730515 1.631516256895871e-16 -0.037383339638306409 0
		 -3.3968305895221806e-16 1.0000000000000002 -3.3861802251067274e-15 0 0.037383339638306562 3.3936721155785038e-15 0.99930099865730504 0
		 3.3122719820606061 1.2347142021043609e-17 -0.021227173202131307 1;
	setAttr ".bpm[17]" -type "matrix" 0.095843846406577393 -0.84640220197130533 0.52384851780273134 0
		 0.15232997453605993 0.53254418830565253 0.83258168749962136 0 -0.98367145732903927 2.130534979894305e-16 0.17997350926223621 0
		 4.1930374875420027 -5.3804163313618019e-16 0.028750229782083726 1;
	setAttr ".bpm[18]" -type "matrix" 0.99930099865730515 1.631516256895871e-16 -0.037383339638306409 0
		 -3.3968305895221806e-16 1.0000000000000002 -3.3861802251067274e-15 0 0.037383339638306562 3.3936721155785038e-15 0.99930099865730504 0
		 2.8624888826996102 0.40957443420340933 -0.60525438149945321 1;
	setAttr ".bpm[19]" -type "matrix" 0.99930099865730515 1.631516256895871e-16 -0.037383339638306409 0
		 -3.3968305895221806e-16 1.0000000000000002 -3.3861802251067274e-15 0 0.037383339638306562 3.3936721155785038e-15 0.99930099865730504 0
		 2.8462222668121675 0.47148344114994278 0.71429391582289414 1;
	setAttr ".bpm[20]" -type "matrix" -0.99984761349457185 1.1102230246251565e-16 -0.017457084212710916 0
		 1.42798426319878e-16 1.0000000000000002 -2.9829715714066721e-16 0 0.017457084212710916 -3.3306690738754696e-16 -0.99984761349457174 0
		 -1.0429962452951627 3.8163916471489756e-17 -0.019419641570682006 1;
	setAttr ".bpm[21]" -type "matrix" -0.99943378713855668 1.2789332255383075e-16 0.033646769917521038 0
		 1.42798426319878e-16 1.0000000000000002 -2.9829715714066721e-16 0 -0.033646769917521038 -3.2695995853762415e-16 -0.99943378713855657 0
		 -2.183626285763534 1.5363455554401077e-18 -0.018479261554371858 1;
	setAttr ".bpm[22]" -type "matrix" -0.27062635405135299 -0.68949591306141045 0.67183090310321714 0
		 -0.25762591646349742 0.72428957321751664 0.63955726975364069 0 -0.92757224174681707 9.5675797369530394e-17 -0.37364386297754859 0
		 -2.6936869912977568 2.8870108840420698e-17 -0.0013076435603326733 1;
	setAttr ".gm" -type "matrix" 3.1147263219001124 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 23 ".pm";
	setAttr -s 23 ".lm";
	setAttr ".lm[0]" -type "matrix" 2.2204460492503131e-16 7.1269417982807135e-17 1 0
		 7.1269417982807135e-17 1 -7.1269417982807148e-17 0 -1 7.1269417982807148e-17 2.2204460492503131e-16 0
		 -0.014913798218303492 1.0628977189315174e-18 4.6548698010916094e-17 1;
	setAttr ".lm[1]" -type "matrix" 0.86924748767742877 0.4609931431172149 -0.17858926945757267 0
		 0.4609931431172149 -0.62532003573902561 0.62965083570361047 0 0.17858926945757267 -0.62965083570361047 -0.75607254806159685 0
		 -0.034305072921154138 0.12094913596591844 0.14523338369496916 1;
	setAttr ".lm[2]" -type "matrix" -0.0081718691401042598 0.069941217002093437 -0.99751764230966034 0
		 0.069941217002093437 0.99514787707783769 0.069202087481079144 0 0.99751764230966034 -0.069202087481079144 -0.013023992062266565 0
		 0.56162909529961669 -0.038962624956540098 -0.0073328556497341546 1;
	setAttr ".lm[3]" -type "matrix" -0.070514035878650211 0 0.99751078728207432 0 0 0.99999999999999856 0 0
		 -0.99751078728207487 0 -0.070514035878650252 0 1.1457880914950767 2.3451270379378537e-16 0.080995758264583731 1;
	setAttr ".lm[4]" -type "matrix" 0.9949925154038487 0.070835478641894697 -0.070514035878650932 0
		 0.070835478641894697 -0.0020330443518092878 0.99748594060078732 0 0.070514035878650932 -0.99748594060078732 -0.0070405289479607003 0
		 0.0099502358153051446 -0.14075524408374257 -0.00099348906106083864 1;
	setAttr ".lm[5]" -type "matrix" -0.073471558613272814 0.0030160135036121976 0.99729275227361536 0
		 0.0030160135036121976 0.99999152624270204 -0.0028019823942027704 0 -0.99729275227361536 0.0028019823942027704 -0.07348003237057088 0
		 0.55470654147050524 -0.0015584972011538651 0.04087050119485594 1;
	setAttr ".lm[6]" -type "matrix" -0.066322859244624985 0 -0.99779821524275003 0 0 1 0 0
		 0.99779821524275003 0 -0.066322859244624985 0 1.1702089676419616 -3.6143835451288087e-15 -0.077782865775956195 1;
	setAttr ".lm[7]" -type "matrix" -0.0016993611587519108 0.14149468339629273 -0.98993755699146757 0
		 0.14149468339629273 0.98001321932934304 0.13983327397411446 0 0.98993755699146757 -0.13983327397411446 -0.021686141829408756 0
		 0.1119109183653348 -0.015807936569285551 -0.0024515849820929193 1;
	setAttr ".lm[8]" -type "matrix" -0.14323499379349225 -0.15180351037439019 -0.97797721384038083 0
		 0.4393704883471567 0.87569542739114614 -0.20027753847053817 0 0.88681300764172288 -0.45838107801724243 -0.058732246621351757 0
		 -0.047055416133459649 0.033371309592073656 0.042682480098257841 1;
	setAttr ".lm[9]" -type "matrix" -4.4408920985006262e-16 2.4434556927244909e-16 1 0
		 2.4434556927244909e-16 1 -2.4434556927244899e-16 0 -1 2.4434556927244899e-16 -4.4408920985006262e-16 0
		 0.68444115885808654 -1.6724016459467385e-16 1.8409794261189267e-16 1;
	setAttr ".lm[10]" -type "matrix" -0.09415827836281232 1.0555027789857674e-15 -0.99555724025078107 0
		 1.0555027789857674e-15 1 9.6038521528752825e-16 0 0.99555724025078107 -9.6038521528752825e-16 -0.09415827836281232 0
		 1.1832643715498401 -1.1414608445082457e-15 -0.11191133123106276 1;
	setAttr ".lm[11]" -type "matrix" 0.47140311545502267 0.54926197992055481 0.68999302906120064 0
		 0.54926197992055481 0.42926503843104313 -0.71696778462811506 0 -0.68999302906120064 0.71696778462811506 -0.099331846113934308 0
		 0.092258646786946577 -0.095865428799510127 0.013281614913979015 1;
	setAttr ".lm[12]" -type "matrix" -2.2204460492503131e-16 2.3863165036454874e-16 1 0
		 2.3863165036454874e-16 1 -2.3863165036454869e-16 0 -1 2.3863165036454869e-16 -2.2204460492503131e-16 0
		 0.46422581268944629 -1.107789718239064e-16 7.4906313454177152e-18 1;
	setAttr ".lm[13]" -type "matrix" -0.066171704254625832 0 0.99780825089595004 0 0 1 0 0
		 -0.99780825089595004 0 -0.066171704254625832 0 1.1317825767096188 -1.5256159624294827e-17 0.075056486934559463 1;
	setAttr ".lm[14]" -type "matrix" 0.23619812276375807 0.48057324259288486 0.84454710070346994 0
		 0.48057324259288486 0.69763017298161556 -0.5313769850580673 0 -0.84454710070346994 0.5313769850580673 -0.066171704254626373 0
		 0.13234100645888222 -0.083267072911735962 0.010369143334767678 1;
	setAttr ".lm[15]" -type "matrix" -0.13812184425769836 3.3372779794455709e-16 0.99041524429849737 0
		 3.3372779794455709e-16 1 -2.9041626799284798e-16 0 -0.99041524429849737 2.9041626799284798e-16 -0.13812184425769836 0
		 0.52052259409799961 -1.5263116158007874e-16 0.072591310653280616 1;
	setAttr ".lm[16]" -type "matrix" 0.99715525561384322 0.058870601402582497 -0.047070675501732072 0
		 0.058870601402582497 -0.21829846167087963 0.9741047345756132 0 0.047070675501732072 -0.9741047345756132 -0.22114320605703641 0
		 0.007485576143803024 -0.15491035735054343 -0.035168059306133231 1;
	setAttr ".lm[17]" -type "matrix" 0.44076381786163432 -0.88882527756037599 -0.12536699260075007 0
		 -0.88882527756037599 -0.41265962264726275 -0.19925275859154179 0 0.12536699260075007 0.19925275859154179 -0.97189580478562831 0
		 0.00030693391434179359 0.00048782720131659645 -0.0023794762680893712 1;
	setAttr ".lm[18]" -type "matrix" 0.10707849369284775 0.85520859038132857 0.5071020243762081 0
		 0.99398616614580237 -0.10384124259982769 -0.034763455612038585 0 0.022928098465358131 0.50777481551697878 -0.86118467184887826 0
		 0.019743588562438758 0.047468890727697936 -0.06911672835924576 1;
	setAttr ".lm[19]" -type "matrix" 0.098814704299959283 0.86146909855398368 -0.49810304802389777 0
		 0.98709840635235202 -0.021483478794615648 0.15866693516775202 0 0.12598567533953203 -0.50735535118442121 -0.85247765790885977 0
		 0.023166727258410881 0.0026487648808463417 0.0091769010769084183 1;
	setAttr ".lm[20]" -type "matrix" -0.018281391477182884 1.5195742359521255e-16 -0.99983288139851556 0
		 1.5195742359521255e-16 1 1.4920436527146392e-16 0 0.99983288139851556 -1.4920436527146392e-16 -0.018281391477182884 0
		 0.41780622258830658 -6.2348931914061791e-17 -0.0076393557951964959 1;
	setAttr ".lm[21]" -type "matrix" 1.4432899320127033e-15 0 -0.99999999999999989 0
		 0 1 0 0 0.99999999999999989 0 1.4432899320127033e-15 0 0.14668740890247473 -1.0903924919446741e-17 -2.1628819561307473e-16 1;
	setAttr ".lm[22]" -type "matrix" -0.0043248192098122029 -0.95607873402775356 0.29307806174923851 0
		 -0.95607873402775356 0.089849689884890394 0.27899908166063381 0 -0.29307806174923851 -0.27899908166063381 -0.91447512932492181 0
		 0.013129573754950077 0.012498850983124289 0.040967476671154378 1;
	setAttr ".otw" -type "doubleArray" 150 0 0.99434554576873779 0 0.93599522113800049
		 0 0.9352295994758606 0 0.97188764810562134 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 1 0.94838196039199829 0.98064625263214111 0.90506047010421753 0 0 0 0 0 0 0 0 1
		 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.75234723091125488 0.33073931932449341
		 0 0 0 0 0.5884774923324585 0.87456393241882324 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr -s 3 ".fc[0:2]"  0 1 2 0.5 1 2 1 0 2;
	setAttr ".ci" 8;
createNode animCurveTU -n "joint13_visibility";
	rename -uid "92F83F47-4427-C7DB-1704-B2B37210AD9D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 2 1 3 1 4 1 5 1 8 1 9 1 10 1 14 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTL -n "joint13_translateX";
	rename -uid "1A39CD9F-4F20-8995-1A88-EE986D29BA76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0.34203822384063454 2 0.34203822384063454
		 3 0.34203822384063454 4 0.34203822384063454 5 0.34203822384063454 8 0.34203822384063454
		 9 0.34203822384063454 10 0.34203822384063454 14 0.34203822384063454;
createNode animCurveTL -n "joint13_translateY";
	rename -uid "097CC220-4895-B159-DF89-3AB7DC843CDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -0.84752823302334712 2 -0.84752823302334712
		 3 -0.84752823302334712 4 -0.84752823302334712 5 -0.84752823302334712 8 -0.84752823302334712
		 9 -0.84752823302334712 10 -0.84752823302334712 14 -0.84752823302334712;
createNode animCurveTL -n "joint13_translateZ";
	rename -uid "89D9562D-4E53-042C-C03C-34B023D97159";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 8.831444095907279e-16 2 8.831444095907279e-16
		 3 8.831444095907279e-16 4 8.831444095907279e-16 5 8.831444095907279e-16 8 8.831444095907279e-16
		 9 8.831444095907279e-16 10 8.831444095907279e-16 14 8.831444095907279e-16;
createNode animCurveTA -n "joint13_rotateX";
	rename -uid "BDEA12B8-4773-8493-85F9-AE84FA6D47BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 2 0 3 0 4 0 5 0 8 0 9 0 10 0 14 0;
createNode animCurveTA -n "joint13_rotateY";
	rename -uid "76A05F40-4028-309B-6516-67A7E6C161B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 2 36.511048548047953 3 -2.8564957628778789
		 4 -26.700422095692808 5 8.479231764725947 8 8.479231764725947 9 8.479231764725947
		 10 27.936186928837515 14 37.401183169490913;
createNode animCurveTA -n "joint13_rotateZ";
	rename -uid "68F3FA73-41D0-DA55-8D7A-65B3A5524309";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 2 0 3 0 4 0 5 0 8 0 9 0 10 0 14 0;
createNode animCurveTU -n "joint13_scaleX";
	rename -uid "3C7F8090-47E5-3106-E606-3AB31E9FF303";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 2 1 3 1 4 1 5 1 8 1 9 1 10 1 14 1;
createNode animCurveTU -n "joint13_scaleY";
	rename -uid "BAC6C79C-45F0-2232-2728-D69D865FBC2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 2 1 3 1 4 1 5 1 8 1 9 1 10 1 14 1;
createNode animCurveTU -n "joint13_scaleZ";
	rename -uid "317973B2-4711-C2BD-BE9A-90B9891B965E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 2 1 3 1 4 1 5 1 8 1 9 1 10 1 14 1;
createNode animCurveTU -n "joint10_visibility";
	rename -uid "2F6EFA55-4E45-1585-3B63-3293A06DE20A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 2 1 3 1 4 1 5 1 10 1 14 1;
	setAttr -s 7 ".kot[0:6]"  5 5 5 5 5 5 5;
createNode animCurveTL -n "joint10_translateX";
	rename -uid "8EB881E3-490E-B179-DBAC-BD9B533BE191";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0.9053396308332633 2 0.9053396308332633
		 3 0.9053396308332633 4 0.9053396308332633 5 0.9053396308332633 10 0.9053396308332633
		 14 0.9053396308332633;
createNode animCurveTL -n "joint10_translateY";
	rename -uid "A5ECC141-433D-1027-1B99-619F46340D64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 9.6942372092737611e-17 2 9.6942372092737611e-17
		 3 9.6942372092737611e-17 4 9.6942372092737611e-17 5 9.6942372092737611e-17 10 9.6942372092737611e-17
		 14 9.6942372092737611e-17;
createNode animCurveTL -n "joint10_translateZ";
	rename -uid "747D0967-4EA7-CB49-A71A-B28703943C9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -9.6740229530773334e-17 2 -9.6740229530773334e-17
		 3 -9.6740229530773334e-17 4 -9.6740229530773334e-17 5 -9.6740229530773334e-17 10 -9.6740229530773334e-17
		 14 -9.6740229530773334e-17;
createNode animCurveTA -n "joint10_rotateX";
	rename -uid "2B48776B-45BD-9BDA-3DA2-1D8CBE2868CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 2 0 3 0 4 0 5 0 10 0 14 0;
createNode animCurveTA -n "joint10_rotateY";
	rename -uid "A0120CF4-4153-AAFC-CC18-F494368B2541";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 2 35.083837775949469 3 -12.668811895680694
		 4 -37.08079272363215 5 -8.0734715492083602 10 -31.533004728520165 14 -50.758426597853237;
createNode animCurveTA -n "joint10_rotateZ";
	rename -uid "26A5033E-413F-D011-3FAA-7E9AD0A01239";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 2 0 3 0 4 0 5 0 10 0 14 0;
createNode animCurveTU -n "joint10_scaleX";
	rename -uid "4599B910-4C6B-1292-F994-6F9A37BF8BC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 2 1 3 1 4 1 5 1 10 1 14 1;
createNode animCurveTU -n "joint10_scaleY";
	rename -uid "74128C9E-4CC6-AB17-1163-ECB4B92CE15A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 2 1 3 1 4 1 5 1 10 1 14 1;
createNode animCurveTU -n "joint10_scaleZ";
	rename -uid "D06D0DDA-4878-2AC8-3EEA-078429C296BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 2 1 3 1 4 1 5 1 10 1 14 1;
createNode animCurveTU -n "joint6_visibility";
	rename -uid "0C94A88B-4D09-BAF4-F873-5DA7EAD4E8CD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 2 1 3 1 4 1 5 1 10 1 12 1 13 1 14 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTL -n "joint6_translateX";
	rename -uid "3C8905E4-413E-5275-4953-5EB0A2D651CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0.15577584565545799 2 0.15577584565545799
		 3 0.15577584565545799 4 0.15577584565545799 5 0.15577584565545799 10 0.15577584565545799
		 12 0.15577584565545799 13 0.15577584565545799 14 0.15577584565545799;
createNode animCurveTL -n "joint6_translateY";
	rename -uid "E8B2EDCF-40FC-E9BF-4781-D69260DBD34E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -0.76705397590126445 2 -0.76705397590126445
		 3 -0.76705397590126445 4 -0.76705397590126445 5 -0.76705397590126445 10 -0.76705397590126445
		 12 -0.76705397590126445 13 -0.76705397590126445 14 -0.76705397590126445;
createNode animCurveTL -n "joint6_translateZ";
	rename -uid "875CEC1D-4C41-5D69-CE2C-89B41FE81424";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0.16759442269075761 2 0.16759442269075761
		 3 0.16759442269075761 4 0.16759442269075761 5 0.16759442269075761 10 0.16759442269075761
		 12 0.16759442269075761 13 0.16759442269075761 14 0.16759442269075761;
createNode animCurveTA -n "joint6_rotateX";
	rename -uid "D093F310-4900-C2E7-A79B-93B236FB3818";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 2 0 3 0 4 0 5 0 10 0 12 0 13 0 14 0;
createNode animCurveTA -n "joint6_rotateY";
	rename -uid "C57E7647-4DC5-D5AE-87A3-FEA383F3ACBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 2 25.672213471095709 3 -13.014906164153563
		 4 -33.831018190215907 5 -9.206638462728252 10 -46.240938773390795 12 -18.479903489733218
		 13 -56.836355374852559 14 -69.215891910769557;
createNode animCurveTA -n "joint6_rotateZ";
	rename -uid "13B00874-4B3C-D2C8-25F1-959BD5CCC291";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 2 0 3 0 4 0 5 0 10 0 12 0 13 0 14 0;
createNode animCurveTU -n "joint6_scaleX";
	rename -uid "C3D1541D-4F08-ED18-6F6F-618957CC536C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 2 1 3 1 4 1 5 1 10 1 12 1 13 1 14 1;
createNode animCurveTU -n "joint6_scaleY";
	rename -uid "55E2CA2E-4DD4-F4CE-1D38-868AE3F80251";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 2 1 3 1 4 1 5 1 10 1 12 1 13 1 14 1;
createNode animCurveTU -n "joint6_scaleZ";
	rename -uid "A2EB62BB-4622-A8B8-5D4C-20ADD475702D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 2 1 3 1 4 1 5 1 10 1 12 1 13 1 14 1;
createNode animCurveTU -n "joint3_visibility";
	rename -uid "6CE0F8A7-4317-57F8-89AD-D9BD78225EE7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 2 1 3 1 4 1 5 1 10 1 12 1 13 1 14 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTL -n "joint3_translateX";
	rename -uid "994E81D3-451E-9468-FF46-DA8D53094D52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0.80052121293028999 2 0.80052121293028999
		 3 0.80052121293028999 4 0.80052121293028999 5 0.80052121293028999 10 0.80052121293028999
		 12 0.80052121293028999 13 0.80052121293028999 14 0.80052121293028999;
createNode animCurveTL -n "joint3_translateY";
	rename -uid "D4A4C1C3-4045-EB31-31EF-2D9679AC2033";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -0.13158054498796731 2 -0.13158054498796731
		 3 -0.13158054498796731 4 -0.13158054498796731 5 -0.13158054498796731 10 -0.13158054498796731
		 12 -0.13158054498796731 13 -0.13158054498796731 14 -0.13158054498796731;
createNode animCurveTL -n "joint3_translateZ";
	rename -uid "D3110964-41C8-5424-BDAF-11BFA7F4D983";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -0.0092479282307108297 2 -0.0092479282307108297
		 3 -0.0092479282307108297 4 -0.0092479282307108297 5 -0.0092479282307108297 10 -0.0092479282307108297
		 12 -0.0092479282307108297 13 -0.0092479282307108297 14 -0.0092479282307108297;
createNode animCurveTA -n "joint3_rotateX";
	rename -uid "3FD51AA5-441E-2B1C-2C5E-40AEEC975E43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 2 0 3 0 4 0 5 0 10 0 12 0 13 0 14 0;
createNode animCurveTA -n "joint3_rotateY";
	rename -uid "A9FFAC79-4347-AF1E-6292-B79E6D8420EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 2 0 3 0 4 0 5 0 10 0 12 0 13 0 14 0;
createNode animCurveTA -n "joint3_rotateZ";
	rename -uid "9FC5C71C-441B-A21C-8F14-75B2C80A9A20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 2 -38.971243317795668 3 -0.43984362433992819
		 4 27.613128264861771 5 -8.0592885523756035 10 -37.728940444391533 12 -26.035591882128745
		 13 -64.501134282894824 14 -71.919438706902909;
createNode animCurveTU -n "joint3_scaleX";
	rename -uid "DF39241E-46A9-6776-9B1F-179FDFC89596";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 2 1 3 1 4 1 5 1 10 1 12 1 13 1 14 1;
createNode animCurveTU -n "joint3_scaleY";
	rename -uid "F34D895D-4DAE-BEB0-CF7C-C3A2E0E10696";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 2 1 3 1 4 1 5 1 10 1 12 1 13 1 14 1;
createNode animCurveTU -n "joint3_scaleZ";
	rename -uid "2CB4AAE0-4997-3E77-D35A-A38BEE6CBDDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 2 1 3 1 4 1 5 1 10 1 12 1 13 1 14 1;
createNode animCurveTU -n "joint17_visibility";
	rename -uid "0019D493-4B91-684A-F710-6CABFC22ECE4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "joint17_translateX";
	rename -uid "BB488BA4-44F8-5568-871E-0FA49F58F053";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.1404398075493811;
createNode animCurveTL -n "joint17_translateY";
	rename -uid "FB57A629-4DDF-698A-A921-D8B17F6D4AB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -1.701870390356703e-16;
createNode animCurveTL -n "joint17_translateZ";
	rename -uid "0D68F8E9-4353-02ED-90E2-71947B60EF3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.020852311387089907;
createNode animCurveTA -n "joint17_rotateX";
	rename -uid "0B6869B0-4955-F993-F6A4-66813E583C9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint17_rotateY";
	rename -uid "EA9BB914-4950-E559-9585-E8B8FAB187A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint17_rotateZ";
	rename -uid "D3EF18A5-48A3-ACBE-8C12-E5AAD8642207";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "joint17_scaleX";
	rename -uid "D502A6F1-445E-8D5A-59D9-9BBEFD4D2F37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint17_scaleY";
	rename -uid "9955F53A-4992-F542-4532-398780EF48BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint17_scaleZ";
	rename -uid "1D1E3A7A-4B00-770E-D9EE-92BF9C036358";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint16_visibility";
	rename -uid "A1CF4C1C-4C71-60D6-EB5A-1F8D1393E6F5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 10 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "joint16_translateX";
	rename -uid "1F01E529-4F9C-A867-E801-79AED60F0A16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.015871581416898553 10 0.015871581416898553;
createNode animCurveTL -n "joint16_translateY";
	rename -uid "D3BF6451-4B84-B025-961C-EEAD55A4E831";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.015109137181361202 10 0.015109137181361202;
createNode animCurveTL -n "joint16_translateZ";
	rename -uid "C94F2641-482A-01AF-4403-91A7C9DB05AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.10637353616619158 10 0.10637353616619158;
createNode animCurveTA -n "joint16_rotateX";
	rename -uid "825BEB93-4448-B8BD-0C9B-4395AC8DA681";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 0;
createNode animCurveTA -n "joint16_rotateY";
	rename -uid "70A4C1F3-4A48-E1A2-E320-3392EDB89C83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 0;
createNode animCurveTA -n "joint16_rotateZ";
	rename -uid "C6D42EE7-4A28-C69C-791A-0F86CD93436A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 27.896315188012156;
createNode animCurveTU -n "joint16_scaleX";
	rename -uid "8089FF7D-47C0-DF6B-F4C4-19B79D466401";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 10 1;
createNode animCurveTU -n "joint16_scaleY";
	rename -uid "37E74C0A-4A28-3134-B9D7-02B77E5A32ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 10 1;
createNode animCurveTU -n "joint16_scaleZ";
	rename -uid "C60787FC-4527-E38F-81CC-999F31BC7A00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 10 1;
createNode animCurveTU -n "joint2_visibility";
	rename -uid "ED8C2010-4479-3525-F48F-8F812E82AAEA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 8 1 10 1 11 1 12 1 13 1 14 1;
	setAttr -s 7 ".kot[0:6]"  5 5 5 5 5 5 5;
createNode animCurveTL -n "joint2_translateX";
	rename -uid "E07C2D8C-4217-7347-0B25-0D93C3C15D84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0.38944580159647996 8 0.38944580159647996
		 10 0.38944580159647996 11 0.38944580159647996 12 0.38944580159647996 13 0.38944580159647996
		 14 0.38944580159647996;
createNode animCurveTL -n "joint2_translateY";
	rename -uid "AFE28893-415F-0D0F-7C68-5393E7D82D3B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -2.7755575615628914e-17 8 -2.7755575615628914e-17
		 10 -2.7755575615628914e-17 11 -2.7755575615628914e-17 12 -2.7755575615628914e-17
		 13 -2.7755575615628914e-17 14 -2.7755575615628914e-17;
createNode animCurveTL -n "joint2_translateZ";
	rename -uid "AE4B2BA9-41EC-E049-61D4-2AA51A03DF8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 8 0 10 0 11 0 12 0 13 0 14 0;
createNode animCurveTA -n "joint2_rotateX";
	rename -uid "176F38FF-48A1-D258-EFF0-5F8EDAD53F9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 89.860655878356212 8 89.860655878356212
		 10 96.957964916605889 11 92.321517045905935 12 92.023298206735021 13 92.023298206735021
		 14 86.386825592289654;
createNode animCurveTA -n "joint2_rotateY";
	rename -uid "23E9C521-482A-C1EB-9403-3281352665A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -47.340342569229442 8 -47.340342569229442
		 10 -58.958511216582657 11 -41.886618129602873 12 -42.608728212458061 13 -42.608728212458061
		 14 -46.791728943561544;
createNode animCurveTA -n "joint2_rotateZ";
	rename -uid "4AA3E5AF-4295-706A-EF20-70BF46B27C13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -46.653513906789925 8 -46.653513906789925
		 10 -72.267043932703331 11 -55.007869058787158 12 -45.40647582420511 13 -45.40647582420511
		 14 -48.762155918246201;
createNode animCurveTU -n "joint2_scaleX";
	rename -uid "87A17AD7-42A4-A02B-BC40-BDBA361AEA5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 8 1 10 1 11 1 12 1 13 1 14 1;
createNode animCurveTU -n "joint2_scaleY";
	rename -uid "225FD1FE-49ED-BBA8-B5F7-62A13E89B28C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 8 1 10 1 11 1 12 1 13 1 14 1;
createNode animCurveTU -n "joint2_scaleZ";
	rename -uid "520B3C5B-45CF-5486-A7FF-4BA23E133AAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 8 1 10 1 11 1 12 1 13 1 14 1;
createNode animCurveTU -n "joint19_visibility";
	rename -uid "E0D66C4C-4975-80F1-6D7F-2997BBF4743C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 4 1 5 1 6 1 7 1 8 1 10 1;
	setAttr -s 7 ".kot[0:6]"  5 5 5 5 5 5 5;
createNode animCurveTL -n "joint19_translateX";
	rename -uid "4424A18E-4840-E1BA-E944-41B777182285";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -0.016141394802964511 4 -0.016141394802964511
		 5 -0.016141394802964511 6 -0.016141394802964511 7 -0.016141394802964511 8 -0.016141394802964511
		 10 -0.016141394802964511;
createNode animCurveTL -n "joint19_translateY";
	rename -uid "2786A89F-4679-259D-AD2B-1490E611700A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -0.025654419678459515 4 -0.025654419678459515
		 5 -0.025654419678459515 6 -0.025654419678459515 7 -0.025654419678459515 8 -0.025654419678459515
		 10 -0.025654419678459515;
createNode animCurveTL -n "joint19_translateZ";
	rename -uid "1E495DEE-4362-D1DE-6DEF-0191CAE4BC73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -1.1168156614669078 4 -1.1168156614669078
		 5 -1.1168156614669078 6 -1.1168156614669078 7 -1.1168156614669078 8 -1.1168156614669078
		 10 -1.1168156614669078;
createNode animCurveTA -n "joint19_rotateX";
	rename -uid "F823F037-4FEB-3A06-D3F7-1DBD92EBC40A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 4 0 5 0 6 0 7 0 8 0 10 2.2621603346968926;
createNode animCurveTA -n "joint19_rotateY";
	rename -uid "2A033822-48C6-87AE-C398-B18AE6D919AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 4 0 5 0 6 34.876948209540529 7 -29.889459551321906
		 8 2.7608509796799203 10 1.5831080900512953;
createNode animCurveTA -n "joint19_rotateZ";
	rename -uid "99A0E1CB-4592-EAC8-F448-84B6E244F8F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 4 0 5 -57.393446710182864 6 -57.393446710182943
		 7 -57.393446710182957 8 -57.393446710182971 10 -2.3611830565594092;
createNode animCurveTU -n "joint19_scaleX";
	rename -uid "770FCCF1-4353-7756-D0FD-9699124CDD82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 4 1 5 1 6 1 7 1 8 1 10 1;
createNode animCurveTU -n "joint19_scaleY";
	rename -uid "BD6A2B2E-4E40-9E5C-E301-CB9E66599CC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 4 1 5 1 6 1 7 1 8 1 10 1;
createNode animCurveTU -n "joint19_scaleZ";
	rename -uid "5AF2C0F4-41ED-9969-B7B4-6BB8D0AB09B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 4 1 5 1 6 1 7 1 8 1 10 1;
createNode animCurveTU -n "joint9_visibility";
	rename -uid "E4B9D6DA-48DA-0AA5-9246-F9833BD8485C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 8 1 10 1 12 1 13 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTL -n "joint9_translateX";
	rename -uid "994AB3FD-43DE-70FA-01ED-CBB2FFF8D865";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.56816408186283673 8 -0.56816408186283673
		 10 -0.56816408186283673 12 -0.56816408186283673 13 -0.56816408186283673;
createNode animCurveTL -n "joint9_translateY";
	rename -uid "A91DB1A5-4C37-B782-4492-08932E4C1EF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.54087042928487139 8 -0.54087042928487139
		 10 -0.54087042928487139 12 -0.54087042928487139 13 -0.54087042928487139;
createNode animCurveTL -n "joint9_translateZ";
	rename -uid "54BC3770-4FDB-8FBB-8998-7BB722538AF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -1.9751069795679426 8 -1.9751069795679426
		 10 -1.9751069795679426 12 -1.9751069795679426 13 -1.9751069795679426;
createNode animCurveTA -n "joint9_rotateX";
	rename -uid "45D49B35-4FA8-899A-0316-8BB3603BDDEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 8 0 10 20.136649085550832 12 20.136649085550832
		 13 -8.1016185585372149;
createNode animCurveTA -n "joint9_rotateY";
	rename -uid "6CFAFAD3-42C6-D0E6-9DA9-0D9665B35370";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 4.3391467731949147 8 4.3391467731949147
		 10 30.148621239734563 12 30.148621239734563 13 -7.7728448055636319;
createNode animCurveTA -n "joint9_rotateZ";
	rename -uid "E303D772-4065-D86D-21FA-998763B0D2B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 8 0 10 5.4065882412989366 12 5.4065882412989366
		 13 3.7753457950588736;
createNode animCurveTU -n "joint9_scaleX";
	rename -uid "F8677FF7-426F-1DC9-003F-A1B3F51AB1C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 8 1 10 1 12 1 13 1;
createNode animCurveTU -n "joint9_scaleY";
	rename -uid "CE47ACD5-470D-AC62-8ED5-50BE0454ADC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 8 1 10 1 12 1 13 1;
createNode animCurveTU -n "joint9_scaleZ";
	rename -uid "33ADB75C-4A1E-CE29-81B9-96B1D463D04C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 8 1 10 1 12 1 13 1;
createNode animCurveTU -n "joint22_visibility";
	rename -uid "AE309CA2-4EC4-8E82-1248-90BF756D6B9B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "joint22_translateX";
	rename -uid "42CF5304-4BBA-4F68-CD32-E6A77913BC47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.42763581288482982;
createNode animCurveTL -n "joint22_translateY";
	rename -uid "B14B8D82-48B5-933B-272C-F58041B10D8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.40957443420341133;
createNode animCurveTL -n "joint22_translateZ";
	rename -uid "5CEFDCAB-48F4-266E-65F7-27B2C66D73C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.60043336686153248;
createNode animCurveTA -n "joint22_rotateX";
	rename -uid "68A70B4F-483B-2E3C-5139-8B911102198A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint22_rotateY";
	rename -uid "C72E6F6D-40D3-641B-88DD-5BAFF710D9CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint22_rotateZ";
	rename -uid "74E30B4A-41DF-AAA3-8E52-3B83C5C7AD77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "joint22_scaleX";
	rename -uid "69A67787-4360-438F-EF4A-69ADCFC29891";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint22_scaleY";
	rename -uid "6B87D05D-4B21-D293-F97E-ED8893BEA33B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint22_scaleZ";
	rename -uid "9085025B-4CCA-D39C-DA41-E281345008C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint21_visibility";
	rename -uid "AB39EA2C-4E11-9E3A-B1A7-E191080A08E1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "joint21_translateX";
	rename -uid "D47A3F64-4C1C-D28F-FA78-0E99B184FB7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.87828152698046591;
createNode animCurveTL -n "joint21_translateY";
	rename -uid "723FC803-4F0C-459B-C80B-1E819EE3FC69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -9.7491009641807538e-16;
createNode animCurveTL -n "joint21_translateZ";
	rename -uid "801B6FFC-4EAD-4020-D0D9-1DBDF2A26A75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.082868424745540306;
createNode animCurveTA -n "joint21_rotateX";
	rename -uid "93B4B527-46C8-CAEF-DBF5-6AA524C0F26E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint21_rotateY";
	rename -uid "13453A83-4205-92CC-7676-9DB02C68F62E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint21_rotateZ";
	rename -uid "7CF4C257-4E1E-AE6D-4C5B-E28FEBDBB499";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "joint21_scaleX";
	rename -uid "0694BDA6-4844-30A7-C6E2-8D9E9C075D9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint21_scaleY";
	rename -uid "A2954AFF-464E-6004-08A2-5DBEBA3FC653";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint21_scaleZ";
	rename -uid "FFF08869-4683-A131-3F9B-BABD6592FBAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint20_visibility";
	rename -uid "EFC8A9D4-41C0-2896-C164-67A3B27F1E85";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "joint20_translateX";
	rename -uid "ABE57A8A-4A24-F1F6-FF3D-B0AA904D3373";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.99679316104255533;
createNode animCurveTL -n "joint20_translateY";
	rename -uid "33970978-441E-8CB2-F435-8EA09A0A1267";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.9228644395090316e-16;
createNode animCurveTL -n "joint20_translateZ";
	rename -uid "A075D1BE-4B84-0FBA-91D3-B98F426F0C8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.13901129908816726;
createNode animCurveTA -n "joint20_rotateX";
	rename -uid "3C50FEA4-4A3F-8869-D35E-01BF9F2A0A4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint20_rotateY";
	rename -uid "3FAD11AC-4C44-1375-24FB-9594EC38CF39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 10.368216799224564;
createNode animCurveTA -n "joint20_rotateZ";
	rename -uid "EE72ECD3-44AA-63CA-C2CF-82BE3FAB8FB7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "joint20_scaleX";
	rename -uid "AFDAE559-4E60-C30E-2379-A4A99AC66048";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint20_scaleY";
	rename -uid "E7A3311E-4DDF-BAD7-8EF3-04A9D74BB54B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint20_scaleZ";
	rename -uid "E8CD754B-4EEC-3135-D3CA-38A3916C70F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint23_visibility";
	rename -uid "84195CDA-4906-2D56-3904-37B2BBB7E14F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "joint23_translateX";
	rename -uid "F5010730-4F82-040B-541F-5DA5ECC2184F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.49322018055387695;
createNode animCurveTL -n "joint23_translateY";
	rename -uid "E95E8E40-416A-7F4A-B003-85B9308D4711";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.47148344114994029;
createNode animCurveTL -n "joint23_translateZ";
	rename -uid "0A4B1B27-4323-176D-9535-1ABF8F817E21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.71758446400274967;
createNode animCurveTA -n "joint23_rotateX";
	rename -uid "B92487A9-4BD9-BDF9-7C30-41BBFFAFAC47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint23_rotateY";
	rename -uid "C71F4345-4B18-1D92-5705-7C9B9F464481";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint23_rotateZ";
	rename -uid "4D66CF0F-476A-23A4-CBCB-81A72D3D299A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "joint23_scaleX";
	rename -uid "41C8D45C-434B-3DF6-05E2-47B1EAF55B1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint23_scaleY";
	rename -uid "208E52ED-4365-B7A1-A958-2FB44DF0FF5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint23_scaleZ";
	rename -uid "F972D859-4D0C-C8E7-A64A-8EBEBBA5E921";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint7_visibility";
	rename -uid "5D2B57DA-4B46-D9FE-A894-8FB5ED18AF51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 9 1 11 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint7_translateX";
	rename -uid "4624F106-4C6B-E915-B645-E280891AE65A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.9440768058119362 9 1.9440768058119362
		 11 1.9440768058119362;
createNode animCurveTL -n "joint7_translateY";
	rename -uid "31EFE89E-41C6-10F2-2468-82979A97C803";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.0054620561218803494 9 -0.0054620561218803494
		 11 -0.0054620561218803494;
createNode animCurveTL -n "joint7_translateZ";
	rename -uid "F2E266DA-49C3-0F47-D237-498B07D7E953";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.14323860902053812 9 0.14323860902053812
		 11 0.14323860902053812;
createNode animCurveTA -n "joint7_rotateX";
	rename -uid "2CA5F4F5-4FCF-BCC2-F2FC-1A8C7B4B9127";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 0 11 0;
createNode animCurveTA -n "joint7_rotateY";
	rename -uid "5BBA9810-41C4-06CD-B5C6-F890274AC914";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 0 11 13.614589910554566;
createNode animCurveTA -n "joint7_rotateZ";
	rename -uid "014CDE6A-4BDC-4A75-B1C9-A088127C53C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 0 11 0;
createNode animCurveTU -n "joint7_scaleX";
	rename -uid "271158A2-4382-B593-B7B0-6586FA16DA58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 9 1 11 1;
createNode animCurveTU -n "joint7_scaleY";
	rename -uid "D53162E6-44C2-ADB2-FC5A-5184731FDDE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 9 1 11 1;
createNode animCurveTU -n "joint7_scaleZ";
	rename -uid "AE7FE112-4BD8-F976-25D1-95B86BF00078";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 9 1 11 1;
createNode animCurveTU -n "joint4_visibility";
	rename -uid "6F644E19-425C-0B57-8AE1-0DA3CA018C7D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 11 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "joint4_translateX";
	rename -uid "392DDADB-4EE3-1CD0-9B94-41B14899D177";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.9479574020682691 11 1.9479574020682691;
createNode animCurveTL -n "joint4_translateY";
	rename -uid "0978A3F5-44F2-864C-C666-DF815EA08A1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.13513817984734658 11 -0.13513817984734658;
createNode animCurveTL -n "joint4_translateZ";
	rename -uid "3AA9B835-4050-38D8-68D3-7FB4D1C08B6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.025433316330553981 11 -0.025433316330553981;
createNode animCurveTA -n "joint4_rotateX";
	rename -uid "709F743A-4498-E16E-40CA-1981CE9EED51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "joint4_rotateY";
	rename -uid "B85355B1-40BD-C400-16F4-6A9D4410D920";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 -21.137802029144137;
createNode animCurveTA -n "joint4_rotateZ";
	rename -uid "2447963E-4083-EDF6-7363-A7B7E8AEAA99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTU -n "joint4_scaleX";
	rename -uid "63146EC6-4D70-EA3D-6390-788EA0446D2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 11 1;
createNode animCurveTU -n "joint4_scaleY";
	rename -uid "5291DEC1-44BE-686B-204F-27803D6372B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 11 1;
createNode animCurveTU -n "joint4_scaleZ";
	rename -uid "6CA32D34-4409-551A-07CA-1194182C962C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 11 1;
createNode animCurveTU -n "joint8_visibility";
	rename -uid "C324F307-415A-6220-F733-EB9D0C95B47E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "joint8_translateX";
	rename -uid "794293AD-4508-35EF-29B9-8EAB323AC61F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2.3404179352839232;
createNode animCurveTL -n "joint8_translateY";
	rename -uid "929FA97E-4D5F-9EAD-9821-4FB29989C49D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -7.2287670902576174e-15;
createNode animCurveTL -n "joint8_translateZ";
	rename -uid "C8F40101-4F93-E478-757B-F6A77E31AEAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.15556573155191239;
createNode animCurveTA -n "joint8_rotateX";
	rename -uid "D1C79CAE-4F63-60F4-6D37-A0B9A67016AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint8_rotateY";
	rename -uid "146EF9C7-40AF-4D34-9D1D-20B881B52DBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint8_rotateZ";
	rename -uid "408D14A4-4E26-A12D-7008-9EBF3D5576C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "joint8_scaleX";
	rename -uid "1C5EB8CF-4959-980C-E903-089341E340E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint8_scaleY";
	rename -uid "9AFE8698-489E-1249-D3F6-A394985D58CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint8_scaleZ";
	rename -uid "9B064028-40A1-2346-85A2-A4A463D382CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint5_visibility";
	rename -uid "89C005D6-4723-5CEA-20FD-ACA6948C83A8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "joint5_translateX";
	rename -uid "51F1E903-4D06-C340-4479-5496177A4B33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2.2915761829901533;
createNode animCurveTL -n "joint5_translateY";
	rename -uid "ECFA3541-4BD4-32A5-5A5E-EBB700324BC5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 4.6902540758757075e-16;
createNode animCurveTL -n "joint5_translateZ";
	rename -uid "C2E6B60D-4EBB-9C33-8522-4984A039F0D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.16199151652916746;
createNode animCurveTA -n "joint5_rotateX";
	rename -uid "B937088B-4972-C116-EF90-AE9F8272D9B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint5_rotateY";
	rename -uid "87562B4E-488E-2CC8-D310-84AEE0EC7FD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint5_rotateZ";
	rename -uid "AD0CFEA4-47D5-9B59-B0D0-1CBFFEB3EB51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "joint5_scaleX";
	rename -uid "64C5578A-452A-1F36-9564-4392BE499533";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint5_scaleY";
	rename -uid "A79B1F9B-44FF-6A58-B588-7490F6986B4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint5_scaleZ";
	rename -uid "A1580C5E-4E55-16BC-A207-3F9E6FFA9900";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint14_visibility";
	rename -uid "80E27BA7-4DE9-D493-C6DE-B78B84140A1D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 9 1 10 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint14_translateX";
	rename -uid "4CB408C7-47F0-F731-53DF-E69F9FCBD0C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.8609820163069068 9 1.8609820163069068
		 10 1.8609820163069068;
createNode animCurveTL -n "joint14_translateY";
	rename -uid "EEAECE89-4339-E606-61CA-9F818E82AF98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -4.4408920985006262e-16 9 -4.4408920985006262e-16
		 10 -4.4408920985006262e-16;
createNode animCurveTL -n "joint14_translateZ";
	rename -uid "2CE7CBAC-45B7-3811-E5F6-66BED5E70285";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.2204460492503136e-16 9 2.2204460492503136e-16
		 10 2.2204460492503136e-16;
createNode animCurveTA -n "joint14_rotateX";
	rename -uid "1618DCBB-4ADD-73FD-6542-9F988AE81A71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 0 10 0;
createNode animCurveTA -n "joint14_rotateY";
	rename -uid "4367212B-4987-6BEF-0F24-2D84EAAC40FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 0 10 -25.186978142681625;
createNode animCurveTA -n "joint14_rotateZ";
	rename -uid "F3292D48-4A75-F1B5-CA0D-FDAE1C2573B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 0 10 0;
createNode animCurveTU -n "joint14_scaleX";
	rename -uid "793C835B-4C7C-5CF4-F132-73B0C8C1408A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 9 1 10 1;
createNode animCurveTU -n "joint14_scaleY";
	rename -uid "01A0D461-416C-2D9F-B698-CF9ED757DBE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 9 1 10 1;
createNode animCurveTU -n "joint14_scaleZ";
	rename -uid "6BCBFD4C-4E7D-D857-29F9-0AAA6A1F3128";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 9 1 10 1;
createNode animCurveTU -n "joint11_visibility";
	rename -uid "3970014D-4570-3C36-C4A5-58932FC719FD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 10 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "joint11_translateX";
	rename -uid "EB398CFE-4A0A-FB8F-4C7B-4FAB4DDEEAC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.7819663919695783 10 1.7819663919695783;
createNode animCurveTL -n "joint11_translateY";
	rename -uid "2DF3A659-4600-9795-9A73-558E61672CE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -4.3541559247017858e-16 10 -4.3541559247017858e-16;
createNode animCurveTL -n "joint11_translateZ";
	rename -uid "6499FAD1-47F6-93BD-5582-AB9EE5EEF78D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 5.5164206536062466e-16 10 5.5164206536062466e-16;
createNode animCurveTA -n "joint11_rotateX";
	rename -uid "CC76E30C-4565-1C09-11C1-F8B785C51B42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 0;
createNode animCurveTA -n "joint11_rotateY";
	rename -uid "749AFEC8-4117-1847-D3BA-65A4ABF58469";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 26.693121744069909;
createNode animCurveTA -n "joint11_rotateZ";
	rename -uid "60C53FB5-441D-3B7B-36F3-ACB257657A1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 0;
createNode animCurveTU -n "joint11_scaleX";
	rename -uid "96E8EC05-4BAA-BDB0-AE98-16BD5BAD0A82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 10 1;
createNode animCurveTU -n "joint11_scaleY";
	rename -uid "F57472CA-4045-3350-B057-65A37FEC2C16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 10 1;
createNode animCurveTU -n "joint11_scaleZ";
	rename -uid "1275ED4F-468A-3861-0065-9DAA8882D574";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 10 1;
createNode animCurveTU -n "joint15_visibility";
	rename -uid "BC40BF07-4A58-026A-5C9D-CFA7D28492DF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "joint15_translateX";
	rename -uid "2C247F9A-4B90-5355-8688-79817F4BF91F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2.2635651534192376;
createNode animCurveTL -n "joint15_translateY";
	rename -uid "EA88E076-4CEC-5822-CCCE-37922160BD4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -3.0512319248589653e-17;
createNode animCurveTL -n "joint15_translateZ";
	rename -uid "A6B56B47-4938-35AB-27BE-298303176C0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.15011297386911893;
createNode animCurveTA -n "joint15_rotateX";
	rename -uid "7092CD0D-42D8-E01B-4DFD-36AD8CCF2C28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint15_rotateY";
	rename -uid "8E9A7B1B-453D-2487-DB61-A1AFD0EC4D07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint15_rotateZ";
	rename -uid "FD594F06-4EA3-88D8-9867-28A12C68BA54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "joint15_scaleX";
	rename -uid "50C920AF-41D4-A463-6FDB-2C9797405715";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint15_scaleY";
	rename -uid "B2D3DCBF-4540-1A66-8DEE-608DEC4AEF7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint15_scaleZ";
	rename -uid "2B9E6B7D-486D-0E87-265A-2E908B1EF692";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint12_visibility";
	rename -uid "F4210597-4357-6F71-5384-CEB4567DAA7B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "joint12_translateX";
	rename -uid "0BE3091C-4142-472C-34AD-6B85FF552912";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2.3665287430996802;
createNode animCurveTL -n "joint12_translateY";
	rename -uid "B75F06A4-4BC2-8088-86F0-CB9F39F34368";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.2829216890164913e-15;
createNode animCurveTL -n "joint12_translateZ";
	rename -uid "284EBEA7-4014-6292-5A9B-039C0847B90D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.22382266246212551;
createNode animCurveTA -n "joint12_rotateX";
	rename -uid "B6BA85EC-4F02-BDBC-3491-228A47029495";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint12_rotateY";
	rename -uid "00AAEFAF-49FA-CC73-7DCC-48B51A0ECE4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint12_rotateZ";
	rename -uid "8F5CB9BF-437C-9A0E-BE88-3CB2F2C66BDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "joint12_scaleX";
	rename -uid "973537F0-4A35-0423-6558-EA8D27C66D49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint12_scaleY";
	rename -uid "A9BF8575-40BD-0E8B-4CB9-C7927FA25EFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint12_scaleZ";
	rename -uid "569E82D4-403E-483D-EEE7-CEBB22B47BAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "9BEB2C25-4802-DD11-B2F8-7980706BB15D";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -785.71425449280639 -113.09523360123731 ;
	setAttr ".tgi[0].vh" -type "double2" 757.14282705670462 115.47618588757912 ;
	setAttr -s 220 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -868.5714111328125;
	setAttr ".tgi[0].ni[0].y" 34.285713195800781;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 52.857143402099609;
	setAttr ".tgi[0].ni[1].y" 212.85714721679688;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -254.28572082519531;
	setAttr ".tgi[0].ni[2].y" 58.571430206298828;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 360;
	setAttr ".tgi[0].ni[3].y" 121.42857360839844;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -107.14286041259766;
	setAttr ".tgi[0].ni[4].y" 164.28572082519531;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -561.4285888671875;
	setAttr ".tgi[0].ni[5].y" 121.42857360839844;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 667.14288330078125;
	setAttr ".tgi[0].ni[6].y" 154.28572082519531;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 52.857143402099609;
	setAttr ".tgi[0].ni[7].y" 54.285713195800781;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -561.4285888671875;
	setAttr ".tgi[0].ni[8].y" -37.142856597900391;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 567.14288330078125;
	setAttr ".tgi[0].ni[9].y" -131.42857360839844;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -107.14286041259766;
	setAttr ".tgi[0].ni[10].y" -160;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" -107.14286041259766;
	setAttr ".tgi[0].ni[11].y" -30;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" -107.14286041259766;
	setAttr ".tgi[0].ni[12].y" 100;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" -107.14286041259766;
	setAttr ".tgi[0].ni[13].y" -420;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" -107.14286041259766;
	setAttr ".tgi[0].ni[14].y" 230;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" -107.14286041259766;
	setAttr ".tgi[0].ni[15].y" -290;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" -107.14286041259766;
	setAttr ".tgi[0].ni[16].y" 490;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" -107.14286041259766;
	setAttr ".tgi[0].ni[17].y" -550;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" -107.14286041259766;
	setAttr ".tgi[0].ni[18].y" 360;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" -107.14286041259766;
	setAttr ".tgi[0].ni[19].y" 620;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" -107.14286041259766;
	setAttr ".tgi[0].ni[20].y" -160;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" -107.14286041259766;
	setAttr ".tgi[0].ni[21].y" 100;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" -107.14286041259766;
	setAttr ".tgi[0].ni[22].y" -290;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" -107.14286041259766;
	setAttr ".tgi[0].ni[23].y" 490;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" -107.14286041259766;
	setAttr ".tgi[0].ni[24].y" -550;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" -107.14286041259766;
	setAttr ".tgi[0].ni[25].y" -30;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" -107.14286041259766;
	setAttr ".tgi[0].ni[26].y" 620;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" -107.14286041259766;
	setAttr ".tgi[0].ni[27].y" 360;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" -107.14286041259766;
	setAttr ".tgi[0].ni[28].y" -420;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" -107.14286041259766;
	setAttr ".tgi[0].ni[29].y" 230;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" -107.14286041259766;
	setAttr ".tgi[0].ni[30].y" -420;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" -107.14286041259766;
	setAttr ".tgi[0].ni[31].y" 490;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" -107.14286041259766;
	setAttr ".tgi[0].ni[32].y" -160;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" -107.14286041259766;
	setAttr ".tgi[0].ni[33].y" -550;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" -107.14286041259766;
	setAttr ".tgi[0].ni[34].y" 360;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" -107.14286041259766;
	setAttr ".tgi[0].ni[35].y" 230;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" -107.14286041259766;
	setAttr ".tgi[0].ni[36].y" -30;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" -107.14286041259766;
	setAttr ".tgi[0].ni[37].y" -290;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" -107.14286041259766;
	setAttr ".tgi[0].ni[38].y" 100;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" -107.14286041259766;
	setAttr ".tgi[0].ni[39].y" 620;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" -107.14286041259766;
	setAttr ".tgi[0].ni[40].y" -160;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" -107.14286041259766;
	setAttr ".tgi[0].ni[41].y" 230;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" -107.14286041259766;
	setAttr ".tgi[0].ni[42].y" -550;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" -107.14286041259766;
	setAttr ".tgi[0].ni[43].y" -420;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" -107.14286041259766;
	setAttr ".tgi[0].ni[44].y" -30;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" -107.14286041259766;
	setAttr ".tgi[0].ni[45].y" 100;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" -107.14286041259766;
	setAttr ".tgi[0].ni[46].y" 360;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" -107.14286041259766;
	setAttr ".tgi[0].ni[47].y" -290;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" -107.14286041259766;
	setAttr ".tgi[0].ni[48].y" 620;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" -107.14286041259766;
	setAttr ".tgi[0].ni[49].y" 490;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" -107.14286041259766;
	setAttr ".tgi[0].ni[50].y" -160;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" -107.14286041259766;
	setAttr ".tgi[0].ni[51].y" -30;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" -107.14286041259766;
	setAttr ".tgi[0].ni[52].y" -550;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" -107.14286041259766;
	setAttr ".tgi[0].ni[53].y" 100;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" -107.14286041259766;
	setAttr ".tgi[0].ni[54].y" 230;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" -107.14286041259766;
	setAttr ".tgi[0].ni[55].y" -420;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" -107.14286041259766;
	setAttr ".tgi[0].ni[56].y" 360;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" -107.14286041259766;
	setAttr ".tgi[0].ni[57].y" 490;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" -107.14286041259766;
	setAttr ".tgi[0].ni[58].y" 620;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" -107.14286041259766;
	setAttr ".tgi[0].ni[59].y" -290;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" -107.14286041259766;
	setAttr ".tgi[0].ni[60].y" 100;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" -107.14286041259766;
	setAttr ".tgi[0].ni[61].y" 230;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" -107.14286041259766;
	setAttr ".tgi[0].ni[62].y" -550;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" -107.14286041259766;
	setAttr ".tgi[0].ni[63].y" 360;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" -107.14286041259766;
	setAttr ".tgi[0].ni[64].y" -30;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" -107.14286041259766;
	setAttr ".tgi[0].ni[65].y" -420;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" -107.14286041259766;
	setAttr ".tgi[0].ni[66].y" 490;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" -107.14286041259766;
	setAttr ".tgi[0].ni[67].y" -290;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" -107.14286041259766;
	setAttr ".tgi[0].ni[68].y" 620;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" -107.14286041259766;
	setAttr ".tgi[0].ni[69].y" -160;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" -882.85711669921875;
	setAttr ".tgi[0].ni[70].y" 491.42855834960938;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" -882.85711669921875;
	setAttr ".tgi[0].ni[71].y" 390;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" -882.85711669921875;
	setAttr ".tgi[0].ni[72].y" 288.57144165039063;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" -882.85711669921875;
	setAttr ".tgi[0].ni[73].y" 187.14285278320313;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" -882.85711669921875;
	setAttr ".tgi[0].ni[74].y" 85.714286804199219;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" -882.85711669921875;
	setAttr ".tgi[0].ni[75].y" -15.714285850524902;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" -882.85711669921875;
	setAttr ".tgi[0].ni[76].y" -117.14286041259766;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" -882.85711669921875;
	setAttr ".tgi[0].ni[77].y" -218.57142639160156;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" -882.85711669921875;
	setAttr ".tgi[0].ni[78].y" -320;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" -882.85711669921875;
	setAttr ".tgi[0].ni[79].y" -421.42855834960938;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" -107.14286041259766;
	setAttr ".tgi[0].ni[80].y" 100;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" -107.14286041259766;
	setAttr ".tgi[0].ni[81].y" -550;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" -107.14286041259766;
	setAttr ".tgi[0].ni[82].y" -290;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" -107.14286041259766;
	setAttr ".tgi[0].ni[83].y" -30;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" -107.14286041259766;
	setAttr ".tgi[0].ni[84].y" 230;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" -107.14286041259766;
	setAttr ".tgi[0].ni[85].y" 360;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" -107.14286041259766;
	setAttr ".tgi[0].ni[86].y" -420;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" -107.14286041259766;
	setAttr ".tgi[0].ni[87].y" 490;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" -107.14286041259766;
	setAttr ".tgi[0].ni[88].y" -160;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" -107.14286041259766;
	setAttr ".tgi[0].ni[89].y" 620;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" -107.14286041259766;
	setAttr ".tgi[0].ni[90].y" -290;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" -107.14286041259766;
	setAttr ".tgi[0].ni[91].y" -550;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" -107.14286041259766;
	setAttr ".tgi[0].ni[92].y" -420;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" -107.14286041259766;
	setAttr ".tgi[0].ni[93].y" 360;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" -107.14286041259766;
	setAttr ".tgi[0].ni[94].y" 490;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" -107.14286041259766;
	setAttr ".tgi[0].ni[95].y" 230;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" -107.14286041259766;
	setAttr ".tgi[0].ni[96].y" -160;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" -107.14286041259766;
	setAttr ".tgi[0].ni[97].y" -30;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" -107.14286041259766;
	setAttr ".tgi[0].ni[98].y" 620;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" -107.14286041259766;
	setAttr ".tgi[0].ni[99].y" 100;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" -107.14286041259766;
	setAttr ".tgi[0].ni[100].y" -160;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" -107.14286041259766;
	setAttr ".tgi[0].ni[101].y" -420;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" -107.14286041259766;
	setAttr ".tgi[0].ni[102].y" -30;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" -107.14286041259766;
	setAttr ".tgi[0].ni[103].y" -290;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" -107.14286041259766;
	setAttr ".tgi[0].ni[104].y" 100;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" -107.14286041259766;
	setAttr ".tgi[0].ni[105].y" -550;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" -107.14286041259766;
	setAttr ".tgi[0].ni[106].y" 230;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" -107.14286041259766;
	setAttr ".tgi[0].ni[107].y" 360;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" -107.14286041259766;
	setAttr ".tgi[0].ni[108].y" 490;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" -107.14286041259766;
	setAttr ".tgi[0].ni[109].y" 620;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" -107.14286041259766;
	setAttr ".tgi[0].ni[110].y" -420;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" -107.14286041259766;
	setAttr ".tgi[0].ni[111].y" -290;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" -107.14286041259766;
	setAttr ".tgi[0].ni[112].y" -160;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" -107.14286041259766;
	setAttr ".tgi[0].ni[113].y" -30;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" -107.14286041259766;
	setAttr ".tgi[0].ni[114].y" 490;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" -107.14286041259766;
	setAttr ".tgi[0].ni[115].y" 620;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" -107.14286041259766;
	setAttr ".tgi[0].ni[116].y" 100;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" -107.14286041259766;
	setAttr ".tgi[0].ni[117].y" 230;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" -107.14286041259766;
	setAttr ".tgi[0].ni[118].y" 360;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" -107.14286041259766;
	setAttr ".tgi[0].ni[119].y" -550;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" -107.14286041259766;
	setAttr ".tgi[0].ni[120].y" 100;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" -107.14286041259766;
	setAttr ".tgi[0].ni[121].y" -290;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" -107.14286041259766;
	setAttr ".tgi[0].ni[122].y" -30;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" -107.14286041259766;
	setAttr ".tgi[0].ni[123].y" 230;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" -107.14286041259766;
	setAttr ".tgi[0].ni[124].y" -160;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" -107.14286041259766;
	setAttr ".tgi[0].ni[125].y" -550;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" -107.14286041259766;
	setAttr ".tgi[0].ni[126].y" 620;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" -107.14286041259766;
	setAttr ".tgi[0].ni[127].y" 360;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" -107.14286041259766;
	setAttr ".tgi[0].ni[128].y" -420;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" -107.14286041259766;
	setAttr ".tgi[0].ni[129].y" 490;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" -107.14286041259766;
	setAttr ".tgi[0].ni[130].y" -30;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" -107.14286041259766;
	setAttr ".tgi[0].ni[131].y" 230;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" -107.14286041259766;
	setAttr ".tgi[0].ni[132].y" -420;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" -107.14286041259766;
	setAttr ".tgi[0].ni[133].y" 100;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" -107.14286041259766;
	setAttr ".tgi[0].ni[134].y" 360;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" -107.14286041259766;
	setAttr ".tgi[0].ni[135].y" -290;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" -107.14286041259766;
	setAttr ".tgi[0].ni[136].y" 490;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" -107.14286041259766;
	setAttr ".tgi[0].ni[137].y" -160;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" -107.14286041259766;
	setAttr ".tgi[0].ni[138].y" 620;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" -107.14286041259766;
	setAttr ".tgi[0].ni[139].y" -550;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" -107.14286041259766;
	setAttr ".tgi[0].ni[140].y" -290;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" -107.14286041259766;
	setAttr ".tgi[0].ni[141].y" -160;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" -107.14286041259766;
	setAttr ".tgi[0].ni[142].y" -30;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" -107.14286041259766;
	setAttr ".tgi[0].ni[143].y" 100;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" -107.14286041259766;
	setAttr ".tgi[0].ni[144].y" 230;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" -107.14286041259766;
	setAttr ".tgi[0].ni[145].y" -550;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" -107.14286041259766;
	setAttr ".tgi[0].ni[146].y" -420;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" -107.14286041259766;
	setAttr ".tgi[0].ni[147].y" 490;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" -107.14286041259766;
	setAttr ".tgi[0].ni[148].y" 360;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" -107.14286041259766;
	setAttr ".tgi[0].ni[149].y" 620;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" -107.14286041259766;
	setAttr ".tgi[0].ni[150].y" 100;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" -107.14286041259766;
	setAttr ".tgi[0].ni[151].y" 230;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" -107.14286041259766;
	setAttr ".tgi[0].ni[152].y" -550;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" -107.14286041259766;
	setAttr ".tgi[0].ni[153].y" 360;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" -107.14286041259766;
	setAttr ".tgi[0].ni[154].y" 490;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" -107.14286041259766;
	setAttr ".tgi[0].ni[155].y" -420;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" -107.14286041259766;
	setAttr ".tgi[0].ni[156].y" 620;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" -107.14286041259766;
	setAttr ".tgi[0].ni[157].y" -290;
	setAttr ".tgi[0].ni[157].nvs" 18304;
	setAttr ".tgi[0].ni[158].x" -107.14286041259766;
	setAttr ".tgi[0].ni[158].y" -160;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" -107.14286041259766;
	setAttr ".tgi[0].ni[159].y" -30;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" -107.14286041259766;
	setAttr ".tgi[0].ni[160].y" 100;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" -107.14286041259766;
	setAttr ".tgi[0].ni[161].y" 230;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" -107.14286041259766;
	setAttr ".tgi[0].ni[162].y" 360;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" -107.14286041259766;
	setAttr ".tgi[0].ni[163].y" -30;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" -107.14286041259766;
	setAttr ".tgi[0].ni[164].y" -550;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" -107.14286041259766;
	setAttr ".tgi[0].ni[165].y" -420;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" -107.14286041259766;
	setAttr ".tgi[0].ni[166].y" -290;
	setAttr ".tgi[0].ni[166].nvs" 18304;
	setAttr ".tgi[0].ni[167].x" -107.14286041259766;
	setAttr ".tgi[0].ni[167].y" 620;
	setAttr ".tgi[0].ni[167].nvs" 18304;
	setAttr ".tgi[0].ni[168].x" -107.14286041259766;
	setAttr ".tgi[0].ni[168].y" 490;
	setAttr ".tgi[0].ni[168].nvs" 18304;
	setAttr ".tgi[0].ni[169].x" -107.14286041259766;
	setAttr ".tgi[0].ni[169].y" -160;
	setAttr ".tgi[0].ni[169].nvs" 18304;
	setAttr ".tgi[0].ni[170].x" -107.14286041259766;
	setAttr ".tgi[0].ni[170].y" -550;
	setAttr ".tgi[0].ni[170].nvs" 18304;
	setAttr ".tgi[0].ni[171].x" -107.14286041259766;
	setAttr ".tgi[0].ni[171].y" -420;
	setAttr ".tgi[0].ni[171].nvs" 18304;
	setAttr ".tgi[0].ni[172].x" -107.14286041259766;
	setAttr ".tgi[0].ni[172].y" -290;
	setAttr ".tgi[0].ni[172].nvs" 18304;
	setAttr ".tgi[0].ni[173].x" -107.14286041259766;
	setAttr ".tgi[0].ni[173].y" -160;
	setAttr ".tgi[0].ni[173].nvs" 18304;
	setAttr ".tgi[0].ni[174].x" -107.14286041259766;
	setAttr ".tgi[0].ni[174].y" 230;
	setAttr ".tgi[0].ni[174].nvs" 18304;
	setAttr ".tgi[0].ni[175].x" -107.14286041259766;
	setAttr ".tgi[0].ni[175].y" 360;
	setAttr ".tgi[0].ni[175].nvs" 18304;
	setAttr ".tgi[0].ni[176].x" -107.14286041259766;
	setAttr ".tgi[0].ni[176].y" -30;
	setAttr ".tgi[0].ni[176].nvs" 18304;
	setAttr ".tgi[0].ni[177].x" -107.14286041259766;
	setAttr ".tgi[0].ni[177].y" 100;
	setAttr ".tgi[0].ni[177].nvs" 18304;
	setAttr ".tgi[0].ni[178].x" -107.14286041259766;
	setAttr ".tgi[0].ni[178].y" 620;
	setAttr ".tgi[0].ni[178].nvs" 18304;
	setAttr ".tgi[0].ni[179].x" -107.14286041259766;
	setAttr ".tgi[0].ni[179].y" 490;
	setAttr ".tgi[0].ni[179].nvs" 18304;
	setAttr ".tgi[0].ni[180].x" -107.14286041259766;
	setAttr ".tgi[0].ni[180].y" -290;
	setAttr ".tgi[0].ni[180].nvs" 18304;
	setAttr ".tgi[0].ni[181].x" -107.14286041259766;
	setAttr ".tgi[0].ni[181].y" 230;
	setAttr ".tgi[0].ni[181].nvs" 18304;
	setAttr ".tgi[0].ni[182].x" -107.14286041259766;
	setAttr ".tgi[0].ni[182].y" 360;
	setAttr ".tgi[0].ni[182].nvs" 18304;
	setAttr ".tgi[0].ni[183].x" -107.14286041259766;
	setAttr ".tgi[0].ni[183].y" -30;
	setAttr ".tgi[0].ni[183].nvs" 18304;
	setAttr ".tgi[0].ni[184].x" -107.14286041259766;
	setAttr ".tgi[0].ni[184].y" 490;
	setAttr ".tgi[0].ni[184].nvs" 18304;
	setAttr ".tgi[0].ni[185].x" -107.14286041259766;
	setAttr ".tgi[0].ni[185].y" -420;
	setAttr ".tgi[0].ni[185].nvs" 18304;
	setAttr ".tgi[0].ni[186].x" -107.14286041259766;
	setAttr ".tgi[0].ni[186].y" -160;
	setAttr ".tgi[0].ni[186].nvs" 18304;
	setAttr ".tgi[0].ni[187].x" -107.14286041259766;
	setAttr ".tgi[0].ni[187].y" -550;
	setAttr ".tgi[0].ni[187].nvs" 18304;
	setAttr ".tgi[0].ni[188].x" -107.14286041259766;
	setAttr ".tgi[0].ni[188].y" 620;
	setAttr ".tgi[0].ni[188].nvs" 18304;
	setAttr ".tgi[0].ni[189].x" -107.14286041259766;
	setAttr ".tgi[0].ni[189].y" 100;
	setAttr ".tgi[0].ni[189].nvs" 18304;
	setAttr ".tgi[0].ni[190].x" -107.14286041259766;
	setAttr ".tgi[0].ni[190].y" -290;
	setAttr ".tgi[0].ni[190].nvs" 18304;
	setAttr ".tgi[0].ni[191].x" -107.14286041259766;
	setAttr ".tgi[0].ni[191].y" 490;
	setAttr ".tgi[0].ni[191].nvs" 18304;
	setAttr ".tgi[0].ni[192].x" -107.14286041259766;
	setAttr ".tgi[0].ni[192].y" -160;
	setAttr ".tgi[0].ni[192].nvs" 18304;
	setAttr ".tgi[0].ni[193].x" -107.14286041259766;
	setAttr ".tgi[0].ni[193].y" 230;
	setAttr ".tgi[0].ni[193].nvs" 18304;
	setAttr ".tgi[0].ni[194].x" -107.14286041259766;
	setAttr ".tgi[0].ni[194].y" -550;
	setAttr ".tgi[0].ni[194].nvs" 18304;
	setAttr ".tgi[0].ni[195].x" -107.14286041259766;
	setAttr ".tgi[0].ni[195].y" 620;
	setAttr ".tgi[0].ni[195].nvs" 18304;
	setAttr ".tgi[0].ni[196].x" -107.14286041259766;
	setAttr ".tgi[0].ni[196].y" 100;
	setAttr ".tgi[0].ni[196].nvs" 18304;
	setAttr ".tgi[0].ni[197].x" -107.14286041259766;
	setAttr ".tgi[0].ni[197].y" 360;
	setAttr ".tgi[0].ni[197].nvs" 18304;
	setAttr ".tgi[0].ni[198].x" -107.14286041259766;
	setAttr ".tgi[0].ni[198].y" -420;
	setAttr ".tgi[0].ni[198].nvs" 18304;
	setAttr ".tgi[0].ni[199].x" -107.14286041259766;
	setAttr ".tgi[0].ni[199].y" -30;
	setAttr ".tgi[0].ni[199].nvs" 18304;
	setAttr ".tgi[0].ni[200].x" -107.14286041259766;
	setAttr ".tgi[0].ni[200].y" -30;
	setAttr ".tgi[0].ni[200].nvs" 18304;
	setAttr ".tgi[0].ni[201].x" -107.14286041259766;
	setAttr ".tgi[0].ni[201].y" 100;
	setAttr ".tgi[0].ni[201].nvs" 18304;
	setAttr ".tgi[0].ni[202].x" -107.14286041259766;
	setAttr ".tgi[0].ni[202].y" 490;
	setAttr ".tgi[0].ni[202].nvs" 18304;
	setAttr ".tgi[0].ni[203].x" -107.14286041259766;
	setAttr ".tgi[0].ni[203].y" -420;
	setAttr ".tgi[0].ni[203].nvs" 18304;
	setAttr ".tgi[0].ni[204].x" -107.14286041259766;
	setAttr ".tgi[0].ni[204].y" -290;
	setAttr ".tgi[0].ni[204].nvs" 18304;
	setAttr ".tgi[0].ni[205].x" -107.14286041259766;
	setAttr ".tgi[0].ni[205].y" -160;
	setAttr ".tgi[0].ni[205].nvs" 18304;
	setAttr ".tgi[0].ni[206].x" -107.14286041259766;
	setAttr ".tgi[0].ni[206].y" 230;
	setAttr ".tgi[0].ni[206].nvs" 18304;
	setAttr ".tgi[0].ni[207].x" -107.14286041259766;
	setAttr ".tgi[0].ni[207].y" 620;
	setAttr ".tgi[0].ni[207].nvs" 18304;
	setAttr ".tgi[0].ni[208].x" -107.14286041259766;
	setAttr ".tgi[0].ni[208].y" -550;
	setAttr ".tgi[0].ni[208].nvs" 18304;
	setAttr ".tgi[0].ni[209].x" -107.14286041259766;
	setAttr ".tgi[0].ni[209].y" 360;
	setAttr ".tgi[0].ni[209].nvs" 18304;
	setAttr ".tgi[0].ni[210].x" -107.14286041259766;
	setAttr ".tgi[0].ni[210].y" -30;
	setAttr ".tgi[0].ni[210].nvs" 18304;
	setAttr ".tgi[0].ni[211].x" -107.14286041259766;
	setAttr ".tgi[0].ni[211].y" -290;
	setAttr ".tgi[0].ni[211].nvs" 18304;
	setAttr ".tgi[0].ni[212].x" -107.14286041259766;
	setAttr ".tgi[0].ni[212].y" 100;
	setAttr ".tgi[0].ni[212].nvs" 18304;
	setAttr ".tgi[0].ni[213].x" -107.14286041259766;
	setAttr ".tgi[0].ni[213].y" 360;
	setAttr ".tgi[0].ni[213].nvs" 18304;
	setAttr ".tgi[0].ni[214].x" -107.14286041259766;
	setAttr ".tgi[0].ni[214].y" -550;
	setAttr ".tgi[0].ni[214].nvs" 18304;
	setAttr ".tgi[0].ni[215].x" -107.14286041259766;
	setAttr ".tgi[0].ni[215].y" 490;
	setAttr ".tgi[0].ni[215].nvs" 18304;
	setAttr ".tgi[0].ni[216].x" -107.14286041259766;
	setAttr ".tgi[0].ni[216].y" 230;
	setAttr ".tgi[0].ni[216].nvs" 18304;
	setAttr ".tgi[0].ni[217].x" -107.14286041259766;
	setAttr ".tgi[0].ni[217].y" -160;
	setAttr ".tgi[0].ni[217].nvs" 18304;
	setAttr ".tgi[0].ni[218].x" -107.14286041259766;
	setAttr ".tgi[0].ni[218].y" -420;
	setAttr ".tgi[0].ni[218].nvs" 18304;
	setAttr ".tgi[0].ni[219].x" -107.14286041259766;
	setAttr ".tgi[0].ni[219].y" 620;
	setAttr ".tgi[0].ni[219].nvs" 18304;
select -ne :time1;
	setAttr ".o" 14;
	setAttr ".unw" 14;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "skinCluster1GroupId.id" "pCubeShape1.iog.og[2].gid";
connectAttr "skinCluster1Set.mwc" "pCubeShape1.iog.og[2].gco";
connectAttr "groupId2.id" "pCubeShape1.iog.og[3].gid";
connectAttr "tweakSet1.mwc" "pCubeShape1.iog.og[3].gco";
connectAttr "skinCluster1.og[0]" "pCubeShape1.i";
connectAttr "tweak1.vl[0].vt[0]" "pCubeShape1.twl";
connectAttr "polyExtrudeFace11.out" "pCubeShape1Orig.i";
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2_scaleX.o" "joint2.sx";
connectAttr "joint2_scaleY.o" "joint2.sy";
connectAttr "joint2_scaleZ.o" "joint2.sz";
connectAttr "joint2_visibility.o" "joint2.v";
connectAttr "joint2_translateX.o" "joint2.tx";
connectAttr "joint2_translateY.o" "joint2.ty";
connectAttr "joint2_translateZ.o" "joint2.tz";
connectAttr "joint2_rotateX.o" "joint2.rx";
connectAttr "joint2_rotateY.o" "joint2.ry";
connectAttr "joint2_rotateZ.o" "joint2.rz";
connectAttr "joint2.s" "joint3.is";
connectAttr "joint3_scaleX.o" "joint3.sx";
connectAttr "joint3_scaleY.o" "joint3.sy";
connectAttr "joint3_scaleZ.o" "joint3.sz";
connectAttr "joint3_visibility.o" "joint3.v";
connectAttr "joint3_translateX.o" "joint3.tx";
connectAttr "joint3_translateY.o" "joint3.ty";
connectAttr "joint3_translateZ.o" "joint3.tz";
connectAttr "joint3_rotateX.o" "joint3.rx";
connectAttr "joint3_rotateY.o" "joint3.ry";
connectAttr "joint3_rotateZ.o" "joint3.rz";
connectAttr "joint3.s" "joint4.is";
connectAttr "joint4_scaleX.o" "joint4.sx";
connectAttr "joint4_scaleY.o" "joint4.sy";
connectAttr "joint4_scaleZ.o" "joint4.sz";
connectAttr "joint4_visibility.o" "joint4.v";
connectAttr "joint4_translateX.o" "joint4.tx";
connectAttr "joint4_translateY.o" "joint4.ty";
connectAttr "joint4_translateZ.o" "joint4.tz";
connectAttr "joint4_rotateX.o" "joint4.rx";
connectAttr "joint4_rotateY.o" "joint4.ry";
connectAttr "joint4_rotateZ.o" "joint4.rz";
connectAttr "joint4.s" "joint5.is";
connectAttr "joint5_visibility.o" "joint5.v";
connectAttr "joint5_translateX.o" "joint5.tx";
connectAttr "joint5_translateY.o" "joint5.ty";
connectAttr "joint5_translateZ.o" "joint5.tz";
connectAttr "joint5_rotateX.o" "joint5.rx";
connectAttr "joint5_rotateY.o" "joint5.ry";
connectAttr "joint5_rotateZ.o" "joint5.rz";
connectAttr "joint5_scaleX.o" "joint5.sx";
connectAttr "joint5_scaleY.o" "joint5.sy";
connectAttr "joint5_scaleZ.o" "joint5.sz";
connectAttr "joint2.s" "joint6.is";
connectAttr "joint6_scaleX.o" "joint6.sx";
connectAttr "joint6_scaleY.o" "joint6.sy";
connectAttr "joint6_scaleZ.o" "joint6.sz";
connectAttr "joint6_visibility.o" "joint6.v";
connectAttr "joint6_translateX.o" "joint6.tx";
connectAttr "joint6_translateY.o" "joint6.ty";
connectAttr "joint6_translateZ.o" "joint6.tz";
connectAttr "joint6_rotateX.o" "joint6.rx";
connectAttr "joint6_rotateY.o" "joint6.ry";
connectAttr "joint6_rotateZ.o" "joint6.rz";
connectAttr "joint6.s" "joint7.is";
connectAttr "joint7_scaleX.o" "joint7.sx";
connectAttr "joint7_scaleY.o" "joint7.sy";
connectAttr "joint7_scaleZ.o" "joint7.sz";
connectAttr "joint7_visibility.o" "joint7.v";
connectAttr "joint7_translateX.o" "joint7.tx";
connectAttr "joint7_translateY.o" "joint7.ty";
connectAttr "joint7_translateZ.o" "joint7.tz";
connectAttr "joint7_rotateX.o" "joint7.rx";
connectAttr "joint7_rotateY.o" "joint7.ry";
connectAttr "joint7_rotateZ.o" "joint7.rz";
connectAttr "joint7.s" "joint8.is";
connectAttr "joint8_visibility.o" "joint8.v";
connectAttr "joint8_translateX.o" "joint8.tx";
connectAttr "joint8_translateY.o" "joint8.ty";
connectAttr "joint8_translateZ.o" "joint8.tz";
connectAttr "joint8_rotateX.o" "joint8.rx";
connectAttr "joint8_rotateY.o" "joint8.ry";
connectAttr "joint8_rotateZ.o" "joint8.rz";
connectAttr "joint8_scaleX.o" "joint8.sx";
connectAttr "joint8_scaleY.o" "joint8.sy";
connectAttr "joint8_scaleZ.o" "joint8.sz";
connectAttr "joint2.s" "joint9.is";
connectAttr "joint9_scaleX.o" "joint9.sx";
connectAttr "joint9_scaleY.o" "joint9.sy";
connectAttr "joint9_scaleZ.o" "joint9.sz";
connectAttr "joint9_visibility.o" "joint9.v";
connectAttr "joint9_translateX.o" "joint9.tx";
connectAttr "joint9_translateY.o" "joint9.ty";
connectAttr "joint9_translateZ.o" "joint9.tz";
connectAttr "joint9_rotateX.o" "joint9.rx";
connectAttr "joint9_rotateY.o" "joint9.ry";
connectAttr "joint9_rotateZ.o" "joint9.rz";
connectAttr "joint9.s" "joint10.is";
connectAttr "joint10_scaleX.o" "joint10.sx";
connectAttr "joint10_scaleY.o" "joint10.sy";
connectAttr "joint10_scaleZ.o" "joint10.sz";
connectAttr "joint10_visibility.o" "joint10.v";
connectAttr "joint10_translateX.o" "joint10.tx";
connectAttr "joint10_translateY.o" "joint10.ty";
connectAttr "joint10_translateZ.o" "joint10.tz";
connectAttr "joint10_rotateX.o" "joint10.rx";
connectAttr "joint10_rotateY.o" "joint10.ry";
connectAttr "joint10_rotateZ.o" "joint10.rz";
connectAttr "joint10.s" "joint11.is";
connectAttr "joint11_scaleX.o" "joint11.sx";
connectAttr "joint11_scaleY.o" "joint11.sy";
connectAttr "joint11_scaleZ.o" "joint11.sz";
connectAttr "joint11_visibility.o" "joint11.v";
connectAttr "joint11_translateX.o" "joint11.tx";
connectAttr "joint11_translateY.o" "joint11.ty";
connectAttr "joint11_translateZ.o" "joint11.tz";
connectAttr "joint11_rotateX.o" "joint11.rx";
connectAttr "joint11_rotateY.o" "joint11.ry";
connectAttr "joint11_rotateZ.o" "joint11.rz";
connectAttr "joint11.s" "joint12.is";
connectAttr "joint12_visibility.o" "joint12.v";
connectAttr "joint12_translateX.o" "joint12.tx";
connectAttr "joint12_translateY.o" "joint12.ty";
connectAttr "joint12_translateZ.o" "joint12.tz";
connectAttr "joint12_rotateX.o" "joint12.rx";
connectAttr "joint12_rotateY.o" "joint12.ry";
connectAttr "joint12_rotateZ.o" "joint12.rz";
connectAttr "joint12_scaleX.o" "joint12.sx";
connectAttr "joint12_scaleY.o" "joint12.sy";
connectAttr "joint12_scaleZ.o" "joint12.sz";
connectAttr "joint9.s" "joint13.is";
connectAttr "joint13_scaleX.o" "joint13.sx";
connectAttr "joint13_scaleY.o" "joint13.sy";
connectAttr "joint13_scaleZ.o" "joint13.sz";
connectAttr "joint13_visibility.o" "joint13.v";
connectAttr "joint13_translateX.o" "joint13.tx";
connectAttr "joint13_translateY.o" "joint13.ty";
connectAttr "joint13_translateZ.o" "joint13.tz";
connectAttr "joint13_rotateX.o" "joint13.rx";
connectAttr "joint13_rotateY.o" "joint13.ry";
connectAttr "joint13_rotateZ.o" "joint13.rz";
connectAttr "joint13.s" "joint14.is";
connectAttr "joint14_scaleX.o" "joint14.sx";
connectAttr "joint14_scaleY.o" "joint14.sy";
connectAttr "joint14_scaleZ.o" "joint14.sz";
connectAttr "joint14_visibility.o" "joint14.v";
connectAttr "joint14_translateX.o" "joint14.tx";
connectAttr "joint14_translateY.o" "joint14.ty";
connectAttr "joint14_translateZ.o" "joint14.tz";
connectAttr "joint14_rotateX.o" "joint14.rx";
connectAttr "joint14_rotateY.o" "joint14.ry";
connectAttr "joint14_rotateZ.o" "joint14.rz";
connectAttr "joint14.s" "joint15.is";
connectAttr "joint15_visibility.o" "joint15.v";
connectAttr "joint15_translateX.o" "joint15.tx";
connectAttr "joint15_translateY.o" "joint15.ty";
connectAttr "joint15_translateZ.o" "joint15.tz";
connectAttr "joint15_rotateX.o" "joint15.rx";
connectAttr "joint15_rotateY.o" "joint15.ry";
connectAttr "joint15_rotateZ.o" "joint15.rz";
connectAttr "joint15_scaleX.o" "joint15.sx";
connectAttr "joint15_scaleY.o" "joint15.sy";
connectAttr "joint15_scaleZ.o" "joint15.sz";
connectAttr "joint9.s" "joint19.is";
connectAttr "joint19_scaleX.o" "joint19.sx";
connectAttr "joint19_scaleY.o" "joint19.sy";
connectAttr "joint19_scaleZ.o" "joint19.sz";
connectAttr "joint19_visibility.o" "joint19.v";
connectAttr "joint19_translateX.o" "joint19.tx";
connectAttr "joint19_translateY.o" "joint19.ty";
connectAttr "joint19_translateZ.o" "joint19.tz";
connectAttr "joint19_rotateX.o" "joint19.rx";
connectAttr "joint19_rotateY.o" "joint19.ry";
connectAttr "joint19_rotateZ.o" "joint19.rz";
connectAttr "joint19.s" "joint20.is";
connectAttr "joint20_scaleX.o" "joint20.sx";
connectAttr "joint20_scaleY.o" "joint20.sy";
connectAttr "joint20_scaleZ.o" "joint20.sz";
connectAttr "joint20_visibility.o" "joint20.v";
connectAttr "joint20_translateX.o" "joint20.tx";
connectAttr "joint20_translateY.o" "joint20.ty";
connectAttr "joint20_translateZ.o" "joint20.tz";
connectAttr "joint20_rotateX.o" "joint20.rx";
connectAttr "joint20_rotateY.o" "joint20.ry";
connectAttr "joint20_rotateZ.o" "joint20.rz";
connectAttr "joint20.s" "joint21.is";
connectAttr "joint21_visibility.o" "joint21.v";
connectAttr "joint21_translateX.o" "joint21.tx";
connectAttr "joint21_translateY.o" "joint21.ty";
connectAttr "joint21_translateZ.o" "joint21.tz";
connectAttr "joint21_rotateX.o" "joint21.rx";
connectAttr "joint21_rotateY.o" "joint21.ry";
connectAttr "joint21_rotateZ.o" "joint21.rz";
connectAttr "joint21_scaleX.o" "joint21.sx";
connectAttr "joint21_scaleY.o" "joint21.sy";
connectAttr "joint21_scaleZ.o" "joint21.sz";
connectAttr "joint20.s" "joint22.is";
connectAttr "joint22_visibility.o" "joint22.v";
connectAttr "joint22_translateX.o" "joint22.tx";
connectAttr "joint22_translateY.o" "joint22.ty";
connectAttr "joint22_translateZ.o" "joint22.tz";
connectAttr "joint22_rotateX.o" "joint22.rx";
connectAttr "joint22_rotateY.o" "joint22.ry";
connectAttr "joint22_rotateZ.o" "joint22.rz";
connectAttr "joint22_scaleX.o" "joint22.sx";
connectAttr "joint22_scaleY.o" "joint22.sy";
connectAttr "joint22_scaleZ.o" "joint22.sz";
connectAttr "joint20.s" "joint23.is";
connectAttr "joint23_visibility.o" "joint23.v";
connectAttr "joint23_translateX.o" "joint23.tx";
connectAttr "joint23_translateY.o" "joint23.ty";
connectAttr "joint23_translateZ.o" "joint23.tz";
connectAttr "joint23_rotateX.o" "joint23.rx";
connectAttr "joint23_rotateY.o" "joint23.ry";
connectAttr "joint23_rotateZ.o" "joint23.rz";
connectAttr "joint23_scaleX.o" "joint23.sx";
connectAttr "joint23_scaleY.o" "joint23.sy";
connectAttr "joint23_scaleZ.o" "joint23.sz";
connectAttr "joint2.s" "joint16.is";
connectAttr "joint16_scaleX.o" "joint16.sx";
connectAttr "joint16_scaleY.o" "joint16.sy";
connectAttr "joint16_scaleZ.o" "joint16.sz";
connectAttr "joint16_visibility.o" "joint16.v";
connectAttr "joint16_translateX.o" "joint16.tx";
connectAttr "joint16_translateY.o" "joint16.ty";
connectAttr "joint16_translateZ.o" "joint16.tz";
connectAttr "joint16_rotateX.o" "joint16.rx";
connectAttr "joint16_rotateY.o" "joint16.ry";
connectAttr "joint16_rotateZ.o" "joint16.rz";
connectAttr "joint16.s" "joint17.is";
connectAttr "joint17_scaleX.o" "joint17.sx";
connectAttr "joint17_scaleY.o" "joint17.sy";
connectAttr "joint17_scaleZ.o" "joint17.sz";
connectAttr "joint17_visibility.o" "joint17.v";
connectAttr "joint17_translateX.o" "joint17.tx";
connectAttr "joint17_translateY.o" "joint17.ty";
connectAttr "joint17_translateZ.o" "joint17.tz";
connectAttr "joint17_rotateX.o" "joint17.rx";
connectAttr "joint17_rotateY.o" "joint17.ry";
connectAttr "joint17_rotateZ.o" "joint17.rz";
connectAttr "joint17.s" "joint18.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polySplit2.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySplit2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak4.ip";
connectAttr "polyExtrudeFace3.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyTweak6.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak6.ip";
connectAttr "polyExtrudeFace5.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyTweak7.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak8.ip";
connectAttr "polyExtrudeFace8.out" "polyTweak9.ip";
connectAttr "polyTweak9.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polyTweak10.ip";
connectAttr "polyTweak10.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polyTweak11.ip";
connectAttr "polyTweak11.out" "polySplit13.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polySplit13.out" "polyTweak12.ip";
connectAttr "polyExtrudeFace9.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace10.mp";
connectAttr "polyTweak13.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak13.ip";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "joint1.wm" "skinCluster1.ma[0]";
connectAttr "joint2.wm" "skinCluster1.ma[1]";
connectAttr "joint3.wm" "skinCluster1.ma[2]";
connectAttr "joint4.wm" "skinCluster1.ma[3]";
connectAttr "joint5.wm" "skinCluster1.ma[4]";
connectAttr "joint6.wm" "skinCluster1.ma[5]";
connectAttr "joint7.wm" "skinCluster1.ma[6]";
connectAttr "joint8.wm" "skinCluster1.ma[7]";
connectAttr "joint9.wm" "skinCluster1.ma[8]";
connectAttr "joint10.wm" "skinCluster1.ma[9]";
connectAttr "joint11.wm" "skinCluster1.ma[10]";
connectAttr "joint12.wm" "skinCluster1.ma[11]";
connectAttr "joint13.wm" "skinCluster1.ma[12]";
connectAttr "joint14.wm" "skinCluster1.ma[13]";
connectAttr "joint15.wm" "skinCluster1.ma[14]";
connectAttr "joint19.wm" "skinCluster1.ma[15]";
connectAttr "joint20.wm" "skinCluster1.ma[16]";
connectAttr "joint21.wm" "skinCluster1.ma[17]";
connectAttr "joint22.wm" "skinCluster1.ma[18]";
connectAttr "joint23.wm" "skinCluster1.ma[19]";
connectAttr "joint16.wm" "skinCluster1.ma[20]";
connectAttr "joint17.wm" "skinCluster1.ma[21]";
connectAttr "joint18.wm" "skinCluster1.ma[22]";
connectAttr "joint1.liw" "skinCluster1.lw[0]";
connectAttr "joint2.liw" "skinCluster1.lw[1]";
connectAttr "joint3.liw" "skinCluster1.lw[2]";
connectAttr "joint4.liw" "skinCluster1.lw[3]";
connectAttr "joint5.liw" "skinCluster1.lw[4]";
connectAttr "joint6.liw" "skinCluster1.lw[5]";
connectAttr "joint7.liw" "skinCluster1.lw[6]";
connectAttr "joint8.liw" "skinCluster1.lw[7]";
connectAttr "joint9.liw" "skinCluster1.lw[8]";
connectAttr "joint10.liw" "skinCluster1.lw[9]";
connectAttr "joint11.liw" "skinCluster1.lw[10]";
connectAttr "joint12.liw" "skinCluster1.lw[11]";
connectAttr "joint13.liw" "skinCluster1.lw[12]";
connectAttr "joint14.liw" "skinCluster1.lw[13]";
connectAttr "joint15.liw" "skinCluster1.lw[14]";
connectAttr "joint19.liw" "skinCluster1.lw[15]";
connectAttr "joint20.liw" "skinCluster1.lw[16]";
connectAttr "joint21.liw" "skinCluster1.lw[17]";
connectAttr "joint22.liw" "skinCluster1.lw[18]";
connectAttr "joint23.liw" "skinCluster1.lw[19]";
connectAttr "joint16.liw" "skinCluster1.lw[20]";
connectAttr "joint17.liw" "skinCluster1.lw[21]";
connectAttr "joint18.liw" "skinCluster1.lw[22]";
connectAttr "joint1.obcc" "skinCluster1.ifcl[0]";
connectAttr "joint2.obcc" "skinCluster1.ifcl[1]";
connectAttr "joint3.obcc" "skinCluster1.ifcl[2]";
connectAttr "joint4.obcc" "skinCluster1.ifcl[3]";
connectAttr "joint5.obcc" "skinCluster1.ifcl[4]";
connectAttr "joint6.obcc" "skinCluster1.ifcl[5]";
connectAttr "joint7.obcc" "skinCluster1.ifcl[6]";
connectAttr "joint8.obcc" "skinCluster1.ifcl[7]";
connectAttr "joint9.obcc" "skinCluster1.ifcl[8]";
connectAttr "joint10.obcc" "skinCluster1.ifcl[9]";
connectAttr "joint11.obcc" "skinCluster1.ifcl[10]";
connectAttr "joint12.obcc" "skinCluster1.ifcl[11]";
connectAttr "joint13.obcc" "skinCluster1.ifcl[12]";
connectAttr "joint14.obcc" "skinCluster1.ifcl[13]";
connectAttr "joint15.obcc" "skinCluster1.ifcl[14]";
connectAttr "joint19.obcc" "skinCluster1.ifcl[15]";
connectAttr "joint20.obcc" "skinCluster1.ifcl[16]";
connectAttr "joint21.obcc" "skinCluster1.ifcl[17]";
connectAttr "joint22.obcc" "skinCluster1.ifcl[18]";
connectAttr "joint23.obcc" "skinCluster1.ifcl[19]";
connectAttr "joint16.obcc" "skinCluster1.ifcl[20]";
connectAttr "joint17.obcc" "skinCluster1.ifcl[21]";
connectAttr "joint18.obcc" "skinCluster1.ifcl[22]";
connectAttr "skinBinding1.uw" "skinCluster1.bc";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pCubeShape1.iog.og[2]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "pCubeShape1.iog.og[3]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pCubeShape1Orig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "joint1.msg" "bindPose1.m[0]";
connectAttr "joint2.msg" "bindPose1.m[1]";
connectAttr "joint3.msg" "bindPose1.m[2]";
connectAttr "joint4.msg" "bindPose1.m[3]";
connectAttr "joint5.msg" "bindPose1.m[4]";
connectAttr "joint6.msg" "bindPose1.m[5]";
connectAttr "joint7.msg" "bindPose1.m[6]";
connectAttr "joint8.msg" "bindPose1.m[7]";
connectAttr "joint9.msg" "bindPose1.m[8]";
connectAttr "joint10.msg" "bindPose1.m[9]";
connectAttr "joint11.msg" "bindPose1.m[10]";
connectAttr "joint12.msg" "bindPose1.m[11]";
connectAttr "joint13.msg" "bindPose1.m[12]";
connectAttr "joint14.msg" "bindPose1.m[13]";
connectAttr "joint15.msg" "bindPose1.m[14]";
connectAttr "joint19.msg" "bindPose1.m[15]";
connectAttr "joint20.msg" "bindPose1.m[16]";
connectAttr "joint21.msg" "bindPose1.m[17]";
connectAttr "joint22.msg" "bindPose1.m[18]";
connectAttr "joint23.msg" "bindPose1.m[19]";
connectAttr "joint16.msg" "bindPose1.m[20]";
connectAttr "joint17.msg" "bindPose1.m[21]";
connectAttr "joint18.msg" "bindPose1.m[22]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[1]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[1]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[8]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[8]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[16]" "bindPose1.p[18]";
connectAttr "bindPose1.m[16]" "bindPose1.p[19]";
connectAttr "bindPose1.m[1]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "joint1.bps" "bindPose1.wm[0]";
connectAttr "joint2.bps" "bindPose1.wm[1]";
connectAttr "joint3.bps" "bindPose1.wm[2]";
connectAttr "joint4.bps" "bindPose1.wm[3]";
connectAttr "joint5.bps" "bindPose1.wm[4]";
connectAttr "joint6.bps" "bindPose1.wm[5]";
connectAttr "joint7.bps" "bindPose1.wm[6]";
connectAttr "joint8.bps" "bindPose1.wm[7]";
connectAttr "joint9.bps" "bindPose1.wm[8]";
connectAttr "joint10.bps" "bindPose1.wm[9]";
connectAttr "joint11.bps" "bindPose1.wm[10]";
connectAttr "joint12.bps" "bindPose1.wm[11]";
connectAttr "joint13.bps" "bindPose1.wm[12]";
connectAttr "joint14.bps" "bindPose1.wm[13]";
connectAttr "joint15.bps" "bindPose1.wm[14]";
connectAttr "joint19.bps" "bindPose1.wm[15]";
connectAttr "joint20.bps" "bindPose1.wm[16]";
connectAttr "joint21.bps" "bindPose1.wm[17]";
connectAttr "joint22.bps" "bindPose1.wm[18]";
connectAttr "joint23.bps" "bindPose1.wm[19]";
connectAttr "joint16.bps" "bindPose1.wm[20]";
connectAttr "joint17.bps" "bindPose1.wm[21]";
connectAttr "joint18.bps" "bindPose1.wm[22]";
connectAttr "skinCluster1GroupParts.og" "skinBinding1.ig";
connectAttr "joint1.wm" "skinBinding1.pm[0]";
connectAttr "joint2.wm" "skinBinding1.pm[1]";
connectAttr "joint3.wm" "skinBinding1.pm[2]";
connectAttr "joint4.wm" "skinBinding1.pm[3]";
connectAttr "joint5.wm" "skinBinding1.pm[4]";
connectAttr "joint6.wm" "skinBinding1.pm[5]";
connectAttr "joint7.wm" "skinBinding1.pm[6]";
connectAttr "joint8.wm" "skinBinding1.pm[7]";
connectAttr "joint9.wm" "skinBinding1.pm[8]";
connectAttr "joint10.wm" "skinBinding1.pm[9]";
connectAttr "joint11.wm" "skinBinding1.pm[10]";
connectAttr "joint12.wm" "skinBinding1.pm[11]";
connectAttr "joint13.wm" "skinBinding1.pm[12]";
connectAttr "joint14.wm" "skinBinding1.pm[13]";
connectAttr "joint15.wm" "skinBinding1.pm[14]";
connectAttr "joint19.wm" "skinBinding1.pm[15]";
connectAttr "joint20.wm" "skinBinding1.pm[16]";
connectAttr "joint21.wm" "skinBinding1.pm[17]";
connectAttr "joint22.wm" "skinBinding1.pm[18]";
connectAttr "joint23.wm" "skinBinding1.pm[19]";
connectAttr "joint16.wm" "skinBinding1.pm[20]";
connectAttr "joint17.wm" "skinBinding1.pm[21]";
connectAttr "joint18.wm" "skinBinding1.pm[22]";
connectAttr "joint2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "tweak1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "skinCluster1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "pCubeShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "pCube1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "skinBinding1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "tweakSet1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "skinCluster1Set.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "bindPose1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "pCubeShape1Orig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "joint13_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "joint13_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "joint13_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "joint13_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "joint13_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "joint13_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "joint13_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "joint13_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn";
connectAttr "joint13_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn";
connectAttr "joint13_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn";
connectAttr "joint10_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "joint10_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "joint10_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "joint10_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "joint10_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "joint10_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "joint10_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "joint10_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn";
connectAttr "joint10_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn";
connectAttr "joint10_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn";
connectAttr "joint6_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "joint6_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "joint6_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "joint6_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "joint6_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn";
connectAttr "joint6_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn";
connectAttr "joint6_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn";
connectAttr "joint6_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn";
connectAttr "joint6_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn";
connectAttr "joint6_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn";
connectAttr "joint3_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "joint3_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "joint3_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "joint3_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "joint3_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn";
connectAttr "joint3_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn";
connectAttr "joint3_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn";
connectAttr "joint3_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn";
connectAttr "joint3_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn";
connectAttr "joint3_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn";
connectAttr "joint17_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "joint17_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "joint17_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "joint17_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "joint17_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "joint17_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "joint17_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "joint17_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn";
connectAttr "joint17_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn";
connectAttr "joint17_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn";
connectAttr "joint16_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "joint16_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "joint16_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "joint16_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "joint16_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "joint16_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "joint16_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "joint16_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn";
connectAttr "joint16_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn";
connectAttr "joint16_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn";
connectAttr "joint2_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "joint2_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "joint2_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "joint2_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "joint2_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn";
connectAttr "joint2_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn";
connectAttr "joint2_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn";
connectAttr "joint2_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn";
connectAttr "joint2_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn";
connectAttr "joint2_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn";
connectAttr "joint19_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "joint19_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "joint19_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "joint19_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "joint19_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "joint19_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "joint19_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "joint19_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn";
connectAttr "joint19_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn";
connectAttr "joint19_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn";
connectAttr "joint9_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "joint9_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "joint9_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "joint9_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "joint9_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn";
connectAttr "joint9_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn";
connectAttr "joint9_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn";
connectAttr "joint9_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn";
connectAttr "joint9_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn";
connectAttr "joint9_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn";
connectAttr "joint22_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "joint22_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "joint22_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "joint22_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "joint22_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "joint22_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "joint22_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "joint22_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "joint22_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "joint22_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "joint21_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "joint21_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "joint21_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "joint21_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "joint21_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "joint21_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "joint21_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "joint21_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "joint21_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "joint21_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn"
		;
connectAttr "joint20_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "joint20_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "joint20_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "joint20_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "joint20_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "joint20_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "joint20_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "joint20_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "joint20_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "joint20_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn"
		;
connectAttr "joint23_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "joint23_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn"
		;
connectAttr "joint23_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "joint23_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "joint23_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "joint23_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "joint23_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "joint23_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "joint23_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "joint23_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "joint7_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "joint7_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "joint7_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "joint7_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "joint7_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "joint7_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "joint7_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "joint7_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn";
connectAttr "joint7_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn";
connectAttr "joint7_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn";
connectAttr "joint4_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn"
		;
connectAttr "joint4_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn"
		;
connectAttr "joint4_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn"
		;
connectAttr "joint4_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn"
		;
connectAttr "joint4_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn"
		;
connectAttr "joint4_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn"
		;
connectAttr "joint4_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn"
		;
connectAttr "joint4_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn";
connectAttr "joint4_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn";
connectAttr "joint4_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn";
connectAttr "joint8_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn"
		;
connectAttr "joint8_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn"
		;
connectAttr "joint8_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn"
		;
connectAttr "joint8_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn"
		;
connectAttr "joint8_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn"
		;
connectAttr "joint8_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn"
		;
connectAttr "joint8_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn"
		;
connectAttr "joint8_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn";
connectAttr "joint8_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn";
connectAttr "joint8_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn";
connectAttr "joint5_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn"
		;
connectAttr "joint5_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn"
		;
connectAttr "joint5_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn"
		;
connectAttr "joint5_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn"
		;
connectAttr "joint5_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[174].dn"
		;
connectAttr "joint5_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn"
		;
connectAttr "joint5_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn"
		;
connectAttr "joint5_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[177].dn";
connectAttr "joint5_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn";
connectAttr "joint5_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[179].dn";
connectAttr "joint14_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn"
		;
connectAttr "joint14_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[181].dn"
		;
connectAttr "joint14_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn"
		;
connectAttr "joint14_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn"
		;
connectAttr "joint14_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[184].dn"
		;
connectAttr "joint14_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[185].dn"
		;
connectAttr "joint14_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn"
		;
connectAttr "joint14_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn"
		;
connectAttr "joint14_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn"
		;
connectAttr "joint14_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn"
		;
connectAttr "joint11_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn"
		;
connectAttr "joint11_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[191].dn"
		;
connectAttr "joint11_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn"
		;
connectAttr "joint11_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn"
		;
connectAttr "joint11_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn"
		;
connectAttr "joint11_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn"
		;
connectAttr "joint11_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn"
		;
connectAttr "joint11_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[197].dn"
		;
connectAttr "joint11_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[198].dn"
		;
connectAttr "joint11_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn"
		;
connectAttr "joint15_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn"
		;
connectAttr "joint15_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn"
		;
connectAttr "joint15_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn"
		;
connectAttr "joint15_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn"
		;
connectAttr "joint15_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[204].dn"
		;
connectAttr "joint15_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[205].dn"
		;
connectAttr "joint15_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[206].dn"
		;
connectAttr "joint15_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[207].dn"
		;
connectAttr "joint15_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[208].dn"
		;
connectAttr "joint15_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[209].dn"
		;
connectAttr "joint12_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[210].dn"
		;
connectAttr "joint12_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[211].dn"
		;
connectAttr "joint12_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[212].dn"
		;
connectAttr "joint12_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[213].dn"
		;
connectAttr "joint12_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[214].dn"
		;
connectAttr "joint12_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[215].dn"
		;
connectAttr "joint12_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[216].dn"
		;
connectAttr "joint12_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[217].dn"
		;
connectAttr "joint12_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[218].dn"
		;
connectAttr "joint12_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[219].dn"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of deeelk.ma
