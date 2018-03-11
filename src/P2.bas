10 CLEAR:PRINT"***MARITIME PROGRAMS PART II***"
20 PRINT"1NP159,2TIDE II,3ETA,4WIND,5AMP"
30 INPUT"1 TO 5";A
40 ON A GOTO 1000,2000,3000,4000,5000
50 GOTO30
60 A$=INKEY$:IF A$=""THEN60ELSE RETURN
100 PRINT"      ***SECONDARY PORT***":RETURN
110 INPUT"TIME ZONE(H.M)";A:A=DEGRA:RETURN
120 PRINTTAB(7)"**TIME DIFF.(H.M)**":RETURN
130 PRINTTAB(8)"**HEIGHT DIFF.**":RETURN
140 X=0:INPUT"SEASONAL CHANGE";X:RETURN
150 PRINT"     ***STANDARD PORT***":RETURN
160 INPUT"MHWS(MHHW)";O,"MHWN(MLHW)";P,"MLWN(MHLW)";Q,"MLWS(MLLW)";R:RETURN
170 INPUT"TIME(H.M);X,"HEIGHT";HT:T=DEGRX:IF S=2 OR U$="Y"THEN RETURN
180 t=T+Z-z+t:IF t>24THENt=t-24ELSE IFt<0THENt=t+24
190 t=DMSt:RETURN
200 PRINT"TIME(H.M):"t"HEIGHT:"Ht:GOSUB60:RETURN
210 PRINTTAB(14)"*HW*":RETURN
220 PRINTTAB(14)"*LW*":RETURN
230 INPUT"MHHW";O,"MLLW";P:RETURN
240 Ht=HT-C+(HT-P)*(H-h)/(O-P)+h+c:RETURN
250 PRINT"Duration of HW & LW not within 5-7Hrs,use NP-159.","**PRESS ANY KEY**":GOSUB60:RETURN
260 FOR I=1TO3
270 IF T>D(I)AND T<D(I+1)THEN B=D(I):D=D(I+1):E=F(I):G=F(I+1):GOTO300
280 NEXT I
290 B=D(4):D=D(1)+24:E=F(4):G=F(1)
300 t=(T-B)*(G-E)/(D-B)+E:RETURN
310 GOSUB130:IF S$="Y"THEN GOSUB230:H=O:h=P ELSE GOSUB160:H=O:h=P:L=Q:l=R
320 GOSUB140:c=X
330 GOSUB150:GOSUB110:Z=A:IF U$="Y"THEN RETURN
340 GOSUB130:IF S$="Y"THEN GOSUB230 ELSE GOSUB160
350 GOSUB140:C=X
360 GOSUB150:GOSUB210:IF U$="Y"THEN RETURN
370 t=TD:GOSUB170
380 GOSUB240
390 GOSUB100:GOSUB210:GOSUB200
400 GOSUB150:GOSUB220:IF U$="Y"THEN RETURN
410 t=Td:GOSUB170
420 IF S$="Y"THEN GOSUB240 ELSE Ht=HT-C+(HT-R)*(L-l)/(Q-R)+l+c
430 GOSUB100:GOSUB220:GOSUB200:RETURN

1000 CLEAR:SETF2
1010 PRINT"NP159*TIDAL PREDICTION/HARMONIC"
1020 DIMA(1),B(1),C(1),D(1),E(3),F(3),G(1),H(1),J(3),K(3),M(3),N(3),O(3),P(48,3),R(48,3),HT(48)
1030 PRINT"TABLE VII DATA/1ST DAY"
1040 INPUT"M2-A";A(0),"M2-F";E(0),"S2-A";A(1),"S2-F";E(1),"K1-A";C(0),"K1-F";E(2),"O1-A";C(1),"O1-F";E(3)
1050 PRINT"TABLE VII DATA/2ND DAY"
1060 INPUT"M2-A";B(0),"M2-F";F(0),"S2-A";B(1),"S2-F";F(1),"K1-A";D(0),"K1-F";F(2),"O1-A";D(1),"O1-F";F(3):IF DAY=1GOTO1110
1070 PRINT"PART III/HARMONIC CONSTANTS"
1080 INPUT"M.L. Z0";A,"SEASONAL CORRN";B
1090 INPUT"M2-g";J(0),"M2-Hm";K(0),"S2-g";J(1),:S2-Hm";K(1),"K1-g";J(2),"K1-Hm";K(2),"O1-g";J(3),"O1-Hm";K(3)
1100 INPUT"f4";L1,"F4";L2,"f6";L3,"F6";L4
1110 FORI=0TO1
1120 G(I)=A(I)+360-B(I):H(I)=C(I)-D(I)
1130 IFG(I)<600THENG(I)=G(I)+360
1140 IFH(I)<300THENH(I)=H(I)+360
1150 G(I)=G(I)/24:H(I)=H(I)/24
1160 NEXTI
1170 N(0)=G(0):N(1)=G(1):N2(2)=H(0):N(3)=H(1)
1180 FORI=0T03
1190 M(I)=((F(I)-E(I))/24
1200 NEXTI
1210 O(0)=J(0)+A(0):O(1)=J(1)+A(1):O(2)=J(2)+C(0):O(3)=J(3)+C(1)
1220 PRINT"1:SUCCESSIVE REPORT.  2:TIME SPECIFY."
1230 INPUT"1 OR 2";W
1240 ON W GOTO1270,1250:GOTO1230
1250 INPUT"TIME SPECIFY";U:U=FIXU+FRACU/0.6:SPEC=1
1260 IF SPEC=1THEN1290
1270 INPUT"FROM(HRS).TO(HRS)";C:D=FIXC:E=FRACC*100 'MAXIMUM 0.48
1280 FOR U=D TO E
1290 FOR I=0TO3
1300 P(U,I)=O(I)-N(I)*U:IF P(U,I)<0THEN P(U,I)=360+P(U,I)
1310 R(U,I)=((E(I)+M(I)*U)*K(I))*SINP(U,I)
1320 S(U,I)=((E(I)+M(I)*U)*K(I))*COSP(U,I)
1330 NEXTI
1340 Z=POL(S(U,0)+S(U,1),R(U,0)+R(U,1)):IF Y<0THEN Y=Y+360
1350 HT(U)=A+B+S(U,0)+S(U,1)+S(U,2)+S(U,3)+(X^2*L2)*COS(Y*2+L1)+(X^3*L4)*COS(Y*3+L3)
1360 IFSPEC=1GOTO1450
1370 NEXT U
1380 BEEP
1390 FOR U=D TO E
1400 PRINT U"HRS HT/TIDE="HT(U)"M"
1410 IFU MOD3<>0THEN1430
1420 GOSUB60
1430 NEXTU
1440 GOTO1480
1450 BEEP
1460 G=FIXU+FRACU*.6
1470 PRINTG"HRS HT/TIDE="HT(U)"M"
1480 PRINT"1.ANOTHER PORT.2:ANOTHER DAY.3:SUCCESSIVE RPT.4:TIME SPECIFY"
1490 INPUT"1 TO 4";V
1500 ONV GOTO1510,1520,1530,1250:GOTO1490
1510 SPEC=0:GOTO1070
1520 DAY=1:SPEC=0:GOTO1030
1530 SPEC=0:GOTO1270

2000 CLEAR:PRINT"     ***TIDE CALCULATION***":SETF2
2010 INPUT"1.SECONDARY PORT:TIMES & HEIGHTS2.INTERMEDIATE HEIGHTS/TIMES";S
2020 ON S GOTO2030,2300:GOTO2010
2030 INPUT"NP201-EUROPEAN WATERS(Y/N)";U$
2040 IF U$<>"Y"AND U$<>"N"THEN2030
2050 IF U$="Y"THEN2080
2060 INPUT"DIURNAL TIDE(Y/N);S$
2070 IF S$<>"Y"AND S$<>"N"THEN2060
2080 GOSUB100:GOSUB110:z=A:GOSUB120
2090 IF U$="Y"THEN2140
2100 INPUT"MHW(HHW)";X,"MLW(LLW)";Y:TD=DEGRX:Td=DEGRY
2110 GOSUB310
2120 GOSUB360
2130 GOTO2120
2140 DIM A(4),B(4),C(4),D(4),E(4),F(4)
2150 GOSUB210:INPUT"COLUMN1";X,"COLUMN2";Y,A(1)=DEGRX:A(2)DEGRY:A(3)=A(1):A(4)=A(2)
2160 GOSUB220:INPUT"COLUMN3";X,"COLUMN4";Y,E(1)=DEGRX:E(2)DEGRY:E(3)=E(1):E(4)=E(2)
2170 GOSUB310:GOSUB120
2180 GOSUB210:INPUT"COLUMN1(2Values)"X,x,"COLUMN2";Y,y:B(1)=DEGRX:B(3)=DEGRx:B(2)=DEGRY:B(4)=DEGRy
2190 GOSUB220:INPUT"COLUMN3";X,x,"COLUMN4";Y,y:C(1)=DEGRX:C(3)=DEGRx:C(2)=DEGRY:C(4)=DEGRy
2200 GOSUB340:GOTO2220
2210 GOSUB360
2220 GOSUB170
2230 FOR J=1TO4:D(J)=B(J):F(J)=A(J):NEXTJ
2240 GOSUUB260
2250 GOSUB180:GOSUB380:GOSUB170
2260 FOR J=1TO4:D(J)=C(J):F(J)=E(J):NEXTJ
2270 GOSUB260
2280 GOSUB180:GOSUB420
2290 GOTO2210
2300 PRINT"Note:Not for NP201","If shallow water corr. exist or","**PRESS ANY KEY**":GOSUB60
2310 GOSUB250
2320 INPUT"1.HEIGHT AT GIVEN TIME 2.TIME AT GIVEN HEIGHT";F
2330 IF F<>1AND F<>2THEN2320
2340 INPUT"TIME OF HW & LW WITHIN SAME DAY(Y/N)";D$
2350 IF D$<>"N"AND D$<>"Y"THEN2340
2360 GOSUB220:GOSUB170:TL=T:HL=HT
2370 GOSUB210:GOSUB170:TH=H:HH=HT
2380 W=TH-TL:IF ABSW>7OR ABSW<5THEN GOSUB250:GOTO1000
2390 IF F=2THEN2420
2400 INPUT"TIME REQUIRED(H.M)";R:TR=DEGRR
2410 IF D$="Y"THEN2450
2420 IF TL>TH THEN TH=TH+24 ELSE TL=TL+24
2430 IF F=2THEN2480
2440 IF TR<TL AND TR<TH THEN TR=TR+24
2450 IF TR>TL AND TR>TH OR TR<TL AND TR<TH THEN2530
2460 HR=(HH-HL)*SIN((TR-TL)W*90)^2)+HL
2470 PRINT"TIME(H.M):"R"HEIGHT:"HR:GOTO2320
2480 INPUT"HEIGHT REQUIRED";HR
2490 IF HR>HH OR HR<HL THEN2530
2500 TR=W*ANSSQR((HR-HL)/(HH-HL))/90+TL
2510 IF TR>24THEN TR=TR-24
2520 R=DMSTR:GOTO2470
2530 PRINT"Illegal input":GOTO2320

3000 CLEAR:PRINT"    ***ETA CALCULATION***"
3010 INPUT"DIST TO GO";d
3020 INPUT"SHIP SPEED";S:T=d/S:A=T�D24:h=(T-A*24):B=INT(FRACh*60)
3030 SETN:PRINTA:CHR$(244)FIXh"HRS"B"MINS":IF V=1THEN3070
3040 INPUT"YEAR";Y,"MONTH";M,"DATE";D,"H.M";H,"ZD0";O,"ZD1";P
3050 IF M>12OR H>25OR ABSO>12OR ABSP>12OR Y<=0OR M<=0OR D<=0OR H<0THEN3040ELSE GOSUB3130:IF D>X THEN 3040
3060 I=Y:J=M:K=D:L=H
3070 M=INTM-1:IF M=0THEN M=12:Y=Y-1
3080 GOSUB3130:D=INTD+X+A+(DEGRH+h+O-P)/24
3090 IF FIXD<=X THEN3110ELSE D=D-X:M=M+1:IF M=13THEN M=1:Y=Y+1
3100 GOSUB3130:GOTO3090
3110 H=FRACD*24:B=INT(FRACH*60)
3120 PRINTY:CHR$(242)M;CHR$(243)FIXD;CHR$(244)FIXH"HRS"B"MINS":Y=I:M=J:D=K:H=L:V=1:GOTO3020
3130 Y=INTY:IF Y MOD400=0OR FRAC(Y/100)*100MOD4=0THEN U=1ELSE U=0
3140 RESTORE:IF M=2AND U=1THEN X=29ELSE FOR Q=1TO M:READ X:NEXT
3150 RETURN
3160 DATA31,28,31,30,31,30,31,31,30,31,30,31

4000 CLEAR:PRINT"   ***WIND DIRECTION/FORCE***"
4010 INPUT"COURSE";C,"SPEED";S
4020 Z=REC(S,C):M=X:N=Y
4030 INPUT"WIND DIRT";D,"WIND SPEED";E
4040 Z=REC(E,C+D)
4050 IF X=M AND Y=N THEN Y=0:X=0:GOTO4080
4060 Z=POL(X-M,Y-N):IF Y<0 THEN Y=Y+360
4070 SETF1:PRINT"TRUE WIND="Y;CHR$(223)X"KTS"
4080 IF X<1THEN PRINT"CALM(0)":GOTO4010
4090 IF X>63.5THEN F$="HURRICAN":B=12:GOTO4130
4100 B=0:RESTORE4180
4110 READ F,F$:B=B+1
4120 IF F<ROUND(X,-1)THEN4110
4130 I=INT(Y/22.5):J=Y-I*22.5
4140 IF J>=11.25THEN I=I+1
4150 RESTORE4190
4160 FOR K=0TO I:READ D$:NEXT K
4165 F$=F$+"("+MID$(STR$(B),2)+")"
4170 PRINT D$" WIND.."F$:GOTO4010
4180 DATA3,LIGHT AIR,6,LIGHT BREEZE,10,GENTLE BREEZE,16,MODERATE BREEZE,21,FRESH BREEZE,27,STRONGE BREEZE,33,NEAR GALE,40,GALE,47,STRONG GALE,55,STORM,63,VIOLENT STORM
4190 DATA N'LY,NNE,NE,ENE,E'LY,ESE,SE,SSE,S'LY,SSW,SW,WSW,W'LY,WNW,NW,NNW,N'LY

5000 CLEAR:PRINTTAB(8)"***AMPLITUDE***"
5010 INPUT"DR-LAT";R,"SUN/DEC";S
5020 L=FIXR+FRACR/.6:D=FIXS+FRACS/.6
5030 A=ASN(SIND/COSL)
5040 P=270+A:A=90-A
5050 SETF1:PRINT"Zn= AM:"A;CHR$(223)" PM:"P;CHR$(223)
5060 GOTO5010