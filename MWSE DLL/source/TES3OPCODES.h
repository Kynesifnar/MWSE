//Tes3Opcodes.h
#pragma once

/*
 ORIG_DEREF					=	0x010C // '->' object reference
,ORIG_SHOW					=	0x010D
,ORIG_SHOWVARS				=	0x010E
,ORIG_TOGGLESTATS			=	0x010F
,ORIG_TOGGLECOMBATSTATS		=	0x0110
,ORIG_TOGGLELIGHTS			=	0x0111
,ORIG_TOGGLEGODMODE			=	0x0112
,ORIG_TOGGLEAI				=	0x0113
,ORIG_TOGGLEBORDERS			=	0x0114
,ORIG_TOGGLESKY				=	0x0115
,ORIG_TOGGLEWORLD			=	0x0116
,ORIG_TOGGLEWIREFRAME		=	0x0117
,ORIG_TOGGLECOLLISION		=	0x0118
,ORIG_TOGGLECOLLISIONBOXES	=	0x0119
,ORIG_TOGGLECOLLISIONGRID	=	0x011A
,ORIG_TOGGLEDEBUGTEXT		=	0x011B
,ORIG_TOGGLETEXTURESTRING	=	0x011C
,ORIG_TOGGLEGRID			=	0x011D
,ORIG_TOGGLEMENUS			=	0x011E
,ORIG_STOPCELLTEST			=	0x011F
,ORIG_TESTCELLS				=	0x0120
,ORIG_TESTINTERIORCELLS		=	0x0121
,ORIG_TESTMODELS			=	0x0122
,ORIG_SHOWSCENEGRAPH		=	0x0123
,ORIG_RETURN				=	0x0124
,ORIG_TOGGLESCRIPTOUTPUT	=	0x0125
,ORIG_MENUTEST				=	0x0126
,ORIG_MOVEONETOONE			=	0x0127
,ORIG_TOGGLEVANITYMODE		=	0x0128
,ORIG_TOGGLEWATER			=	0x0129
,ORIG_BETACOMMENT			=	0x012A //BetaComment, Comment
,ORIG_TOGGLEMAGICSTATS		=	0x012B
,ORIG_TOGGLEDIALOGUESTATS	=	0x012C
,ORIG_TOGGLEKILLSTATS		=	0x012D
,ORIG_PURGETEXTURES			=	0x012E
,ORIG_SHOWANIM				=	0x012F
,ORIG_TOGGLESCRIPTS			=	0x0130
,ORIG_FIXME					=	0x0131
,ORIG_TOGGLELOADFADE		=	0x0132
,ORIG_SHOWGROUPS			=	0x0133
,ORIG_SHOWTARGETS			=	0x0134
,ORIG_HELP					=	0x0135
,ORIG_TOGGLEPATHGRID		=	0x0136
,ORIG_TOGGLEFULLHELP		=	0x0137
,ORIG_TESTTHREADCELLS		=	0x0138
,ORIG_CREATEMAPS			=	0x0139
,ORIG_TOGGLEFOGOFWAR		=	0x013A
,ORIG_OUTPUTREFINFO			=	0x013B
,ORIG_RESETACTORS			=	0x013C
,ORIG_FILLJOURNAL			=	0x013D
,ORIG_FILLMAP				=	0x013E
,ORIG_ENABLEREST			=	0x013F
,ORIG_OUTPUTREFCOUNTS		=	0x0140
,ORIG_OUTPUTOBJCOUNTS		=	0x0141

,ORIG_MESSAGEBOX			=	0x1000
,ORIG_GETDISTANCE			=	0x1001
,ORIG_PLAYSOUND				=	0x1002
,ORIG_STREAMMUSIC			=	0x1003
,ORIG_POSITION				=	0x1004
,ORIG_POSITIONCELL			=	0x1005
,ORIG_MOVE					=	0x1006
,ORIG_ROTATE				=	0x1007
,ORIG_MOVEWORLD				=	0x1008
,ORIG_ROTATEWORLD			=	0x1009
,ORIG_GETPOS				=	0x100A
,ORIG_SETPOS				=	0x100B
,ORIG_GETANGLE				=	0x100C
,ORIG_SETANGLE				=	0x100D
,ORIG_GETSTARTINGPOS		=	0x100E
,ORIG_GETSTARTINGANGLE		=	0x100F
,ORIG_SETATSTART			=	0x1010
,ORIG_GETCURRENTTIME		=	0x1011
,ORIG_GETSECONDSPASSED		=	0x1012
,ORIG_CELLUPDATE			=	0x1013
,ORIG_PLAYGROUP				=	0x1014
,ORIG_LOOPGROUP				=	0x1015
,ORIG_SKIPANIM				=	0x1016
,ORIG_ACTIVATE				=	0x1017
,ORIG_ONACTIVATE			=	0x1018
,ORIG_STARTCOMBAT			=	0x1019
,ORIG_STOPCOMBAT			=	0x101A
,ORIG_STARTSCRIPT			=	0x101B
,ORIG_STOPSCRIPT			=	0x101C
,ORIG_SCRIPTRUNNING			=	0x101D
,ORIG_GETBUTTONPRESSED		=	0x101E
,ORIG_CELLCHANGED			=	0x101F
,ORIG_MENUMODE				=	0x1020
,ORIG_RANDOM				=	0x1021
,ORIG_ADDTOPIC				=	0x1022
,ORIG_GETSTR				=	0x1023
,ORIG_SETSTR				=	0x1024
,ORIG_MODSTR				=	0x1025
,ORIG_GETINT				=	0x1026
,ORIG_SETINT				=	0x1027
,ORIG_MODINT				=	0x1028
,ORIG_GETWIL				=	0x1029
,ORIG_SETWIL				=	0x102A
,ORIG_MODWIL				=	0x102B
,ORIG_GETAGI				=	0x102C
,ORIG_SETAGI				=	0x102D
,ORIG_MODAGI				=	0x102E
,ORIG_GETSPE				=	0x102F
,ORIG_SETSPE				=	0x1030
,ORIG_MODSPE				=	0x1031
,ORIG_GETEND				=	0x1032
,ORIG_SETEND				=	0x1033
,ORIG_MODEND				=	0x1034
,ORIG_GETPER				=	0x1035
,ORIG_SETPER				=	0x1036
,ORIG_MODPER				=	0x1037
,ORIG_GETLUC				=	0x1038
,ORIG_SETLUC				=	0x1039
,ORIG_MODLUC				=	0x103A
,ORIG_GETBLOCK				=	0x103B
,ORIG_SETBLOCK				=	0x103C
,ORIG_MODBLOCK				=	0x103D
,ORIG_GETARMORER			=	0x103E
,ORIG_SETARMORER			=	0x103F
,ORIG_MODARMORER			=	0x1040
,ORIG_GETMEDIUMARMOR		=	0x1041
,ORIG_SETMEDIUMARMOR		=	0x1042
,ORIG_MODMEDIUMARMOR		=	0x1043
,ORIG_GETHEAVYARMOR			=	0x1044
,ORIG_SETHEAVYARMOR			=	0x1045
,ORIG_MODHEAVYARMOR			=	0x1046
,ORIG_SETBLUNTWEAPON		=	0x1047
,ORIG_GETBLUNTWEAPON		=	0x1048
,ORIG_MODBLUNTWEAPON		=	0x1049
,ORIG_GETLONGBLADE			=	0x104A
,ORIG_SETLONGBLADE			=	0x104B
,ORIG_MODLONGBLADE			=	0x104C
,ORIG_GETAXE				=	0x104D
,ORIG_SETAXE				=	0x104E
,ORIG_MODAXE				=	0x104F
,ORIG_GETSPEAR				=	0x1050
,ORIG_SETSPEAR				=	0x1051
,ORIG_MODSPEAR				=	0x1052
,ORIG_GETATHLETICS			=	0x1053
,ORIG_SETATHLETICS			=	0x1054
,ORIG_MODATHLETICS			=	0x1055
,ORIG_GETENCHANT			=	0x1056
,ORIG_SETENCHANT			=	0x1057
,ORIG_MODENCHANT			=	0x1058
,ORIG_GETDESTRUCTION		=	0x1059
,ORIG_SETDESTRUCTION		=	0x105A
,ORIG_MODDESTRUCTION		=	0x105B
,ORIG_GETALTERATION			=	0x105C
,ORIG_SETALTERATION			=	0x105D
,ORIG_MODALTERATION			=	0x105E
,ORIG_GETILLUSION			=	0x105F
,ORIG_SETILLUSION			=	0x1060
,ORIG_MODILLUSION			=	0x1061
,ORIG_GETCONJURATION		=	0x1062
,ORIG_SETCONJURATION		=	0x1063
,ORIG_MODCONJURATION		=	0x1064
,ORIG_GETMYSTICISM			=	0x1065
,ORIG_SETMYSTICISM			=	0x1066
,ORIG_MODMYSTICISM			=	0x1067
,ORIG_GETRESTORATION		=	0x1068
,ORIG_SETRESTORATION		=	0x1069
,ORIG_MODRESTORATION		=	0x106A
,ORIG_GETALCHEMY			=	0x106B
,ORIG_SETALCHEMY			=	0x106C
,ORIG_MODALCHEMY			=	0x106D
,ORIG_GETUNARMORED			=	0x106E
,ORIG_SETUNARMORED			=	0x106F
,ORIG_MODUNARMORED			=	0x1070
,ORIG_GETSECURITY			=	0x1071
,ORIG_SETSECURITY			=	0x1072
,ORIG_MODSECURITY			=	0x1073
,ORIG_GETSNEAK				=	0x1074
,ORIG_SETSNEAK				=	0x1075
,ORIG_MODSNEAK				=	0x1076
,ORIG_GETACROBATICS			=	0x1077
,ORIG_SETACROBATICS			=	0x1078
,ORIG_MODACROBATICS			=	0x1079
,ORIG_GETLIGHTARMOR			=	0x107A
,ORIG_SETLIGHTARMOR			=	0x107B
,ORIG_MODLIGHTARMOR			=	0x107C
,ORIG_GETSHORTBLADE			=	0x107D
,ORIG_SETSHORTBLADE			=	0x107E
,ORIG_MODSHORTBLADE			=	0x107F
,ORIG_GETMARKSMAN			=	0x1080
,ORIG_SETMARKSMAN			=	0x1081
,ORIG_MODMARKSMAN			=	0x1082
not finished
*/
	
typedef enum {
	 ORIG_DEREF= 0x010C // -> (object reference)
	,ORIG_MESSAGEBOX=	0x1000 // messagebox
	,ORIG_POSITION=	0x1004 // position
	,ORIG_POSITIONCELL= 0x1005 //positioncell
	,ORIG_STARTCOMBAT=	0x1019 //startcombat
	,ORIG_ADDITEM=	0x10D4 //additem
	,ORIG_REMOVEITEM=	0x10D5 //removeitem
	,ORIG_PLACEATPC=	0x10E6 //placeatpc
	,ORIG_AITRAVEL= 0x10F8 //aitravel
	,ORIG_HASEQUIPED=	0x1199 //hasequiped

	//Tp21 22-08-2006
	,ORIG_DROPITEM =	0x110d //drop
	,ORIG_EQUIPITEM =	0x110e //equip
	,ORIG_GETSPELLEFFECTS= 0x1121 //getspelleffects
	,ORIG_CAST = 0x1123 //cast
	
	//Fliggerty 27-12-06
	,ORIG_ADDSPELL = 0x111D //addspell
	,ORIG_REMOVESPELL = 0x111E //removespell

	,ORIG_EXPLODESPELL = 0x11AD

	,CALL=			0x3801
	,CALLSHORT=		0x3802
	,RETURN=		0x3803
	,RETURNP=		0x3804
	,RETURNVP=		0x3805
	
	,COPYREG=		0x3806
	,COPYFROMSTACK=	0x3807
	,COPYTOSTACK=	0x3808
	
	,JUMP=			0x3809
	,JUMPSHORT=		0x380a
	,JUMPZERO=		0x380b
	,JUMPSHORTZERO=	0x380c
	,JUMPNOTZERO=	0x380d
	,JUMPSHORTNOTZERO= 0x380e
	,JUMPPOSITIVE=	0x3816
	,JUMPSHORTPOSITIVE= 0x3817
	,JUMPNEGATIVE=	0x3818
	,JUMPSHORTNEGATIVE=	0x3819
	
	,POP=			0x380f
	,POPREG=		0x3810
	,PUSH=			0x3811
	,PUSHB=			0x3812
	,PUSHS=			0x3813
	,PUSHREG=		0x3814
	,DECLARELOCAL=	0x3815
	
	,ADD=			0x3820
	,SUB=			0x3821
	,MUL=			0x3822
	,DIV=			0x3823
	,MOD=			0x3824
	,ITOF=			0x3828
	,FTOI=			0x3829
	,FADD=			0x382a
	,FSUB=			0x382b
	,FMUL=			0x382c
	,FDIV=			0x382d
	
	,TAN=			0x3830
	,SIN=			0x3831
	,COS=			0x3832
	,ARCTAN=		0x3833
	,ARCSIN=		0x3834
	,ARCCOS=		0x3835
	,DEGRAD=		0x3836
	,RADDEG=		0x3837
	,SQRT=			0x3838
	,HYPOT=			0x3839
	,POW=           0x383A
	
	,GETLOCAL=		0x3C00
	,GETFOREIGN=	0x3C01
	,SETLOCAL=		0x3C02
	,SETFOREIGN=	0x3C03
	,AITRAVEL=		0x3C04
	,POSITION=		0x3C05
	
	,REFPCTARGET=	0x3C06
	,GETPCTARGET=	0x3C07
	,REFTYPE=		0x3C08
	
	,LOGMSG=		0x3C09
	
	,FILEREWIND=	0x3C10
	,FILEREADSHORT=	0x3C11
	,FILEREADLONG=	0x3C12
	,FILEREADFLOAT=	0x3C13
	,FILEREADSTRING=0x3C14
	,FILESEEK=		0x3C15
	
	,SETREF=		0x3C18
	,FIRSTNPC=		0x3C1A
	,NEXTREF=		0x3C1B
	,REFID=			0x3C1C
	,GETREF=		0x3C1D
	,FIRSTITEM=		0x3C1E
	,FIRSTSTATIC=	0x3C1F
	
	,GETCOMBAT=		0x3C20
	,STARTCOMBAT=	0x3C21
	,DISTANCE=		0x3C22
	
	,ADDITEM=		0x3C28
	,REMOVEITEM=	0x3C29
	,INVENTORY=		0x3C2A
	,NEXTSTACK=		0x3C2B
	,POSITIONCELL=	0x3C2C
	,PCCELLID=		0x3C2D
	,PLACE=			0x3C2E
	
	,STRCMP=		0x3C2F
	,HASEQUIPED=		0x3C30
	,FILEWRITESHORT=	0x3C31
	,FILEWRITELONG=		0x3C32
	,FILEWRITEFLOAT=	0x3C33
	,FILEWRITESTRING=	0x3C34
	
	// 2005-02-14  CDC
	// These opcodes all use printable characters. (0x3F is '?')
	,GETVALUE=	0x3F61	//a
	,GETOWNER=	0x3F62	//b
	,GETWEIGHT=	0x3F63	//c
	,GETENCUMB=	0x3F64	//d
	,GETCONDITION=	0x3F65	//e
	,GETMAXCOND=	0x3F66	//f
	,GETCHARGE=	0x3F67	//g
	,GETMAXCHARGE=	0x3F68	//h
	,GETQUALITY=	0x3F69	//i

	,GETNAME=	0x3F6E	//n
	,GETBASEID=	0x3F6F	//o

	,GETBASESTR=    0x3F31	//1
	,GETBASEINT=    0x3F32	//2
	,GETBASEWIL=    0x3F33	//3
	,GETBASEAGI=    0x3F34	//4
	,GETBASESPE=    0x3F35	//5
	,GETBASEEND=    0x3F36	//6
	,GETBASEPER=    0x3F37	//7
	,GETBASELUC=    0x3F38	//8

	,ISFEMALE=	0x3F21	//!
	,MYCELLID=	0x3F22	//"
	,GETBASEGOLD=	0x3F23	//#
	,GETGOLD=	0x3F24	//$
	,SETBASEGOLD=	0x3F25	//%
	,SETGOLD=	0x3F26	//&

	,ISTRADER=	0x3F3A	//:
	,ISTRAINER=	0x3F5E	//^
	,ISPROVIDER=	0x3F7C	//|
	,MESSAGEFIX=	0x3F7E	//~

	// 2005-07-12  CDC  Even more functions for version 0.9.2
	,KEYPRESSED=	0x3F00
	,TEXTINPUT=	0x3F01
	,TEXTINPUTALT=	0x3F02
	,CONTENTLIST=	0x3F03

	,GETSERVICE=	0x3F04
	,SETSERVICE=	0x3F05
	,MODSERVICE=	0x3F06

	,FILEREADTEXT=	0x3F08
	,FILEWRITETEXT=	0x3F09
	,STRINGLENGTH=	0x3F0A
	,STRINGBUILD=	0x3F0B
	,STRINGPARSE=	0x3F0C
	
	//Tp21 22-08-2006: Tp21's functions
	,DROPITEM=		0x3F0D
	,EQUIPITEM=		0x3F0E
	,SETNAME=		0x3F0F
	,GETSPELLEFFECTS=	0x3F10
	,SETOWNER=		0x3F11
	,CAST=			0x3F12

	//Fliggerty 12-27-06: Fliggerty's functions
	,ADDSPELL=		0x3FA0
	,REMOVESPELL=	0x3FA1

    // GRM 01-15-07: New "set value" functions
    ,SETVALUE = 0x3E61
    ,SETWEIGHT= 0x3E62
    ,SETQUALITY=0x3E63
    ,SETCONDITION=0x3E64
    ,SETMAXCONDITION=0x3E65
    ,SETCHARGE=0x3E66
    ,SETMAXCHARGE=0x3E67
    // String compare (using regular expression)
    ,STRINGMATCH=0x3E68
	
	// Skills
	,GETBASEACROBATICS  = 0x3901
	,GETBASEALCHEMY     = 0x3902
	,GETBASEALTERATION  = 0x3903
	,GETBASEARMORER     = 0x3904
	,GETBASEATHLETICS   = 0x3905
	,GETBASEAXE         = 0x3906
	,GETBASEBLOCK       = 0x3907
	,GETBASEBLUNTWEAPON = 0x3908
	,GETBASECONJURATION = 0x3909
	,GETBASEDESTRUCTION = 0x390A
	,GETBASEENCHANT     = 0x390B
	,GETBASEHANDTOHAND  = 0x390C
	,GETBASEHEAVYARMOR  = 0x390D
	,GETBASEILLUSION    = 0x390E
	,GETBASELIGHTARMOR  = 0x390F
	,GETBASELONGBLADE   = 0x3910
	,GETBASEMARKSMAN    = 0x3911
	,GETBASEMEDIUMARMOR = 0x3912
	,GETBASEMERCANTILE  = 0x3913
	,GETBASEMYSTICISM   = 0x3914
	,GETBASERESTORATION = 0x3915
	,GETBASESECURITY    = 0x3916
	,GETBASESHORTBLADE  = 0x3917
	,GETBASESNEAK       = 0x3918
	,GETBASESPEAR       = 0x3919
	,GETBASESPEECHCRAFT = 0x391A
	,GETBASEUNARMORED   = 0x391B
	
	,GETPROGRESSLEVEL   = 0x391C
	,GETLOCKLEVEL       = 0x391D
	,SETPROGRESSLEVEL   = 0x391E
	,GETTRAP            = 0x391F
	,SETTRAP            = 0x3920
	,EXPLODESPELL       = 0x3921
	,FLOATSTOLONG       = 0x3922
	,LONGTOFLOATS       = 0x3923
	,GETSPELLINFO       = 0x3924
	,GETSPELLEFFECTINFO = 0x3925
	,SPELLLIST          = 0x3926
	,GETSPELL           = 0x3927
	,GETENCHANT			= 0x3928
	,GETENCHANTINFO     = 0x3929
	,GETENCHANTEFFECTINFO = 0x392A
	,GETCLASS           = 0x392B
	,GETPROGRESSSKILL   = 0x392C
	,SETPROGRESSSKILL   = 0x392D
	,MODPROGRESSSKILL   = 0x392E
	,GETBASESKILL       = 0x392F
	,MODPROGRESSLEVEL   = 0x3930
	,CREATEARRAY        = 0x3931
	,GETARRAYVALUE      = 0x3932
	,SETARRAYVALUE      = 0x3933
	,GETOWNERINFO		= 0x3934
	,SHIFT				= 0x3935
	,BITAND				= 0x3936
	,BITOR				= 0x3937
	,BITXOR				= 0x3938
	,BITNOT				= 0x3939
	,AND				= 0x393A
	,OR					= 0x393B
	,XOR				= 0x393C
	,NOT				= 0x393D
	,GETGLOBAL			= 0x393E
	,SETGLOBAL			= 0x393F
	,GETMAGIC			= 0x3940
	,SETSPELLINFO		= 0x3941
	,SETEFFECTINFO		= 0x3942
	,GETEFFECTINFO		= 0x3943
	,SETENCHANTINFO		= 0x3944

	,GETGS              = 0x3A00
	,SETGS				= 0x3A01
	} OPCODES;
