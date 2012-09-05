.class public Lcom/vlingo/client/core/deviceinfo/Carriers;
.super Ljava/lang/Object;
.source "Carriers.java"


# static fields
.field protected static ISO3_CARRIER_MAP_SRC:[Ljava/lang/String;

.field protected static UNKNOWN_CARRIERS:[Ljava/lang/String;

.field protected static instance:Lcom/vlingo/client/core/deviceinfo/Carriers;


# instance fields
.field public carrierMapTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/vlingo/client/core/deviceinfo/Carrier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    const/16 v0, 0x260

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ABW"

    aput-object v1, v0, v3

    const-string v1, "SETAR_GSM"

    aput-object v1, v0, v4

    const-string v1, "ABW"

    aput-object v1, v0, v5

    const-string v1, "Unknown"

    aput-object v1, v0, v6

    const-string v1, "AFG"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "TDCA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AIA"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Cable_&_Wireless_WI"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ANT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ARE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ETISALAT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ARG"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "AR_-_Movistar"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ARG"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "AR_PERSONAL"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ARG"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "CTI_Argentina"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ARG"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "CTI_Movil_ARG"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ARG"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "ATG"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Cable_&_Wireless"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "AUS"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "3TELSTRA"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "AUS"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Telstra_Mobile"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "AUS"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Telstra_Mobile"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "AUS"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "vodafone_AU"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "AUS"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "YES_OPTUS"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "AUT"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "A1"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "AUT"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "one"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "AUT"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "T-Mobile_A"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "BEL"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "BASE"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "BEL"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "BEL_PROXIMUS"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "BEL"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Mobistar"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "BGD"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Banglalink"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "BGD"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "GrameenPhone"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "BGR"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "M-Tel_BG"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "BHR"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "BATELCO"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "BHR"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "zain_BH"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "BHS"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "The_Bahamas_Telecomm"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "BMU"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "BTC_MOBILITY_LTD."

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "BOL"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "BOMOV"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "BOL"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Telecel_Bolivia_GSM"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "BRA"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "CLARO"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "BRA"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "TIM_BRASIL"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "BRA"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "VIVO"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "BRB"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "C&W"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "CAN"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Bell_Mobility"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "CAN"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Rogers_Wireless"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "CAN"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "TELUS"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "CAN"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Virgin_Mobile_Canada"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "CHE"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Orange"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "CHE"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "orange_CH"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "CHE"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "sunrise"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "CHE"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Swisscom"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "CHE"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "CHL"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Claro"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "CHL"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "ENTEL_PCS"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "CHL"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "movistar"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "CHN"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "????"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "CHN"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "CHINA__MOBILE"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "COD"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "CelTel_Congo_SA"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "COL"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "COL_Movistar"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "COL"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Comcel_3GSM"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "CYM"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "C&W"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "CYP"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "areeba"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "CZE"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "O2_-_CZ"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "CZE"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "T-Mobile_CZ"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "DEU"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "E-Plus"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "DEU"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "o2_-_de"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "DEU"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "T-Mobile_D"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "DEU"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Vodafone.de"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "DMA"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "C&W"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "DNK"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "DK_SONOFON"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "DNK"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "TDC_MOBIL"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "DNK"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "TELIA_DK"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "DOM"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "CLARO_DOM"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "DZA"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Djezzy"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "ESP"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Orange"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "ESP"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "vodafone_ES"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "ECU"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "movistar"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "ECU"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "PORTA_GSM"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "EGY"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "EGY_MobiNiL"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "EGY"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "etisalat"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "EGY"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "vodafone"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "ESP"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "movistar"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "ESP"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "Orange"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "ESP"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "vodafone_ES"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "FIN"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "dna"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "FIN"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "FI_elisa"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "FJI"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "FJ_VODAFONE"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "FRA"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "F_-_BOUYGUES_TELECOM"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "FRA"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "F_SFR"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "FRA"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "F-Bouygues_Telecom"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "FRA"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "Orange_F"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "FRA"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "GBR"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "C&W"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "GBR"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "Manx_Pronto"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "GBR"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "Manx_Telecom_Mobile"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "GBR"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "O2_-_UK"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "GBR"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "Orange"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "GBR"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "T-Mobile_UK"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "GBR"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "vodafone_UK"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "GEO"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "MAGTI-GSM-GEO"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "GHA"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "GH_MTN"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "GHA"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "GH_SPACEFON"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "GRC"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "GR_COSMOTE"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "GRC"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "vodafone_GR"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "GRC"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "WIND_GR"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "GRD"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "C&W"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "GTM"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "Comcel_GSM"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "GTM"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "movistar"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "GUY"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "GUY_TW"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "HKG"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "3-DUALBAND-"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "HKG"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "CMCC_PEOPLES"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "HKG"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "CSL"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "HKG"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "PEOPLES"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "HKG"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "SmarToneVodafone"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "HND"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "CELTELHND"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "HRV"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "HR_VIP"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "HRV"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "T-Mobile_HR"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "HUN"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "TMO_H"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "IDN"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "IND_TELKOMSEL"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "IDN"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "IND_XL"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "IDN"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "MATRIX"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "IND"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "AirTel"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "IND"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "BPL_MOBILE"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "IND"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "BSSL"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "IND"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "ESSAR"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "IND"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "Hutch"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "IND"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "IND_AIRTEL"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "IND"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "Reliance"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "IND"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "IND"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "Vodafone_IN"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "IRL"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "02_-_IRL"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "IRL"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "O2_IRL"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "IRL"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "vodafone_IE"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "IRQ"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "IRAQNA"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "ISR"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "Cellcom"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "ISR"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "Cellcom"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "ISR"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "IL_ORANGE"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "ITA"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "I_TIM"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "ITA"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "vodafone_IT"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "ITA"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "Wind_Telecom_SpA"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "JAM"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "C&W"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "JAM"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "DIGICEL"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "JOR"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "Fastlink"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "JOR"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "UMNIAH"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "KEN"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "KENCELL"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "KEN"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "Safaricom"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "KNA"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "C&W"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "KNA"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "KOR"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "KR_KTF"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "KOR"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "SK_Telecom"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "KOR"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v2, "SK_Telecom"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string v2, "KWT"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v2, "KT_MTCNet"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string v2, "KWT"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "MTC_KW"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "LBN"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string v2, "RL_MTC_Lebanon"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string v2, "LCA"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v2, "Cable_&_Wireless"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string v2, "LUX"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string v2, "L_LUXGSM"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string v2, "LUX"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string v2, "L_TANGO"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string v2, "MAC"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string v2, "CTM"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const-string v2, "MAC"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string v2, "SmarTone_Macau"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string v2, "MAR"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string v2, "MOR_MEDITEL"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string v2, "MDA"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string v2, "VOXTEL"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const-string v2, "MDG"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string v2, "TELMA"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const-string v2, "MEX"

    aput-object v2, v0, v1

    const/16 v1, 0x137

    const-string v2, "IUSACELL"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string v2, "MEX"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string v2, "movistar"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string v2, "MEX"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string v2, "Mx_Telcel_GSM"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string v2, "MEX"

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const-string v2, "TELCEL_GSM"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string v2, "MNE"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string v2, "YUG_03"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string v2, "MYS"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string v2, "MY_CELCOM"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string v2, "MYS"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string v2, "DiGi"

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const-string v2, "MYS"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string v2, "MY_CELCOM"

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const-string v2, "MYS"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string v2, "My_Maxis"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const-string v2, "MYS"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string v2, "My_Maxis"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string v2, "NGA"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string v2, "CELTEL_NIG"

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    const-string v2, "NGA"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string v2, "ECONET"

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    const-string v2, "NGA"

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    const-string v2, "Glo_Mobile"

    aput-object v2, v0, v1

    const/16 v1, 0x150

    const-string v2, "NGA"

    aput-object v2, v0, v1

    const/16 v1, 0x151

    const-string v2, "MTN_Nigeria"

    aput-object v2, v0, v1

    const/16 v1, 0x152

    const-string v2, "NIC"

    aput-object v2, v0, v1

    const/16 v1, 0x153

    const-string v2, "Claro_NIC"

    aput-object v2, v0, v1

    const/16 v1, 0x154

    const-string v2, "NIC"

    aput-object v2, v0, v1

    const/16 v1, 0x155

    const-string v2, "movistar"

    aput-object v2, v0, v1

    const/16 v1, 0x156

    const-string v2, "NLD"

    aput-object v2, v0, v1

    const/16 v1, 0x157

    const-string v2, "NL_KPN"

    aput-object v2, v0, v1

    const/16 v1, 0x158

    const-string v2, "NLD"

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const-string v2, "T-Mobile_NL"

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    const-string v2, "NLD"

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    const-string v2, "vodafone_NL"

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    const-string v2, "NOR"

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const-string v2, "NetCom"

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    const-string v2, "NZL"

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    const-string v2, "vodafone_NZ"

    aput-object v2, v0, v1

    const/16 v1, 0x160

    const-string v2, "PAK"

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const-string v2, "Mobilink"

    aput-object v2, v0, v1

    const/16 v1, 0x162

    const-string v2, "PAK"

    aput-object v2, v0, v1

    const/16 v1, 0x163

    const-string v2, "UFONE"

    aput-object v2, v0, v1

    const/16 v1, 0x164

    const-string v2, "PAK"

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const-string v2, "WaridTel"

    aput-object v2, v0, v1

    const/16 v1, 0x166

    const-string v2, "PAN"

    aput-object v2, v0, v1

    const/16 v1, 0x167

    const-string v2, "PANCW"

    aput-object v2, v0, v1

    const/16 v1, 0x168

    const-string v2, "PER"

    aput-object v2, v0, v1

    const/16 v1, 0x169

    const-string v2, "CLARO_PER"

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    const-string v2, "PER"

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    const-string v2, "movistar"

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    const-string v2, "PHL"

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    const-string v2, "Globe_Telecom-PH"

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    const-string v2, "PHL"

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    const-string v2, "Smart"

    aput-object v2, v0, v1

    const/16 v1, 0x170

    const-string v2, "POL"

    aput-object v2, v0, v1

    const/16 v1, 0x171

    const-string v2, "Era"

    aput-object v2, v0, v1

    const/16 v1, 0x172

    const-string v2, "POL"

    aput-object v2, v0, v1

    const/16 v1, 0x173

    const-string v2, "Orange_PL"

    aput-object v2, v0, v1

    const/16 v1, 0x174

    const-string v2, "POL"

    aput-object v2, v0, v1

    const/16 v1, 0x175

    const-string v2, "Plus"

    aput-object v2, v0, v1

    const/16 v1, 0x176

    const-string v2, "PRI"

    aput-object v2, v0, v1

    const/16 v1, 0x177

    const-string v2, "PR_Claro"

    aput-object v2, v0, v1

    const/16 v1, 0x178

    const-string v2, "PRT"

    aput-object v2, v0, v1

    const/16 v1, 0x179

    const-string v2, "vodafone_P"

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    const-string v2, "PRY"

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    const-string v2, "PY_Personal"

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    const-string v2, "ROU"

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    const-string v2, "ORANGE"

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    const-string v2, "ROU"

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    const-string v2, "RO_Vodafone_RO"

    aput-object v2, v0, v1

    const/16 v1, 0x180

    const-string v2, "RUS"

    aput-object v2, v0, v1

    const/16 v1, 0x181

    const-string v2, "Beeline"

    aput-object v2, v0, v1

    const/16 v1, 0x182

    const-string v2, "RUS"

    aput-object v2, v0, v1

    const/16 v1, 0x183

    const-string v2, "MegaFon"

    aput-object v2, v0, v1

    const/16 v1, 0x184

    const-string v2, "RUS"

    aput-object v2, v0, v1

    const/16 v1, 0x185

    const-string v2, "MTS-RUS"

    aput-object v2, v0, v1

    const/16 v1, 0x186

    const-string v2, "SAU"

    aput-object v2, v0, v1

    const/16 v1, 0x187

    const-string v2, "ALJAWAL"

    aput-object v2, v0, v1

    const/16 v1, 0x188

    const-string v2, "SAU"

    aput-object v2, v0, v1

    const/16 v1, 0x189

    const-string v2, "mobily"

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    const-string v2, "SDN"

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    const-string v2, "MobiTel_SDN"

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    const-string v2, "SYC"

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    const-string v2, "CABLE_&_WIRELESS"

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    const-string v2, "SGP"

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    const-string v2, "M1-3GSM"

    aput-object v2, v0, v1

    const/16 v1, 0x190

    const-string v2, "SGP"

    aput-object v2, v0, v1

    const/16 v1, 0x191

    const-string v2, "SingTel"

    aput-object v2, v0, v1

    const/16 v1, 0x192

    const-string v2, "SGP"

    aput-object v2, v0, v1

    const/16 v1, 0x193

    const-string v2, "StarHub"

    aput-object v2, v0, v1

    const/16 v1, 0x194

    const-string v2, "SLV"

    aput-object v2, v0, v1

    const/16 v1, 0x195

    const-string v2, "movistar"

    aput-object v2, v0, v1

    const/16 v1, 0x196

    const-string v2, "SLV"

    aput-object v2, v0, v1

    const/16 v1, 0x197

    const-string v2, "TELEMOVIL"

    aput-object v2, v0, v1

    const/16 v1, 0x198

    const-string v2, "SVK"

    aput-object v2, v0, v1

    const/16 v1, 0x199

    const-string v2, "Orange_SK"

    aput-object v2, v0, v1

    const/16 v1, 0x19a

    const-string v2, "SVK"

    aput-object v2, v0, v1

    const/16 v1, 0x19b

    const-string v2, "T-Mobile_SK"

    aput-object v2, v0, v1

    const/16 v1, 0x19c

    const-string v2, "SVN"

    aput-object v2, v0, v1

    const/16 v1, 0x19d

    const-string v2, "MOBITEL"

    aput-object v2, v0, v1

    const/16 v1, 0x19e

    const-string v2, "SVN"

    aput-object v2, v0, v1

    const/16 v1, 0x19f

    const-string v2, "SI.MOBIL"

    aput-object v2, v0, v1

    const/16 v1, 0x1a0

    const-string v2, "SWE"

    aput-object v2, v0, v1

    const/16 v1, 0x1a1

    const-string v2, "Telenor_SE"

    aput-object v2, v0, v1

    const/16 v1, 0x1a2

    const-string v2, "SWE"

    aput-object v2, v0, v1

    const/16 v1, 0x1a3

    const-string v2, "TELIA_S"

    aput-object v2, v0, v1

    const/16 v1, 0x1a4

    const-string v2, "SWE"

    aput-object v2, v0, v1

    const/16 v1, 0x1a5

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x1a6

    const-string v2, "TCA"

    aput-object v2, v0, v1

    const/16 v1, 0x1a7

    const-string v2, "Cable_&_Wireless_WI"

    aput-object v2, v0, v1

    const/16 v1, 0x1a8

    const-string v2, "THA"

    aput-object v2, v0, v1

    const/16 v1, 0x1a9

    const-string v2, "TH_GSM"

    aput-object v2, v0, v1

    const/16 v1, 0x1aa

    const-string v2, "THA"

    aput-object v2, v0, v1

    const/16 v1, 0x1ab

    const-string v2, "TRUE"

    aput-object v2, v0, v1

    const/16 v1, 0x1ac

    const-string v2, "TTO"

    aput-object v2, v0, v1

    const/16 v1, 0x1ad

    const-string v2, "DIGICEL"

    aput-object v2, v0, v1

    const/16 v1, 0x1ae

    const-string v2, "TTO"

    aput-object v2, v0, v1

    const/16 v1, 0x1af

    const-string v2, "TSTT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b0

    const-string v2, "TTO"

    aput-object v2, v0, v1

    const/16 v1, 0x1b1

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x1b2

    const-string v2, "TUR"

    aput-object v2, v0, v1

    const/16 v1, 0x1b3

    const-string v2, "TR_TURKCELL"

    aput-object v2, v0, v1

    const/16 v1, 0x1b4

    const-string v2, "TUR"

    aput-object v2, v0, v1

    const/16 v1, 0x1b5

    const-string v2, "VODAFONE_TR"

    aput-object v2, v0, v1

    const/16 v1, 0x1b6

    const-string v2, "TWN"

    aput-object v2, v0, v1

    const/16 v1, 0x1b7

    const-string v2, "Chunghwa_Telecom"

    aput-object v2, v0, v1

    const/16 v1, 0x1b8

    const-string v2, "TWN"

    aput-object v2, v0, v1

    const/16 v1, 0x1b9

    const-string v2, "Far_EasTone"

    aput-object v2, v0, v1

    const/16 v1, 0x1ba

    const-string v2, "TWN"

    aput-object v2, v0, v1

    const/16 v1, 0x1bb

    const-string v2, "Taiwan_Mobile"

    aput-object v2, v0, v1

    const/16 v1, 0x1bc

    const-string v2, "UGA"

    aput-object v2, v0, v1

    const/16 v1, 0x1bd

    const-string v2, "CELTEL_UG"

    aput-object v2, v0, v1

    const/16 v1, 0x1be

    const-string v2, "UGA"

    aput-object v2, v0, v1

    const/16 v1, 0x1bf

    const-string v2, "mango"

    aput-object v2, v0, v1

    const/16 v1, 0x1c0

    const-string v2, "UGA"

    aput-object v2, v0, v1

    const/16 v1, 0x1c1

    const-string v2, "MTN-UGANDA"

    aput-object v2, v0, v1

    const/16 v1, 0x1c2

    const-string v2, "UKR"

    aput-object v2, v0, v1

    const/16 v1, 0x1c3

    const-string v2, "life:)"

    aput-object v2, v0, v1

    const/16 v1, 0x1c4

    const-string v2, "UKR"

    aput-object v2, v0, v1

    const/16 v1, 0x1c5

    const-string v2, "MTS_UKR"

    aput-object v2, v0, v1

    const/16 v1, 0x1c6

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x1c7

    const-string v2, "1x_Test_Network"

    aput-object v2, v0, v1

    const/16 v1, 0x1c8

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x1c9

    const-string v2, "CDMA_Home_Network"

    aput-object v2, v0, v1

    const/16 v1, 0x1ca

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x1cb

    const-string v2, "Digital_Roaming"

    aput-object v2, v0, v1

    const/16 v1, 0x1cc

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x1cd

    const-string v2, "Extended_Network"

    aput-object v2, v0, v1

    const/16 v1, 0x1ce

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x1cf

    const-string v2, "Fast_100"

    aput-object v2, v0, v1

    const/16 v1, 0x1d0

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x1d1

    const-string v2, "GPRS_Test_Network"

    aput-object v2, v0, v1

    const/16 v1, 0x1d2

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x1d3

    const-string v2, "International"

    aput-object v2, v0, v1

    const/16 v1, 0x1d4

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x1d5

    const-string v2, "Mobility"

    aput-object v2, v0, v1

    const/16 v1, 0x1d6

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x1d7

    const-string v2, "Roaming"

    aput-object v2, v0, v1

    const/16 v1, 0x1d8

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x1d9

    const-string v2, "Telecom"

    aput-object v2, v0, v1

    const/16 v1, 0x1da

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x1db

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x1dc

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x1dd

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x1de

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x1df

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x1e0

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x1e1

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x1e2

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x1e3

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x1e4

    const-string v2, "URY"

    aput-object v2, v0, v1

    const/16 v1, 0x1e5

    const-string v2, "MOVISTAR"

    aput-object v2, v0, v1

    const/16 v1, 0x1e6

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x1e7

    const-string v2, "ACS"

    aput-object v2, v0, v1

    const/16 v1, 0x1e8

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x1e9

    const-string v2, "ALLTEL"

    aput-object v2, v0, v1

    const/16 v1, 0x1ea

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x1eb

    const-string v2, "AmeriLink_PCS"

    aput-object v2, v0, v1

    const/16 v1, 0x1ec

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x1ed

    const-string v2, "Appalachian_Wireless"

    aput-object v2, v0, v1

    const/16 v1, 0x1ee

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x1ef

    const-string v2, "AT&T"

    aput-object v2, v0, v1

    const/16 v1, 0x1f0

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x1f1

    const-string v2, "Bluegrass_Cellular"

    aput-object v2, v0, v1

    const/16 v1, 0x1f2

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x1f3

    const-string v2, "Carolina_West_Wireless"

    aput-object v2, v0, v1

    const/16 v1, 0x1f4

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x1f5

    const-string v2, "Cbeyond"

    aput-object v2, v0, v1

    const/16 v1, 0x1f6

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x1f7

    const-string v2, "Cell1ET"

    aput-object v2, v0, v1

    const/16 v1, 0x1f8

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x1f9

    const-string v2, "Cellular_One"

    aput-object v2, v0, v1

    const/16 v1, 0x1fa

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x1fb

    const-string v2, "Cellular_One_DCS"

    aput-object v2, v0, v1

    const/16 v1, 0x1fc

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x1fd

    const-string v2, "Cellular_South"

    aput-object v2, v0, v1

    const/16 v1, 0x1fe

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x1ff

    const-string v2, "CENT_USA"

    aput-object v2, v0, v1

    const/16 v1, 0x200

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x201

    const-string v2, "Centennial"

    aput-object v2, v0, v1

    const/16 v1, 0x202

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x203

    const-string v2, "Chinook"

    aput-object v2, v0, v1

    const/16 v1, 0x204

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x205

    const-string v2, "Cingular"

    aput-object v2, v0, v1

    const/16 v1, 0x206

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x207

    const-string v2, "Corr_Wireless_Comms"

    aput-object v2, v0, v1

    const/16 v1, 0x208

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x209

    const-string v2, "Edge_Wireless"

    aput-object v2, v0, v1

    const/16 v1, 0x20a

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x20b

    const-string v2, "Einstein_PCS"

    aput-object v2, v0, v1

    const/16 v1, 0x20c

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x20d

    const-string v2, "Epic_Touch"

    aput-object v2, v0, v1

    const/16 v1, 0x20e

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x20f

    const-string v2, "FARMERS"

    aput-object v2, v0, v1

    const/16 v1, 0x210

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x211

    const-string v2, "FC"

    aput-object v2, v0, v1

    const/16 v1, 0x212

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x213

    const-string v2, "i_wireless"

    aput-object v2, v0, v1

    const/16 v1, 0x214

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x215

    const-string v2, "Immix_Wireless"

    aput-object v2, v0, v1

    const/16 v1, 0x216

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x217

    const-string v2, "Indigo"

    aput-object v2, v0, v1

    const/16 v1, 0x218

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x219

    const-string v2, "indigo_Wireless"

    aput-object v2, v0, v1

    const/16 v1, 0x21a

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x21b

    const-string v2, "NECCI"

    aput-object v2, v0, v1

    const/16 v1, 0x21c

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x21d

    const-string v2, "NPI"

    aput-object v2, v0, v1

    const/16 v1, 0x21e

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x21f

    const-string v2, "nTelos"

    aput-object v2, v0, v1

    const/16 v1, 0x220

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x221

    const-string v2, "PetroCom"

    aput-object v2, v0, v1

    const/16 v1, 0x222

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x223

    const-string v2, "Pine_Cellular"

    aput-object v2, v0, v1

    const/16 v1, 0x224

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x225

    const-string v2, "Plateau_Wireless"

    aput-object v2, v0, v1

    const/16 v1, 0x226

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x227

    const-string v2, "Smith_Bagley"

    aput-object v2, v0, v1

    const/16 v1, 0x228

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x229

    const-string v2, "Sprint_PCS"

    aput-object v2, v0, v1

    const/16 v1, 0x22a

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x22b

    const-string v2, "SunCom"

    aput-object v2, v0, v1

    const/16 v1, 0x22c

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x22d

    const-string v2, "T-Mobile"

    aput-object v2, v0, v1

    const/16 v1, 0x22e

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x22f

    const-string v2, "TMP_Corp"

    aput-object v2, v0, v1

    const/16 v1, 0x230

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x231

    const-string v2, "U.S._Cellular"

    aput-object v2, v0, v1

    const/16 v1, 0x232

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x233

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x234

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x235

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x236

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x237

    const-string v2, "US_-_Union_Telephone"

    aput-object v2, v0, v1

    const/16 v1, 0x238

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x239

    const-string v2, "USA_-_Commnet"

    aput-object v2, v0, v1

    const/16 v1, 0x23a

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x23b

    const-string v2, "USA_Unicel"

    aput-object v2, v0, v1

    const/16 v1, 0x23c

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x23d

    const-string v2, "USA_XIT_Wireless"

    aput-object v2, v0, v1

    const/16 v1, 0x23e

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x23f

    const-string v2, "USAC1ECI"

    aput-object v2, v0, v1

    const/16 v1, 0x240

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x241

    const-string v2, "USAEC"

    aput-object v2, v0, v1

    const/16 v1, 0x242

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x243

    const-string v2, "USASXLP"

    aput-object v2, v0, v1

    const/16 v1, 0x244

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x245

    const-string v2, "Verizon_Wireless"

    aput-object v2, v0, v1

    const/16 v1, 0x246

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x247

    const-string v2, "West_Central"

    aput-object v2, v0, v1

    const/16 v1, 0x248

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x249

    const-string v2, "WestLink"

    aput-object v2, v0, v1

    const/16 v1, 0x24a

    const-string v2, "VEN"

    aput-object v2, v0, v1

    const/16 v1, 0x24b

    const-string v2, "DIGITEL_GSM"

    aput-object v2, v0, v1

    const/16 v1, 0x24c

    const-string v2, "VEN"

    aput-object v2, v0, v1

    const/16 v1, 0x24d

    const-string v2, "DIGITEL_TIM"

    aput-object v2, v0, v1

    const/16 v1, 0x24e

    const-string v2, "VEN"

    aput-object v2, v0, v1

    const/16 v1, 0x24f

    const-string v2, "Movilnet"

    aput-object v2, v0, v1

    const/16 v1, 0x250

    const-string v2, "VEN"

    aput-object v2, v0, v1

    const/16 v1, 0x251

    const-string v2, "movistar"

    aput-object v2, v0, v1

    const/16 v1, 0x252

    const-string v2, "VGB"

    aput-object v2, v0, v1

    const/16 v1, 0x253

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x254

    const-string v2, "VNM"

    aput-object v2, v0, v1

    const/16 v1, 0x255

    const-string v2, "VINAFONE"

    aput-object v2, v0, v1

    const/16 v1, 0x256

    const-string v2, "VNM"

    aput-object v2, v0, v1

    const/16 v1, 0x257

    const-string v2, "VN_MOBIFONE"

    aput-object v2, v0, v1

    const/16 v1, 0x258

    const-string v2, "VNM"

    aput-object v2, v0, v1

    const/16 v1, 0x259

    const-string v2, "VNM_and_VIETTEL"

    aput-object v2, v0, v1

    const/16 v1, 0x25a

    const-string v2, "ZAF"

    aput-object v2, v0, v1

    const/16 v1, 0x25b

    const-string v2, "Cell_C"

    aput-object v2, v0, v1

    const/16 v1, 0x25c

    const-string v2, "ZAF"

    aput-object v2, v0, v1

    const/16 v1, 0x25d

    const-string v2, "MTN"

    aput-object v2, v0, v1

    const/16 v1, 0x25e

    const-string v2, "ZAF"

    aput-object v2, v0, v1

    const/16 v1, 0x25f

    const-string v2, "VodaCom-SA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vlingo/client/core/deviceinfo/Carriers;->ISO3_CARRIER_MAP_SRC:[Ljava/lang/String;

    .line 320
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Unknown"

    aput-object v1, v0, v3

    const-string v1, "Roaming"

    aput-object v1, v0, v4

    const-string v1, "Telecom"

    aput-object v1, v0, v5

    const-string v1, "Mobility"

    aput-object v1, v0, v6

    const-string v1, "1x_Test_Network"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "EDGE_Test_Network"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "UMTS_Test_Network"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CDMA_Home_Network"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Digital_Roaming"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Extended_Network"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GPRS_Test_Network"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "International"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vlingo/client/core/deviceinfo/Carriers;->UNKNOWN_CARRIERS:[Ljava/lang/String;

    .line 336
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/core/deviceinfo/Carriers;->instance:Lcom/vlingo/client/core/deviceinfo/Carriers;

    return-void
.end method

.method protected constructor <init>()V
    .registers 8

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vlingo/client/core/deviceinfo/Carriers;->carrierMapTable:Ljava/util/Hashtable;

    .line 346
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    iput-object v5, p0, Lcom/vlingo/client/core/deviceinfo/Carriers;->carrierMapTable:Ljava/util/Hashtable;

    .line 347
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    sget-object v5, Lcom/vlingo/client/core/deviceinfo/Carriers;->ISO3_CARRIER_MAP_SRC:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_3e

    .line 348
    sget-object v5, Lcom/vlingo/client/core/deviceinfo/Carriers;->ISO3_CARRIER_MAP_SRC:[Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    aget-object v4, v5, v6

    .line 349
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_3b

    invoke-static {v4}, Lcom/vlingo/client/core/deviceinfo/Carriers;->isUnknownCarrier(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 350
    sget-object v5, Lcom/vlingo/client/core/deviceinfo/Carriers;->ISO3_CARRIER_MAP_SRC:[Ljava/lang/String;

    aget-object v3, v5, v1

    .line 351
    .local v3, iso3:Ljava/lang/String;
    invoke-static {v3}, Lcom/vlingo/client/core/deviceinfo/CountryUtils;->ISO3ToISO2CountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, iso2:Ljava/lang/String;
    if-nez v2, :cond_2d

    const-string v2, "Unknown"

    .line 353
    :cond_2d
    new-instance v0, Lcom/vlingo/client/core/deviceinfo/Carrier;

    invoke-direct {v0, v4, v2, v3}, Lcom/vlingo/client/core/deviceinfo/Carrier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .local v0, c:Lcom/vlingo/client/core/deviceinfo/Carrier;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 355
    iget-object v5, p0, Lcom/vlingo/client/core/deviceinfo/Carriers;->carrierMapTable:Ljava/util/Hashtable;

    invoke-virtual {v5, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .end local v0           #c:Lcom/vlingo/client/core/deviceinfo/Carrier;
    .end local v2           #iso2:Ljava/lang/String;
    .end local v3           #iso3:Ljava/lang/String;
    :cond_3b
    add-int/lit8 v1, v1, 0x2

    goto :goto_e

    .line 358
    .end local v4           #name:Ljava/lang/String;
    :cond_3e
    return-void
.end method

.method public static getInstance()Lcom/vlingo/client/core/deviceinfo/Carriers;
    .registers 1

    .prologue
    .line 339
    sget-object v0, Lcom/vlingo/client/core/deviceinfo/Carriers;->instance:Lcom/vlingo/client/core/deviceinfo/Carriers;

    if-nez v0, :cond_b

    .line 340
    new-instance v0, Lcom/vlingo/client/core/deviceinfo/Carriers;

    invoke-direct {v0}, Lcom/vlingo/client/core/deviceinfo/Carriers;-><init>()V

    sput-object v0, Lcom/vlingo/client/core/deviceinfo/Carriers;->instance:Lcom/vlingo/client/core/deviceinfo/Carriers;

    .line 342
    :cond_b
    sget-object v0, Lcom/vlingo/client/core/deviceinfo/Carriers;->instance:Lcom/vlingo/client/core/deviceinfo/Carriers;

    return-object v0
.end method

.method protected static isUnknownCarrier(Ljava/lang/String;)Z
    .registers 4
    .parameter "carrierName"

    .prologue
    const/4 v1, 0x1

    .line 366
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 372
    :cond_9
    :goto_9
    return v1

    .line 368
    :cond_a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    sget-object v2, Lcom/vlingo/client/core/deviceinfo/Carriers;->UNKNOWN_CARRIERS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1d

    .line 369
    sget-object v2, Lcom/vlingo/client/core/deviceinfo/Carriers;->UNKNOWN_CARRIERS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 372
    :cond_1d
    const/4 v1, 0x0

    goto :goto_9
.end method


# virtual methods
.method public getCarrierByName(Ljava/lang/String;)Lcom/vlingo/client/core/deviceinfo/Carrier;
    .registers 5
    .parameter "carrierName"

    .prologue
    .line 361
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 362
    iget-object v0, p0, Lcom/vlingo/client/core/deviceinfo/Carriers;->carrierMapTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/deviceinfo/Carrier;

    return-object v0
.end method
