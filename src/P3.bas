10 CLEAR:PRINT"** CARGO LOADING/DISCHARGING **"
20 PRINT"1:DISP 2:TRIM 3:LOAD/STRESS 4:STRESS 5:FINAL/TRIM 6:AIR/DFT"
30 SET F3:INPUT"1 TO 6";A
40 ON A GOTO 1000,2000,3000,4000,5000,6000,7000
50 GOTO30
60 BEEP:RETURN
70 S=S+I*9.5/204:O=O-I*1.5/204:I=S-O:RETURN
80 Z=Z+X:Y=Y+X*A:X=0:RETURN
100 INPUT"TRUE DRAFT Y/N";A$:I=S-O:RETURN

1000 CLEAR:PRINT"DISPLACEMENT CALCULATION"
1005 INPUT"FORE/P";A:B=A:INPUT"FORE/S";B
1010 INPUT"MID/P";C:D=C:INPUT"MID/S";D
1020 INPUT"AFT/P";E:F=E:INPUT"AFT/S";F
1030 O=(A+B)/2:S=(E+F)/2:I=S-O
1040 GOSUB100:IF A$="Y"THEN1050ELSE GOSUB70
1050 L=(C+D)/2:M=(S+O)/2:N=L-M:N=N*3/4+M:HS=L-M
1060 PRINT"M/FORE=";O;" M/AFT=";S,"M/MID=";L;" TRIM=";I
1065 PRINT"M/F&A=";M;" DUB/M.M=";N:GOSUB1965
1070 IF HS<0THEN HS$="HOGGING"ELSE HS$="SAGGING"
1075 PRINT"DEFLECTION=";HS"["HS$"]"
1080 T=N:IF N<3GOTO1005
1090 IF N<=4GOTO1200
1100 IF N<=5GOTO1245
1110 IF N<=6GOTO1295
1120 IF N<=7GOTO1345
1130 IF N<=8GOTO1395
1140 IF N<=9GOTO1445
1150 IF N<=10GOTO1495
1160 IF N<=11GOTO1545
1170 IF N<=12GOTO1595
1180 IF N<=13GOTO1645
1190 IF N>15GOTO1005
1200 IF N<=3.1THEN A=16760:B=588:C=758.12:D=2.79:E=-6.71:F=.01:P=-6.87:Q=0:N=N-3:GOTO1850
1205 IF N<=3.2THEN A=17348:B=589:C=760.91:D=2.68:E=-6.72:F=0:P=-6.87:Q=.01:N=N-3.1:GOTO1850
1210 IF N<=3.3THEN A=17937:B=590:C=763.59:D=2.64:E=-6.72:F=.01:P=-6.86:Q=0:N=N-3.2:GOTO1850
1215 IF N<=3.4THEN A=18527:B=591:C=766.23:D=2.6:E=-6.73:F=0:P=-6.86:Q=0.01:N=N-3.3:GOTO1850
1220 IF N<=3.5THEN A=19118:B=591:C=768.83:D=2.57:E=-6.73:F=0:P=-6.85:Q=0:N=N-3.4:GOTO1850
1225 IF N<=3.6THEN A=19709:B=593:C=771.4:D=2.66:E=-6.73:F=.01:P=-6.85:Q=0:N=N-3.5:GOTO1850
1230 IF N<=3.7THEN A=20302:B=594:C=774.06:D=2.58:E=-6.74:F=0:P=-6.85:Q=0:N=N-3.6:GOTO1850
1235 IF N<=3.8THEN A=20896:B=594:C=776.64:D=2.47:E=-6.74:F=0:P=-6.85:Q=.01:N=N-3.7:GOTO1850
1240 IF N<=3.9THEN A=21490:B=595:C=779.11:D=2.35:E=-6.74:F=.01:P=-6.84:Q=0:N=N-3.8:GOTO1850
1245 IF N<=4THEN A=22085:B=596:C=781.46:D=2.24:E=-6.75:F=0:P=-6.84:Q=.01:N=N-3.9:GOTO1850
1250 IF N<=4.1THEN A=22681:B=596:C=783.7:D=2:E=-6.75:F=.01:P=-6.83:Q=0:N=N-4:GOTO1850
1255 IF N<=4.2THEN A=23277:B=597:C=785.7:D=1.92:E=-6.76:F=.01:P=-6.83:Q=0:N=N-4.1:GOTO1850
1260 IF N<=4.3THEN A=23874:B=597:C=787.62:D=1.88:E=-6.77:F=0:P=-6.83:Q=0:N=N-4.2:GOTO1850
1265 IF N<=4.4THEN A=24471:B=598:C=789.5:D=1.84:E=-6.77:F=.01:P=-6.83:Q=0:N=N-4.3:GOTO1850
1270 IF N<=4.5THEN A=25069:B=599:C=791.34:D=1.8:E=-6.78:F=0:P=-6.83:Q=0:N=N-4.4:GOTO1850
1275 IF N<=4.6THEN A=25668:B=599:C=793.14:D=1.72:E=-6.78:F=0:P=-6.83:Q=.01:N=N-4.5:GOTO1850
1280 IF N<=4.7THEN A=26267:B=600:C=794.86:D=1.69:E=-6.78:F=.01:P=-6.82:Q=0:N=N-4.6:GOTO1850
1285 IF N<=4.8THEN A=26867:B=600:C=796.55:D=1.67:E=-6.79:F=0:P=-6.82:Q=0:N=N-4.7:GOTO1850
1290 IF N<=4.9THEN A=27467:B=601:C=798.22:D=1.64:E=-6.79:F=0:P=-6.82:Q=0:N=N-4.8:GOTO1850
1295 IF N<=5THEN A=28068:B=601:C=799.86:D=1.62:E=-6.79:F=.01:P=-6.82:Q=0:N=N-4.9:GOTO1850
1300 IF N<=5.1THEN A=28669:B=602:C=801.48:D=1.54:E=-6.78:F=0:P=-6.82:Q=0:N=N-5:GOTO1850
1305 IF N<=5.2THEN A=29271:B=602:C=803.02:D=1.53:E=-6.78:F=.01:P=-6.82:Q=0:N=N-5.1:GOTO1850
1310 IF N<=5.3THEN A=29873:B=602:C=804.55:D=1.54:E=-6.77:F=0:P=-6.82:Q=0:N=N-5.2:GOTO1850
1315 IF N<=5.4THEN A=30475:B=604:C=806.09:D=1.55:E=-6.77:F=.01:P=-6.82:Q=0:N=N-5.3:GOTO1850
1320 IF N<=5.5THEN A=31079:B=603:C=807.64:D=1.56:E=-6.76:F=.02:P=-6.82:Q=0:N=N-5.4:GOTO1850
1325 IF N<=5.6THEN A=31682:B=604:C=809.2:D=1.55:E=-6.74:F=.01:P=-6.82:Q=.01:N=N-5.5:GOTO1850
1330 IF N<=5.7THEN A=32286:B=605:C=810.75:D=1.56:E=-6.73:F=.02:P=-6.81:Q=0:N=N-5.6:GOTO1850
1335 IF N<=5.8THEN A=32891:B=605:C=812.31:D=1.57:E=-6.71:F=.02:P=-6.81:Q=0:N=N-5.7:GOTO1850
1340 IF N<=5.9THEN A=33496:B=605:C=813.88:D=1.6:E=-6.69:F=.02:P=-6.81:Q=0:N=N-5.8:GOTO1850
1345 IF N<=6THEN A=34101:B=606:C=815.48:D=1.61:E=-6.67:F=.02:P=-6.81:Q=0:N=N-5.9:GOTO1850
1350 IF N<=6.1THEN A=34707:B=607:C=817.09:D=1.62:E=-6.65:F=.03:P=-6.81:Q=.01:N=N-6:GOTO1850
1355 IF N<=6.2THEN A=35314:B=606:C=818.71:D=1.63:E=-6.62:F=.03:P=-6.8:Q=0:N=N-6.1:GOTO1850
1360 IF N<=6.3THEN A=35920:B=608:C=820.34:D=1.67:E=-6.59:F=.04:P=-6.8:Q=0:N=N-6.2:GOTO1850
1365 IF N<=6.4THEN A=36528:B=607:C=822.01:D=1.69:E=-6.55:F=.03:P=-6.8:Q=.01:N=N-6.3:GOTO1850
1370 IF N<=6.5THEN A=37135:B=609:C=823.7:D=1.72:E=-6.52:F=.04:P=-6.79:Q=0:N=N-6.4:GOTO1850
1375 IF N<=6.6THEN A=37744:B=609:C=825.42:D=1.75:E=-6.48:F=.04:P=-6.79:Q=.01:N=N-6.5:GOTO1850
1380 IF N<=6.7THEN A=38353:B=609:C=827.17:D=1.77:E=-6.44:F=.04:P=-6.78:Q=0:N=N-6.6:GOTO1850
1385 IF N<=6.8THEN A=38962:B=610:C=828.94:D=1.81:E=-6.4:F=.04:P=-6.78:Q=.01:N=N-6.7:GOTO1850
1390 IF N<=6.9THEN A=39572:B=610:C=830.75:D=1.84:E=-6.36:F=.05:P=-6.77:Q=.01:N=N-6.8:GOTO1850
1395 IF N<=7THEN A=40182:B=611:C=832.59:D=1.87:E=-6.31:F=.05:P=-6.76:Q=0:N=N-6.9:GOTO1850
1400 IF N<=7.1THEN A=40793:B=611:C=834.46:D=1.84:E=-6.26:F=.04:P=-6.76:Q=.01:N=N-7:GOTO1850
1405 IF N<=7.2THEN A=41404:B=611:C=836.3:D=1.89:E=-6.2:F=.06:P=-6.75:Q=.01:N=N-7.1:GOTO1850
1410 IF N<=7.3THEN A=42015:B=613:C=838.19:D=1.96:E=-6.14:F=.06:P=-6.74:Q=.01:N=N-7.2:GOTO1850
1415 IF N<=7.4THEN A=42628:B=612:C=840.15:D=2.03:E=-6.08:F=.07:P=-6.73:Q=.01:N=N-7.3:GOTO1850
1420 IF N<=7.5THEN A=43240:B=614:C=842.18:D=2.11:E=-6.01:F=.07:P=-6.72:Q=.01:N=N-7.4:GOTO1850
1425 IF N<=7.6THEN A=43854:B=614:C=844.29:D=2.19:E=-5.94:F=.07:P=-6.71:Q=.01:N=N-7.5:GOTO1850
1430 IF N<=7.7THEN A=44468:B=614:C=846.48:D=2.26:E=-5.87:F=.07:P=-6.7:Q=.01:N=N-7.6:GOTO1850
1435 IF N<=7.8THEN A=45082:B=615:C=848.74:D=2.33:E=-5.8:F=.08:P=-6.69:Q=.02:N=N-7.7:GOTO1850
1440 IF N<=7.9THEN A=45697:B=616:C=851.07:D=2.38:E=-5.72:F=.08:P=-6.67:Q=.01:N=N-7.8:GOTO1850
1445 IF N<=8THEN A=46313:B=616:C=853.45:D=2.45:E=-5.64:F=.09:P=-6.66:Q=.01:N=N-7.9:GOTO1850
1450  IF N<=8.1THEN A=46929:B=617:C=855.9:D=2.64:E=-5.55:F=.09:P=-6.65:Q=.02:N=N-8:GOTO1850
1455  IF N<=8.2THEN A=47546:B=617:C=858.54:D=2.67:E=-5.46:F=.09:P=-6.63:Q=.01:N=N-8.1:GOTO1850
1460  IF N<=8.3THEN A=48163:B=618:C=861.21:D=2.65:E=-5.37:F=.09:P=-6.62:Q=.02:N=N-8.2:GOTO1850
1465  IF N<=8.4THEN A=48781:B=619:C=863.86:D=2.64:E=-5.26:F=.1:P=-6.6:Q=.02:N=N-8.3:GOTO1850
1470  IF N<=8.5THEN A=49400:B=619:C=866.5:D=2.63:E=-5.16:F=.11:P=-6.58:Q=.01:N=N-8.4:GOTO1850
1475  IF N<=8.6THEN A=50019:B=620:C=869.13:D=2.42:E=-5.05:F=.12:P=-6.57:Q=.02:N=N-8.5:GOTO1850
1480  IF N<=8.7THEN A=50639:B=621:C=871.55:D=2.47:E=-4.93:F=.12:P=-6.55:Q=.02:N=N-8.6:GOTO1850
1485  IF N<=8.8THEN A=51260:B=621:C=874.02:D=2.57:E=-4.81:F=.12:P=-6.53:Q=.02:N=N-8.7:GOTO1850
1490  IF N<=8.9THEN A=51881:B=622:C=876.59:D=2.66:E=-4.69:F=.13:P=-6.51:Q=.03:N=N-8.8:GOTO1850
1495  IF N<=9THEN A=52503:B=623:C=879.25:D=2.76:E=-4.56:F=.12:P=-6.48:Q=.02:N=N-8.9:GOTO1850
1500  IF N<=9.1THEN A=53126:B=624:C=882.01:D=3.06:E=-4.44:F=.14:P=-6.46:Q=.02:N=N-9:GOTO1850
1505  IF N<=9.2THEN A=53750:B=624:C=885.07:D=3.1:E=-4.3:F=.13:P=-6.44:Q=.03:N=N-9.1:GOTO1850
1510  IF N<=9.3THEN A=54374:B=626:C=888.17:D=3.09:E=-4.17:F=.14:P=-6.41:Q=.03:N=N-9.2:GOTO1850
1515  IF N<=9.4THEN A=55000:B=625:C=891.26:D=3.07:E=-4.03:F=.13:P=-6.38:Q=.02:N=N-9.3:GOTO1850
1520  IF N<=9.5THEN A=55625:B=627:C=894.33:D=3.05:E=-3.9:F=.14:P=-6.36:Q=.03:N=N-9.4:GOTO1850
1525  IF N<=9.6THEN A=56252:B=626:C=897.38:D=2.61:E=-3.76:F=.12:P=-6.33:Q=.03:N=N-9.5:GOTO1850
1530  IF N<=9.7THEN A=56878:B=628:C=899.99:D=2.71:E=-3.64:F=.13:P=-6.3:Q=.03:N=N-9.6:GOTO1850
1535  IF N<=9.8THEN A=57506:B=628:C=902.7:D=2.95:E=-3.51:F=.13:P=-6.27:Q=.03:N=N-9.7:GOTO1850
1540  IF N<=9.9THEN A=58134:B=629:C=905.65:D=3.19:E=-3.38:F=.14:P=-6.24:Q=.03:N=N-9.8:GOTO1850
1545  IF N<=10THEN A=58763:B=629:C=908.84:D=3.44:E=-3.24:F=.15:P=-6.21:Q=.04:N=N-9.9:GOTO1850
1550  IF N<=10.1THEN A=59392:B=631:C=912.28:D=3.96:E=-3.09:F=.14:P=-6.17:Q=.03:N=N-10:GOTO1850
1555  IF N<=10.2THEN A=60023:B=631:C=916.24:D=4.13:E=-2.93:F=.17:P=-6.14:Q=.03:N=N-10.1:GOTO1850
1560  IF N<=10.3THEN A=60654:B=632:C=920.37:D=4.2:E=-2.76:F=.16:P=-6.11:Q=.04:N=N-10.2:GOTO1850
1565  IF N<=10.4THEN A=61286:B=633:C=924.57:D=4.29:E=-2.6:F=.16:P=-6.07:Q=.03:N=N-10.3:GOTO1850
1570  IF N<=10.5THEN A=61919:B=634:C=928.86:D=4.36:E=-2.44:F=.17:P=-6.04:Q=.04:N=N-10.4:GOTO1850
1575  IF N<=10.6THEN A=62553:B=635:C=933.22:D=4.74:E=-2.27:F=.16:P=-6:Q=.04:N=N-10.5:GOTO1850
1580  IF N<=10.7THEN A=63188:B=637:C=937.96:D=4.73:E=-2.11:F=.17:P=-5.96:Q=.04:N=N-10.6:GOTO1850
1585  IF N<=10.8THEN A=63825:B=637:C=942.69:D=4.65:E=-1.94:F=.16:P=-5.92:Q=.04:N=N-10.7:GOTO1850
1590  IF N<=10.9THEN A=64462:B=638:C=947.34:D=4.54:E=-1.78:F=.15:P=-5.88:Q=.04:N=N-10.8:GOTO1850
1595  IF N<=11THEN A=65100:B=639:C=951.88:D=4.45:E=-1.63:F=.16:P=-5.84:Q=.04:N=N-10.9:GOTO1850
1600  IF N<=11.1THEN A=65739:B=640:C=956.33:D=4.39:E=-1.47:F=.15:P=-5.8:Q=.04:N=N-11:GOTO1850
1605  IF N<=11.2THEN A=66379:B=641:C=960.72:D=4.29:E=-1.32:F=.14:P=-5.76:Q=.05:N=N-11.1:GOTO1850
1610  IF N<=11.3THEN A=67020:B=642:C=965.01:D=4.17:E=-1.18:F=.15:P=-5.71:Q=.04:N=N-11.2:GOTO1850
1615  IF N<=11.4THEN A=67662:B=643:C=969.18:D=4.05:E=-1.03:F=.14:P=-5.67:Q=.05:N=N-11.3:GOTO1850
1620  IF N<=11.5THEN A=68305:B=643:C=973.23:D=3.95:E=-.89:F=.14:P=-5.62:Q=.04:N=N-11.4:GOTO1850
1625  IF N<=11.6THEN A=68948:B=645:C=977.18:D=3.71:E=-.75:F=.16:P=-5.58:Q=.05:N=N-11.5:GOTO1850
1630  IF N<=11.7THEN A=69593:B=646:C=980.89:D=3.64:E=-.61:F=.14:P=-5.53:Q=.04:N=N-11.6:GOTO1850
1635  IF N<=11.8THEN A=70239:B=646:C=984.53:D=3.59:E=-.47:F=.13:P=-5.49:Q=.05:N=N-11.7:GOTO1850
1640  IF N<=11.9THEN A=70885:B=647:C=988.12:D=3.54:E=-.34:F=.12:P=-5.44:Q=.05:N=N-11.8:GOTO1850
1645  IF N<=12THEN A=71532:B=647:C=991.66:D=3.51:E=-.22:F=.12:P=-5.39:Q=.04:N=N-11.9:GOTO1850
1650  IF N<=12.1THEN A=72179:B=648:C=995.17:D=3.44:E=-.1:F=.12:P=-5.35:Q=.05:N=N-12:GOTO1850
1655  IF N<=12.2THEN A=72827:B=649:C=998.61:D=3.41:E=.02:F=.11:P=-5.3:Q=.05:N=N-12.1:GOTO1850
1660  IF N<=12.3THEN A=73476:B=649:C=1002.02:D=3.37:E=.1:F=.1:P=-5.25:Q=.05:N=N-12.2:GOTO1850
1665  IF N<=12.4THEN A=74125:B=651:C=1005.39:D=3.35:E=.23:F=.1:P=-5.2:Q=.04:N=N-12.3:GOTO1850
1670  IF N<=12.5THEN A=74776:B=652:C=1008.74:D=3.39:E=.33:F=.1:P=-5.16:Q=.05:N=N-12.4:GOTO1850
1675  IF N<=12.6THEN A=75428:B=653:C=1012.13:D=3.35:E=.43:F=.09:P=-5.11:Q=.05:N=N-12.5:GOTO1850
1680  IF N<=12.7THEN A=76081:B=654:C=1015.48:D=3.28:E=.52:F=.09:P=-5.06:Q=.05:N=N-12.6:GOTO1850
1685  IF N<=12.8THEN A=76735:B=654:C=1018.76:D=3.21:E=.61:F=.09:P=-5.01:Q=.05:N=N-12.7:GOTO1850
1690  IF N<=12.9THEN A=77389:B=655:C=1021.97:D=3.15:E=.7:F=.08:P=-4.96:Q=.04:N=N-12.8:GOTO1850
1695  IF N<=13THEN A=78044:B=655:C=1025.13:D=3.08:E=.78:F=.08:P=-4.92:Q=.05:N=N-12.9:GOTO1850
1700  IF N<=13.1THEN A=78699:B=655:C=1028.2:D=2.94:E=.86:F=.08:P=-4.87:Q=.05:N=N-13:GOTO1850
1705  IF N<=13.2THEN A=79354:B=656:C=1031.14:D=2.91:E=.94:F=.07:P=-4.82:Q=.05:N=N-13.1:GOTO1850
1710  IF N<=13.3THEN A=80010:B=657:C=1034.05:D=2.88:E=1.01:F=.08:P=-4.77:Q=.05:N=N-13.2:GOTO1850
1715  IF N<=13.4THEN A=80667:B=657:C=1036.93:D=2.86:E=1.09:F=.06:P=-4.72:Q=.04:N=N-13.3:GOTO1850
1720  IF N<=13.5THEN A=81324:B=659:C=1039.79:D=2.81:E=1.15:F=.07:P=-4.68:Q=.05:N=N-13.4:GOTO1850
1725  IF N<=13.6THEN A=81983:B=660:C=1042.6:D=2.78:E=1.22:F=.06:P=-4.63:Q=.05:N=N-13.5:GOTO1850
1730  IF N<=13.7THEN A=82643:B=660:C=1045.38:D=2.77:E=1.28:F=.06:P=-4.58:Q=.04:N=N-13.6:GOTO1850
1735  IF N<=13.8THEN A=83303:B=661:C=1048.15:D=2.77:E=1.34:F=.05:P=-4.54:Q=.05:N=N-13.7:GOTO1850
1740  IF N<=13.9THEN A=83964:B=662:C=1050.92:D=2.77:E=1.39:F=.05:P=-4.49:Q=.05:N=N-13.8:GOTO1850
1745  IF N<=14THEN A=84626:B=662:C=1053.69:D=2.75:E=1.44:F=.05:P=-4.44:Q=.04:N=N-13.9:GOTO1850
1750  IF N<=14.1THEN A=85288:B=662:C=1056.44:D=2.82:E=1.49:F=.04:P=-4.4:Q=.05:N=N-14:GOTO1850
1755  IF N<=14.2THEN A=85950:B=664:C=1059.26:D=2.8:E=1.53:F=.04:P=-4.35:Q=.04:N=N-14.1:GOTO1850
1760  IF N<=14.3THEN A=86614:B=663:C=1062.06:D=2.75:E=1.57:F=.04:P=-4.31:Q=.05:N=N-14.2:GOTO1850
1765  IF N<=14.4THEN A=87277:B=664:C=1064.81:D=2.7:E=1.61:F=.03:P=-4.26:Q=.04:N=N-14.3:GOTO1850
1770  IF N<=14.5THEN A=87941:B=665:C=1067.51:D=2.65:E=1.64:F=.04:P=-4.22:Q=.05:N=N-14.4:GOTO1850
1775  IF N<=14.6THEN A=88606:B=666:C=1070.16:D=2.58:E=1.68:F=.03:P=-4.17:Q=.04:N=N-14.5:GOTO1850
1780  IF N<=14.7THEN A=89272:B=666:C=1072.74:D=2.54:E=1.71:F=.03:P=-4.13:Q=.04:N=N-14.6:GOTO1850
1785  IF N<=14.8THEN A=89938:B=667:C=1075.28:D=2.52:E=1.74:F=.03:P=-4.09:Q=.05:N=N-14.7:GOTO1850
1790  IF N<=14.9THEN A=90605:B=667:C=1077.8:D=2.49:E=1.77:F=.03:P=-4.04:Q=.03:N=N-14.8:GOTO1850
1860 IF U=8THEN3060
1870 IF U=9THEN1910
1880 IF U=10THEN1920
1890 GOSUB60:PRINT"DISP=";H:M=I*K*G/2.15:PRINT"1ST TRIM CORR=";M:Y=H+M:GOSUB1965
1900 U=9:Z=J:W=L:R=H:V=T:A1=K:A2=G:N=T+.5:GOTO1080
1910 U=10:X=J:N=T-1:GOTO1080
1920 M=(50*(X-J)*I^2)/215:PRINT"2ND TRIM CORR=";M
1930 A=Y+M:L=W:H=R:T=V:J=Z:K=A1:G=A2
1940 D=0:C=A:B=1.025:INPUT"S.G.";B:C=A*B/1.025:D=C-A
1950 PRINT"S.G. CORR=";D,"CORR-DISP=";C;"@"1.025
1960 PRINT"DEAD WEIGHT=";C-10238:GOTO2010
1965 Z$=INKEY$:IF Z$=""THEN1965ELSE RETURN

2000 CLEAR:PRINT"TRIMMING":INPUT"FORE/D";O,"AFT/D";S:GOSUB100:IF A$="Y"THEN2003ELSE GOSUB70
2003 PRINT"F/DRAFT=";O;" A/DFT=";S
2005 N=(O+S)/2:U=7:GOSUB1080
2010 X=0:Y=0:Z=0:INPUT"DEAD WEIGHT NO ANY CHANGE Y/N";Y$:IF Y$="Y"GOTO2410
2020 INPUT"HOLD/1";X:A1=A1+X:A=-85.71:A2=A1*A:GOSUB80
2030 INPUT"HOLD/2";X:B1=B1+X:A=-61.43:B2=B1*A:GOSUB80
2040 INPUT"HOLD/3";X:C1=C1+X:A=-36.01:C2=C1*A:GOSUB80
2050 INPUT"HOLD/4(WBT)";X:D1=D1+X:A=-10.52:D2=D1*A:GOSUB80
2060 INPUT"HOLD/5";X:E1=E1+X:A=15.05:E2=E1*A:GOSUB80
2070 INPUT"HOLD/6";X:F1=F1+X:A=40.56:F2=F1*A:GOSUB80
2080 INPUT"HOLD/7";X:G1=G1+X:A=65.94:G2=G1*A:GOSUB80
2090 INPUT"WBT/1";X:H1=H1+X:A=-84.51:H2=H1*A:GOSUB80
2100 INPUT"WBT/2";X:I1=I1+X:A=-60.86:I2=I1*A:GOSUB80
2110 INPUT"WBT/3";X:J1=J1+X:A=-35.55:J2=J1*A:GOSUB80
2120 INPUT"WBT/4";X:K1=K1+X:A=.17:K2=K1*A:GOSUB80
2130 INPUT"WBT/5";X:L1=L1+X:A=52.44:L2=L1*A:GOSUB80
2140 INPUT"TST/1";X:M1=M1+X:A=-85.24:M2=M1*A:GOSUB80
2150 INPUT"TST/2";X:N1=N1+X:A=-61.04:N2=N1*A:GOSUB80
2160 INPUT"TST/3";X:O1=O1+X:A=-35.55:O2=O1*A:GOSUB80
2170 INPUT"TST/4";X:P1=P1+X:A=2.7:P2=P1*A:GOSUB80
2180 INPUT"TST/5";X:Q1=Q1+X:A=53.55:Q2=Q1*A:GOSUB80
2190 INPUT"FPT";X:R1=R1+X:A=-102.57:R2=R1*A:GOSUB80
2200 INPUT"APT";X:U1=X:A=105.11:U2=U1*A:GOSUB80
2210 INPUT"FOT/1";X:S1=S1+X:A=28.2:S2=S1*A:GOSUB80
2220 INPUT"FOT/2(P&S)";X:T1=T1+X:A=66.6:T2=T1*A:GOSUB80:ZZ=ZZ+Z:YY=YY+Y:X1=ZZ-LT-CT-HP-PV-U1:Y1=YY-LT*11.11-CT*63.03846-HP*-10.2-PV*89-U2:IF STRESS=1GOTO4500
2230 INPUT"AFOT/P";X:A=80.76:GOSUB80
2240 INPUT"AFOT/S";X:A=80.62:GOSUB80
2260 INPUT"DOT/P";X:A=82.85:GOSUB80
2270 INPUT"DOT/S";X:A=84.56:GOSUB80
2280 INPUT"FWT/P";X:A=105.15:GOSUB80
2290 INPUT"FWT/S";X:A=103.92:GOSUB80
2300 INPUT"DWT/P";X:A=101.86:GOSUB80
2400 IF U=8THEN3040
2410 IF Z=0THEN Z=1E-10
2420 A=Y/Z:B=A-K:C=Z*B/J:P=C*K/215
2430 D=C/2:E=Z/G-P:F=(E-D)/100:Q=(E+D)/100:M=E/100:O=O+F:S=S+Q
2440 PRINT"F.D.C.=";F;"A.D.C.=";Q
2450 V=S-O:PRINT"FORE/D=";O;"AFT/D=";S,"TRIM=";V;" MEAN=";(O+S)/2:GOSUB1965
2452 PPRINT"1:CONTINUE TRIMMING,2:STRESS,3:AIR DRAFT,4:S.W.<>F.W."
2454 XX=0:INPUT"1 TO 4";XX
2456 ON XX GOTO2005,4030,7030,2460
2458 GOTO2454
2460 A=1.025:INPUT"S.G.";A:B=H*(1.025-A)/G/A/100:C=H*(1.025-A)/1.025*(L-K)/J/100:GOTO2470
2470 INPUT"SALT/W TO FRESH/W +/-";B$:o=O:s=S:IF B$="+"THEN2490ELSE2480
2480 O=O-B+C/2:S=S-B-C/2:GOTO2500
2490 O=O+B-C/2:S=S+B+C/2:GOTO2500
2500 F=O-o:Q=S-s:GOTO2440

3000 CLEAR:PRINT"LOADING & STRESS CALCULATION":STRESS=2
3005 X=10238:LT=X:A=11.11:GOSUB80:U=8
3010 X=260:CT=X:A=63.03846:GOSUB80
3020 INPUT"HOPPERS(42MT)";X:HP=X:A=-10.2:GOSUB80
3025 INPUT"PROVISION";X:PV=X:A=89:GOSUB80
3030 GOTO2020
3040 R=Y/Z:PRINT"LONG-MOMENT=";Y,"LCG=";R;"DISPLACEMT=";Z:N=12
3050 GOTO1080
3060 B=Z-H:C=B/G/100:N=T+C:IF ABS(H-Z)<10THEN3080
3070 GOTO1080
3080 GOSUB60:PRINT"CORRN DRAFT=";N:V=(Z*(R-L)/J)/100
3090 W=V*(107.5+K)/215
3100 O=N-W:S=O+V:T=(O+S)/2:GOTO2450

4000 CLEAR:PRINT"STRESS CALCULATION"
4010 INPUT"FORE/D";O,"AFT/D";S:STRESS=1
4020 GOSUB100:IF A$="Y"THEN4030ELSE GOSUB70
4030 INPUT"ALTERNATE LOADING Y/N";B$:IF B$="Y"THEN ALT=1
4035 INPUT"HARBOR CONDITION Y/N";C$:IF C$="Y"THEN HAR=1
4040 INPUT"HEAVY BALLAST CONDN Y/N";E$:IF E$="Y"THEN BAL=1
4050 I=S-O:T=(O+S)/2
4060 IF STRESS=1THEN GOTO2020
4500 X2=X1-G1-L1*.463-Q1*.496-T1
4510 X3=X2-F1-L1*.537-Q1*.504-S1*.498
4520 X4=X3-E1-K1*.426-P1*.497-S1*.502
4530 X5=X4-D1-K1*.574-P1*.503
4540 X6=X5-C1-J1-O1
4550 X7=X6-B1-I1-N1
4560 X8=X7-A1-H1-M1
4570 DT=I*T:DD=T^2
4580 A3=X1-(T*5695+I*-298+DT*2+DD*7-8720)
4590 B3=X2-(T*4988+I*-513+DT*-1+DD*2-7390)
4600 C3=X3-(T*4144+I*-674+DT*-1+DD*2-6280)
4610 D3=X4-(T*3301+I*-735+DT*-1+DD*2-5180)
4620 E3=X5-(T*2458+I*-695+DT*-1+DD*2-4050)
4630 F3=X6-(T*1616+I*-556+DT*-1+DD*2-2940)
4640 G3=X7-(T*777+I*-318+DT*-1+DD*2-1810)
4650 H3=X8-(T*137+I*-66+DT*1+DD*-1-730)
4700 Y2=Y1-G2-L2*.584-Q2*.615-T2
4710 Y3=Y2-F2-L2*.416-Q2*.358-S2*.724
4720 Y4=Y3-E2+K2*-36.82+P2*-2.861-S2*.276
4730 Y5=Y4-D2-K2*-35.82-P2*-1.861
4740 Y6=Y5-C2-J2-O2
4750 Y7=Y6-B2-I2-N2
4760 Y8=Y7-A2-H2-M2
4800 A5=X1*-79.2+Y1+(T*515060+I*-94678+DT*-193.4+DD*355-824100)
4810 B5=X2*-53.7+Y2+(T*378200+I*-84351+DT*-183.6+DD*262.7-619300)
4820 C5=X3*-28.2+Y3+(T*261830+I*-68965+DT*-147.5+DD*210.5-445500)
4830 D5=X4*-2.7+Y4+(T*166910+I*-51292+DT*-110.7+DD*159.7-299000)
4840 E5=X5*22.8+Y5+(T*93470+I*-32334+DT*-73.8+DD*108.8-181100)
4850 F5=X6*48.3+Y6+(T*41530+I*-16140+DT*-37+DD*58-92400)
4860 G5=X7*73.8+Y7+(T*11070+I*-4848+DT*-.1+DD*7-31300)
4870 H5=X8*98.45+Y8+(T*700+I*-344+DT*11.6+DD*-11.6-400)
4910 A4=45.2:B4=49.4:C4=43.8:D4=52.9:E4=52.8:F4=41.7:G4=50.5:H4=55
4920 A6=536:B6=1077:C6=1350:G6=768:H6=206
5000 IF ALT=1GOTO5300
5010 IF BAL=1GOTO5320
5020 A7=A3/A4:B7=B3/B4:C7=C3/C4:D7=D3/D4:E7=E3/E4:F7=F3/F4:G7=G3/G4:H7=H3/H4
5030 A8=A5/A6:B8=B5/B6:C8=C5/C6:D8=D5/C6:E8=E5/C6:F8=F5/C6:G8=G5/G6:H8=H5/H6
5040 GOSUB60
5050 SET F1:PRINT"S/F(%)=";A7;B7;C7;D7;E7;F7;G7;H7:GOSUB1965
5060 PRINT"B/M(%)=";A8;B8;C8;D8;E8;F8;G8;H8:GOSUB1965
5065 IF HAR=1GOTO5080
5070 INPUT"CHECK HARBOR CONDITION Y/N";C$:IF C$="Y"THEN HAR=1:GOTO5600
5080 SET F3:INPUT"CONTINUE TRIMMING Y/N";D$:IF D$="Y"THEN2005ELSE5050
5300 a=SGNB3*(ABSB3-ABS(A3-B3)*.199):b=SGNB3*(ABSB3-ABS(B3-C3)*.225)
5310 c=SGNC3*(ABSC3-ABS(B3-C3)*.225):d=SGNC3*(ABSC3-ABS(C3-D3)*.225)
5320 e=SGND3*(ABSD3-ABS(C3-D3)*.225):f=SGND3*(ABSD3-ABS(D3-E3)*.225)
5330 g=SGNE3*(ABSE3-ABS(D3-E3)*.225):h=SGNE3*(ABSE3-ABS(E3-F3)*.225):IF BAL=1GOTO5380
5340 i=SGNF3*(ABSF3-ABS(E3-F3)*.225):j=SGNF3*(ABSF3-ABS(F3-G3)*.225)
5350 k=SGNG3*(ABSG3-ABS(F3-G3)*.225):l=SGNG3*(ABSG3-ABS(G3-H3)*.189)
5360 IF ABSa>ABSb THEN B3=a ELSE B3=b
5370 IF ABSc>ABSd THEN C3=c ELSE C3=d
5380 IF ABSe>ABSf THEN D3=e ELSE D3=f
5390 IF ABSg>ABSh THEN E3=g ELSE E3=h:IF BAL=1GOTO5020
5400 IF ABSi>ABSj THEN F3=i ELSE F3=j
5410 IF ABSk>ABSl THEN G3=k ELSE G3=l
5430 GOTO5020
5600 A4=59.5:B4=74.4:C4=68:D4=68:E4=D4:F4=D4:G4=76.5:H4=63.8
5610 A6=1167:B6=2346:C6=2940:G6=1970:H6=529
5620 GOTO5020

6000 CLEAR:PRINT"FINAL TRIMMING WITH TWO HOLDS"
6010 SET F0:INPUT"BALANCE CARGO TO LOAD";A,"OBS-TRIM(MTR)";B,"REQUIRE-TRIM(MTR)";C:D=(C-B)*100
6015 INPUT"ACCURATE TRIMMING Y/N";A$:IF A$="Y"THEN6250
6020 INPUT"FORE HOLD";X,"AFT HOLD";Y:T=0
6030 IF X=1THEN E=5.8:F=-2.75:GOTO6110
6040 IF X=2THEN E=4.6:F=-1.5:GOTO6110
6050 IF X=3THEN E=3.3:F=-.3:GOTO6110
6060 IF X=4THEN E=2.1:F=1:GOTO6110
6110 IF Y=5THEN G=.8:H=2.25:GOTO6200
6120 IF Y=6THEN G=-.45:H=3.5:GOTO6200
6130 IF Y=7THEN G=-1.75:H=4.8:GOTO6200
6200 I=(A/100*(H-G)-D)/(H-F-G+E):I=I*100:J=A-I:IF T=1GOTO6300
6220 PRINT"HOLD"X"=";I;"  HOLD"Y"=";J:GOTO6010
6250 T=1:INPUT"X-fore(cm)";E,"X-aft(cm)";F
6260 INPUT"Y-fore(cm)";G,"Y-aft(cm)";H:GOTO6200
6300 PRINT"HOLD/X=";I;"  HOLD/Y=";J:GOTO6010

7000 CLEAR:SET F3:PRINT"AIR DRAFT CALCULATION"
7010 INPUT"FORE DFT";O,"AFT DFT";S:V=S-O
7020 GOSUB100:IF A$="Y"THEN7030ELSE GOSUB70
7030 W=21.55-S:Z=215:Y=.3048:X=.12
7035 s=FIX(S/Y)+FRAC(S/Y)*X:o=FIX(O/Y)+FRAC(O/Y)*X
7040 A=W+V*42.775/Z:a=FIX(A/Y)+FRAC(A/Y)*X
7050 B=W+V*68.275/Z:b=FIX(B/Y)+FRAC(B/Y)*X
7060 C=W+V*93.775/Z:c=FIX(C/Y)+FRAC(C/Y)*X
7070 D=W+V*119.275/Z:d=FIX(D/Y)+FRAC(D/Y)*X
7080 E=W+V*144.775/Z:e=FIX(E/Y)+FRAC(E/Y)*X
7090 F=W+V*170.275/Z:f=FIX(F/Y)+FRAC(F/Y)*X
7100 G=W+.97+V*194.925/Z:g=FIX(G/Y)+FRAC(G/Y)*X
7110 J=49.2-S+V*20.25/Z:j=FIX(J/Y)+FRAC(J/Y)*X
7115 H=(S-V*2.9/Z-.875)/6.55*100
7120 L=40.24-O-V*6.375/Z:l=FIX(L/Y)+FRAC(L/Y)*X
7125 PRINT"FORE=";O;"  AFT=";S
7126 PRINT"FORE=";o;"'  AFT=";s"'":GOSUB1965
7130 PRINT "AIR(M)=";G;F;E;D;C;B;A:GOSUB1965
7140 PRINT"AIR(')=";g;f;e;d;c;b;a:GOSUB1965
7150 PRINT"SSB ANT=";L;"M  ";l;"'"
7160 PRINT"LOOP ANT=";J;"M  ";j;"'"
7165 PRINT"PROPELLER IMMERSION=";H"%":GOSUB1965
7170 GOTO7010
