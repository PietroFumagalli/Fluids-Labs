 ************************************************************
 
 
   ----------------------------------------------------------  
   PHOENICS 2022 v1.0 - EARTH                                  
   (C) Copyright 2022                                          
   Concentration Heat and Momentum Limited                     
   All rights reserved.                                        
   Address:  Bakery House, 40 High Street                      
   Wimbledon, London, SW19 5AU, England                        
   tel:       +44 (0) 20-8947-7651                             
   fax:       +44 (0) 20-8879-3497                             
   e-mail:    phoenics@cham.co.uk                              
   web:       www.cham.co.uk                                   
   ----------------------------------------------------------  
   Code expiry date is the end  : feb 2025                     
   ----------------------------------------------------------  
   Running with 64-bit Double Precision executable             
   Working directory: C:\phoenics\d_priv1
 
 ************************************************************
 
 Initial estimated storage requirement is                  10000000
 
 PRPS is not stored
 Material properties used for phase 1 are
 density
 laminar viscosity
 turbulent viscosity
 mixing length
 >>>   End of property-related data   <<<
 ************************************************************
 
 Number of F-array locations available is                  10000000
 Number used before BFC allowance is                         291609
 Number used after BFC allowance is                          291609
 ************************************************************
 
  Standard k-e model constants
 
 AK =0.41 EWAL =8.6
 CMU =0.5478 CD =0.1643 CMUCD =0.090004
 C1E =1.44 C2E =1.92
 
 The foregoing constants may be changed
 from the Q1 file by setting:
 SPEDAT(KECONST,name of constant,R,value)
 
 ************************************************************
 biggest cell volume divided by average is     3.02256045000001       at:
 ix = 1 iy = 31 iz = 114
 xg =0.5 yg =0.04875 zg =3.405
 smallest cell volume divided by average is   3.108549593320208E-002  at:
 ix = 1 iy = 1 iz = 113
 xg =0.5 yg =7.916668E-04 zg =3.375
 ratio of smallest to biggest is   1.028449106227206E-002
 ************************************************************
 
 -------- Recommended settings -------
 CONWIZ=T activates settings based on
 refrho =1. refvel =10. reflen =1. reftemp =50.
 rlxdu1 =0.5 rlxdv1 =0.5 rlxdw1 =0.5
 Maximum change of V1   per sweep=   100.000000000000     
 Maximum change of W1   per sweep=   100.000000000000     
 Maximum change of KE   per sweep=   1.00000000000000     
 Maximum change of EP   per sweep=   1000.00000000000     
 relaxation and min/max values left at
 defaults may have been changed
 
 ************************************************************
 SParsol activated
 ************************************************************
  Group 1. Run Title and Number
 ************************************************************
 ************************************************************
 
 TEXT(                                        )
 
 ************************************************************
 ************************************************************
 
 IRUNN = 1 ;LIBREF = 0
 ************************************************************
  Group 2. Time dependence
 STEADY = T
 ************************************************************
  Group 3. X-Direction Grid Spacing
 CARTES = F
 NX = 1
 XULAST =1.
 ************************************************************
  Group 4. Y-Direction Grid Spacing
 NY = 31
 YVLAST =0.05
 YFRAC(1)=0.031667 ;YFRAC(7)=0.221667
 YFRAC(13)=0.411667 ;YFRAC(19)=0.601667
 YFRAC(25)=0.791667 ;YFRAC(31)=1.
 ************************************************************
  Group 5. Z-Direction Grid Spacing
 PARAB = F
 NZ = 200
 ZWLAST =6.
 ZFRAC(1)=5.0E-03 ;ZFRAC(41)=0.205
 ZFRAC(81)=0.405 ;ZFRAC(121)=0.605
 ZFRAC(161)=0.805
 ************************************************************
  Group 6. Body-Fitted Coordinates
 ************************************************************
  Group 7. Variables: STOREd,SOLVEd,NAMEd
 ONEPHS = T
 NAME(1)=P1 ;NAME(5)=V1
 NAME(7)=W1 ;NAME(12)=KE
 NAME(13)=EP ;NAME(146)=YPLS
 NAME(147)=STRS ;NAME(148)=DEN1
 NAME(149)=EPKE ;NAME(150)=DWDY
    * Y in SOLUTN argument list denotes:
    * 1-stored 2-solved 3-whole-field
    * 4-point-by-point 5-explicit 6-harmonic averaging 
 SOLUTN(P1,Y,Y,Y,N,N,Y)
 SOLUTN(V1,Y,Y,Y,N,N,Y)
 SOLUTN(W1,Y,Y,Y,N,N,N)
 SOLUTN(KE,Y,Y,N,N,N,N)
 SOLUTN(EP,Y,Y,N,N,N,N)
 SOLUTN(YPLS,Y,N,N,N,N,Y)
 SOLUTN(STRS,Y,N,N,N,N,Y)
 SOLUTN(DEN1,Y,N,N,N,N,Y)
 SOLUTN(EPKE,Y,N,N,N,N,Y)
 SOLUTN(DWDY,Y,N,N,N,N,Y)
 DEN1 = 148
 ************************************************************
  Group 8. Terms & Devices
    * Y in TERMS argument list denotes:
    * 1-built-in source 2-convection 3-diffusion 4-transient
    * 5-first phase variable 6-interphase transport         
 TERMS(P1,Y,Y,Y,N,Y,N)
 TERMS(V1,Y,Y,Y,N,Y,N)
 TERMS(W1,Y,Y,Y,N,Y,N)
 TERMS(KE,N,Y,Y,N,Y,N)
 TERMS(EP,N,Y,Y,N,Y,N)
 DIFCUT =0.5 ;ZDIFAC =1.
 GALA = F ;ADDDIF = T
 NEWENT = T
 ISOLX = 0 ;ISOLY = -1 ;ISOLZ = -1
 ************************************************************
  Group 9. Properties used if PRPS is not
  stored, and where PRPS = -1.0 if it is!
 RHO1 =998.23 ;TMP1 =0. ;EL1 = GRND4
 TSURR =0. ;TEMP0 =273.15 ;PRESS0 =1.01325E+05
 DVO1DT =1.18E-04 ;DRH1DP =0.
 EMISS =0. ;SCATT =0.
 RADIA =0. ;RADIB =0.
 EL1A =0. ;EL1B =0. ;EL1C =0.
 ENUL =1.006E-06 ;ENUT = GRND3
 ENUTA =0. ;ENUTB =0. ;ENUTC =0.
 IENUTA = 0
 PRNDTL(V1)=1. ;PRNDTL(W1)=1.
 PRNDTL(KE)=1. ;PRNDTL(EP)=1.
 PRT(V1)=1. ;PRT(W1)=1.
 PRT(KE)=1. ;PRT(EP)=1.314
 CP1 =4181.8 ;CP2 =1.
 ************************************************************
  Group 10.Inter-Phase Transfer Processes
 ************************************************************
  Group 11.Initial field variables (PHIs)
 FIINIT(P1)=0. ;FIINIT(V1)=1.0E-10
 FIINIT(W1)=1.0E-10 ;FIINIT(KE)=5.625E-17
 FIINIT(EP)=1.386463E-23 ;FIINIT(YPLS)=1.0E-10
 FIINIT(STRS)=1.0E-10 ;FIINIT(DEN1)=998.23
 FIINIT(EPKE)=1.0E-10 ;FIINIT(DWDY)=1.0E-10
   No PATCHes yet used for this Group
 INIADD = F
 FSWEEP = 1
 NAMFI =CHAM
 ************************************************************
  Group 12. Patchwise adjustment of terms
  Patches for this group are printed with those
  for Group 13.
  Their names begin either with GP12 or &
 ************************************************************
  Group 13. Boundary & Special Sources
 
   Parent VR object for this patch is: INLE1         
 PATCH(OB1 ,LOW , 1, 1, 1, 31, 1, 1, 1, 1)
 COVAL(OB1 ,P1 , FIXFLU ,748.6725 )
 COVAL(OB1 ,V1 ,0. ,0. )
 COVAL(OB1 ,W1 ,0. ,0.75 )
 COVAL(OB1 ,KE ,0. ,5.625E-17 )
 COVAL(OB1 ,EP ,0. ,1.386463E-23 )
 
   Parent VR object for this patch is: OUTL2         
 PATCH(OB2 ,HIGH , 1, 1, 1, 31, 200, 200, 1, 1)
 COVAL(OB2 ,P1 ,1000. ,0. )
 COVAL(OB2 ,V1 ,0. ,0. )
 COVAL(OB2 ,W1 ,0. ,0. )
 COVAL(OB2 ,KE ,0. , SAME )
 COVAL(OB2 ,EP ,0. , SAME )
 
   Parent VR object for this patch is: PLAT3         
 PATCH(OB3 ,NWALL , 1, 1, 31, 31, 1, 200, 1, 1)
 COVAL(OB3 ,W1 , GRND2 ,0. )
 COVAL(OB3 ,KE , GRND2 , GRND2 )
 COVAL(OB3 ,EP , GRND2 , GRND2 )
 
 PATCH(KESOURCE,PHASEM, 1, 1, 1, 31, 1, 200, 1, 1)
 COVAL(KESOURCE,KE , GRND4 , GRND4 )
 COVAL(KESOURCE,EP , GRND4 , GRND4 )
 XCYCLE = F
 EGWF = F
 ************************************************************
  Group 14. Downstream Pressure For PARAB
 ************************************************************
  Group 15. Terminate Sweeps
 LSWEEP = 10000 ;ISWC1 = 1
 LITHYD = 1 ;LITFLX = 1 ;LITC = 1 ;ITHC1 = 1
 SELREF = T
 RESFAC =1.0E-05
 ************************************************************
  Group 16. Terminate Iterations
 LITER(P1)=200 ;LITER(V1)=10
 LITER(W1)=10 ;LITER(KE)=20
 LITER(EP)=20
 ENDIT(P1)=1.0E-03 ;ENDIT(V1)=1.0E-03
 ENDIT(W1)=1.0E-03 ;ENDIT(KE)=1.0E-03
 ENDIT(EP)=1.0E-03
 ************************************************************
  Group 17. Relaxation
 RELAX(P1,LINRLX,0.5)
 RELAX(V1,LINRLX,0.5)
 RELAX(W1,LINRLX,0.5)
 RELAX(KE,LINRLX,0.5)
 RELAX(EP,LINRLX,0.5)
 RELAX(YPLS,LINRLX,1.)
 RELAX(STRS,LINRLX,1.)
 RELAX(DEN1,LINRLX,0.5)
 RELAX(EPKE,LINRLX,1.)
 RELAX(DWDY,LINRLX,1.)
 KELIN = 3
 OVRRLX =0.
 EXPERT = F ;NNORSL = F
 ************************************************************
  Group 18. Limits
 VARMAX(P1)=1.0E+10 ;VARMIN(P1)=-1.0E+10
 VARMAX(V1)=1.0E+06 ;VARMIN(V1)=-1.0E+06
 VARMAX(W1)=1.0E+06 ;VARMIN(W1)=-1.0E+06
 VARMAX(KE)=1.0E+10 ;VARMIN(KE)=1.0E-10
 VARMAX(EP)=1.0E+10 ;VARMIN(EP)=1.0E-10
 VARMAX(YPLS)=1.0E+10 ;VARMIN(YPLS)=-1.0E+10
 VARMAX(STRS)=1.0E+10 ;VARMIN(STRS)=-1.0E+10
 VARMAX(DEN1)=1.0E+10 ;VARMIN(DEN1)=1.0E-06
 VARMAX(EPKE)=1.0E+10 ;VARMIN(EPKE)=1.0E-10
 VARMAX(DWDY)=1.0E+10 ;VARMIN(DWDY)=-1.0E+10
 ************************************************************
  Group 19. Data transmitted to GROUND
 DWDY = T
 GENK = T
 PARSOL = F
 CONWIZ = T
 GEN1 = 681
 ISG62 = 0
 SPEDAT(SET,GXMONI,PLOTALL,L,T)
 SPEDAT(SET,OBJNAM,^OB1,C,INLE1)
 SPEDAT(SET,OBJTYP,^OB1,C,INLET)
 SPEDAT(SET,OBJNAM,^OB2,C,OUTL2)
 SPEDAT(SET,OBJTYP,^OB2,C,OUTLET)
 SPEDAT(SET,ARATIO,^OB2,R,1.)
 SPEDAT(SET,OBJNAM,^OB3,C,PLAT3)
 SPEDAT(SET,OBJTYP,^OB3,C,PLATE)
 SPEDAT(SET,OBJNAM,!OB4,C,NULL4)
 SPEDAT(SET,OBJTYP,!OB4,C,NULL)
 SPEDAT(SET,FACETDAT,NUMOBJ,I,4)
 ************************************************************
  Group 20. Preliminary Printout
 ************************************************************
  Group 21. Print-out of Variables
 INIFLD = F ;SUBWGR = F
    * Y in OUTPUT argument list denotes:
    * 1-field 2-correction-eq. monitor 3-selective dumping      
    * 4-whole-field residual 5-spot-value table 6-residual table
 OUTPUT(P1,N,N,Y,Y,Y,Y)
 OUTPUT(V1,N,N,Y,Y,Y,Y)
 OUTPUT(W1,N,N,Y,Y,Y,Y)
 OUTPUT(KE,N,N,Y,Y,Y,Y)
 OUTPUT(EP,N,N,Y,Y,Y,Y)
 OUTPUT(YPLS,N,N,Y,N,N,N)
 OUTPUT(STRS,N,N,Y,N,N,N)
 OUTPUT(DEN1,N,N,Y,N,N,N)
 OUTPUT(EPKE,N,N,Y,N,N,N)
 OUTPUT(DWDY,N,N,Y,N,N,N)
 WALPRN = T
 ************************************************************
  Group 22. Monitor Print-Out
 IXMON = 1 ;IYMON = 31 ;IZMON = 168
 NPRMON = 100000 ;NPRMNT = 1 ;TSTSWP = 10001
 UWATCH = F ;USTEER = F
 HIGHLO = F
 ************************************************************
  Group 23.Field Print-Out & Plot Control
 NPRINT = 10000 ;NUMCLS = 5
 NYPRIN = 6 ;IYPRF = 1 ;IYPRL = 31
 NZPRIN = 40 ;IZPRF = 1 ;IZPRL = 10000
 XZPR = F ;YZPR = T
 IPLTF = 1 ;IPLTL = 10000 ;NPLT = 500
 ISWPRF = 1 ;ISWPRL = 100000
 ITABL = 3 ;IPROF = 1
 ABSIZ =0.5 ;ORSIZ =0.4
 NTZPRF = 1 ;NCOLPF = 50
 ICHR = 2 ;NCOLCO = 45 ;NROWCO = 20
   No PATCHes yet used for this Group
 ************************************************************
  Group 24. Dumps For Restarts
 SAVE = T ;NOWIPE = F
 NSAVE =CHAM
 
 *** grid-geometry information ***
 X-coordinates of the cell centres
    5.000E-01
 Y-coordinates of the cell centres
    7.917E-04   1.029E-02   1.979E-02   2.929E-02   3.879E-02
    4.875E-02
 Z-coordinates of the cell centres
    1.500E-02   1.215E+00   2.415E+00   3.615E+00   4.815E+00

 
 X-coordinates of the (higher) cell faces
    1.000E+00
 Y-coordinates of the (higher) cell faces
    1.583E-03   1.108E-02   2.058E-02   3.008E-02   3.958E-02
    5.000E-02
 Z-coordinates of the (higher) cell faces
    3.000E-02   1.230E+00   2.430E+00   3.630E+00   4.830E+00

 
 Total number of F-array elements used is                    293376
 --- INTEGRATION OF EQUATIONS BEGINS ---
 
 ************************************************************
 Run ending on sweep  1462 with all residuals below RESFAC ( 1.000000E-05)
 ************************************************************
 *** End of sweep 1463
 ************************************************************
 
 ************************************************************
 Whole-field residuals before solution at sweep 1463
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     1.910E+00   1.176E-10      2.247E-10
     V1     1.969E+00   4.416E-07      8.694E-07
     W1     1.969E+00   9.803E-06      1.930E-05
     KE     1.302E-01   8.033E-07      1.046E-07
     EP     1.269E+00   2.337E-07      2.967E-07
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     5.707E-05   3.305E+02      5.483E-01 (    1,   31,  177)
     V1     1.346E-08   1.519E-03     -2.739E-03 (    1,   14,  184)
     W1     7.481E-07   9.292E-01      5.163E-01 (    1,    1,  195)
     KE     1.279E-08   7.502E-03      1.000E-10 (    1,   16,  200)
     EP     2.557E-08   2.083E-01      1.000E-10 (    1,   20,  200)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of V1   at patch named: OB2      (OUTL2       ) =-5.192153E-04
 pos. sum=0. neg. sum=-5.192153E-04
 nett sum=-5.192153E-04
 
 Nett source of W1   at patch named: OB1      (INLE1       ) = 7.018679E-01
 Nett source of W1   at patch named: OB2      (OUTL2       ) =-7.140651E-01
 Nett source of W1   at patch named: OB3      (PLAT3       ) =-3.988304E-01
 pos. sum=0.701868 neg. sum=-1.112895
 nett sum=-0.411028
 
 Nett source of R1   at patch named: OB1      (INLE1       ) = 9.358238E-01
 Nett source of R1   at patch named: OB2      (OUTL2       ) =-9.358238E-01 (Mass Out -9.358238E-01 In 0.000000E+00)
 pos. sum=0.935824 neg. sum=-0.935824
 nett sum=2.553513E-15
 
 Nett source of KE   at patch named: OB1      (INLE1       ) = 5.264009E-17 (Average  5.625000E-17)
 Nett source of KE   at patch named: OB2      (OUTL2       ) =-2.801950E-03 (Ave Out  2.994095E-03 In  0.000000E+00)
 Nett source of KE   at patch named: OB3      (PLAT3       ) = 1.533327E-14
 Nett source of KE   at patch named: KESOURCE                =-6.284380E-02
 Non-linearised source for KE    at: KESOURCE                = 6.389893E-02
 pos. sum=0.063899 neg. sum=-0.065646
 nett sum=-1.746829E-03
 
 Nett source of EP   at patch named: OB1      (INLE1       ) = 1.297485E-23 (Average  1.386463E-23)
 Nett source of EP   at patch named: OB2      (OUTL2       ) =-1.434657E-02 (Ave Out  1.533042E-02 In  0.000000E+00)
 Nett source of EP   at patch named: OB3      (PLAT3       ) = 4.952061E-13
 Nett source of EP   at patch named: KESOURCE                =-6.999838E-01
 Non-linearised source for EP    at: KESOURCE                = 5.399275E-01
 pos. sum=0.539927 neg. sum=-0.71433
 nett sum=-0.174403
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep  1463
    Variable      Inflow        Outflow       Nett
       P1       9.358238E-01 -9.358238E-01  2.553513E-15
       V1       0.000000E+00 -5.192153E-04 -5.192153E-04
       W1       7.018679E-01 -1.112895E+00 -4.110276E-01
       KE       6.389893E-02 -6.564575E-02 -1.746829E-03
       EP       5.399275E-01 -7.143304E-01 -1.744029E-01
 ************************************************************
 
 
 ************************************************************
 spot values vs sweep or iteration number
 IXMON= 1 IYMON= 31 IZMON= 168 TIMESTEP= 1
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1           KE           EP  
      1   0.0000E+00   0.0000E+00   1.0000E-10   1.0000E-10   1.0000E-10
    501   5.1139E+01   0.0000E+00   5.3156E-01   4.4435E-03   9.4957E-02
   1001   5.1661E+01   0.0000E+00   5.3153E-01   4.4433E-03   9.4951E-02
   Variable    1 = P1     2 = V1     3 = W1     4 = KE     5 = EP  
     Minval=  0.000E+00  0.000E+00  1.000E-10  1.000E-10  1.000E-10
     Maxval=  5.166E+01  0.000E+00  5.316E-01  4.443E-03  9.496E-02
     Cellav=  3.427E+01  0.000E+00  3.544E-01  2.962E-03  6.330E-02
 1.00 +....+....+....+....+....5....+....+....+....+....5
      .                                                 .
 0.90 +                                                 +
      .                                                 .
 0.80 +                                                 +
      .                                                 .
 0.70 +                                                 +
      .                                                 .
 0.60 +                                                 +
      .                                                 .
 0.50 +                                                 +
      .                                                 .
 0.40 +                                                 +
      .                                                 .
 0.30 +                                                 +
      .                                                 .
 0.20 +                                                 +
      .                                                 .
 0.10 +                                                 +
      .                                                 .
 0.00 5....+....+....+....+....2....+....+....+....+....2
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 1.00E+03
 
 ************************************************************
 
 ************************************************************
 residuals vs sweep or iteration number
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           V1           W1           KE           EP  
      1   1.1000E+00   8.7269E-11   3.8952E-01   6.9134E-10   1.2561E-09
    501   8.4762E-09   5.9156E-05   3.9081E-03   7.5496E-04   1.8867E-04
   1001   5.7020E-10   7.4290E-06   1.6838E-04   2.8247E-05   6.2963E-06
   Variable    1 = P1     2 = V1     3 = W1     4 = KE     5 = EP  
     Minval= -2.129E+01 -2.316E+01 -8.689E+00 -2.109E+01 -2.050E+01
     Maxval=  9.531E-02 -9.735E+00 -9.428E-01 -7.189E+00 -8.576E+00
 1.00 3....+....+....+....+....5....+....+....+....+....+
      .                                                 .
 0.90 +                                                 +
      .                                                 2
 0.80 +                                                 +
      .                                                 4
 0.70 +                                                 5
      .                                                 .
 0.60 +                                                 +
      .                                                 .
 0.50 +                                                 +
      .                                                 .
 0.40 +                        3                        +
      .                                                 .
 0.30 +                                                 +
      .                                                 .
 0.20 +                                                 +
      .                        1                        .
 0.10 +                                                 +
      .                                                 .
 0.00 5....+....+....+....+....+....+....+....+....+....3
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 1.00E+03
 
 ************************************************************
 
 ************************************************************
  Patch-wise Printout from GXYPLS
Variable= Sk.Fr.Co, at patch named: OB3      and  IX=     1
 IY=    31  4.331E-03  4.757E-03  4.742E-03  4.718E-03  4.717E-03
 IZ=          1         41         81        121        161
 
 ************************************************************
 
 
 ************************************************************
 SATLIT RUN NUMBER =   1 ; LIBRARY REF.=    0
 Run started at 09:16:03 on Sunday, 22 December 2024                           
 Run completed at 09:17:28 on Sunday, 22 December 2024                         
 CPU time of run 88 s
 This includes 88 seconds of user time and 0 seconds of system time.
 TIME/(VARIABLES*CELLS*TSTEPS*SWEEPS*ITS) = 1.940E-06
 ************************************************************
