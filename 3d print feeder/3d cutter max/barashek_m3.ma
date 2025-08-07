//Maya ASCII 2023 scene
//Name: barashek_m3.ma
//Last modified: Thu, Aug 07, 2025 03:13:02 PM
//Codeset: 1251
requires maya "2023";
requires -nodeType "polyBoolean" "polyBoolean" "1.1";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202208031415-1dee56799d";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22000)";
fileInfo "UUID" "014CF967-4830-F4CD-9F09-FAA2156F86E6";
createNode transform -s -n "persp";
	rename -uid "0B690AA3-4EC2-1A8C-A50F-7D99168D1768";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.3027796493340351 6.8918620377078037 2.9281768954046301 ;
	setAttr ".r" -type "double3" 73.282924915323704 0 1234.3949117610509 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "46E5A660-4122-8227-784A-AA8DD860AB31";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 7.9796342461905168;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.2447947783655877e-08 -9.4551550033905585e-08 0.63286739054893604 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "89DB912F-4696-8F60-0514-2C8BA0D18F32";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.021331941773518243 0.039917291662482979 1000.1086371597147 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "ED5D817B-4111-8054-C9D6-D085C84856C0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 999.56487832967366;
	setAttr ".ow" 108.03489580816387;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 0 -1.2225574846924658e-07 0.54375883004104253 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "F776C4A7-4FC9-F02D-CC65-8FA94FE47C51";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.12362885686541489 -1000.1001379002277 0.53141226486520532 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "23815813-4AF7-4ED5-B2AA-B3A8481F5AEB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1001.3288408253733;
	setAttr ".ow" 2.0490900716643354;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0.16176195815205574 1.2287029251456261 0.5 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "7069C880-478D-E33A-7C9E-859BCBE38E29";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 90 0 90 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "63F3FCD9-4C1A-8854-DAB3-48B3A65C2B19";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "left";
	rename -uid "71E19156-4591-8F0E-F813-38BADEEFCA0F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1000.1 0 0 ;
	setAttr ".r" -type "double3" 90 0 -90 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "F746ABE7-4D1E-0BB5-47FE-7B9638ABC166";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 6.5789953813318789;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "barashek";
	rename -uid "4A73BCE7-4645-EDC6-BF80-E89C4C93F06F";
	setAttr ".rp" -type "double3" 0 0 0.5 ;
	setAttr ".sp" -type "double3" 0 0 0.5 ;
createNode transform -n "pCylinder1" -p "barashek";
	rename -uid "6FFFAB04-4D2B-B787-73EE-98A78AC0BAB4";
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.85882354 0.58039218 0.33725491 ;
	setAttr ".r" -type "double3" 0 0 7.4999999999999991 ;
	setAttr ".s" -type "double3" 0.68370369957501798 0.68370369957501798 1 ;
	setAttr ".rp" -type "double3" 0 0 0.5 ;
	setAttr ".sp" -type "double3" 0 0 0.5 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "5AAA31ED-4D21-36AD-AC1A-A3A640C05561";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.87800002 0.68599999 0.294 ;
	setAttr ".ovca" 0.30000001192092896;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
	setAttr ".pv" -type "double2" 0.50000002980232239 0.15625002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 793 ".pt";
	setAttr ".pt[171]" -type "float3" 0.084007278 0.022509625 0 ;
	setAttr ".pt[172]" -type "float3" 0.075318851 0.043485392 0 ;
	setAttr ".pt[174]" -type "float3" 0.061497588 0.061497625 0 ;
	setAttr ".pt[176]" -type "float3" 0.043485366 0.075318873 0 ;
	setAttr ".pt[178]" -type "float3" 0.022509681 0.084007278 0 ;
	setAttr ".pt[180]" -type "float3" -3.2042351e-08 0.086970754 0 ;
	setAttr ".pt[182]" -type "float3" -0.022509728 0.084007308 0 ;
	setAttr ".pt[184]" -type "float3" -0.043485418 0.075318903 0 ;
	setAttr ".pt[186]" -type "float3" -0.061497662 0.061497629 0 ;
	setAttr ".pt[188]" -type "float3" -0.075318918 0.043485418 0 ;
	setAttr ".pt[190]" -type "float3" -0.084007353 0.022509728 0 ;
	setAttr ".pt[192]" -type "float3" -0.086970799 2.2129401e-08 0 ;
	setAttr ".pt[194]" -type "float3" -0.084007353 -0.022509666 0 ;
	setAttr ".pt[196]" -type "float3" -0.075318933 -0.043485358 0 ;
	setAttr ".pt[198]" -type "float3" -0.061497658 -0.061497595 0 ;
	setAttr ".pt[200]" -type "float3" -0.043485418 -0.075318888 0 ;
	setAttr ".pt[202]" -type "float3" -0.022509715 -0.084007315 0 ;
	setAttr ".pt[204]" -type "float3" -5.269118e-09 -0.086970769 0 ;
	setAttr ".pt[206]" -type "float3" 0.022509705 -0.084007323 0 ;
	setAttr ".pt[208]" -type "float3" 0.043485392 -0.075318903 0 ;
	setAttr ".pt[210]" -type "float3" 0.061497629 -0.061497625 0 ;
	setAttr ".pt[212]" -type "float3" 0.075318925 -0.04348537 0 ;
	setAttr ".pt[214]" -type "float3" 0.08400736 -0.022509694 0 ;
	setAttr ".pt[216]" -type "float3" 0.086970769 -5.9673887e-08 0 ;
	setAttr ".pt[217]" -type "float3" 0.062414803 0.036035225 0 ;
	setAttr ".pt[218]" -type "float3" 0.050961472 0.050961483 0 ;
	setAttr ".pt[219]" -type "float3" 0.036035214 0.062414821 0 ;
	setAttr ".pt[220]" -type "float3" 0.018653195 0.069614686 0 ;
	setAttr ".pt[221]" -type "float3" -1.4940632e-08 0.072070435 0 ;
	setAttr ".pt[222]" -type "float3" -0.01865322 0.069614694 0 ;
	setAttr ".pt[223]" -type "float3" -0.036035232 0.06241484 0 ;
	setAttr ".pt[224]" -type "float3" -0.050961509 0.050961506 0 ;
	setAttr ".pt[225]" -type "float3" -0.062414847 0.036035247 0 ;
	setAttr ".pt[226]" -type "float3" -0.069614716 0.018653225 0 ;
	setAttr ".pt[227]" -type "float3" -0.072070457 1.6479172e-08 0 ;
	setAttr ".pt[228]" -type "float3" -0.069614723 -0.018653184 0 ;
	setAttr ".pt[229]" -type "float3" -0.062414858 -0.03603521 0 ;
	setAttr ".pt[230]" -type "float3" -0.050961509 -0.050961487 0 ;
	setAttr ".pt[231]" -type "float3" -0.036035243 -0.062414821 0 ;
	setAttr ".pt[232]" -type "float3" -0.018653216 -0.069614694 0 ;
	setAttr ".pt[233]" -type "float3" -6.1118413e-09 -0.072070435 0 ;
	setAttr ".pt[234]" -type "float3" 0.018653207 -0.069614708 0 ;
	setAttr ".pt[235]" -type "float3" 0.036035225 -0.062414836 0 ;
	setAttr ".pt[236]" -type "float3" 0.050961502 -0.050961502 0 ;
	setAttr ".pt[237]" -type "float3" 0.062414847 -0.036035217 0 ;
	setAttr ".pt[238]" -type "float3" 0.069614716 -0.018653201 0 ;
	setAttr ".pt[239]" -type "float3" 0.072070464 -2.4507958e-08 0 ;
	setAttr ".pt[240]" -type "float3" 0.069614679 0.018653173 0 ;
	setAttr ".pt[241]" -type "float3" 0.041039921 0.010996575 0 ;
	setAttr ".pt[242]" -type "float3" 0.036795363 0.021243842 0 ;
	setAttr ".pt[243]" -type "float3" -1.2574644e-08 1.1577919e-08 0 ;
	setAttr ".pt[244]" -type "float3" 0.030043304 0.030043326 0 ;
	setAttr ".pt[245]" -type "float3" 0.021243827 0.036795396 0 ;
	setAttr ".pt[246]" -type "float3" 0.010996615 0.041039929 0 ;
	setAttr ".pt[247]" -type "float3" -2.1096394e-08 0.042487677 0 ;
	setAttr ".pt[248]" -type "float3" -0.01099664 0.041039944 0 ;
	setAttr ".pt[249]" -type "float3" -0.021243859 0.0367954 0 ;
	setAttr ".pt[250]" -type "float3" -0.030043349 0.030043334 0 ;
	setAttr ".pt[251]" -type "float3" -0.036795415 0.021243855 0 ;
	setAttr ".pt[252]" -type "float3" -0.041039966 0.010996631 0 ;
	setAttr ".pt[253]" -type "float3" -0.042487703 8.6381844e-09 0 ;
	setAttr ".pt[254]" -type "float3" -0.041039973 -0.010996606 0 ;
	setAttr ".pt[255]" -type "float3" -0.036795415 -0.021243827 0 ;
	setAttr ".pt[256]" -type "float3" -0.030043347 -0.030043319 0 ;
	setAttr ".pt[257]" -type "float3" -0.021243859 -0.036795393 0 ;
	setAttr ".pt[258]" -type "float3" -0.010996634 -0.04103994 0 ;
	setAttr ".pt[259]" -type "float3" -4.9023403e-09 -0.042487688 0 ;
	setAttr ".pt[260]" -type "float3" 0.010996621 -0.041039944 0 ;
	setAttr ".pt[261]" -type "float3" 0.021243846 -0.036795415 0 ;
	setAttr ".pt[262]" -type "float3" 0.030043332 -0.030043337 0 ;
	setAttr ".pt[263]" -type "float3" 0.036795415 -0.021243833 0 ;
	setAttr ".pt[264]" -type "float3" 0.041039973 -0.010996621 0 ;
	setAttr ".pt[265]" -type "float3" 0.042487692 -3.9434365e-08 0 ;
	setAttr ".pt[266]" -type "float3" 0.08196383 0.021962084 -3.7252903e-09 ;
	setAttr ".pt[267]" -type "float3" 0.073486716 0.042427614 -3.7252903e-09 ;
	setAttr ".pt[268]" -type "float3" 0.067024216 0.017959036 0 ;
	setAttr ".pt[269]" -type "float3" 0.060092229 0.03469431 0 ;
	setAttr ".pt[270]" -type "float3" 0.060001668 0.060001697 -3.7252903e-09 ;
	setAttr ".pt[271]" -type "float3" 0.049065121 0.049065154 0 ;
	setAttr ".pt[272]" -type "float3" 0.042427592 0.07348676 -3.7252903e-09 ;
	setAttr ".pt[273]" -type "float3" 0.03469428 0.06009227 0 ;
	setAttr ".pt[274]" -type "float3" 0.021962134 0.081963815 -3.7252903e-09 ;
	setAttr ".pt[275]" -type "float3" 0.017959079 0.067024216 0 ;
	setAttr ".pt[276]" -type "float3" -3.1655667e-08 0.084855199 -3.7252903e-09 ;
	setAttr ".pt[277]" -type "float3" -2.7247536e-08 0.069388606 0 ;
	setAttr ".pt[278]" -type "float3" -0.021962175 0.081963852 -3.7252903e-09 ;
	setAttr ".pt[279]" -type "float3" -0.017959122 0.067024238 0 ;
	setAttr ".pt[280]" -type "float3" -0.042427637 0.07348679 -3.7252903e-09 ;
	setAttr ".pt[281]" -type "float3" -0.034694329 0.060092296 0 ;
	setAttr ".pt[282]" -type "float3" -0.060001735 0.060001705 -3.7252903e-09 ;
	setAttr ".pt[283]" -type "float3" -0.049065176 0.049065173 0 ;
	setAttr ".pt[284]" -type "float3" -0.073486805 0.042427648 -3.7252903e-09 ;
	setAttr ".pt[285]" -type "float3" -0.060092315 0.034694333 0 ;
	setAttr ".pt[286]" -type "float3" -0.081963874 0.021962173 -3.7252903e-09 ;
	setAttr ".pt[287]" -type "float3" -0.067024253 0.017959118 0 ;
	setAttr ".pt[288]" -type "float3" -0.084855236 2.1356019e-08 -3.7252903e-09 ;
	setAttr ".pt[289]" -type "float3" -0.069388621 1.6374683e-08 0 ;
	setAttr ".pt[290]" -type "float3" -0.081963897 -0.021962125 -3.7252903e-09 ;
	setAttr ".pt[291]" -type "float3" -0.067024268 -0.017959068 0 ;
	setAttr ".pt[292]" -type "float3" -0.07348682 -0.042427585 -3.7252903e-09 ;
	setAttr ".pt[293]" -type "float3" -0.060092319 -0.03469428 0 ;
	setAttr ".pt[294]" -type "float3" -0.060001716 -0.060001675 -3.7252903e-09 ;
	setAttr ".pt[295]" -type "float3" -0.04906518 -0.049065135 0 ;
	setAttr ".pt[296]" -type "float3" -0.042427633 -0.073486768 -3.7252903e-09 ;
	setAttr ".pt[297]" -type "float3" -0.034694325 -0.060092278 0 ;
	setAttr ".pt[298]" -type "float3" -0.021962168 -0.081963837 -3.7252903e-09 ;
	setAttr ".pt[299]" -type "float3" -0.017959107 -0.067024231 0 ;
	setAttr ".pt[300]" -type "float3" -5.1402176e-09 -0.084855199 -3.7252903e-09 ;
	setAttr ".pt[301]" -type "float3" -5.0780242e-09 -0.069388583 0 ;
	setAttr ".pt[302]" -type "float3" 0.021962155 -0.081963852 -3.7252903e-09 ;
	setAttr ".pt[303]" -type "float3" 0.017959096 -0.067024246 0 ;
	setAttr ".pt[304]" -type "float3" 0.042427611 -0.073486775 -3.7252903e-09 ;
	setAttr ".pt[305]" -type "float3" 0.03469431 -0.060092293 0 ;
	setAttr ".pt[306]" -type "float3" 0.060001712 -0.060001716 -3.7252903e-09 ;
	setAttr ".pt[307]" -type "float3" 0.049065165 -0.049065161 0 ;
	setAttr ".pt[308]" -type "float3" 0.07348679 -0.042427596 -3.7252903e-09 ;
	setAttr ".pt[309]" -type "float3" 0.060092308 -0.034694292 0 ;
	setAttr ".pt[310]" -type "float3" 0.081963882 -0.021962145 -3.7252903e-09 ;
	setAttr ".pt[311]" -type "float3" 0.067024268 -0.017959094 0 ;
	setAttr ".pt[312]" -type "float3" 0.084855258 -5.9287196e-08 -3.7252903e-09 ;
	setAttr ".pt[313]" -type "float3" 0.069388628 -5.3344529e-08 0 ;
	setAttr ".pt[386]" -type "float3" 0.079293847 -0.045780323 0 ;
	setAttr ".pt[387]" -type "float3" 0.088440813 -0.023697635 0 ;
	setAttr ".pt[388]" -type "float3" 0.091560662 -5.5864458e-08 0 ;
	setAttr ".pt[389]" -type "float3" 0.088440776 0.023697577 0 ;
	setAttr ".pt[390]" -type "float3" 0.07929381 0.045780331 0 ;
	setAttr ".pt[391]" -type "float3" 0.064743124 0.064743146 0 ;
	setAttr ".pt[392]" -type "float3" 0.045780309 0.079293795 0 ;
	setAttr ".pt[393]" -type "float3" 0.02369763 0.088440746 0 ;
	setAttr ".pt[394]" -type "float3" -2.9984886e-08 0.091560639 0 ;
	setAttr ".pt[395]" -type "float3" -0.023697669 0.088440798 0 ;
	setAttr ".pt[396]" -type "float3" -0.045780353 0.079293847 0 ;
	setAttr ".pt[397]" -type "float3" -0.064743191 0.064743169 0 ;
	setAttr ".pt[398]" -type "float3" -0.079293847 0.045780357 0 ;
	setAttr ".pt[399]" -type "float3" -0.088440806 0.023697669 0 ;
	setAttr ".pt[400]" -type "float3" -0.091560662 2.3610392e-08 0 ;
	setAttr ".pt[401]" -type "float3" -0.088440813 -0.023697615 0 ;
	setAttr ".pt[402]" -type "float3" -0.079293869 -0.04578029 0 ;
	setAttr ".pt[403]" -type "float3" -0.064743161 -0.064743139 0 ;
	setAttr ".pt[404]" -type "float3" -0.045780361 -0.07929381 0 ;
	setAttr ".pt[405]" -type "float3" -0.023697659 -0.088440776 0 ;
	setAttr ".pt[406]" -type "float3" -5.8523519e-09 -0.091560639 0 ;
	setAttr ".pt[407]" -type "float3" 0.023697652 -0.088440798 0 ;
	setAttr ".pt[408]" -type "float3" 0.045780331 -0.079293832 0 ;
	setAttr ".pt[409]" -type "float3" 0.064743169 -0.064743169 0 ;
	setAttr ".pt[410]" -type "float3" 0.061260968 -0.061260968 -3.7252903e-09 ;
	setAttr ".pt[411]" -type "float3" 0.075029038 -0.043318029 -3.7252903e-09 ;
	setAttr ".pt[412]" -type "float3" 0.083684027 -0.022423059 -3.7252903e-09 ;
	setAttr ".pt[413]" -type "float3" 0.086636081 -5.9931679e-08 -3.7252903e-09 ;
	setAttr ".pt[414]" -type "float3" 0.083683975 0.022422997 -3.7252903e-09 ;
	setAttr ".pt[415]" -type "float3" 0.075028986 0.043318037 -3.7252903e-09 ;
	setAttr ".pt[416]" -type "float3" 0.061260898 0.061260957 -3.7252903e-09 ;
	setAttr ".pt[417]" -type "float3" 0.043318007 0.075029001 -3.7252903e-09 ;
	setAttr ".pt[418]" -type "float3" 0.022423042 0.08368399 -3.7252903e-09 ;
	setAttr ".pt[419]" -type "float3" -3.217124e-08 0.086636029 -3.7252903e-09 ;
	setAttr ".pt[420]" -type "float3" -0.02242309 0.083684005 -3.7252903e-09 ;
	setAttr ".pt[421]" -type "float3" -0.043318041 0.075029023 -3.7252903e-09 ;
	setAttr ".pt[422]" -type "float3" -0.061260972 0.061260954 -3.7252903e-09 ;
	setAttr ".pt[423]" -type "float3" -0.075029038 0.043318048 -3.7252903e-09 ;
	setAttr ".pt[424]" -type "float3" -0.08368402 0.022423087 -3.7252903e-09 ;
	setAttr ".pt[425]" -type "float3" -0.086636089 2.1871596e-08 -3.7252903e-09 ;
	setAttr ".pt[426]" -type "float3" -0.08368402 -0.022423033 -3.7252903e-09 ;
	setAttr ".pt[427]" -type "float3" -0.075029075 -0.043318 -3.7252903e-09 ;
	setAttr ".pt[428]" -type "float3" -0.061260972 -0.061260927 -3.7252903e-09 ;
	setAttr ".pt[429]" -type "float3" -0.043318044 -0.075029023 -3.7252903e-09 ;
	setAttr ".pt[430]" -type "float3" -0.022423083 -0.08368399 -3.7252903e-09 ;
	setAttr ".pt[431]" -type "float3" -5.269118e-09 -0.086636044 -3.7252903e-09 ;
	setAttr ".pt[432]" -type "float3" 0.022423074 -0.083684012 -3.7252903e-09 ;
	setAttr ".pt[433]" -type "float3" 0.043318037 -0.075029023 -3.7252903e-09 ;
	setAttr ".pt[434]" -type "float3" 0.061260968 -0.061260968 0 ;
	setAttr ".pt[435]" -type "float3" 0.075029038 -0.043318029 0 ;
	setAttr ".pt[436]" -type "float3" 0.083684027 -0.022423059 0 ;
	setAttr ".pt[437]" -type "float3" 0.086636081 -5.9931679e-08 0 ;
	setAttr ".pt[438]" -type "float3" 0.083683975 0.022422997 0 ;
	setAttr ".pt[439]" -type "float3" 0.075028986 0.043318037 0 ;
	setAttr ".pt[440]" -type "float3" 0.061260883 0.061260957 0 ;
	setAttr ".pt[441]" -type "float3" 0.043318007 0.075029001 0 ;
	setAttr ".pt[442]" -type "float3" 0.022423048 0.08368399 0 ;
	setAttr ".pt[443]" -type "float3" -3.217124e-08 0.086636029 0 ;
	setAttr ".pt[444]" -type "float3" -0.02242309 0.083684005 0 ;
	setAttr ".pt[445]" -type "float3" -0.043318041 0.075029023 0 ;
	setAttr ".pt[446]" -type "float3" -0.061260972 0.061260946 0 ;
	setAttr ".pt[447]" -type "float3" -0.075029038 0.043318048 0 ;
	setAttr ".pt[448]" -type "float3" -0.08368402 0.022423087 0 ;
	setAttr ".pt[449]" -type "float3" -0.086636089 2.1871596e-08 0 ;
	setAttr ".pt[450]" -type "float3" -0.08368402 -0.022423033 0 ;
	setAttr ".pt[451]" -type "float3" -0.075029075 -0.043318 0 ;
	setAttr ".pt[452]" -type "float3" -0.061260972 -0.061260927 0 ;
	setAttr ".pt[453]" -type "float3" -0.043318041 -0.075029023 0 ;
	setAttr ".pt[454]" -type "float3" -0.022423083 -0.08368399 0 ;
	setAttr ".pt[455]" -type "float3" -5.269118e-09 -0.086636052 0 ;
	setAttr ".pt[456]" -type "float3" 0.022423074 -0.083684012 0 ;
	setAttr ".pt[457]" -type "float3" 0.043318037 -0.075029023 0 ;
	setAttr ".pt[566]" -type "float3" 0.052738369 -0.068729967 0 ;
	setAttr ".pt[567]" -type "float3" 0.033152726 -0.080037735 0 ;
	setAttr ".pt[568]" -type "float3" 0.043378048 -0.075132973 0 ;
	setAttr ".pt[569]" -type "float3" 0.011307777 -0.085891083 0 ;
	setAttr ".pt[570]" -type "float3" 0.022454139 -0.083799921 0 ;
	setAttr ".pt[571]" -type "float3" -0.011307793 -0.085891053 0 ;
	setAttr ".pt[572]" -type "float3" -5.2812954e-09 -0.08675608 0 ;
	setAttr ".pt[573]" -type "float3" -0.033152744 -0.080037706 0 ;
	setAttr ".pt[574]" -type "float3" -0.02245415 -0.083799921 0 ;
	setAttr ".pt[575]" -type "float3" -0.052738383 -0.068729945 0 ;
	setAttr ".pt[576]" -type "float3" -0.043378055 -0.075132973 0 ;
	setAttr ".pt[577]" -type "float3" -0.068730004 -0.052738342 0 ;
	setAttr ".pt[578]" -type "float3" -0.061345849 -0.061345786 0 ;
	setAttr ".pt[579]" -type "float3" -0.08003778 -0.033152688 0 ;
	setAttr ".pt[580]" -type "float3" -0.075133011 -0.04337801 0 ;
	setAttr ".pt[581]" -type "float3" -0.085891105 -0.011307752 0 ;
	setAttr ".pt[582]" -type "float3" -0.083799966 -0.0224541 0 ;
	setAttr ".pt[583]" -type "float3" -0.085891113 0.011307801 0 ;
	setAttr ".pt[584]" -type "float3" -0.086756118 2.187997e-08 0 ;
	setAttr ".pt[585]" -type "float3" -0.080037758 0.033152752 0 ;
	setAttr ".pt[586]" -type "float3" -0.083799958 0.022454159 0 ;
	setAttr ".pt[587]" -type "float3" -0.068729982 0.05273838 0 ;
	setAttr ".pt[588]" -type "float3" -0.075132981 0.04337807 0 ;
	setAttr ".pt[589]" -type "float3" -0.052738391 0.068729952 0 ;
	setAttr ".pt[590]" -type "float3" -0.061345849 0.061345831 0 ;
	setAttr ".pt[591]" -type "float3" -0.033152744 0.080037721 0 ;
	setAttr ".pt[592]" -type "float3" -0.043378055 0.075132966 0 ;
	setAttr ".pt[593]" -type "float3" -0.011307809 0.085891053 0 ;
	setAttr ".pt[594]" -type "float3" -0.022454159 0.083799914 0 ;
	setAttr ".pt[595]" -type "float3" 0.011307752 0.085891038 0 ;
	setAttr ".pt[596]" -type "float3" -3.2239608e-08 0.086756073 0 ;
	setAttr ".pt[597]" -type "float3" 0.033152703 0.080037721 0 ;
	setAttr ".pt[598]" -type "float3" 0.022454115 0.083799906 0 ;
	setAttr ".pt[599]" -type "float3" 0.052738328 0.068729945 0 ;
	setAttr ".pt[600]" -type "float3" 0.043378022 0.075132944 0 ;
	setAttr ".pt[601]" -type "float3" 0.068729915 0.052738365 0 ;
	setAttr ".pt[602]" -type "float3" 0.061345775 0.061345793 0 ;
	setAttr ".pt[603]" -type "float3" 0.080037691 0.033152685 0 ;
	setAttr ".pt[604]" -type "float3" 0.075132921 0.04337804 0 ;
	setAttr ".pt[605]" -type "float3" 0.085891068 0.0113077 0 ;
	setAttr ".pt[606]" -type "float3" 0.083799928 0.022454061 0 ;
	setAttr ".pt[607]" -type "float3" 0.085891113 -0.011307803 0 ;
	setAttr ".pt[608]" -type "float3" 0.086756095 -6.0085917e-08 0 ;
	setAttr ".pt[609]" -type "float3" 0.080037758 -0.033152703 0 ;
	setAttr ".pt[610]" -type "float3" 0.083799981 -0.022454122 0 ;
	setAttr ".pt[611]" -type "float3" 0.068729982 -0.052738369 0 ;
	setAttr ".pt[612]" -type "float3" 0.075132996 -0.043378048 0 ;
	setAttr ".pt[613]" -type "float3" 0.061345827 -0.061345827 0 ;
	setAttr ".pt[614]" -type "float3" 0.052738369 -0.068729967 0 ;
	setAttr ".pt[615]" -type "float3" 0.033152726 -0.080037735 0 ;
	setAttr ".pt[616]" -type "float3" 0.043810874 -0.075882673 -1.1641532e-10 ;
	setAttr ".pt[617]" -type "float3" 0.011307777 -0.085891053 0 ;
	setAttr ".pt[618]" -type "float3" 0.022678189 -0.0846361 -1.1641532e-10 ;
	setAttr ".pt[619]" -type "float3" -0.011307793 -0.085891053 0 ;
	setAttr ".pt[620]" -type "float3" -5.7207141e-09 -0.087621704 -1.1641532e-10 ;
	setAttr ".pt[621]" -type "float3" -0.033152744 -0.080037706 0 ;
	setAttr ".pt[622]" -type "float3" -0.022678198 -0.0846361 -1.1641532e-10 ;
	setAttr ".pt[623]" -type "float3" -0.052738383 -0.068729945 0 ;
	setAttr ".pt[624]" -type "float3" -0.043810904 -0.075882643 -1.1641532e-10 ;
	setAttr ".pt[625]" -type "float3" -0.068730004 -0.052738342 0 ;
	setAttr ".pt[626]" -type "float3" -0.061957948 -0.061957896 -1.1641532e-10 ;
	setAttr ".pt[627]" -type "float3" -0.08003778 -0.033152688 0 ;
	setAttr ".pt[628]" -type "float3" -0.075882681 -0.043810844 -1.1641532e-10 ;
	setAttr ".pt[629]" -type "float3" -0.085891105 -0.011307752 0 ;
	setAttr ".pt[630]" -type "float3" -0.084636144 -0.022678144 -1.1641532e-10 ;
	setAttr ".pt[631]" -type "float3" -0.085891113 0.011307801 0 ;
	setAttr ".pt[632]" -type "float3" -0.087621778 1.9283089e-08 -1.1641532e-10 ;
	setAttr ".pt[633]" -type "float3" -0.080037758 0.033152752 0 ;
	setAttr ".pt[634]" -type "float3" -0.084636152 0.0226782 -1.1641532e-10 ;
	setAttr ".pt[635]" -type "float3" -0.068729982 0.052738391 0 ;
	setAttr ".pt[636]" -type "float3" -0.075882666 0.043810919 -1.1641532e-10 ;
	setAttr ".pt[637]" -type "float3" -0.052738383 0.068729989 0 ;
	setAttr ".pt[638]" -type "float3" -0.061957959 0.061957933 -1.1641532e-10 ;
	setAttr ".pt[639]" -type "float3" -0.033152744 0.080037721 0 ;
	setAttr ".pt[640]" -type "float3" -0.043810893 0.075882658 -1.1641532e-10 ;
	setAttr ".pt[641]" -type "float3" -0.011307809 0.085891053 0 ;
	setAttr ".pt[642]" -type "float3" -0.022678209 0.084636115 -1.1641532e-10 ;
	setAttr ".pt[643]" -type "float3" 0.011307754 0.085891038 0 ;
	setAttr ".pt[644]" -type "float3" -3.6116791e-08 0.087621734 -1.1641532e-10 ;
	setAttr ".pt[645]" -type "float3" 0.033152703 0.080037721 0 ;
	setAttr ".pt[646]" -type "float3" 0.022678165 0.08463607 -1.1641532e-10 ;
	setAttr ".pt[647]" -type "float3" 0.052738342 0.068729945 0 ;
	setAttr ".pt[648]" -type "float3" 0.043810863 0.075882621 -1.1641532e-10 ;
	setAttr ".pt[649]" -type "float3" 0.06872993 0.052738365 0 ;
	setAttr ".pt[650]" -type "float3" 0.061957899 0.061957933 -1.1641532e-10 ;
	setAttr ".pt[651]" -type "float3" 0.080037691 0.033152685 0 ;
	setAttr ".pt[652]" -type "float3" 0.075882606 0.043810904 -1.1641532e-10 ;
	setAttr ".pt[653]" -type "float3" 0.085891068 0.0113077 0 ;
	setAttr ".pt[654]" -type "float3" 0.0846361 0.0226781 -1.1641532e-10 ;
	setAttr ".pt[655]" -type "float3" 0.085891113 -0.011307803 0 ;
	setAttr ".pt[656]" -type "float3" 0.087621793 -7.2354318e-08 -1.1641532e-10 ;
	setAttr ".pt[657]" -type "float3" 0.080037758 -0.033152703 0 ;
	setAttr ".pt[658]" -type "float3" 0.084636167 -0.022678159 -1.1641532e-10 ;
	setAttr ".pt[659]" -type "float3" 0.068729982 -0.052738369 0 ;
	setAttr ".pt[660]" -type "float3" 0.075882673 -0.043810856 -1.1641532e-10 ;
	setAttr ".pt[661]" -type "float3" 0.06195794 -0.061957948 -1.1641532e-10 ;
	setAttr ".pt[662]" -type "float3" 0.07263729 -0.055736519 0 ;
	setAttr ".pt[663]" -type "float3" 0.055736534 -0.072637282 0 ;
	setAttr ".pt[664]" -type "float3" 0.062200099 -0.062200092 -3.7252903e-09 ;
	setAttr ".pt[665]" -type "float3" 0.03503745 -0.084587887 0 ;
	setAttr ".pt[666]" -type "float3" 0.043982118 -0.076179244 -3.7252903e-09 ;
	setAttr ".pt[667]" -type "float3" 0.011950621 -0.09077397 0 ;
	setAttr ".pt[668]" -type "float3" 0.022766823 -0.084966876 -3.7252903e-09 ;
	setAttr ".pt[669]" -type "float3" -0.011950636 -0.090773948 0 ;
	setAttr ".pt[670]" -type "float3" -5.300445e-09 -0.087964207 -3.7252903e-09 ;
	setAttr ".pt[671]" -type "float3" -0.035037477 -0.084587857 0 ;
	setAttr ".pt[672]" -type "float3" -0.02276683 -0.084966876 -3.7252903e-09 ;
	setAttr ".pt[673]" -type "float3" -0.05573656 -0.072637253 0 ;
	setAttr ".pt[674]" -type "float3" -0.043982122 -0.076179206 -3.7252903e-09 ;
	setAttr ".pt[675]" -type "float3" -0.072637297 -0.055736512 0 ;
	setAttr ".pt[676]" -type "float3" -0.062200107 -0.062200055 -3.7252903e-09 ;
	setAttr ".pt[677]" -type "float3" -0.084587902 -0.035037413 0 ;
	setAttr ".pt[678]" -type "float3" -0.076179251 -0.043982066 -3.7252903e-09 ;
	setAttr ".pt[679]" -type "float3" -0.090773992 -0.011950596 0 ;
	setAttr ".pt[680]" -type "float3" -0.084966935 -0.022766778 -3.7252903e-09 ;
	setAttr ".pt[681]" -type "float3" -0.090773992 0.011950647 0 ;
	setAttr ".pt[682]" -type "float3" -0.087964222 2.2474463e-08 -3.7252903e-09 ;
	setAttr ".pt[683]" -type "float3" -0.084587902 0.035037488 0 ;
	setAttr ".pt[684]" -type "float3" -0.08496692 0.022766842 -3.7252903e-09 ;
	setAttr ".pt[685]" -type "float3" -0.072637275 0.055736564 0 ;
	setAttr ".pt[686]" -type "float3" -0.076179236 0.043982133 -3.7252903e-09 ;
	setAttr ".pt[687]" -type "float3" -0.05573656 0.072637275 0 ;
	setAttr ".pt[688]" -type "float3" -0.062200122 0.062200096 -3.7252903e-09 ;
	setAttr ".pt[689]" -type "float3" -0.035037477 0.084587887 0 ;
	setAttr ".pt[690]" -type "float3" -0.043982118 0.076179236 -3.7252903e-09 ;
	setAttr ".pt[691]" -type "float3" -0.011950653 0.09077394 0 ;
	setAttr ".pt[692]" -type "float3" -0.022766845 0.084966898 -3.7252903e-09 ;
	setAttr ".pt[693]" -type "float3" 0.011950601 0.09077394 0 ;
	setAttr ".pt[694]" -type "float3" -3.175294e-08 0.087964199 -3.7252903e-09 ;
	setAttr ".pt[695]" -type "float3" 0.035037439 0.084587879 0 ;
	setAttr ".pt[696]" -type "float3" 0.022766799 0.084966876 -3.7252903e-09 ;
	setAttr ".pt[697]" -type "float3" 0.055736501 0.072637245 0 ;
	setAttr ".pt[698]" -type "float3" 0.043982085 0.076179236 -3.7252903e-09 ;
	setAttr ".pt[699]" -type "float3" 0.0726372 0.055736538 0 ;
	setAttr ".pt[700]" -type "float3" 0.062200055 0.062200062 -3.7252903e-09 ;
	setAttr ".pt[701]" -type "float3" 0.084587872 0.035037421 0 ;
	setAttr ".pt[702]" -type "float3" 0.076179162 0.043982107 -3.7252903e-09 ;
	setAttr ".pt[703]" -type "float3" 0.090773962 0.011950551 0 ;
	setAttr ".pt[704]" -type "float3" 0.084966853 0.022766747 -3.7252903e-09 ;
	setAttr ".pt[705]" -type "float3" 0.090773985 -0.011950645 0 ;
	setAttr ".pt[706]" -type "float3" 0.087964222 -5.9649061e-08 -3.7252903e-09 ;
	setAttr ".pt[707]" -type "float3" 0.084587902 -0.035037436 0 ;
	setAttr ".pt[708]" -type "float3" 0.084966928 -0.022766808 -3.7252903e-09 ;
	setAttr ".pt[709]" -type "float3" 0.076179251 -0.043982092 -3.7252903e-09 ;
	setAttr ".pt[712]" -type "float3" 0.029243916 -0.0078358799 0 ;
	setAttr ".pt[714]" -type "float3" 0.026219379 -0.015137758 0 ;
	setAttr ".pt[716]" -type "float3" 0.021408029 -0.021408029 0 ;
	setAttr ".pt[718]" -type "float3" 0.01513776 -0.026219372 0 ;
	setAttr ".pt[720]" -type "float3" 0.0078358818 -0.029243909 0 ;
	setAttr ".pt[722]" -type "float3" -2.4948954e-09 -0.030275518 0 ;
	setAttr ".pt[724]" -type "float3" -0.0078358855 -0.029243907 0 ;
	setAttr ".pt[726]" -type "float3" -0.015137767 -0.026219364 0 ;
	setAttr ".pt[728]" -type "float3" -0.021408033 -0.021408021 0 ;
	setAttr ".pt[730]" -type "float3" -0.026219379 -0.015137754 0 ;
	setAttr ".pt[732]" -type "float3" -0.029243916 -0.0078358743 0 ;
	setAttr ".pt[734]" -type "float3" -0.030275527 7.3309501e-09 0 ;
	setAttr ".pt[736]" -type "float3" -0.029243916 0.0078358892 0 ;
	setAttr ".pt[738]" -type "float3" -0.026219375 0.01513777 0 ;
	setAttr ".pt[740]" -type "float3" -0.021408033 0.021408033 0 ;
	setAttr ".pt[742]" -type "float3" -0.015137763 0.026219375 0 ;
	setAttr ".pt[744]" -type "float3" -0.0078358855 0.029243909 0 ;
	setAttr ".pt[746]" -type "float3" -3.3584597e-09 0.030275518 0 ;
	setAttr ".pt[748]" -type "float3" 0.0078358799 0.029243901 0 ;
	setAttr ".pt[750]" -type "float3" 0.015137758 0.026219368 0 ;
	setAttr ".pt[752]" -type "float3" 0.021408021 0.021408025 0 ;
	setAttr ".pt[754]" -type "float3" 0.026219364 0.01513776 0 ;
	setAttr ".pt[756]" -type "float3" 0.029243905 0.0078358743 0 ;
	setAttr ".pt[757]" -type "float3" 0.030275527 -4.6429101e-09 0 ;
	setAttr ".pt[854]" -type "float3" 0.054769054 0.014675275 0 ;
	setAttr ".pt[855]" -type "float3" 0.056701131 -4.7964839e-08 0 ;
	setAttr ".pt[856]" -type "float3" 0.054769095 -0.014675331 0 ;
	setAttr ".pt[857]" -type "float3" 0.049104609 -0.028350553 0 ;
	setAttr ".pt[858]" -type "float3" 0.040093761 -0.040093761 0 ;
	setAttr ".pt[859]" -type "float3" 0.028350566 -0.049104609 0 ;
	setAttr ".pt[860]" -type "float3" 0.014675332 -0.054769084 0 ;
	setAttr ".pt[861]" -type "float3" -4.5963358e-09 -0.056701116 0 ;
	setAttr ".pt[862]" -type "float3" -0.014675343 -0.054769062 0 ;
	setAttr ".pt[863]" -type "float3" -0.02835058 -0.049104594 0 ;
	setAttr ".pt[864]" -type "float3" -0.040093765 -0.040093735 0 ;
	setAttr ".pt[865]" -type "float3" -0.049104623 -0.02835054 0 ;
	setAttr ".pt[866]" -type "float3" -0.054769106 -0.014675316 0 ;
	setAttr ".pt[867]" -type "float3" -0.05670115 1.1969368e-08 0 ;
	setAttr ".pt[868]" -type "float3" -0.054769091 0.014675347 0 ;
	setAttr ".pt[869]" -type "float3" -0.049104623 0.028350582 0 ;
	setAttr ".pt[870]" -type "float3" -0.040093776 0.040093765 0 ;
	setAttr ".pt[871]" -type "float3" -0.028350586 0.049104616 0 ;
	setAttr ".pt[872]" -type "float3" -0.014675352 0.054769073 0 ;
	setAttr ".pt[873]" -type "float3" -2.4171964e-08 0.056701105 0 ;
	setAttr ".pt[874]" -type "float3" 0.014675316 0.054769047 0 ;
	setAttr ".pt[875]" -type "float3" 0.028350547 0.049104586 0 ;
	setAttr ".pt[876]" -type "float3" 0.040093724 0.040093735 0 ;
	setAttr ".pt[877]" -type "float3" 0.049104575 0.028350567 0 ;
	setAttr ".pt[878]" -type "float3" 0.068792433 0.0090566305 0 ;
	setAttr ".pt[879]" -type "float3" 0.084125958 0.011075319 0 ;
	setAttr ".pt[880]" -type "float3" 0.07889431 -5.7042634e-08 3.7252903e-09 ;
	setAttr ".pt[881]" -type "float3" 0.068792462 -0.0090567209 0 ;
	setAttr ".pt[882]" -type "float3" 0.084125981 -0.011075424 0 ;
	setAttr ".pt[883]" -type "float3" 0.086617619 -5.994815e-08 0 ;
	setAttr ".pt[884]" -type "float3" 0.076206036 -0.020419344 3.7252903e-09 ;
	setAttr ".pt[885]" -type "float3" 0.064104363 -0.026552878 0 ;
	setAttr ".pt[886]" -type "float3" 0.078392945 -0.0324714 0 ;
	setAttr ".pt[887]" -type "float3" 0.083666183 -0.022418277 0 ;
	setAttr ".pt[888]" -type "float3" 0.068324462 -0.039447129 3.7252903e-09 ;
	setAttr ".pt[889]" -type "float3" 0.055047669 -0.042239554 0 ;
	setAttr ".pt[890]" -type "float3" 0.067317553 -0.051654562 0 ;
	setAttr ".pt[891]" -type "float3" 0.075013041 -0.04330878 0 ;
	setAttr ".pt[892]" -type "float3" 0.055786695 -0.055786688 3.7252903e-09 ;
	setAttr ".pt[893]" -type "float3" 0.042239562 -0.055047654 0 ;
	setAttr ".pt[894]" -type "float3" 0.051654559 -0.067317545 0 ;
	setAttr ".pt[895]" -type "float3" 0.061247889 -0.0612479 0 ;
	setAttr ".pt[896]" -type "float3" 0.039447147 -0.068324462 3.7252903e-09 ;
	setAttr ".pt[897]" -type "float3" 0.026552897 -0.064104341 0 ;
	setAttr ".pt[898]" -type "float3" 0.032471422 -0.078392915 0 ;
	setAttr ".pt[899]" -type "float3" 0.043308794 -0.075013041 0 ;
	setAttr ".pt[900]" -type "float3" 0.020419354 -0.076206036 3.7252903e-09 ;
	setAttr ".pt[901]" -type "float3" 0.0090566976 -0.06879244 0 ;
	setAttr ".pt[902]" -type "float3" 0.011075395 -0.084125958 0 ;
	setAttr ".pt[903]" -type "float3" 0.022418294 -0.083666138 0 ;
	setAttr ".pt[904]" -type "float3" -5.1093272e-09 -0.078894295 3.7252903e-09 ;
	setAttr ".pt[905]" -type "float3" -0.0090567078 -0.068792433 0 ;
	setAttr ".pt[906]" -type "float3" -0.011075406 -0.084125958 0 ;
	setAttr ".pt[907]" -type "float3" -5.2691931e-09 -0.086617582 0 ;
	setAttr ".pt[908]" -type "float3" -0.020419367 -0.076206028 3.7252903e-09 ;
	setAttr ".pt[909]" -type "float3" -0.02655291 -0.064104341 0 ;
	setAttr ".pt[910]" -type "float3" -0.032471433 -0.078392878 0 ;
	setAttr ".pt[911]" -type "float3" -0.022418294 -0.083666138 0 ;
	setAttr ".pt[912]" -type "float3" -0.03944717 -0.068324454 3.7252903e-09 ;
	setAttr ".pt[913]" -type "float3" -0.042239577 -0.055047646 0 ;
	setAttr ".pt[914]" -type "float3" -0.051654585 -0.067317493 0 ;
	setAttr ".pt[915]" -type "float3" -0.043308821 -0.075013012 0 ;
	setAttr ".pt[916]" -type "float3" -0.055786718 -0.055786662 3.7252903e-09 ;
	setAttr ".pt[917]" -type "float3" -0.055047683 -0.042239532 0 ;
	setAttr ".pt[918]" -type "float3" -0.06731756 -0.051654525 0 ;
	setAttr ".pt[919]" -type "float3" -0.061247904 -0.061247859 0 ;
	setAttr ".pt[920]" -type "float3" -0.068324484 -0.039447129 3.7252903e-09 ;
	setAttr ".pt[921]" -type "float3" -0.064104386 -0.026552875 0 ;
	setAttr ".pt[922]" -type "float3" -0.078392953 -0.032471389 0 ;
	setAttr ".pt[923]" -type "float3" -0.075013064 -0.043308772 0 ;
	setAttr ".pt[924]" -type "float3" -0.076206051 -0.02041932 3.7252903e-09 ;
	setAttr ".pt[925]" -type "float3" -0.068792455 -0.009056679 0 ;
	setAttr ".pt[926]" -type "float3" -0.084125988 -0.011075372 0 ;
	setAttr ".pt[927]" -type "float3" -0.083666191 -0.022418255 0 ;
	setAttr ".pt[928]" -type "float3" -0.078894302 1.9508384e-08 3.7252903e-09 ;
	setAttr ".pt[929]" -type "float3" -0.068792462 0.0090567134 0 ;
	setAttr ".pt[930]" -type "float3" -0.084125981 0.011075417 0 ;
	setAttr ".pt[931]" -type "float3" -0.086617634 2.1856808e-08 0 ;
	setAttr ".pt[932]" -type "float3" -0.076206036 0.020419372 3.7252903e-09 ;
	setAttr ".pt[933]" -type "float3" -0.064104341 0.026552917 0 ;
	setAttr ".pt[934]" -type "float3" -0.078392945 0.032471437 0 ;
	setAttr ".pt[935]" -type "float3" -0.083666191 0.022418309 0 ;
	setAttr ".pt[936]" -type "float3" -0.068324491 0.039447181 3.7252903e-09 ;
	setAttr ".pt[937]" -type "float3" -0.055047683 0.042239573 0 ;
	setAttr ".pt[938]" -type "float3" -0.06731756 0.051654574 0 ;
	setAttr ".pt[939]" -type "float3" -0.075013056 0.043308828 0 ;
	setAttr ".pt[940]" -type "float3" -0.055786725 0.055786707 3.7252903e-09 ;
	setAttr ".pt[941]" -type "float3" -0.04223958 0.055047676 0 ;
	setAttr ".pt[942]" -type "float3" -0.051654585 0.067317553 0 ;
	setAttr ".pt[943]" -type "float3" -0.061247911 0.0612479 0 ;
	setAttr ".pt[944]" -type "float3" -0.03944717 0.068324476 3.7252903e-09 ;
	setAttr ".pt[945]" -type "float3" -0.026552914 0.064104348 0 ;
	setAttr ".pt[946]" -type "float3" -0.032471433 0.078392915 0 ;
	setAttr ".pt[947]" -type "float3" -0.043308821 0.075013041 0 ;
	setAttr ".pt[948]" -type "float3" -0.020419376 0.076206028 3.7252903e-09 ;
	setAttr ".pt[949]" -type "float3" -0.0090567265 0.068792433 0 ;
	setAttr ".pt[950]" -type "float3" -0.011075428 0.084125966 0 ;
	setAttr ".pt[951]" -type "float3" -0.022418316 0.083666153 0 ;
	setAttr ".pt[952]" -type "float3" -2.9814029e-08 0.07889428 3.7252903e-09 ;
	setAttr ".pt[953]" -type "float3" 0.009056678 0.06879241 0 ;
	setAttr ".pt[954]" -type "float3" 0.01107537 0.084125966 0 ;
	setAttr ".pt[955]" -type "float3" -3.2179091e-08 0.086617552 0 ;
	setAttr ".pt[956]" -type "float3" 0.020419333 0.076206014 3.7252903e-09 ;
	setAttr ".pt[957]" -type "float3" 0.026552878 0.064104334 0 ;
	setAttr ".pt[958]" -type "float3" 0.032471392 0.078392893 0 ;
	setAttr ".pt[959]" -type "float3" 0.022418264 0.083666146 0 ;
	setAttr ".pt[960]" -type "float3" 0.039447132 0.068324447 3.7252903e-09 ;
	setAttr ".pt[961]" -type "float3" 0.042239524 0.055047635 0 ;
	setAttr ".pt[962]" -type "float3" 0.051654521 0.067317486 0 ;
	setAttr ".pt[963]" -type "float3" 0.043308776 0.075013004 0 ;
	setAttr ".pt[964]" -type "float3" 0.055786651 0.055786684 3.7252903e-09 ;
	setAttr ".pt[965]" -type "float3" 0.055047605 0.042239569 0 ;
	setAttr ".pt[966]" -type "float3" 0.067317478 0.051654562 0 ;
	setAttr ".pt[967]" -type "float3" 0.061247841 0.061247885 0 ;
	setAttr ".pt[968]" -type "float3" 0.068324402 0.039447159 3.7252903e-09 ;
	setAttr ".pt[969]" -type "float3" 0.064104304 0.026552863 0 ;
	setAttr ".pt[970]" -type "float3" 0.076206028 0.020419277 3.7252903e-09 ;
	setAttr ".pt[971]" -type "float3" 0.078392886 0.032471389 0 ;
	setAttr ".pt[972]" -type "float3" 0.075012967 0.043308809 0 ;
	setAttr ".pt[973]" -type "float3" 0.083666138 0.022418214 0 ;
	setAttr ".pt[974]" -type "float3" 0.039848141 0.0052460604 0 ;
	setAttr ".pt[975]" -type "float3" 0.024362188 -1.8714667e-08 0 ;
	setAttr ".pt[976]" -type "float3" 0.039848153 -0.0052461256 0 ;
	setAttr ".pt[977]" -type "float3" 0.02353207 -0.0063053938 0 ;
	setAttr ".pt[978]" -type "float3" 0.037132557 -0.015380801 0 ;
	setAttr ".pt[979]" -type "float3" 0.021098262 -0.012181086 0 ;
	setAttr ".pt[980]" -type "float3" 0.031886455 -0.02446733 0 ;
	setAttr ".pt[981]" -type "float3" 0.01722667 -0.01722667 0 ;
	setAttr ".pt[982]" -type "float3" 0.024467342 -0.031886447 0 ;
	setAttr ".pt[983]" -type "float3" 0.01218109 -0.021098265 0 ;
	setAttr ".pt[984]" -type "float3" 0.015380811 -0.037132546 0 ;
	setAttr ".pt[985]" -type "float3" 0.0063053919 -0.023532057 0 ;
	setAttr ".pt[986]" -type "float3" 0.0052461033 -0.039848145 0 ;
	setAttr ".pt[987]" -type "float3" -7.6624609e-09 -0.024362177 0 ;
	setAttr ".pt[988]" -type "float3" -0.0052461145 -0.039848126 0 ;
	setAttr ".pt[989]" -type "float3" -0.0063054091 -0.023532057 0 ;
	setAttr ".pt[990]" -type "float3" -0.015380825 -0.037132535 0 ;
	setAttr ".pt[991]" -type "float3" -0.012181108 -0.021098258 0 ;
	setAttr ".pt[992]" -type "float3" -0.024467351 -0.031886432 0 ;
	setAttr ".pt[993]" -type "float3" -0.017226679 -0.017226657 0 ;
	setAttr ".pt[994]" -type "float3" -0.031886451 -0.024467325 0 ;
	setAttr ".pt[995]" -type "float3" -0.02109828 -0.01218108 0 ;
	setAttr ".pt[996]" -type "float3" -0.037132572 -0.015380798 0 ;
	setAttr ".pt[997]" -type "float3" -0.023532081 -0.0063053877 0 ;
	setAttr ".pt[998]" -type "float3" -0.039848167 -0.0052460982 0 ;
	setAttr ".pt[999]" -type "float3" -0.024362206 9.4257091e-09 0 ;
	setAttr ".pt[1000]" -type "float3" -0.039848156 0.0052461149 0 ;
	setAttr ".pt[1001]" -type "float3" -0.02353208 0.0063054073 0 ;
	setAttr ".pt[1002]" -type "float3" -0.037132554 0.015380825 0 ;
	setAttr ".pt[1003]" -type "float3" -0.02109828 0.012181107 0 ;
	setAttr ".pt[1004]" -type "float3" -0.031886458 0.024467351 0 ;
	setAttr ".pt[1005]" -type "float3" -0.017226685 0.017226676 0 ;
	setAttr ".pt[1006]" -type "float3" -0.02446736 0.031886443 0 ;
	setAttr ".pt[1007]" -type "float3" -0.012181113 0.021098271 0 ;
	setAttr ".pt[1008]" -type "float3" -0.015380829 0.037132546 0 ;
	setAttr ".pt[1009]" -type "float3" -0.0063054133 0.023532068 0 ;
	setAttr ".pt[1010]" -type "float3" -0.0052461261 0.039848145 0 ;
	setAttr ".pt[1011]" -type "float3" -1.7049947e-08 0.024362182 0 ;
	setAttr ".pt[1012]" -type "float3" 0.0052460926 0.03984813 0 ;
	setAttr ".pt[1013]" -type "float3" 0.0063053886 0.023532053 0 ;
	setAttr ".pt[1014]" -type "float3" 0.0153808 0.037132531 0 ;
	setAttr ".pt[1015]" -type "float3" 0.012181078 0.021098264 0 ;
	setAttr ".pt[1016]" -type "float3" 0.024467319 0.03188644 0 ;
	setAttr ".pt[1017]" -type "float3" 0.017226649 0.017226672 0 ;
	setAttr ".pt[1018]" -type "float3" 0.031886421 0.024467345 0 ;
	setAttr ".pt[1019]" -type "float3" 0.021098245 0.0121811 0 ;
	setAttr ".pt[1020]" -type "float3" 0.023532042 0.0063053747 0 ;
	setAttr ".pt[1021]" -type "float3" 0.037132513 0.015380787 0 ;
	setAttr ".pt[1022]" -type "float3" 0.066581912 0.027579132 0 ;
	setAttr ".pt[1023]" -type "float3" 0.071451224 0.0094067007 0 ;
	setAttr ".pt[1024]" -type "float3" 0.096166588 0.025767718 0 ;
	setAttr ".pt[1025]" -type "float3" 0.071451247 -0.0094067454 0 ;
	setAttr ".pt[1026]" -type "float3" 0.099559061 -4.8104226e-08 0 ;
	setAttr ".pt[1027]" -type "float3" 0.066581957 -0.027579144 0 ;
	setAttr ".pt[1028]" -type "float3" 0.096166655 -0.025767768 0 ;
	setAttr ".pt[1029]" -type "float3" 0.057175219 -0.043872084 0 ;
	setAttr ".pt[1030]" -type "float3" 0.086220652 -0.049779508 0 ;
	setAttr ".pt[1031]" -type "float3" 0.043872088 -0.057175215 0 ;
	setAttr ".pt[1032]" -type "float3" 0.070398882 -0.070398882 0 ;
	setAttr ".pt[1033]" -type "float3" 0.027579149 -0.06658195 0 ;
	setAttr ".pt[1034]" -type "float3" 0.049779523 -0.086220637 0 ;
	setAttr ".pt[1035]" -type "float3" 0.0094067324 -0.071451232 0 ;
	setAttr ".pt[1036]" -type "float3" 0.025767777 -0.096166633 0 ;
	setAttr ".pt[1037]" -type "float3" -0.0094067436 -0.071451224 0 ;
	setAttr ".pt[1038]" -type "float3" -7.3217454e-09 -0.099559039 0 ;
	setAttr ".pt[1039]" -type "float3" -0.027579159 -0.066581935 0 ;
	setAttr ".pt[1040]" -type "float3" -0.025767792 -0.096166603 0 ;
	setAttr ".pt[1041]" -type "float3" -0.043872103 -0.057175197 0 ;
	setAttr ".pt[1042]" -type "float3" -0.049779546 -0.08622063 0 ;
	setAttr ".pt[1043]" -type "float3" -0.057175238 -0.04387207 0 ;
	setAttr ".pt[1044]" -type "float3" -0.070398897 -0.07039883 0 ;
	setAttr ".pt[1045]" -type "float3" -0.066581979 -0.027579127 0 ;
	setAttr ".pt[1046]" -type "float3" -0.086220682 -0.049779482 0 ;
	setAttr ".pt[1047]" -type "float3" -0.071451247 -0.0094067156 0 ;
	setAttr ".pt[1048]" -type "float3" -0.096166663 -0.025767742 0 ;
	setAttr ".pt[1049]" -type "float3" -0.071451247 0.009406751 0 ;
	setAttr ".pt[1050]" -type "float3" -0.099559046 2.5093065e-08 0 ;
	setAttr ".pt[1051]" -type "float3" -0.066581957 0.02757917 0 ;
	setAttr ".pt[1052]" -type "float3" -0.096166663 0.025767799 0 ;
	setAttr ".pt[1053]" -type "float3" -0.057175234 0.043872099 0 ;
	setAttr ".pt[1054]" -type "float3" -0.086220652 0.049779546 0 ;
	setAttr ".pt[1055]" -type "float3" -0.043872096 0.057175227 0 ;
	setAttr ".pt[1056]" -type "float3" -0.070398897 0.070398882 0 ;
	setAttr ".pt[1057]" -type "float3" -0.027579157 0.06658195 0 ;
	setAttr ".pt[1058]" -type "float3" -0.049779538 0.086220652 0 ;
	setAttr ".pt[1059]" -type "float3" -0.0094067492 0.071451224 0 ;
	setAttr ".pt[1060]" -type "float3" -0.025767798 0.096166633 0 ;
	setAttr ".pt[1061]" -type "float3" 0.0094067222 0.071451217 0 ;
	setAttr ".pt[1062]" -type "float3" -2.7299334e-08 0.099559024 0 ;
	setAttr ".pt[1063]" -type "float3" 0.027579134 0.066581927 0 ;
	setAttr ".pt[1064]" -type "float3" 0.025767758 0.096166611 0 ;
	setAttr ".pt[1065]" -type "float3" 0.043872066 0.057175204 0 ;
	setAttr ".pt[1066]" -type "float3" 0.049779486 0.08622063 0 ;
	setAttr ".pt[1067]" -type "float3" 0.057175182 0.043872073 0 ;
	setAttr ".pt[1068]" -type "float3" 0.070398815 0.070398845 0 ;
	setAttr ".pt[1069]" -type "float3" 0.086220577 0.049779523 0 ;
	setAttr ".pt[1070]" -type "float3" 0.086223252 0.011351435 3.7252903e-09 ;
	setAttr ".pt[1073]" -type "float3" 0.086223304 -0.011351535 3.7252903e-09 ;
	setAttr ".pt[1077]" -type "float3" 0.080347329 -0.03328092 3.7252903e-09 ;
	setAttr ".pt[1081]" -type "float3" 0.068995796 -0.052942324 3.7252903e-09 ;
	setAttr ".pt[1085]" -type "float3" 0.052942324 -0.068995804 3.7252903e-09 ;
	setAttr ".pt[1089]" -type "float3" 0.033280943 -0.080347285 3.7252903e-09 ;
	setAttr ".pt[1093]" -type "float3" 0.011351511 -0.086223222 3.7252903e-09 ;
	setAttr ".pt[1097]" -type "float3" -0.011351521 -0.086223252 3.7252903e-09 ;
	setAttr ".pt[1101]" -type "float3" -0.033280954 -0.080347262 3.7252903e-09 ;
	setAttr ".pt[1105]" -type "float3" -0.052942362 -0.068995737 3.7252903e-09 ;
	setAttr ".pt[1109]" -type "float3" -0.068995804 -0.052942295 3.7252903e-09 ;
	setAttr ".pt[1113]" -type "float3" -0.080347322 -0.033280909 3.7252903e-09 ;
	setAttr ".pt[1117]" -type "float3" -0.086223304 -0.011351483 3.7252903e-09 ;
	setAttr ".pt[1121]" -type "float3" -0.086223274 0.011351536 3.7252903e-09 ;
	setAttr ".pt[1125]" -type "float3" -0.080347307 0.033280969 3.7252903e-09 ;
	setAttr ".pt[1129]" -type "float3" -0.068995804 0.052942362 3.7252903e-09 ;
	setAttr ".pt[1133]" -type "float3" -0.052942354 0.068995804 3.7252903e-09 ;
	setAttr ".pt[1137]" -type "float3" -0.033280965 0.080347277 3.7252903e-09 ;
	setAttr ".pt[1141]" -type "float3" -0.01135154 0.086223267 3.7252903e-09 ;
	setAttr ".pt[1145]" -type "float3" 0.011351484 0.08622323 3.7252903e-09 ;
	setAttr ".pt[1149]" -type "float3" 0.033280924 0.08034724 3.7252903e-09 ;
	setAttr ".pt[1153]" -type "float3" 0.052942287 0.068995737 3.7252903e-09 ;
	setAttr ".pt[1157]" -type "float3" 0.068995722 0.052942313 3.7252903e-09 ;
	setAttr ".pt[1161]" -type "float3" 0.080347247 0.033280909 3.7252903e-09 ;
	setAttr ".pt[1538]" -type "float3" 0.052810885 -0.06882447 3.7252903e-09 ;
	setAttr ".pt[1539]" -type "float3" 0.033198312 -0.08014781 3.7252903e-09 ;
	setAttr ".pt[1540]" -type "float3" 0.011323328 -0.086009182 3.7252903e-09 ;
	setAttr ".pt[1541]" -type "float3" -0.01132334 -0.086009167 3.7252903e-09 ;
	setAttr ".pt[1542]" -type "float3" -0.033198327 -0.080147788 3.7252903e-09 ;
	setAttr ".pt[1543]" -type "float3" -0.052810896 -0.068824455 3.7252903e-09 ;
	setAttr ".pt[1544]" -type "float3" -0.068824507 -0.052810859 3.7252903e-09 ;
	setAttr ".pt[1545]" -type "float3" -0.080147848 -0.033198282 3.7252903e-09 ;
	setAttr ".pt[1546]" -type "float3" -0.086009189 -0.011323301 3.7252903e-09 ;
	setAttr ".pt[1547]" -type "float3" -0.086009175 0.011323353 3.7252903e-09 ;
	setAttr ".pt[1548]" -type "float3" -0.080147803 0.033198342 3.7252903e-09 ;
	setAttr ".pt[1549]" -type "float3" -0.068824492 0.052810896 3.7252903e-09 ;
	setAttr ".pt[1550]" -type "float3" -0.052810904 0.06882447 3.7252903e-09 ;
	setAttr ".pt[1551]" -type "float3" -0.033198331 0.080147803 3.7252903e-09 ;
	setAttr ".pt[1552]" -type "float3" -0.011323359 0.086009175 3.7252903e-09 ;
	setAttr ".pt[1553]" -type "float3" 0.011323301 0.086009152 3.7252903e-09 ;
	setAttr ".pt[1554]" -type "float3" 0.03319829 0.08014778 3.7252903e-09 ;
	setAttr ".pt[1555]" -type "float3" 0.052810848 0.068824455 3.7252903e-09 ;
	setAttr ".pt[1556]" -type "float3" 0.068824433 0.052810889 3.7252903e-09 ;
	setAttr ".pt[1557]" -type "float3" 0.080147766 0.033198275 3.7252903e-09 ;
	setAttr ".pt[1558]" -type "float3" 0.086009175 0.01132325 3.7252903e-09 ;
	setAttr ".pt[1559]" -type "float3" 0.086009197 -0.01132335 3.7252903e-09 ;
	setAttr ".pt[1560]" -type "float3" 0.080147825 -0.03319829 3.7252903e-09 ;
	setAttr ".pt[1561]" -type "float3" 0.068824492 -0.05281087 3.7252903e-09 ;
	setAttr ".pt[1562]" -type "float3" 0.053338408 -0.069511972 0 ;
	setAttr ".pt[1563]" -type "float3" 0.033529937 -0.080948398 0 ;
	setAttr ".pt[1564]" -type "float3" 0.011436438 -0.086868323 0 ;
	setAttr ".pt[1565]" -type "float3" -0.011436449 -0.086868323 0 ;
	setAttr ".pt[1566]" -type "float3" -0.033529952 -0.080948368 0 ;
	setAttr ".pt[1567]" -type "float3" -0.053338423 -0.06951195 0 ;
	setAttr ".pt[1568]" -type "float3" -0.069511995 -0.053338397 0 ;
	setAttr ".pt[1569]" -type "float3" -0.080948427 -0.033529904 1.1641532e-10 ;
	setAttr ".pt[1570]" -type "float3" -0.086868368 -0.011436412 0 ;
	setAttr ".pt[1571]" -type "float3" -0.086868346 0.011436461 0 ;
	setAttr ".pt[1572]" -type "float3" -0.080948442 0.033529967 1.1641532e-10 ;
	setAttr ".pt[1573]" -type "float3" -0.06951198 0.053338431 0 ;
	setAttr ".pt[1574]" -type "float3" -0.053338435 0.069511957 0 ;
	setAttr ".pt[1575]" -type "float3" -0.033529952 0.080948427 0 ;
	setAttr ".pt[1576]" -type "float3" -0.01143647 0.086868353 0 ;
	setAttr ".pt[1577]" -type "float3" 0.011436412 0.086868308 0 ;
	setAttr ".pt[1578]" -type "float3" 0.033529922 0.08094836 0 ;
	setAttr ".pt[1579]" -type "float3" 0.053338379 0.06951195 0 ;
	setAttr ".pt[1580]" -type "float3" 0.069511905 0.053338423 0 ;
	setAttr ".pt[1581]" -type "float3" 0.080948353 0.0335299 0 ;
	setAttr ".pt[1582]" -type "float3" 0.086868346 0.011436346 1.1641532e-10 ;
	setAttr ".pt[1583]" -type "float3" 0.086868368 -0.011436461 1.1641532e-10 ;
	setAttr ".pt[1584]" -type "float3" 0.080948435 -0.033529911 0 ;
	setAttr ".pt[1585]" -type "float3" 0.06951198 -0.05333842 0 ;
	setAttr ".pt[1586]" -type "float3" 0.069784492 -0.053547502 -3.7252903e-09 ;
	setAttr ".pt[1587]" -type "float3" 0.053547502 -0.069784477 -3.7252903e-09 ;
	setAttr ".pt[1588]" -type "float3" 0.033661377 -0.081265733 -3.7252903e-09 ;
	setAttr ".pt[1589]" -type "float3" 0.011481266 -0.087208867 -3.7252903e-09 ;
	setAttr ".pt[1590]" -type "float3" -0.011481283 -0.087208867 -3.7252903e-09 ;
	setAttr ".pt[1591]" -type "float3" -0.033661395 -0.08126571 -3.7252903e-09 ;
	setAttr ".pt[1592]" -type "float3" -0.053547535 -0.069784448 -3.7252903e-09 ;
	setAttr ".pt[1593]" -type "float3" -0.069784507 -0.053547487 -3.7252903e-09 ;
	setAttr ".pt[1594]" -type "float3" -0.081265748 -0.033661339 -3.7252903e-09 ;
	setAttr ".pt[1595]" -type "float3" -0.087208904 -0.011481241 -3.7252903e-09 ;
	setAttr ".pt[1596]" -type "float3" -0.087208904 0.011481293 -3.7252903e-09 ;
	setAttr ".pt[1597]" -type "float3" -0.081265733 0.033661403 -3.7252903e-09 ;
	setAttr ".pt[1598]" -type "float3" -0.0697845 0.053547531 -3.7252903e-09 ;
	setAttr ".pt[1599]" -type "float3" -0.053547535 0.069784477 -3.7252903e-09 ;
	setAttr ".pt[1600]" -type "float3" -0.033661395 0.08126574 -3.7252903e-09 ;
	setAttr ".pt[1601]" -type "float3" -0.0114813 0.087208852 -3.7252903e-09 ;
	setAttr ".pt[1602]" -type "float3" 0.011481243 0.087208837 -3.7252903e-09 ;
	setAttr ".pt[1603]" -type "float3" 0.033661354 0.081265695 -3.7252903e-09 ;
	setAttr ".pt[1604]" -type "float3" 0.053547475 0.069784448 -3.7252903e-09 ;
	setAttr ".pt[1605]" -type "float3" 0.069784425 0.053547513 -3.7252903e-09 ;
	setAttr ".pt[1606]" -type "float3" 0.081265688 0.033661336 -3.7252903e-09 ;
	setAttr ".pt[1607]" -type "float3" 0.087208867 0.011481193 -3.7252903e-09 ;
	setAttr ".pt[1608]" -type "float3" 0.087208904 -0.011481292 -3.7252903e-09 ;
	setAttr ".pt[1609]" -type "float3" 0.08126574 -0.033661358 -3.7252903e-09 ;
	setAttr ".pt[1610]" -type "float3" 0.030015413 -0.0039516045 0 ;
	setAttr ".pt[1611]" -type "float3" 0.027969912 -0.011585512 0 ;
	setAttr ".pt[1612]" -type "float3" 0.024018303 -0.018429892 0 ;
	setAttr ".pt[1613]" -type "float3" 0.018429894 -0.024018303 0 ;
	setAttr ".pt[1614]" -type "float3" 0.011585515 -0.027969908 0 ;
	setAttr ".pt[1615]" -type "float3" 0.0039516021 -0.030015405 0 ;
	setAttr ".pt[1616]" -type "float3" -0.0039516068 -0.030015402 0 ;
	setAttr ".pt[1617]" -type "float3" -0.01158552 -0.027969902 0 ;
	setAttr ".pt[1618]" -type "float3" -0.0184299 -0.024018295 0 ;
	setAttr ".pt[1619]" -type "float3" -0.024018306 -0.018429887 0 ;
	setAttr ".pt[1620]" -type "float3" -0.027969914 -0.011585508 0 ;
	setAttr ".pt[1621]" -type "float3" -0.030015413 -0.0039515956 0 ;
	setAttr ".pt[1622]" -type "float3" -0.030015409 0.0039516105 0 ;
	setAttr ".pt[1623]" -type "float3" -0.02796991 0.011585523 0 ;
	setAttr ".pt[1624]" -type "float3" -0.024018306 0.018429898 0 ;
	setAttr ".pt[1625]" -type "float3" -0.018429894 0.024018304 0 ;
	setAttr ".pt[1626]" -type "float3" -0.011585517 0.027969912 0 ;
	setAttr ".pt[1627]" -type "float3" -0.0039516068 0.030015405 0 ;
	setAttr ".pt[1628]" -type "float3" 0.0039515998 0.030015398 0 ;
	setAttr ".pt[1629]" -type "float3" 0.011585511 0.027969901 0 ;
	setAttr ".pt[1630]" -type "float3" 0.018429887 0.024018299 0 ;
	setAttr ".pt[1631]" -type "float3" 0.024018293 0.01842989 0 ;
	setAttr ".pt[1632]" -type "float3" 0.027969895 0.01158551 0 ;
	setAttr ".pt[1633]" -type "float3" 0.030015403 0.0039515961 0 ;
	setAttr ".pt[1682]" -type "float3" 0.085872918 0.011305308 0 ;
	setAttr ".pt[1683]" -type "float3" 0.085872956 -0.011305412 0 ;
	setAttr ".pt[1684]" -type "float3" 0.080020852 -0.033145707 0 ;
	setAttr ".pt[1685]" -type "float3" 0.068715438 -0.052727204 0 ;
	setAttr ".pt[1686]" -type "float3" 0.052727204 -0.068715461 0 ;
	setAttr ".pt[1687]" -type "float3" 0.033145722 -0.080020808 0 ;
	setAttr ".pt[1688]" -type "float3" 0.011305391 -0.085872911 0 ;
	setAttr ".pt[1689]" -type "float3" -0.0113054 -0.085872911 0 ;
	setAttr ".pt[1690]" -type "float3" -0.033145737 -0.080020778 0 ;
	setAttr ".pt[1691]" -type "float3" -0.05272723 -0.068715423 0 ;
	setAttr ".pt[1692]" -type "float3" -0.068715461 -0.052727185 0 ;
	setAttr ".pt[1693]" -type "float3" -0.08002086 -0.033145681 0 ;
	setAttr ".pt[1694]" -type "float3" -0.085872956 -0.011305361 0 ;
	setAttr ".pt[1695]" -type "float3" -0.085872948 0.011305411 0 ;
	setAttr ".pt[1696]" -type "float3" -0.080020845 0.033145744 0 ;
	setAttr ".pt[1697]" -type "float3" -0.068715475 0.052727241 0 ;
	setAttr ".pt[1698]" -type "float3" -0.052727237 0.068715461 0 ;
	setAttr ".pt[1699]" -type "float3" -0.033145737 0.080020823 0 ;
	setAttr ".pt[1700]" -type "float3" -0.011305418 0.085872918 0 ;
	setAttr ".pt[1701]" -type "float3" 0.011305361 0.085872896 0 ;
	setAttr ".pt[1702]" -type "float3" 0.033145707 0.080020785 0 ;
	setAttr ".pt[1703]" -type "float3" 0.052727185 0.068715423 0 ;
	setAttr ".pt[1704]" -type "float3" 0.068715386 0.052727219 0 ;
	setAttr ".pt[1705]" -type "float3" 0.080020793 0.033145685 0 ;
	setAttr ".pt[1706]" -type "float3" 0.052383039 0.021697754 0 ;
	setAttr ".pt[1707]" -type "float3" 0.056213953 0.0074006496 0 ;
	setAttr ".pt[1708]" -type "float3" 0.056213982 -0.0074007325 0 ;
	setAttr ".pt[1709]" -type "float3" 0.052383095 -0.021697773 0 ;
	setAttr ".pt[1710]" -type "float3" 0.04498237 -0.034516193 0 ;
	setAttr ".pt[1711]" -type "float3" 0.034516193 -0.04498237 0 ;
	setAttr ".pt[1712]" -type "float3" 0.021697786 -0.052383069 0 ;
	setAttr ".pt[1713]" -type "float3" 0.0074007092 -0.056213953 0 ;
	setAttr ".pt[1714]" -type "float3" -0.0074007157 -0.056213949 0 ;
	setAttr ".pt[1715]" -type "float3" -0.021697806 -0.052383065 0 ;
	setAttr ".pt[1716]" -type "float3" -0.034516204 -0.044982351 0 ;
	setAttr ".pt[1717]" -type "float3" -0.04498237 -0.034516171 0 ;
	setAttr ".pt[1718]" -type "float3" -0.052383091 -0.021697765 0 ;
	setAttr ".pt[1719]" -type "float3" -0.05621399 -0.0074006957 0 ;
	setAttr ".pt[1720]" -type "float3" -0.056213986 0.0074007213 0 ;
	setAttr ".pt[1721]" -type "float3" -0.052383088 0.021697802 0 ;
	setAttr ".pt[1722]" -type "float3" -0.044982377 0.0345162 0 ;
	setAttr ".pt[1723]" -type "float3" -0.034516208 0.044982363 0 ;
	setAttr ".pt[1724]" -type "float3" -0.021697806 0.052383069 0 ;
	setAttr ".pt[1725]" -type "float3" -0.0074007334 0.056213956 0 ;
	setAttr ".pt[1726]" -type "float3" 0.0074006929 0.056213945 0 ;
	setAttr ".pt[1727]" -type "float3" 0.021697775 0.05238305 0 ;
	setAttr ".pt[1728]" -type "float3" 0.034516171 0.044982344 0 ;
	setAttr ".pt[1729]" -type "float3" 0.044982329 0.034516193 0 ;
	setAttr ".pt[1730]" -type "float3" 0.091977105 0.038098156 0 ;
	setAttr ".pt[1731]" -type "float3" 0.098703615 0.012994519 0 ;
	setAttr ".pt[1732]" -type "float3" 0.098703653 -0.012994602 0 ;
	setAttr ".pt[1733]" -type "float3" 0.091977172 -0.038098175 0 ;
	setAttr ".pt[1734]" -type "float3" 0.078982584 -0.06060547 0 ;
	setAttr ".pt[1735]" -type "float3" 0.060605455 -0.078982584 0 ;
	setAttr ".pt[1736]" -type "float3" 0.038098194 -0.091977157 0 ;
	setAttr ".pt[1737]" -type "float3" 0.012994583 -0.098703615 0 ;
	setAttr ".pt[1738]" -type "float3" -0.012994595 -0.098703623 0 ;
	setAttr ".pt[1739]" -type "float3" -0.038098197 -0.091977134 0 ;
	setAttr ".pt[1740]" -type "float3" -0.060605485 -0.078982532 0 ;
	setAttr ".pt[1741]" -type "float3" -0.078982584 -0.060605429 0 ;
	setAttr ".pt[1742]" -type "float3" -0.091977164 -0.038098153 0 ;
	setAttr ".pt[1743]" -type "float3" -0.09870366 -0.012994552 0 ;
	setAttr ".pt[1744]" -type "float3" -0.09870366 0.012994609 0 ;
	setAttr ".pt[1745]" -type "float3" -0.091977164 0.038098216 0 ;
	setAttr ".pt[1746]" -type "float3" -0.078982562 0.060605492 0 ;
	setAttr ".pt[1747]" -type "float3" -0.060605492 0.078982577 0 ;
	setAttr ".pt[1748]" -type "float3" -0.038098205 0.091977164 0 ;
	setAttr ".pt[1749]" -type "float3" -0.012994609 0.09870363 0 ;
	setAttr ".pt[1750]" -type "float3" 0.012994558 0.098703615 0 ;
	setAttr ".pt[1751]" -type "float3" 0.038098164 0.091977105 0 ;
	setAttr ".pt[1752]" -type "float3" 0.060605422 0.078982562 0 ;
	setAttr ".pt[1753]" -type "float3" 0.078982517 0.060605466 0 ;
	setAttr ".pt[1778]" -type "float3" 0.078216396 0.010297316 3.7252903e-09 ;
	setAttr ".pt[1779]" -type "float3" 0.078216426 -0.010297413 3.7252903e-09 ;
	setAttr ".pt[1780]" -type "float3" 0.072886102 -0.030190386 3.7252903e-09 ;
	setAttr ".pt[1781]" -type "float3" 0.062588692 -0.048025992 3.7252903e-09 ;
	setAttr ".pt[1782]" -type "float3" 0.048026003 -0.062588692 3.7252903e-09 ;
	setAttr ".pt[1783]" -type "float3" 0.030190412 -0.072886072 3.7252903e-09 ;
	setAttr ".pt[1784]" -type "float3" 0.010297386 -0.078216411 3.7252903e-09 ;
	setAttr ".pt[1785]" -type "float3" -0.010297396 -0.078216389 3.7252903e-09 ;
	setAttr ".pt[1786]" -type "float3" -0.030190423 -0.072886065 3.7252903e-09 ;
	setAttr ".pt[1787]" -type "float3" -0.048026033 -0.062588669 3.7252903e-09 ;
	setAttr ".pt[1788]" -type "float3" -0.062588729 -0.048025969 3.7252903e-09 ;
	setAttr ".pt[1789]" -type "float3" -0.072886117 -0.03019038 3.7252903e-09 ;
	setAttr ".pt[1790]" -type "float3" -0.078216441 -0.010297363 3.7252903e-09 ;
	setAttr ".pt[1791]" -type "float3" -0.078216419 0.010297409 3.7252903e-09 ;
	setAttr ".pt[1792]" -type "float3" -0.072886094 0.030190431 3.7252903e-09 ;
	setAttr ".pt[1793]" -type "float3" -0.062588714 0.048026003 3.7252903e-09 ;
	setAttr ".pt[1794]" -type "float3" -0.048026033 0.062588707 3.7252903e-09 ;
	setAttr ".pt[1795]" -type "float3" -0.030190432 0.072886057 3.7252903e-09 ;
	setAttr ".pt[1796]" -type "float3" -0.010297417 0.078216389 3.7252903e-09 ;
	setAttr ".pt[1797]" -type "float3" 0.010297363 0.078216389 3.7252903e-09 ;
	setAttr ".pt[1798]" -type "float3" 0.030190391 0.072886042 3.7252903e-09 ;
	setAttr ".pt[1799]" -type "float3" 0.048025966 0.062588677 3.7252903e-09 ;
	setAttr ".pt[1800]" -type "float3" 0.06258864 0.048026003 3.7252903e-09 ;
	setAttr ".pt[1801]" -type "float3" 0.072886042 0.030190369 0 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape1" -p "pCylinder1";
	rename -uid "2DC84C73-4D6E-6F9C-B59C-F987C735B107";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 4 "f[24:47]" "f[120:143]" "f[168:191]" "f[216:479]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:23]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:47]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[24:47]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[24:47]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 3 "f[0:23]" "f[72:119]" "f[480:515]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 3 "f[48:71]" "f[144:167]" "f[192:215]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[24:47]";
	setAttr ".pv" -type "double2" 0.50000005960464478 0.50000004470348358 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 545 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.65092582 0.11580956 0.63531637
		 0.07812506 0.61048537 0.04576464 0.578125 0.020933613 0.54044044 0.0053241849 0.5
		 8.9406967e-08 0.45955956 0.0053241551 0.42187506 0.020933583 0.38951463 0.045764595
		 0.36468357 0.078125015 0.34907413 0.11580953 0.34375006 0.15625 0.34907413 0.19669044
		 0.36468357 0.23437497 0.3895146 0.2667354 0.421875 0.29156643 0.45955953 0.30717587
		 0.5 0.31249997 0.54044044 0.30717587 0.578125 0.29156646 0.61048543 0.26673543 0.63531649
		 0.234375 0.65092587 0.19669047 0.65625 0.15625 0.375 0.3125 0.38541666 0.3125 0.39583331
		 0.3125 0.40624997 0.3125 0.41666663 0.3125 0.42708328 0.3125 0.43749994 0.3125 0.4479166
		 0.3125 0.45833325 0.3125 0.46874991 0.3125 0.47916657 0.3125 0.48958322 0.3125 0.49999988
		 0.3125 0.51041657 0.3125 0.52083325 0.3125 0.53124994 0.3125 0.54166663 0.3125 0.55208331
		 0.3125 0.5625 0.3125 0.57291669 0.3125 0.58333337 0.3125 0.59375006 0.3125 0.60416675
		 0.3125 0.61458343 0.3125 0.62500012 0.3125 0.375 0.6875 0.38541666 0.6875 0.39583331
		 0.6875 0.40624997 0.6875 0.41666663 0.6875 0.42708328 0.6875 0.43749994 0.6875 0.4479166
		 0.6875 0.45833325 0.6875 0.46874991 0.6875 0.47916657 0.6875 0.48958322 0.6875 0.49999988
		 0.6875 0.51041657 0.6875 0.52083325 0.6875 0.53124994 0.6875 0.54166663 0.6875 0.55208331
		 0.6875 0.5625 0.6875 0.57291669 0.6875 0.58333337 0.6875 0.59375006 0.6875 0.60416675
		 0.6875 0.61458343 0.6875 0.62500012 0.6875 0.65092582 0.80330956 0.63531637 0.76562506
		 0.61048537 0.73326463 0.578125 0.70843363 0.54044044 0.69282418 0.5 0.68750012 0.45955956
		 0.69282413 0.42187506 0.70843357 0.38951463 0.73326457 0.36468357 0.765625 0.34907413
		 0.80330956 0.34375006 0.84375 0.34907413 0.88419044 0.36468357 0.921875 0.3895146
		 0.95423543 0.421875 0.97906643 0.45955953 0.99467587 0.5 1 0.54044044 0.99467587
		 0.578125 0.97906649 0.61048543 0.95423543 0.63531649 0.921875 0.65092587 0.88419044
		 0.65625 0.84375 0.5 0.15625 0.5 0.84375 0.38541666 0.3125 0.39583331 0.3125 0.39583331
		 0.6875 0.38541666 0.6875 0.40624997 0.3125 0.40624997 0.6875 0.41666663 0.3125 0.41666663
		 0.6875 0.42708328 0.3125 0.43749994 0.3125 0.43749994 0.6875 0.42708328 0.6875 0.4479166
		 0.3125 0.4479166 0.6875 0.45833325 0.3125 0.45833325 0.6875 0.46874991 0.3125 0.47916657
		 0.3125 0.47916657 0.6875 0.46874991 0.6875 0.48958322 0.3125 0.48958322 0.6875 0.49999988
		 0.3125 0.49999988 0.6875 0.51041657 0.3125 0.52083325 0.3125 0.52083325 0.6875 0.51041657
		 0.6875 0.53124994 0.3125 0.53124994 0.6875 0.54166663 0.3125 0.54166663 0.6875 0.55208331
		 0.3125 0.5625 0.3125 0.5625 0.6875 0.55208331 0.6875 0.57291669 0.3125 0.57291669
		 0.6875 0.58333337 0.3125 0.58333337 0.6875 0.59375006 0.3125 0.60416675 0.3125 0.60416675
		 0.6875 0.59375006 0.6875 0.61458343 0.3125 0.61458343 0.6875 0.62500012 0.3125 0.62500012
		 0.6875 0.63531637 0.07812506 0.65092582 0.11580956 0.61048537 0.04576464 0.578125
		 0.020933613 0.54044044 0.0053241849 0.5 8.9406967e-08 0.45955956 0.0053241551 0.42187506
		 0.020933583 0.38951463 0.045764595 0.36468357 0.078125015 0.34907413 0.11580953 0.34375006
		 0.15625 0.34907413 0.19669044 0.36468357 0.23437497 0.3895146 0.2667354 0.421875
		 0.29156643 0.45955953 0.30717587 0.5 0.31249997 0.54044044 0.30717587 0.578125 0.29156646
		 0.61048543 0.26673543 0.63531649 0.234375 0.65092587 0.19669047 0.65625 0.15625 0.65092587
		 0.88419044 0.63531649 0.921875 0.61048543 0.95423543 0.578125 0.97906649 0.54044044
		 0.99467587 0.5 1 0.45955953 0.99467587 0.421875 0.97906643 0.3895146 0.95423543 0.36468357
		 0.921875 0.34907413 0.88419044 0.34375006 0.84375 0.34907413 0.80330956 0.36468357
		 0.765625 0.38951463 0.73326457 0.42187506 0.70843357 0.45955956 0.69282413 0.5 0.68750012
		 0.54044044 0.69282418 0.578125 0.70843363 0.61048537 0.73326463 0.63531637 0.76562506
		 0.65092582 0.80330956 0.65625 0.84375 0.63531637 0.07812506 0.65092582 0.11580956
		 0.61048537 0.04576464 0.578125 0.020933613 0.54044044 0.0053241849 0.5 8.9406967e-08
		 0.45955956 0.0053241551 0.42187506 0.020933583 0.38951463 0.045764595 0.36468357
		 0.078125015 0.34907413 0.11580953 0.34375006 0.15625 0.34907413 0.19669044 0.36468357
		 0.23437497 0.3895146 0.2667354 0.421875 0.29156643 0.45955953 0.30717587 0.5 0.31249997
		 0.54044044 0.30717587 0.578125 0.29156646 0.61048543 0.26673543 0.63531649 0.234375
		 0.65092587 0.19669047 0.65625 0.15625 0.65092587 0.88419044 0.63531649 0.921875 0.61048543
		 0.95423543 0.578125 0.97906649 0.54044044 0.99467587 0.5 1 0.45955953 0.99467587
		 0.421875 0.97906643 0.3895146 0.95423543 0.36468357 0.921875 0.34907413 0.88419044
		 0.34375006 0.84375 0.34907413 0.80330956 0.36468357 0.765625 0.38951463 0.73326457
		 0.42187506 0.70843357 0.45955956 0.69282413 0.5 0.68750012 0.54044044 0.69282418
		 0.578125 0.70843363 0.61048537 0.73326463 0.63531637 0.76562506 0.65092582 0.80330956
		 0.65625 0.84375 0.65092576 0.11580956 0.63531637 0.07812506 0.61048537 0.04576464
		 0.578125 0.020933613 0.54044044 0.0053241849 0.5 8.9406967e-08;
	setAttr ".uvst[0].uvsp[250:499]" 0.45955956 0.0053241551 0.42187506 0.020933583
		 0.38951463 0.045764595 0.36468357 0.078125015 0.34907413 0.11580953 0.34375006 0.15625
		 0.34907413 0.19669044 0.36468357 0.23437497 0.3895146 0.2667354 0.421875 0.29156643
		 0.45955956 0.30717587 0.5 0.31249997 0.54044044 0.30717587 0.578125 0.29156646 0.61048543
		 0.26673543 0.63531649 0.234375 0.65092587 0.19669047 0.65625 0.15625 0.63531637 0.07812506
		 0.65092582 0.11580956 0.61048537 0.04576464 0.578125 0.020933613 0.54044044 0.0053241849
		 0.5 8.9406967e-08 0.45955956 0.0053241551 0.42187506 0.020933583 0.38951463 0.045764595
		 0.36468357 0.078125015 0.34907413 0.11580953 0.34375006 0.15625 0.34907413 0.19669044
		 0.36468357 0.23437497 0.3895146 0.2667354 0.421875 0.29156643 0.45955953 0.30717587
		 0.5 0.31249997 0.54044044 0.30717587 0.578125 0.29156646 0.61048543 0.26673543 0.63531649
		 0.234375 0.65092587 0.19669047 0.65625 0.15625 0.63531637 0.07812506 0.61048537 0.04576464
		 0.578125 0.020933613 0.54044044 0.0053241849 0.5 8.9406967e-08 0.45955956 0.0053241551
		 0.42187506 0.020933583 0.38951463 0.045764595 0.36468357 0.078125015 0.34907413 0.11580953
		 0.34375006 0.15625 0.34907413 0.19669044 0.36468357 0.23437497 0.3895146 0.2667354
		 0.421875 0.29156643 0.45955956 0.30717587 0.5 0.31249997 0.54044044 0.30717587 0.578125
		 0.29156646 0.61048543 0.26673543 0.63531649 0.234375 0.65092587 0.19669047 0.65625
		 0.15625 0.65092576 0.11580956 0.63531637 0.07812506 0.61048537 0.04576464 0.578125
		 0.020933613 0.54044044 0.0053241849 0.5 8.9406967e-08 0.45955956 0.0053241551 0.42187506
		 0.020933583 0.38951463 0.045764595 0.36468357 0.078125015 0.34907413 0.11580953 0.34375006
		 0.15625 0.34907413 0.19669044 0.36468357 0.23437497 0.3895146 0.2667354 0.421875
		 0.29156643 0.45955956 0.30717587 0.5 0.31249997 0.54044044 0.30717587 0.578125 0.29156646
		 0.61048543 0.26673543 0.63531649 0.234375 0.65092587 0.19669047 0.65625 0.15625 0.65092576
		 0.11580956 0.63531637 0.07812506 0.65092576 0.11580956 0.61048537 0.04576464 0.578125
		 0.020933613 0.54044044 0.0053241849 0.5 8.9406967e-08 0.45955956 0.0053241551 0.42187506
		 0.020933583 0.38951463 0.045764595 0.36468357 0.078125015 0.34907413 0.11580953 0.34375006
		 0.15625 0.34907413 0.19669044 0.36468357 0.23437497 0.3895146 0.2667354 0.421875
		 0.29156643 0.45955956 0.30717587 0.5 0.31249997 0.54044044 0.30717587 0.578125 0.29156646
		 0.61048543 0.26673543 0.63531649 0.234375 0.65092587 0.19669047 0.65625 0.15625 0.65092582
		 0.11580957 0.63531637 0.07812506 0.61048537 0.04576464 0.578125 0.020933613 0.54044044
		 0.0053241849 0.5 8.9406967e-08 0.45955956 0.0053241551 0.42187506 0.020933583 0.38951463
		 0.045764595 0.36468357 0.078125015 0.34907416 0.11580953 0.34375006 0.15625 0.34907416
		 0.19669044 0.36468357 0.23437499 0.3895146 0.2667354 0.421875 0.29156643 0.45955953
		 0.3071759 0.5 0.31249997 0.54044044 0.3071759 0.578125 0.29156646 0.61048543 0.26673543
		 0.63531655 0.23437501 0.65092587 0.19669047 0.65625006 0.15625 0.65625 0.15625 0.65092582
		 0.11580956 0.63531637 0.07812506 0.61048537 0.04576464 0.578125 0.020933613 0.54044044
		 0.0053241849 0.5 8.9406967e-08 0.45955956 0.0053241551 0.42187506 0.020933583 0.38951463
		 0.045764595 0.36468357 0.078125015 0.34907413 0.11580953 0.34375006 0.15625 0.34907413
		 0.19669044 0.36468357 0.23437497 0.38951457 0.2667354 0.421875 0.29156643 0.45955956
		 0.30717587 0.5 0.31249997 0.54044044 0.30717587 0.578125 0.29156646 0.61048543 0.26673543
		 0.63531655 0.234375 0.65092587 0.19669047 0.65625 0.15625 0.65092576 0.11580956 0.63531637
		 0.07812506 0.61048532 0.045764636 0.578125 0.020933613 0.54044044 0.0053241849 0.5
		 8.9406967e-08 0.45955953 0.0053241551 0.42187506 0.020933582 0.3895146 0.045764592
		 0.36468357 0.078125007 0.34907413 0.11580952 0.34375006 0.15625 0.34907413 0.19669044
		 0.36468357 0.23437496 0.38951457 0.2667354 0.421875 0.29156643 0.45955953 0.30717587
		 0.5 0.31249997 0.54044044 0.30717587 0.578125 0.29156646 0.61048537 0.26673543 0.63531649
		 0.23437499 0.65092587 0.19669046 0.63531649 0.234375 0.65092587 0.19669047 0.65625
		 0.15625 0.65092576 0.11580956 0.63531637 0.07812506 0.61048537 0.04576464 0.578125
		 0.020933613 0.54044044 0.0053241849 0.5 8.9406967e-08 0.45955956 0.0053241551 0.42187506
		 0.020933583 0.38951463 0.045764595 0.36468357 0.078125015 0.34907413 0.11580953 0.34375006
		 0.15625 0.34907413 0.19669044 0.36468357 0.23437497 0.3895146 0.2667354 0.421875
		 0.29156643 0.45955956 0.30717587 0.5 0.31249997 0.54044044 0.30717587 0.578125 0.29156646
		 0.61048543 0.26673543 0.61048543 0.26673543 0.63531649 0.234375 0.65092582 0.19669047
		 0.65625 0.15625 0.65092576 0.11580956 0.63531637 0.078125052 0.61048532 0.045764636
		 0.578125 0.020933613 0.54044044 0.0053241849 0.5 8.9406967e-08 0.45955956 0.0053241551
		 0.42187506 0.020933583 0.38951463 0.045764595 0.36468357 0.078125015 0.34907413 0.11580953
		 0.34375006 0.15625 0.34907413 0.19669044 0.36468357 0.23437497 0.38951457 0.2667354
		 0.421875 0.2915664 0.45955956 0.30717584 0.5 0.31249997 0.54044044 0.30717584 0.578125
		 0.29156643 0.61048543 0.26673543 0.63531649 0.234375 0.65092587 0.19669047 0.65625
		 0.15625 0.65092576 0.11580956 0.63531637 0.07812506 0.61048537 0.04576464 0.578125
		 0.020933613 0.54044044 0.0053241849 0.5 8.9406967e-08 0.45955956 0.0053241551 0.42187506
		 0.020933583 0.38951463 0.045764595 0.36468357 0.078125015 0.34907413 0.11580953 0.34375006
		 0.15625;
	setAttr ".uvst[0].uvsp[500:544]" 0.34907413 0.19669044 0.36468357 0.23437497
		 0.3895146 0.2667354 0.421875 0.29156643 0.45955956 0.30717587 0.5 0.31249997 0.54044044
		 0.30717587 0.578125 0.29156646 0.39583331 0.49004689 0.38541663 0.49004689 0.38541663
		 0.49004689 0.62500012 0.49004689 0.375 0.49004689 0.62500012 0.49004689 0.61458343
		 0.49004689 0.60416675 0.49004689 0.59375006 0.49004689 0.59375006 0.49004689 0.58333337
		 0.49004689 0.58333337 0.49004689 0.57291669 0.49004689 0.5625 0.49004689 0.55208331
		 0.49004689 0.55208331 0.49004689 0.54166663 0.49004689 0.54166663 0.49004689 0.53124994
		 0.49004689 0.52083325 0.49004689 0.51041657 0.49004689 0.51041657 0.49004689 0.49999988
		 0.49004689 0.49999988 0.49004689 0.48958319 0.49004689 0.47916657 0.49004689 0.46874988
		 0.49004689 0.46874988 0.49004689 0.45833325 0.49004689 0.45833325 0.49004689 0.44791657
		 0.49004689 0.43749994 0.49004689 0.42708325 0.49004689 0.42708325 0.49004689 0.41666663
		 0.49004689 0.41666663 0.49004689 0.40624994 0.49004689;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 494 ".vt";
	setAttr ".vt[0:165]"  1.20740664 0.32352355 0.10576415 1.082531214 0.62499952 0.10576415
		 0.88388318 0.88388288 0.10576415 0.62499976 1.082531095 0.10576415 0.32352376 1.20740652 0.10576415
		 1.4901161e-07 1.24999928 0.10576415 -0.32352355 1.20740676 0.10576415 -0.62499964 1.082531333 0.10576415
		 -0.88388318 0.88388324 0.10576415 -1.082531333 0.62499988 0.10576415 -1.20740688 0.32352376 0.10576415
		 -1.24999964 7.4505806e-08 0.10576415 -1.207407 -0.32352364 0.10576415 -1.082531452 -0.62499976 0.10576415
		 -0.8838833 -0.88388324 0.10576415 -0.62499994 -1.082531452 0.10576415 -0.32352376 -1.207407 0.10576415
		 -3.7252903e-08 -1.24999976 0.10576415 0.32352373 -1.20740712 0.10576415 0.62499988 -1.082531691 0.10576415
		 0.88388336 -0.88388348 0.10576415 1.082531691 -0.625 0.10576415 1.20740724 -0.32352385 0.10576415
		 1.25 0 0.10576415 1.20740664 0.32352355 0.88008308 1.082531214 0.62499952 0.88008308
		 0.88388318 0.88388288 0.88008308 0.62499976 1.082531095 0.88008308 0.32352376 1.20740652 0.88008308
		 1.4901161e-07 1.24999928 0.88008308 -0.32352355 1.20740676 0.88008308 -0.62499964 1.082531333 0.88008308
		 -0.88388318 0.88388324 0.88008308 -1.082531333 0.62499988 0.88008308 -1.20740688 0.32352376 0.88008308
		 -1.24999964 7.4505806e-08 0.88008308 -1.207407 -0.32352364 0.88008308 -1.082531452 -0.62499976 0.88008308
		 -0.8838833 -0.88388324 0.88008308 -0.62499994 -1.082531452 0.88008308 -0.32352376 -1.207407 0.88008308
		 -3.7252903e-08 -1.24999976 0.88008308 0.32352373 -1.20740712 0.88008308 0.62499988 -1.082531691 0.88008308
		 0.88388336 -0.88388348 0.88008308 1.082531691 -0.625 0.88008308 1.20740724 -0.32352385 0.88008308
		 1.25 0 0.88008308 1.10005498 0.91578478 0.26137543 1.015881419 1.015881062 0.26137543
		 1.015881419 1.015881062 0.73862457 1.10005498 0.91578478 0.73862457 0.71833664 1.2441951 0.26137543
		 0.71833664 1.2441951 0.73862457 0.59986526 1.29959345 0.26137543 0.59986526 1.29959345 0.73862457
		 -0.24306527 1.41056788 0.26137543 -0.37183803 1.38771963 0.26137543 -0.37183803 1.38771963 0.73862457
		 -0.24306527 1.41056788 0.73862457 -0.7183364 1.24419546 0.26137543 -0.7183364 1.24419546 0.73862457
		 -0.82554847 1.16929567 0.26137543 -0.82554847 1.16929567 0.73862457 -1.34312034 0.49478319 0.26137543
		 -1.38771963 0.37183848 0.26137543 -1.38771963 0.37183848 0.73862457 -1.34312034 0.49478319 0.73862457
		 -1.4366734 9.8381321e-08 0.26137543 -1.4366734 9.8381321e-08 0.73862457 -1.4254142 -0.13029841 0.26137543
		 -1.4254142 -0.13029841 0.73862457 -1.1000551 -0.91578496 0.26137543 -1.015881419 -1.015881419 0.26137543
		 -1.015881419 -1.015881419 0.73862457 -1.1000551 -0.91578496 0.73862457 -0.71833682 -1.24419546 0.26137543
		 -0.71833682 -1.24419546 0.73862457 -0.59986514 -1.29959404 0.26137543 -0.59986514 -1.29959404 0.73862457
		 0.24306552 -1.41056836 0.26137543 0.37183833 -1.38771999 0.26137543 0.37183833 -1.38771999 0.73862457
		 0.24306552 -1.41056836 0.73862457 0.7183367 -1.2441957 0.26137543 0.7183367 -1.2441957 0.73862457
		 0.82554901 -1.16929579 0.26137543 0.82554901 -1.16929579 0.73862457 1.34312081 -0.49478322 0.26137543
		 1.38772011 -0.37183854 0.26137543 1.38772011 -0.37183854 0.73862457 1.34312081 -0.49478322 0.73862457
		 1.43667364 3.0263178e-07 0.26137543 1.43667364 3.0263178e-07 0.73862457 1.4254142 0.13029903 0.26137543
		 1.4254142 0.13029903 0.73862457 0.94029438 0.25195086 0.10576415 0.84304506 0.4867321 0.10576415
		 0.68834341 0.68834311 0.10576415 0.48673239 0.84304476 0.10576415 0.25195125 0.94029427 0.10576415
		 8.1282174e-08 0.97346425 0.10576415 -0.2519511 0.94029456 0.10576415 -0.48673218 0.84304506 0.10576415
		 -0.68834358 0.68834341 0.10576415 -0.84304506 0.48673239 0.10576415 -0.94029462 0.25195119 0.10576415
		 -0.97346461 1.6792876e-08 0.10576415 -0.9402948 -0.25195116 0.10576415 -0.84304512 -0.48673239 0.10576415
		 -0.68834358 -0.68834358 0.10576415 -0.48673242 -0.84304512 0.10576415 -0.25195119 -0.9402948 0.10576415
		 1.248445e-08 -0.97346485 0.10576415 0.25195128 -0.94029486 0.10576415 0.48673242 -0.84304535 0.10576415
		 0.68834364 -0.6883437 0.10576415 0.84304535 -0.48673248 0.10576415 0.94029498 -0.25195134 0.10576415
		 0.97346497 -1.9880291e-07 0.10576415 0.81999731 0.21971732 0.9931348 0.73518944 0.42446169 0.9931348
		 0.60027981 0.60027951 0.9931348 0.42446199 0.73518932 0.9931348 0.2197177 0.81999713 0.9931348
		 9.4713144e-08 0.84892356 0.9931348 -0.21971755 0.81999731 0.9931348 -0.42446181 0.73518956 0.9931348
		 -0.60027987 0.60027981 0.9931348 -0.73518956 0.42446196 0.9931348 -0.81999743 0.21971762 0.9931348
		 -0.84892386 -1.8717339e-08 0.9931348 -0.81999755 -0.21971768 0.9931348 -0.73518962 -0.42446199 0.9931348
		 -0.60027987 -0.60027993 0.9931348 -0.42446199 -0.73518968 0.9931348 -0.21971764 -0.81999773 0.9931348
		 3.4717097e-08 -0.84892404 0.9931348 0.21971777 -0.81999773 0.9931348 0.42446208 -0.73518986 0.9931348
		 0.60028005 -0.60028011 0.9931348 0.73518986 -0.42446214 0.9931348 0.81999779 -0.2197178 0.9931348
		 0.84892422 -2.0673076e-07 0.9931348 0.52542436 0.14078625 1.040366054 0.47108236 0.2719796 1.040366054
		 0 0 1.090302944 0.38463724 0.38463709 1.040366054 0.27197969 0.4710823 1.040366054
		 0.14078711 0.525424 1.040366054 -1.3522774e-07 0.54395902 1.040366054 -0.14078718 0.52542418 1.040366054
		 -0.27197972 0.47108248 1.040366054 -0.38463748 0.38463724 1.040366054 -0.47108263 0.27197972 1.040366054
		 -0.52542436 0.14078707 1.040366054 -0.54395932 -6.4203007e-08 1.040366054 -0.52542448 -0.14078704 1.040366054
		 -0.47108275 -0.27197969 1.040366054 -0.38463739 -0.38463742 1.040366054 -0.27197972 -0.47108266 1.040366054
		 -0.14078705 -0.52542448 1.040366054 1.1282546e-07 -0.5439595 1.040366054 0.14078729 -0.5254246 1.040366054
		 0.27197984 -0.47108281 1.040366054 0.38463753 -0.38463759 1.040366054;
	setAttr ".vt[166:331]" 0.47108293 -0.27197975 1.040366054 0.52542472 -0.14078714 1.040366054
		 0.54395962 -7.4736027e-07 1.040366054 0.94029438 0.25195086 0.73735493 0.84304506 0.4867321 0.73735493
		 0.54838812 0.14693946 0.73735493 0.49167112 0.28386649 0.73735493 0.68834341 0.68834311 0.73735493
		 0.40144786 0.40144771 0.73735493 0.48673239 0.84304476 0.73735493 0.28386661 0.491671 0.73735493
		 0.25195125 0.94029427 0.73735493 0.14694023 0.54838777 0.73735493 8.1282174e-08 0.97346425 0.73735493
		 -8.6413905e-08 0.56773287 0.73735493 -0.2519511 0.94029456 0.73735493 -0.14694023 0.54838789 0.73735493
		 -0.48673218 0.84304506 0.73735493 -0.28386658 0.49167123 0.73735493 -0.68834358 0.68834341 0.73735493
		 -0.40144804 0.40144786 0.73735493 -0.84304506 0.48673239 0.73735493 -0.49167132 0.28386661 0.73735493
		 -0.94029462 0.25195119 0.73735493 -0.54838812 0.14694017 0.73735493 -0.97346461 1.6792876e-08 0.73735493
		 -0.56773317 -6.8579659e-08 0.73735493 -0.9402948 -0.25195116 0.73735493 -0.54838824 -0.14694017 0.73735493
		 -0.84304512 -0.48673239 0.73735493 -0.49167144 -0.28386661 0.73735493 -0.68834358 -0.68834358 0.73735493
		 -0.40144798 -0.40144801 0.73735493 -0.48673242 -0.84304512 0.73735493 -0.28386661 -0.49167141 0.73735493
		 -0.25195119 -0.9402948 0.73735493 -0.14694016 -0.54838824 0.73735493 1.248445e-08 -0.97346485 0.73735493
		 1.0395502e-07 -0.56773335 0.73735493 0.25195128 -0.94029486 0.73735493 0.14694038 -0.5483883 0.73735493
		 0.48673242 -0.84304535 0.73735493 0.28386676 -0.49167156 0.73735493 0.68834364 -0.6883437 0.73735493
		 0.40144816 -0.40144828 0.73735493 0.84304535 -0.48673248 0.73735493 0.49167162 -0.2838667 0.73735493
		 0.94029498 -0.25195134 0.73735493 0.54838848 -0.14694028 0.73735493 0.97346497 -1.9880291e-07 0.73735493
		 0.56773347 -6.4395988e-07 0.73735493 0.62375939 0.36012766 0.73735493 0.50929749 0.50929725 0.73735493
		 0.36012784 0.62375927 0.73735493 0.18641591 0.6957131 0.73735493 -2.3373687e-08 0.72025532 0.73735493
		 -0.1864159 0.69571322 0.73735493 -0.36012769 0.62375951 0.73735493 -0.50929761 0.50929749 0.73735493
		 -0.62375957 0.36012784 0.73735493 -0.69571346 0.18641585 0.73735493 -0.72025549 -3.6486462e-08 0.73735493
		 -0.69571352 -0.18641584 0.73735493 -0.62375969 -0.36012784 0.73735493 -0.50929761 -0.50929761 0.73735493
		 -0.36012784 -0.62375963 0.73735493 -0.18641584 -0.69571352 0.73735493 6.9569452e-08 -0.72025567 0.73735493
		 0.18641604 -0.6957137 0.73735493 0.36012796 -0.62375981 0.73735493 0.50929779 -0.50929785 0.73735493
		 0.62375987 -0.36012796 0.73735493 0.69571376 -0.18641599 0.73735493 0.72025591 -4.7661672e-07 0.73735493
		 0.69571328 0.1864153 0.73735493 0.26874265 0.072008826 0 0.24094793 0.13911134 0
		 5.752522e-08 -1.1902496e-07 0 0.19673334 0.19673312 0 0.13911152 0.24094775 0 0.072009504 0.26874229 0
		 -1.1640697e-08 0.27822268 0 -0.072009355 0.26874247 0 -0.13911147 0.24094781 0 -0.19673339 0.19673316 0
		 -0.24094793 0.13911137 0 -0.26874262 0.072009236 0 -0.27822298 -1.5380166e-07 0 -0.26874268 -0.072009526 0
		 -0.24094793 -0.13911156 0 -0.19673327 -0.19673347 0 -0.13911147 -0.24094819 0 -0.07200931 -0.2687428 0
		 1.1523287e-07 -0.27822316 0 0.072009534 -0.26874286 0 0.13911164 -0.24094829 0 0.19673353 -0.19673361 0
		 0.24094819 -0.13911162 0 0.26874298 -0.072009563 0 0.27822322 -5.0128267e-07 0 0.54838812 0.14693946 0
		 0.49167112 0.28386649 0 0.44810387 0.12006842 0 0.40175873 0.23195556 0 0.40144786 0.40144771 0
		 0.32803476 0.32803458 0 0.28386661 0.491671 0 0.23195568 0.40175861 0 0.14694023 0.54838777 0
		 0.12006916 0.44810355 0 -8.6413905e-08 0.56773287 0 -5.959933e-08 0.463911 0 -0.14694023 0.54838789 0
		 -0.1200691 0.44810367 0 -0.28386658 0.49167123 0 -0.23195565 0.40175882 0 -0.40144804 0.40144786 0
		 -0.32803488 0.32803473 0 -0.49167132 0.28386661 0 -0.40175888 0.23195563 0 -0.54838812 0.14694017 0
		 -0.44810385 0.12006903 0 -0.56773317 -6.8579659e-08 0 -0.46391129 -9.914131e-08 0
		 -0.54838824 -0.14694017 0 -0.44810396 -0.12006913 0 -0.49167144 -0.28386661 0 -0.40175897 -0.23195571 0
		 -0.40144798 -0.40144801 0 -0.32803479 -0.32803491 0 -0.28386661 -0.49167141 0 -0.23195566 -0.401759 0
		 -0.14694016 -0.54838824 0 -0.12006905 -0.44810399 0 1.0395502e-07 -0.56773335 0 1.079994e-07 -0.46391147 0
		 0.14694038 -0.5483883 0 0.12006927 -0.44810411 0 0.28386676 -0.49167156 0 0.23195583 -0.40175918 0
		 0.40144816 -0.40144828 0 0.32803503 -0.32803512 0 0.49167162 -0.2838667 0 0.40175915 -0.23195578 0
		 0.54838848 -0.14694028 0 0.4481042 -0.12006923 0 0.56773347 -6.4395988e-07 0 0.46391159 -5.9279415e-07 0
		 0.94029438 0.25195086 0.14325786 0.84304506 0.48673213 0.14325786 0.68834341 0.68834311 0.14325786
		 0.48673239 0.84304476 0.14325786 0.25195125 0.94029433 0.14325786 8.1282181e-08 0.97346431 0.14325786
		 -0.2519511 0.94029456 0.14325786 -0.48673218 0.84304506 0.14325786 -0.68834364 0.68834341 0.14325786
		 -0.84304506 0.48673239 0.14325786 -0.94029462 0.25195119 0.14325786 -0.97346461 1.6792876e-08 0.14325786
		 -0.9402948 -0.25195116 0.14325786 -0.84304512 -0.48673239 0.14325786 -0.68834364 -0.68834364 0.14325786
		 -0.48673242 -0.84304512 0.14325786 -0.25195119 -0.9402948 0.14325786 1.2484451e-08 -0.97346485 0.14325786;
	setAttr ".vt[332:493]" 0.25195128 -0.94029486 0.14325786 0.48673242 -0.84304541 0.14325786
		 0.6883437 -0.68834376 0.14325786 0.84304541 -0.48673248 0.14325786 0.94029498 -0.25195134 0.14325786
		 0.97346497 -1.9880291e-07 0.14325786 0.97346497 -1.9880291e-07 0.68601954 0.94029438 0.25195086 0.68601954
		 0.84304506 0.4867321 0.68601954 0.68834341 0.68834311 0.68601954 0.48673239 0.84304476 0.68601954
		 0.25195125 0.94029427 0.68601954 8.1282174e-08 0.97346425 0.68601954 -0.2519511 0.94029456 0.68601954
		 -0.48673218 0.84304506 0.68601954 -0.68834358 0.68834341 0.68601954 -0.84304506 0.48673239 0.68601954
		 -0.94029462 0.25195119 0.68601954 -0.97346461 1.6792876e-08 0.68601954 -0.9402948 -0.25195116 0.68601954
		 -0.84304512 -0.48673239 0.68601954 -0.68834358 -0.68834358 0.68601954 -0.48673242 -0.84304512 0.68601954
		 -0.25195119 -0.9402948 0.68601954 1.248445e-08 -0.97346485 0.68601954 0.25195128 -0.94029486 0.68601954
		 0.48673242 -0.84304535 0.68601954 0.68834364 -0.6883437 0.68601954 0.84304535 -0.48673248 0.68601954
		 0.94029498 -0.25195134 0.68601954 0.95322722 -2.2100711e-07 0.73735493 0.92074627 0.24671294 0.73735493
		 0.82551867 0.47661322 0.73735493 0.67403316 0.67403293 0.73735493 0.47661352 0.82551837 0.73735493
		 0.24671334 0.92074609 0.73735493 7.2917572e-08 0.95322657 0.73735493 -0.24671321 0.92074645 0.73735493
		 -0.47661334 0.82551867 0.73735493 -0.67403334 0.67403316 0.73735493 -0.82551867 0.47661352 0.73735493
		 -0.92074651 0.24671328 0.73735493 -0.95322692 1.2534536e-08 0.73735493 -0.92074668 -0.24671327 0.73735493
		 -0.82551873 -0.47661352 0.73735493 -0.67403334 -0.67403334 0.73735493 -0.47661355 -0.82551873 0.73735493
		 -0.24671328 -0.92074668 0.73735493 1.7046956e-08 -0.9532271 0.73735493 0.24671338 -0.92074674 0.73735493
		 0.47661355 -0.82551897 0.73735493 0.6740334 -0.67403346 0.73735493 0.82551897 -0.47661361 0.73735493
		 0.9207468 -0.24671343 0.73735493 0.50857133 -0.29362378 0.73735493 0.56723768 -0.15199091 0.73735493
		 0.58724761 -6.2254952e-07 0.73735493 0.56723732 0.1519901 0.73735493 0.50857085 0.29362357 0.73735493
		 0.41524643 0.41524625 0.73735493 0.29362369 0.50857073 0.73735493 0.15199086 0.56723696 0.73735493
		 -7.8348371e-08 0.58724701 0.73735493 -0.15199086 0.56723708 0.73735493 -0.29362363 0.50857097 0.73735493
		 -0.41524661 0.41524643 0.73735493 -0.50857103 0.29362369 0.73735493 -0.56723738 0.1519908 0.73735493
		 -0.58724725 -6.4473568e-08 0.73735493 -0.56723744 -0.1519908 0.73735493 -0.50857115 -0.29362369 0.73735493
		 -0.41524655 -0.41524658 0.73735493 -0.29362369 -0.50857115 0.73735493 -0.15199077 -0.56723744 0.73735493
		 9.9555635e-08 -0.58724749 0.73735493 0.15199099 -0.5672375 0.73735493 0.29362383 -0.50857127 0.73735493
		 0.41524675 -0.41524684 0.73735493 0.40144816 -0.40144828 0.67110842 0.49167162 -0.2838667 0.67110842
		 0.54838848 -0.14694028 0.67110842 0.56773347 -6.4395988e-07 0.67110842 0.54838812 0.14693946 0.67110842
		 0.49167112 0.28386649 0.67110842 0.40144786 0.40144771 0.67110842 0.28386661 0.491671 0.67110842
		 0.14694022 0.54838777 0.67110842 -8.6413905e-08 0.56773287 0.67110842 -0.14694022 0.54838789 0.67110842
		 -0.28386658 0.4916712 0.67110842 -0.40144801 0.40144786 0.67110842 -0.49167132 0.28386661 0.67110842
		 -0.54838812 0.14694017 0.67110842 -0.56773317 -6.8579652e-08 0.67110842 -0.54838824 -0.14694017 0.67110842
		 -0.49167144 -0.28386661 0.67110842 -0.40144795 -0.40144801 0.67110842 -0.28386661 -0.49167141 0.67110842
		 -0.14694016 -0.54838824 0.67110842 1.0395502e-07 -0.56773329 0.67110842 0.14694038 -0.5483883 0.67110842
		 0.28386676 -0.49167156 0.67110842 0.40144816 -0.40144828 0.045233533 0.49167162 -0.2838667 0.045233533
		 0.54838848 -0.14694028 0.045233533 0.56773347 -6.4395988e-07 0.045233533 0.54838812 0.14693946 0.045233533
		 0.49167112 0.28386649 0.045233533 0.40144783 0.40144771 0.045233533 0.28386661 0.491671 0.045233533
		 0.14694023 0.54838777 0.045233533 -8.6413905e-08 0.56773287 0.045233533 -0.14694023 0.54838789 0.045233533
		 -0.28386658 0.4916712 0.045233533 -0.40144804 0.40144783 0.045233533 -0.49167132 0.28386661 0.045233533
		 -0.54838812 0.14694017 0.045233533 -0.56773317 -6.8579659e-08 0.045233533 -0.54838824 -0.14694017 0.045233533
		 -0.49167144 -0.28386661 0.045233533 -0.40144798 -0.40144801 0.045233533 -0.28386661 -0.49167141 0.045233533
		 -0.14694016 -0.54838824 0.045233533 1.0395502e-07 -0.56773335 0.045233533 0.14694038 -0.5483883 0.045233533
		 0.28386676 -0.49167156 0.045233533 1.053117514 1.053117156 0.48760721 1.14037633 0.94935185 0.48760721
		 1.12221026 0.64790821 0.47209775 1.25166273 0.33538193 0.47209775 1.47766113 0.13507502 0.48760721
		 1.48933339 3.2464811e-07 0.48760721 1.43858552 -0.38546783 0.48760721 1.39235151 -0.51291895 0.48760721
		 1.12221074 -0.64790869 0.47209775 0.91628116 -0.91628128 0.47209775 0.85580862 -1.2121551 0.48760721
		 0.74466658 -1.28980041 0.48760721 0.38546765 -1.43858528 0.48760721 0.25197482 -1.46227121 0.48760721
		 -4.2987857e-08 -1.29581714 0.47209775 -0.33538219 -1.25166321 0.47209775 -0.62185258 -1.34722912 0.48760721
		 -0.7446667 -1.28980005 0.48760721 -1.053117514 -1.053117394 0.48760721 -1.14037645 -0.94935209 0.48760721
		 -1.1222105 -0.64790845 0.47209775 -1.25166321 -0.33538204 0.47209775 -1.47766113 -0.13507435 0.48760721
		 -1.48933315 1.129111e-07 0.48760721 -1.43858504 0.3854678 0.48760721 -1.39235103 0.51291895 0.48760721
		 -1.12221038 0.64790857 0.47209775 -0.91628093 0.91628104 0.47209775 -0.85580808 1.21215487 0.48760721
		 -0.74466628 1.28980017 0.48760721 -0.38546735 1.43858504 0.48760721 -0.25197458 1.46227062 0.48760721
		 1.5010399e-07 1.29581666 0.47209775 0.33538216 1.25166273 0.47209775 0.6218527 1.34722865 0.48760721
		 0.74466646 1.28979981 0.48760721;
	setAttr -s 1008 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 0 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 40 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 24 1 0 461 1 1 460 1 4 491 1 5 490 1 8 485 1
		 9 484 1 12 479 1 13 478 1 16 473 1 17 472 1 20 467 1 21 466 1 1 48 1 2 49 1 48 49 1
		 26 50 1 49 458 1 25 51 1 51 50 1 48 459 1 3 52 1 49 52 1 27 53 1 52 493 1 50 53 1
		 4 54 1 52 54 1 28 55 1 54 492 1 53 55 1 5 56 1 6 57 1 56 57 1 30 58 1 57 488 1 29 59 1
		 59 58 1 56 489 1 7 60 1 57 60 1 31 61 1 60 487 1 58 61 1 8 62 1 60 62 1 32 63 1 62 486 1
		 61 63 1 9 64 1 10 65 1 64 65 1 34 66 1 65 482 1 33 67 1 67 66 1 64 483 1 11 68 1
		 65 68 1 35 69 1 68 481 1 66 69 1 12 70 1 68 70 1 36 71 1 70 480 1 69 71 1 13 72 1
		 14 73 1 72 73 1 38 74 1 73 476 1 37 75 1 75 74 1 72 477 1 15 76 1 73 76 1 39 77 1
		 76 475 1 74 77 1 16 78 1 76 78 1 40 79 1 78 474 1 77 79 1 17 80 1 18 81 1 80 81 1
		 42 82 1 81 470 1 41 83 1 83 82 1 80 471 1 19 84 1 81 84 1 43 85 1 84 469 1 82 85 1
		 20 86 1 84 86 1 44 87 1 86 468 1 85 87 1 21 88 1 22 89 1 88 89 1 46 90 1 89 464 1
		 45 91 1 91 90 1 88 465 1 23 92 1 89 92 1 47 93 1 92 463 1 90 93 1 0 94 1 92 94 1
		 24 95 1;
	setAttr ".ed[166:331]" 94 462 1 93 95 1 0 96 1 1 97 1 96 97 1 2 98 1 97 98 1
		 3 99 1 98 99 1 4 100 1 99 100 1 5 101 1 100 101 1 6 102 1 101 102 1 7 103 1 102 103 1
		 8 104 1 103 104 1 9 105 1 104 105 1 10 106 1 105 106 1 11 107 1 106 107 1 12 108 1
		 107 108 1 13 109 1 108 109 1 14 110 1 109 110 1 15 111 1 110 111 1 16 112 1 111 112 1
		 17 113 1 112 113 1 18 114 1 113 114 1 19 115 1 114 115 1 20 116 1 115 116 1 21 117 1
		 116 117 1 22 118 1 117 118 1 23 119 1 118 119 1 119 96 1 24 120 1 25 121 1 120 121 1
		 26 122 1 121 122 1 27 123 1 122 123 1 28 124 1 123 124 1 29 125 1 124 125 1 30 126 1
		 125 126 1 31 127 1 126 127 1 32 128 1 127 128 1 33 129 1 128 129 1 34 130 1 129 130 1
		 35 131 1 130 131 1 36 132 1 131 132 1 37 133 1 132 133 1 38 134 1 133 134 1 39 135 1
		 134 135 1 40 136 1 135 136 1 41 137 1 136 137 1 42 138 1 137 138 1 43 139 1 138 139 1
		 44 140 1 139 140 1 45 141 1 140 141 1 46 142 1 141 142 1 47 143 1 142 143 1 143 120 1
		 120 144 1 121 145 1 144 145 1 145 146 1 144 146 1 122 147 1 145 147 1 147 146 1 123 148 1
		 147 148 1 148 146 1 124 149 1 148 149 1 149 146 1 125 150 1 149 150 1 150 146 1 126 151 1
		 150 151 1 151 146 1 127 152 1 151 152 1 152 146 1 128 153 1 152 153 1 153 146 1 129 154 1
		 153 154 1 154 146 1 130 155 1 154 155 1 155 146 1 131 156 1 155 156 1 156 146 1 132 157 1
		 156 157 1 157 146 1 133 158 1 157 158 1 158 146 1 134 159 1 158 159 1 159 146 1 135 160 1
		 159 160 1 160 146 1 136 161 1 160 161 1 161 146 1 137 162 1 161 162 1 162 146 1 138 163 1
		 162 163 1 163 146 1 139 164 1 163 164 1 164 146 1 140 165 1 164 165 1 165 146 1 141 166 1
		 165 166 1 166 146 1 142 167 1 166 167 1 167 146 1;
	setAttr ".ed[332:497]" 143 168 1 167 168 1 168 146 1 168 144 1 96 314 1 97 315 1
		 169 170 1 169 363 1 171 172 1 170 364 1 98 316 1 170 173 1 172 174 1 173 365 1 99 317 1
		 173 175 1 174 176 1 175 366 1 100 318 1 175 177 1 176 178 1 177 367 1 101 319 1 177 179 1
		 178 180 1 179 368 1 102 320 1 179 181 1 180 182 1 181 369 1 103 321 1 181 183 1 182 184 1
		 183 370 1 104 322 1 183 185 1 184 186 1 185 371 1 105 323 1 185 187 1 186 188 1 187 372 1
		 106 324 1 187 189 1 188 190 1 189 373 1 107 325 1 189 191 1 190 192 1 191 374 1 108 326 1
		 191 193 1 192 194 1 193 375 1 109 327 1 193 195 1 194 196 1 195 376 1 110 328 1 195 197 1
		 196 198 1 197 377 1 111 329 1 197 199 1 198 200 1 199 378 1 112 330 1 199 201 1 200 202 1
		 201 379 1 113 331 1 201 203 1 202 204 1 203 380 1 114 332 1 203 205 1 204 206 1 205 381 1
		 115 333 1 205 207 1 206 208 1 207 382 1 116 334 1 207 209 1 208 210 1 209 383 1 117 335 1
		 209 211 1 210 212 1 211 384 1 118 336 1 211 213 1 212 214 1 213 385 1 119 337 1 213 215 1
		 214 216 1 215 362 1 215 169 1 216 171 1 217 390 1 218 391 1 217 218 1 219 392 1 218 219 1
		 220 393 1 219 220 1 221 394 1 220 221 1 222 395 1 221 222 1 223 396 1 222 223 1 224 397 1
		 223 224 1 225 398 1 224 225 1 226 399 1 225 226 1 227 400 1 226 227 1 228 401 1 227 228 1
		 229 402 1 228 229 1 230 403 1 229 230 1 231 404 1 230 231 1 232 405 1 231 232 1 233 406 1
		 232 233 1 234 407 1 233 234 1 235 408 1 234 235 1 236 409 1 235 236 1 237 386 1 236 237 1
		 238 387 1 237 238 1 239 388 1 238 239 1 240 389 1 239 240 1 240 217 1 241 242 1 243 241 1
		 243 242 1 242 244 1 243 244 1 244 245 1 243 245 1 245 246 1 243 246 1 246 247 1 243 247 1
		 247 248 1 243 248 1 248 249 1 243 249 1 249 250 1 243 250 1 250 251 1;
	setAttr ".ed[498:663]" 243 251 1 251 252 1 243 252 1 252 253 1 243 253 1 253 254 1
		 243 254 1 254 255 1 243 255 1 255 256 1 243 256 1 256 257 1 243 257 1 257 258 1 243 258 1
		 258 259 1 243 259 1 259 260 1 243 260 1 260 261 1 243 261 1 261 262 1 243 262 1 262 263 1
		 243 263 1 263 264 1 243 264 1 264 265 1 243 265 1 265 241 1 171 414 1 172 415 1 266 267 1
		 266 268 1 268 269 1 267 269 1 174 416 1 267 270 1 269 271 1 270 271 1 176 417 1 270 272 1
		 271 273 1 272 273 1 178 418 1 272 274 1 273 275 1 274 275 1 180 419 1 274 276 1 275 277 1
		 276 277 1 182 420 1 276 278 1 277 279 1 278 279 1 184 421 1 278 280 1 279 281 1 280 281 1
		 186 422 1 280 282 1 281 283 1 282 283 1 188 423 1 282 284 1 283 285 1 284 285 1 190 424 1
		 284 286 1 285 287 1 286 287 1 192 425 1 286 288 1 287 289 1 288 289 1 194 426 1 288 290 1
		 289 291 1 290 291 1 196 427 1 290 292 1 291 293 1 292 293 1 198 428 1 292 294 1 293 295 1
		 294 295 1 200 429 1 294 296 1 295 297 1 296 297 1 202 430 1 296 298 1 297 299 1 298 299 1
		 204 431 1 298 300 1 299 301 1 300 301 1 206 432 1 300 302 1 301 303 1 302 303 1 208 433 1
		 302 304 1 303 305 1 304 305 1 210 410 1 304 306 1 305 307 1 306 307 1 212 411 1 306 308 1
		 307 309 1 308 309 1 214 412 1 308 310 1 309 311 1 310 311 1 216 413 1 310 312 1 311 313 1
		 312 313 1 312 266 1 313 268 1 269 242 1 271 244 1 273 245 1 275 246 1 277 247 1 279 248 1
		 281 249 1 283 250 1 285 251 1 287 252 1 289 253 1 291 254 1 293 255 1 295 256 1 297 257 1
		 299 258 1 301 259 1 303 260 1 305 261 1 307 262 1 309 263 1 311 264 1 313 265 1 268 241 1
		 314 339 1 315 340 1 314 315 1 316 341 1 315 316 1 317 342 1 316 317 1 318 343 1 317 318 1
		 319 344 1 318 319 1 320 345 1 319 320 1 321 346 1 320 321 1 322 347 1;
	setAttr ".ed[664:829]" 321 322 1 323 348 1 322 323 1 324 349 1 323 324 1 325 350 1
		 324 325 1 326 351 1 325 326 1 327 352 1 326 327 1 328 353 1 327 328 1 329 354 1 328 329 1
		 330 355 1 329 330 1 331 356 1 330 331 1 332 357 1 331 332 1 333 358 1 332 333 1 334 359 1
		 333 334 1 335 360 1 334 335 1 336 361 1 335 336 1 337 338 1 336 337 1 337 314 1 338 215 1
		 339 169 1 338 339 1 340 170 1 339 340 1 341 173 1 340 341 1 342 175 1 341 342 1 343 177 1
		 342 343 1 344 179 1 343 344 1 345 181 1 344 345 1 346 183 1 345 346 1 347 185 1 346 347 1
		 348 187 1 347 348 1 349 189 1 348 349 1 350 191 1 349 350 1 351 193 1 350 351 1 352 195 1
		 351 352 1 353 197 1 352 353 1 354 199 1 353 354 1 355 201 1 354 355 1 356 203 1 355 356 1
		 357 205 1 356 357 1 358 207 1 357 358 1 359 209 1 358 359 1 360 211 1 359 360 1 361 213 1
		 360 361 1 361 338 1 362 239 1 363 240 1 362 363 1 364 217 1 363 364 1 365 218 1 364 365 1
		 366 219 1 365 366 1 367 220 1 366 367 1 368 221 1 367 368 1 369 222 1 368 369 1 370 223 1
		 369 370 1 371 224 1 370 371 1 372 225 1 371 372 1 373 226 1 372 373 1 374 227 1 373 374 1
		 375 228 1 374 375 1 376 229 1 375 376 1 377 230 1 376 377 1 378 231 1 377 378 1 379 232 1
		 378 379 1 380 233 1 379 380 1 381 234 1 380 381 1 382 235 1 381 382 1 383 236 1 382 383 1
		 384 237 1 383 384 1 385 238 1 384 385 1 385 362 1 386 212 1 387 214 1 386 387 1 388 216 1
		 387 388 1 389 171 1 388 389 1 390 172 1 389 390 1 391 174 1 390 391 1 392 176 1 391 392 1
		 393 178 1 392 393 1 394 180 1 393 394 1 395 182 1 394 395 1 396 184 1 395 396 1 397 186 1
		 396 397 1 398 188 1 397 398 1 399 190 1 398 399 1 400 192 1 399 400 1 401 194 1 400 401 1
		 402 196 1 401 402 1 403 198 1 402 403 1 404 200 1 403 404 1 405 202 1;
	setAttr ".ed[830:995]" 404 405 1 406 204 1 405 406 1 407 206 1 406 407 1 408 208 1
		 407 408 1 409 210 1 408 409 1 409 386 1 410 434 1 411 435 1 410 411 1 412 436 1 411 412 1
		 413 437 1 412 413 1 414 438 1 413 414 1 415 439 1 414 415 1 416 440 1 415 416 1 417 441 1
		 416 417 1 418 442 1 417 418 1 419 443 1 418 419 1 420 444 1 419 420 1 421 445 1 420 421 1
		 422 446 1 421 422 1 423 447 1 422 423 1 424 448 1 423 424 1 425 449 1 424 425 1 426 450 1
		 425 426 1 427 451 1 426 427 1 428 452 1 427 428 1 429 453 1 428 429 1 430 454 1 429 430 1
		 431 455 1 430 431 1 432 456 1 431 432 1 433 457 1 432 433 1 433 410 1 434 306 1 435 308 1
		 434 435 1 436 310 1 435 436 1 437 312 1 436 437 1 438 266 1 437 438 1 439 267 1 438 439 1
		 440 270 1 439 440 1 441 272 1 440 441 1 442 274 1 441 442 1 443 276 1 442 443 1 444 278 1
		 443 444 1 445 280 1 444 445 1 446 282 1 445 446 1 447 284 1 446 447 1 448 286 1 447 448 1
		 449 288 1 448 449 1 450 290 1 449 450 1 451 292 1 450 451 1 452 294 1 451 452 1 453 296 1
		 452 453 1 454 298 1 453 454 1 455 300 1 454 455 1 456 302 1 455 456 1 457 304 1 456 457 1
		 457 434 1 458 50 1 459 51 1 458 459 1 460 25 1 459 460 1 461 24 1 460 461 1 462 95 1
		 461 462 1 463 93 1 462 463 1 464 90 1 463 464 1 465 91 1 464 465 1 466 45 1 465 466 1
		 467 44 1 466 467 1 468 87 1 467 468 1 469 85 1 468 469 1 470 82 1 469 470 1 471 83 1
		 470 471 1 472 41 1 471 472 1 473 40 1 472 473 1 474 79 1 473 474 1 475 77 1 474 475 1
		 476 74 1 475 476 1 477 75 1 476 477 1 478 37 1 477 478 1 479 36 1 478 479 1 480 71 1
		 479 480 1 481 69 1 480 481 1 482 66 1 481 482 1 483 67 1 482 483 1 484 33 1 483 484 1
		 485 32 1 484 485 1 486 63 1 485 486 1 487 61 1 486 487 1 488 58 1;
	setAttr ".ed[996:1007]" 487 488 1 489 59 1 488 489 1 490 29 1 489 490 1 491 28 1
		 490 491 1 492 55 1 491 492 1 493 53 1 492 493 1 493 458 1;
	setAttr -s 516 -ch 2016 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 49 942 -49
		mu 0 4 24 25 510 512
		f 4 62 64 938 -68
		mu 0 4 100 101 508 509
		f 4 69 71 1007 -65
		mu 0 4 101 104 544 508
		f 4 74 76 1006 -72
		mu 0 4 104 106 543 544
		f 4 4 51 1002 -51
		mu 0 4 28 29 541 542
		f 4 80 82 998 -86
		mu 0 4 108 109 539 540
		f 4 87 89 996 -83
		mu 0 4 109 112 538 539
		f 4 92 94 994 -90
		mu 0 4 112 114 537 538
		f 4 8 53 990 -53
		mu 0 4 32 33 535 536
		f 4 98 100 986 -104
		mu 0 4 116 117 533 534
		f 4 105 107 984 -101
		mu 0 4 117 120 532 533
		f 4 110 112 982 -108
		mu 0 4 120 122 531 532
		f 4 12 55 978 -55
		mu 0 4 36 37 529 530
		f 4 116 118 974 -122
		mu 0 4 124 125 527 528
		f 4 123 125 972 -119
		mu 0 4 125 128 526 527
		f 4 128 130 970 -126
		mu 0 4 128 130 525 526
		f 4 16 57 966 -57
		mu 0 4 40 41 523 524
		f 4 134 136 962 -140
		mu 0 4 132 133 521 522
		f 4 141 143 960 -137
		mu 0 4 133 136 520 521
		f 4 146 148 958 -144
		mu 0 4 136 138 519 520
		f 4 20 59 954 -59
		mu 0 4 44 45 517 518
		f 4 152 154 950 -158
		mu 0 4 140 141 515 516
		f 4 159 161 948 -155
		mu 0 4 141 144 514 515
		f 4 164 166 946 -162
		mu 0 4 144 146 513 514
		f 3 -481 -482 482
		mu 0 3 196 197 98
		f 3 -484 -483 484
		mu 0 3 198 196 98
		f 3 -486 -485 486
		mu 0 3 199 198 98
		f 3 -488 -487 488
		mu 0 3 200 199 98
		f 3 -490 -489 490
		mu 0 3 201 200 98
		f 3 -492 -491 492
		mu 0 3 202 201 98
		f 3 -494 -493 494
		mu 0 3 203 202 98
		f 3 -496 -495 496
		mu 0 3 204 203 98
		f 3 -498 -497 498
		mu 0 3 205 204 98
		f 3 -500 -499 500
		mu 0 3 206 205 98
		f 3 -502 -501 502
		mu 0 3 207 206 98
		f 3 -504 -503 504
		mu 0 3 208 207 98
		f 3 -506 -505 506
		mu 0 3 209 208 98
		f 3 -508 -507 508
		mu 0 3 210 209 98
		f 3 -510 -509 510
		mu 0 3 211 210 98
		f 3 -512 -511 512
		mu 0 3 212 211 98
		f 3 -514 -513 514
		mu 0 3 213 212 98
		f 3 -516 -515 516
		mu 0 3 214 213 98
		f 3 -518 -517 518
		mu 0 3 215 214 98
		f 3 -520 -519 520
		mu 0 3 216 215 98
		f 3 -522 -521 522
		mu 0 3 217 216 98
		f 3 -524 -523 524
		mu 0 3 218 217 98
		f 3 -526 -525 526
		mu 0 3 219 218 98
		f 3 -528 -527 481
		mu 0 3 197 219 98
		f 3 266 267 -269
		mu 0 3 220 221 99
		f 3 270 271 -268
		mu 0 3 221 222 99
		f 3 273 274 -272
		mu 0 3 222 223 99
		f 3 276 277 -275
		mu 0 3 223 224 99
		f 3 279 280 -278
		mu 0 3 224 225 99
		f 3 282 283 -281
		mu 0 3 225 226 99
		f 3 285 286 -284
		mu 0 3 226 227 99
		f 3 288 289 -287
		mu 0 3 227 228 99
		f 3 291 292 -290
		mu 0 3 228 229 99
		f 3 294 295 -293
		mu 0 3 229 230 99
		f 3 297 298 -296
		mu 0 3 230 231 99
		f 3 300 301 -299
		mu 0 3 231 232 99
		f 3 303 304 -302
		mu 0 3 232 233 99
		f 3 306 307 -305
		mu 0 3 233 234 99
		f 3 309 310 -308
		mu 0 3 234 235 99
		f 3 312 313 -311
		mu 0 3 235 236 99
		f 3 315 316 -314
		mu 0 3 236 237 99
		f 3 318 319 -317
		mu 0 3 237 238 99
		f 3 321 322 -320
		mu 0 3 238 239 99
		f 3 324 325 -323
		mu 0 3 239 240 99
		f 3 327 328 -326
		mu 0 3 240 241 99
		f 3 330 331 -329
		mu 0 3 241 242 99
		f 3 333 334 -332
		mu 0 3 242 243 99
		f 3 335 268 -335
		mu 0 3 243 220 99
		f 4 1 61 -63 -61
		mu 0 4 25 26 101 100
		f 4 -26 65 66 -64
		mu 0 4 51 50 103 102
		f 4 -50 60 67 940
		mu 0 4 510 25 100 509
		f 4 2 68 -70 -62
		mu 0 4 26 27 104 101
		f 4 -27 63 72 -71
		mu 0 4 52 51 102 105
		f 4 3 73 -75 -69
		mu 0 4 27 28 106 104
		f 4 50 1004 -77 -74
		mu 0 4 28 542 543 106
		f 4 -28 70 77 -76
		mu 0 4 53 52 105 107
		f 4 5 79 -81 -79
		mu 0 4 29 30 109 108
		f 4 -30 83 84 -82
		mu 0 4 55 54 111 110
		f 4 -52 78 85 1000
		mu 0 4 541 29 108 540
		f 4 6 86 -88 -80
		mu 0 4 30 31 112 109
		f 4 -31 81 90 -89
		mu 0 4 56 55 110 113
		f 4 7 91 -93 -87
		mu 0 4 31 32 114 112
		f 4 52 992 -95 -92
		mu 0 4 32 536 537 114
		f 4 -32 88 95 -94
		mu 0 4 57 56 113 115
		f 4 9 97 -99 -97
		mu 0 4 33 34 117 116
		f 4 -34 101 102 -100
		mu 0 4 59 58 119 118
		f 4 -54 96 103 988
		mu 0 4 535 33 116 534
		f 4 10 104 -106 -98
		mu 0 4 34 35 120 117
		f 4 -35 99 108 -107
		mu 0 4 60 59 118 121
		f 4 11 109 -111 -105
		mu 0 4 35 36 122 120
		f 4 54 980 -113 -110
		mu 0 4 36 530 531 122
		f 4 -36 106 113 -112
		mu 0 4 61 60 121 123
		f 4 13 115 -117 -115
		mu 0 4 37 38 125 124
		f 4 -38 119 120 -118
		mu 0 4 63 62 127 126
		f 4 -56 114 121 976
		mu 0 4 529 37 124 528
		f 4 14 122 -124 -116
		mu 0 4 38 39 128 125
		f 4 -39 117 126 -125
		mu 0 4 64 63 126 129
		f 4 15 127 -129 -123
		mu 0 4 39 40 130 128
		f 4 56 968 -131 -128
		mu 0 4 40 524 525 130
		f 4 -40 124 131 -130
		mu 0 4 65 64 129 131
		f 4 17 133 -135 -133
		mu 0 4 41 42 133 132
		f 4 -42 137 138 -136
		mu 0 4 67 66 135 134
		f 4 -58 132 139 964
		mu 0 4 523 41 132 522
		f 4 18 140 -142 -134
		mu 0 4 42 43 136 133
		f 4 -43 135 144 -143
		mu 0 4 68 67 134 137
		f 4 19 145 -147 -141
		mu 0 4 43 44 138 136
		f 4 58 956 -149 -146
		mu 0 4 44 518 519 138
		f 4 -44 142 149 -148
		mu 0 4 69 68 137 139
		f 4 21 151 -153 -151
		mu 0 4 45 46 141 140
		f 4 -46 155 156 -154
		mu 0 4 71 70 143 142
		f 4 -60 150 157 952
		mu 0 4 517 45 140 516
		f 4 22 158 -160 -152
		mu 0 4 46 47 144 141
		f 4 -47 153 162 -161
		mu 0 4 72 71 142 145
		f 4 23 163 -165 -159
		mu 0 4 47 48 146 144
		f 4 48 944 -167 -164
		mu 0 4 48 511 513 146
		f 4 -48 160 167 -166
		mu 0 4 73 72 145 147
		f 4 -1 168 170 -170
		mu 0 4 1 0 149 148
		f 4 -2 169 172 -172
		mu 0 4 2 1 148 150
		f 4 -3 171 174 -174
		mu 0 4 3 2 150 151
		f 4 -4 173 176 -176
		mu 0 4 4 3 151 152
		f 4 -5 175 178 -178
		mu 0 4 5 4 152 153
		f 4 -6 177 180 -180
		mu 0 4 6 5 153 154
		f 4 -7 179 182 -182
		mu 0 4 7 6 154 155
		f 4 -8 181 184 -184
		mu 0 4 8 7 155 156
		f 4 -9 183 186 -186
		mu 0 4 9 8 156 157
		f 4 -10 185 188 -188
		mu 0 4 10 9 157 158
		f 4 -11 187 190 -190
		mu 0 4 11 10 158 159
		f 4 -12 189 192 -192
		mu 0 4 12 11 159 160
		f 4 -13 191 194 -194
		mu 0 4 13 12 160 161
		f 4 -14 193 196 -196
		mu 0 4 14 13 161 162
		f 4 -15 195 198 -198
		mu 0 4 15 14 162 163
		f 4 -16 197 200 -200
		mu 0 4 16 15 163 164
		f 4 -17 199 202 -202
		mu 0 4 17 16 164 165
		f 4 -18 201 204 -204
		mu 0 4 18 17 165 166
		f 4 -19 203 206 -206
		mu 0 4 19 18 166 167
		f 4 -20 205 208 -208
		mu 0 4 20 19 167 168
		f 4 -21 207 210 -210
		mu 0 4 21 20 168 169
		f 4 -22 209 212 -212
		mu 0 4 22 21 169 170
		f 4 -23 211 214 -214
		mu 0 4 23 22 170 171
		f 4 -24 213 215 -169
		mu 0 4 0 23 171 149
		f 4 24 217 -219 -217
		mu 0 4 96 95 173 172
		f 4 25 219 -221 -218
		mu 0 4 95 94 174 173
		f 4 26 221 -223 -220
		mu 0 4 94 93 175 174
		f 4 27 223 -225 -222
		mu 0 4 93 92 176 175
		f 4 28 225 -227 -224
		mu 0 4 92 91 177 176
		f 4 29 227 -229 -226
		mu 0 4 91 90 178 177
		f 4 30 229 -231 -228
		mu 0 4 90 89 179 178
		f 4 31 231 -233 -230
		mu 0 4 89 88 180 179
		f 4 32 233 -235 -232
		mu 0 4 88 87 181 180
		f 4 33 235 -237 -234
		mu 0 4 87 86 182 181
		f 4 34 237 -239 -236
		mu 0 4 86 85 183 182
		f 4 35 239 -241 -238
		mu 0 4 85 84 184 183
		f 4 36 241 -243 -240
		mu 0 4 84 83 185 184
		f 4 37 243 -245 -242
		mu 0 4 83 82 186 185
		f 4 38 245 -247 -244
		mu 0 4 82 81 187 186
		f 4 39 247 -249 -246
		mu 0 4 81 80 188 187
		f 4 40 249 -251 -248
		mu 0 4 80 79 189 188
		f 4 41 251 -253 -250
		mu 0 4 79 78 190 189
		f 4 42 253 -255 -252
		mu 0 4 78 77 191 190
		f 4 43 255 -257 -254
		mu 0 4 77 76 192 191
		f 4 44 257 -259 -256
		mu 0 4 76 75 193 192
		f 4 45 259 -261 -258
		mu 0 4 75 74 194 193
		f 4 46 261 -263 -260
		mu 0 4 74 97 195 194
		f 4 47 216 -264 -262
		mu 0 4 97 96 172 195
		f 4 -339 339 748 -342
		mu 0 4 268 269 413 414
		f 4 -344 341 750 -346
		mu 0 4 270 268 414 415
		f 4 -348 345 752 -350
		mu 0 4 271 270 415 416
		f 4 -352 349 754 -354
		mu 0 4 272 271 416 417
		f 4 -356 353 756 -358
		mu 0 4 273 272 417 418
		f 4 -360 357 758 -362
		mu 0 4 274 273 418 419
		f 4 -364 361 760 -366
		mu 0 4 275 274 419 420
		f 4 -368 365 762 -370
		mu 0 4 276 275 420 421
		f 4 -372 369 764 -374
		mu 0 4 277 276 421 422
		f 4 -376 373 766 -378
		mu 0 4 278 277 422 423
		f 4 -380 377 768 -382
		mu 0 4 279 278 423 424
		f 4 -384 381 770 -386
		mu 0 4 280 279 424 425
		f 4 -388 385 772 -390
		mu 0 4 281 280 425 426
		f 4 -392 389 774 -394
		mu 0 4 282 281 426 427
		f 4 -396 393 776 -398
		mu 0 4 283 282 427 428
		f 4 -400 397 778 -402
		mu 0 4 284 283 428 429
		f 4 -404 401 780 -406
		mu 0 4 285 284 429 430
		f 4 -408 405 782 -410
		mu 0 4 286 285 430 431
		f 4 -412 409 784 -414
		mu 0 4 287 286 431 432
		f 4 -416 413 786 -418
		mu 0 4 288 287 432 433
		f 4 -420 417 788 -422
		mu 0 4 289 288 433 434
		f 4 -424 421 790 -426
		mu 0 4 290 289 434 435
		f 4 -428 425 791 -430
		mu 0 4 291 290 435 412
		f 4 -431 429 746 -340
		mu 0 4 269 291 412 413
		f 4 218 265 -267 -265
		mu 0 4 172 173 221 220
		f 4 220 269 -271 -266
		mu 0 4 173 174 222 221
		f 4 222 272 -274 -270
		mu 0 4 174 175 223 222
		f 4 224 275 -277 -273
		mu 0 4 175 176 224 223
		f 4 226 278 -280 -276
		mu 0 4 176 177 225 224
		f 4 228 281 -283 -279
		mu 0 4 177 178 226 225
		f 4 230 284 -286 -282
		mu 0 4 178 179 227 226
		f 4 232 287 -289 -285
		mu 0 4 179 180 228 227
		f 4 234 290 -292 -288
		mu 0 4 180 181 229 228
		f 4 236 293 -295 -291
		mu 0 4 181 182 230 229
		f 4 238 296 -298 -294
		mu 0 4 182 183 231 230
		f 4 240 299 -301 -297
		mu 0 4 183 184 232 231
		f 4 242 302 -304 -300
		mu 0 4 184 185 233 232
		f 4 244 305 -307 -303
		mu 0 4 185 186 234 233
		f 4 246 308 -310 -306
		mu 0 4 186 187 235 234
		f 4 248 311 -313 -309
		mu 0 4 187 188 236 235
		f 4 250 314 -316 -312
		mu 0 4 188 189 237 236
		f 4 252 317 -319 -315
		mu 0 4 189 190 238 237
		f 4 254 320 -322 -318
		mu 0 4 190 191 239 238
		f 4 256 323 -325 -321
		mu 0 4 191 192 240 239
		f 4 258 326 -328 -324
		mu 0 4 192 193 241 240
		f 4 260 329 -331 -327
		mu 0 4 193 194 242 241
		f 4 262 332 -334 -330
		mu 0 4 194 195 243 242
		f 4 263 264 -336 -333
		mu 0 4 195 172 220 243
		f 4 -531 531 532 -534
		mu 0 4 340 341 339 316
		f 4 -536 533 536 -538
		mu 0 4 342 340 316 317
		f 4 -540 537 540 -542
		mu 0 4 343 342 317 318
		f 4 -544 541 544 -546
		mu 0 4 344 343 318 319
		f 4 -548 545 548 -550
		mu 0 4 345 344 319 320
		f 4 -552 549 552 -554
		mu 0 4 346 345 320 321
		f 4 -556 553 556 -558
		mu 0 4 347 346 321 322
		f 4 -560 557 560 -562
		mu 0 4 348 347 322 323
		f 4 -564 561 564 -566
		mu 0 4 349 348 323 324
		f 4 -568 565 568 -570
		mu 0 4 350 349 324 325
		f 4 -572 569 572 -574
		mu 0 4 351 350 325 326
		f 4 -576 573 576 -578
		mu 0 4 352 351 326 327
		f 4 -580 577 580 -582
		mu 0 4 353 352 327 328
		f 4 -584 581 584 -586
		mu 0 4 354 353 328 329
		f 4 -588 585 588 -590
		mu 0 4 355 354 329 330
		f 4 -592 589 592 -594
		mu 0 4 356 355 330 331
		f 4 -596 593 596 -598
		mu 0 4 357 356 331 332
		f 4 -600 597 600 -602
		mu 0 4 358 357 332 333
		f 4 -604 601 604 -606
		mu 0 4 359 358 333 334
		f 4 -608 605 608 -610
		mu 0 4 360 359 334 335
		f 4 -612 609 612 -614
		mu 0 4 361 360 335 336
		f 4 -616 613 616 -618
		mu 0 4 362 361 336 337
		f 4 -620 617 620 -622
		mu 0 4 363 362 337 338
		f 4 -623 621 623 -532
		mu 0 4 341 363 338 339
		f 4 -171 336 650 -338
		mu 0 4 148 149 364 365
		f 4 -173 337 652 -343
		mu 0 4 150 148 365 366
		f 4 -175 342 654 -347
		mu 0 4 151 150 366 367
		f 4 -177 346 656 -351
		mu 0 4 152 151 367 368
		f 4 -179 350 658 -355
		mu 0 4 153 152 368 369
		f 4 -181 354 660 -359
		mu 0 4 154 153 369 370
		f 4 -183 358 662 -363
		mu 0 4 155 154 370 371
		f 4 -185 362 664 -367
		mu 0 4 156 155 371 372
		f 4 -187 366 666 -371
		mu 0 4 157 156 372 373
		f 4 -189 370 668 -375
		mu 0 4 158 157 373 374
		f 4 -191 374 670 -379
		mu 0 4 159 158 374 375
		f 4 -193 378 672 -383
		mu 0 4 160 159 375 376
		f 4 -195 382 674 -387
		mu 0 4 161 160 376 377
		f 4 -197 386 676 -391
		mu 0 4 162 161 377 378
		f 4 -199 390 678 -395
		mu 0 4 163 162 378 379
		f 4 -201 394 680 -399
		mu 0 4 164 163 379 380
		f 4 -203 398 682 -403
		mu 0 4 165 164 380 381
		f 4 -205 402 684 -407
		mu 0 4 166 165 381 382
		f 4 -207 406 686 -411
		mu 0 4 167 166 382 383
		f 4 -209 410 688 -415
		mu 0 4 168 167 383 384
		f 4 -211 414 690 -419
		mu 0 4 169 168 384 385
		f 4 -213 418 692 -423
		mu 0 4 170 169 385 386
		f 4 -215 422 694 -427
		mu 0 4 171 170 386 387
		f 4 -216 426 695 -337
		mu 0 4 149 171 387 364
		f 4 -435 432 802 -434
		mu 0 4 293 292 440 441
		f 4 -437 433 804 -436
		mu 0 4 294 293 441 442
		f 4 -439 435 806 -438
		mu 0 4 295 294 442 443
		f 4 -441 437 808 -440
		mu 0 4 296 295 443 444
		f 4 -443 439 810 -442
		mu 0 4 297 296 444 445
		f 4 -445 441 812 -444
		mu 0 4 298 297 445 446
		f 4 -447 443 814 -446
		mu 0 4 299 298 446 447
		f 4 -449 445 816 -448
		mu 0 4 300 299 447 448
		f 4 -451 447 818 -450
		mu 0 4 301 300 448 449
		f 4 -453 449 820 -452
		mu 0 4 302 301 449 450
		f 4 -455 451 822 -454
		mu 0 4 303 302 450 451
		f 4 -457 453 824 -456
		mu 0 4 304 303 451 452
		f 4 -459 455 826 -458
		mu 0 4 305 304 452 453
		f 4 -461 457 828 -460
		mu 0 4 306 305 453 454
		f 4 -463 459 830 -462
		mu 0 4 307 306 454 455
		f 4 -465 461 832 -464
		mu 0 4 308 307 455 456
		f 4 -467 463 834 -466
		mu 0 4 309 308 456 457
		f 4 -469 465 836 -468
		mu 0 4 310 309 457 458
		f 4 -471 467 838 -470
		mu 0 4 311 310 458 459
		f 4 -473 469 839 -472
		mu 0 4 312 311 459 436
		f 4 -475 471 794 -474
		mu 0 4 313 312 436 437
		f 4 -477 473 796 -476
		mu 0 4 314 313 437 438
		f 4 -479 475 798 -478
		mu 0 4 315 314 438 439
		f 4 -480 477 800 -433
		mu 0 4 292 315 439 440
		f 4 -537 624 483 -626
		mu 0 4 317 316 196 198
		f 4 -541 625 485 -627
		mu 0 4 318 317 198 199
		f 4 -545 626 487 -628
		mu 0 4 319 318 199 200
		f 4 -549 627 489 -629
		mu 0 4 320 319 200 201
		f 4 -553 628 491 -630
		mu 0 4 321 320 201 202
		f 4 -557 629 493 -631
		mu 0 4 322 321 202 203
		f 4 -561 630 495 -632
		mu 0 4 323 322 203 204
		f 4 -565 631 497 -633
		mu 0 4 324 323 204 205
		f 4 -569 632 499 -634
		mu 0 4 325 324 205 206
		f 4 -573 633 501 -635
		mu 0 4 326 325 206 207
		f 4 -577 634 503 -636
		mu 0 4 327 326 207 208
		f 4 -581 635 505 -637
		mu 0 4 328 327 208 209
		f 4 -585 636 507 -638
		mu 0 4 329 328 209 210
		f 4 -589 637 509 -639
		mu 0 4 330 329 210 211
		f 4 -593 638 511 -640
		mu 0 4 331 330 211 212
		f 4 -597 639 513 -641
		mu 0 4 332 331 212 213
		f 4 -601 640 515 -642
		mu 0 4 333 332 213 214
		f 4 -605 641 517 -643
		mu 0 4 334 333 214 215
		f 4 -609 642 519 -644
		mu 0 4 335 334 215 216
		f 4 -613 643 521 -645
		mu 0 4 336 335 216 217
		f 4 -617 644 523 -646
		mu 0 4 337 336 217 218
		f 4 -621 645 525 -647
		mu 0 4 338 337 218 219
		f 4 -624 646 527 -648
		mu 0 4 339 338 219 197
		f 4 -533 647 480 -625
		mu 0 4 316 339 197 196
		f 4 -341 528 850 -530
		mu 0 4 245 244 464 465
		f 4 -345 529 852 -535
		mu 0 4 246 245 465 466
		f 4 -349 534 854 -539
		mu 0 4 247 246 466 467
		f 4 -353 538 856 -543
		mu 0 4 248 247 467 468
		f 4 -357 542 858 -547
		mu 0 4 249 248 468 469
		f 4 -361 546 860 -551
		mu 0 4 250 249 469 470
		f 4 -365 550 862 -555
		mu 0 4 251 250 470 471
		f 4 -369 554 864 -559
		mu 0 4 252 251 471 472
		f 4 -373 558 866 -563
		mu 0 4 253 252 472 473
		f 4 -377 562 868 -567
		mu 0 4 254 253 473 474
		f 4 -381 566 870 -571
		mu 0 4 255 254 474 475
		f 4 -385 570 872 -575
		mu 0 4 256 255 475 476
		f 4 -389 574 874 -579
		mu 0 4 257 256 476 477
		f 4 -393 578 876 -583
		mu 0 4 258 257 477 478
		f 4 -397 582 878 -587
		mu 0 4 259 258 478 479
		f 4 -401 586 880 -591
		mu 0 4 260 259 479 480
		f 4 -405 590 882 -595
		mu 0 4 261 260 480 481
		f 4 -409 594 884 -599
		mu 0 4 262 261 481 482
		f 4 -413 598 886 -603
		mu 0 4 263 262 482 483
		f 4 -417 602 887 -607
		mu 0 4 264 263 483 460
		f 4 -421 606 842 -611
		mu 0 4 265 264 460 461
		f 4 -425 610 844 -615
		mu 0 4 266 265 461 462
		f 4 -429 614 846 -619
		mu 0 4 267 266 462 463
		f 4 -432 618 848 -529
		mu 0 4 244 267 463 464
		f 4 -651 648 700 -650
		mu 0 4 365 364 389 390
		f 4 -653 649 702 -652
		mu 0 4 366 365 390 391
		f 4 -655 651 704 -654
		mu 0 4 367 366 391 392
		f 4 -657 653 706 -656
		mu 0 4 368 367 392 393
		f 4 -659 655 708 -658
		mu 0 4 369 368 393 394
		f 4 -661 657 710 -660
		mu 0 4 370 369 394 395
		f 4 -663 659 712 -662
		mu 0 4 371 370 395 396
		f 4 -665 661 714 -664
		mu 0 4 372 371 396 397
		f 4 -667 663 716 -666
		mu 0 4 373 372 397 398
		f 4 -669 665 718 -668
		mu 0 4 374 373 398 399
		f 4 -671 667 720 -670
		mu 0 4 375 374 399 400
		f 4 -673 669 722 -672
		mu 0 4 376 375 400 401
		f 4 -675 671 724 -674
		mu 0 4 377 376 401 402
		f 4 -677 673 726 -676
		mu 0 4 378 377 402 403
		f 4 -679 675 728 -678
		mu 0 4 379 378 403 404
		f 4 -681 677 730 -680
		mu 0 4 380 379 404 405
		f 4 -683 679 732 -682
		mu 0 4 381 380 405 406
		f 4 -685 681 734 -684
		mu 0 4 382 381 406 407
		f 4 -687 683 736 -686
		mu 0 4 383 382 407 408
		f 4 -689 685 738 -688
		mu 0 4 384 383 408 409
		f 4 -691 687 740 -690
		mu 0 4 385 384 409 410
		f 4 -693 689 742 -692
		mu 0 4 386 385 410 411
		f 4 -695 691 743 -694
		mu 0 4 387 386 411 388
		f 4 -696 693 698 -649
		mu 0 4 364 387 388 389
		f 4 -699 696 430 -698
		mu 0 4 389 388 291 269
		f 4 -701 697 338 -700
		mu 0 4 390 389 269 268
		f 4 -703 699 343 -702
		mu 0 4 391 390 268 270
		f 4 -705 701 347 -704
		mu 0 4 392 391 270 271
		f 4 -707 703 351 -706
		mu 0 4 393 392 271 272
		f 4 -709 705 355 -708
		mu 0 4 394 393 272 273
		f 4 -711 707 359 -710
		mu 0 4 395 394 273 274
		f 4 -713 709 363 -712
		mu 0 4 396 395 274 275
		f 4 -715 711 367 -714
		mu 0 4 397 396 275 276
		f 4 -717 713 371 -716
		mu 0 4 398 397 276 277
		f 4 -719 715 375 -718
		mu 0 4 399 398 277 278
		f 4 -721 717 379 -720
		mu 0 4 400 399 278 279
		f 4 -723 719 383 -722
		mu 0 4 401 400 279 280
		f 4 -725 721 387 -724
		mu 0 4 402 401 280 281
		f 4 -727 723 391 -726
		mu 0 4 403 402 281 282
		f 4 -729 725 395 -728
		mu 0 4 404 403 282 283
		f 4 -731 727 399 -730
		mu 0 4 405 404 283 284
		f 4 -733 729 403 -732
		mu 0 4 406 405 284 285
		f 4 -735 731 407 -734
		mu 0 4 407 406 285 286
		f 4 -737 733 411 -736
		mu 0 4 408 407 286 287
		f 4 -739 735 415 -738
		mu 0 4 409 408 287 288
		f 4 -741 737 419 -740
		mu 0 4 410 409 288 289
		f 4 -743 739 423 -742
		mu 0 4 411 410 289 290
		f 4 -744 741 427 -697
		mu 0 4 388 411 290 291
		f 4 -747 744 478 -746
		mu 0 4 413 412 314 315
		f 4 -749 745 479 -748
		mu 0 4 414 413 315 292
		f 4 -751 747 434 -750
		mu 0 4 415 414 292 293
		f 4 -753 749 436 -752
		mu 0 4 416 415 293 294
		f 4 -755 751 438 -754
		mu 0 4 417 416 294 295
		f 4 -757 753 440 -756
		mu 0 4 418 417 295 296
		f 4 -759 755 442 -758
		mu 0 4 419 418 296 297
		f 4 -761 757 444 -760
		mu 0 4 420 419 297 298
		f 4 -763 759 446 -762
		mu 0 4 421 420 298 299
		f 4 -765 761 448 -764
		mu 0 4 422 421 299 300
		f 4 -767 763 450 -766
		mu 0 4 423 422 300 301
		f 4 -769 765 452 -768
		mu 0 4 424 423 301 302
		f 4 -771 767 454 -770
		mu 0 4 425 424 302 303
		f 4 -773 769 456 -772
		mu 0 4 426 425 303 304
		f 4 -775 771 458 -774
		mu 0 4 427 426 304 305
		f 4 -777 773 460 -776
		mu 0 4 428 427 305 306
		f 4 -779 775 462 -778
		mu 0 4 429 428 306 307
		f 4 -781 777 464 -780
		mu 0 4 430 429 307 308
		f 4 -783 779 466 -782
		mu 0 4 431 430 308 309
		f 4 -785 781 468 -784
		mu 0 4 432 431 309 310
		f 4 -787 783 470 -786
		mu 0 4 433 432 310 311
		f 4 -789 785 472 -788
		mu 0 4 434 433 311 312
		f 4 -791 787 474 -790
		mu 0 4 435 434 312 313
		f 4 -792 789 476 -745
		mu 0 4 412 435 313 314
		f 4 -795 792 424 -794
		mu 0 4 437 436 265 266
		f 4 -797 793 428 -796
		mu 0 4 438 437 266 267
		f 4 -799 795 431 -798
		mu 0 4 439 438 267 244
		f 4 -801 797 340 -800
		mu 0 4 440 439 244 245
		f 4 -803 799 344 -802
		mu 0 4 441 440 245 246
		f 4 -805 801 348 -804
		mu 0 4 442 441 246 247
		f 4 -807 803 352 -806
		mu 0 4 443 442 247 248
		f 4 -809 805 356 -808
		mu 0 4 444 443 248 249
		f 4 -811 807 360 -810
		mu 0 4 445 444 249 250
		f 4 -813 809 364 -812
		mu 0 4 446 445 250 251
		f 4 -815 811 368 -814
		mu 0 4 447 446 251 252
		f 4 -817 813 372 -816
		mu 0 4 448 447 252 253
		f 4 -819 815 376 -818
		mu 0 4 449 448 253 254
		f 4 -821 817 380 -820
		mu 0 4 450 449 254 255
		f 4 -823 819 384 -822
		mu 0 4 451 450 255 256
		f 4 -825 821 388 -824
		mu 0 4 452 451 256 257
		f 4 -827 823 392 -826
		mu 0 4 453 452 257 258
		f 4 -829 825 396 -828
		mu 0 4 454 453 258 259
		f 4 -831 827 400 -830
		mu 0 4 455 454 259 260
		f 4 -833 829 404 -832
		mu 0 4 456 455 260 261
		f 4 -835 831 408 -834
		mu 0 4 457 456 261 262
		f 4 -837 833 412 -836
		mu 0 4 458 457 262 263
		f 4 -839 835 416 -838
		mu 0 4 459 458 263 264
		f 4 -840 837 420 -793
		mu 0 4 436 459 264 265
		f 4 -843 840 890 -842
		mu 0 4 461 460 484 485
		f 4 -845 841 892 -844
		mu 0 4 462 461 485 486
		f 4 -847 843 894 -846
		mu 0 4 463 462 486 487
		f 4 -849 845 896 -848
		mu 0 4 464 463 487 488
		f 4 -851 847 898 -850
		mu 0 4 465 464 488 489
		f 4 -853 849 900 -852
		mu 0 4 466 465 489 490
		f 4 -855 851 902 -854
		mu 0 4 467 466 490 491
		f 4 -857 853 904 -856
		mu 0 4 468 467 491 492
		f 4 -859 855 906 -858
		mu 0 4 469 468 492 493
		f 4 -861 857 908 -860
		mu 0 4 470 469 493 494
		f 4 -863 859 910 -862
		mu 0 4 471 470 494 495
		f 4 -865 861 912 -864
		mu 0 4 472 471 495 496
		f 4 -867 863 914 -866
		mu 0 4 473 472 496 497
		f 4 -869 865 916 -868
		mu 0 4 474 473 497 498
		f 4 -871 867 918 -870
		mu 0 4 475 474 498 499
		f 4 -873 869 920 -872
		mu 0 4 476 475 499 500
		f 4 -875 871 922 -874
		mu 0 4 477 476 500 501
		f 4 -877 873 924 -876
		mu 0 4 478 477 501 502
		f 4 -879 875 926 -878
		mu 0 4 479 478 502 503
		f 4 -881 877 928 -880
		mu 0 4 480 479 503 504
		f 4 -883 879 930 -882
		mu 0 4 481 480 504 505
		f 4 -885 881 932 -884
		mu 0 4 482 481 505 506
		f 4 -887 883 934 -886
		mu 0 4 483 482 506 507
		f 4 -888 885 935 -841
		mu 0 4 460 483 507 484
		f 4 -891 888 611 -890
		mu 0 4 485 484 360 361
		f 4 -893 889 615 -892
		mu 0 4 486 485 361 362
		f 4 -895 891 619 -894
		mu 0 4 487 486 362 363
		f 4 -897 893 622 -896
		mu 0 4 488 487 363 341
		f 4 -899 895 530 -898
		mu 0 4 489 488 341 340
		f 4 -901 897 535 -900
		mu 0 4 490 489 340 342
		f 4 -903 899 539 -902
		mu 0 4 491 490 342 343
		f 4 -905 901 543 -904
		mu 0 4 492 491 343 344
		f 4 -907 903 547 -906
		mu 0 4 493 492 344 345
		f 4 -909 905 551 -908
		mu 0 4 494 493 345 346
		f 4 -911 907 555 -910
		mu 0 4 495 494 346 347
		f 4 -913 909 559 -912
		mu 0 4 496 495 347 348
		f 4 -915 911 563 -914
		mu 0 4 497 496 348 349
		f 4 -917 913 567 -916
		mu 0 4 498 497 349 350
		f 4 -919 915 571 -918
		mu 0 4 499 498 350 351
		f 4 -921 917 575 -920
		mu 0 4 500 499 351 352
		f 4 -923 919 579 -922
		mu 0 4 501 500 352 353
		f 4 -925 921 583 -924
		mu 0 4 502 501 353 354
		f 4 -927 923 587 -926
		mu 0 4 503 502 354 355
		f 4 -929 925 591 -928
		mu 0 4 504 503 355 356
		f 4 -931 927 595 -930
		mu 0 4 505 504 356 357
		f 4 -933 929 599 -932
		mu 0 4 506 505 357 358
		f 4 -935 931 603 -934
		mu 0 4 507 506 358 359
		f 4 -936 933 607 -889
		mu 0 4 484 507 359 360
		f 4 -939 936 -67 -938
		mu 0 4 509 508 102 103
		f 4 -940 -941 937 -66
		mu 0 4 50 510 509 103
		f 4 -943 939 -25 -942
		mu 0 4 512 510 50 49
		f 4 -945 941 165 -944
		mu 0 4 513 511 73 147
		f 4 -947 943 -168 -946
		mu 0 4 514 513 147 145
		f 4 -949 945 -163 -948
		mu 0 4 515 514 145 142
		f 4 -951 947 -157 -950
		mu 0 4 516 515 142 143
		f 4 -952 -953 949 -156
		mu 0 4 70 517 516 143
		f 4 -955 951 -45 -954
		mu 0 4 518 517 70 69
		f 4 -957 953 147 -956
		mu 0 4 519 518 69 139
		f 4 -959 955 -150 -958
		mu 0 4 520 519 139 137
		f 4 -961 957 -145 -960
		mu 0 4 521 520 137 134
		f 4 -963 959 -139 -962
		mu 0 4 522 521 134 135
		f 4 -964 -965 961 -138
		mu 0 4 66 523 522 135
		f 4 -967 963 -41 -966
		mu 0 4 524 523 66 65
		f 4 -969 965 129 -968
		mu 0 4 525 524 65 131
		f 4 -971 967 -132 -970
		mu 0 4 526 525 131 129
		f 4 -973 969 -127 -972
		mu 0 4 527 526 129 126
		f 4 -975 971 -121 -974
		mu 0 4 528 527 126 127
		f 4 -976 -977 973 -120
		mu 0 4 62 529 528 127;
	setAttr ".fc[500:515]"
		f 4 -979 975 -37 -978
		mu 0 4 530 529 62 61
		f 4 -981 977 111 -980
		mu 0 4 531 530 61 123
		f 4 -983 979 -114 -982
		mu 0 4 532 531 123 121
		f 4 -985 981 -109 -984
		mu 0 4 533 532 121 118
		f 4 -987 983 -103 -986
		mu 0 4 534 533 118 119
		f 4 -988 -989 985 -102
		mu 0 4 58 535 534 119
		f 4 -991 987 -33 -990
		mu 0 4 536 535 58 57
		f 4 -993 989 93 -992
		mu 0 4 537 536 57 115
		f 4 -995 991 -96 -994
		mu 0 4 538 537 115 113
		f 4 -997 993 -91 -996
		mu 0 4 539 538 113 110
		f 4 -999 995 -85 -998
		mu 0 4 540 539 110 111
		f 4 -1000 -1001 997 -84
		mu 0 4 54 541 540 111
		f 4 -1003 999 -29 -1002
		mu 0 4 542 541 54 53
		f 4 -1005 1001 75 -1004
		mu 0 4 543 542 53 107
		f 4 -1007 1003 -78 -1006
		mu 0 4 544 543 107 105
		f 4 -1008 1005 -73 -937
		mu 0 4 508 544 105 102;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCylinder47" -p "barashek";
	rename -uid "5CCA4067-4523-6183-324F-CDB25906BB51";
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74117649 0.74117649 0.74117649 ;
	setAttr ".t" -type "double3" 0 0 0.63286740219346083 ;
	setAttr ".r" -type "double3" 89.999999999997897 0 0 ;
	setAttr ".s" -type "double3" 0.16 1.8712862329441451 0.16 ;
createNode mesh -n "pCylinderShape47" -p "pCylinder47";
	rename -uid "06E5D227-4F3C-A081-0DAC-939417342704";
	setAttr -k off ".v";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[0:95]";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.87800002 0.68599999 0.294 ;
	setAttr ".ovca" 0.30000001192092896;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[32:63]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:31]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:31]" "vtx[64]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:63]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[32:63]" "vtx[65]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[32:63]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:31]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[64:95]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[32:63]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 132 ".uvst[0].uvsp[0:131]" -type "float2" 0.65324754 0.12576723
		 0.64435601 0.096455842 0.62991703 0.069442302 0.61048537 0.045764744 0.58680785 0.026333049
		 0.55979431 0.011893988 0.53048289 0.0030024648 0.50000006 1.4901161e-07 0.46951723
		 0.003002435 0.44020584 0.011893928 0.41319227 0.026332945 0.38951468 0.04576461 0.370083
		 0.069442168 0.35564393 0.096455693 0.34675241 0.12576711 0.34375012 0.15624994 0.34675238
		 0.1867328 0.35564387 0.21604422 0.37008291 0.24305776 0.3895146 0.26673535 0.41319215
		 0.28616706 0.44020569 0.3006061 0.46951711 0.30949765 0.49999997 0.31249994 0.53048283
		 0.30949765 0.55979425 0.30060616 0.58680785 0.28616711 0.61048543 0.26673543 0.62991709
		 0.24305785 0.64435613 0.21604428 0.65324771 0.18673286 0.65625 0.15625 0.375 0.3125
		 0.3828125 0.3125 0.390625 0.3125 0.3984375 0.3125 0.40625 0.3125 0.4140625 0.3125
		 0.421875 0.3125 0.4296875 0.3125 0.4375 0.3125 0.4453125 0.3125 0.453125 0.3125 0.4609375
		 0.3125 0.46875 0.3125 0.4765625 0.3125 0.484375 0.3125 0.4921875 0.3125 0.5 0.3125
		 0.5078125 0.3125 0.515625 0.3125 0.5234375 0.3125 0.53125 0.3125 0.5390625 0.3125
		 0.546875 0.3125 0.5546875 0.3125 0.5625 0.3125 0.5703125 0.3125 0.578125 0.3125 0.5859375
		 0.3125 0.59375 0.3125 0.6015625 0.3125 0.609375 0.3125 0.6171875 0.3125 0.625 0.3125
		 0.375 0.6875 0.3828125 0.6875 0.390625 0.6875 0.3984375 0.6875 0.40625 0.6875 0.4140625
		 0.6875 0.421875 0.6875 0.4296875 0.6875 0.4375 0.6875 0.4453125 0.6875 0.453125 0.6875
		 0.4609375 0.6875 0.46875 0.6875 0.4765625 0.6875 0.484375 0.6875 0.4921875 0.6875
		 0.5 0.6875 0.5078125 0.6875 0.515625 0.6875 0.5234375 0.6875 0.53125 0.6875 0.5390625
		 0.6875 0.546875 0.6875 0.5546875 0.6875 0.5625 0.6875 0.5703125 0.6875 0.578125 0.6875
		 0.5859375 0.6875 0.59375 0.6875 0.6015625 0.6875 0.609375 0.6875 0.6171875 0.6875
		 0.625 0.6875 0.65324754 0.81326723 0.64435601 0.78395581 0.62991703 0.75694227 0.61048537
		 0.73326474 0.58680785 0.71383303 0.55979431 0.69939399 0.53048289 0.69050246 0.50000006
		 0.68750012 0.46951723 0.69050241 0.44020584 0.69939393 0.41319227 0.71383297 0.38951468
		 0.73326463 0.370083 0.75694215 0.35564393 0.78395569 0.34675241 0.81326711 0.34375012
		 0.84374994 0.34675238 0.87423277 0.35564387 0.90354419 0.37008291 0.93055773 0.3895146
		 0.95423532 0.41319215 0.97366703 0.44020569 0.98810613 0.46951711 0.99699765 0.49999997
		 0.99999994 0.53048283 0.99699765 0.55979425 0.98810613 0.58680785 0.97366714 0.61048543
		 0.95423543 0.62991709 0.93055785 0.64435613 0.90354431 0.65324771 0.87423289 0.65625
		 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 66 ".pt[0:65]" -type "float3"  1.7881393e-07 0 -7.4505806e-09 
		5.9604645e-08 0 -1.1920929e-07 2.0861626e-07 0 -8.9406967e-08 -5.9604645e-08 0 1.4901161e-07 
		1.7881393e-07 0 5.9604645e-08 -2.3841858e-07 0 -6.5565109e-07 -1.4901161e-08 0 2.3841858e-07 
		-5.6843419e-14 0 0 -1.1920929e-07 0 5.9604645e-08 0 0 1.1920929e-07 1.1920929e-07 
		0 3.5762787e-07 0 0 -1.7881393e-07 0 0 5.9604645e-08 -3.5762787e-07 0 2.5331974e-07 
		-2.3841858e-07 0 -4.4703484e-08 2.9802322e-07 0 -5.6843419e-14 -3.5762787e-07 0 -8.1956387e-08 
		-2.9802322e-07 0 2.9802322e-07 5.9604645e-07 0 -2.9802322e-08 0 0 5.9604645e-08 3.2782555e-07 
		0 -3.2782555e-07 2.9802322e-08 0 -4.1723251e-07 4.4703484e-08 0 -1.7881393e-07 -2.1316282e-14 
		0 5.9604645e-08 -1.1920929e-07 0 5.9604645e-08 2.9802322e-08 0 5.9604645e-08 5.9604645e-08 
		0 -3.8743019e-07 -2.9802322e-07 0 6.5565109e-07 5.9604645e-08 0 -2.0861626e-07 0 
		0 0 2.3841858e-07 0 -3.7252903e-08 -2.3841858e-07 0 0 1.7881393e-07 0 -7.4505806e-09 
		5.9604645e-08 0 -1.1920929e-07 2.0861626e-07 0 -8.9406967e-08 -5.9604645e-08 0 1.4901161e-07 
		1.7881393e-07 0 5.9604645e-08 -2.3841858e-07 0 -6.5565109e-07 -1.4901161e-08 0 2.3841858e-07 
		-5.6843419e-14 0 0 -1.1920929e-07 0 5.9604645e-08 0 0 1.1920929e-07 1.1920929e-07 
		0 3.5762787e-07 0 0 -1.7881393e-07 0 0 5.9604645e-08 -3.5762787e-07 0 2.5331974e-07 
		-2.3841858e-07 0 -4.4703484e-08 2.9802322e-07 0 -5.6843419e-14 -3.5762787e-07 0 -8.1956387e-08 
		-2.9802322e-07 0 2.9802322e-07 5.9604645e-07 0 -2.9802322e-08 0 0 5.9604645e-08 3.2782555e-07 
		0 -3.2782555e-07 2.9802322e-08 0 -4.1723251e-07 4.4703484e-08 0 -1.7881393e-07 -2.1316282e-14 
		0 5.9604645e-08 -1.1920929e-07 0 5.9604645e-08 2.9802322e-08 0 5.9604645e-08 5.9604645e-08 
		0 -3.8743019e-07 -2.9802322e-07 0 6.5565109e-07 5.9604645e-08 0 -2.0861626e-07 0 
		0 0 2.3841858e-07 0 -3.7252903e-08 -2.3841858e-07 0 0 0 0 0 0 0 0;
	setAttr -s 66 ".vt[0:65]"  0.98078418 -1 -0.19508962 0.92387861 -1 -0.38268256
		 0.83146894 -1 -0.55556923 0.70710635 -1 -0.7071057 0.55557007 -1 -0.83146846 0.38268349 -1 -0.92387843
		 0.19509058 -1 -0.98078424 4.4703484e-07 -1 -0.99999905 -0.1950897 -1 -0.98078442
		 -0.38268268 -1 -0.92387885 -0.55556941 -1 -0.83146912 -0.70710593 -1 -0.70710647
		 -0.83146876 -1 -0.55557013 -0.92387873 -1 -0.38268349 -0.98078454 -1 -0.19509052
		 -0.99999934 -1 -3.2782555e-07 -0.98078477 -1 0.19508991 -0.92387915 -1 0.38268295
		 -0.83146936 -1 0.55556971 -0.70710665 -1 0.70710623 -0.55557019 -1 0.83146912 -0.38268346 -1 0.92387909
		 -0.19509043 -1 0.98078489 -1.6391277e-07 -1 0.9999997 0.19509013 -1 0.98078507 0.38268322 -1 0.92387938
		 0.55557001 -1 0.83146954 0.70710659 -1 0.70710677 0.83146948 -1 0.55557024 0.92387944 -1 0.38268343
		 0.98078525 -1 0.19509032 1 -1 0 0.98078418 1 -0.19508962 0.92387861 1 -0.38268256
		 0.83146894 1 -0.55556923 0.70710635 1 -0.7071057 0.55557007 1 -0.83146846 0.38268349 1 -0.92387843
		 0.19509058 1 -0.98078424 4.4703484e-07 1 -0.99999905 -0.1950897 1 -0.98078442 -0.38268268 1 -0.92387885
		 -0.55556941 1 -0.83146912 -0.70710593 1 -0.70710647 -0.83146876 1 -0.55557013 -0.92387873 1 -0.38268349
		 -0.98078454 1 -0.19509052 -0.99999934 1 -3.2782555e-07 -0.98078477 1 0.19508991 -0.92387915 1 0.38268295
		 -0.83146936 1 0.55556971 -0.70710665 1 0.70710623 -0.55557019 1 0.83146912 -0.38268346 1 0.92387909
		 -0.19509043 1 0.98078489 -1.6391277e-07 1 0.9999997 0.19509013 1 0.98078507 0.38268322 1 0.92387938
		 0.55557001 1 0.83146954 0.70710659 1 0.70710677 0.83146948 1 0.55557024 0.92387944 1 0.38268343
		 0.98078525 1 0.19509032 1 1 0 0 -1 0 0 1 0;
	setAttr -s 160 ".ed[0:159]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 0 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 60 0 60 61 0 61 62 0
		 62 63 0 63 32 0 0 32 1 1 33 1 2 34 1 3 35 1 4 36 1 5 37 1 6 38 1 7 39 1 8 40 1 9 41 1
		 10 42 1 11 43 1 12 44 1 13 45 1 14 46 1 15 47 1 16 48 1 17 49 1 18 50 1 19 51 1 20 52 1
		 21 53 1 22 54 1 23 55 1 24 56 1 25 57 1 26 58 1 27 59 1 28 60 1 29 61 1 30 62 1 31 63 1
		 64 0 1 64 1 1 64 2 1 64 3 1 64 4 1 64 5 1 64 6 1 64 7 1 64 8 1 64 9 1 64 10 1 64 11 1
		 64 12 1 64 13 1 64 14 1 64 15 1 64 16 1 64 17 1 64 18 1 64 19 1 64 20 1 64 21 1 64 22 1
		 64 23 1 64 24 1 64 25 1 64 26 1 64 27 1 64 28 1 64 29 1 64 30 1 64 31 1 32 65 1 33 65 1
		 34 65 1 35 65 1 36 65 1 37 65 1 38 65 1 39 65 1 40 65 1 41 65 1 42 65 1 43 65 1 44 65 1
		 45 65 1 46 65 1 47 65 1 48 65 1 49 65 1 50 65 1 51 65 1 52 65 1 53 65 1 54 65 1 55 65 1
		 56 65 1 57 65 1 58 65 1 59 65 1 60 65 1 61 65 1 62 65 1 63 65 1;
	setAttr -s 96 -ch 320 ".fc[0:95]" -type "polyFaces" 
		f 4 0 65 -33 -65
		mu 0 4 32 33 66 65
		f 4 1 66 -34 -66
		mu 0 4 33 34 67 66
		f 4 2 67 -35 -67
		mu 0 4 34 35 68 67
		f 4 3 68 -36 -68
		mu 0 4 35 36 69 68
		f 4 4 69 -37 -69
		mu 0 4 36 37 70 69
		f 4 5 70 -38 -70
		mu 0 4 37 38 71 70
		f 4 6 71 -39 -71
		mu 0 4 38 39 72 71
		f 4 7 72 -40 -72
		mu 0 4 39 40 73 72
		f 4 8 73 -41 -73
		mu 0 4 40 41 74 73
		f 4 9 74 -42 -74
		mu 0 4 41 42 75 74
		f 4 10 75 -43 -75
		mu 0 4 42 43 76 75
		f 4 11 76 -44 -76
		mu 0 4 43 44 77 76
		f 4 12 77 -45 -77
		mu 0 4 44 45 78 77
		f 4 13 78 -46 -78
		mu 0 4 45 46 79 78
		f 4 14 79 -47 -79
		mu 0 4 46 47 80 79
		f 4 15 80 -48 -80
		mu 0 4 47 48 81 80
		f 4 16 81 -49 -81
		mu 0 4 48 49 82 81
		f 4 17 82 -50 -82
		mu 0 4 49 50 83 82
		f 4 18 83 -51 -83
		mu 0 4 50 51 84 83
		f 4 19 84 -52 -84
		mu 0 4 51 52 85 84
		f 4 20 85 -53 -85
		mu 0 4 52 53 86 85
		f 4 21 86 -54 -86
		mu 0 4 53 54 87 86
		f 4 22 87 -55 -87
		mu 0 4 54 55 88 87
		f 4 23 88 -56 -88
		mu 0 4 55 56 89 88
		f 4 24 89 -57 -89
		mu 0 4 56 57 90 89
		f 4 25 90 -58 -90
		mu 0 4 57 58 91 90
		f 4 26 91 -59 -91
		mu 0 4 58 59 92 91
		f 4 27 92 -60 -92
		mu 0 4 59 60 93 92
		f 4 28 93 -61 -93
		mu 0 4 60 61 94 93
		f 4 29 94 -62 -94
		mu 0 4 61 62 95 94
		f 4 30 95 -63 -95
		mu 0 4 62 63 96 95
		f 4 31 64 -64 -96
		mu 0 4 63 64 97 96
		f 3 -1 -97 97
		mu 0 3 1 0 130
		f 3 -2 -98 98
		mu 0 3 2 1 130
		f 3 -3 -99 99
		mu 0 3 3 2 130
		f 3 -4 -100 100
		mu 0 3 4 3 130
		f 3 -5 -101 101
		mu 0 3 5 4 130
		f 3 -6 -102 102
		mu 0 3 6 5 130
		f 3 -7 -103 103
		mu 0 3 7 6 130
		f 3 -8 -104 104
		mu 0 3 8 7 130
		f 3 -9 -105 105
		mu 0 3 9 8 130
		f 3 -10 -106 106
		mu 0 3 10 9 130
		f 3 -11 -107 107
		mu 0 3 11 10 130
		f 3 -12 -108 108
		mu 0 3 12 11 130
		f 3 -13 -109 109
		mu 0 3 13 12 130
		f 3 -14 -110 110
		mu 0 3 14 13 130
		f 3 -15 -111 111
		mu 0 3 15 14 130
		f 3 -16 -112 112
		mu 0 3 16 15 130
		f 3 -17 -113 113
		mu 0 3 17 16 130
		f 3 -18 -114 114
		mu 0 3 18 17 130
		f 3 -19 -115 115
		mu 0 3 19 18 130
		f 3 -20 -116 116
		mu 0 3 20 19 130
		f 3 -21 -117 117
		mu 0 3 21 20 130
		f 3 -22 -118 118
		mu 0 3 22 21 130
		f 3 -23 -119 119
		mu 0 3 23 22 130
		f 3 -24 -120 120
		mu 0 3 24 23 130
		f 3 -25 -121 121
		mu 0 3 25 24 130
		f 3 -26 -122 122
		mu 0 3 26 25 130
		f 3 -27 -123 123
		mu 0 3 27 26 130
		f 3 -28 -124 124
		mu 0 3 28 27 130
		f 3 -29 -125 125
		mu 0 3 29 28 130
		f 3 -30 -126 126
		mu 0 3 30 29 130
		f 3 -31 -127 127
		mu 0 3 31 30 130
		f 3 -32 -128 96
		mu 0 3 0 31 130
		f 3 32 129 -129
		mu 0 3 128 127 131
		f 3 33 130 -130
		mu 0 3 127 126 131
		f 3 34 131 -131
		mu 0 3 126 125 131
		f 3 35 132 -132
		mu 0 3 125 124 131
		f 3 36 133 -133
		mu 0 3 124 123 131
		f 3 37 134 -134
		mu 0 3 123 122 131
		f 3 38 135 -135
		mu 0 3 122 121 131
		f 3 39 136 -136
		mu 0 3 121 120 131
		f 3 40 137 -137
		mu 0 3 120 119 131
		f 3 41 138 -138
		mu 0 3 119 118 131
		f 3 42 139 -139
		mu 0 3 118 117 131
		f 3 43 140 -140
		mu 0 3 117 116 131
		f 3 44 141 -141
		mu 0 3 116 115 131
		f 3 45 142 -142
		mu 0 3 115 114 131
		f 3 46 143 -143
		mu 0 3 114 113 131
		f 3 47 144 -144
		mu 0 3 113 112 131
		f 3 48 145 -145
		mu 0 3 112 111 131
		f 3 49 146 -146
		mu 0 3 111 110 131
		f 3 50 147 -147
		mu 0 3 110 109 131
		f 3 51 148 -148
		mu 0 3 109 108 131
		f 3 52 149 -149
		mu 0 3 108 107 131
		f 3 53 150 -150
		mu 0 3 107 106 131
		f 3 54 151 -151
		mu 0 3 106 105 131
		f 3 55 152 -152
		mu 0 3 105 104 131
		f 3 56 153 -153
		mu 0 3 104 103 131
		f 3 57 154 -154
		mu 0 3 103 102 131
		f 3 58 155 -155
		mu 0 3 102 101 131
		f 3 59 156 -156
		mu 0 3 101 100 131
		f 3 60 157 -157
		mu 0 3 100 99 131
		f 3 61 158 -158
		mu 0 3 99 98 131
		f 3 62 159 -159
		mu 0 3 98 129 131
		f 3 63 128 -160
		mu 0 3 129 128 131;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder50" -p "barashek";
	rename -uid "081EA871-4FBF-E362-1FC4-AD9AE1E99A66";
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74117649 0.74117649 0.74117649 ;
	setAttr ".t" -type "double3" 0 0 0.53219081474540253 ;
	setAttr ".r" -type "double3" 90 0 90.000000000000014 ;
	setAttr ".s" -type "double3" 0.34 0.12 0.34 ;
createNode mesh -n "pCylinderShape50" -p "pCylinder50";
	rename -uid "CCBB8FCD-414D-67B3-6850-75B28831D3D2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:17]";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.87800002 0.68599999 0.294 ;
	setAttr ".ovca" 0.30000001192092896;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6:11]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:5]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:5]" "vtx[12]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:5]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[6:11]" "vtx[13]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[6:11]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:5]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[12:15]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[6:11]";
	setAttr ".pv" -type "double2" 0.45833331346511841 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.49999997 0.3125 0.54166663 0.3125
		 0.58333331 0.3125 0.625 0.3125 0.375 0.6875 0.41666666 0.6875 0.49999997 0.6875 0.54166663
		 0.6875 0.58333331 0.6875 0.625 0.6875 0.57812506 0.70843351 0.42187503 0.70843351
		 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15625
		 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  0 1.4305115e-06 2.3841858e-07 
		-1.1920929e-07 1.4305115e-06 0 -2.3841858e-07 1.4305115e-06 2.8421709e-14 0 1.4305115e-06 
		-2.3841858e-07 1.1920929e-07 1.4305115e-06 0 -2.3841858e-07 1.4305115e-06 8.643335e-40 
		0 -1.4305115e-06 2.3841858e-07 -1.1920929e-07 -1.4305115e-06 0 -2.3841858e-07 -1.4305115e-06 
		2.8421709e-14 0 -1.4305115e-06 -2.3841858e-07 1.1920929e-07 -1.4305115e-06 0 -2.3841858e-07 
		-1.4305115e-06 8.643335e-40 0 1.4305115e-06 8.643335e-40 0 -1.4305115e-06 8.643335e-40;
	setAttr -s 14 ".vt[0:13]"  0.50000024 -1 -0.86602533 -0.49999976 -1 -0.86602551
		 -1.000000238419 -1 -1.4901161e-07 -0.50000024 -1 0.86602539 0.49999976 -1 0.86602551
		 1 -1 0 0.50000024 0.99999619 -0.86602533 -0.49999976 0.99999619 -0.86602551 -1.000000238419 0.99999619 -1.4901161e-07
		 -0.50000024 0.99999619 0.86602539 0.49999976 0.99999619 0.86602551 1 0.99999619 0
		 0 -1 0 0 0.99999619 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1 12 2 1
		 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1 8 2 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 13 12
		f 4 3 15 -10 -15
		mu 0 4 8 9 15 14
		f 4 4 16 -11 -16
		mu 0 4 9 10 16 15
		f 4 5 12 -12 -17
		mu 0 4 10 11 17 16
		f 3 -1 -18 18
		mu 0 3 1 0 24
		f 3 -2 -19 19
		mu 0 3 2 1 24
		f 3 -3 -20 20
		mu 0 3 3 2 24
		f 3 -4 -21 21
		mu 0 3 4 3 24
		f 3 -5 -22 22
		mu 0 3 5 4 24
		f 3 -6 -23 17
		mu 0 3 0 5 24
		f 3 6 24 -24
		mu 0 3 22 21 25
		f 3 7 25 -25
		mu 0 3 21 20 25
		f 3 8 26 -26
		mu 0 3 20 19 25
		f 3 9 27 -27
		mu 0 3 19 18 25
		f 3 10 28 -28
		mu 0 3 18 23 25
		f 3 11 23 -29
		mu 0 3 23 22 25
		f 4 2 14 -9 29
		mu 0 4 2 8 19 20
		f 4 -30 -8 -14 1
		mu 0 4 2 20 13 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder51" -p "barashek";
	rename -uid "CC49E22D-47CA-0DDB-BF3A-8B988C4DD723";
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74117649 0.74117649 0.74117649 ;
	setAttr ".t" -type "double3" 0 0 0.86197051800948254 ;
	setAttr ".r" -type "double3" 89.999999999997897 0 0 ;
	setAttr ".s" -type "double3" 0.35 0.22 0.35 ;
createNode mesh -n "pCylinderShape51" -p "pCylinder51";
	rename -uid "F0EBFCD6-4047-CA58-78CC-D8B9823E7DED";
	setAttr -k off ".v";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[0:95]";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.87800002 0.68599999 0.294 ;
	setAttr ".ovca" 0.30000001192092896;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[32:63]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:31]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:31]" "vtx[64]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:63]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[32:63]" "vtx[65]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[32:63]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:31]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[64:95]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[32:63]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 132 ".uvst[0].uvsp[0:131]" -type "float2" 0.65324754 0.12576723
		 0.64435601 0.096455842 0.62991703 0.069442302 0.61048537 0.045764744 0.58680785 0.026333049
		 0.55979431 0.011893988 0.53048289 0.0030024648 0.50000006 1.4901161e-07 0.46951723
		 0.003002435 0.44020584 0.011893928 0.41319227 0.026332945 0.38951468 0.04576461 0.370083
		 0.069442168 0.35564393 0.096455693 0.34675241 0.12576711 0.34375012 0.15624994 0.34675238
		 0.1867328 0.35564387 0.21604422 0.37008291 0.24305776 0.3895146 0.26673535 0.41319215
		 0.28616706 0.44020569 0.3006061 0.46951711 0.30949765 0.49999997 0.31249994 0.53048283
		 0.30949765 0.55979425 0.30060616 0.58680785 0.28616711 0.61048543 0.26673543 0.62991709
		 0.24305785 0.64435613 0.21604428 0.65324771 0.18673286 0.65625 0.15625 0.375 0.3125
		 0.3828125 0.3125 0.390625 0.3125 0.3984375 0.3125 0.40625 0.3125 0.4140625 0.3125
		 0.421875 0.3125 0.4296875 0.3125 0.4375 0.3125 0.4453125 0.3125 0.453125 0.3125 0.4609375
		 0.3125 0.46875 0.3125 0.4765625 0.3125 0.484375 0.3125 0.4921875 0.3125 0.5 0.3125
		 0.5078125 0.3125 0.515625 0.3125 0.5234375 0.3125 0.53125 0.3125 0.5390625 0.3125
		 0.546875 0.3125 0.5546875 0.3125 0.5625 0.3125 0.5703125 0.3125 0.578125 0.3125 0.5859375
		 0.3125 0.59375 0.3125 0.6015625 0.3125 0.609375 0.3125 0.6171875 0.3125 0.625 0.3125
		 0.375 0.6875 0.3828125 0.6875 0.390625 0.6875 0.3984375 0.6875 0.40625 0.6875 0.4140625
		 0.6875 0.421875 0.6875 0.4296875 0.6875 0.4375 0.6875 0.4453125 0.6875 0.453125 0.6875
		 0.4609375 0.6875 0.46875 0.6875 0.4765625 0.6875 0.484375 0.6875 0.4921875 0.6875
		 0.5 0.6875 0.5078125 0.6875 0.515625 0.6875 0.5234375 0.6875 0.53125 0.6875 0.5390625
		 0.6875 0.546875 0.6875 0.5546875 0.6875 0.5625 0.6875 0.5703125 0.6875 0.578125 0.6875
		 0.5859375 0.6875 0.59375 0.6875 0.6015625 0.6875 0.609375 0.6875 0.6171875 0.6875
		 0.625 0.6875 0.65324754 0.81326723 0.64435601 0.78395581 0.62991703 0.75694227 0.61048537
		 0.73326474 0.58680785 0.71383303 0.55979431 0.69939399 0.53048289 0.69050246 0.50000006
		 0.68750012 0.46951723 0.69050241 0.44020584 0.69939393 0.41319227 0.71383297 0.38951468
		 0.73326463 0.370083 0.75694215 0.35564393 0.78395569 0.34675241 0.81326711 0.34375012
		 0.84374994 0.34675238 0.87423277 0.35564387 0.90354419 0.37008291 0.93055773 0.3895146
		 0.95423532 0.41319215 0.97366703 0.44020569 0.98810613 0.46951711 0.99699765 0.49999997
		 0.99999994 0.53048283 0.99699765 0.55979425 0.98810613 0.58680785 0.97366714 0.61048543
		 0.95423543 0.62991709 0.93055785 0.64435613 0.90354431 0.65324771 0.87423289 0.65625
		 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 66 ".pt[0:65]" -type "float3"  -2.3841858e-07 9.5367432e-07 
		8.9406967e-08 0 9.5367432e-07 -5.9604645e-08 -2.3841858e-07 9.5367432e-07 2.3841858e-07 
		4.7683716e-07 9.5367432e-07 0 2.3841858e-07 9.5367432e-07 -4.7683716e-07 2.3841858e-07 
		9.5367432e-07 2.3841858e-07 -2.9802322e-08 9.5367432e-07 -4.7683716e-07 0 9.5367432e-07 
		0 -5.9604645e-08 9.5367432e-07 -2.3841858e-07 -5.9604645e-08 9.5367432e-07 2.3841858e-07 
		0 9.5367432e-07 -2.3841858e-07 -1.1920929e-07 9.5367432e-07 -1.1920929e-07 4.7683716e-07 
		9.5367432e-07 0 -2.3841858e-07 9.5367432e-07 -2.3841858e-07 4.7683716e-07 9.5367432e-07 
		-1.1920929e-07 0 9.5367432e-07 2.2737368e-13 7.1525574e-07 9.5367432e-07 -8.9406967e-08 
		-2.3841858e-07 9.5367432e-07 5.9604645e-08 0 9.5367432e-07 -1.1920929e-07 2.3841858e-07 
		9.5367432e-07 -3.5762787e-07 2.3841858e-07 9.5367432e-07 2.3841858e-07 5.9604645e-08 
		9.5367432e-07 -4.7683716e-07 5.9604645e-08 9.5367432e-07 -2.3841858e-07 5.6843419e-14 
		9.5367432e-07 -2.3841858e-07 0 9.5367432e-07 0 1.7881393e-07 9.5367432e-07 0 1.1920929e-07 
		9.5367432e-07 2.3841858e-07 0 9.5367432e-07 -3.5762787e-07 2.3841858e-07 9.5367432e-07 
		-1.1920929e-07 2.3841858e-07 9.5367432e-07 -5.9604645e-08 2.3841858e-07 9.5367432e-07 
		-5.9604645e-08 -2.3841858e-07 9.5367432e-07 0 -2.3841858e-07 9.5367432e-07 8.9406967e-08 
		0 9.5367432e-07 -5.9604645e-08 -2.3841858e-07 9.5367432e-07 2.3841858e-07 4.7683716e-07 
		9.5367432e-07 0 2.3841858e-07 9.5367432e-07 -4.7683716e-07 2.3841858e-07 9.5367432e-07 
		2.3841858e-07 -2.9802322e-08 9.5367432e-07 -4.7683716e-07 0 9.5367432e-07 0 -5.9604645e-08 
		9.5367432e-07 -2.3841858e-07 -5.9604645e-08 9.5367432e-07 2.3841858e-07 0 9.5367432e-07 
		-2.3841858e-07 -1.1920929e-07 9.5367432e-07 -1.1920929e-07 4.7683716e-07 9.5367432e-07 
		0 -2.3841858e-07 9.5367432e-07 -2.3841858e-07 4.7683716e-07 9.5367432e-07 -1.1920929e-07 
		0 9.5367432e-07 2.2737368e-13 7.1525574e-07 9.5367432e-07 -8.9406967e-08 -2.3841858e-07 
		9.5367432e-07 5.9604645e-08 0 9.5367432e-07 -1.1920929e-07 2.3841858e-07 9.5367432e-07 
		-3.5762787e-07 2.3841858e-07 9.5367432e-07 2.3841858e-07 5.9604645e-08 9.5367432e-07 
		-4.7683716e-07 5.9604645e-08 9.5367432e-07 -2.3841858e-07 5.6843419e-14 9.5367432e-07 
		-2.3841858e-07 0 9.5367432e-07 0 1.7881393e-07 9.5367432e-07 0 1.1920929e-07 9.5367432e-07 
		2.3841858e-07 0 9.5367432e-07 -3.5762787e-07 2.3841858e-07 9.5367432e-07 -1.1920929e-07 
		2.3841858e-07 9.5367432e-07 -5.9604645e-08 2.3841858e-07 9.5367432e-07 -5.9604645e-08 
		-2.3841858e-07 9.5367432e-07 0 0 9.5367432e-07 0 0 9.5367432e-07 0;
	setAttr -s 66 ".vt[0:65]"  0.98078418 -1 -0.19508962 0.92387861 -1 -0.38268256
		 0.83146894 -1 -0.55556923 0.70710635 -1 -0.7071057 0.55557007 -1 -0.83146846 0.38268349 -1 -0.92387843
		 0.19509058 -1 -0.98078424 4.4703484e-07 -1 -0.99999905 -0.1950897 -1 -0.98078442
		 -0.38268268 -1 -0.92387885 -0.55556941 -1 -0.83146912 -0.70710593 -1 -0.70710647
		 -0.83146876 -1 -0.55557013 -0.92387873 -1 -0.38268349 -0.98078454 -1 -0.19509052
		 -0.99999934 -1 -3.2782555e-07 -0.98078477 -1 0.19508991 -0.92387915 -1 0.38268295
		 -0.83146936 -1 0.55556971 -0.70710665 -1 0.70710623 -0.55557019 -1 0.83146912 -0.38268346 -1 0.92387909
		 -0.19509043 -1 0.98078489 -1.6391277e-07 -1 0.9999997 0.19509013 -1 0.98078507 0.38268322 -1 0.92387938
		 0.55557001 -1 0.83146954 0.70710659 -1 0.70710677 0.83146948 -1 0.55557024 0.92387944 -1 0.38268343
		 0.98078525 -1 0.19509032 1 -1 0 0.98078418 1 -0.19508962 0.92387861 1 -0.38268256
		 0.83146894 1 -0.55556923 0.70710635 1 -0.7071057 0.55557007 1 -0.83146846 0.38268349 1 -0.92387843
		 0.19509058 1 -0.98078424 4.4703484e-07 1 -0.99999905 -0.1950897 1 -0.98078442 -0.38268268 1 -0.92387885
		 -0.55556941 1 -0.83146912 -0.70710593 1 -0.70710647 -0.83146876 1 -0.55557013 -0.92387873 1 -0.38268349
		 -0.98078454 1 -0.19509052 -0.99999934 1 -3.2782555e-07 -0.98078477 1 0.19508991 -0.92387915 1 0.38268295
		 -0.83146936 1 0.55556971 -0.70710665 1 0.70710623 -0.55557019 1 0.83146912 -0.38268346 1 0.92387909
		 -0.19509043 1 0.98078489 -1.6391277e-07 1 0.9999997 0.19509013 1 0.98078507 0.38268322 1 0.92387938
		 0.55557001 1 0.83146954 0.70710659 1 0.70710677 0.83146948 1 0.55557024 0.92387944 1 0.38268343
		 0.98078525 1 0.19509032 1 1 0 0 -1 0 0 1 0;
	setAttr -s 160 ".ed[0:159]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 0 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 60 0 60 61 0 61 62 0
		 62 63 0 63 32 0 0 32 1 1 33 1 2 34 1 3 35 1 4 36 1 5 37 1 6 38 1 7 39 1 8 40 1 9 41 1
		 10 42 1 11 43 1 12 44 1 13 45 1 14 46 1 15 47 1 16 48 1 17 49 1 18 50 1 19 51 1 20 52 1
		 21 53 1 22 54 1 23 55 1 24 56 1 25 57 1 26 58 1 27 59 1 28 60 1 29 61 1 30 62 1 31 63 1
		 64 0 1 64 1 1 64 2 1 64 3 1 64 4 1 64 5 1 64 6 1 64 7 1 64 8 1 64 9 1 64 10 1 64 11 1
		 64 12 1 64 13 1 64 14 1 64 15 1 64 16 1 64 17 1 64 18 1 64 19 1 64 20 1 64 21 1 64 22 1
		 64 23 1 64 24 1 64 25 1 64 26 1 64 27 1 64 28 1 64 29 1 64 30 1 64 31 1 32 65 1 33 65 1
		 34 65 1 35 65 1 36 65 1 37 65 1 38 65 1 39 65 1 40 65 1 41 65 1 42 65 1 43 65 1 44 65 1
		 45 65 1 46 65 1 47 65 1 48 65 1 49 65 1 50 65 1 51 65 1 52 65 1 53 65 1 54 65 1 55 65 1
		 56 65 1 57 65 1 58 65 1 59 65 1 60 65 1 61 65 1 62 65 1 63 65 1;
	setAttr -s 96 -ch 320 ".fc[0:95]" -type "polyFaces" 
		f 4 0 65 -33 -65
		mu 0 4 32 33 66 65
		f 4 1 66 -34 -66
		mu 0 4 33 34 67 66
		f 4 2 67 -35 -67
		mu 0 4 34 35 68 67
		f 4 3 68 -36 -68
		mu 0 4 35 36 69 68
		f 4 4 69 -37 -69
		mu 0 4 36 37 70 69
		f 4 5 70 -38 -70
		mu 0 4 37 38 71 70
		f 4 6 71 -39 -71
		mu 0 4 38 39 72 71
		f 4 7 72 -40 -72
		mu 0 4 39 40 73 72
		f 4 8 73 -41 -73
		mu 0 4 40 41 74 73
		f 4 9 74 -42 -74
		mu 0 4 41 42 75 74
		f 4 10 75 -43 -75
		mu 0 4 42 43 76 75
		f 4 11 76 -44 -76
		mu 0 4 43 44 77 76
		f 4 12 77 -45 -77
		mu 0 4 44 45 78 77
		f 4 13 78 -46 -78
		mu 0 4 45 46 79 78
		f 4 14 79 -47 -79
		mu 0 4 46 47 80 79
		f 4 15 80 -48 -80
		mu 0 4 47 48 81 80
		f 4 16 81 -49 -81
		mu 0 4 48 49 82 81
		f 4 17 82 -50 -82
		mu 0 4 49 50 83 82
		f 4 18 83 -51 -83
		mu 0 4 50 51 84 83
		f 4 19 84 -52 -84
		mu 0 4 51 52 85 84
		f 4 20 85 -53 -85
		mu 0 4 52 53 86 85
		f 4 21 86 -54 -86
		mu 0 4 53 54 87 86
		f 4 22 87 -55 -87
		mu 0 4 54 55 88 87
		f 4 23 88 -56 -88
		mu 0 4 55 56 89 88
		f 4 24 89 -57 -89
		mu 0 4 56 57 90 89
		f 4 25 90 -58 -90
		mu 0 4 57 58 91 90
		f 4 26 91 -59 -91
		mu 0 4 58 59 92 91
		f 4 27 92 -60 -92
		mu 0 4 59 60 93 92
		f 4 28 93 -61 -93
		mu 0 4 60 61 94 93
		f 4 29 94 -62 -94
		mu 0 4 61 62 95 94
		f 4 30 95 -63 -95
		mu 0 4 62 63 96 95
		f 4 31 64 -64 -96
		mu 0 4 63 64 97 96
		f 3 -1 -97 97
		mu 0 3 1 0 130
		f 3 -2 -98 98
		mu 0 3 2 1 130
		f 3 -3 -99 99
		mu 0 3 3 2 130
		f 3 -4 -100 100
		mu 0 3 4 3 130
		f 3 -5 -101 101
		mu 0 3 5 4 130
		f 3 -6 -102 102
		mu 0 3 6 5 130
		f 3 -7 -103 103
		mu 0 3 7 6 130
		f 3 -8 -104 104
		mu 0 3 8 7 130
		f 3 -9 -105 105
		mu 0 3 9 8 130
		f 3 -10 -106 106
		mu 0 3 10 9 130
		f 3 -11 -107 107
		mu 0 3 11 10 130
		f 3 -12 -108 108
		mu 0 3 12 11 130
		f 3 -13 -109 109
		mu 0 3 13 12 130
		f 3 -14 -110 110
		mu 0 3 14 13 130
		f 3 -15 -111 111
		mu 0 3 15 14 130
		f 3 -16 -112 112
		mu 0 3 16 15 130
		f 3 -17 -113 113
		mu 0 3 17 16 130
		f 3 -18 -114 114
		mu 0 3 18 17 130
		f 3 -19 -115 115
		mu 0 3 19 18 130
		f 3 -20 -116 116
		mu 0 3 20 19 130
		f 3 -21 -117 117
		mu 0 3 21 20 130
		f 3 -22 -118 118
		mu 0 3 22 21 130
		f 3 -23 -119 119
		mu 0 3 23 22 130
		f 3 -24 -120 120
		mu 0 3 24 23 130
		f 3 -25 -121 121
		mu 0 3 25 24 130
		f 3 -26 -122 122
		mu 0 3 26 25 130
		f 3 -27 -123 123
		mu 0 3 27 26 130
		f 3 -28 -124 124
		mu 0 3 28 27 130
		f 3 -29 -125 125
		mu 0 3 29 28 130
		f 3 -30 -126 126
		mu 0 3 30 29 130
		f 3 -31 -127 127
		mu 0 3 31 30 130
		f 3 -32 -128 96
		mu 0 3 0 31 130
		f 3 32 129 -129
		mu 0 3 128 127 131
		f 3 33 130 -130
		mu 0 3 127 126 131
		f 3 34 131 -131
		mu 0 3 126 125 131
		f 3 35 132 -132
		mu 0 3 125 124 131
		f 3 36 133 -133
		mu 0 3 124 123 131
		f 3 37 134 -134
		mu 0 3 123 122 131
		f 3 38 135 -135
		mu 0 3 122 121 131
		f 3 39 136 -136
		mu 0 3 121 120 131
		f 3 40 137 -137
		mu 0 3 120 119 131
		f 3 41 138 -138
		mu 0 3 119 118 131
		f 3 42 139 -139
		mu 0 3 118 117 131
		f 3 43 140 -140
		mu 0 3 117 116 131
		f 3 44 141 -141
		mu 0 3 116 115 131
		f 3 45 142 -142
		mu 0 3 115 114 131
		f 3 46 143 -143
		mu 0 3 114 113 131
		f 3 47 144 -144
		mu 0 3 113 112 131
		f 3 48 145 -145
		mu 0 3 112 111 131
		f 3 49 146 -146
		mu 0 3 111 110 131
		f 3 50 147 -147
		mu 0 3 110 109 131
		f 3 51 148 -148
		mu 0 3 109 108 131
		f 3 52 149 -149
		mu 0 3 108 107 131
		f 3 53 150 -150
		mu 0 3 107 106 131
		f 3 54 151 -151
		mu 0 3 106 105 131
		f 3 55 152 -152
		mu 0 3 105 104 131
		f 3 56 153 -153
		mu 0 3 104 103 131
		f 3 57 154 -154
		mu 0 3 103 102 131
		f 3 58 155 -155
		mu 0 3 102 101 131
		f 3 59 156 -156
		mu 0 3 101 100 131
		f 3 60 157 -157
		mu 0 3 100 99 131
		f 3 61 158 -158
		mu 0 3 99 98 131
		f 3 62 159 -159
		mu 0 3 98 129 131
		f 3 63 128 -160
		mu 0 3 129 128 131;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface1";
	rename -uid "F02C0924-4D3B-FCC6-2169-1FA81C495B21";
	setAttr ".rp" -type "double3" 0 0 0.5 ;
	setAttr ".sp" -type "double3" 0 0 0.5 ;
createNode mesh -n "polySurfaceShape2" -p "polySurface1";
	rename -uid "01C7DA97-4115-D33F-2222-6F96A5638AD8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "327C490B-419F-3E80-B60F-39A2E7C5B4D3";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "86257D24-41C9-ABA5-F639-16B9C3B6EF26";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "5B1D4261-4B25-A9FF-65DB-C49B582E1C2B";
createNode displayLayerManager -n "layerManager";
	rename -uid "4542DA14-477F-E080-ECBF-18ABBAEB5E21";
createNode displayLayer -n "defaultLayer";
	rename -uid "44F8FA10-4220-F403-24EF-03B18DB168A7";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "DA270E66-4413-0CD0-3622-A4AA0EDCD666";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "46A765C7-4997-9476-0E9B-6B8A8BC49400";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "4C354349-425A-67A8-6502-3D971698335B";
	setAttr ".version" -type "string" "5.2.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "6A0BE5F7-42F3-7924-06D1-A3A8498B8C45";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "9102F06E-41FA-51D6-5127-B0B579C276C4";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "571EDE10-449A-EBA7-2B69-7C8245CAE92F";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "B4DB1B2B-4884-18CB-E292-CF8241EA9642";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1467\n            -height 739\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n"
		+ "                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n"
		+ "                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1467\\n    -height 739\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1467\\n    -height 739\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8ACD34D7-4272-7164-A3EB-4FABD062AF03";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 150 -ast 0 -aet 250 ";
	setAttr ".st" 6;
createNode groupId -n "groupId9";
	rename -uid "75D52C7D-4EC6-D39B-7991-1FA76659192B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "EBC4F342-4CF7-197F-BD24-6F8065B65175";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	rename -uid "56249B59-4A8D-F7DB-E395-D19F421E1DBF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "554A9831-4A9D-6752-5D2F-AD9D2B7A4580";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "CC94D5B6-4331-7DD1-8448-B9B5B8334913";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "3D8E8C2F-40B7-03FD-80F1-77881E262DE5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	rename -uid "50596CA9-45ED-89C1-DDF6-97A69F40EE0C";
	setAttr ".ihi" 0;
createNode polySmoothFace -n "polySmoothFace1";
	rename -uid "93F6BAD2-46C3-8CD2-B513-8A91DA44BD05";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".mth" 1;
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyBoolean -n "polyBoolean1";
	rename -uid "97CEF251-4AAB-615C-A606-9A9355279A66";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
	setAttr ".op" -type "Int32Array" 4 2 2 2 2 ;
	setAttr ".ee" -type "Int32Array" 4 1 1 1 1 ;
	setAttr ".mg" -type "Int32Array" 4 871 854 864 -863 ;
createNode polyTriangulate -n "polyTriangulate1";
	rename -uid "B0442578-48F1-F4DC-2861-EBA8FACA2005";
	setAttr ".ics" -type "componentList" 1 "f[*]";
select -ne :time1;
	setAttr ".o" 0;
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
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polySmoothFace1.out" "pCylinderShape1.i";
connectAttr "groupId7.id" "pCylinderShape47.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape47.iog.og[2].gco";
connectAttr "groupId8.id" "pCylinderShape47.ciog.cog[3].cgid";
connectAttr "groupId9.id" "pCylinderShape50.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape50.iog.og[1].gco";
connectAttr "groupId10.id" "pCylinderShape51.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape51.iog.og[2].gco";
connectAttr "groupId11.id" "pCylinderShape51.ciog.cog[3].cgid";
connectAttr "polyTriangulate1.out" "polySurfaceShape2.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polySurfaceShape1.o" "polySmoothFace1.ip";
connectAttr "pCylinderShape1.o" "polyBoolean1.ip[0]";
connectAttr "pCylinderShape47.o" "polyBoolean1.ip[1]";
connectAttr "pCylinderShape51.o" "polyBoolean1.ip[2]";
connectAttr "pCylinderShape50.o" "polyBoolean1.ip[3]";
connectAttr "pCylinderShape1.wm" "polyBoolean1.im[0]";
connectAttr "pCylinderShape47.wm" "polyBoolean1.im[1]";
connectAttr "pCylinderShape51.wm" "polyBoolean1.im[2]";
connectAttr "pCylinderShape50.wm" "polyBoolean1.im[3]";
connectAttr "polyBoolean1.out" "polyTriangulate1.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape47.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape47.ciog.cog[3]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape50.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape51.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape51.ciog.cog[3]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
// End of barashek_m3.ma
