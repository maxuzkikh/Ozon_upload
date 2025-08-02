//Maya ASCII 2023 scene
//Name: knife.ma
//Last modified: Sat, Aug 02, 2025 04:05:42 PM
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
fileInfo "UUID" "DA00DF9C-45A9-4429-5C8D-46A31CB5AABF";
createNode transform -n "group51";
	rename -uid "60F2A2BA-4965-9DA0-FDB9-DAA70A199D0A";
createNode transform -s -n "persp";
	rename -uid "150A42F1-4D55-3513-8857-80A3EDB8464D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -14.540168614611714 -18.011091460845392 11.424723688299551 ;
	setAttr ".r" -type "double3" 61.282924915415215 0 -30.80509996613134 ;
	setAttr ".rp" -type "double3" -1.0658141036401503e-14 2.9309887850104133e-14 5.6843418860808015e-14 ;
	setAttr ".rpt" -type "double3" -2.5591990860237169e-14 -2.8865497109689264e-14 -3.0886961076498088e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "02384EDE-4625-242B-D2D5-43A9967F689D";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 24.405552098549158;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -6.8626383543014526 0 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "1F3900DF-475D-D6A0-BE56-E58530E1E07A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.8853616899017114 0.12651427528532933 1000.1 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "8207C470-4806-3BDA-9443-2ABAE1D0D09F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 10.658143740370566;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "D5DFB4CF-4034-400C-12CC-A9B7EB70DB36";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.6282893688807945 -1000.1 -0.098466172321182904 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "FF9425A1-49A4-5957-82D1-839C4FEEE81C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 5.1904949695948908;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "18669A5F-4337-6CC4-0893-17975277A786";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 90 0 90 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "74D04894-47E8-C7E6-DD77-82B61D6F72C2";
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
createNode transform -n "group52";
	rename -uid "0E8247A8-47FA-1712-7B4D-0792B10BB851";
	setAttr ".t" -type "double3" 0 6.5067617980332422 0 ;
createNode transform -n "group53";
	rename -uid "4F2B9B00-44A1-BC5D-C87C-7ABA981961FC";
createNode transform -n "group54";
	rename -uid "5BB4EB7F-4DA3-43EC-637E-4CB94A24B9D5";
createNode transform -n "polySurface27" -p "group54";
	rename -uid "D6E33C2E-450A-456E-FBE0-9F941C176ED2";
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74117649 0.74117649 0.74117649 ;
	setAttr ".s" -type "double3" 1 1 0.1 ;
createNode mesh -n "polySurfaceShape36" -p "|group54|polySurface27";
	rename -uid "CEC0D12C-4E5C-DD2C-03DA-678196725BED";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 14 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "booleanIntersection";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "bottom";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[6].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[7].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[8].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[9].gtagnm" -type "string" "front";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[10].gtagnm" -type "string" "right";
	setAttr ".gtag[10].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[11].gtagnm" -type "string" "sides";
	setAttr ".gtag[11].gtagcmp" -type "componentList" 1 "f[1:4]";
	setAttr ".gtag[12].gtagnm" -type "string" "top";
	setAttr ".gtag[12].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[13].gtagnm" -type "string" "topRing";
	setAttr ".gtag[13].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.56412991881370544 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.50325984 1 0.50325984
		 0.75 0.625 0.75 0.625 1 0.50325984 0.5 0.50325984 0.25 0.625 0.25 0.625 0.5 0.625
		 0 0.875 0 0.875 0.25 0.50325984 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0 0.49000001 0 0 -0.48999995 
		0 0 -0.48999995 0 0 0.49000001 0 0 -0.48999995 0 0 0.49000001 0 0 0.49000001 0 0 
		-0.48999995;
	setAttr -s 8 ".vt[0:7]"  1.14283466 -0.92500001 0.0099999998 1.14283466 -0.92500001 -0.0099999998
		 1.14283466 0.92500001 -0.0099999998 1.14283466 0.92500001 0.0099999998 -2.75 -0.92500001 -0.0099999998
		 -2.75 -0.92500001 0.0099999998 -1.5 0.92500001 0.0099999998 -1.5 0.92500001 -0.0099999998;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 1 2 0 3 0 0 1 4 0 4 5 0 5 0 0
		 6 7 0 4 7 0 6 5 0 3 6 0 2 7 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -7 -6 -5 -1
		mu 0 4 0 3 2 1
		f 4 10 9 6 -4
		mu 0 4 5 6 8 11
		f 4 -8 -11 -2 11
		mu 0 4 7 6 5 4
		f 4 -10 7 -9 5
		mu 0 4 8 6 10 9
		f 4 -12 -3 4 8
		mu 0 4 7 4 1 2
		f 4 2 1 3 0
		mu 0 4 1 4 5 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "knife";
	rename -uid "99D8FBB9-4EB4-E04D-24E8-2984569A6AA1";
createNode transform -n "group56";
	rename -uid "F45A2755-4D95-94CC-2EC9-6384A02EF82C";
createNode transform -n "polySurface27" -p "group56";
	rename -uid "41EEB90D-4926-612E-3695-57B75E7B94C5";
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74117649 0.74117649 0.74117649 ;
	setAttr ".s" -type "double3" 1 1 0.1 ;
createNode mesh -n "polySurfaceShape27" -p "|group56|polySurface27";
	rename -uid "6CB0E160-4416-CE75-9B5A-FEAE95BD2899";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.87800002 0.68599999 0.294 ;
	setAttr ".ovca" 0.30000001192092896;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
	setAttr -s 14 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "booleanIntersection";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "bottom";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[6].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[7].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[8].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[9].gtagnm" -type "string" "front";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[10].gtagnm" -type "string" "right";
	setAttr ".gtag[10].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[11].gtagnm" -type "string" "sides";
	setAttr ".gtag[11].gtagcmp" -type "componentList" 2 "f[1:4]" "f[6:9]";
	setAttr ".gtag[12].gtagnm" -type "string" "top";
	setAttr ".gtag[12].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[13].gtagnm" -type "string" "topRing";
	setAttr ".gtag[13].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.56412991881370544 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.50325984 1 0.50325984
		 0.75 0.625 0.75 0.625 1 0.50325984 0.5 0.50325984 0.25 0.625 0.25 0.625 0.5 0.625
		 0 0.875 0 0.875 0.25 0.50325984 0 0.625 0.5 0.625 0.25 0.50325984 0.25 0.50325984
		 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  1.14283466 -0.92500001 0.5 1.14283466 -0.92500001 -0.49999994
		 1.14283466 0.92500001 -0.49999994 1.14283466 0.92500001 0.5 -2.75 -0.92500001 -0.49999994
		 -2.75 -0.92500001 0.5 -1.5 0.92500001 0.5 -1.5 0.92500001 -0.49999994 -1.5 1.71167302 0.5
		 -1.5 1.71167302 -0.49999994 1.14283466 1.71167302 0.5 1.14283466 1.71167302 -0.49999994;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 1 1 2 0 3 0 0 1 4 0 4 5 0 5 0 0
		 6 7 0 4 7 0 6 5 0 3 6 1 2 7 1 6 8 0 7 9 0 8 9 0 3 10 0 10 8 0 2 11 0 11 10 0 11 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 -7 -6 -5 -1
		mu 0 4 0 3 2 1
		f 4 10 9 6 -4
		mu 0 4 5 6 8 11
		f 4 -15 -17 -19 19
		mu 0 4 12 13 14 15
		f 4 -10 7 -9 5
		mu 0 4 8 6 10 9
		f 4 -12 -3 4 8
		mu 0 4 7 4 1 2
		f 4 2 1 3 0
		mu 0 4 1 4 5 0
		f 4 -8 12 14 -14
		mu 0 4 7 6 13 12
		f 4 -11 15 16 -13
		mu 0 4 6 5 14 13
		f 4 -2 17 18 -16
		mu 0 4 5 4 15 14
		f 4 11 13 -20 -18
		mu 0 4 4 7 12 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape38" -p "|group56|polySurface27";
	rename -uid "B3E44479-49FF-15CB-3C83-75AF8CF521C9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 14 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "booleanIntersection";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "bottom";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[6].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[7].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[8].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[9].gtagnm" -type "string" "front";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[10].gtagnm" -type "string" "right";
	setAttr ".gtag[10].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[11].gtagnm" -type "string" "sides";
	setAttr ".gtag[11].gtagcmp" -type "componentList" 1 "f[1:4]";
	setAttr ".gtag[12].gtagnm" -type "string" "top";
	setAttr ".gtag[12].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[13].gtagnm" -type "string" "topRing";
	setAttr ".gtag[13].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.56412991881370544 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.50325984 1 0.50325984
		 0.75 0.625 0.75 0.625 1 0.50325984 0.5 0.50325984 0.25 0.625 0.25 0.625 0.5 0.625
		 0 0.875 0 0.875 0.25 0.50325984 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0 0.49000001 0 0 -0.48999995 
		0 0 -0.48999995 0 0 0.49000001 0 0 -0.48999995 0 0 0.49000001 0 0 0.49000001 0 0 
		-0.48999995;
	setAttr -s 8 ".vt[0:7]"  1.14283466 -0.92500001 0.0099999998 1.14283466 -0.92500001 -0.0099999998
		 1.14283466 0.92500001 -0.0099999998 1.14283466 0.92500001 0.0099999998 -2.75 -0.92500001 -0.0099999998
		 -2.75 -0.92500001 0.0099999998 -1.5 0.92500001 0.0099999998 -1.5 0.92500001 -0.0099999998;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 1 2 0 3 0 0 1 4 0 4 5 0 5 0 0
		 6 7 0 4 7 0 6 5 0 3 6 0 2 7 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -7 -6 -5 -1
		mu 0 4 0 3 2 1
		f 4 10 9 6 -4
		mu 0 4 5 6 8 11
		f 4 -8 -11 -2 11
		mu 0 4 7 6 5 4
		f 4 -10 7 -9 5
		mu 0 4 8 6 10 9
		f 4 -12 -3 4 8
		mu 0 4 7 4 1 2
		f 4 2 1 3 0
		mu 0 4 1 4 5 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCylinder46" -p "group56";
	rename -uid "A3C40E9B-43D7-ABE1-F1A8-8EBF00152A81";
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74117649 0.74117649 0.74117649 ;
	setAttr ".t" -type "double3" -3 0 5.7654644745316969e-16 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.41 0.64913359147796967 0.41 ;
createNode mesh -n "pCylinderShape46" -p "pCylinder46";
	rename -uid "CDA18E25-473F-0569-FDC7-A38073202421";
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
createNode transform -n "pCylinder47" -p "group56";
	rename -uid "02F4A995-4640-4854-897C-15955775DF09";
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74117649 0.74117649 0.74117649 ;
	setAttr ".t" -type "double3" -4.5877987632546082 1.6808483403729878e-13 0 ;
	setAttr ".r" -type "double3" 89.999999999997897 -90 1.526666247102488e-13 ;
	setAttr ".s" -type "double3" 0.153 1.5592604615410584 0.153 ;
createNode mesh -n "pCylinderShape47" -p "pCylinder47";
	rename -uid "A24A75B1-4EB1-E98E-DE21-E08656287895";
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
createNode transform -n "pCylinder45" -p "group56";
	rename -uid "2E4D1D8F-4639-9E72-7E72-098AFADB7806";
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74117649 0.74117649 0.74117649 ;
	setAttr ".t" -type "double3" 0.3 0.67561549819193767 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.153 0.8 0.153 ;
createNode mesh -n "pCylinderShape45" -p "pCylinder45";
	rename -uid "2C263881-4C5E-70A0-54FF-8390BA879FEA";
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
createNode transform -n "pCylinder44" -p "group56";
	rename -uid "F483629C-42B3-8101-7BB1-C69A6F63834C";
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74117649 0.74117649 0.74117649 ;
	setAttr ".t" -type "double3" -0.30031770894611826 0.67561549819193767 -0.049408351108567228 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.153 0.8 0.153 ;
createNode mesh -n "pCylinderShape44" -p "pCylinder44";
	rename -uid "7965663D-44A7-1CD9-8F7E-2FB9EA00DFBF";
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
createNode transform -n "pCube17" -p "group56";
	rename -uid "AD156A82-4AB0-B9DB-AD24-55BB99C959AE";
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.85882354 0.58039218 0.33725491 ;
	setAttr ".t" -type "double3" -1 0 0 ;
	setAttr ".s" -type "double3" 4 2.2611981701484853 0.8 ;
createNode mesh -n "pCubeShape17" -p "pCube17";
	rename -uid "D7D91CDE-4BE2-FD04-0210-6185C1A2A57B";
	setAttr -k off ".v";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[0:18]";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.87800002 0.68599999 0.294 ;
	setAttr ".ovca" 0.30000001192092896;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[18]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[1]" "f[13:14]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 3 "f[3]" "f[9:10]" "f[15:16]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[2]" "f[7:8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[4:6]" "f[11:12]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 48 ".uvst[0].uvsp[0:47]" -type "float2" 0.625 0 0.875 0 0.87499994
		 0.20000499 0.62589628 0.22451529 0.625 0.25 0.61638975 0.25185731 0.6080038 0.25185269
		 0.875 0.25 0.87499994 0.22493842 0.60027796 0.5 0.625 1 0.125 0.18750626 0.375 0.18750626
		 0.40326217 0.5 0.4103277 1 0.125 0.062493756 0.41032767 0 0.625 0.20000501 0.60027796
		 0.25 0.40326217 0.25 0.375 0.062493756 0.375 0.68750626 0.375 0.5624938 0.60706043
		 0.49869829 0.61531937 0.49844968 0.62499911 0.49999985 0.625 0.52506161 0.625 0.54999512
		 0.625 0.75 0.4103277 0.75 0.38949183 0.25276908 0.375 0.25 0.37451884 0.2178707 0.125
		 0.22038828 0.375 0.52961177 0.375 0.5 0.125 0.25 0.3894425 0.49733579 0.37352696
		 0.029482512 0.375 0 0.375 1 0.39454326 0 0.39454326 1 0.39456922 0.75082004 0.125
		 0 0.375 0.75 0.125 0.029611725 0.375 0.72038829;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".vt[0:33]"  0.25 -0.50000012 0.5 0.25 -0.50000012 -0.5
		 0.45686808 0.35491261 0.5 0.45118561 0.41022572 0.5 0.43384343 0.45733675 0.5 0.40754497 0.48890185 0.5
		 0.37638977 0.50000012 0.5 0.45000499 0.3000201 0.5 0.45000499 0.3000201 -0.5 0.37638977 0.50000012 -0.5
		 0.40754497 0.48890185 -0.5 0.43384343 0.45733675 -0.5 0.45118561 0.41022572 -0.5
		 0.45686808 0.35491261 -0.5 -0.66276652 0.48097199 0.5 -0.70861101 0.42678416 0.5
		 -0.73924333 0.34568641 0.5 -0.75 0.25002509 0.5 -0.60868919 0.50000012 0.5 -0.75 0.25002509 -0.5
		 -0.73924333 0.34568641 -0.5 -0.70861101 0.42678416 -0.5 -0.66276652 0.48097199 -0.5
		 -0.60868919 0.50000012 -0.5 -0.73924333 -0.34568641 0.5 -0.70861101 -0.42678416 0.5
		 -0.66276652 -0.48097199 0.5 -0.60868919 -0.50000012 0.5 -0.75 -0.25002509 0.5 -0.66276652 -0.48097199 -0.5
		 -0.70861101 -0.42678416 -0.5 -0.73924333 -0.34568641 -0.5 -0.75 -0.25002509 -0.5
		 -0.60868919 -0.50000012 -0.5;
	setAttr -s 51 ".ed[0:50]"  0 7 0 1 0 0 8 1 0 6 9 1 8 7 1 6 5 0 5 10 1
		 10 9 0 5 4 0 4 11 1 11 10 0 4 3 0 3 12 1 12 11 0 3 2 0 2 13 1 13 12 0 2 7 0 8 13 0
		 18 6 0 19 32 0 23 9 0 27 0 0 28 17 0 33 1 0 17 19 1 23 18 1 27 33 1 32 28 1 17 16 0
		 16 20 1 20 19 0 16 15 0 15 21 1 21 20 0 15 14 0 14 22 1 22 21 0 14 18 0 23 22 0 27 26 0
		 26 29 1 29 33 0 26 25 0 25 30 1 30 29 0 25 24 0 24 31 1 31 30 0 24 28 0 32 31 0;
	setAttr -s 19 -ch 102 ".fc[0:18]" -type "polyFaces" 
		f 4 26 19 3 -22
		mu 0 4 13 19 18 9
		f 4 27 24 1 -23
		mu 0 4 14 29 28 10
		f 4 -2 -3 4 -1
		mu 0 4 0 1 2 17
		f 4 28 23 25 20
		mu 0 4 15 20 12 11
		f 4 5 6 7 -4
		mu 0 4 18 6 23 9
		f 4 8 9 10 -7
		mu 0 4 6 5 24 23
		f 4 11 12 13 -10
		mu 0 4 5 4 25 24
		f 4 14 15 16 -13
		mu 0 4 4 3 8 7
		f 4 17 -5 18 -16
		mu 0 4 3 17 2 8
		f 4 29 30 31 -26
		mu 0 4 12 32 33 11
		f 4 32 33 34 -31
		mu 0 4 32 31 36 33
		f 4 35 36 37 -34
		mu 0 4 31 30 37 35
		f 4 38 -27 39 -37
		mu 0 4 30 19 13 37
		f 4 40 41 42 -28
		mu 0 4 14 42 43 29
		f 4 43 44 45 -42
		mu 0 4 42 40 45 43
		f 4 46 47 48 -45
		mu 0 4 39 38 46 44
		f 4 49 -29 50 -48
		mu 0 4 38 20 15 46
		f 17 -47 -44 -41 22 0 -18 -15 -12 -9 -6 -20 -39 -36 -33 -30 -24 -50
		mu 0 17 38 39 41 16 0 17 3 4 5 6 18 19 30 31 32 12 20
		f 17 -46 -49 -51 -21 -32 -35 -38 -40 21 -8 -11 -14 -17 -19 2 -25 -43
		mu 0 17 43 45 47 21 22 34 35 37 13 9 23 24 25 26 27 28 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface28" -p "group56";
	rename -uid "D99F86E2-4B12-3A10-328F-3ABE56E4676B";
createNode mesh -n "polySurfaceShape28" -p "polySurface28";
	rename -uid "0B519713-4C64-AA74-F042-5DA44A6FD79A";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:35]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 14 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[16]" "f[34]";
	setAttr ".gtag[1].gtagnm" -type "string" "booleanIntersection";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "e[4:31]" "e[35:43]";
	setAttr ".gtag[2].gtagnm" -type "string" "bottom";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[18]";
	setAttr ".gtag[3].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[6].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[7].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[8].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[9].gtagnm" -type "string" "front";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 2 "f[17]" "f[35]";
	setAttr ".gtag[10].gtagnm" -type "string" "right";
	setAttr ".gtag[10].gtagcmp" -type "componentList" 2 "f[15]" "f[33]";
	setAttr ".gtag[11].gtagnm" -type "string" "sides";
	setAttr ".gtag[11].gtagcmp" -type "componentList" 4 "f[1:9]" "f[11:13]" "f[19:27]" "f[29:31]";
	setAttr ".gtag[12].gtagnm" -type "string" "top";
	setAttr ".gtag[12].gtagcmp" -type "componentList" 4 "f[10]" "f[14]" "f[28]" "f[32]";
	setAttr ".gtag[13].gtagnm" -type "string" "topRing";
	setAttr ".gtag[13].gtagcmp" -type "componentList" 0;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 128 ".uvst[0].uvsp[0:127]" -type "float2" 0.50325984 1 0.50325984
		 0.75 0.625 0.75 0.625 1 0.52499986 0.48749998 0.51249987 0.48749998 0.51249987 0.51249999
		 0.52499986 0.51249999 0.53749985 0.48749998 0.53749985 0.51249999 0.49999988 0.48749998
		 0.49999988 0.51249999 0.54999983 0.48749998 0.54999983 0.51249999 0.48749989 0.48749998
		 0.48749989 0.51249999 0.56249982 0.48749998 0.56249982 0.51249999 0.57499981 0.48749998
		 0.57499981 0.51249999 0.48749989 0.48749998 0.48749986 0.51249999 0.5874998 0.48749998
		 0.5874998 0.51249999 0.50325984 0.5 0.50325984 0.25 0.51543385 0.25 0.51543385 0.5
		 0.59999979 0.48749998 0.59999979 0.51249999 0.61249977 0.48749998 0.61249977 0.51249999
		 0.61249977 0.51249999 0.61249977 0.48749998 0.53978187 0.25 0.625 0.25 0.625 0.5
		 0.53978187 0.5 0.625 0 0.875 0 0.875 0.25 0.51370674 0.533683 0.51408976 0.53994685
		 0.5154745 0.54559755 0.51770699 0.55008197 0.5205788 0.55296117 0.52383971 0.55395323
		 0.52721381 0.55296117 0.53041363 0.55008197 0.5331552 0.54559755 0.53517455 0.53994685
		 0.5362522 0.533683 0.50325984 0 0.53625214 0.21631701 0.53517461 0.21005315 0.5331552
		 0.20440245 0.53041363 0.19991802 0.52721381 0.19703883 0.52383977 0.19604674 0.52057886
		 0.19703884 0.51770705 0.19991803 0.5154745 0.20440245 0.51408982 0.21005316 0.51370674
		 0.21631701 0.50325984 1 0.50325984 0.75 0.625 0.75 0.625 1 0.52499986 0.48749998
		 0.51249987 0.48749998 0.51249987 0.51249999 0.52499986 0.51249999 0.53749985 0.48749998
		 0.53749985 0.51249999 0.49999988 0.48749998 0.49999988 0.51249999 0.54999983 0.48749998
		 0.54999983 0.51249999 0.48749989 0.48749998 0.48749989 0.51249999 0.56249982 0.48749998
		 0.56249982 0.51249999 0.57499981 0.48749998 0.57499981 0.51249999 0.48749989 0.48749998
		 0.48749986 0.51249999 0.5874998 0.48749998 0.5874998 0.51249999 0.50325984 0.5 0.50325984
		 0.25 0.51543385 0.25 0.51543385 0.5 0.59999979 0.48749998 0.59999979 0.51249999 0.61249977
		 0.48749998 0.61249977 0.51249999 0.61249977 0.51249999 0.61249977 0.48749998 0.53978187
		 0.25 0.625 0.25 0.625 0.5 0.53978187 0.5 0.625 0 0.875 0 0.875 0.25 0.51370674 0.533683
		 0.51408976 0.53994685 0.5154745 0.54559755 0.51770699 0.55008197 0.5205788 0.55296117
		 0.52383971 0.55395323 0.52721381 0.55296117 0.53041363 0.55008197 0.5331552 0.54559755
		 0.53517455 0.53994685 0.5362522 0.533683 0.50325984 0 0.53625214 0.21631701 0.53517461
		 0.21005315 0.5331552 0.20440245 0.53041363 0.19991802 0.52721381 0.19703883 0.52383977
		 0.19604674 0.52057886 0.19703884 0.51770705 0.19991803 0.5154745 0.20440245 0.51408982
		 0.21005316 0.51370674 0.21631701;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 64 ".vt[0:63]"  -5.5511151e-17 -0.92500001 0.0099999998 0 -0.92500001 -0.0099999998
		 2.75 -0.92500001 -0.0099999998 2.75 -0.92500001 0.0099999998 0.2118322 0.55439335 -0.0099999998
		 0.17864743 0.58757818 -0.0099999998 0.17864743 0.58757818 0.0099999998 0.2118322 0.55439335 0.0099999998
		 0.25364745 0.53308737 -0.0099999998 0.25364745 0.53308737 0.0099999998 0.1573415 0.62939334 -0.0099999998
		 0.1573415 0.62939334 0.0099999998 0.30000001 0.52574587 -0.0099999998 0.30000001 0.52574587 0.0099999998
		 0.14999998 0.6757459 -0.0099999998 0.14999998 0.6757459 0.0099999998 0.34635255 0.53308737 -0.0099999998
		 0.34635255 0.53308737 0.0099999998 0.3881678 0.55439335 -0.0099999998 0.3881678 0.55439335 0.0099999998
		 0.14999998 0.92500001 -0.0099999998 0.14999998 0.92500001 0.0099999998 0.42135257 0.58757818 -0.0099999998
		 0.42135257 0.58757818 0.0099999998 0 0.92500001 -0.0099999998 -5.5511151e-17 0.92500001 0.0099999998
		 0.44265848 0.62939334 -0.0099999998 0.44265848 0.62939334 0.0099999998 0.45000002 0.6757459 -0.0099999998
		 0.45000002 0.6757459 0.0099999998 0.45000002 0.92500001 0.0099999998 0.45000002 0.92500001 -0.0099999998
		 1.5 0.92500001 0.0099999998 1.5 0.92500001 -0.0099999998 -2.75 -0.92500001 -0.0099999998
		 -2.75 -0.92500001 0.0099999998 -0.2118322 0.55439335 -0.0099999998 -0.17864743 0.58757818 -0.0099999998
		 -0.17864743 0.58757818 0.0099999998 -0.2118322 0.55439335 0.0099999998 -0.25364745 0.53308737 -0.0099999998
		 -0.25364745 0.53308737 0.0099999998 -0.1573415 0.62939334 -0.0099999998 -0.1573415 0.62939334 0.0099999998
		 -0.30000001 0.52574587 -0.0099999998 -0.30000001 0.52574587 0.0099999998 -0.14999998 0.6757459 -0.0099999998
		 -0.14999998 0.6757459 0.0099999998 -0.34635255 0.53308737 -0.0099999998 -0.34635255 0.53308737 0.0099999998
		 -0.3881678 0.55439335 -0.0099999998 -0.3881678 0.55439335 0.0099999998 -0.14999998 0.92500001 -0.0099999998
		 -0.14999998 0.92500001 0.0099999998 -0.42135257 0.58757818 -0.0099999998 -0.42135257 0.58757818 0.0099999998
		 -0.44265848 0.62939334 -0.0099999998 -0.44265848 0.62939334 0.0099999998 -0.45000002 0.6757459 -0.0099999998
		 -0.45000002 0.6757459 0.0099999998 -0.45000002 0.92500001 0.0099999998 -0.45000002 0.92500001 -0.0099999998
		 -1.5 0.92500001 0.0099999998 -1.5 0.92500001 -0.0099999998;
	setAttr -s 98 ".ed[0:97]"  0 1 1 1 2 0 2 3 0 3 0 0 4 5 0 5 6 1 6 7 0
		 7 4 1 8 4 0 7 9 0 9 8 1 5 10 0 10 11 1 11 6 0 12 8 0 9 13 0 13 12 1 10 14 0 14 15 1
		 15 11 0 16 12 0 13 17 0 17 16 1 18 16 0 17 19 0 19 18 1 14 20 0 20 21 0 21 15 0 22 18 0
		 19 23 0 23 22 1 24 25 1 25 21 0 20 24 0 26 22 0 23 27 0 27 26 1 28 26 0 27 29 0 29 28 1
		 29 30 0 30 31 0 31 28 0 30 32 0 32 33 0 33 31 0 2 33 0 32 3 0 1 24 1 25 0 1 1 34 0
		 34 35 0 35 0 0 36 37 0 37 38 1 38 39 0 39 36 1 40 36 0 39 41 0 41 40 1 37 42 0 42 43 1
		 43 38 0 44 40 0 41 45 0 45 44 1 42 46 0 46 47 1 47 43 0 48 44 0 45 49 0 49 48 1 50 48 0
		 49 51 0 51 50 1 46 52 0 52 53 0 53 47 0 54 50 0 51 55 0 55 54 1 25 53 0 52 24 0 56 54 0
		 55 57 0 57 56 1 58 56 0 57 59 0 59 58 1 59 60 0 60 61 0 61 58 0 60 62 0 62 63 0 63 61 0
		 34 63 0 62 35 0;
	setAttr -s 36 -ch 196 ".fc[0:35]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 8 -8 9 10
		mu 0 4 8 4 7 9
		f 4 11 12 13 -6
		mu 0 4 5 10 11 6
		f 4 14 -11 15 16
		mu 0 4 12 8 9 13
		f 4 17 18 19 -13
		mu 0 4 10 14 15 11
		f 4 20 -17 21 22
		mu 0 4 16 12 13 17
		f 4 23 -23 24 25
		mu 0 4 18 16 17 19
		f 4 26 27 28 -19
		mu 0 4 14 20 21 15
		f 4 29 -26 30 31
		mu 0 4 22 18 19 23
		f 4 32 33 -28 34
		mu 0 4 24 25 26 27
		f 4 35 -32 36 37
		mu 0 4 28 22 23 29
		f 4 38 -38 39 40
		mu 0 4 30 28 29 31
		f 4 41 42 43 -41
		mu 0 4 31 32 33 30
		f 4 44 45 46 -43
		mu 0 4 34 35 36 37
		f 4 -3 47 -46 48
		mu 0 4 38 39 40 35
		f 17 49 -35 -27 -18 -12 -5 -9 -15 -21 -24 -30 -36 -39 -44 -47 -48 -2
		mu 0 17 1 24 27 41 42 43 44 45 46 47 48 49 50 51 37 36 2
		f 17 -4 -49 -45 -42 -40 -37 -31 -25 -22 -16 -10 -7 -14 -20 -29 -34 50
		mu 0 17 52 38 35 34 53 54 55 56 57 58 59 60 61 62 63 26 25
		f 4 -54 -53 -52 -1
		mu 0 4 64 67 66 65
		f 4 -58 -57 -56 -55
		mu 0 4 68 71 70 69
		f 4 -61 -60 57 -59
		mu 0 4 72 73 71 68
		f 4 55 -64 -63 -62
		mu 0 4 69 70 75 74
		f 4 -67 -66 60 -65
		mu 0 4 76 77 73 72
		f 4 62 -70 -69 -68
		mu 0 4 74 75 79 78
		f 4 -73 -72 66 -71
		mu 0 4 80 81 77 76
		f 4 -76 -75 72 -74
		mu 0 4 82 83 81 80
		f 4 68 -79 -78 -77
		mu 0 4 78 79 85 84
		f 4 -82 -81 75 -80
		mu 0 4 86 87 83 82
		f 4 -84 77 -83 -33
		mu 0 4 88 91 90 89
		f 4 -87 -86 81 -85
		mu 0 4 92 93 87 86
		f 4 -90 -89 86 -88
		mu 0 4 94 95 93 92
		f 4 89 -93 -92 -91
		mu 0 4 95 94 97 96
		f 4 91 -96 -95 -94
		mu 0 4 98 101 100 99
		f 4 -98 94 -97 52
		mu 0 4 102 99 104 103
		f 17 51 96 95 92 87 84 79 73 70 64 58 54 61 67 76 83 -50
		mu 0 17 65 66 100 101 115 114 113 112 111 110 109 108 107 106 105 91 88
		f 17 -51 82 78 69 63 56 59 65 71 74 80 85 88 90 93 97 53
		mu 0 17 116 89 90 127 126 125 124 123 122 121 120 119 118 117 98 99 102;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder48";
	rename -uid "67F42D36-4C0E-6CC2-7220-669CC3A0BD8C";
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.74117649 0.74117649 0.74117649 ;
	setAttr ".t" -type "double3" -3.7002083868886451 0 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.32 0.13 0.32 ;
createNode mesh -n "pCylinderShape48" -p "pCylinder48";
	rename -uid "6E020F3B-4A11-B3CC-9A51-A2A734D05F23";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.87800002 0.68599999 0.294 ;
	setAttr ".ovca" 0.30000001192092896;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
	setAttr ".pv" -type "double2" 0.45833331346511841 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt";
	setAttr ".pt[14]" -type "float3" -4.2211084 0 0 ;
	setAttr ".pt[15]" -type "float3" -3.721113 0 0 ;
	setAttr ".pt[16]" -type "float3" -3.721113 0 0 ;
	setAttr ".pt[17]" -type "float3" -4.2211084 0 0 ;
	setAttr ".pt[18]" -type "float3" -4.221108 0 0 ;
	setAttr ".pt[19]" -type "float3" -4.221108 0 0 ;
createNode transform -n "left";
	rename -uid "E10526A3-4396-ECA0-971E-30AC9FC0221E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1000.1 0.23047375160051242 0 ;
	setAttr ".r" -type "double3" 90 0 -90 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "9D14538F-4CA4-7FA8-4C42-A38A6F5A5608";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 10.247206137155054;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "polySurface29";
	rename -uid "45625570-462A-1B62-BBAA-E9A4F14385C5";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode mesh -n "polySurfaceShape40" -p "polySurface29";
	rename -uid "73457437-4F0A-C0A9-49DC-1299D0462109";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface30";
	rename -uid "C795F5DE-4890-A16D-75BA-EDBBD0BC76E3";
	setAttr ".s" -type "double3" 10 10 10 ;
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode mesh -n "polySurfaceShape30" -p "polySurface30";
	rename -uid "AA7AFB80-4DDE-3CD0-6A99-2980387E382D";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 14 "f[98:103]" "f[184:189]" "f[236:237]" "f[258:277]" "f[319:345]" "f[459:490]" "f[517:518]" "f[535:536]" "f[545:546]" "f[551:552]" "f[573:574]" "f[699:702]" "f[853:866]" "f[897:1111]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr -s 15 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[319:345]" "f[958:982]" "f[1045:1111]";
	setAttr ".gtag[1].gtagnm" -type "string" "booleanIntersection";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 37 "e[0:148]" "e[152:154]" "e[157:277]" "e[281:283]" "e[286:351]" "e[354:383]" "e[386]" "e[390]" "e[392]" "e[394]" "e[398]" "e[401]" "e[404]" "e[406:407]" "e[409:410]" "e[417:426]" "e[428]" "e[434:435]" "e[437]" "e[439:453]" "e[456:462]" "e[466:489]" "e[493:504]" "e[508:513]" "e[517:548]" "e[552:554]" "e[559:575]" "e[579:619]" "e[623:696]" "e[700:722]" "e[726:741]" "e[745]" "e[748]" "e[758:811]" "e[830:833]" "e[835]" "e[841]";
	setAttr ".gtag[2].gtagnm" -type "string" "bottom";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 7 "f[511:512]" "f[545:546]" "f[767:787]" "f[795:801]" "f[809:815]" "f[837:844]" "f[853:866]";
	setAttr ".gtag[3].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 6 "e[558]" "e[578]" "e[622]" "e[699]" "e[724]" "e[746]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 6 "vtx[368]" "vtx[371]" "vtx[386]" "vtx[419]" "vtx[477]" "vtx[496]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 6 "vtx[368]" "vtx[371]" "vtx[386]" "vtx[419]" "vtx[477]" "vtx[496]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 6 "vtx[368:371]" "vtx[386:387]" "vtx[418:419]" "vtx[476:477]" "vtx[496]" "vtx[509]";
	setAttr ".gtag[7].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 5 "vtx[369:370]" "vtx[387]" "vtx[418]" "vtx[476]" "vtx[509]";
	setAttr ".gtag[8].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 5 "vtx[369:370]" "vtx[387]" "vtx[418]" "vtx[476]" "vtx[509]";
	setAttr ".gtag[9].gtagnm" -type "string" "front";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 3 "f[459:490]" "f[897:921]" "f[983:1044]";
	setAttr ".gtag[10].gtagnm" -type "string" "left";
	setAttr ".gtag[10].gtagcmp" -type "componentList" 4 "f[551:552]" "f[573:574]" "f[699:702]" "f[922:957]";
	setAttr ".gtag[11].gtagnm" -type "string" "right";
	setAttr ".gtag[11].gtagcmp" -type "componentList" 4 "f[184:189]" "f[236:237]" "f[264:265]" "f[272:277]";
	setAttr ".gtag[12].gtagnm" -type "string" "sides";
	setAttr ".gtag[12].gtagcmp" -type "componentList" 15 "f[0:97]" "f[104:183]" "f[190:235]" "f[238:257]" "f[278:318]" "f[346:458]" "f[491:510]" "f[513:516]" "f[519:534]" "f[537:544]" "f[547:550]" "f[553:572]" "f[575:698]" "f[703:766]" "f[867:896]";
	setAttr ".gtag[13].gtagnm" -type "string" "top";
	setAttr ".gtag[13].gtagcmp" -type "componentList" 9 "f[98:103]" "f[258:263]" "f[266:271]" "f[517:518]" "f[535:536]" "f[788:794]" "f[802:808]" "f[816:836]" "f[845:852]";
	setAttr ".gtag[14].gtagnm" -type "string" "topRing";
	setAttr ".gtag[14].gtagcmp" -type "componentList" 6 "e[556]" "e[577]" "e[620]" "e[697]" "e[743]" "e[750]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1086 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.5625 0.41783011 0.5546875
		 0.41783011 0.5546875 0.49986136 0.5625 0.49986136 0.4921875 0.41783011 0.484375 0.41783011
		 0.484375 0.49986136 0.4921875 0.49986136 0.5703125 0.41783011 0.5703125 0.49986136
		 0.4765625 0.41783011 0.4765625 0.49986136 0.578125 0.41783011 0.578125 0.49986136
		 0.46875 0.41783011 0.46875 0.49986136 0.5859375 0.41783011 0.5859375 0.49986136 0.4609375
		 0.41783011 0.4609375 0.49986136 0.59375 0.41783011 0.59375 0.49986136 0.453125 0.41783011
		 0.453125 0.49986136 0.6015625 0.41783011 0.6015625 0.49986136 0.4453125 0.41783011
		 0.4375 0.41783011 0.4375 0.49986136 0.4453125 0.49986136 0.609375 0.41783011 0.609375
		 0.49986136 0.44895324 0.41783011 0.6171875 0.41783011 0.6171875 0.49986136 0.625
		 0.41783011 0.625 0.49986136 0.42968753 0.41783011 0.42187503 0.41783011 0.421875
		 0.49986136 0.4296875 0.49986136 0.3828125 0.41783011 0.375 0.41783011 0.375 0.49986136
		 0.3828125 0.49986136 0.41406253 0.41783011 0.4140625 0.49986136 0.390625 0.41783011
		 0.390625 0.49986136 0.40625003 0.41783011 0.40625 0.49986136 0.3984375 0.41783011
		 0.3984375 0.49986136 0.5234375 0.52329886 0.5234375 0.60533011 0.53125 0.60533011
		 0.53125 0.52329886 0.515625 0.52329886 0.515625 0.60533011 0.43719539 0.41783005
		 0.5390625 0.60533011 0.5390625 0.52329886 0.5078125 0.52329886 0.5078125 0.60533011
		 0.546875 0.60533011 0.546875 0.52329886 0.5 0.52329886 0.5 0.60533011 0.5546875 0.60533011
		 0.5546875 0.52329886 0.4921875 0.52329886 0.4921875 0.60533011 0.5625 0.60533011
		 0.5625 0.52329886 0.484375 0.52329886 0.484375 0.60533011 0.5703125 0.60533011 0.5703125
		 0.52329886 0.4765625 0.52329886 0.4765625 0.60533011 0.53125 0.40625 0.5234375 0.40625
		 0.5234375 0.48828125 0.53125 0.48828125 0.515625 0.40625 0.515625 0.48828125 0.578125
		 0.60533011 0.578125 0.52329886 0.46875 0.52329886 0.46875 0.60533011 0.5390625 0.40625
		 0.5390625 0.48828125 0.5078125 0.40625 0.5078125 0.48828125 0.546875 0.40625 0.546875
		 0.48828125 0.5 0.40625 0.5 0.48828125 0.5859375 0.60533011 0.5859375 0.52329886 0.4609375
		 0.52329886 0.4609375 0.60533011 0.5546875 0.40625 0.5546875 0.48828125 0.4921875
		 0.40625 0.4921875 0.48828125 0.40326217 0.5 0.40326217 0.25 0.60027796 0.25 0.60027796
		 0.359375 0.5 0.359375 0.5 0.390625 0.60027796 0.390625 0.60027796 0.5 0.5625 0.40625
		 0.5625 0.48828125 0.484375 0.40625 0.484375 0.48828125 0.59375 0.60533011 0.59375
		 0.52329886 0.453125 0.52329886 0.453125 0.60533011 0.5703125 0.40625 0.5703125 0.48828125
		 0.4765625 0.40625 0.4765625 0.48828125 0.6015625 0.60533011 0.6015625 0.52329886
		 0.578125 0.40625 0.578125 0.48828125 0.46875 0.40625 0.46875 0.48828125 0.4375 0.52329886
		 0.4375 0.60533011 0.4453125 0.60533011 0.4453125 0.52329886 0.609375 0.60533011 0.609375
		 0.52329886 0.5859375 0.40625 0.5859375 0.48828125 0.4609375 0.40625 0.4609375 0.48828125
		 0.6171875 0.60533011 0.6171875 0.52329886 0.625 0.60533011 0.625 0.52329886 0.421875
		 0.52329886 0.421875 0.60533011 0.42968747 0.60533011 0.4296875 0.52329886 0.59375
		 0.40625 0.59375 0.48828125 0.453125 0.40625 0.453125 0.48828125 0.375 0.52329886
		 0.375 0.60533011 0.3828125 0.60533011 0.3828125 0.52329886 0.4140625 0.52329886 0.4140625
		 0.60533011 0.390625 0.60533011 0.390625 0.52329886 0.40625 0.52329886 0.40625 0.60533011
		 0.6015625 0.40625 0.6015625 0.48828125 0.4453125 0.40625 0.4453125 0.48828125 0.3984375
		 0.60533011 0.3984375 0.52329886 0.4375 0.40625 0.4375 0.48828125 0.609375 0.40625
		 0.609375 0.48828125 0.4296875 0.40625 0.4296875 0.48828125 0.6171875 0.40625 0.6171875
		 0.48828125 0.625 0.40625 0.625 0.48828125 0.421875 0.40625 0.421875 0.48828125 0.3828125
		 0.40625 0.375 0.40625 0.375 0.48828125 0.3828125 0.48828125 0.4140625 0.40625 0.4140625
		 0.48828125 0.390625 0.40625 0.390625 0.48828125 0.40625 0.40625 0.40625 0.48828125
		 0.3984375 0.40625 0.3984375 0.48828125 0.5234375 0.51171875 0.5234375 0.59375 0.53125
		 0.59375 0.53125 0.51171875 0.515625 0.51171875 0.515625 0.59375 0.625 0 0.875 0 0.87499994
		 0.20000499 0.765625 0.20000499 0.765625 0.022731233 0.73437494 0.022731233 0.734375
		 0.20000499 0.625 0.20000501 0.5390625 0.59375 0.5390625 0.51171875 0.5078125 0.51171875
		 0.5078125 0.59375 0.546875 0.59375 0.546875 0.51171875 0.5 0.51171875 0.5 0.59375
		 0.5546875 0.59375 0.5546875 0.51171875 0.4921875 0.51171875 0.4921875 0.59375 0.5625
		 0.59375 0.5625 0.51171875 0.484375 0.51171875 0.484375 0.59375 0.44895324 0.60533011
		 0.5703125 0.59375 0.5703125 0.51171875 0.4765625 0.51171875 0.4765625 0.59375 0.578125
		 0.59375 0.578125 0.51171875 0.46875 0.51171875 0.46875 0.59375 0.5859375 0.59375
		 0.5859375 0.51171875 0.4609375 0.51171875 0.4609375 0.59375 0.43719542 0.60533011
		 0.59375 0.59375 0.59375 0.51171875 0.453125 0.51171875 0.453125 0.59375 0.6015625
		 0.59375 0.6015625 0.51171875 0.4453125 0.51171875 0.4453125 0.59375 0.4375 0.51171875
		 0.4375 0.59375 0.609375 0.59375 0.609375 0.51171875;
	setAttr ".uvst[0].uvsp[250:499]" 0.87499994 0.22493842 0.76601708 0.22475329
		 0.4296875 0.51171875 0.4296875 0.59375 0.6171875 0.59375 0.6171875 0.51171875 0.625
		 0.59375 0.625 0.51171875 0.421875 0.51171875 0.421875 0.59375 0.375 0.51171875 0.375
		 0.59375 0.3828125 0.59375 0.3828125 0.51171875 0.4140625 0.51171875 0.4140625 0.59375
		 0.390625 0.59375 0.390625 0.51171875 0.40625 0.51171875 0.40625 0.59375 0.3984375
		 0.59375 0.3984375 0.51171875 0.60747313 0.39070332 0.60706043 0.49869832 0.62499952
		 0.39062491 0.62499911 0.49999985 0.61531937 0.49844968 0.61578763 0.39056551 0.62589628
		 0.22451527 0.73487914 0.22470041 0.6080038 0.25185269 0.60759103 0.35984766 0.61638975
		 0.25185731 0.625 0.25 0.62499964 0.35937494 0.6159215 0.35974145 0.875 0.25 0.765625
		 0.25 0.76563323 0.24947481 0.73438543 0.24947378 0.734375 0.25 0.51881206 0.5 0.51883376
		 0.5 0.52202922 0.5 0.5268749 0.5 0.53261548 0.5 0.625 0.5 0.625 0.5 0.625 0.25 0.625
		 0.25 0.53261548 0.25 0.5268749 0.25 0.52202922 0.25 0.51883376 0.25 0.51881206 0.25
		 0.625 0.75 0.53615612 0.75 0.53442043 0.54832047 0.53530711 0.55089176 0.53636134
		 0.55280244 0.53754383 0.55397904 0.5388124 0.5543763 0.54012233 0.55397898 0.54142797
		 0.55280238 0.54268336 0.55089182 0.54384351 0.54832053 0.54486573 0.54518741 0.54571092
		 0.54161286 0.54634511 0.53773421 0.54674107 0.53370059 0.55981374 0.53370059 0.559609
		 0.53773421 0.55967122 0.54161286 0.55999374 0.54518741 0.56056124 0.54832053 0.56135005
		 0.55089176 0.56233025 0.55280244 0.56346571 0.55397898 0.56471646 0.5543763 0.56603867
		 0.55397898 0.56738621 0.55280244 0.56871122 0.55089182 0.56996578 0.54832053 0.57110262
		 0.54518741 0.57207751 0.54161286 0.57285035 0.53773427 0.57338762 0.53370059 0.60740453
		 0.55102581 0.60695022 0.54747957 0.60617715 0.54398221 0.60510898 0.54071087 0.60378164
		 0.53782052 0.60224468 0.53542274 0.60055935 0.53358173 0.59879398 0.53232646 0.59701896
		 0.53166759 0.59530365 0.5316081 0.59371388 0.53214455 0.59231037 0.53326231 0.59114647
		 0.53493053 0.59026664 0.53709811 0.58970469 0.53969377 0.58948267 0.5426271 0.58960927
		 0.54579228 0.59008056 0.54907221 0.57381696 0.54978144 0.5730294 0.54653496 0.57195044
		 0.54342794 0.57062215 0.54057682 0.56909561 0.53808743 0.56742936 0.53605205 0.56568676
		 0.53454638 0.56393409 0.53362793 0.56223756 0.53333205 0.56072289 0.53365868 0.51707846
		 0.2334497 0.51780283 0.21667635 0.53615612 0 0.625 0 0.57338762 0.2162994 0.57285029
		 0.21226577 0.57207751 0.20838717 0.57110268 0.20481262 0.56996572 0.2016795 0.56871128
		 0.1991082 0.56738621 0.19719756 0.56603867 0.19602099 0.56471646 0.19562373 0.56346571
		 0.19602099 0.56233025 0.19719756 0.56135005 0.19910818 0.56056124 0.20167948 0.55999374
		 0.2048126 0.55967122 0.20838717 0.559609 0.21226576 0.55981374 0.21629938 0.54674107
		 0.21629938 0.54634511 0.21226576 0.54571092 0.20838717 0.54486579 0.20481262 0.54384351
		 0.2016795 0.5426833 0.19910821 0.54142797 0.19719756 0.54012233 0.19602099 0.5388124
		 0.19562373 0.53754383 0.19602099 0.53636134 0.19719756 0.53530717 0.19910818 0.53442043
		 0.20167947 0.51780277 0.53332365 0.51707846 0.5165503 0.57366449 0.52966696 0.57366598
		 0.52578837 0.57338893 0.52221382 0.57284176 0.5190807 0.57204527 0.51650941 0.57103074
		 0.51459879 0.56983924 0.51342225 0.56851959 0.51302499 0.56712574 0.51342225 0.56571484
		 0.51459879 0.56434405 0.51650941 0.56306857 0.5190807 0.56193876 0.52221382 0.56099814
		 0.52578837 0.56028152 0.52966702 0.54687989 0.52966702 0.54675227 0.52578837 0.5463596
		 0.52221388 0.54571396 0.5190807 0.54483867 0.51650941 0.54376662 0.51459879 0.54253995
		 0.51342219 0.54120761 0.51302499 0.53982383 0.51342225 0.53844517 0.51459879 0.53712857
		 0.51650941 0.53592849 0.5190807 0.53489369 0.52221382 0.53406572 0.52578837 0.53347588
		 0.52966702 0.53314477 0.53370059 0.533081 0.53773421 0.53328228 0.54161286 0.53373593
		 0.54518741 0.53373587 0.2048126 0.53328228 0.20838715 0.533081 0.21226576 0.53314477
		 0.21629938 0.53347588 0.220333 0.53406572 0.2242116 0.53489369 0.22778615 0.53592843
		 0.23091927 0.53712857 0.23349056 0.53844517 0.2354012 0.53982383 0.23657778 0.54120761
		 0.23697504 0.54253995 0.23657776 0.54376662 0.2354012 0.54483867 0.23349057 0.54571396
		 0.23091929 0.5463596 0.22778618 0.54675227 0.22421163 0.54687989 0.22033302 0.56028152
		 0.220333 0.56099814 0.2242116 0.56193876 0.22778615 0.56306851 0.23091927 0.56434405
		 0.23349056 0.56571484 0.23540121 0.56712574 0.23657778 0.56851959 0.23697504 0.56983924
		 0.23657778 0.57103074 0.2354012 0.57204527 0.23349059 0.57284176 0.23091929 0.57338893
		 0.22778618 0.57366598 0.22421163 0.57366449 0.22033302 0.56071353 0.21633169 0.56222951
		 0.21665883 0.56392819 0.21636371 0.56568378 0.21544597 0.56743038 0.21394147 0.56910115
		 0.21190715 0.57063264 0.20941892 0.57196558 0.20656884 0.57304859 0.20346269 0.57383955
		 0.20021693 0.59014964 0.20093659 0.58967745 0.20421648 0.58955091 0.20738193 0.58977401
		 0.21031578 0.59033877 0.21291246 0.59122318 0.21508148 0.59239465 0.21675174 0.59380895
		 0.21787237 0.59541285 0.21841218 0.59714556 0.21835639 0.59893912 0.21770084 0.60072172
		 0.2164474 0.60241985 0.2146062 0.6039632 0.21220586 0.6052891 0.20931157 0.60634923
		 0.20603615 0.60710979 0.20253551 0.60754979 0.19898701 0.5 0.41783011 0.5 0.49986136
		 0.546875 0.41783011;
	setAttr ".uvst[0].uvsp[500:749]" 0.546875 0.49986136 0.5078125 0.41783011 0.5078125
		 0.49986136 0.5390625 0.41783011 0.5390625 0.49986136 0.515625 0.41783011 0.515625
		 0.49986136 0.53125 0.41783011 0.53125 0.49986136 0.5234375 0.41783011 0.5234375 0.49986136
		 0.875 0 0.875 0.25 0.53615612 1 0.625 1 0.40625 0.38446134 0.3984375 0.38446134 0.3984375
		 0.61553866 0.40625 0.61553866 0.390625 0.38446134 0.390625 0.61553866 0.38949183
		 0.25276908 0.38944253 0.49733579 0.4140625 0.38446134 0.4140625 0.61553866 0.3828125
		 0.38446134 0.3828125 0.61553866 0.421875 0.38446134 0.421875 0.61553866 0.375 0.38446134
		 0.375 0.61553866 0.4296875 0.38446134 0.4296875 0.61553866 0.625 0.38446134 0.6171875
		 0.38446134 0.6171875 0.61553866 0.625 0.61553866 0.609375 0.38446134 0.609375 0.61553866
		 0.4375 0.38446134 0.4375 0.61553866 0.375 0.25 0.375 0.5 0.6015625 0.38446134 0.6015625
		 0.61553866 0.4453125 0.38446134 0.4453125 0.61553866 0.453125 0.38446134 0.453125
		 0.61553866 0.59375 0.38446134 0.59375 0.61553866 0.4103277 1 0.4103277 0.75 0.625
		 0.75 0.625 1 0.4609375 0.38446134 0.4609375 0.61553866 0.5859375 0.38446134 0.5859375
		 0.61553866 0.37451884 0.2178707 0.125 0.25 0.125 0.22038828 0.46875003 0.38446134
		 0.46875003 0.61553866 0.578125 0.38446134 0.578125 0.61553866 0.4765625 0.38446134
		 0.4765625 0.61553866 0.5703125 0.38446134 0.5703125 0.61553866 0.3984375 0.3563945
		 0.39843753 0.37763551 0.40625 0.37763548 0.40625 0.35570043 0.390625 0.3572402 0.390625
		 0.37763548 0.4140625 0.37763548 0.4140625 0.35518467 0.5625 0.38446134 0.5625 0.61553866
		 0.421875 0.37763548 0.421875 0.3548671 0.375 0.358017 0.375 0.37763551 0.3828125
		 0.37763551 0.3828125 0.35767704 0.375 0.18750626 0.125 0.18750626 0.4296875 0.37763548
		 0.4296875 0.35475987 0.54166663 0.3125 0.54166663 0.6875 0.58333331 0.6875 0.58333331
		 0.3125 0.609375 0.358017 0.609375 0.37763548 0.6171875 0.37763548 0.6171875 0.35837048
		 0.5546875 0.38446134 0.5546875 0.61553866 0.43749997 0.3548671 0.4375 0.37763548
		 0.4453125 0.37763548 0.4453125 0.35518467 0.6015625 0.35767704 0.6015625 0.37763548
		 0.45312497 0.37763548 0.453125 0.35570043 0.49999997 0.3125 0.49999997 0.6875 0.546875
		 0.38446134 0.546875 0.61553866 0.4609375 0.37763548 0.4609375 0.35639447 0.5859375
		 0.35639447 0.5859375 0.37763548 0.59375 0.37763545 0.59375 0.3572402 0.578125 0.35570043
		 0.578125 0.37763548 0.46875 0.37763551 0.46875 0.3572402 0.5390625 0.38446134 0.5390625
		 0.61553866 0.5703125 0.35518467 0.5703125 0.37763548 0.515625 0.38446134 0.5078125
		 0.38446134 0.5078125 0.61553866 0.515625 0.61553866 0.53125 0.38446134 0.53125 0.61553866
		 0.5234375 0.38446134 0.5234375 0.61553866 0.5625 0.3548671 0.5625 0.37763551 0.4765625
		 0.35767704 0.4765625 0.37763551 0.484375 0.37763548 0.484375 0.35801697 0.625 0.6875
		 0.625 0.3125 0.5546875 0.35475984 0.5546875 0.37763548 0.546875 0.3548671 0.546875
		 0.37763551 0.4921875 0.35837048 0.4921875 0.37763548 0.5 0.37763548 0.5 0.358017
		 0.5390625 0.35518467 0.5390625 0.37763548 0.5078125 0.37763548 0.5078125 0.35767704
		 0.53125 0.35570043 0.53125 0.37763548 0.5234375 0.3563945 0.5234375 0.37763551 0.515625
		 0.35724023 0.515625 0.37763551 0.3984375 0.40890026 0.3984375 0.42931762 0.40625
		 0.42931762 0.40625 0.40890023 0.390625 0.4089002 0.390625 0.42931762 0.4140625 0.42931762
		 0.4140625 0.40890023 0.421875 0.42931762 0.421875 0.40890026 0.375 0.40890023 0.375
		 0.42931762 0.3828125 0.42931762 0.3828125 0.40890023 0.4296875 0.42931762 0.42968747
		 0.4089002 0.6171875 0.42931762 0.625 0.42931762 0.625 0.40890023 0.6171875 0.40890023
		 0.609375 0.40890023 0.609375 0.42931762 0.6015625 0.40890023 0.6015625 0.42931762
		 0.4375 0.40890026 0.4375 0.42931762 0.4453125 0.42931762 0.4453125 0.40890023 0.453125
		 0.42931762 0.453125 0.40890023 0.4609375 0.42931762 0.4609375 0.40890023 0.5859375
		 0.4089002 0.5859375 0.42931762 0.59375 0.42931762 0.59375 0.4089002 0.46875 0.42931762
		 0.46874997 0.4089002 0.578125 0.40890023 0.578125 0.42931762 0.375 0.3125 0.375 0.6875
		 0.41666666 0.6875 0.41666666 0.3125 0.5703125 0.4089002 0.5703125 0.42931762 0.4765625
		 0.40890023 0.4765625 0.42931762 0.484375 0.42931762 0.484375 0.4089002 0.5625 0.40890023
		 0.5625 0.42931762 0.4921875 0.42931762 0.4921875 0.40890023 0.5546875 0.4089002 0.5546875
		 0.42931762 0.5 0.42931762 0.5 0.40890023 0.546875 0.40890023 0.546875 0.42931762
		 0.45833331 0.3125 0.49999994 0.3125 0.45833331 0.3125 0.5078125 0.42931762 0.5078125
		 0.40890023 0.5390625 0.40890023 0.5390625 0.42931762 0.53125 0.40890023 0.53125 0.42931762
		 0.515625 0.4089002 0.515625 0.42931762 0.5234375 0.42931762 0.5234375 0.40890023
		 0.49999997 0.6875 0.45833331 0.6875 0.45833331 0.6875 0.41666669 0.3125 0.41666666
		 0.6875 0.37352696 0.029482512 0.375 0.062493756 0.125 0.062493756 0.125 0.029611725
		 0.375 0 0.125 0 0.625 0.37763551 0.625 0.358017 0.6171875 0.35837048 0.4296875 0.37763551
		 0.4921875 0.35837048 0.38801712 0.40890023;
	setAttr ".uvst[0].uvsp[750:999]" 0.4296875 0.40890026 0.59635788 0.40890023
		 0.47135788 0.40890023 0.51301712 0.40890023 0.49999997 0.42912176 0.4921875 0.54419351
		 0.48927212 0.54334426 0.48646879 0.54082948 0.484375 0.53751981 0.484375 0.61553866
		 0.4921875 0.61553866 0.41666669 0.42912173 0.38914382 0.35742316 0.38801715 0.37763548
		 0.59523129 0.35742319 0.59635782 0.37763548 0.47023121 0.35742313 0.47135788 0.37763548
		 0.4921875 0.38446134 0.484375 0.38446134 0.484375 0.46248019 0.48646876 0.45917052
		 0.48927212 0.45665571 0.4921875 0.45580649 0.51414371 0.35742316 0.51301712 0.37763548
		 0.5 0.53751993 0.49790627 0.54082948 0.49510294 0.54334438 0.4921875 0.54419351 0.5
		 0.61553866 0.5 0.38446134 0.49218756 0.45580655 0.49510288 0.45665568 0.49790624
		 0.45917052 0.5 0.46248013 0.578125 0.29156649 0.53719354 0.22067107 0.52858913 0.22527023
		 0.51457459 0.22952148 0.50000006 0.23095703 0.48542541 0.22952154 0.47141087 0.22527029
		 0.46280646 0.22067112 0.421875 0.29156646 0.57812506 0.020933539 0.53719354 0.09182892
		 0.54150498 0.094133437 0.55282581 0.10342421 0.56211662 0.11474505 0.56902027 0.12766092
		 0.57327145 0.14167541 0.57470697 0.15625 0.65625 0.15625 0.45849502 0.21836662 0.44717419
		 0.20907582 0.43788338 0.19775498 0.43097973 0.18483913 0.42672849 0.1708246 0.42529303
		 0.15625 0.34375 0.15624997 0.42187503 0.70843351 0.46280646 0.77932882 0.47141087
		 0.77472973 0.48542541 0.77047849 0.50000006 0.76904297 0.51457465 0.77047849 0.52858913
		 0.77472979 0.53719354 0.77932894 0.57812506 0.70843351 0.42187503 0.020933509 0.46280649
		 0.09182889 0.4714109 0.087229736 0.48542541 0.082978472 0.50000006 0.081543021 0.51457465
		 0.082978502 0.52858913 0.087229759 0.65625 0.84375 0.57470697 0.84375 0.57327145
		 0.85832453 0.56902027 0.87233913 0.56211656 0.88525498 0.55282581 0.89657575 0.54150498
		 0.90586656 0.53719354 0.90817112 0.578125 0.97906649 0.42672849 0.14167537 0.43097976
		 0.12766086 0.43788344 0.11474499 0.44717419 0.10342416 0.45849502 0.094133392 0.34375
		 0.84375 0.42529303 0.84375 0.42672849 0.82917535 0.43097973 0.81516087 0.43788344
		 0.80224502 0.44717419 0.79092419 0.45849502 0.78163338 0.52858913 0.91277021 0.51457465
		 0.91702151 0.5 0.91845703 0.48542538 0.91702151 0.47141087 0.91277027 0.46280646
		 0.90817118 0.421875 0.97906649 0.45849502 0.90586662 0.44717419 0.89657587 0.43788344
		 0.88525498 0.43097976 0.87233913 0.42672849 0.85832465 0.57470691 0.15625003 0.57327145
		 0.17082465 0.56902021 0.18483913 0.56211656 0.19775499 0.55282581 0.20907582 0.54150498
		 0.21836658 0.54150498 0.78163338 0.55282581 0.79092419 0.56211656 0.80224502 0.56902027
		 0.81516081 0.57327145 0.82917535 0.57470691 0.84374994 0.39454326 1 0.39454725 0.96172851
		 0.40044594 0.96167856 0.40045169 0.87525678 0.40045744 0.78883493 0.39456522 0.78909153
		 0.39456925 0.75081998 0.375 1 0.375 0.75 0.37545195 0.78841269 0.37545177 0.87500942
		 0.37545159 0.96160626 0.48386562 0.53674555 0.48151058 0.53124952 0.47957784 0.52455258
		 0.47814167 0.5169121 0.47725731 0.50862175 0.47695869 0.50000006 0.47725731 0.49137831
		 0.47814167 0.4830879 0.47957784 0.47544742 0.48151055 0.46875048 0.48386559 0.46325448
		 0.50050944 0.46325445 0.50286448 0.46875048 0.50479716 0.47544742 0.50623333 0.4830879
		 0.50711775 0.49137825 0.50741631 0.5 0.50711769 0.50862169 0.50623333 0.5169121 0.50479722
		 0.52455258 0.50286448 0.53124952 0.50050938 0.53674555 0.40712062 0.12504458 0.40738213
		 0.13421917 0.40847066 0.14304113 0.41034281 0.1511558 0.41293672 0.15822044 0.41616604
		 0.16393808 0.41991407 0.16809243 0.42403784 0.17055708 0.42838201 0.17127833 0.4327907
		 0.17025684 0.43711269 0.16754247 0.44120133 0.16323768 0.44491524 0.15750049 0.44811976
		 0.15054266 0.45069149 0.14262351 0.45252234 0.13404043 0.45352554 0.12511744 0.55871332
		 0.21462956 0.55928254 0.21535775 0.56065625 0.21631908 0.20218752 0.125 0.20310625
		 0.12830013 0.20582706 0.13147341 0.2102454 0.13439792 0.21619152 0.13696128 0.22343683
		 0.13906497 0.23170298 0.14062816 0.24067228 0.14159077 0.25000003 0.1419158 0.25932777
		 0.14159076 0.26829705 0.14062814 0.2765632 0.13906497 0.28380853 0.13696128 0.2897546
		 0.13439791 0.29417297 0.13147339 0.29689375 0.12830012 0.29781252 0.125 0.29689381
		 0.1216999 0.294173 0.11852661 0.28975463 0.11560209 0.28380853 0.11303873 0.2765632
		 0.11093503 0.26829705 0.10937185 0.25932777 0.10840924 0.24999999 0.10808421 0.24067226
		 0.10840924 0.23170294 0.10937184 0.2234368 0.11093504 0.21619146 0.11303873 0.21024537
		 0.11560211 0.20582703 0.11852662 0.20310622 0.12169991 0.45356023 0.62484688 0.45255592
		 0.61591995 0.45072424 0.60733265 0.4481521 0.59940898 0.44494742 0.59244603 0.44123405
		 0.58670259 0.43714646 0.58239019 0.43282622 0.57966661 0.42842004 0.57863379 0.42407915
		 0.57934225 0.41995919 0.58179414 0.41621509 0.58593893 0.41298911 0.59165418 0.41039789
		 0.59872574 0.40852821 0.60685545 0.40744299 0.61569619 0.40718681 0.62488943 0.375
		 0.5624938 0.375 0.52961177 0.56066549 0.53367126 0.55929214 0.53463233 0.55872315
		 0.53536034 0.39454326 0 0.41032767 0 0.60765785 0.19556415 0.60743135 0.19241841
		 0.60687661 0.18967403 0.60601097 0.18742938 0.60486335 0.18575938 0.6034745 0.18471596
		 0.60189509 0.18432859 0.60018617 0.18460347 0.59841269 0.18552291 0.59664434 0.18704651
		 0.59495038 0.18911208 0.59339708 0.19163777 0.59204608 0.19452569 0.59094954 0.19766514
		 0.57430696 0.196955 0.57443208 0.19380307 0.57420903 0.19088431 0.57364571 0.18831393;
	setAttr ".uvst[0].uvsp[1000:1085]" 0.57276279 0.18619327 0.57159382 0.18460613
		 0.57018405 0.1836147 0.5685882 0.18325773 0.56686825 0.18354867 0.56509209 0.18447578
		 0.56332916 0.18600246 0.56164825 0.18806894 0.56011516 0.19059452 0.55878848 0.19348097
		 0.55771869 0.1966162 0.55694622 0.19987872 0.55649948 0.2031426 0.55639422 0.2062819
		 0.55663323 0.20917596 0.55720687 0.21171404 0.55809218 0.21379955 0.4536415 0.11619224
		 0.45284343 0.10760298 0.45114157 0.09967462 0.44858542 0.092705913 0.44526425 0.086957596
		 0.44130439 0.082642615 0.43686509 0.07991948 0.43213311 0.078890145 0.42731616 0.079602651
		 0.42263484 0.08205536 0.41830796 0.086193882 0.41453022 0.091894418 0.41144991 0.09894529
		 0.40916082 0.10705198 0.40771171 0.11587074 0.375 0.72038829 0.375 0.68750626 0.40778536
		 0.63408011 0.4092429 0.64291322 0.4115389 0.65103203 0.41462201 0.65809262 0.4183971
		 0.6637997 0.42271721 0.66794115 0.42738995 0.67039371 0.43219835 0.67110372 0.43692294
		 0.67007095 0.44135618 0.66734397 0.44531128 0.6630252 0.44862872 0.65727317 0.45118195
		 0.65030086 0.45288154 0.64236879 0.45367771 0.63377583 0.55810183 0.53619015 0.55721569
		 0.53827566 0.55664098 0.54081386 0.55640006 0.54370832 0.55650336 0.54684812 0.55694795
		 0.55011249 0.55771786 0.55337572 0.55878502 0.55651176 0.56010926 0.55939895 0.56163979
		 0.56192529 0.56331795 0.56399256 0.56507832 0.56552005 0.56685185 0.56644797 0.56856936
		 0.56673956 0.57016307 0.56638312 0.57157105 0.56539237 0.57273817 0.56380558 0.57361996
		 0.56168526 0.57418275 0.55911487 0.57440597 0.55619621 0.57428205 0.55304396 0.59087867
		 0.55234379 0.59197336 0.55548346 0.59332234 0.5583716 0.59487319 0.56089765 0.59656489
		 0.56296343 0.59833103 0.56448728 0.60010189 0.56540692 0.60180825 0.56568187 0.60338378
		 0.56529456 0.60476834 0.56425124 0.60591012 0.56258118 0.60676801 0.56033671 0.60731268
		 0.55759263 0.60752684 0.55444747 0.625 0.52506161 0.625 0.54999512;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 544 ".vt";
	setAttr ".vt[0:165]"  -0.27046892 0.52555537 -0.40000001 -0.30031773 0.52261555 -0.40000001
		 -0.30031773 0.52261555 -0.049999993 -0.27046892 0.52555537 -0.049999993 -0.45331758 0.67561555 -0.40000001
		 -0.45037773 0.70546436 -0.40000001 -0.45037773 0.70546436 -0.049999993 -0.45331758 0.67561555 -0.049999993
		 -0.24176717 0.53426194 -0.40000001 -0.24176717 0.53426194 -0.049999993 -0.44167113 0.73416609 -0.40000001
		 -0.44167113 0.73416609 -0.049999993 -0.21531549 0.54840064 -0.40000001 -0.21531549 0.54840064 -0.049999993
		 -0.42753243 0.76061773 -0.40000001 -0.42753243 0.76061773 -0.049999993 -0.1921304 0.56742817 -0.40000001
		 -0.1921304 0.56742817 -0.049999993 -0.4085049 0.78380275 -0.40000001 -0.4085049 0.78380275 -0.049999993
		 -0.17310287 0.59061325 -0.40000001 -0.17310287 0.59061325 -0.049999993 -0.38531983 0.80283028 -0.40000001
		 -0.38531983 0.80283028 -0.049999993 -0.15896416 0.61706495 -0.40000001 -0.15896416 0.61706495 -0.049999993
		 -0.35886815 0.81696892 -0.40000001 -0.33016643 0.82567549 -0.40000001 -0.33016643 0.82567549 -0.049999993
		 -0.35886815 0.81696892 -0.049999993 -0.15025756 0.64576668 -0.40000001 -0.15025756 0.64576668 -0.049999993
		 -0.37119502 0.8103801 -0.40000001 -0.14731771 0.67561549 -0.40000001 -0.14731771 0.67561549 -0.049999993
		 -0.15025772 0.70546418 -0.40000001 -0.15025772 0.70546418 -0.049999993 -0.30031765 0.82861531 -0.40000001
		 -0.27046886 0.82567549 -0.40000001 -0.27046886 0.82567549 -0.049999993 -0.30031765 0.82861531 -0.049999993
		 -0.15896428 0.73416591 -0.40000001 -0.15896428 0.73416591 -0.049999993 -0.24176714 0.81696892 -0.40000001
		 -0.24176714 0.81696892 -0.049999993 -0.17310296 0.76061761 -0.40000001 -0.17310296 0.76061761 -0.049999993
		 -0.21531549 0.80283016 -0.40000001 -0.21531549 0.80283016 -0.049999993 -0.19213043 0.78380263 -0.40000001
		 -0.19213043 0.78380263 -0.049999993 -0.40850502 0.56742823 0.050000001 -0.40850502 0.56742823 0.40000001
		 -0.38531995 0.5484007 0.40000001 -0.38531995 0.5484007 0.050000001 -0.42753249 0.59061331 0.050000001
		 -0.42753249 0.59061331 0.40000001 -0.32900277 0.82579011 -0.40000001 -0.35886827 0.534262 0.40000001
		 -0.35886827 0.534262 0.050000001 -0.44167119 0.61706501 0.050000001 -0.44167119 0.61706501 0.40000001
		 -0.33016655 0.52555537 0.40000001 -0.33016655 0.52555537 0.050000001 -0.45037776 0.64576674 0.050000001
		 -0.45037776 0.64576674 0.40000001 -0.30031773 0.52261555 0.40000001 -0.30031773 0.52261555 0.050000001
		 -0.45331758 0.67561555 0.050000001 -0.45331758 0.67561555 0.40000001 -0.27046892 0.52555537 0.40000001
		 -0.27046892 0.52555537 0.050000001 -0.45037773 0.70546436 0.050000001 -0.45037773 0.70546436 0.40000001
		 -0.24176717 0.53426194 0.40000001 -0.24176717 0.53426194 0.050000001 -0.44167113 0.73416609 0.050000001
		 -0.44167113 0.73416609 0.40000001 0.21499777 0.5484007 -0.40000001 0.19181269 0.56742823 -0.40000001
		 0.19181269 0.56742823 -0.049999993 0.21499777 0.5484007 -0.049999993 0.17278521 0.59061331 -0.40000001
		 0.17278521 0.59061331 -0.049999993 -0.21531549 0.54840064 0.40000001 -0.21531549 0.54840064 0.050000001
		 -0.42753243 0.76061773 0.050000001 -0.42753243 0.76061773 0.40000001 0.24144945 0.534262 -0.40000001
		 0.24144945 0.534262 -0.049999993 0.15864651 0.61706501 -0.40000001 0.15864651 0.61706501 -0.049999993
		 0.27015117 0.52555537 -0.40000001 0.27015117 0.52555537 -0.049999993 0.14993994 0.64576674 -0.40000001
		 0.14993994 0.64576674 -0.049999993 -0.1921304 0.56742817 0.40000001 -0.1921304 0.56742817 0.050000001
		 -0.4085049 0.78380275 0.050000001 -0.4085049 0.78380275 0.40000001 0.29999998 0.52261555 -0.40000001
		 0.29999998 0.52261555 -0.049999993 0.14700012 0.67561555 -0.40000001 0.14700012 0.67561555 -0.049999993
		 -3.43475676 1.13059938 -0.40000001 -3.43475676 1.13059938 0.40000001 0.50555909 1.13059938 0.40000001
		 0.50555909 1.13059938 0.050000001 -1.5 1.13059938 0.050000001 -1.5 1.13059938 -0.049999993
		 0.50555909 1.13059938 -0.049999993 0.50555909 1.13059938 -0.40000001 0.3298488 0.52555537 -0.40000001
		 0.3298488 0.52555537 -0.049999993 0.14993998 0.70546436 -0.40000001 0.14993998 0.70546436 -0.049999993
		 -0.17310287 0.59061325 0.40000001 -0.17310287 0.59061325 0.050000001 -0.38531983 0.80283028 0.050000001
		 -0.38531983 0.80283028 0.40000001 0.35855055 0.53426194 -0.40000001 0.35855055 0.53426194 -0.049999993
		 0.15864657 0.73416609 -0.40000001 0.15864657 0.73416609 -0.049999993 -0.15896416 0.61706495 0.40000001
		 -0.15896416 0.61706495 0.050000001 0.38500223 0.54840064 -0.40000001 0.38500223 0.54840064 -0.049999993
		 0.1727853 0.76061773 -0.40000001 0.1727853 0.76061773 -0.049999993 -0.33016643 0.82567549 0.050000001
		 -0.33016643 0.82567549 0.40000001 -0.35886815 0.81696892 0.40000001 -0.35886815 0.81696892 0.050000001
		 -0.15025756 0.64576668 0.40000001 -0.15025756 0.64576668 0.050000001 0.40818733 0.56742817 -0.40000001
		 0.40818733 0.56742817 -0.049999993 0.19181281 0.78380275 -0.40000001 0.19181281 0.78380275 -0.049999993
		 -0.14731771 0.67561549 0.40000001 -0.14731771 0.67561549 0.050000001 -0.15025772 0.70546418 0.40000001
		 -0.15025772 0.70546418 0.050000001 -0.27046886 0.82567549 0.050000001 -0.27046886 0.82567549 0.40000001
		 -0.30031765 0.82861531 0.40000001 -0.30031765 0.82861531 0.050000001 0.42721486 0.59061325 -0.40000001
		 0.42721486 0.59061325 -0.049999993 0.21499789 0.80283028 -0.40000001 0.21499789 0.80283028 -0.049999993
		 -0.15896428 0.73416591 0.40000001 -0.15896428 0.73416591 0.050000001 -0.24176714 0.81696892 0.050000001
		 -0.24176714 0.81696892 0.40000001 -0.17310296 0.76061761 0.40000001 -0.17310296 0.76061761 0.050000001
		 -0.21531549 0.80283016 0.050000001 -0.21531549 0.80283016 0.40000001 0.44135356 0.61706495 -0.40000001
		 0.44135356 0.61706495 -0.049999993 0.24144956 0.81696892 -0.40000001 0.24144956 0.81696892 -0.049999993
		 -0.19213043 0.78380263 0.40000001 -0.19213043 0.78380263 0.050000001;
	setAttr ".vt[166:331]" 0.27015129 0.82567549 -0.40000001 0.27015129 0.82567549 -0.049999993
		 0.45006016 0.64576668 -0.40000001 0.45006016 0.64576668 -0.049999993 0.30000007 0.82861531 -0.40000001
		 0.30000007 0.82861531 -0.049999993 0.45300001 0.67561549 -0.40000001 0.45300001 0.67561549 -0.049999993
		 0.45006001 0.70546418 -0.40000001 0.45006001 0.70546418 -0.049999993 0.32984886 0.82567549 -0.40000001
		 0.32984886 0.82567549 -0.049999993 0.44135344 0.73416591 -0.40000001 0.44135344 0.73416591 -0.049999993
		 0.35855058 0.81696892 -0.40000001 0.35855058 0.81696892 -0.049999993 0.42721474 0.76061761 -0.40000001
		 0.42721474 0.76061761 -0.049999993 0.38500223 0.80283016 -0.40000001 0.38500223 0.80283016 -0.049999993
		 0.40818727 0.78380263 -0.40000001 0.40818727 0.78380263 -0.049999993 0.19181269 0.56742823 0.050000001
		 0.19181269 0.56742823 0.40000001 0.21499777 0.5484007 0.40000001 0.21499777 0.5484007 0.050000001
		 0.17278521 0.59061331 0.050000001 0.17278521 0.59061331 0.40000001 0 -1.13059938 0.40000001
		 0 -1.13059938 -0.40000001 0.80001998 0.67840493 -0.40000001 0.80001998 0.67840493 -0.049999993
		 0.090924934 -0.92500001 -0.049999993 0.090924934 -0.92500001 0.050000001 0.80001998 0.67840493 0.050000001
		 0.80001998 0.67840493 0.40000001 0.24144945 0.534262 0.40000001 0.24144945 0.534262 0.050000001
		 0.15864651 0.61706501 0.050000001 0.15864651 0.61706501 0.40000001 0.27015117 0.52555537 0.40000001
		 0.27015117 0.52555537 0.050000001 0.14993994 0.64576674 0.050000001 0.14993994 0.64576674 0.40000001
		 0.29999998 0.52261555 0.40000001 0.29999998 0.52261555 0.050000001 0.14700012 0.67561555 0.050000001
		 0.14700012 0.67561555 0.40000001 0.3298488 0.52555537 0.40000001 0.3298488 0.52555537 0.050000001
		 0.14993998 0.70546436 0.050000001 0.14993998 0.70546436 0.40000001 -0.37119502 0.8103801 0.40000001
		 0.35855055 0.53426194 0.40000001 0.35855055 0.53426194 0.050000001 0.15864657 0.73416609 0.050000001
		 0.15864657 0.73416609 0.40000001 0.38500223 0.54840064 0.40000001 0.38500223 0.54840064 0.050000001
		 0.1727853 0.76061773 0.050000001 0.1727853 0.76061773 0.40000001 0.40818733 0.56742817 0.40000001
		 0.40818733 0.56742817 0.050000001 0.19181281 0.78380275 0.050000001 0.19181281 0.78380275 0.40000001
		 -0.32900277 0.82579011 0.40000001 0.42721486 0.59061325 0.40000001 0.42721486 0.59061325 0.050000001
		 0.21499789 0.80283028 0.050000001 0.21499789 0.80283028 0.40000001 0.44135356 0.61706495 0.40000001
		 0.44135356 0.61706495 0.050000001 0.24144956 0.81696892 0.050000001 0.24144956 0.81696892 0.40000001
		 0.27015129 0.82567549 0.050000001 0.27015129 0.82567549 0.40000001 0.45006016 0.64576668 0.40000001
		 0.45006016 0.64576668 0.050000001 0.82747233 0.80252779 -0.40000001 0.82747233 0.80252779 -0.049999993
		 0.30000007 0.82861531 0.050000001 0.30000007 0.82861531 0.40000001 0.45300001 0.67561549 0.40000001
		 0.45300001 0.67561549 0.050000001 0.45006001 0.70546418 0.40000001 0.45006001 0.70546418 0.050000001
		 0.32984886 0.82567549 0.050000001 0.32984886 0.82567549 0.40000001 0.44135344 0.73416591 0.40000001
		 0.44135344 0.73416591 0.050000001 0.35855058 0.81696892 0.050000001 0.35855058 0.81696892 0.40000001
		 0.42721474 0.76061761 0.40000001 0.42721474 0.76061761 0.050000001 0.38500223 0.80283016 0.050000001
		 0.38500223 0.80283016 0.40000001 0.40818727 0.78380263 0.40000001 0.40818727 0.78380263 0.050000001
		 0.63017988 1.10550404 -0.049999993 0.63017988 1.10550404 -0.40000001 0.80474246 0.9276017 -0.049999993
		 0.80474246 0.9276017 -0.40000001 0.73537374 1.034129024 -0.40000001 0.73537374 1.034129024 -0.049999993
		 0.82747233 0.80252779 0.40000001 0.82747233 0.80252779 0.050000001 0.63017988 1.10550404 0.40000001
		 0.63017988 1.10550404 0.050000001 0.73537374 1.034129024 0.40000001 0.80474246 0.9276017 0.40000001
		 0.80474246 0.9276017 0.050000001 0.73537374 1.034129024 0.050000001 0.80521524 0.92500001 -0.049999993
		 0.80521524 0.92500001 0.050000001 -1.5 0.92500001 -0.049999993 -1.5 0.92500001 0.050000001
		 -2.75 -0.92500001 -0.049999993 -0.33016655 0.52555537 -0.049999993 -0.35886827 0.534262 -0.049999993
		 -0.38531995 0.5484007 -0.049999993 -0.40850502 0.56742823 -0.049999993 -0.42753249 0.59061331 -0.049999993
		 -0.44167119 0.61706501 -0.049999993 -0.45037776 0.64576674 -0.049999993 -2.75 -0.92500001 0.050000001
		 -0.45037776 0.64576674 -0.40000001 -0.33016655 0.52555537 -0.40000001 -0.44167119 0.61706501 -0.40000001
		 -0.35886827 0.534262 -0.40000001 -0.42753249 0.59061331 -0.40000001 -0.38531995 0.5484007 -0.40000001
		 -0.40850502 0.56742823 -0.40000001 -2.77221632 0.34090206 -0.40000001 -2.71008635 0.28991333 -0.40000001
		 -2.71008635 0.28991333 0.40000001 -2.77221632 0.34090206 0.40000001 -2.65909767 0.22778338 -0.40000001
		 -2.65909767 0.22778338 0.40000001 -3.65106606 1.087573051 0.40000001 -3.65106606 1.087573051 -0.40000001
		 -2.84309983 0.37879014 -0.40000001 -2.84309983 0.37879014 0.40000001 -2.62120986 0.15689985 -0.40000001
		 -2.62120986 0.15689985 0.40000001 -2.92001295 0.40212154 -0.40000001 -2.92001295 0.40212154 0.40000001
		 -2.59787846 0.079986744 -0.40000001 -2.59787846 0.079986744 0.40000001 -2.99999976 0.40999961 -0.40000001
		 -2.99999976 0.40999961 0.40000001 -2.58999991 0 -0.40000001 -2.58999991 0 0.40000001
		 -2.59787798 -0.079987034 -0.40000001 -2.59787798 -0.079987034 0.40000001 -3.079986811 0.4021216 -0.40000001
		 -3.079986811 0.4021216 0.40000001 -3.83444405 0.9650436 0.40000001 -3.83444405 0.9650436 -0.40000001
		 -2.62120938 -0.1569002 -0.40000001 -2.62120938 -0.1569002 0.40000001 -3.15689993 0.37879032 -0.40000001
		 -3.15689993 0.37879032 0.40000001 -3.22778344 0.34090233 -0.40000001 -3.22778344 0.34090233 0.40000001
		 -2.65909743 -0.2277838 -0.40000001 -2.65909743 -0.2277838 0.40000001;
	setAttr ".vt[332:497]" -3.43475676 -1.13059938 0.40000001 -3.43475676 -1.13059938 -0.40000001
		 -3.28991342 0.28991365 -0.40000001 -3.28991342 0.28991365 0.40000001 -2.71008635 -0.28991377 -0.40000001
		 -2.71008635 -0.28991377 0.40000001 -3.95697331 0.7816655 0.40000001 -3.95697331 0.7816655 -0.40000001
		 -3.34090209 0.22778375 -0.40000001 -3.34090209 0.22778375 0.40000001 -2.77221632 -0.34090251 -0.40000001
		 -2.77221632 -0.34090251 0.40000001 -3.37879038 0.15690023 -0.40000001 -3.37879038 0.15690023 0.40000001
		 -2.84309983 -0.37879056 -0.40000001 -2.84309983 -0.37879056 0.40000001 -3.39356732 0.10818717 0.10818727
		 -3.57020855 0.10818717 0.10818727 -3.57020855 0.12721467 0.085002221 -3.38779521 0.12721467 0.085002221
		 -3.40060019 0.085002095 0.12721474 -3.57020855 0.085002095 0.12721474 -3.57020855 0.1413534 0.058550574
		 -3.38350654 0.1413534 0.058550574 -2.92001295 -0.40212187 -0.40000001 -2.92001295 -0.40212187 0.40000001
		 -3.57020855 0.15005998 0.029848857 -3.38086534 0.15005998 0.029848857 -3.40705991 0.029848712 0.15005998
		 -3.57020855 0.029848712 0.15005998 -3.57020855 0.058550432 0.14135343 -3.40423298 0.058550432 0.14135343
		 -4 0.56535631 0.40000001 -4 0.56535631 -0.40000001 -3.57020855 0.15299985 6.8396332e-08
		 -3.37997365 0.15299985 6.8396332e-08 -3.57020855 0.15999992 0.27712816 -3.83020782 0.15999992 0.27712816
		 -3.83020782 0.31999999 0 -3.57020855 0.31999999 0 -3.40705991 -0.02984882 0.15006015
		 -3.57020855 -0.02984882 0.15006015 -3.57020855 1.3080302e-13 0.153 -3.40999985 1.249334e-13 0.153
		 -3 -0.40999988 -0.40000001 -3 -0.40999988 0.40000001 -3.38086534 0.15006001 -0.029848723
		 -3.57020855 0.15006001 -0.029848723 -3.57020855 0.14135346 -0.058550451 -3.3835063 0.14135346 -0.058550451
		 -3.40423298 -0.058550563 0.14135355 -3.57020855 -0.058550563 0.14135355 -3.57020855 0.12721477 -0.085002117
		 -3.38779521 0.12721477 -0.085002117 -3.57020855 -0.16000007 0.27712813 -3.83020782 -0.16000007 0.27712813
		 -3.079987049 -0.40212181 -0.40000001 -3.079987049 -0.40212181 0.40000001 -3.57020855 0.10818729 -0.10818721
		 -3.39356709 0.10818729 -0.10818721 -3.39356732 -0.10818733 0.1081873 -3.57020855 -0.10818733 0.1081873
		 -3.57020855 -0.085002244 0.12721483 -3.40060043 -0.085002244 0.12721483 -3.38779521 -0.12721483 0.085002206
		 -3.57020855 -0.12721483 0.085002206 -3.57020855 0.085002229 -0.12721471 -3.40060019 0.085002229 -0.12721471
		 -3.15690017 -0.37879041 -0.40000001 -3.15690017 -0.37879041 0.40000001 -3.3835063 -0.14135355 0.058550533
		 -3.57020855 -0.14135355 0.058550533 -3.34090233 -0.22778358 -0.40000001 -3.37879038 -0.1569 -0.40000001
		 -3.37879038 -0.1569 0.40000001 -3.34090233 -0.22778358 0.40000001 -3.22778368 -0.34090233 -0.40000001
		 -3.22778368 -0.34090233 0.40000001 -3.28991365 -0.28991356 -0.40000001 -3.28991365 -0.28991356 0.40000001
		 -3.38086534 -0.15006012 0.02984879 -3.57020855 -0.15006012 0.02984879 -3.40423298 0.058550574 -0.14135344
		 -3.57020855 0.058550574 -0.14135344 -3.57020855 0.029848849 -0.15006003 -3.40705991 0.029848849 -0.15006003
		 -3.83020782 0.16000007 -0.2771281 -3.57020855 0.16000007 -0.2771281 -3.37997341 -0.15299995 -2.5078654e-08
		 -3.57020855 -0.15299995 -2.3938709e-08 -3.38086534 -0.15006009 -0.029848834 -3.57020855 -0.15006009 -0.029848834
		 -3.40999985 5.0157432e-08 -0.15299989 -3.57020855 5.0157439e-08 -0.15299989 -3.57020855 -0.029848754 -0.15006007
		 -3.40705991 -0.029848754 -0.15006007 -3.3835063 -0.1413535 -0.058550566 -3.57020855 -0.1413535 -0.058550566
		 -3.57020855 -0.058550492 -0.1413535 -3.40423298 -0.058550492 -0.1413535 -3.38779521 -0.12721477 -0.085002236
		 -3.57020855 -0.12721477 -0.085002236 -3.39356732 -0.10818725 -0.10818732 -3.57020855 -0.10818725 -0.10818732
		 -3.40060043 -0.085002162 -0.1272148 -3.57020855 -0.085002162 -0.1272148 -3.83020782 0.10818717 0.10818727
		 -4 0.10818717 0.10818727 -4 0.12721467 0.085002221 -3.83020782 0.12721467 0.085002221
		 -3.83020782 0.085002095 0.12721474 -4 0.085002095 0.12721474 -4 0.1413534 0.058550574
		 -3.83020782 0.1413534 0.058550574 -4 0.15005998 0.029848857 -3.83020782 0.15005998 0.029848857
		 -3.83020782 0.029848712 0.15005998 -4 0.029848712 0.15005998 -4 0.058550432 0.14135343
		 -3.83020782 0.058550432 0.14135343 -4 0.15299985 6.8396332e-08 -3.83020782 0.15299985 6.8396332e-08
		 -4 1.4654944e-13 0.153 -3.83020782 1.4032871e-13 0.153 -3.83020782 -0.02984882 0.15006015
		 -4 -0.02984882 0.15006015 -3.83020782 -0.058550563 0.14135355 -4 -0.058550563 0.14135355
		 -3.83020782 0.15006001 -0.029848723 -4 0.15006001 -0.029848723 -4 0.14135346 -0.058550451
		 -3.83020782 0.14135346 -0.058550451 -4 0.12721477 -0.085002117 -3.83020782 0.12721477 -0.085002117
		 -4 0.10818729 -0.10818721 -3.83020782 0.10818729 -0.10818721 -3.83020782 -0.10818733 0.1081873
		 -4 -0.10818733 0.1081873 -4 -0.085002244 0.12721483 -3.83020782 -0.085002244 0.12721483
		 -4 0.085002229 -0.12721471 -3.83020782 0.085002229 -0.12721471 -3.83020782 -0.12721483 0.085002206
		 -4 -0.12721483 0.085002206 -3.83020782 -0.15999992 -0.27712816 -3.57020855 -0.15999992 -0.27712816
		 -3.83020782 -0.14135355 0.058550533 -4 -0.14135355 0.058550533 -3.83020782 0.058550574 -0.14135344
		 -4 0.058550574 -0.14135344 -4 0.029848849 -0.15006003 -3.83020782 0.029848849 -0.15006003
		 -3.83020782 -0.15006012 0.02984879 -4 -0.15006012 0.02984879 -4 5.0157453e-08 -0.15299989
		 -3.83020782 5.0157446e-08 -0.15299989 -3.83020782 -0.15299995 -2.3938709e-08 -4 -0.15299995 -2.5078654e-08
		 -4 -0.029848754 -0.15006007 -3.83020782 -0.029848754 -0.15006007 -3.83020782 -0.15006009 -0.029848834
		 -4 -0.15006009 -0.029848834 -3.57020855 -1.10365653 -4.7683713e-08 -3.57020855 -1.10365653 0.27712813
		 -3.57020855 -0.32000008 -4.7683713e-08 -4 -0.058550492 -0.1413535;
	setAttr ".vt[498:543]" -3.83020782 -0.058550492 -0.1413535 -3.83020782 -0.1413535 -0.058550566
		 -4 -0.1413535 -0.058550566 -3.83020782 -0.12721477 -0.085002236 -4 -0.12721477 -0.085002236
		 -3.83020782 -0.085002162 -0.1272148 -4 -0.085002162 -0.1272148 -4 -0.10818725 -0.10818732
		 -3.83020782 -0.10818725 -0.10818732 -3.83020782 -0.96787417 0.27712813 -3.83020782 -0.96787417 -4.7683713e-08
		 -3.83020782 -0.32000008 -4.7683713e-08 -3.57020855 -1.10365653 -0.27712816 -3.83020782 -0.96787417 -0.27712816
		 -3.95697331 -0.7816655 0.40000001 -4 -0.56535631 0.40000001 -4 -0.56535631 -0.40000001
		 -3.95697331 -0.7816655 -0.40000001 -3.83444405 -0.9650436 0.40000001 -3.83444405 -0.9650436 -0.40000001
		 -3.40999985 1.3440847e-07 0.15299998 -3.57020855 0.15299985 0 -3.40999985 1.3440847e-07 -0.15299988
		 -3.83020782 0.076172292 0.13193436 -3.83020782 0.15299985 0 -3.83020782 -0.076172434 0.13193446
		 -3.83020782 0.076172389 -0.13193437 -3.83020782 -0.076172337 -0.13193443 -3.65106606 -1.087573051 0.27712813
		 -3.40212154 0.079987109 0.1298953 -3.40212154 0.079987109 0.40000001 -3.40999985 1.3440847e-07 0.40000001
		 -3.65106606 -1.087573051 -0.27712816 -3.57020855 0.076172292 0.13193436 -3.40212178 -0.079986863 0.12989561
		 -3.57020855 -0.076172434 0.13193446 -3.40212154 0.079987109 -0.12989536 -3.57020855 0.076172389 -0.13193437
		 -3.40999985 1.3440847e-07 -0.40000001 -3.40212154 0.079987109 -0.40000001 -3.40212178 -0.079986863 -0.12989554
		 -3.57020855 -0.076172337 -0.13193443 -3.40212178 -0.079986863 0.40000001 -3.40212178 -0.079986863 -0.40000001
		 -3.65106606 -1.087573051 0.40000001 -3.65106606 -1.087573051 -0.40000001;
	setAttr -s 1668 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 1 2 3 0 3 0 1 4 5 0 5 6 1 6 7 0 7 4 1 8 0 0
		 3 9 0 9 8 1 5 10 0 10 11 1 11 6 0 12 8 0 9 13 0 13 12 1 10 14 0 14 15 1 15 11 0 16 12 0
		 13 17 0 17 16 1 14 18 0 18 19 1 19 15 0 20 16 0 17 21 0 21 20 1 18 22 0 22 23 1 23 19 0
		 24 20 0 21 25 0 25 24 1 26 27 0 27 28 1 28 29 0 29 26 1 30 24 0 25 31 0 31 30 1 22 32 0
		 32 26 0 29 23 0 33 30 0 31 34 0 34 33 1 35 33 0 34 36 0 36 35 1 37 38 0 38 39 1 39 40 0
		 40 37 1 41 35 0 36 42 0 42 41 1 38 43 0 43 44 1 44 39 0 45 41 0 42 46 0 46 45 1 43 47 0
		 47 48 1 48 44 0 49 45 0 46 50 0 50 49 1 47 49 0 50 48 0 51 52 1 52 53 0 53 54 1 54 51 0
		 55 56 1 56 52 0 51 55 0 27 57 0 57 37 0 40 28 0 53 58 0 58 59 1 59 54 0 60 61 1 61 56 0
		 55 60 0 58 62 0 62 63 1 63 59 0 64 65 1 65 61 0 60 64 0 62 66 0 66 67 1 67 63 0 68 69 1
		 69 65 0 64 68 0 66 70 0 70 71 1 71 67 0 72 73 1 73 69 0 68 72 0 70 74 0 74 75 1 75 71 0
		 76 77 1 77 73 0 72 76 0 78 79 0 79 80 1 80 81 0 81 78 1 79 82 0 82 83 1 83 80 0 74 84 0
		 84 85 1 85 75 0 86 87 1 87 77 0 76 86 0 88 78 0 81 89 0 89 88 1 82 90 0 90 91 1 91 83 0
		 92 88 0 89 93 0 93 92 1 90 94 0 94 95 1 95 91 0 84 96 0 96 97 1 97 85 0 98 99 1 99 87 0
		 86 98 0 100 92 0 93 101 0 101 100 1 94 102 0 102 103 1 103 95 0 104 105 1 105 106 0
		 106 107 1 107 108 0 108 109 0 109 110 0 110 111 1 111 104 0 112 100 0 101 113 0 113 112 1
		 102 114 0 114 115 1 115 103 0 96 116 0 116 117 1 117 97 0;
	setAttr ".ed[166:331]" 118 119 1 119 99 0 98 118 0 120 112 0 113 121 0 121 120 1
		 114 122 0 122 123 1 123 115 0 116 124 0 124 125 1 125 117 0 126 120 0 121 127 0 127 126 1
		 122 128 0 128 129 1 129 123 0 130 131 1 131 132 0 132 133 1 133 130 0 124 134 0 134 135 1
		 135 125 0 136 126 0 127 137 0 137 136 1 128 138 0 138 139 1 139 129 0 134 140 0 140 141 1
		 141 135 0 140 142 0 142 143 1 143 141 0 144 145 1 145 146 0 146 147 1 147 144 0 148 136 0
		 137 149 0 149 148 1 138 150 0 150 151 1 151 139 0 142 152 0 152 153 1 153 143 0 154 155 1
		 155 145 0 144 154 0 152 156 0 156 157 1 157 153 0 158 159 1 159 155 0 154 158 0 160 148 0
		 149 161 0 161 160 1 150 162 0 162 163 1 163 151 0 156 164 0 164 165 1 165 157 0 164 159 0
		 158 165 0 162 166 0 166 167 1 167 163 0 168 160 0 161 169 0 169 168 1 166 170 0 170 171 1
		 171 167 0 172 168 0 169 173 0 173 172 1 174 172 0 173 175 0 175 174 1 170 176 0 176 177 1
		 177 171 0 178 174 0 175 179 0 179 178 1 176 180 0 180 181 1 181 177 0 182 178 0 179 183 0
		 183 182 1 180 184 0 184 185 1 185 181 0 186 182 0 183 187 0 187 186 1 184 186 0 187 185 0
		 188 189 1 189 190 0 190 191 1 191 188 0 192 193 1 193 189 0 188 192 0 194 195 0 195 196 0
		 196 197 1 197 198 0 198 199 0 199 200 0 200 201 1 201 194 0 190 202 0 202 203 1 203 191 0
		 204 205 1 205 193 0 192 204 0 202 206 0 206 207 1 207 203 0 208 209 1 209 205 0 204 208 0
		 206 210 0 210 211 1 211 207 0 212 213 1 213 209 0 208 212 0 210 214 0 214 215 1 215 211 0
		 216 217 1 217 213 0 212 216 0 132 218 0 218 119 0 118 133 0 214 219 0 219 220 1 220 215 0
		 221 222 1 222 217 0 216 221 0 219 223 0 223 224 1 224 220 0 225 226 1 226 222 0 221 225 0
		 223 227 0 227 228 1 228 224 0 229 230 1 230 226 0 225 229 0 146 231 0;
	setAttr ".ed[332:497]" 231 131 0 130 147 0 227 232 0 232 233 1 233 228 0 234 235 1
		 235 230 0 229 234 0 232 236 0 236 237 1 237 233 0 238 239 1 239 235 0 234 238 0 240 241 1
		 241 239 0 238 240 0 236 242 0 242 243 1 243 237 0 196 244 0 244 245 1 245 197 0 246 247 1
		 247 241 0 240 246 0 242 248 0 248 249 1 249 243 0 248 250 0 250 251 1 251 249 0 252 253 1
		 253 247 0 246 252 0 250 254 0 254 255 1 255 251 0 256 257 1 257 253 0 252 256 0 254 258 0
		 258 259 1 259 255 0 260 261 1 261 257 0 256 260 0 258 262 0 262 263 1 263 259 0 262 261 0
		 260 263 0 264 265 1 265 111 0 110 264 0 266 267 1 267 268 0 268 269 1 269 266 0 268 265 0
		 264 269 0 270 201 0 200 271 0 271 270 1 106 272 0 272 273 1 273 107 0 274 275 0 275 276 1
		 276 277 0 277 274 1 272 274 0 277 273 0 244 267 0 266 278 0 278 245 0 275 270 0 271 279 0
		 279 276 0 109 280 0 280 278 1 281 108 0 279 281 1 280 282 0 282 198 0 198 137 1 103 34 1
		 2 283 0 283 284 0 284 285 0 285 286 0 286 287 0 287 288 0 288 289 0 289 7 0 7 280 1
		 102 33 1 57 111 1 111 168 1 199 290 0 290 281 0 281 68 1 141 212 1 228 271 1 106 231 1
		 140 213 1 242 201 1 291 4 0 289 291 1 1 292 0 292 283 1 293 291 0 288 293 1 292 294 0
		 294 284 1 295 293 0 287 295 1 294 296 0 296 285 1 297 295 0 286 297 1 296 297 0 281 280 0
		 290 282 0 298 299 0 299 300 1 300 301 0 301 298 1 299 302 0 302 303 1 303 300 0 304 105 0
		 104 305 0 305 304 1 306 298 0 301 307 0 307 306 1 302 308 0 308 309 1 309 303 0 310 306 0
		 307 311 0 311 310 1 308 312 0 312 313 1 313 309 0 314 310 0 311 315 0 315 314 1 312 316 0
		 316 317 1 317 313 0 316 318 0 318 319 1 319 317 0 320 314 0 315 321 0 321 320 1 322 304 0
		 305 323 0 323 322 1 318 324 0 324 325 1 325 319 0 326 320 0 321 327 0;
	setAttr ".ed[498:663]" 327 326 1 328 326 0 327 329 0 329 328 1 324 330 0 330 331 1
		 331 325 0 332 333 1 333 195 0 194 332 0 334 328 0 329 335 0 335 334 1 330 336 0 336 337 1
		 337 331 0 338 322 0 323 339 0 339 338 1 340 334 0 335 341 0 341 340 1 336 342 0 342 343 1
		 343 337 0 344 340 0 341 345 0 345 344 1 342 346 0 346 347 1 347 343 0 348 349 1 349 350 0
		 350 351 1 351 348 0 352 353 1 353 349 0 348 352 0 350 354 0 354 355 1 355 351 0 346 356 0
		 356 357 1 357 347 0 354 358 0 358 359 1 359 355 0 360 361 1 361 362 0 362 363 1 363 360 0
		 364 338 0 339 365 0 365 364 1 358 366 0 366 367 1 367 359 0 368 369 0 369 370 0 370 371 0
		 371 368 0 372 373 1 373 374 0 374 375 1 375 372 0 356 376 0 376 377 1 377 357 0 378 379 1
		 379 380 0 380 381 1 381 378 0 382 383 1 383 373 0 372 382 0 380 384 0 384 385 1 385 381 0
		 386 387 0 387 369 0 368 386 0 376 388 0 388 389 1 389 377 0 384 390 0 390 391 1 391 385 0
		 392 393 1 393 394 0 394 395 1 395 392 0 396 397 1 397 393 0 392 396 0 390 398 0 398 399 1
		 399 391 0 388 400 0 400 401 1 401 389 0 402 403 1 403 397 0 396 402 0 404 405 0 405 406 1
		 406 407 0 407 404 1 400 408 0 408 409 1 409 401 0 410 404 0 407 411 0 411 410 1 408 410 0
		 411 409 0 412 413 1 413 403 0 402 412 0 414 415 1 415 416 0 416 417 1 417 414 0 370 418 0
		 418 419 0 419 371 0 420 421 1 421 413 0 412 420 0 422 423 1 423 421 0 420 422 0 424 425 1
		 425 426 0 426 427 1 427 424 0 428 429 1 429 423 0 422 428 0 426 430 0 430 431 1 431 427 0
		 432 433 1 433 429 0 428 432 0 434 435 1 435 433 0 432 434 0 436 437 1 437 435 0 434 436 0
		 438 439 1 439 440 0 440 441 1 441 438 0 442 443 1 443 439 0 438 442 0 440 444 0 444 445 1
		 445 441 0 444 446 0 446 447 1 447 445 0 448 449 1 449 450 0 450 451 1;
	setAttr ".ed[664:829]" 451 448 0 446 452 0 452 453 1 453 447 0 454 449 0 448 455 0
		 455 454 1 456 457 1 457 454 0 455 456 0 458 459 1 459 457 0 456 458 0 460 461 1 461 462 0
		 462 463 1 463 460 0 462 464 0 464 465 1 465 463 0 464 466 0 466 467 1 467 465 0 468 469 1
		 469 470 0 470 471 1 471 468 0 466 472 0 472 473 1 473 467 0 474 475 1 475 469 0 468 474 0
		 418 476 0 476 477 0 477 419 0 478 479 1 479 475 0 474 478 0 480 481 1 481 482 0 482 483 1
		 483 480 0 484 485 1 485 479 0 478 484 0 482 486 0 486 487 1 487 483 0 488 489 1 489 485 0
		 484 488 0 486 490 0 490 491 1 491 487 0 492 493 1 493 489 0 488 492 0 494 495 0 495 386 0
		 386 496 0 496 494 1 490 497 0 497 498 1 498 491 0 499 500 1 500 493 0 492 499 0 501 502 1
		 502 500 0 499 501 0 503 504 1 504 505 0 505 506 1 506 503 0 505 502 0 501 506 0 507 508 0
		 508 509 1 509 387 0 387 507 0 510 494 0 496 477 0 477 510 0 508 511 0 511 476 0 476 509 0
		 512 513 0 513 514 1 514 515 0 515 512 1 516 512 0 515 517 0 517 516 1 360 518 0 518 375 0
		 374 361 0 366 519 0 519 379 0 378 367 0 424 520 0 520 417 0 416 425 0 450 443 0 442 521 0
		 521 451 0 452 461 0 460 522 0 522 453 0 470 459 0 458 523 0 523 471 0 472 481 0 480 524 0
		 524 473 0 497 504 0 503 525 0 525 498 0 495 526 0 526 507 0 363 527 0 527 528 1 528 529 0
		 529 518 1 511 530 0 530 510 0 352 527 0 362 531 0 531 353 0 382 532 0 532 395 0 394 533 0
		 533 383 0 414 534 0 534 399 0 398 535 0 535 415 0 536 537 0 537 534 1 520 536 1 436 538 0
		 538 431 0 430 539 0 539 437 0 529 540 0 540 532 1 541 536 0 538 541 1 368 531 1 533 386 1
		 419 535 1 519 371 1 421 496 1 387 523 1 521 369 1 477 539 1 370 522 1 524 418 1 509 488 1
		 525 476 1 332 542 0 542 526 1 530 543 1 543 333 0 542 516 0 517 543 0;
	setAttr ".ed[830:995]" 537 344 0 345 528 0 405 541 0 540 406 0 364 529 1 317 218 1
		 513 364 0 365 486 1 454 513 1 365 514 0 536 365 1 32 316 1 1 3 1 5 7 1 0 9 1 10 6 1
		 8 13 1 14 11 1 12 17 1 18 15 1 16 21 1 22 19 1 20 25 1 27 29 1 24 31 1 32 23 1 32 29 1
		 30 34 1 33 36 1 38 40 1 35 42 1 43 39 1 41 46 1 47 44 1 45 50 1 49 48 1 52 54 1 56 51 1
		 57 28 1 40 57 1 53 59 1 61 55 1 58 63 1 65 60 1 62 67 1 69 64 1 66 71 1 73 68 1 70 75 1
		 77 72 1 79 81 1 82 80 1 74 85 1 87 76 1 78 89 1 90 83 1 88 93 1 94 91 1 84 97 1 99 86 1
		 92 101 1 102 95 1 108 106 1 108 105 1 108 104 1 109 104 1 109 111 1 100 113 1 114 103 1
		 96 117 1 119 98 1 112 121 1 122 115 1 116 125 1 120 127 1 128 123 1 131 133 1 124 135 1
		 126 137 1 138 129 1 134 141 1 140 143 1 145 147 1 136 149 1 150 139 1 142 153 1 155 144 1
		 152 157 1 159 154 1 148 161 1 162 151 1 156 165 1 164 158 1 166 163 1 160 169 1 170 167 1
		 168 173 1 172 175 1 176 171 1 174 179 1 180 177 1 178 183 1 184 181 1 182 187 1 186 185 1
		 189 191 1 193 188 1 197 195 1 198 195 1 198 194 1 199 194 1 199 201 1 190 203 1 205 192 1
		 202 207 1 209 204 1 206 211 1 213 208 1 210 215 1 217 212 1 218 133 1 218 118 1 214 220 1
		 222 216 1 219 224 1 226 221 1 223 228 1 230 225 1 231 147 1 130 231 1 227 233 1 235 229 1
		 232 237 1 239 234 1 241 238 1 236 243 1 196 245 1 247 240 1 242 249 1 248 251 1 253 246 1
		 250 255 1 257 252 1 254 259 1 261 256 1 258 263 1 262 260 1 265 110 1 267 269 1 268 264 1
		 201 271 1 272 107 1 275 277 1 274 273 1 244 278 1 278 267 1 279 270 1 275 279 1 266 280 1
		 269 280 1 264 280 1 110 280 1 281 276 1 281 277 1 281 273 1 281 107 1;
	setAttr ".ed[996:1161]" 127 198 1 121 198 1 198 280 1 113 198 1 101 198 1 93 198 1
		 34 95 1 31 95 1 89 198 1 31 91 1 25 91 1 280 289 1 81 198 1 25 83 1 21 83 1 280 288 1
		 198 288 1 198 287 1 198 286 1 198 285 1 198 284 1 198 283 1 198 2 1 198 3 1 198 9 1
		 198 13 1 198 17 1 80 198 1 21 80 1 80 17 1 172 111 1 174 111 1 111 37 1 178 111 1
		 111 38 1 182 111 1 111 43 1 111 47 1 186 111 1 111 49 1 184 111 1 111 45 1 180 111 1
		 111 41 1 33 114 1 35 114 1 176 111 1 111 35 1 35 122 1 170 111 1 35 128 1 166 111 1
		 166 35 1 162 35 1 150 35 1 138 35 1 200 228 1 199 228 1 199 224 1 199 220 1 281 199 1
		 199 215 1 199 211 1 199 207 1 212 135 1 208 135 1 199 203 1 208 125 1 204 125 1 64 281 1
		 199 191 1 204 117 1 192 117 1 60 281 1 60 199 1 55 199 1 51 199 1 54 199 1 59 199 1
		 63 199 1 67 199 1 71 199 1 75 199 1 85 199 1 97 199 1 199 188 1 192 97 1 97 188 1
		 197 137 1 197 149 1 197 161 1 197 169 1 197 173 1 6 280 1 11 280 1 197 175 1 103 36 1
		 115 36 1 245 175 1 245 179 1 278 179 1 278 183 1 278 187 1 15 280 1 115 42 1 123 42 1
		 123 46 1 129 46 1 19 280 1 278 185 1 129 50 1 139 50 1 23 280 1 278 181 1 139 48 1
		 151 48 1 29 280 1 278 177 1 151 44 1 163 44 1 28 280 1 278 171 1 280 171 1 280 167 1
		 280 163 1 163 39 1 40 280 1 40 163 1 233 271 1 237 271 1 243 271 1 249 271 1 251 271 1
		 281 72 1 255 271 1 255 279 1 259 279 1 281 76 1 141 216 1 143 216 1 263 279 1 143 221 1
		 153 221 1 281 86 1 153 225 1 157 225 1 260 279 1 281 98 1 157 229 1 165 229 1 281 118 1
		 256 279 1 165 234 1 158 234 1 281 133 1 252 279 1 158 238 1 154 238 1 281 130 1 246 279 1
		 246 281 1 240 281 1 238 281 1 144 238 1 281 147 1 238 147 1;
	setAttr ".ed[1162:1327]" 146 106 1 145 106 1 155 106 1 159 106 1 164 106 1 156 106 1
		 201 248 1 152 106 1 201 250 1 213 142 1 217 142 1 270 250 1 270 254 1 275 254 1 274 254 1
		 274 258 1 272 258 1 272 262 1 106 262 1 106 261 1 106 257 1 106 253 1 142 106 1 222 142 1
		 106 247 1 226 142 1 106 241 1 142 241 1 142 239 1 142 235 1 142 230 1 4 289 1 292 2 1
		 291 288 1 294 283 1 293 287 1 296 284 1 295 286 1 297 285 1 108 280 1 282 281 1 198 290 1
		 299 301 1 302 300 1 105 305 1 298 307 1 308 303 1 306 311 1 312 309 1 310 315 1 316 313 1
		 318 317 1 314 321 1 304 323 1 324 319 1 320 327 1 326 329 1 330 325 1 333 194 1 328 335 1
		 336 331 1 322 339 1 334 341 1 342 337 1 340 345 1 346 343 1 350 348 1 349 352 1 354 351 1
		 356 347 1 358 355 1 362 360 1 338 365 1 366 359 1 369 371 1 373 375 1 376 357 1 379 381 1
		 383 372 1 380 385 1 387 368 1 388 377 1 384 391 1 393 395 1 397 392 1 390 399 1 400 389 1
		 403 396 1 405 407 1 408 401 1 404 411 1 410 409 1 413 402 1 415 417 1 370 419 1 421 412 1
		 421 422 1 426 424 1 423 428 1 430 427 1 429 432 1 433 434 1 435 436 1 439 441 1 443 438 1
		 440 445 1 444 447 1 449 451 1 446 453 1 449 455 1 457 455 1 459 456 1 461 463 1 462 465 1
		 464 467 1 469 471 1 466 473 1 475 468 1 418 477 1 479 474 1 481 483 1 485 478 1 486 483 1
		 489 484 1 486 491 1 493 488 1 495 496 1 490 498 1 500 492 1 502 499 1 504 506 1 505 501 1
		 509 507 1 496 510 1 511 509 1 513 515 1 512 517 1 374 518 1 518 361 1 379 366 1 366 378 1
		 417 424 1 416 424 1 521 443 1 521 450 1 453 460 1 452 460 1 523 459 1 523 470 1 524 481 1
		 524 472 1 525 504 1 525 497 1 526 386 1 507 386 1 528 363 1 528 360 1 529 360 1 477 530 1
		 477 511 1 527 353 1 527 531 1 363 531 1 394 532 1 533 532 1 533 382 1;
	setAttr ".ed[1328:1493]" 398 534 1 535 534 1 535 414 1 414 537 1 417 537 1 417 536 1
		 538 437 1 538 539 1 431 539 1 529 375 1 382 540 1 372 540 1 372 529 1 427 520 1 541 431 1
		 541 427 1 536 427 1 531 386 1 362 386 1 361 386 1 374 386 1 373 386 1 383 386 1 419 519 1
		 419 379 1 419 380 1 419 384 1 419 390 1 419 398 1 386 421 1 386 413 1 386 403 1 386 397 1
		 386 393 1 386 394 1 523 369 1 458 369 1 456 369 1 455 369 1 448 369 1 451 369 1 539 419 1
		 430 419 1 426 419 1 425 419 1 416 419 1 415 419 1 522 418 1 460 418 1 463 418 1 465 418 1
		 467 418 1 473 418 1 421 477 1 423 477 1 429 477 1 433 477 1 435 477 1 437 477 1 488 387 1
		 484 387 1 478 387 1 474 387 1 468 387 1 471 387 1 524 476 1 480 476 1 483 476 1 487 476 1
		 491 476 1 498 476 1 476 488 1 476 492 1 476 499 1 476 501 1 476 506 1 476 503 1 358 519 1
		 519 368 1 358 368 1 354 368 1 350 368 1 349 368 1 353 368 1 370 453 1 369 453 1 369 447 1
		 369 445 1 369 441 1 369 438 1 369 442 1 495 542 1 495 332 1 495 333 1 494 333 1 510 333 1
		 510 543 1 511 543 1 511 517 1 511 516 1 508 516 1 507 516 1 507 542 1 352 528 1 352 345 1
		 348 345 1 537 399 1 344 399 1 344 391 1 351 345 1 344 385 1 355 345 1 344 381 1 359 345 1
		 344 378 1 367 345 1 367 344 1 436 541 1 436 405 1 434 405 1 540 395 1 406 395 1 406 392 1
		 432 405 1 406 396 1 428 405 1 406 402 1 422 405 1 406 412 1 420 405 1 420 406 1 105 231 1
		 105 131 1 105 132 1 105 218 1 528 364 1 345 364 1 218 313 1 341 364 1 218 309 1 335 364 1
		 335 338 1 335 322 1 335 304 1 329 304 1 329 105 1 327 105 1 321 105 1 321 218 1 315 218 1
		 311 218 1 307 218 1 301 218 1 300 218 1 303 218 1 364 454 1 482 365 1 364 449 1 481 365 1
		 364 450 1 472 365 1 364 443 1 466 365 1 364 439 1 464 365 1 364 440 1;
	setAttr ".ed[1494:1659]" 462 365 1 364 444 1 461 365 1 364 446 1 365 446 1 365 452 1
		 514 486 1 457 513 1 514 490 1 459 513 1 514 497 1 470 513 1 514 504 1 469 513 1 514 505 1
		 475 513 1 514 502 1 479 513 1 514 500 1 485 513 1 514 493 1 513 493 1 513 489 1 57 104 1
		 27 104 1 26 104 1 32 104 1 365 537 1 365 344 1 312 32 1 365 340 1 308 32 1 302 32 1
		 365 334 1 339 334 1 323 334 1 305 334 1 305 328 1 104 328 1 104 326 1 104 320 1 104 314 1
		 299 32 1 299 104 1 298 104 1 306 104 1 310 104 1 317 119 1 317 99 1 317 87 1 317 77 1
		 513 529 1 513 540 1 317 73 1 242 194 1 236 194 1 232 194 1 227 194 1 223 194 1 219 194 1
		 214 194 1 317 69 1 513 406 1 210 194 1 317 65 1 206 194 1 513 407 1 317 61 1 140 209 1
		 134 209 1 202 194 1 202 332 1 190 332 1 189 332 1 193 332 1 205 332 1 209 332 1 317 56 1
		 513 411 1 512 411 1 516 411 1 542 411 1 542 409 1 332 409 1 332 401 1 332 389 1 124 209 1
		 319 56 1 332 377 1 319 52 1 116 209 1 319 53 1 325 53 1 332 357 1 325 58 1 331 58 1
		 96 209 1 332 347 1 209 347 1 209 343 1 209 337 1 209 331 1 331 62 1 84 209 1 331 66 1
		 74 209 1 74 331 1 70 331 1 22 316 1 18 316 1 14 316 1 10 316 1 536 514 1 541 514 1
		 5 316 1 405 514 1 4 316 1 291 316 1 404 514 1 265 168 1 268 168 1 267 168 1 244 168 1
		 196 168 1 195 168 1 195 160 1 195 148 1 195 136 1 195 126 1 195 120 1 195 112 1 195 100 1
		 195 92 1 293 316 1 102 30 1 94 30 1 195 88 1 333 88 1 333 78 1 333 79 1 333 82 1
		 333 90 1 333 94 1 410 514 1 410 515 1 410 517 1 410 543 1 408 543 1 408 333 1 400 333 1
		 388 333 1 295 316 1 94 24 1 376 333 1 295 318 1 297 318 1 297 324 1 296 324 1 94 20 1
		 356 333 1 296 330 1 294 330 1 94 16 1 346 333 1 346 94 1 342 94 1;
	setAttr ".ed[1660:1667]" 336 94 1 330 94 1 292 330 1 94 12 1 1 330 1 94 8 1 330 8 1
		 330 0 1;
	setAttr -s 1112 -ch 3336 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 3 0 842 3
		mu 0 3 0 1 3
		f 3 -843 1 2
		mu 0 3 3 1 2
		f 3 4 843 7
		mu 0 3 4 5 7
		f 3 -844 5 6
		mu 0 3 7 5 6
		f 3 8 844 10
		mu 0 3 8 0 9
		f 3 -845 -4 9
		mu 0 3 9 0 3
		f 3 11 845 -6
		mu 0 3 5 10 6
		f 3 -846 12 13
		mu 0 3 6 10 11
		f 3 14 846 16
		mu 0 3 12 8 13
		f 3 -847 -11 15
		mu 0 3 13 8 9
		f 3 17 847 -13
		mu 0 3 10 14 11
		f 3 -848 18 19
		mu 0 3 11 14 15
		f 3 20 848 22
		mu 0 3 16 12 17
		f 3 -849 -17 21
		mu 0 3 17 12 13
		f 3 23 849 -19
		mu 0 3 14 18 15
		f 3 -850 24 25
		mu 0 3 15 18 19
		f 3 26 850 28
		mu 0 3 20 16 21
		f 3 -851 -23 27
		mu 0 3 21 16 17
		f 3 29 851 -25
		mu 0 3 18 22 19
		f 3 -852 30 31
		mu 0 3 19 22 23
		f 3 32 852 34
		mu 0 3 24 20 25
		f 3 -853 -29 33
		mu 0 3 25 20 21
		f 3 35 853 38
		mu 0 3 26 27 29
		f 3 -854 36 37
		mu 0 3 29 27 28
		f 3 39 854 41
		mu 0 3 30 24 31
		f 3 -855 -35 40
		mu 0 3 31 24 25
		f 3 42 855 -31
		mu 0 3 22 32 23
		f 3 -856 856 44
		mu 0 3 23 32 29
		f 3 43 -39 -857
		mu 0 3 32 26 29
		f 3 45 857 47
		mu 0 3 33 30 34
		f 3 -858 -42 46
		mu 0 3 34 30 31
		f 3 48 858 50
		mu 0 3 35 33 36
		f 3 -859 -48 49
		mu 0 3 36 33 34
		f 3 51 859 54
		mu 0 3 37 38 40
		f 3 -860 52 53
		mu 0 3 40 38 39
		f 3 55 860 57
		mu 0 3 41 42 44
		f 3 -861 -51 56
		mu 0 3 44 42 43
		f 3 58 861 -53
		mu 0 3 38 45 39
		f 3 -862 59 60
		mu 0 3 39 45 46
		f 3 61 862 63
		mu 0 3 47 41 48
		f 3 -863 -58 62
		mu 0 3 48 41 44
		f 3 64 863 -60
		mu 0 3 45 49 46
		f 3 -864 65 66
		mu 0 3 46 49 50
		f 3 67 864 69
		mu 0 3 51 47 52
		f 3 -865 -64 68
		mu 0 3 52 47 48
		f 3 70 865 -66
		mu 0 3 49 51 50
		f 3 -866 -70 71
		mu 0 3 50 51 52
		f 3 72 866 75
		mu 0 3 53 54 56
		f 3 -867 73 74
		mu 0 3 56 54 55
		f 3 76 867 78
		mu 0 3 57 58 53
		f 3 -868 77 -73
		mu 0 3 53 58 54
		f 3 79 868 -37
		mu 0 3 27 59 28
		f 3 -55 869 80
		mu 0 3 37 40 59
		f 3 -870 81 -869
		mu 0 3 59 40 28
		f 3 -75 870 84
		mu 0 3 56 55 61
		f 3 -871 82 83
		mu 0 3 61 55 60
		f 3 85 871 87
		mu 0 3 62 63 57
		f 3 -872 86 -77
		mu 0 3 57 63 58
		f 3 -84 872 90
		mu 0 3 61 60 65
		f 3 -873 88 89
		mu 0 3 65 60 64
		f 3 91 873 93
		mu 0 3 66 67 62
		f 3 -874 92 -86
		mu 0 3 62 67 63
		f 3 -90 874 96
		mu 0 3 65 64 69
		f 3 -875 94 95
		mu 0 3 69 64 68
		f 3 97 875 99
		mu 0 3 70 71 66
		f 3 -876 98 -92
		mu 0 3 66 71 67
		f 3 -96 876 102
		mu 0 3 69 68 73
		f 3 -877 100 101
		mu 0 3 73 68 72
		f 3 103 877 105
		mu 0 3 74 75 70
		f 3 -878 104 -98
		mu 0 3 70 75 71
		f 3 -102 878 108
		mu 0 3 73 72 77
		f 3 -879 106 107
		mu 0 3 77 72 76
		f 3 109 879 111
		mu 0 3 78 79 74
		f 3 -880 110 -104
		mu 0 3 74 79 75
		f 3 112 880 115
		mu 0 3 80 81 83
		f 3 -881 113 114
		mu 0 3 83 81 82
		f 3 116 881 -114
		mu 0 3 81 84 82
		f 3 -882 117 118
		mu 0 3 82 84 85
		f 3 -108 882 121
		mu 0 3 77 76 87
		f 3 -883 119 120
		mu 0 3 87 76 86
		f 3 122 883 124
		mu 0 3 88 89 78
		f 3 -884 123 -110
		mu 0 3 78 89 79
		f 3 125 884 127
		mu 0 3 90 80 91
		f 3 -885 -116 126
		mu 0 3 91 80 83
		f 3 128 885 -118
		mu 0 3 84 92 85
		f 3 -886 129 130
		mu 0 3 85 92 93
		f 3 131 886 133
		mu 0 3 94 90 95
		f 3 -887 -128 132
		mu 0 3 95 90 91
		f 3 134 887 -130
		mu 0 3 92 96 93
		f 3 -888 135 136
		mu 0 3 93 96 97
		f 3 -121 888 139
		mu 0 3 87 86 99
		f 3 -889 137 138
		mu 0 3 99 86 98
		f 3 140 889 142
		mu 0 3 100 101 88
		f 3 -890 141 -123
		mu 0 3 88 101 89
		f 3 143 890 145
		mu 0 3 102 94 103
		f 3 -891 -134 144
		mu 0 3 103 94 95
		f 3 146 891 -136
		mu 0 3 96 104 97
		f 3 -892 147 148
		mu 0 3 97 104 105
		f 3 152 892 151
		mu 0 3 109 110 108
		f 3 -893 893 150
		mu 0 3 108 110 107
		f 3 -894 894 149
		mu 0 3 107 110 106
		f 3 153 895 -895
		mu 0 3 110 111 106
		f 3 -896 896 156
		mu 0 3 106 111 113
		f 3 154 155 -897
		mu 0 3 111 112 113
		f 3 157 897 159
		mu 0 3 114 102 115
		f 3 -898 -146 158
		mu 0 3 115 102 103
		f 3 160 898 -148
		mu 0 3 104 116 105
		f 3 -899 161 162
		mu 0 3 105 116 117
		f 3 -139 899 165
		mu 0 3 99 98 119
		f 3 -900 163 164
		mu 0 3 119 98 118
		f 3 166 900 168
		mu 0 3 120 121 100
		f 3 -901 167 -141
		mu 0 3 100 121 101
		f 3 169 901 171
		mu 0 3 122 114 123
		f 3 -902 -160 170
		mu 0 3 123 114 115
		f 3 172 902 -162
		mu 0 3 116 124 117
		f 3 -903 173 174
		mu 0 3 117 124 125
		f 3 -165 903 177
		mu 0 3 119 118 127
		f 3 -904 175 176
		mu 0 3 127 118 126
		f 3 178 904 180
		mu 0 3 128 122 129
		f 3 -905 -172 179
		mu 0 3 129 122 123
		f 3 181 905 -174
		mu 0 3 124 130 125
		f 3 -906 182 183
		mu 0 3 125 130 131
		f 3 184 906 187
		mu 0 3 132 133 135
		f 3 -907 185 186
		mu 0 3 135 133 134
		f 3 -177 907 190
		mu 0 3 127 126 137
		f 3 -908 188 189
		mu 0 3 137 126 136
		f 3 191 908 193
		mu 0 3 138 128 139
		f 3 -909 -181 192
		mu 0 3 139 128 129
		f 3 194 909 -183
		mu 0 3 130 140 131
		f 3 -910 195 196
		mu 0 3 131 140 141
		f 3 -190 910 199
		mu 0 3 137 136 143
		f 3 -911 197 198
		mu 0 3 143 136 142
		f 3 -199 911 202
		mu 0 3 143 142 145
		f 3 -912 200 201
		mu 0 3 145 142 144
		f 3 203 912 206
		mu 0 3 146 147 149
		f 3 -913 204 205
		mu 0 3 149 147 148
		f 3 207 913 209
		mu 0 3 150 138 151
		f 3 -914 -194 208
		mu 0 3 151 138 139
		f 3 210 914 -196
		mu 0 3 140 152 141
		f 3 -915 211 212
		mu 0 3 141 152 153
		f 3 -202 915 215
		mu 0 3 154 155 157
		f 3 -916 213 214
		mu 0 3 157 155 156
		f 3 216 916 218
		mu 0 3 158 159 146
		f 3 -917 217 -204
		mu 0 3 146 159 147
		f 3 -215 917 221
		mu 0 3 157 156 161
		f 3 -918 219 220
		mu 0 3 161 156 160
		f 3 222 918 224
		mu 0 3 162 163 158
		f 3 -919 223 -217
		mu 0 3 158 163 159
		f 3 225 919 227
		mu 0 3 164 150 165
		f 3 -920 -210 226
		mu 0 3 165 150 151
		f 3 228 920 -212
		mu 0 3 152 166 153
		f 3 -921 229 230
		mu 0 3 153 166 167
		f 3 -221 921 233
		mu 0 3 161 160 169
		f 3 -922 231 232
		mu 0 3 169 160 168
		f 3 -233 922 235
		mu 0 3 169 168 162
		f 3 -923 234 -223
		mu 0 3 162 168 163
		f 3 236 923 -230
		mu 0 3 166 170 167
		f 3 -924 237 238
		mu 0 3 167 170 171
		f 3 239 924 241
		mu 0 3 172 164 173
		f 3 -925 -228 240
		mu 0 3 173 164 165
		f 3 242 925 -238
		mu 0 3 170 174 171
		f 3 -926 243 244
		mu 0 3 171 174 175
		f 3 245 926 247
		mu 0 3 176 172 177
		f 3 -927 -242 246
		mu 0 3 177 172 173
		f 3 248 927 250
		mu 0 3 178 176 179
		f 3 -928 -248 249
		mu 0 3 179 176 177
		f 3 251 928 -244
		mu 0 3 174 180 175
		f 3 -929 252 253
		mu 0 3 175 180 181
		f 3 254 929 256
		mu 0 3 182 183 185
		f 3 -930 -251 255
		mu 0 3 185 183 184
		f 3 257 930 -253
		mu 0 3 180 186 181
		f 3 -931 258 259
		mu 0 3 181 186 187
		f 3 260 931 262
		mu 0 3 188 182 189
		f 3 -932 -257 261
		mu 0 3 189 182 185
		f 3 263 932 -259
		mu 0 3 186 190 187
		f 3 -933 264 265
		mu 0 3 187 190 191
		f 3 266 933 268
		mu 0 3 192 188 193
		f 3 -934 -263 267
		mu 0 3 193 188 189
		f 3 269 934 -265
		mu 0 3 190 192 191
		f 3 -935 -269 270
		mu 0 3 191 192 193
		f 3 271 935 274
		mu 0 3 194 195 197
		f 3 -936 272 273
		mu 0 3 197 195 196
		f 3 275 936 277
		mu 0 3 198 199 194
		f 3 -937 276 -272
		mu 0 3 194 199 195
		f 3 280 937 279
		mu 0 3 202 203 201
		f 3 281 938 -938
		mu 0 3 203 204 201
		f 3 -939 939 278
		mu 0 3 201 204 200
		f 3 282 940 -940
		mu 0 3 204 205 200
		f 3 -941 941 285
		mu 0 3 200 205 207
		f 3 283 284 -942
		mu 0 3 205 206 207
		f 3 -274 942 288
		mu 0 3 197 196 209
		f 3 -943 286 287
		mu 0 3 209 196 208
		f 3 289 943 291
		mu 0 3 210 211 198
		f 3 -944 290 -276
		mu 0 3 198 211 199
		f 3 -288 944 294
		mu 0 3 209 208 213
		f 3 -945 292 293
		mu 0 3 213 208 212
		f 3 295 945 297
		mu 0 3 214 215 210
		f 3 -946 296 -290
		mu 0 3 210 215 211
		f 3 -294 946 300
		mu 0 3 213 212 217
		f 3 -947 298 299
		mu 0 3 217 212 216
		f 3 301 947 303
		mu 0 3 218 219 214
		f 3 -948 302 -296
		mu 0 3 214 219 215
		f 3 -300 948 306
		mu 0 3 217 216 221
		f 3 -949 304 305
		mu 0 3 221 216 220
		f 3 307 949 309
		mu 0 3 222 223 218
		f 3 -950 308 -302
		mu 0 3 218 223 219
		f 3 310 950 -187
		mu 0 3 134 224 135
		f 3 -951 951 312
		mu 0 3 135 224 120
		f 3 311 -167 -952
		mu 0 3 224 121 120
		f 3 -306 952 315
		mu 0 3 221 220 226
		f 3 -953 313 314
		mu 0 3 226 220 225
		f 3 316 953 318
		mu 0 3 227 228 222
		f 3 -954 317 -308
		mu 0 3 222 228 223
		f 3 -315 954 321
		mu 0 3 226 225 230
		f 3 -955 319 320
		mu 0 3 230 225 229
		f 3 322 955 324
		mu 0 3 231 232 227
		f 3 -956 323 -317
		mu 0 3 227 232 228
		f 3 -321 956 327
		mu 0 3 230 229 234
		f 3 -957 325 326
		mu 0 3 234 229 233
		f 3 328 957 330
		mu 0 3 235 236 231
		f 3 -958 329 -323
		mu 0 3 231 236 232
		f 3 331 958 -206
		mu 0 3 148 237 149
		f 3 -185 959 332
		mu 0 3 133 132 237
		f 3 -959 -960 333
		mu 0 3 149 237 132
		f 3 -327 960 336
		mu 0 3 234 233 239
		f 3 -961 334 335
		mu 0 3 239 233 238
		f 3 337 961 339
		mu 0 3 240 241 235
		f 3 -962 338 -329
		mu 0 3 235 241 236
		f 3 -336 962 342
		mu 0 3 239 238 243
		f 3 -963 340 341
		mu 0 3 243 238 242
		f 3 343 963 345
		mu 0 3 244 245 240
		f 3 -964 344 -338
		mu 0 3 240 245 241
		f 3 346 964 348
		mu 0 3 246 247 244
		f 3 -965 347 -344
		mu 0 3 244 247 245
		f 3 -342 965 351
		mu 0 3 243 242 249
		f 3 -966 349 350
		mu 0 3 249 242 248
		f 3 -281 966 354
		mu 0 3 203 202 251
		f 3 -967 352 353
		mu 0 3 251 202 250
		f 3 355 967 357
		mu 0 3 252 253 246
		f 3 -968 356 -347
		mu 0 3 246 253 247
		f 3 -351 968 360
		mu 0 3 249 248 255
		f 3 -969 358 359
		mu 0 3 255 248 254
		f 3 -360 969 363
		mu 0 3 255 254 257
		f 3 -970 361 362
		mu 0 3 257 254 256
		f 3 364 970 366
		mu 0 3 258 259 252
		f 3 -971 365 -356
		mu 0 3 252 259 253
		f 3 -363 971 369
		mu 0 3 260 261 263
		f 3 -972 367 368
		mu 0 3 263 261 262
		f 3 370 972 372
		mu 0 3 264 265 258
		f 3 -973 371 -365
		mu 0 3 258 265 259
		f 3 -369 973 375
		mu 0 3 263 262 267
		f 3 -974 373 374
		mu 0 3 267 262 266
		f 3 376 974 378
		mu 0 3 268 269 264
		f 3 -975 377 -371
		mu 0 3 264 269 265
		f 3 -375 975 381
		mu 0 3 267 266 271
		f 3 -976 379 380
		mu 0 3 271 266 270
		f 3 -381 976 383
		mu 0 3 271 270 268
		f 3 -977 382 -377
		mu 0 3 268 270 269
		f 3 384 977 386
		mu 0 3 272 273 112
		f 3 -978 385 -156
		mu 0 3 112 273 113
		f 3 387 978 390
		mu 0 3 274 275 277
		f 3 -979 388 389
		mu 0 3 277 275 276
		f 3 -390 979 392
		mu 0 3 277 276 272
		f 3 -980 391 -385
		mu 0 3 272 276 273
		f 3 393 980 395
		mu 0 3 278 207 279
		f 3 -981 -285 394
		mu 0 3 279 207 206
		f 3 396 981 -152
		mu 0 3 108 280 109
		f 3 -982 397 398
		mu 0 3 109 280 281
		f 3 399 982 402
		mu 0 3 282 283 285
		f 3 -983 400 401
		mu 0 3 285 283 284
		f 3 403 983 -398
		mu 0 3 280 282 281
		f 3 -984 -403 404
		mu 0 3 281 282 285
		f 3 -354 984 407
		mu 0 3 251 250 288
		f 3 406 985 -388
		mu 0 3 287 288 286
		f 3 405 -986 -985
		mu 0 3 250 286 288
		f 3 409 986 -396
		mu 0 3 279 289 278
		f 3 -401 987 410
		mu 0 3 290 283 289
		f 3 408 -987 -988
		mu 0 3 283 278 289
		f 3 -407 988 412
		mu 0 3 291 292 297
		f 3 -391 989 -989
		mu 0 3 292 293 297
		f 3 -393 990 -990
		mu 0 3 293 294 297
		f 3 -387 991 -991
		mu 0 3 294 295 297
		f 3 -155 411 -992
		mu 0 3 295 296 297
		f 3 414 992 -411
		mu 0 3 304 298 303
		f 3 -993 993 -402
		mu 0 3 303 298 302
		f 3 -994 994 -405
		mu 0 3 302 298 301
		f 3 -995 995 -399
		mu 0 3 301 298 300
		f 3 413 -153 -996
		mu 0 3 298 299 300
		f 3 -193 996 417
		mu 0 3 307 308 306
		f 3 -180 997 -997
		mu 0 3 308 309 306
		f 3 416 998 415
		mu 0 3 305 306 297
		f 3 -171 999 -998
		mu 0 3 309 310 306
		f 3 -159 1000 -1000
		mu 0 3 310 311 306
		f 3 -145 1001 -1001
		mu 0 3 311 312 306
		f 3 418 1002 -149
		mu 0 3 319 320 318
		f 3 -47 1003 -1003
		mu 0 3 320 321 318
		f 3 -133 1004 -1002
		mu 0 3 312 313 306
		f 3 -1004 1005 -137
		mu 0 3 318 321 317
		f 3 -41 1006 -1006
		mu 0 3 321 322 317
		f 3 427 1007 426
		mu 0 3 336 297 335
		f 3 -127 1008 -1005
		mu 0 3 313 314 306
		f 3 -1007 1009 -131
		mu 0 3 317 322 316
		f 3 -34 1010 -1010
		mu 0 3 322 323 316
		f 3 -1008 1011 425
		mu 0 3 335 297 334
		f 3 -999 1012 -1012
		mu 0 3 297 306 334
		f 3 -1013 1013 424
		mu 0 3 334 306 333
		f 3 -1014 1014 423
		mu 0 3 333 306 332
		f 3 -1015 1015 422
		mu 0 3 332 306 331
		f 3 -1016 1016 421
		mu 0 3 331 306 330
		f 3 -1017 1017 420
		mu 0 3 330 306 329
		f 3 -1018 1018 419
		mu 0 3 329 306 328
		f 3 -1019 1019 -3
		mu 0 3 328 306 327
		f 3 -1020 1020 -10
		mu 0 3 327 306 326
		f 3 -1021 1021 -16
		mu 0 3 326 306 325
		f 3 -1022 1022 -22
		mu 0 3 325 306 324
		f 3 -115 1023 -1009
		mu 0 3 314 315 306
		f 3 -1011 1024 -119
		mu 0 3 316 323 315
		f 3 -1024 1025 -1023
		mu 0 3 306 315 324
		f 3 -1025 -28 -1026
		mu 0 3 315 323 324
		f 3 -246 1026 430
		mu 0 3 337 338 113
		f 3 -249 1027 -1027
		mu 0 3 338 339 113
		f 3 429 1028 -81
		mu 0 3 364 113 363
		f 3 -255 1029 -1028
		mu 0 3 339 340 113
		f 3 -1029 1030 -52
		mu 0 3 363 113 362
		f 3 -261 1031 -1030
		mu 0 3 340 341 113
		f 3 -1031 1032 -59
		mu 0 3 362 113 361
		f 3 -1033 1033 -65
		mu 0 3 361 113 360
		f 3 -267 1034 -1032
		mu 0 3 341 342 113
		f 3 -1034 1035 -71
		mu 0 3 360 113 359
		f 3 -270 1036 -1035
		mu 0 3 342 343 113
		f 3 -1036 1037 -68
		mu 0 3 359 113 358
		f 3 -264 1038 -1037
		mu 0 3 343 344 113
		f 3 -1038 1039 -62
		mu 0 3 358 113 357
		f 3 428 1040 -161
		mu 0 3 354 355 353
		f 3 -49 1041 -1041
		mu 0 3 355 356 353
		f 3 -258 1042 -1039
		mu 0 3 344 345 113
		f 3 -1040 1043 -56
		mu 0 3 357 113 356
		f 3 -1042 1044 -173
		mu 0 3 353 356 352
		f 3 -252 1045 -1043
		mu 0 3 345 346 113
		f 3 -1045 1046 -182
		mu 0 3 352 356 351
		f 3 -243 1047 -1046
		mu 0 3 346 347 113
		f 3 -1048 1048 -1044
		mu 0 3 113 347 356
		f 3 -237 1049 -1049
		mu 0 3 347 348 356
		f 3 -229 1050 -1050
		mu 0 3 348 349 356
		f 3 -211 1051 -1051
		mu 0 3 349 350 356
		f 3 -195 -1047 -1052
		mu 0 3 350 351 356
		f 3 -395 1052 435
		mu 0 3 365 366 398
		f 3 -284 1053 -1053
		mu 0 3 366 367 398
		f 3 -1054 1054 -328
		mu 0 3 398 367 397
		f 3 -1055 1055 -322
		mu 0 3 397 367 396
		f 3 432 1056 431
		mu 0 3 368 298 367
		f 3 -1056 1057 -316
		mu 0 3 396 367 395
		f 3 -1058 1058 -307
		mu 0 3 395 367 394
		f 3 -1059 1059 -301
		mu 0 3 394 367 393
		f 3 434 1060 -200
		mu 0 3 385 386 384
		f 3 -304 1061 -1061
		mu 0 3 386 387 384
		f 3 -1060 1062 -295
		mu 0 3 393 367 392
		f 3 -1062 1063 -191
		mu 0 3 384 387 383
		f 3 -298 1064 -1064
		mu 0 3 387 388 383
		f 3 -100 1065 433
		mu 0 3 369 370 298
		f 3 -1063 1066 -289
		mu 0 3 392 367 391
		f 3 -1065 1067 -178
		mu 0 3 383 388 382
		f 3 -292 1068 -1068
		mu 0 3 388 389 382
		f 3 -94 1069 -1066
		mu 0 3 370 371 298
		f 3 -1070 1070 -1057
		mu 0 3 298 371 367
		f 3 -88 1071 -1071
		mu 0 3 371 372 367
		f 3 -79 1072 -1072
		mu 0 3 372 373 367
		f 3 -76 1073 -1073
		mu 0 3 373 374 367
		f 3 -85 1074 -1074
		mu 0 3 374 375 367
		f 3 -91 1075 -1075
		mu 0 3 375 376 367
		f 3 -97 1076 -1076
		mu 0 3 376 377 367
		f 3 -103 1077 -1077
		mu 0 3 377 378 367
		f 3 -109 1078 -1078
		mu 0 3 378 379 367
		f 3 -122 1079 -1079
		mu 0 3 379 380 367
		f 3 -140 1080 -1080
		mu 0 3 380 381 367
		f 3 -1067 1081 -275
		mu 0 3 391 367 390
		f 3 -1069 1082 -166
		mu 0 3 382 389 381
		f 3 -1081 1083 -1082
		mu 0 3 367 381 390
		f 3 -1083 -278 -1084
		mu 0 3 381 389 390
		f 3 -282 1084 -418
		mu 0 3 306 399 307
		f 3 -1085 1085 -209
		mu 0 3 307 399 434
		f 3 -1086 1086 -227
		mu 0 3 434 399 433
		f 3 -1087 1087 -241
		mu 0 3 433 399 432
		f 3 -1088 1088 -247
		mu 0 3 432 399 431
		f 3 -7 1089 -428
		mu 0 3 336 401 297
		f 3 -14 1090 -1090
		mu 0 3 401 402 297
		f 3 -1089 1091 -250
		mu 0 3 431 399 430
		f 3 -419 1092 -50
		mu 0 3 320 319 415
		f 3 -163 1093 -1093
		mu 0 3 319 416 415
		f 3 -355 1094 -1092
		mu 0 3 399 400 430
		f 3 -1095 1095 -256
		mu 0 3 430 400 429
		f 3 -408 1096 -1096
		mu 0 3 400 291 429
		f 3 -1097 1097 -262
		mu 0 3 429 291 428
		f 3 -1098 1098 -268
		mu 0 3 428 291 427
		f 3 -20 1099 -1091
		mu 0 3 402 403 297
		f 3 -1094 1100 -57
		mu 0 3 415 416 414
		f 3 -175 1101 -1101
		mu 0 3 416 417 414
		f 3 -1102 1102 -63
		mu 0 3 414 417 413
		f 3 -184 1103 -1103
		mu 0 3 417 418 413
		f 3 -26 1104 -1100
		mu 0 3 403 404 297
		f 3 -1099 1105 -271
		mu 0 3 427 291 426
		f 3 -1104 1106 -69
		mu 0 3 413 418 412
		f 3 -197 1107 -1107
		mu 0 3 418 419 412
		f 3 -32 1108 -1105
		mu 0 3 404 405 297
		f 3 -1106 1109 -266
		mu 0 3 426 291 425
		f 3 -1108 1110 -72
		mu 0 3 412 419 411
		f 3 -213 1111 -1111
		mu 0 3 419 420 411
		f 3 -45 1112 -1109
		mu 0 3 405 406 297
		f 3 -1110 1113 -260
		mu 0 3 425 291 424
		f 3 -1112 1114 -67
		mu 0 3 411 420 410
		f 3 -231 1115 -1115
		mu 0 3 420 421 410
		f 3 -38 1116 -1113
		mu 0 3 406 407 297
		f 3 -1114 1117 -254
		mu 0 3 424 291 423
		f 3 -413 1118 -1118
		mu 0 3 291 297 423
		f 3 -1119 1119 -245
		mu 0 3 423 297 422
		f 3 -1120 1120 -239
		mu 0 3 422 297 421
		f 3 -1116 1121 -61
		mu 0 3 410 421 409
		f 3 -82 1122 -1117
		mu 0 3 407 408 297
		f 3 -1123 1123 -1121
		mu 0 3 297 408 421
		f 3 -54 -1122 -1124
		mu 0 3 408 409 421
		f 3 -337 1124 -436
		mu 0 3 398 435 365
		f 3 -343 1125 -1125
		mu 0 3 435 436 365
		f 3 -352 1126 -1126
		mu 0 3 436 437 365
		f 3 -361 1127 -1127
		mu 0 3 437 438 365
		f 3 -364 1128 -1128
		mu 0 3 438 439 365
		f 3 -434 1129 -106
		mu 0 3 369 298 468
		f 3 -370 1130 -1129
		mu 0 3 439 440 365
		f 3 -1131 1131 -410
		mu 0 3 365 440 304
		f 3 -376 1132 -1132
		mu 0 3 440 441 304
		f 3 -1130 1133 -112
		mu 0 3 468 298 467
		f 3 -435 1134 -310
		mu 0 3 386 385 453
		f 3 -203 1135 -1135
		mu 0 3 385 454 453
		f 3 -382 1136 -1133
		mu 0 3 441 442 304
		f 3 -1136 1137 -319
		mu 0 3 453 454 452
		f 3 -216 1138 -1138
		mu 0 3 454 455 452
		f 3 -1134 1139 -125
		mu 0 3 467 298 466
		f 3 -1139 1140 -325
		mu 0 3 452 455 451
		f 3 -222 1141 -1141
		mu 0 3 455 456 451
		f 3 -384 1142 -1137
		mu 0 3 442 443 304
		f 3 -1140 1143 -143
		mu 0 3 466 298 465
		f 3 -1142 1144 -331
		mu 0 3 451 456 450
		f 3 -234 1145 -1145
		mu 0 3 456 457 450
		f 3 -1144 1146 -169
		mu 0 3 465 298 464
		f 3 -379 1147 -1143
		mu 0 3 443 444 304
		f 3 -1146 1148 -340
		mu 0 3 450 457 449
		f 3 -236 1149 -1149
		mu 0 3 457 458 449
		f 3 -1147 1150 -313
		mu 0 3 464 298 463
		f 3 -373 1151 -1148
		mu 0 3 444 445 304
		f 3 -1150 1152 -346
		mu 0 3 449 458 448
		f 3 -225 1153 -1153
		mu 0 3 458 459 448
		f 3 -1151 1154 -188
		mu 0 3 463 298 462
		f 3 -367 1155 -1152
		mu 0 3 445 446 304
		f 3 -1156 1156 -415
		mu 0 3 304 446 298
		f 3 -358 1157 -1157
		mu 0 3 446 447 298
		f 3 -349 1158 -1158
		mu 0 3 447 448 298
		f 3 -219 1159 -1154
		mu 0 3 459 460 448
		f 3 -1155 1160 -334
		mu 0 3 462 298 461
		f 3 -1159 1161 -1161
		mu 0 3 298 448 461
		f 3 -1160 -207 -1162
		mu 0 3 448 460 461
		f 3 -332 1162 436
		mu 0 3 469 470 108
		f 3 -205 1163 -1163
		mu 0 3 470 471 108
		f 3 -218 1164 -1164
		mu 0 3 471 472 108
		f 3 -224 1165 -1165
		mu 0 3 472 473 108
		f 3 -235 1166 -1166
		mu 0 3 473 474 108
		f 3 -232 1167 -1167
		mu 0 3 474 475 108
		f 3 438 1168 -359
		mu 0 3 496 207 495
		f 3 -220 1169 -1168
		mu 0 3 475 476 108
		f 3 -1169 1170 -362
		mu 0 3 495 207 494
		f 3 437 1171 -201
		mu 0 3 478 479 477
		f 3 -309 1172 -1172
		mu 0 3 479 480 477
		f 3 -394 1173 -1171
		mu 0 3 207 278 494
		f 3 -1174 1174 -368
		mu 0 3 494 278 493
		f 3 -409 1175 -1175
		mu 0 3 278 283 493
		f 3 -400 1176 -1176
		mu 0 3 283 282 493
		f 3 -1177 1177 -374
		mu 0 3 493 282 492
		f 3 -404 1178 -1178
		mu 0 3 282 280 492
		f 3 -1179 1179 -380
		mu 0 3 492 280 491
		f 3 -397 1180 -1180
		mu 0 3 280 108 491
		f 3 -1181 1181 -383
		mu 0 3 491 108 490
		f 3 -1182 1182 -378
		mu 0 3 490 108 489
		f 3 -1183 1183 -372
		mu 0 3 489 108 488
		f 3 -214 1184 -1170
		mu 0 3 476 477 108
		f 3 -318 1185 -1173
		mu 0 3 480 481 477
		f 3 -1184 1186 -366
		mu 0 3 488 108 487
		f 3 -324 1187 -1186
		mu 0 3 481 482 477
		f 3 -1187 1188 -357
		mu 0 3 487 108 486
		f 3 -1185 1189 -1189
		mu 0 3 108 477 486
		f 3 -1190 1190 -348
		mu 0 3 486 477 485
		f 3 -1191 1191 -345
		mu 0 3 485 477 484
		f 3 -1192 1192 -339
		mu 0 3 484 477 483
		f 3 -1188 -330 -1193
		mu 0 3 477 482 483
		f 3 439 1193 440
		mu 0 3 497 4 498
		f 3 -1194 -8 -427
		mu 0 3 498 4 7
		f 3 441 1194 -2
		mu 0 3 1 499 2
		f 3 -1195 442 -420
		mu 0 3 2 499 500
		f 3 443 1195 444
		mu 0 3 501 497 502
		f 3 -1196 -441 -426
		mu 0 3 502 497 498
		f 3 445 1196 -443
		mu 0 3 499 503 500
		f 3 -1197 446 -421
		mu 0 3 500 503 504
		f 3 447 1197 448
		mu 0 3 505 501 506;
	setAttr ".fc[500:999]"
		f 3 -1198 -445 -425
		mu 0 3 506 501 502
		f 3 449 1198 -447
		mu 0 3 503 507 504
		f 3 -1199 450 -422
		mu 0 3 504 507 508
		f 3 451 1199 452
		mu 0 3 509 505 510
		f 3 -1200 -449 -424
		mu 0 3 510 505 506
		f 3 453 1200 -451
		mu 0 3 507 509 508
		f 3 -1201 -453 -423
		mu 0 3 508 509 510
		f 3 -154 1201 -412
		mu 0 3 296 299 297
		f 3 -1202 -414 454
		mu 0 3 297 299 298
		f 3 455 1202 -433
		mu 0 3 368 511 298
		f 3 -1203 -416 -455
		mu 0 3 298 511 512
		f 3 -283 1203 -432
		mu 0 3 513 306 514
		f 3 -1204 -417 -456
		mu 0 3 514 306 305
		f 3 456 1204 459
		mu 0 3 515 516 518
		f 3 -1205 457 458
		mu 0 3 518 516 517
		f 3 460 1205 -458
		mu 0 3 516 519 517
		f 3 -1206 461 462
		mu 0 3 517 519 520
		f 3 463 1206 465
		mu 0 3 521 107 522
		f 3 -1207 -150 464
		mu 0 3 522 107 106
		f 3 466 1207 468
		mu 0 3 523 515 524
		f 3 -1208 -460 467
		mu 0 3 524 515 518
		f 3 469 1208 -462
		mu 0 3 519 525 520
		f 3 -1209 470 471
		mu 0 3 520 525 526
		f 3 472 1209 474
		mu 0 3 527 523 528
		f 3 -1210 -469 473
		mu 0 3 528 523 524
		f 3 475 1210 -471
		mu 0 3 525 529 526
		f 3 -1211 476 477
		mu 0 3 526 529 530
		f 3 478 1211 480
		mu 0 3 531 527 532
		f 3 -1212 -475 479
		mu 0 3 532 527 528
		f 3 481 1212 -477
		mu 0 3 533 534 536
		f 3 -1213 482 483
		mu 0 3 536 534 535
		f 3 484 1213 -483
		mu 0 3 534 537 535
		f 3 -1214 485 486
		mu 0 3 535 537 538
		f 3 487 1214 489
		mu 0 3 539 531 540
		f 3 -1215 -481 488
		mu 0 3 540 531 532
		f 3 490 1215 492
		mu 0 3 541 521 542
		f 3 -1216 -466 491
		mu 0 3 542 521 522
		f 3 493 1216 -486
		mu 0 3 537 543 538
		f 3 -1217 494 495
		mu 0 3 538 543 544
		f 3 496 1217 498
		mu 0 3 545 539 546
		f 3 -1218 -490 497
		mu 0 3 546 539 540
		f 3 499 1218 501
		mu 0 3 547 545 548
		f 3 -1219 -499 500
		mu 0 3 548 545 546
		f 3 502 1219 -495
		mu 0 3 543 549 544
		f 3 -1220 503 504
		mu 0 3 544 549 550
		f 3 505 1220 507
		mu 0 3 551 552 554
		f 3 -1221 506 -279
		mu 0 3 554 552 553
		f 3 508 1221 510
		mu 0 3 555 547 556
		f 3 -1222 -502 509
		mu 0 3 556 547 548
		f 3 511 1222 -504
		mu 0 3 549 557 550
		f 3 -1223 512 513
		mu 0 3 550 557 558
		f 3 514 1223 516
		mu 0 3 559 541 561
		f 3 -1224 -493 515
		mu 0 3 561 541 560
		f 3 517 1224 519
		mu 0 3 562 555 563
		f 3 -1225 -511 518
		mu 0 3 563 555 556
		f 3 520 1225 -513
		mu 0 3 557 564 558
		f 3 -1226 521 522
		mu 0 3 558 564 565
		f 3 523 1226 525
		mu 0 3 566 562 567
		f 3 -1227 -520 524
		mu 0 3 567 562 563
		f 3 526 1227 -522
		mu 0 3 564 568 565
		f 3 -1228 527 528
		mu 0 3 565 568 569
		f 3 530 1228 529
		mu 0 3 571 572 570
		f 3 -1229 531 532
		mu 0 3 570 572 573
		f 3 534 1229 533
		mu 0 3 575 571 574
		f 3 -1230 -530 535
		mu 0 3 574 571 570
		f 3 536 1230 -532
		mu 0 3 572 576 573
		f 3 -1231 537 538
		mu 0 3 573 576 577
		f 3 539 1231 -528
		mu 0 3 568 578 569
		f 3 -1232 540 541
		mu 0 3 569 578 579
		f 3 542 1232 -538
		mu 0 3 576 580 577
		f 3 -1233 543 544
		mu 0 3 577 580 581
		f 3 546 1233 545
		mu 0 3 583 584 582
		f 3 -1234 547 548
		mu 0 3 582 584 585
		f 3 549 1234 551
		mu 0 3 586 559 587
		f 3 -1235 -517 550
		mu 0 3 587 559 561
		f 3 552 1235 -544
		mu 0 3 580 588 581
		f 3 -1236 553 554
		mu 0 3 581 588 589
		f 3 555 1236 558
		mu 0 3 590 591 593
		f 3 -1237 556 557
		mu 0 3 593 591 592
		f 3 559 1237 562
		mu 0 3 594 595 597
		f 3 -1238 560 561
		mu 0 3 597 595 596
		f 3 563 1238 -541
		mu 0 3 578 598 579
		f 3 -1239 564 565
		mu 0 3 579 598 599
		f 3 566 1239 569
		mu 0 3 600 601 603
		f 3 -1240 567 568
		mu 0 3 603 601 602
		f 3 570 1240 572
		mu 0 3 604 605 594
		f 3 -1241 571 -560
		mu 0 3 594 605 595
		f 3 -569 1241 575
		mu 0 3 603 602 607
		f 3 -1242 573 574
		mu 0 3 607 602 606
		f 3 576 1242 578
		mu 0 3 608 609 590
		f 3 -1243 577 -556
		mu 0 3 590 609 591
		f 3 579 1243 -565
		mu 0 3 598 610 599
		f 3 -1244 580 581
		mu 0 3 599 610 611
		f 3 -575 1244 584
		mu 0 3 607 606 613
		f 3 -1245 582 583
		mu 0 3 613 606 612
		f 3 585 1245 588
		mu 0 3 614 615 617
		f 3 -1246 586 587
		mu 0 3 617 615 616
		f 3 589 1246 591
		mu 0 3 618 619 614
		f 3 -1247 590 -586
		mu 0 3 614 619 615
		f 3 -584 1247 594
		mu 0 3 613 612 621
		f 3 -1248 592 593
		mu 0 3 621 612 620
		f 3 595 1248 -581
		mu 0 3 610 622 611
		f 3 -1249 596 597
		mu 0 3 611 622 623
		f 3 598 1249 600
		mu 0 3 624 625 618
		f 3 -1250 599 -590
		mu 0 3 618 625 619
		f 3 601 1250 604
		mu 0 3 626 627 629
		f 3 -1251 602 603
		mu 0 3 629 627 628
		f 3 605 1251 -597
		mu 0 3 622 630 623
		f 3 -1252 606 607
		mu 0 3 623 630 631
		f 3 608 1252 610
		mu 0 3 632 626 633
		f 3 -1253 -605 609
		mu 0 3 633 626 629
		f 3 611 1253 -607
		mu 0 3 630 632 631
		f 3 -1254 -611 612
		mu 0 3 631 632 633
		f 3 613 1254 615
		mu 0 3 634 635 624
		f 3 -1255 614 -599
		mu 0 3 624 635 625
		f 3 616 1255 619
		mu 0 3 636 637 639
		f 3 -1256 617 618
		mu 0 3 639 637 638
		f 3 -558 1256 622
		mu 0 3 593 592 641
		f 3 -1257 620 621
		mu 0 3 641 592 640
		f 3 623 1257 625
		mu 0 3 642 643 634
		f 3 -1258 624 -614
		mu 0 3 634 643 635
		f 3 627 1258 626
		mu 0 3 645 643 644
		f 3 -1259 -624 628
		mu 0 3 644 643 642
		f 3 630 1259 629
		mu 0 3 647 648 646
		f 3 -1260 631 632
		mu 0 3 646 648 649
		f 3 634 1260 633
		mu 0 3 651 645 650
		f 3 -1261 -627 635
		mu 0 3 650 645 644
		f 3 636 1261 -632
		mu 0 3 648 652 649
		f 3 -1262 637 638
		mu 0 3 649 652 653
		f 3 640 1262 639
		mu 0 3 655 651 654
		f 3 -1263 -634 641
		mu 0 3 654 651 650
		f 3 643 1263 642
		mu 0 3 657 655 656
		f 3 -1264 -640 644
		mu 0 3 656 655 654
		f 3 646 1264 645
		mu 0 3 659 657 658
		f 3 -1265 -643 647
		mu 0 3 658 657 656
		f 3 648 1265 651
		mu 0 3 660 661 663
		f 3 -1266 649 650
		mu 0 3 663 661 662
		f 3 652 1266 654
		mu 0 3 664 665 660
		f 3 -1267 653 -649
		mu 0 3 660 665 661
		f 3 -651 1267 657
		mu 0 3 663 662 667
		f 3 -1268 655 656
		mu 0 3 667 662 666
		f 3 -657 1268 660
		mu 0 3 667 666 669
		f 3 -1269 658 659
		mu 0 3 669 666 668
		f 3 661 1269 664
		mu 0 3 670 671 673
		f 3 -1270 662 663
		mu 0 3 673 671 672
		f 3 -660 1270 667
		mu 0 3 669 668 675
		f 3 -1271 665 666
		mu 0 3 675 668 674
		f 3 668 1271 670
		mu 0 3 676 677 679
		f 3 -1272 -662 669
		mu 0 3 679 677 678
		f 3 671 1272 673
		mu 0 3 680 681 679
		f 3 -1273 672 -671
		mu 0 3 679 681 676
		f 3 674 1273 676
		mu 0 3 682 683 680
		f 3 -1274 675 -672
		mu 0 3 680 683 681
		f 3 677 1274 680
		mu 0 3 684 685 687
		f 3 -1275 678 679
		mu 0 3 687 685 686
		f 3 -680 1275 683
		mu 0 3 687 686 689
		f 3 -1276 681 682
		mu 0 3 689 686 688
		f 3 -683 1276 686
		mu 0 3 689 688 691
		f 3 -1277 684 685
		mu 0 3 691 688 690
		f 3 687 1277 690
		mu 0 3 692 693 695
		f 3 -1278 688 689
		mu 0 3 695 693 694
		f 3 -686 1278 693
		mu 0 3 691 690 697
		f 3 -1279 691 692
		mu 0 3 697 690 696
		f 3 694 1279 696
		mu 0 3 698 699 692
		f 3 -1280 695 -688
		mu 0 3 692 699 693
		f 3 -622 1280 699
		mu 0 3 700 701 703
		f 3 -1281 697 698
		mu 0 3 703 701 702
		f 3 700 1281 702
		mu 0 3 704 705 698
		f 3 -1282 701 -695
		mu 0 3 698 705 699
		f 3 703 1282 706
		mu 0 3 706 707 709
		f 3 -1283 704 705
		mu 0 3 709 707 708
		f 3 707 1283 709
		mu 0 3 710 711 704
		f 3 -1284 708 -701
		mu 0 3 704 711 705
		f 3 710 1284 -706
		mu 0 3 708 712 709
		f 3 -1285 711 712
		mu 0 3 709 712 713
		f 3 713 1285 715
		mu 0 3 714 715 710
		f 3 -1286 714 -708
		mu 0 3 710 715 711
		f 3 -712 1286 718
		mu 0 3 713 712 717
		f 3 -1287 716 717
		mu 0 3 717 712 716
		f 3 719 1287 721
		mu 0 3 718 719 714
		f 3 -1288 720 -714
		mu 0 3 714 719 715
		f 3 722 1288 725
		mu 0 3 720 721 722
		f 3 -1289 723 724
		mu 0 3 722 721 608
		f 3 -718 1289 728
		mu 0 3 717 716 724
		f 3 -1290 726 727
		mu 0 3 724 716 723
		f 3 729 1290 731
		mu 0 3 725 726 718
		f 3 -1291 730 -720
		mu 0 3 718 726 719
		f 3 732 1291 734
		mu 0 3 727 728 725
		f 3 -1292 733 -730
		mu 0 3 725 728 726
		f 3 735 1292 738
		mu 0 3 729 730 732
		f 3 -1293 736 737
		mu 0 3 732 730 731
		f 3 -738 1293 740
		mu 0 3 732 731 727
		f 3 -1294 739 -733
		mu 0 3 727 731 728
		f 3 742 1294 741
		mu 0 3 734 735 733
		f 3 -1295 743 744
		mu 0 3 733 735 609
		f 3 -726 1295 745
		mu 0 3 720 722 736
		f 3 -1296 746 747
		mu 0 3 736 722 703
		f 3 748 1296 -743
		mu 0 3 734 737 735
		f 3 -1297 749 750
		mu 0 3 735 737 702
		f 3 751 1297 754
		mu 0 3 738 739 741
		f 3 -1298 752 753
		mu 0 3 741 739 740
		f 3 755 1298 757
		mu 0 3 742 738 743
		f 3 -1299 -755 756
		mu 0 3 743 738 741
		f 3 -562 1299 759
		mu 0 3 597 596 746
		f 3 758 1300 -546
		mu 0 3 745 746 744
		f 3 -1301 -1300 760
		mu 0 3 744 746 596
		f 3 762 1301 761
		mu 0 3 747 601 588
		f 3 -554 1302 763
		mu 0 3 589 588 600
		f 3 -1302 -567 -1303
		mu 0 3 588 601 600
		f 3 765 1303 764
		mu 0 3 748 639 646
		f 3 -619 1304 -1304
		mu 0 3 639 638 646
		f 3 -630 -1305 766
		mu 0 3 647 646 638
		f 3 768 1305 -653
		mu 0 3 664 749 665
		f 3 -1306 1306 767
		mu 0 3 665 749 672
		f 3 -1307 769 -664
		mu 0 3 672 749 673
		f 3 772 1307 771
		mu 0 3 750 675 684
		f 3 -667 1308 -1308
		mu 0 3 675 674 684
		f 3 770 -678 -1309
		mu 0 3 674 685 684
		f 3 774 1309 -675
		mu 0 3 682 751 683
		f 3 -1310 1310 773
		mu 0 3 683 751 694
		f 3 -1311 775 -690
		mu 0 3 694 751 695
		f 3 777 1311 -704
		mu 0 3 706 752 707
		f 3 -1312 1312 776
		mu 0 3 707 752 696
		f 3 -1313 778 -693
		mu 0 3 696 752 697
		f 3 780 1313 -736
		mu 0 3 729 753 730
		f 3 -1314 1314 779
		mu 0 3 730 753 723
		f 3 -1315 781 -728
		mu 0 3 723 753 724
		f 3 782 1315 -724
		mu 0 3 721 754 608
		f 3 783 1316 -1316
		mu 0 3 754 733 608
		f 3 -1317 -745 -577
		mu 0 3 608 733 609
		f 3 785 1317 784
		mu 0 3 758 759 757
		f 3 -1318 1318 -549
		mu 0 3 757 759 756
		f 3 786 1319 -1319
		mu 0 3 759 760 756
		f 3 -759 -1320 787
		mu 0 3 755 756 760
		f 3 -748 1320 789
		mu 0 3 736 703 761
		f 3 -1321 1321 788
		mu 0 3 761 703 737
		f 3 -750 -1322 -699
		mu 0 3 702 737 703
		f 3 790 1322 -534
		mu 0 3 574 762 575
		f 3 -1323 1323 792
		mu 0 3 575 762 763
		f 3 -785 1324 -1324
		mu 0 3 762 585 763
		f 3 -548 791 -1325
		mu 0 3 585 584 763
		f 3 -588 1325 794
		mu 0 3 617 616 764
		f 3 795 1326 -1326
		mu 0 3 616 765 764
		f 3 -1327 1327 793
		mu 0 3 764 765 604
		f 3 -571 -1328 796
		mu 0 3 605 604 765
		f 3 -594 1328 798
		mu 0 3 621 620 766
		f 3 799 1329 -1329
		mu 0 3 620 767 766
		f 3 -1330 1330 797
		mu 0 3 766 767 636
		f 3 -617 -1331 800
		mu 0 3 637 636 767
		f 3 -798 1331 802
		mu 0 3 770 771 769
		f 3 -620 1332 -1332
		mu 0 3 771 772 769
		f 3 -1333 1333 801
		mu 0 3 769 772 768
		f 3 -1334 -766 803
		mu 0 3 768 772 773
		f 3 804 1334 -646
		mu 0 3 658 774 659
		f 3 -1335 1335 807
		mu 0 3 659 774 775
		f 3 805 1336 -1336
		mu 0 3 774 653 775
		f 3 -638 806 -1337
		mu 0 3 653 652 775
		f 3 -788 1337 -760
		mu 0 3 755 760 779
		f 3 -794 1338 809
		mu 0 3 776 777 780
		f 3 -573 1339 -1339
		mu 0 3 777 778 780
		f 3 -1340 1340 808
		mu 0 3 780 778 760
		f 3 -563 -1338 -1341
		mu 0 3 778 779 760
		f 3 -633 1341 -765
		mu 0 3 782 783 773
		f 3 811 1342 -806
		mu 0 3 785 781 784
		f 3 -1343 1343 -639
		mu 0 3 784 781 783
		f 3 810 1344 -1344
		mu 0 3 781 768 783
		f 3 -804 -1342 -1345
		mu 0 3 768 773 783
		f 3 812 1345 -579
		mu 0 3 786 787 794
		f 3 -792 1346 -1346
		mu 0 3 787 788 794
		f 3 -547 1347 -1347
		mu 0 3 788 789 794
		f 3 -761 1348 -1348
		mu 0 3 789 790 794
		f 3 -561 1349 -1349
		mu 0 3 790 791 794
		f 3 -572 1350 -1350
		mu 0 3 791 792 794
		f 3 -797 813 -1351
		mu 0 3 792 793 794
		f 3 -623 1351 815
		mu 0 3 803 795 802
		f 3 -1352 1352 -763
		mu 0 3 802 795 801
		f 3 -1353 1353 -568
		mu 0 3 801 795 800
		f 3 -1354 1354 -574
		mu 0 3 800 795 799
		f 3 -1355 1355 -583
		mu 0 3 799 795 798
		f 3 -1356 1356 -593
		mu 0 3 798 795 797
		f 3 814 -800 -1357
		mu 0 3 795 796 797
		f 3 -725 1357 816
		mu 0 3 810 794 809
		f 3 -1358 1358 -625
		mu 0 3 809 794 808
		f 3 -1359 1359 -615
		mu 0 3 808 794 807
		f 3 -1360 1360 -600
		mu 0 3 807 794 806
		f 3 -1361 1361 -591
		mu 0 3 806 794 805
		f 3 -1362 1362 -587
		mu 0 3 805 794 804
		f 3 -814 -796 -1363
		mu 0 3 794 793 804
		f 3 817 1363 -578
		mu 0 3 811 812 819
		f 3 -775 1364 -1364
		mu 0 3 812 813 819
		f 3 -677 1365 -1365
		mu 0 3 813 814 819
		f 3 -674 1366 -1366
		mu 0 3 814 815 819
		f 3 -670 1367 -1367
		mu 0 3 815 816 819
		f 3 -665 1368 -1368
		mu 0 3 816 817 819
		f 3 -770 818 -1369
		mu 0 3 817 818 819
		f 3 819 1369 -700
		mu 0 3 820 821 795
		f 3 -807 1370 -1370
		mu 0 3 821 822 795
		f 3 -637 1371 -1371
		mu 0 3 822 823 795
		f 3 -631 1372 -1372
		mu 0 3 823 824 795
		f 3 -767 1373 -1373
		mu 0 3 824 825 795
		f 3 -618 1374 -1374
		mu 0 3 825 826 795
		f 3 -801 -815 -1375
		mu 0 3 826 796 795
		f 3 820 1375 -621
		mu 0 3 827 828 835
		f 3 -772 1376 -1376
		mu 0 3 828 829 835
		f 3 -681 1377 -1377
		mu 0 3 829 830 835
		f 3 -684 1378 -1378
		mu 0 3 830 831 835
		f 3 -687 1379 -1379
		mu 0 3 831 832 835
		f 3 -694 1380 -1380
		mu 0 3 832 833 835
		f 3 -779 821 -1381
		mu 0 3 833 834 835
		f 3 -817 1381 -747
		mu 0 3 810 809 820
		f 3 -628 1382 -1382
		mu 0 3 809 836 820
		f 3 -635 1383 -1383
		mu 0 3 836 837 820
		f 3 -641 1384 -1384
		mu 0 3 837 838 820
		f 3 -644 1385 -1385
		mu 0 3 838 839 820
		f 3 -647 1386 -1386
		mu 0 3 839 840 820
		f 3 -808 -820 -1387
		mu 0 3 840 821 820
		f 3 822 1387 -744
		mu 0 3 841 842 811
		f 3 -716 1388 -1388
		mu 0 3 842 843 811
		f 3 -710 1389 -1389
		mu 0 3 843 844 811
		f 3 -703 1390 -1390
		mu 0 3 844 845 811
		f 3 -697 1391 -1391
		mu 0 3 845 846 811
		f 3 -691 1392 -1392
		mu 0 3 846 847 811
		f 3 -776 -818 -1393
		mu 0 3 847 812 811
		f 3 -822 1393 -698
		mu 0 3 835 834 854
		f 3 -778 1394 -1394
		mu 0 3 834 848 854
		f 3 -707 1395 -1395
		mu 0 3 848 849 854
		f 3 -713 1396 -1396
		mu 0 3 849 850 854
		f 3 -719 1397 -1397
		mu 0 3 850 851 854
		f 3 -729 1398 -1398
		mu 0 3 851 852 854
		f 3 -782 823 -1399
		mu 0 3 852 853 854
		f 3 -751 1399 -823
		mu 0 3 841 854 842
		f 3 -1400 1400 -722
		mu 0 3 842 854 859
		f 3 -1401 1401 -732
		mu 0 3 859 854 858
		f 3 -1402 1402 -735
		mu 0 3 858 854 857
		f 3 -1403 1403 -741
		mu 0 3 857 854 856
		f 3 -1404 1404 -739
		mu 0 3 856 854 855
		f 3 -824 -781 -1405
		mu 0 3 854 853 855
		f 3 -553 1405 -762
		mu 0 3 860 861 802
		f 3 -816 1406 -559
		mu 0 3 803 802 786
		f 3 -1406 1407 -1407
		mu 0 3 802 861 786
		f 3 -543 1408 -1408
		mu 0 3 861 862 786
		f 3 -537 1409 -1409
		mu 0 3 862 863 786
		f 3 -531 1410 -1410
		mu 0 3 863 864 786
		f 3 -535 1411 -1411
		mu 0 3 864 865 786
		f 3 -793 -813 -1412
		mu 0 3 865 787 786
		f 3 -821 1412 -773
		mu 0 3 828 827 871
		f 3 -557 1413 -1413
		mu 0 3 827 819 871
		f 3 -1414 1414 -668
		mu 0 3 871 819 870
		f 3 -1415 1415 -661
		mu 0 3 870 819 869
		f 3 -1416 1416 -658
		mu 0 3 869 819 868
		f 3 -1417 1417 -652
		mu 0 3 868 819 867
		f 3 -1418 1418 -655
		mu 0 3 867 819 866
		f 3 -819 -769 -1419
		mu 0 3 819 818 866
		f 3 -783 1419 825
		mu 0 3 873 874 872
		f 3 -1420 1420 824
		mu 0 3 872 874 551
		f 3 -1421 1421 -506
		mu 0 3 551 874 552
		f 3 -723 1422 -1422
		mu 0 3 874 875 552
		f 3 -746 1423 -1423
		mu 0 3 875 876 552
		f 3 -1424 1424 827
		mu 0 3 552 876 878
		f 3 -790 826 -1425
		mu 0 3 876 877 878
		f 3 -789 1425 -827
		mu 0 3 877 881 878
		f 3 -1426 1426 829
		mu 0 3 878 881 880
		f 3 -1427 1427 -758
		mu 0 3 880 881 879
		f 3 -749 1428 -1428
		mu 0 3 881 882 879
		f 3 -742 1429 -1429
		mu 0 3 882 883 879
		f 3 -1430 1430 828
		mu 0 3 879 883 872
		f 3 -1431 -784 -826
		mu 0 3 872 883 873
		f 3 -791 1431 -786
		mu 0 3 758 884 759
		f 3 -1432 1432 831
		mu 0 3 759 884 567
		f 3 -536 1433 -1433
		mu 0 3 884 885 567
		f 3 -803 1434 -799
		mu 0 3 770 769 894
		f 3 830 1435 -1435
		mu 0 3 769 566 894
		f 3 -1436 1436 -595
		mu 0 3 894 566 893
		f 3 -533 1437 -1434
		mu 0 3 885 886 567
		f 3 -1437 1438 -585
		mu 0 3 893 566 892
		f 3 -539 1439 -1438
		mu 0 3 886 887 567
		f 3 -1439 1440 -576
		mu 0 3 892 566 891
		f 3 -545 1441 -1440
		mu 0 3 887 888 567
		f 3 -1441 1442 -570
		mu 0 3 891 566 890
		f 3 -555 1443 -1442
		mu 0 3 888 889 567
		f 3 -1444 1444 -526
		mu 0 3 567 889 566
		f 3 -1445 -764 -1443
		mu 0 3 566 889 890
		f 3 -805 1445 -812
		mu 0 3 785 895 781
		f 3 -1446 1446 832
		mu 0 3 781 895 627
		f 3 -648 1447 -1447
		mu 0 3 895 896 627
		f 3 -810 1448 -795
		mu 0 3 776 780 905
		f 3 833 1449 -1449
		mu 0 3 780 628 905
		f 3 -1450 1450 -589
		mu 0 3 905 628 904
		f 3 -645 1451 -1448
		mu 0 3 896 897 627
		f 3 -1451 1452 -592
		mu 0 3 904 628 903
		f 3 -642 1453 -1452
		mu 0 3 897 898 627
		f 3 -1453 1454 -601
		mu 0 3 903 628 902
		f 3 -636 1455 -1454
		mu 0 3 898 899 627
		f 3 -1455 1456 -616
		mu 0 3 902 628 901
		f 3 -629 1457 -1456
		mu 0 3 899 900 627
		f 3 -1458 1458 -603
		mu 0 3 627 900 628
		f 3 -626 -1457 -1459
		mu 0 3 900 901 628
		f 3 -151 1459 -437
		mu 0 3 108 107 469
		f 3 -1460 1460 -333
		mu 0 3 469 107 925
		f 3 -1461 1461 -186
		mu 0 3 925 107 924
		f 3 -1462 1462 -311
		mu 0 3 924 107 923
		f 3 -787 1463 834
		mu 0 3 906 907 586
		f 3 -832 1464 -1464
		mu 0 3 907 908 586
		f 3 835 1465 -484
		mu 0 3 922 923 921
		f 3 -525 1466 -1465
		mu 0 3 908 909 586
		f 3 -1466 1467 -478
		mu 0 3 921 923 920
		f 3 -519 1468 -1467
		mu 0 3 909 910 586
		f 3 -1469 1469 -550
		mu 0 3 586 910 559
		f 3 -1470 1470 -515
		mu 0 3 559 910 541
		f 3 -1471 1471 -491
		mu 0 3 541 910 521
		f 3 -510 1472 -1472
		mu 0 3 910 911 521
		f 3 -1473 1473 -464
		mu 0 3 521 911 107
		f 3 -501 1474 -1474
		mu 0 3 911 912 107
		f 3 -498 1475 -1475
		mu 0 3 912 913 107
		f 3 -1476 1476 -1463
		mu 0 3 107 913 923
		f 3 -489 1477 -1477
		mu 0 3 913 914 923
		f 3 -480 1478 -1478
		mu 0 3 914 915 923
		f 3 -474 1479 -1479
		mu 0 3 915 916 923
		f 3 -468 1480 -1480
		mu 0 3 916 917 923
		f 3 -459 1481 -1481
		mu 0 3 917 918 923
		f 3 -463 1482 -1482
		mu 0 3 918 919 923
		f 3 -472 -1468 -1483
		mu 0 3 919 920 923
		f 3 836 1483 838
		mu 0 3 739 586 942
		f 3 -711 1484 837
		mu 0 3 926 927 587
		f 3 -1484 1485 -669
		mu 0 3 942 586 941
		f 3 -705 1486 -1485
		mu 0 3 927 928 587
		f 3 -1486 1487 -663
		mu 0 3 941 586 940
		f 3 -777 1488 -1487
		mu 0 3 928 929 587
		f 3 -1488 1489 -768
		mu 0 3 940 586 939
		f 3 -692 1490 -1489
		mu 0 3 929 930 587
		f 3 -1490 1491 -654
		mu 0 3 939 586 938
		f 3 -685 1492 -1491
		mu 0 3 930 931 587
		f 3 -1492 1493 -650
		mu 0 3 938 586 937
		f 3 -682 1494 -1493
		mu 0 3 931 932 587
		f 3 -1494 1495 -656
		mu 0 3 937 586 936
		f 3 -679 1496 -1495
		mu 0 3 932 933 587
		f 3 -1496 1497 -659
		mu 0 3 936 586 935
		f 3 -552 1498 -1498
		mu 0 3 586 587 935
		f 3 -1499 1499 -666
		mu 0 3 935 587 934
		f 3 -1497 -771 -1500
		mu 0 3 587 933 934
		f 3 839 1500 -838
		mu 0 3 587 740 926
		f 3 -673 1501 -839
		mu 0 3 942 943 739
		f 3 -1501 1502 -717
		mu 0 3 926 740 957
		f 3 -676 1503 -1502
		mu 0 3 943 944 739
		f 3 -1503 1504 -727
		mu 0 3 957 740 956
		f 3 -774 1505 -1504
		mu 0 3 944 945 739
		f 3 -1505 1506 -780
		mu 0 3 956 740 955
		f 3 -689 1507 -1506
		mu 0 3 945 946 739
		f 3 -1507 1508 -737
		mu 0 3 955 740 954
		f 3 -696 1509 -1508
		mu 0 3 946 947 739
		f 3 -1509 1510 -740
		mu 0 3 954 740 953
		f 3 -702 1511 -1510
		mu 0 3 947 948 739
		f 3 -1511 1512 -734
		mu 0 3 953 740 952
		f 3 -709 1513 -1512
		mu 0 3 948 949 739
		f 3 -1513 1514 -731
		mu 0 3 952 740 951
		f 3 -753 1515 -1515
		mu 0 3 740 739 951
		f 3 -1516 1516 -721
		mu 0 3 951 739 950
		f 3 -1514 -715 -1517
		mu 0 3 739 949 950
		f 3 -430 1517 -157
		mu 0 3 113 364 106
		f 3 -80 1518 -1518
		mu 0 3 364 977 106
		f 3 -36 1519 -1519
		mu 0 3 977 978 106
		f 3 -44 1520 -1520
		mu 0 3 978 979 106
		f 3 840 1521 -802
		mu 0 3 974 975 973
		f 3 -1522 1522 -831
		mu 0 3 973 975 972
		f 3 -482 1523 841
		mu 0 3 958 959 979
		f 3 -1523 1524 -524
		mu 0 3 972 975 971
		f 3 -476 1525 -1524
		mu 0 3 959 960 979
		f 3 -470 1526 -1526
		mu 0 3 960 961 979
		f 3 -1525 1527 -518
		mu 0 3 971 975 970
		f 3 -551 1528 -1528
		mu 0 3 975 976 970
		f 3 -516 1529 -1529
		mu 0 3 976 542 970
		f 3 -492 1530 -1530
		mu 0 3 542 522 970
		f 3 -1531 1531 -509
		mu 0 3 970 522 969
		f 3 -465 1532 -1532
		mu 0 3 522 106 969
		f 3 -1533 1533 -500
		mu 0 3 969 106 968
		f 3 -1534 1534 -497
		mu 0 3 968 106 967
		f 3 -1535 1535 -488
		mu 0 3 967 106 966
		f 3 -461 1536 -1527
		mu 0 3 961 962 979
		f 3 -1537 1537 -1521
		mu 0 3 979 962 106
		f 3 -457 1538 -1538
		mu 0 3 962 963 106
		f 3 -467 1539 -1539
		mu 0 3 963 964 106
		f 3 -473 1540 -1540
		mu 0 3 964 965 106
		f 3 -479 -1536 -1541
		mu 0 3 965 966 106
		f 3 -836 1541 -312
		mu 0 3 923 922 1016
		f 3 -1542 1542 -168
		mu 0 3 1016 922 1015
		f 3 -1543 1543 -142
		mu 0 3 1015 922 1014
		f 3 -1544 1544 -124
		mu 0 3 1014 922 1013
		f 3 -837 1545 -835
		mu 0 3 586 739 906
		f 3 -1546 1546 -809
		mu 0 3 906 739 1031
		f 3 -1545 1547 -111
		mu 0 3 1013 922 1012
		f 3 -439 1548 -286
		mu 0 3 207 496 200
		f 3 -350 1549 -1549
		mu 0 3 496 982 200
		f 3 -341 1550 -1550
		mu 0 3 982 983 200
		f 3 -335 1551 -1551
		mu 0 3 983 984 200
		f 3 -326 1552 -1552
		mu 0 3 984 985 200
		f 3 -320 1553 -1553
		mu 0 3 985 986 200
		f 3 -314 1554 -1554
		mu 0 3 986 987 200
		f 3 -1548 1555 -105
		mu 0 3 1012 922 1011
		f 3 -1547 1556 -834
		mu 0 3 1031 739 1030
		f 3 -305 1557 -1555
		mu 0 3 987 988 200;
	setAttr ".fc[1000:1111]"
		f 3 -1556 1558 -99
		mu 0 3 1011 922 1010
		f 3 -299 1559 -1558
		mu 0 3 988 989 200
		f 3 -1557 1560 -604
		mu 0 3 1030 739 1029
		f 3 -1559 1561 -93
		mu 0 3 1010 922 1009
		f 3 -438 1562 -303
		mu 0 3 479 478 995
		f 3 -198 1563 -1563
		mu 0 3 478 996 995
		f 3 -293 1564 -1560
		mu 0 3 989 990 200
		f 3 -1565 1565 -508
		mu 0 3 200 990 981
		f 3 -287 1566 -1566
		mu 0 3 990 991 981
		f 3 -273 1567 -1567
		mu 0 3 991 992 981
		f 3 -277 1568 -1568
		mu 0 3 992 993 981
		f 3 -291 1569 -1569
		mu 0 3 993 994 981
		f 3 -297 1570 -1570
		mu 0 3 994 995 981
		f 3 -1562 1571 -87
		mu 0 3 1009 922 1008
		f 3 -1561 1572 -610
		mu 0 3 1029 739 1028
		f 3 -752 1573 -1573
		mu 0 3 739 738 1028
		f 3 -756 1574 -1574
		mu 0 3 738 742 1028
		f 3 -829 1575 -1575
		mu 0 3 742 980 1028
		f 3 -1576 1576 -613
		mu 0 3 1028 980 1027
		f 3 -825 1577 -1577
		mu 0 3 980 981 1027
		f 3 -1578 1578 -608
		mu 0 3 1027 981 1026
		f 3 -1579 1579 -598
		mu 0 3 1026 981 1025
		f 3 -189 1580 -1564
		mu 0 3 996 997 995
		f 3 -487 1581 -1572
		mu 0 3 922 1017 1008
		f 3 -1580 1582 -582
		mu 0 3 1025 981 1024
		f 3 -1582 1583 -78
		mu 0 3 1008 1017 1007
		f 3 -176 1584 -1581
		mu 0 3 997 998 995
		f 3 -1584 1585 -74
		mu 0 3 1007 1017 1006
		f 3 -496 1586 -1586
		mu 0 3 1017 1018 1006
		f 3 -1583 1587 -566
		mu 0 3 1024 981 1023
		f 3 -1587 1588 -83
		mu 0 3 1006 1018 1005
		f 3 -505 1589 -1589
		mu 0 3 1018 1019 1005
		f 3 -164 1590 -1585
		mu 0 3 998 999 995
		f 3 -1588 1591 -542
		mu 0 3 1023 981 1022
		f 3 -1571 1592 -1592
		mu 0 3 981 995 1022
		f 3 -1593 1593 -529
		mu 0 3 1022 995 1021
		f 3 -1594 1594 -523
		mu 0 3 1021 995 1020
		f 3 -1595 1595 -514
		mu 0 3 1020 995 1019
		f 3 -1590 1596 -89
		mu 0 3 1005 1019 1004
		f 3 -138 1597 -1591
		mu 0 3 999 1000 995
		f 3 -1597 1598 -95
		mu 0 3 1004 1019 1003
		f 3 -120 1599 -1598
		mu 0 3 1000 1001 995
		f 3 -1600 1600 -1596
		mu 0 3 995 1001 1019
		f 3 -107 1601 -1601
		mu 0 3 1001 1002 1019
		f 3 -101 -1599 -1602
		mu 0 3 1002 1003 1019
		f 3 -43 1602 -842
		mu 0 3 979 1049 958
		f 3 -30 1603 -1603
		mu 0 3 1049 1050 958
		f 3 -24 1604 -1604
		mu 0 3 1050 1051 958
		f 3 -18 1605 -1605
		mu 0 3 1051 1052 958
		f 3 -841 1606 -840
		mu 0 3 975 974 1033
		f 3 -811 1607 -1607
		mu 0 3 974 1034 1033
		f 3 -12 1608 -1606
		mu 0 3 1052 1053 958
		f 3 -833 1609 -1608
		mu 0 3 1034 1035 1033
		f 3 -5 1610 -1609
		mu 0 3 1053 1054 958
		f 3 -440 1611 -1611
		mu 0 3 1054 1055 958
		f 3 -602 1612 -1610
		mu 0 3 1035 1036 1033
		f 3 -386 1613 -431
		mu 0 3 113 273 337
		f 3 -392 1614 -1614
		mu 0 3 273 276 337
		f 3 -389 1615 -1615
		mu 0 3 276 275 337
		f 3 -406 1616 -1616
		mu 0 3 275 1084 337
		f 3 -353 1617 -1617
		mu 0 3 1084 1085 337
		f 3 -280 1618 -1618
		mu 0 3 1085 553 337
		f 3 -1619 1619 -240
		mu 0 3 337 553 1083
		f 3 -1620 1620 -226
		mu 0 3 1083 553 1082
		f 3 -1621 1621 -208
		mu 0 3 1082 553 1081
		f 3 -1622 1622 -192
		mu 0 3 1081 553 1080
		f 3 -1623 1623 -179
		mu 0 3 1080 553 1079
		f 3 -1624 1624 -170
		mu 0 3 1079 553 1078
		f 3 -1625 1625 -158
		mu 0 3 1078 553 1077
		f 3 -1626 1626 -144
		mu 0 3 1077 553 1076
		f 3 -444 1627 -1612
		mu 0 3 1055 1056 958
		f 3 -429 1628 -46
		mu 0 3 355 354 1069
		f 3 -147 1629 -1629
		mu 0 3 354 1070 1069
		f 3 -1627 1630 -132
		mu 0 3 1076 553 1075
		f 3 -507 1631 -1631
		mu 0 3 553 552 1075
		f 3 -1632 1632 -126
		mu 0 3 1075 552 1074
		f 3 -1633 1633 -113
		mu 0 3 1074 552 1073
		f 3 -1634 1634 -117
		mu 0 3 1073 552 1072
		f 3 -1635 1635 -129
		mu 0 3 1072 552 1071
		f 3 -1636 1636 -135
		mu 0 3 1071 552 1070
		f 3 -609 1637 -1613
		mu 0 3 1036 1037 1033
		f 3 -1638 1638 -754
		mu 0 3 1033 1037 1032
		f 3 -1639 1639 -757
		mu 0 3 1032 1037 880
		f 3 -1640 1640 -830
		mu 0 3 880 1037 878
		f 3 -612 1641 -1641
		mu 0 3 1037 1038 878
		f 3 -1642 1642 -828
		mu 0 3 878 1038 552
		f 3 -606 1643 -1643
		mu 0 3 1038 1039 552
		f 3 -596 1644 -1644
		mu 0 3 1039 1040 552
		f 3 -448 1645 -1628
		mu 0 3 1056 1057 958
		f 3 -1630 1646 -40
		mu 0 3 1069 1070 1068
		f 3 -580 1647 -1645
		mu 0 3 1040 1041 552
		f 3 -1646 1648 -485
		mu 0 3 958 1057 1048
		f 3 -452 1649 -1649
		mu 0 3 1057 1058 1048
		f 3 -1650 1650 -494
		mu 0 3 1048 1058 1047
		f 3 -454 1651 -1651
		mu 0 3 1058 1059 1047
		f 3 -1647 1652 -33
		mu 0 3 1068 1070 1067
		f 3 -564 1653 -1648
		mu 0 3 1041 1042 552
		f 3 -1652 1654 -503
		mu 0 3 1047 1059 1046
		f 3 -450 1655 -1655
		mu 0 3 1059 1060 1046
		f 3 -1653 1656 -27
		mu 0 3 1067 1070 1066
		f 3 -540 1657 -1654
		mu 0 3 1042 1043 552
		f 3 -1658 1658 -1637
		mu 0 3 552 1043 1070
		f 3 -527 1659 -1659
		mu 0 3 1043 1044 1070
		f 3 -521 1660 -1660
		mu 0 3 1044 1045 1070
		f 3 -512 1661 -1661
		mu 0 3 1045 1046 1070
		f 3 -446 1662 -1656
		mu 0 3 1060 1061 1046
		f 3 -1657 1663 -21
		mu 0 3 1066 1070 1065
		f 3 -442 1664 -1663
		mu 0 3 1061 1062 1046
		f 3 -1664 1665 -15
		mu 0 3 1065 1070 1064
		f 3 -1662 1666 -1666
		mu 0 3 1070 1046 1064
		f 3 -1667 1667 -9
		mu 0 3 1064 1046 1063
		f 3 -1665 -1 -1668
		mu 0 3 1046 1062 1063;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B6C7AAD3-4D63-ADA1-4AEA-E5B06E0E9DBC";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "02906ADC-4C40-F378-2FF9-5D93F362DCFB";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "4F849D95-4C41-DDAB-E48C-6AA5F2F64DFD";
createNode displayLayerManager -n "layerManager";
	rename -uid "4493F180-400A-4C1A-688E-FF8C2BC3E16E";
createNode displayLayer -n "defaultLayer";
	rename -uid "8C68C153-4DA4-021A-438E-AD9466837E9A";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "809A4841-43E9-B92B-1927-2EA286F08A68";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "E0F78847-4B08-A90B-5026-A0BC291F93E6";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "A7E62C80-480A-6D4C-E03A-9AA351B4D3FB";
	setAttr ".version" -type "string" "5.2.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "67A56FC8-4C3B-60A9-251B-0EB4CC9C271A";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "FDF7DEAE-4CB1-2151-713F-2D89002DC19B";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "3FD39F26-4EDE-76B3-CE4D-C195EA19CB56";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "DA25AA1A-443A-1F63-8AF8-49ABDAC912FC";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 778\n            -height 347\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 777\n            -height 347\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 778\n            -height 347\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1562\n            -height 739\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1562\\n    -height 739\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1562\\n    -height 739\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C385A0F9-4A39-61C4-27E2-8C82F391A62B";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 150 -ast 0 -aet 250 ";
	setAttr ".st" 6;
createNode groupId -n "groupId117";
	rename -uid "DD455A3C-43BE-2B47-F5FD-FFB21E0F1376";
	setAttr ".ihi" 0;
createNode groupId -n "groupId132";
	rename -uid "DA92162D-4433-A2BC-1DCD-ADA53F72EA3A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId131";
	rename -uid "73BD5EFF-494E-455A-9BB5-FB819FF5846E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId130";
	rename -uid "E863AC15-4804-604A-CC95-069503D2D09B";
	setAttr ".ihi" 0;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "2E1B108D-44D8-F28B-BB41-5AA6494E957E";
	setAttr ".sa" 6;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode groupParts -n "groupParts1";
	rename -uid "84767C1A-4151-AEFE-3794-D982228C2757";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode groupId -n "groupId121";
	rename -uid "1B4AA65C-4C33-C518-B84D-95BC66A0115E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId127";
	rename -uid "CFE73F82-4306-C794-36C9-3285E0444F5D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId126";
	rename -uid "B1BDE067-4130-4B9F-5853-C3BACDB862C2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId129";
	rename -uid "68307FCC-4767-4A80-5680-D6BDF78A9E5B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId128";
	rename -uid "04E3D328-4EA5-426C-9632-48BB975B3B71";
	setAttr ".ihi" 0;
createNode groupId -n "groupId125";
	rename -uid "E9A19852-4446-3B0A-2D90-7089BE23A75B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId124";
	rename -uid "D1597299-4038-BAC5-2240-2992307699C1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId116";
	rename -uid "AF52BB41-4F3F-E654-44C1-D182BDDBD88B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId122";
	rename -uid "BCDEF4FB-4124-CBDD-0BC9-2C924BED7188";
	setAttr ".ihi" 0;
createNode groupId -n "groupId123";
	rename -uid "F7F3934A-43BF-00DE-566D-EC9A4F5D410B";
	setAttr ".ihi" 0;
createNode polyBoolean -n "polyBoolean1";
	rename -uid "8B90486A-472F-19C9-4DC1-78B5220DE1BE";
	setAttr -s 7 ".ip";
	setAttr -s 7 ".im";
	setAttr ".op" -type "Int32Array" 7 2 2 2 2 2 2
		 2 ;
	setAttr ".ee" -type "Int32Array" 7 1 1 1 1 1 1
		 1 ;
	setAttr ".mg" -type "Int32Array" 7 715 717 719 721 723 684
		 -725 ;
createNode groupId -n "groupId120";
	rename -uid "0C5EF791-4ECD-62C9-C7CC-8A98405C21C3";
	setAttr ".ihi" 0;
createNode polyTriangulate -n "polyTriangulate1";
	rename -uid "935D1341-45EB-777D-4647-6796EAD309DC";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "F232A257-4C84-0D7D-20E3-B084509F061F";
	setAttr ".ics" -type "componentList" 1 "f[1:2]";
	setAttr ".ix" -type "matrix" 0 0.31 0 0 -0.11 0 0 0 0 0 0.31 0 -3.7002083868886451 -0.98750823142919464 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.7002084 -1.2200083 -1.847744e-08 ;
	setAttr ".rs" 42768;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.8102083868886449 -1.2975082314291946 -0.26846790730953218 ;
	setAttr ".cbx" -type "double3" -3.5902083868886452 -1.1425081852355949 0.26846787035465242 ;
	setAttr ".raf" no;
createNode groupId -n "groupId133";
	rename -uid "863B615F-4BC5-0A50-C164-11AB69F11B2D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId134";
	rename -uid "F4A99A78-4CDE-A134-9C3B-A3A0BAFA102B";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".aoon" yes;
	setAttr ".msaa" yes;
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
	setAttr -s 18 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 16 ".gn";
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
connectAttr "groupId116.id" "polySurfaceShape27.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape27.iog.og[0].gco";
connectAttr "groupId124.id" "pCylinderShape46.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape46.iog.og[2].gco";
connectAttr "groupId125.id" "pCylinderShape46.ciog.cog[2].cgid";
connectAttr "groupId122.id" "pCylinderShape47.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape47.iog.og[2].gco";
connectAttr "groupId123.id" "pCylinderShape47.ciog.cog[2].cgid";
connectAttr "groupId128.id" "pCylinderShape45.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape45.iog.og[2].gco";
connectAttr "groupId129.id" "pCylinderShape45.ciog.cog[2].cgid";
connectAttr "groupId126.id" "pCylinderShape44.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape44.iog.og[2].gco";
connectAttr "groupId127.id" "pCylinderShape44.ciog.cog[2].cgid";
connectAttr "groupId120.id" "pCubeShape17.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape17.iog.og[2].gco";
connectAttr "groupId121.id" "pCubeShape17.ciog.cog[2].cgid";
connectAttr "groupId117.id" "polySurfaceShape28.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape28.iog.og[0].gco";
connectAttr "groupId130.id" "pCylinderShape48.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape48.iog.og[1].gco";
connectAttr "polyExtrudeFace1.out" "pCylinderShape48.i";
connectAttr "groupId131.id" "pCylinderShape48.ciog.cog[1].cgid";
connectAttr "polyTriangulate1.out" "polySurfaceShape40.i";
connectAttr "groupId120.id" "polySurfaceShape40.iog.og[0].gid";
connectAttr "groupId132.id" "polySurfaceShape40.ciog.cog[0].cgid";
connectAttr "groupId133.id" "polySurfaceShape30.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape30.iog.og[0].gco";
connectAttr "groupId134.id" "polySurfaceShape30.ciog.cog[1].cgid";
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
connectAttr "polyCylinder1.out" "groupParts1.ig";
connectAttr "groupId130.id" "groupParts1.gi";
connectAttr "pCubeShape17.o" "polyBoolean1.ip[0]";
connectAttr "pCylinderShape47.o" "polyBoolean1.ip[1]";
connectAttr "pCylinderShape46.o" "polyBoolean1.ip[2]";
connectAttr "pCylinderShape44.o" "polyBoolean1.ip[3]";
connectAttr "pCylinderShape45.o" "polyBoolean1.ip[4]";
connectAttr "polySurfaceShape27.o" "polyBoolean1.ip[5]";
connectAttr "pCylinderShape48.o" "polyBoolean1.ip[6]";
connectAttr "pCubeShape17.wm" "polyBoolean1.im[0]";
connectAttr "pCylinderShape47.wm" "polyBoolean1.im[1]";
connectAttr "pCylinderShape46.wm" "polyBoolean1.im[2]";
connectAttr "pCylinderShape44.wm" "polyBoolean1.im[3]";
connectAttr "pCylinderShape45.wm" "polyBoolean1.im[4]";
connectAttr "polySurfaceShape27.wm" "polyBoolean1.im[5]";
connectAttr "pCylinderShape48.wm" "polyBoolean1.im[6]";
connectAttr "polyBoolean1.out" "polyTriangulate1.ip";
connectAttr "groupParts1.og" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape48.wm" "polyExtrudeFace1.mp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "polySurfaceShape27.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape28.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape17.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape17.ciog.cog[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape47.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape47.ciog.cog[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape46.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape46.ciog.cog[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape44.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape44.ciog.cog[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape45.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape45.ciog.cog[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape48.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape48.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape40.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape40.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape30.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape30.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId116.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId117.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId120.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId121.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId122.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId123.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId124.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId125.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId126.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId127.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId128.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId129.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId130.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId131.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId133.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId134.msg" ":initialShadingGroup.gn" -na;
// End of knife.ma
