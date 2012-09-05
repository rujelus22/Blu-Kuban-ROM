.class public Lcom/android/contacts/SpecialCharSequenceMgr;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;,
        Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    }
.end annotation


# static fields
.field static IskeystringEnaled:Z

.field private static KeystringBlockList:[Ljava/lang/String;

.field private static PersoKeystring:[Ljava/lang/String;

.field private static SellOutSMS:[Ljava/lang/String;

.field private static blockKeystringCDMA:[Ljava/lang/String;

.field private static blockedKeystring:[Ljava/lang/String;

.field private static intentNameCDMA:[Ljava/lang/String;

.field private static intentNameProxLTE:[Ljava/lang/String;

.field private static keystring:[Ljava/lang/String;

.field private static keystringCDMA:[Ljava/lang/String;

.field private static keystringProxLTE:[Ljava/lang/String;

.field private static final keystringsDSA:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    sput-boolean v3, Lcom/android/contacts/SpecialCharSequenceMgr;->IskeystringEnaled:Z

    .line 101
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*#46744674#"

    aput-object v1, v0, v3

    const-string v1, "*#1111#"

    aput-object v1, v0, v4

    const-string v1, "*#2222#"

    aput-object v1, v0, v5

    const-string v1, "*#1234#"

    aput-object v1, v0, v6

    const-string v1, "*#12580*369#"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->blockedKeystring:[Ljava/lang/String;

    .line 105
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*#9099#"

    aput-object v1, v0, v3

    const-string v1, "*#4238378#"

    aput-object v1, v0, v4

    const-string v1, "*#7594#"

    aput-object v1, v0, v5

    const-string v1, "*#272886#"

    aput-object v1, v0, v6

    const-string v1, "*#0002*28347#"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "*#0002*28346#"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "*#28346#"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->KeystringBlockList:[Ljava/lang/String;

    .line 126
    const/16 v0, 0x44

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*#4986*2650468#"

    aput-object v1, v0, v3

    const-string v1, "*#197328640#"

    aput-object v1, v0, v4

    const-string v1, "*#0011#"

    aput-object v1, v0, v5

    const-string v1, "*#3695147#"

    aput-object v1, v0, v6

    const-string v1, "*#6854123#"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "*#1546792#"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "*#0228#"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "*#32489#"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "*#2580#"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "*#232337#"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "*#232331#"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "*#232332#"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "*#2726564#"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "*#232338#"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "*#232339#"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "*#0842#"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "*#0782#"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "*#0673#"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "*#0*#"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "*#0599#"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "*#7284#"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "*#7298#"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "*#4238378#"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "*#0283#"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "*#1575#"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "*#2424#"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "*#745#"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "*#865625#"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "*#742690#"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "*#0002*28346#"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "*#9900#"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "*#44336#"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "*#7780#"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "*#0289#"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "*#2663#"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "*#6984125*#"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "*#2767*2878#"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "*#147852#"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "*#369852#"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "#*2886#"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "*#03#"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "*#0589#"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "*#367#"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "*#0588#"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "*#3264#"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "*#80#"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "*#273283*255*3282*#"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "*#273283*255*663282*#"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "*#3282*727336*#"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "*#7594#"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "*#34971539#"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "*#4636*1111#"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "*#526#"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "*#528#"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "*#02280#"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "*#46744674#"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "*#3282*2362#"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "*#9998*3288#"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "*2767*2878#"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "*#28346#"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "*#767*2878#"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "*#7412365#"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "*123456#"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "*#350#"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "*#250#"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "*#251#"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "*#86824#"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "*#4327#"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring:[Ljava/lang/String;

    .line 150
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "**33284"

    aput-object v1, v0, v3

    const-string v1, "**367738"

    aput-object v1, v0, v4

    const-string v1, "47*68#13580"

    aput-object v1, v0, v5

    const-string v1, "**87284"

    aput-object v1, v0, v6

    const-string v1, "**583"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "**7838"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "**673"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->keystringProxLTE:[Ljava/lang/String;

    .line 160
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DEBUG"

    aput-object v1, v0, v3

    const-string v1, "DNSSET"

    aput-object v1, v0, v4

    const-string v1, "TESTMODE"

    aput-object v1, v0, v5

    const-string v1, "PUTIL"

    aput-object v1, v0, v6

    const-string v1, "LTEMODE"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "STEALTHMODE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MRD"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->intentNameProxLTE:[Ljava/lang/String;

    .line 170
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*2767*73876766#"

    aput-object v1, v0, v3

    const-string v1, "*2767*738767633#"

    aput-object v1, v0, v4

    const-string v1, "*2767*7387678378#"

    aput-object v1, v0, v5

    const-string v1, "*2767*7387677763#"

    aput-object v1, v0, v6

    const-string v1, "*2767*4387264636#"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->SellOutSMS:[Ljava/lang/String;

    .line 175
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*#7465625#"

    aput-object v1, v0, v3

    const-string v1, "*7465625*638*#"

    aput-object v1, v0, v4

    const-string v1, "#7465625*638*#"

    aput-object v1, v0, v5

    const-string v1, "*7465625*782*#"

    aput-object v1, v0, v6

    const-string v1, "#7465625*782*#"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "*7465625*77*#"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "#7465625*77*#"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "*7465625*27*#"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "#7465625*27*#"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->PersoKeystring:[Ljava/lang/String;

    .line 181
    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "##33284#"

    aput-object v1, v0, v3

    const-string v1, "##3282#"

    aput-object v1, v0, v4

    const-string v1, "3215987123580"

    aput-object v1, v0, v5

    const-string v1, "##2539#"

    aput-object v1, v0, v6

    const-string v1, "##786#"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "*#0*#"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "*#0842#"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "*#0673#"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "*#0289#"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "*#232331#"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "*#2663#"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "*#2664#"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "*#0588#"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "*#7780#"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "*#767*3855#"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "*#0228#"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "*#2454#"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "*#7451#"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "*#7450#"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "##4772579#"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "##72786#"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "##66236#"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "##889#"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "##8778#"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "##3424#"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "*#34762#"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "##367738#"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "##777332840#"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "##777332841#"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "##424332840#"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "##424332841#"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "##25327#"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "##963##"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "##94629*72#"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "##94629*36#"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "##94629*28#"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "##94629*6633#"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "##94629*47#"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "##94629*234#"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "##94629*87#"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "##94629*738#"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "##83761#"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "##83762#"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "##83763#"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "##83764#"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "##83765#"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->keystringCDMA:[Ljava/lang/String;

    .line 236
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "##2539#"

    aput-object v1, v0, v3

    const-string v1, "##66236#"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->blockKeystringCDMA:[Ljava/lang/String;

    .line 241
    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DEBUG"

    aput-object v1, v0, v3

    const-string v1, "DATA"

    aput-object v1, v0, v4

    const-string v1, "TESTMODE"

    aput-object v1, v0, v5

    const-string v1, "AKEY"

    aput-object v1, v0, v6

    const-string v1, "RTN"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "0*"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "0842"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "0673"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "0289"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "232331"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "2663"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "2664"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "0588"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "7780"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "767*3855"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "0228"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "2454"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "7451"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "7450"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "GPSCLRX"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "SCRTN"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "OMADM"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TTY"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "UPST"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "DIAG"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "SOCRESET"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "DNSSET"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "SSPDEBUGOFF"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SSPDEBUGON"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "HCIDEBUGOFF"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "HCIDEBUGON"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CLEAR"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "WiMAX_NE"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "WiMAX_RC"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "WiMAX_DM"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "WiMAX_CT"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "WiMAX_MODE"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "WiMAX_IP"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "WiMAX_CFG"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "WiMAX_TP"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "WiMAX_SET"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "TERM1"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "TERM2"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "TERM3"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "TERM4"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "TERM5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->intentNameCDMA:[Ljava/lang/String;

    .line 1166
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "*2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->keystringsDSA:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 314
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 315
    return-void
.end method

.method static IsBlockedKeyString(Ljava/lang/String;)Z
    .registers 4
    .parameter "input"

    .prologue
    const/4 v1, 0x1

    .line 686
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    sget-object v2, Lcom/android/contacts/SpecialCharSequenceMgr;->blockedKeystring:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_19

    .line 687
    sget-object v2, Lcom/android/contacts/SpecialCharSequenceMgr;->blockedKeystring:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 688
    if-nez v0, :cond_15

    .line 689
    sput-boolean v1, Lcom/android/contacts/SpecialCharSequenceMgr;->IskeystringEnaled:Z

    .line 695
    :cond_15
    :goto_15
    return v1

    .line 686
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 695
    :cond_19
    const/4 v1, 0x0

    goto :goto_15
.end method

.method static IsKeyString(Ljava/lang/String;)Z
    .registers 3
    .parameter "input"

    .prologue
    .line 660
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 661
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 662
    const/4 v1, 0x1

    .line 665
    :goto_11
    return v1

    .line 660
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 665
    :cond_15
    const/4 v1, 0x0

    goto :goto_11
.end method

.method static IsKeyStringCDMA(Ljava/lang/String;)I
    .registers 5
    .parameter "input"

    .prologue
    .line 1085
    const/4 v1, -0x1

    .line 1087
    .local v1, key_index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    sget-object v2, Lcom/android/contacts/SpecialCharSequenceMgr;->keystringCDMA:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_12

    .line 1088
    sget-object v2, Lcom/android/contacts/SpecialCharSequenceMgr;->keystringCDMA:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1089
    move v1, v0

    .line 1094
    :cond_12
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2d

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2d

    .line 1095
    const/4 v0, 0x0

    :goto_1d
    sget-object v2, Lcom/android/contacts/SpecialCharSequenceMgr;->blockKeystringCDMA:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2d

    .line 1096
    sget-object v2, Lcom/android/contacts/SpecialCharSequenceMgr;->blockKeystringCDMA:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1097
    const/4 v1, -0x1

    .line 1103
    :cond_2d
    return v1

    .line 1087
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1095
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d
.end method

.method static IsKeystringBlockList(Ljava/lang/String;)Z
    .registers 4
    .parameter "input"

    .prologue
    .line 708
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->KeystringBlockList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_38

    .line 709
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->KeystringBlockList:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/SpecialCharSequenceMgr;->KeystringBlockList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*#*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 715
    :cond_33
    const/4 v1, 0x1

    .line 719
    :goto_34
    return v1

    .line 708
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 719
    :cond_38
    const/4 v1, 0x0

    goto :goto_34
.end method

.method static IsPersoKeyString(Ljava/lang/String;)Z
    .registers 3
    .parameter "input"

    .prologue
    .line 732
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->PersoKeystring:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 733
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->PersoKeystring:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 734
    const/4 v1, 0x1

    .line 737
    :goto_11
    return v1

    .line 732
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 737
    :cond_15
    const/4 v1, 0x0

    goto :goto_11
.end method

.method static IsSellOutKeyString(Ljava/lang/String;)Z
    .registers 3
    .parameter "input"

    .prologue
    .line 723
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->SellOutSMS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 724
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->SellOutSMS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 725
    const/4 v1, 0x1

    .line 728
    :goto_11
    return v1

    .line 723
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 728
    :cond_15
    const/4 v1, 0x0

    goto :goto_11
.end method

.method static handleCPRMKeyConfirm(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .parameter "context"
    .parameter "input"

    .prologue
    .line 915
    const/4 v0, 0x0

    return v0
.end method

.method public static handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .registers 4
    .parameter "context"
    .parameter "input"
    .parameter "textField"

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z
    .registers 7
    .parameter "context"
    .parameter "input"
    .parameter "useSystemWindow"
    .parameter "textField"

    .prologue
    const/4 v1, 0x0

    .line 329
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, dialString:Ljava/lang/String;
    invoke-static {p0, v0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-static {p0, v1, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleTestMode(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleCodeForAABUrlUpdate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-static {p0, v0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleCPRMKeyConfirm(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleMSLOTKSLCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleTestmodeSecretCodeCDMA(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleTestmodeSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 354
    :cond_3b
    const/4 v1, 0x1

    .line 357
    :cond_3c
    return v1
.end method

.method static handleCodeForAABUrlUpdate(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .parameter "context"
    .parameter "input"

    .prologue
    .line 363
    const-string v2, "SpecialCharSequenceMgr"

    const-string v3, "handleCodeForAABUrlUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 365
    .local v1, len:I
    const-string v2, "*#222875#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 366
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.aab.activity.CHANGEAABURLBROADCAST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 368
    const-string v2, "SpecialCharSequenceMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCodeForAABUrlUpdate - sendBroadcast:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v2, 0x1

    .line 372
    .end local v0           #intent:Landroid/content/Intent;
    :goto_36
    return v2

    :cond_37
    const/4 v2, 0x0

    goto :goto_36
.end method

.method public static handleDSACode(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 13
    .parameter "context"
    .parameter "input"

    .prologue
    .line 1169
    const/4 v7, 0x0

    .line 1171
    .local v7, phoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;
    const-string v8, "iphoneinfo"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v7

    .line 1172
    const/4 v2, 0x0

    .line 1174
    .local v2, dsaServerURL:Ljava/lang/String;
    if-eqz v7, :cond_95

    .line 1177
    :try_start_e
    invoke-interface {v7}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getDSA_SERVER_URL()Ljava/lang/String;

    move-result-object v2

    .line 1179
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->keystringsDSA:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_16
    if-ge v4, v5, :cond_95

    aget-object v6, v1, v4

    .line 1180
    .local v6, number:Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 1181
    const-string v8, "SpecialCharSequenceMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device Self Service will be launched, dsaURL =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?number=*2"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1184
    .local v0, ActIntent:Landroid/content/Intent;
    const-string v8, "com.sprint.dsa.DSA_ACTIVITY"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1185
    const-string v8, "vnd.sprint.dsa/vnd.sprint.dsa.main"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1186
    const-string v8, "com.sprint.dsa.url"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?number=*2"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1187
    const/high16 v8, 0x1000

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1188
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_6d} :catch_72

    .line 1190
    const/4 v8, 0x1

    .line 1198
    .end local v0           #ActIntent:Landroid/content/Intent;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #number:Ljava/lang/String;
    :goto_6e
    return v8

    .line 1179
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #number:Ljava/lang/String;
    :cond_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 1193
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #number:Ljava/lang/String;
    :catch_72
    move-exception v3

    .line 1194
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "SpecialCharSequenceMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is occured..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    .end local v3           #e:Ljava/lang/Exception;
    :cond_95
    const/4 v8, 0x0

    goto :goto_6e
.end method

.method static handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 6
    .parameter "context"
    .parameter "input"
    .parameter "useSystemWindow"

    .prologue
    const/4 v2, 0x1

    .line 891
    const-string v1, "*#06#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 892
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 895
    .local v0, phoneType:I
    if-ne v0, v2, :cond_1c

    .line 896
    invoke-static {p0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->showIMEIPanel(Landroid/content/Context;Z)V

    move v1, v2

    .line 904
    .end local v0           #phoneType:I
    :goto_1b
    return v1

    .line 898
    .restart local v0       #phoneType:I
    :cond_1c
    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 899
    invoke-static {p0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->showMEIDPanel(Landroid/content/Context;Z)V

    move v1, v2

    .line 900
    goto :goto_1b

    .line 904
    .end local v0           #phoneType:I
    :cond_24
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method static handleMSLOTKSLCode(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 12
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x2

    .line 1107
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1109
    .local v1, len:I
    const/16 v6, 0x9

    if-ne v1, v6, :cond_75

    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "##"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x23

    if-ne v6, v7, :cond_75

    .line 1110
    const-string v6, "ril.MSL"

    const-string v7, "222222"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1111
    .local v2, strMSL:Ljava/lang/String;
    const-string v6, "ril.OTKSL"

    const-string v7, "111111"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1112
    .local v3, strOTKSL:Ljava/lang/String;
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 1114
    const-string v5, "SpecialCharSequenceMgr"

    const-string v6, "MSL inputed!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    const-string v6, "android_secret_code://NAMBASIC"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1116
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1125
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #strMSL:Ljava/lang/String;
    .end local v3           #strOTKSL:Ljava/lang/String;
    :goto_52
    return v4

    .line 1118
    .restart local v2       #strMSL:Ljava/lang/String;
    .restart local v3       #strOTKSL:Ljava/lang/String;
    :cond_53
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 1119
    const-string v5, "SpecialCharSequenceMgr"

    const-string v6, "OTKSL inputed!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    const-string v6, "android_secret_code://OTKSL"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1121
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_52

    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #strMSL:Ljava/lang/String;
    .end local v3           #strOTKSL:Ljava/lang/String;
    :cond_75
    move v4, v5

    .line 1125
    goto :goto_52
.end method

.method static handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v1, 0x0

    .line 878
    const-string v2, "**04"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "**05"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_11
    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 880
    :try_start_19
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_26} :catch_28

    move-result v1

    .line 887
    :cond_27
    :goto_27
    return v1

    .line 882
    :catch_28
    move-exception v0

    .line 883
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SpecialCharSequenceMgr"

    const-string v3, "Failed to handlePinMmi due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method static handleTestMode(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 8
    .parameter "context"
    .parameter "keyPressValue"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 436
    if-nez p1, :cond_63

    .line 437
    const-string v3, "gsm.default.esn"

    const-string v4, "Unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, defaultEsn:Ljava/lang/String;
    const-string v3, "15"

    invoke-virtual {p2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "1-5"

    invoke-virtual {p2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3b

    :cond_1b
    const-string v3, "TRUE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 439
    const-string v3, "SpecialCharSequenceMgr"

    const-string v4, "handleTestMode short 15 !!! ==default ESN is true"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    const-string v4, "android_secret_code://$$15"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 443
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 455
    .end local v0           #defaultEsn:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_3a
    return v2

    .line 446
    .restart local v0       #defaultEsn:Ljava/lang/String;
    :cond_3b
    const-string v3, "*#07#"

    invoke-virtual {p2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_63

    const-string v3, "TRUE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 447
    const-string v3, "SpecialCharSequenceMgr"

    const-string v4, "handleTestMode short *#07# !!! ==default ESN is true"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    const-string v4, "android_secret_code://07"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 451
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3a

    .line 455
    .end local v0           #defaultEsn:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_63
    const/4 v2, 0x0

    goto :goto_3a
.end method

.method static handleTestmodeSecretCode(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 12
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v7, 0x7

    const/4 v9, 0x6

    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 482
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, IMEIstr:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 486
    .local v3, len:I
    const-string v4, "*#272*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    const-string v4, "#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 494
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, get:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 497
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    const-string v6, "android_secret_code://83052020100812173552301071192687#"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 499
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "SpecialCharSequenceMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " intent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v4, v5

    .line 656
    .end local v1           #get:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_5a
    return v4

    .line 526
    :cond_5b
    const-string v4, "##94629*9#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 527
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.samsungtest.wimaxtest.App"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "AppOn"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 529
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v4, v5

    .line 530
    goto :goto_5a

    .line 532
    .end local v2           #intent:Landroid/content/Intent;
    :cond_74
    if-le v3, v6, :cond_79

    .line 533
    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsBlockedKeyString(Ljava/lang/String;)Z

    .line 537
    :cond_79
    if-le v3, v6, :cond_fb

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeyString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_fb

    .line 538
    const-string v4, "SpecialCharSequenceMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Keystring: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_secret_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 544
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 545
    const-string v4, "SpecialCharSequenceMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Send Intent for Keystring: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v4, "SpecialCharSequenceMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent Data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 547
    goto/16 :goto_5a

    .line 550
    .end local v2           #intent:Landroid/content/Intent;
    :cond_fb
    if-le v3, v7, :cond_1ab

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1ab

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsPersoKeyString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1ab

    .line 551
    const-string v4, "SpecialCharSequenceMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "perso key entered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const-string v4, "*#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_153

    .line 554
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_perso_get_status_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 556
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_150
    move v4, v5

    .line 567
    goto/16 :goto_5a

    .line 557
    .end local v2           #intent:Landroid/content/Intent;
    :cond_153
    const-string v4, "*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_183

    .line 558
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_perso_lock_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 560
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_150

    .line 562
    .end local v2           #intent:Landroid/content/Intent;
    :cond_183
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_perso_unlock_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 564
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_150

    .line 568
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1ab
    if-le v3, v7, :cond_26f

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v5, :cond_26f

    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->isKeyStringBlocked()Z

    move-result v4

    if-nez v4, :cond_26f

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsPersoKeyString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26f

    .line 570
    const-string v4, "SpecialCharSequenceMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "perso key entered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string v4, "*#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_209

    .line 573
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_perso_get_status_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 575
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_206
    move v4, v5

    .line 588
    goto/16 :goto_5a

    .line 576
    .end local v2           #intent:Landroid/content/Intent;
    :cond_209
    const-string v4, "*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_240

    .line 577
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_perso_lock_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 579
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 580
    const-string v4, "SpecialCharSequenceMgr"

    const-string v6, "Intent sent!"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_206

    .line 582
    .end local v2           #intent:Landroid/content/Intent;
    :cond_240
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_perso_unlock_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 584
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 585
    const-string v4, "SpecialCharSequenceMgr"

    const-string v6, "Intent sent!"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_206

    .line 589
    .end local v2           #intent:Landroid/content/Intent;
    :cond_26f
    if-le v3, v7, :cond_329

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v5, :cond_329

    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->isKeyStringBlocked()Z

    move-result v4

    if-ne v4, v5, :cond_329

    sget-boolean v4, Lcom/android/contacts/SpecialCharSequenceMgr;->IskeystringEnaled:Z

    if-ne v4, v5, :cond_329

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsPersoKeyString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_329

    .line 591
    const-string v4, "SpecialCharSequenceMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "perso key entered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string v4, "*#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d1

    .line 594
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_perso_get_status_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 596
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_2ce
    move v4, v5

    .line 607
    goto/16 :goto_5a

    .line 597
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2d1
    const-string v4, "*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_301

    .line 598
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_perso_lock_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 600
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2ce

    .line 602
    .end local v2           #intent:Landroid/content/Intent;
    :cond_301
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_perso_unlock_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 604
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2ce

    .line 610
    .end local v2           #intent:Landroid/content/Intent;
    :cond_329
    if-le v3, v6, :cond_361

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v5, :cond_361

    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->isKeyStringBlocked()Z

    move-result v4

    if-nez v4, :cond_361

    .line 612
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_secret_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 614
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v4, v5

    .line 615
    goto/16 :goto_5a

    .line 618
    .end local v2           #intent:Landroid/content/Intent;
    :cond_361
    if-le v3, v6, :cond_39d

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v5, :cond_39d

    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->isKeyStringBlocked()Z

    move-result v4

    if-ne v4, v5, :cond_39d

    sget-boolean v4, Lcom/android/contacts/SpecialCharSequenceMgr;->IskeystringEnaled:Z

    if-ne v4, v5, :cond_39d

    .line 620
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_secret_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 622
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v4, v5

    .line 623
    goto/16 :goto_5a

    .line 636
    .end local v2           #intent:Landroid/content/Intent;
    :cond_39d
    const/16 v4, 0xc

    if-le v3, v4, :cond_3d7

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3d7

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsSellOutKeyString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d7

    .line 637
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_secret_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 639
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v4, v5

    .line 640
    goto/16 :goto_5a

    .line 641
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3d7
    const/16 v4, 0xc

    if-le v3, v4, :cond_417

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v5, :cond_417

    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->isKeyStringBlocked()Z

    move-result v4

    if-nez v4, :cond_417

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsSellOutKeyString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_417

    .line 643
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_secret_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 645
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v4, v5

    .line 646
    goto/16 :goto_5a

    .line 647
    .end local v2           #intent:Landroid/content/Intent;
    :cond_417
    const/16 v4, 0xc

    if-le v3, v4, :cond_45b

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v5, :cond_45b

    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->isKeyStringBlocked()Z

    move-result v4

    if-ne v4, v5, :cond_45b

    sget-boolean v4, Lcom/android/contacts/SpecialCharSequenceMgr;->IskeystringEnaled:Z

    if-ne v4, v5, :cond_45b

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsSellOutKeyString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45b

    .line 649
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_secret_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 651
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v4, v5

    .line 652
    goto/16 :goto_5a

    .line 656
    .end local v2           #intent:Landroid/content/Intent;
    :cond_45b
    const/4 v4, 0x0

    goto/16 :goto_5a
.end method

.method static handleTestmodeSecretCodeCDMA(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .parameter "context"
    .parameter "input"

    .prologue
    .line 1129
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1130
    .local v2, len:I
    const/4 v1, -0x1

    .line 1132
    .local v1, keyStringIndex:I
    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeyStringCDMA(Ljava/lang/String;)I

    move-result v1

    .line 1133
    const/4 v3, 0x3

    if-le v2, v3, :cond_60

    const/4 v3, -0x1

    if-le v1, v3, :cond_60

    .line 1134
    const-string v3, "SpecialCharSequenceMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>>>>>> IsKeyString TRUE!!!!!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/contacts/SpecialCharSequenceMgr;->keystringCDMA:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/contacts/SpecialCharSequenceMgr;->intentNameCDMA:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android_secret_code://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/contacts/SpecialCharSequenceMgr;->intentNameCDMA:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1136
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1137
    const/4 v3, 0x1

    .line 1140
    .end local v0           #intent:Landroid/content/Intent;
    :goto_5f
    return v3

    :cond_60
    const/4 v3, 0x0

    goto :goto_5f
.end method

.method static isKeyStringBlocked()Z
    .registers 5

    .prologue
    .line 669
    const/4 v1, 0x0

    .line 671
    .local v1, imeiBlocked:Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/factory/imei/keystr"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_38

    move-result-object v1

    .line 675
    :goto_f
    const-string v2, "SpecialCharSequenceMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keystr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 677
    const-string v2, "SpecialCharSequenceMgr"

    const-string v3, "block is on"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v2, 0x1

    .line 681
    :goto_37
    return v2

    .line 672
    :catch_38
    move-exception v0

    .line 673
    .local v0, e1:Ljava/io/IOException;
    const-string v1, "OFF"

    goto :goto_f

    .line 680
    .end local v0           #e1:Ljava/io/IOException;
    :cond_3c
    const-string v2, "SpecialCharSequenceMgr"

    const-string v3, "block is off"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/4 v2, 0x0

    goto :goto_37
.end method

.method static showIMEIPanel(Landroid/content/Context;Z)V
    .registers 7
    .parameter "context"
    .parameter "useSystemWindow"

    .prologue
    .line 940
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 943
    .local v1, imeiStr:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a007c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 949
    .local v0, alert:Landroid/app/AlertDialog;
    return-void
.end method

.method static showMEIDPanel(Landroid/content/Context;Z)V
    .registers 7
    .parameter "context"
    .parameter "useSystemWindow"

    .prologue
    .line 952
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 955
    .local v1, meidStr:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a007d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 961
    .local v0, alert:Landroid/app/AlertDialog;
    return-void
.end method
