.class public Lcom/vlingo/client/core/deviceinfo/CountryCodes;
.super Ljava/lang/Object;
.source "CountryCodes.java"


# static fields
.field public static COUNTRY_MAP_SRC:[Ljava/lang/String;

.field protected static instance:Lcom/vlingo/client/core/deviceinfo/CountryCodes;

.field static iso2ToIso3CountryMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static iso3ToIso2CountryMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 12
    const/16 v0, 0x2f7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AFG"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AF"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Afghanistan"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ALA"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AX"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Aland Islands"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ALB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "AL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Albania"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Alderney"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "DZA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "DZ"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Algeria (El Djazair)"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ASM"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "AS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "American Samoa"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "AND"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "AD"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Andorra"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "AGO"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "AO"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Angola"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "AIA"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Anguilla"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "ATA"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "AQ"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Antarctica"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "ATG"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "AG"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Antigua And Barbuda"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "ARG"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "AR"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Argentina"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "ARM"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "AM"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Armenia"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "ABW"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AW"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Aruba"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Ascension Island"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "AUS"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "AU"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Australia"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "AUT"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "AT"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Austria"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "AZE"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "AZ"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Azerbaijan"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "BHS"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "BS"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Bahamas"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "BHR"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "BH"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Bahrain"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "BGD"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "BD"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Bangladesh"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "BRB"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Barbados"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "BLR"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "BY"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Belarus"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "BEL"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "BE"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Belgium"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "BLZ"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "BZ"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Belize"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "BEN"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "BJ"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Benin"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "BMU"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Bermuda"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "BTN"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "BT"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Bhutan"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "BOL"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "BO"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Bolivia"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "BIH"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "BA"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Bosnia And Herzegovina"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "BWA"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "BW"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Botswana"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "BVT"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "BV"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Bouvet Island"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "BRA"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "BR"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Brazil"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "IOT"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "IO"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "British Indian Ocean Territory"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "BRN"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "BN"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Brunei Darussalam"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "BGR"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "BG"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Bulgaria"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "BFA"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "BF"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Burkina Faso"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "BDI"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "BI"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Burundi"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "KHM"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "KH"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Cambodia"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "CMR"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "CM"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Cameroon"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "CAN"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Canada"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "CPV"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "CV"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Cape Verde"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "CYM"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Cayman Islands"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "CAF"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "CF"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Central African Republic"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "TCD"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "TD"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Chad (Tchad)"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Channel Islands"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "CHL"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "CL"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Chile"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "CHN"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "CN"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "China"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "CXR"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "CX"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "Christmas Island"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "CCK"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "CC"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "Cocos (Keeling) Islands"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "COL"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "CO"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "Colombia"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "COM"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "KM"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "Comoros"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "COG,CG"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "Congo"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, " Republic Of"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "COD,CD"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "Congo"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, " The Democratic Republic Of The (Formerly Zaire)"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "COK"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "CK"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "Cook Islands"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "CRI"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "CR"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "Costa Rica"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "CIV"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "CI"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "Cote D\'Ivoire (Ivory Coast)"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "HRV"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "HR"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "Croatia (Hrvatska)"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "CUB"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "CU"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "Cuba"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "CYP"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "CY"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "Cyprus"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "CZE"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "CZ"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "Czech Republic"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "DNK"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "DK"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "Denmark"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "DJI"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "DJ"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "Djibouti"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "DMA"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "Dominica"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "DOM"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "Dominican Republic"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "ECU"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "EC"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "Ecuador"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "EGY"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "EG"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "Egypt"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "SLV"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "SV"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "El Salvador"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "GNQ"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "GQ"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "Equatorial Guinea"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "ERI"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "ER"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "Eritrea"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "EST"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "EE"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "Estonia"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "ETH"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "ET"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "Ethiopia"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "European Union"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "FRO"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "FO"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "Faeroe Islands"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "FLK"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "FK"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "Falkland Islands (Malvinas)"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "FJI"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "FJ"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "Fiji"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "FIN"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "FI"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "Finland"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "FRA"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "FR"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "France"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "GUF"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "GF"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "French Guiana"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "PYF"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "PF"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "French Polynesia"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "ATF"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "TF"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "French Southern Territories"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "GAB"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "GA"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "Gabon"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "GMB,GM"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "Gambia"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, " The"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "GEO"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "GE"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "Georgia"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "DEU"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "DE"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "Germany (Deutschland)"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "GHA"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "GH"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "Ghana"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "GIB"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "GI"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "Gibraltar"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "GBR"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "GB"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "Great Britain"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "GRC"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "GR"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "Greece"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "GRL"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "GL"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "Greenland"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "GRD"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "Grenada"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "GLP"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "GP"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "Guadeloupe"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "GUM"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "Guam"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "GTM"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "GT"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "Guatemala"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "GGY"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "GG"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "Guernsey"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "GIN"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "GN"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v2, "Guinea"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string v2, "GNB"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v2, "GW"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string v2, "Guinea-Bissau"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "GUY"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "GY"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string v2, "Guyana"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string v2, "HTI"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v2, "HT"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string v2, "Haiti"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string v2, "HMD"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string v2, "HM"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string v2, "Heard Island And Mcdonald Islands"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string v2, "HND"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string v2, "HN"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const-string v2, "Honduras"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string v2, "HKG"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string v2, "HK"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string v2, "Hong Kong (Special Administrative Region Of China)"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string v2, "HUN"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string v2, "HU"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const-string v2, "Hungary"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string v2, "ISL"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const-string v2, "IS"

    aput-object v2, v0, v1

    const/16 v1, 0x137

    const-string v2, "Iceland"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string v2, "IND"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string v2, "IN"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string v2, "India"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string v2, "IDN"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string v2, "ID"

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const-string v2, "Indonesia"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string v2, "IRN"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string v2, "IR"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string v2, "Iran (Islamic Republic Of Iran)"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string v2, "IRQ"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string v2, "IQ"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string v2, "Iraq"

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const-string v2, "IRL"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string v2, "IE"

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const-string v2, "Ireland"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string v2, "IMN"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const-string v2, "IM"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string v2, "Isle Of Man"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string v2, "ISR"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string v2, "IL"

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    const-string v2, "Israel"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string v2, "ITA"

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    const-string v2, "IT"

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    const-string v2, "Italy"

    aput-object v2, v0, v1

    const/16 v1, 0x150

    const-string v2, "JAM"

    aput-object v2, v0, v1

    const/16 v1, 0x151

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0x152

    const-string v2, "Jamaica"

    aput-object v2, v0, v1

    const/16 v1, 0x153

    const-string v2, "JPN"

    aput-object v2, v0, v1

    const/16 v1, 0x154

    const-string v2, "JP"

    aput-object v2, v0, v1

    const/16 v1, 0x155

    const-string v2, "Japan"

    aput-object v2, v0, v1

    const/16 v1, 0x156

    const-string v2, "JEY"

    aput-object v2, v0, v1

    const/16 v1, 0x157

    const-string v2, "JE"

    aput-object v2, v0, v1

    const/16 v1, 0x158

    const-string v2, "Jersey"

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const-string v2, "JOR"

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    const-string v2, "JO"

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    const-string v2, "Jordan (Hashemite Kingdom Of Jordan)"

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    const-string v2, "KAZ"

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const-string v2, "KZ"

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    const-string v2, "Kazakhstan"

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    const-string v2, "KEN"

    aput-object v2, v0, v1

    const/16 v1, 0x160

    const-string v2, "KE"

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const-string v2, "Kenya"

    aput-object v2, v0, v1

    const/16 v1, 0x162

    const-string v2, "KIR"

    aput-object v2, v0, v1

    const/16 v1, 0x163

    const-string v2, "KI"

    aput-object v2, v0, v1

    const/16 v1, 0x164

    const-string v2, "Kiribati"

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const-string v2, "PRK"

    aput-object v2, v0, v1

    const/16 v1, 0x166

    const-string v2, "KP"

    aput-object v2, v0, v1

    const/16 v1, 0x167

    const-string v2, "North Korea"

    aput-object v2, v0, v1

    const/16 v1, 0x168

    const-string v2, "KOR"

    aput-object v2, v0, v1

    const/16 v1, 0x169

    const-string v2, "KR"

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    const-string v2, "South Korea"

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    const-string v2, "KWT"

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    const-string v2, "KW"

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    const-string v2, "Kuwait"

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    const-string v2, "KGZ"

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    const-string v2, "KG"

    aput-object v2, v0, v1

    const/16 v1, 0x170

    const-string v2, "Kyrgyzstan"

    aput-object v2, v0, v1

    const/16 v1, 0x171

    const-string v2, "LAO"

    aput-object v2, v0, v1

    const/16 v1, 0x172

    const-string v2, "LA"

    aput-object v2, v0, v1

    const/16 v1, 0x173

    const-string v2, "Lao People\'S Democratic Republic"

    aput-object v2, v0, v1

    const/16 v1, 0x174

    const-string v2, "LVA"

    aput-object v2, v0, v1

    const/16 v1, 0x175

    const-string v2, "LV"

    aput-object v2, v0, v1

    const/16 v1, 0x176

    const-string v2, "Latvia"

    aput-object v2, v0, v1

    const/16 v1, 0x177

    const-string v2, "LBN"

    aput-object v2, v0, v1

    const/16 v1, 0x178

    const-string v2, "LB"

    aput-object v2, v0, v1

    const/16 v1, 0x179

    const-string v2, "Lebanon"

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    const-string v2, "LSO"

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    const-string v2, "LS"

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    const-string v2, "Lesotho"

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    const-string v2, "LBR"

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    const-string v2, "LR"

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    const-string v2, "Liberia"

    aput-object v2, v0, v1

    const/16 v1, 0x180

    const-string v2, "LBY"

    aput-object v2, v0, v1

    const/16 v1, 0x181

    const-string v2, "LY"

    aput-object v2, v0, v1

    const/16 v1, 0x182

    const-string v2, "Libya (Libyan Arab Jamahirya)"

    aput-object v2, v0, v1

    const/16 v1, 0x183

    const-string v2, "LIE"

    aput-object v2, v0, v1

    const/16 v1, 0x184

    const-string v2, "LI"

    aput-object v2, v0, v1

    const/16 v1, 0x185

    const-string v2, "Liechtenstein (Furstentum Liechtenstein)"

    aput-object v2, v0, v1

    const/16 v1, 0x186

    const-string v2, "LTU"

    aput-object v2, v0, v1

    const/16 v1, 0x187

    const-string v2, "LT"

    aput-object v2, v0, v1

    const/16 v1, 0x188

    const-string v2, "Lithuania"

    aput-object v2, v0, v1

    const/16 v1, 0x189

    const-string v2, "LUX"

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    const-string v2, "LU"

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    const-string v2, "Luxembourg"

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    const-string v2, "MAC"

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    const-string v2, "MO"

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    const-string v2, "Macao (Special Administrative Region Of China)"

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    const-string v2, "MKD"

    aput-object v2, v0, v1

    const/16 v1, 0x190

    const-string v2, "MK"

    aput-object v2, v0, v1

    const/16 v1, 0x191

    const-string v2, "Macedonia (Former Yugoslav Republic Of Macedonia)"

    aput-object v2, v0, v1

    const/16 v1, 0x192

    const-string v2, "MDG"

    aput-object v2, v0, v1

    const/16 v1, 0x193

    const-string v2, "MG"

    aput-object v2, v0, v1

    const/16 v1, 0x194

    const-string v2, "Madagascar"

    aput-object v2, v0, v1

    const/16 v1, 0x195

    const-string v2, "MWI"

    aput-object v2, v0, v1

    const/16 v1, 0x196

    const-string v2, "MW"

    aput-object v2, v0, v1

    const/16 v1, 0x197

    const-string v2, "Malawi"

    aput-object v2, v0, v1

    const/16 v1, 0x198

    const-string v2, "MYS"

    aput-object v2, v0, v1

    const/16 v1, 0x199

    const-string v2, "MY"

    aput-object v2, v0, v1

    const/16 v1, 0x19a

    const-string v2, "Malaysia"

    aput-object v2, v0, v1

    const/16 v1, 0x19b

    const-string v2, "MDV"

    aput-object v2, v0, v1

    const/16 v1, 0x19c

    const-string v2, "MV"

    aput-object v2, v0, v1

    const/16 v1, 0x19d

    const-string v2, "Maldives"

    aput-object v2, v0, v1

    const/16 v1, 0x19e

    const-string v2, "MLI"

    aput-object v2, v0, v1

    const/16 v1, 0x19f

    const-string v2, "ML"

    aput-object v2, v0, v1

    const/16 v1, 0x1a0

    const-string v2, "Mali"

    aput-object v2, v0, v1

    const/16 v1, 0x1a1

    const-string v2, "MLT"

    aput-object v2, v0, v1

    const/16 v1, 0x1a2

    const-string v2, "MT"

    aput-object v2, v0, v1

    const/16 v1, 0x1a3

    const-string v2, "Malta"

    aput-object v2, v0, v1

    const/16 v1, 0x1a4

    const-string v2, "MHL"

    aput-object v2, v0, v1

    const/16 v1, 0x1a5

    const-string v2, "MH"

    aput-object v2, v0, v1

    const/16 v1, 0x1a6

    const-string v2, "Marshall Islands"

    aput-object v2, v0, v1

    const/16 v1, 0x1a7

    const-string v2, "MTQ"

    aput-object v2, v0, v1

    const/16 v1, 0x1a8

    const-string v2, "MQ"

    aput-object v2, v0, v1

    const/16 v1, 0x1a9

    const-string v2, "Martinique"

    aput-object v2, v0, v1

    const/16 v1, 0x1aa

    const-string v2, "MRT"

    aput-object v2, v0, v1

    const/16 v1, 0x1ab

    const-string v2, "MR"

    aput-object v2, v0, v1

    const/16 v1, 0x1ac

    const-string v2, "Mauritania"

    aput-object v2, v0, v1

    const/16 v1, 0x1ad

    const-string v2, "MUS"

    aput-object v2, v0, v1

    const/16 v1, 0x1ae

    const-string v2, "MU"

    aput-object v2, v0, v1

    const/16 v1, 0x1af

    const-string v2, "Mauritius"

    aput-object v2, v0, v1

    const/16 v1, 0x1b0

    const-string v2, "MYT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b1

    const-string v2, "YT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b2

    const-string v2, "Mayotte"

    aput-object v2, v0, v1

    const/16 v1, 0x1b3

    const-string v2, "MEX"

    aput-object v2, v0, v1

    const/16 v1, 0x1b4

    const-string v2, "MX"

    aput-object v2, v0, v1

    const/16 v1, 0x1b5

    const-string v2, "Mexico"

    aput-object v2, v0, v1

    const/16 v1, 0x1b6

    const-string v2, "FSM"

    aput-object v2, v0, v1

    const/16 v1, 0x1b7

    const-string v2, "FM"

    aput-object v2, v0, v1

    const/16 v1, 0x1b8

    const-string v2, "Micronesia (Federated States Of Micronesia)"

    aput-object v2, v0, v1

    const/16 v1, 0x1b9

    const-string v2, "MDA"

    aput-object v2, v0, v1

    const/16 v1, 0x1ba

    const-string v2, "MD"

    aput-object v2, v0, v1

    const/16 v1, 0x1bb

    const-string v2, "Moldova"

    aput-object v2, v0, v1

    const/16 v1, 0x1bc

    const-string v2, "MCO"

    aput-object v2, v0, v1

    const/16 v1, 0x1bd

    const-string v2, "MC"

    aput-object v2, v0, v1

    const/16 v1, 0x1be

    const-string v2, "Monaco"

    aput-object v2, v0, v1

    const/16 v1, 0x1bf

    const-string v2, "MNG"

    aput-object v2, v0, v1

    const/16 v1, 0x1c0

    const-string v2, "MN"

    aput-object v2, v0, v1

    const/16 v1, 0x1c1

    const-string v2, "Mongolia"

    aput-object v2, v0, v1

    const/16 v1, 0x1c2

    const-string v2, "MNE"

    aput-object v2, v0, v1

    const/16 v1, 0x1c3

    const-string v2, "ME"

    aput-object v2, v0, v1

    const/16 v1, 0x1c4

    const-string v2, "Montenegro"

    aput-object v2, v0, v1

    const/16 v1, 0x1c5

    const-string v2, "MSR"

    aput-object v2, v0, v1

    const/16 v1, 0x1c6

    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x1c7

    const-string v2, "Montserrat"

    aput-object v2, v0, v1

    const/16 v1, 0x1c8

    const-string v2, "MAR"

    aput-object v2, v0, v1

    const/16 v1, 0x1c9

    const-string v2, "MA"

    aput-object v2, v0, v1

    const/16 v1, 0x1ca

    const-string v2, "Morocco"

    aput-object v2, v0, v1

    const/16 v1, 0x1cb

    const-string v2, "MOZ"

    aput-object v2, v0, v1

    const/16 v1, 0x1cc

    const-string v2, "MZ"

    aput-object v2, v0, v1

    const/16 v1, 0x1cd

    const-string v2, "Mozambique (Mozambique)"

    aput-object v2, v0, v1

    const/16 v1, 0x1ce

    const-string v2, "MMR"

    aput-object v2, v0, v1

    const/16 v1, 0x1cf

    const-string v2, "MM"

    aput-object v2, v0, v1

    const/16 v1, 0x1d0

    const-string v2, "Myanmar (Formerly Burma)"

    aput-object v2, v0, v1

    const/16 v1, 0x1d1

    const-string v2, "NAM"

    aput-object v2, v0, v1

    const/16 v1, 0x1d2

    const-string v2, "NA"

    aput-object v2, v0, v1

    const/16 v1, 0x1d3

    const-string v2, "Namibia"

    aput-object v2, v0, v1

    const/16 v1, 0x1d4

    const-string v2, "NRU"

    aput-object v2, v0, v1

    const/16 v1, 0x1d5

    const-string v2, "NR"

    aput-object v2, v0, v1

    const/16 v1, 0x1d6

    const-string v2, "Nauru"

    aput-object v2, v0, v1

    const/16 v1, 0x1d7

    const-string v2, "NPL"

    aput-object v2, v0, v1

    const/16 v1, 0x1d8

    const-string v2, "NP"

    aput-object v2, v0, v1

    const/16 v1, 0x1d9

    const-string v2, "Nepal"

    aput-object v2, v0, v1

    const/16 v1, 0x1da

    const-string v2, "NLD"

    aput-object v2, v0, v1

    const/16 v1, 0x1db

    const-string v2, "NL"

    aput-object v2, v0, v1

    const/16 v1, 0x1dc

    const-string v2, "Netherlands"

    aput-object v2, v0, v1

    const/16 v1, 0x1dd

    const-string v2, "ANT"

    aput-object v2, v0, v1

    const/16 v1, 0x1de

    const-string v2, "AN"

    aput-object v2, v0, v1

    const/16 v1, 0x1df

    const-string v2, "Netherlands Antilles"

    aput-object v2, v0, v1

    const/16 v1, 0x1e0

    const-string v2, "NCL"

    aput-object v2, v0, v1

    const/16 v1, 0x1e1

    const-string v2, "NC"

    aput-object v2, v0, v1

    const/16 v1, 0x1e2

    const-string v2, "New Caledonia"

    aput-object v2, v0, v1

    const/16 v1, 0x1e3

    const-string v2, "NZL"

    aput-object v2, v0, v1

    const/16 v1, 0x1e4

    const-string v2, "NZ"

    aput-object v2, v0, v1

    const/16 v1, 0x1e5

    const-string v2, "New Zealand"

    aput-object v2, v0, v1

    const/16 v1, 0x1e6

    const-string v2, "NIC"

    aput-object v2, v0, v1

    const/16 v1, 0x1e7

    const-string v2, "NI"

    aput-object v2, v0, v1

    const/16 v1, 0x1e8

    const-string v2, "Nicaragua"

    aput-object v2, v0, v1

    const/16 v1, 0x1e9

    const-string v2, "NER"

    aput-object v2, v0, v1

    const/16 v1, 0x1ea

    const-string v2, "NE"

    aput-object v2, v0, v1

    const/16 v1, 0x1eb

    const-string v2, "Niger"

    aput-object v2, v0, v1

    const/16 v1, 0x1ec

    const-string v2, "NGA"

    aput-object v2, v0, v1

    const/16 v1, 0x1ed

    const-string v2, "NG"

    aput-object v2, v0, v1

    const/16 v1, 0x1ee

    const-string v2, "Nigeria"

    aput-object v2, v0, v1

    const/16 v1, 0x1ef

    const-string v2, "NIU"

    aput-object v2, v0, v1

    const/16 v1, 0x1f0

    const-string v2, "NU"

    aput-object v2, v0, v1

    const/16 v1, 0x1f1

    const-string v2, "Niue"

    aput-object v2, v0, v1

    const/16 v1, 0x1f2

    const-string v2, "NFK"

    aput-object v2, v0, v1

    const/16 v1, 0x1f3

    const-string v2, "NF"

    aput-object v2, v0, v1

    const/16 v1, 0x1f4

    const-string v2, "Norfolk Island"

    aput-object v2, v0, v1

    const/16 v1, 0x1f5

    const-string v2, "MNP"

    aput-object v2, v0, v1

    const/16 v1, 0x1f6

    const-string v2, "MP"

    aput-object v2, v0, v1

    const/16 v1, 0x1f7

    const-string v2, "Northern Mariana Islands"

    aput-object v2, v0, v1

    const/16 v1, 0x1f8

    const-string v2, "NOR"

    aput-object v2, v0, v1

    const/16 v1, 0x1f9

    const-string v2, "NO"

    aput-object v2, v0, v1

    const/16 v1, 0x1fa

    const-string v2, "Norway"

    aput-object v2, v0, v1

    const/16 v1, 0x1fb

    const-string v2, "OMN"

    aput-object v2, v0, v1

    const/16 v1, 0x1fc

    const-string v2, "OM"

    aput-object v2, v0, v1

    const/16 v1, 0x1fd

    const-string v2, "Oman"

    aput-object v2, v0, v1

    const/16 v1, 0x1fe

    const-string v2, "PAK"

    aput-object v2, v0, v1

    const/16 v1, 0x1ff

    const-string v2, "PK"

    aput-object v2, v0, v1

    const/16 v1, 0x200

    const-string v2, "Pakistan"

    aput-object v2, v0, v1

    const/16 v1, 0x201

    const-string v2, "PLW"

    aput-object v2, v0, v1

    const/16 v1, 0x202

    const-string v2, "PW"

    aput-object v2, v0, v1

    const/16 v1, 0x203

    const-string v2, "Palau"

    aput-object v2, v0, v1

    const/16 v1, 0x204

    const-string v2, "PSE"

    aput-object v2, v0, v1

    const/16 v1, 0x205

    const-string v2, "PS"

    aput-object v2, v0, v1

    const/16 v1, 0x206

    const-string v2, "Palestinian Territories"

    aput-object v2, v0, v1

    const/16 v1, 0x207

    const-string v2, "PAN"

    aput-object v2, v0, v1

    const/16 v1, 0x208

    const-string v2, "PA"

    aput-object v2, v0, v1

    const/16 v1, 0x209

    const-string v2, "Panama"

    aput-object v2, v0, v1

    const/16 v1, 0x20a

    const-string v2, "PNG"

    aput-object v2, v0, v1

    const/16 v1, 0x20b

    const-string v2, "PG"

    aput-object v2, v0, v1

    const/16 v1, 0x20c

    const-string v2, "Papua New Guinea"

    aput-object v2, v0, v1

    const/16 v1, 0x20d

    const-string v2, "PRY"

    aput-object v2, v0, v1

    const/16 v1, 0x20e

    const-string v2, "PY"

    aput-object v2, v0, v1

    const/16 v1, 0x20f

    const-string v2, "Paraguay"

    aput-object v2, v0, v1

    const/16 v1, 0x210

    const-string v2, "PER"

    aput-object v2, v0, v1

    const/16 v1, 0x211

    const-string v2, "PE"

    aput-object v2, v0, v1

    const/16 v1, 0x212

    const-string v2, "Peru"

    aput-object v2, v0, v1

    const/16 v1, 0x213

    const-string v2, "PHL"

    aput-object v2, v0, v1

    const/16 v1, 0x214

    const-string v2, "PH"

    aput-object v2, v0, v1

    const/16 v1, 0x215

    const-string v2, "Philippines"

    aput-object v2, v0, v1

    const/16 v1, 0x216

    const-string v2, "PCN"

    aput-object v2, v0, v1

    const/16 v1, 0x217

    const-string v2, "PN"

    aput-object v2, v0, v1

    const/16 v1, 0x218

    const-string v2, "Pitcairn"

    aput-object v2, v0, v1

    const/16 v1, 0x219

    const-string v2, "POL"

    aput-object v2, v0, v1

    const/16 v1, 0x21a

    const-string v2, "PL"

    aput-object v2, v0, v1

    const/16 v1, 0x21b

    const-string v2, "Poland"

    aput-object v2, v0, v1

    const/16 v1, 0x21c

    const-string v2, "PRT"

    aput-object v2, v0, v1

    const/16 v1, 0x21d

    const-string v2, "PT"

    aput-object v2, v0, v1

    const/16 v1, 0x21e

    const-string v2, "Portugal"

    aput-object v2, v0, v1

    const/16 v1, 0x21f

    const-string v2, "PRI"

    aput-object v2, v0, v1

    const/16 v1, 0x220

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x221

    const-string v2, "Puerto Rico"

    aput-object v2, v0, v1

    const/16 v1, 0x222

    const-string v2, "QAT"

    aput-object v2, v0, v1

    const/16 v1, 0x223

    const-string v2, "QA"

    aput-object v2, v0, v1

    const/16 v1, 0x224

    const-string v2, "Qatar"

    aput-object v2, v0, v1

    const/16 v1, 0x225

    const-string v2, "REU"

    aput-object v2, v0, v1

    const/16 v1, 0x226

    const-string v2, "RE"

    aput-object v2, v0, v1

    const/16 v1, 0x227

    const-string v2, "Reunion"

    aput-object v2, v0, v1

    const/16 v1, 0x228

    const-string v2, "ROU"

    aput-object v2, v0, v1

    const/16 v1, 0x229

    const-string v2, "RO"

    aput-object v2, v0, v1

    const/16 v1, 0x22a

    const-string v2, "Romania"

    aput-object v2, v0, v1

    const/16 v1, 0x22b

    const-string v2, "RUS"

    aput-object v2, v0, v1

    const/16 v1, 0x22c

    const-string v2, "RU"

    aput-object v2, v0, v1

    const/16 v1, 0x22d

    const-string v2, "Russian Federation"

    aput-object v2, v0, v1

    const/16 v1, 0x22e

    const-string v2, "RWA"

    aput-object v2, v0, v1

    const/16 v1, 0x22f

    const-string v2, "RW"

    aput-object v2, v0, v1

    const/16 v1, 0x230

    const-string v2, "Rwanda"

    aput-object v2, v0, v1

    const/16 v1, 0x231

    const-string v2, "SHN"

    aput-object v2, v0, v1

    const/16 v1, 0x232

    const-string v2, "SH"

    aput-object v2, v0, v1

    const/16 v1, 0x233

    const-string v2, "Saint Helena"

    aput-object v2, v0, v1

    const/16 v1, 0x234

    const-string v2, "KNA"

    aput-object v2, v0, v1

    const/16 v1, 0x235

    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0x236

    const-string v2, "Saint Kitts And Nevis"

    aput-object v2, v0, v1

    const/16 v1, 0x237

    const-string v2, "LCA"

    aput-object v2, v0, v1

    const/16 v1, 0x238

    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0x239

    const-string v2, "Saint Lucia"

    aput-object v2, v0, v1

    const/16 v1, 0x23a

    const-string v2, "SPM"

    aput-object v2, v0, v1

    const/16 v1, 0x23b

    const-string v2, "PM"

    aput-object v2, v0, v1

    const/16 v1, 0x23c

    const-string v2, "Saint Pierre And Miquelon"

    aput-object v2, v0, v1

    const/16 v1, 0x23d

    const-string v2, "VCT"

    aput-object v2, v0, v1

    const/16 v1, 0x23e

    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0x23f

    const-string v2, "Saint Vincent And The Grenadines"

    aput-object v2, v0, v1

    const/16 v1, 0x240

    const-string v2, "WSM"

    aput-object v2, v0, v1

    const/16 v1, 0x241

    const-string v2, "WS"

    aput-object v2, v0, v1

    const/16 v1, 0x242

    const-string v2, "Samoa (Formerly Western Samoa)"

    aput-object v2, v0, v1

    const/16 v1, 0x243

    const-string v2, "SMR"

    aput-object v2, v0, v1

    const/16 v1, 0x244

    const-string v2, "SM"

    aput-object v2, v0, v1

    const/16 v1, 0x245

    const-string v2, "San Marino (Republic Of)"

    aput-object v2, v0, v1

    const/16 v1, 0x246

    const-string v2, "STP"

    aput-object v2, v0, v1

    const/16 v1, 0x247

    const-string v2, "ST"

    aput-object v2, v0, v1

    const/16 v1, 0x248

    const-string v2, "Sao Tome And Principe"

    aput-object v2, v0, v1

    const/16 v1, 0x249

    const-string v2, "SAU"

    aput-object v2, v0, v1

    const/16 v1, 0x24a

    const-string v2, "SA"

    aput-object v2, v0, v1

    const/16 v1, 0x24b

    const-string v2, "Saudi Arabia (Kingdom Of Saudi Arabia)"

    aput-object v2, v0, v1

    const/16 v1, 0x24c

    const-string v2, "SEN"

    aput-object v2, v0, v1

    const/16 v1, 0x24d

    const-string v2, "SN"

    aput-object v2, v0, v1

    const/16 v1, 0x24e

    const-string v2, "Senegal"

    aput-object v2, v0, v1

    const/16 v1, 0x24f

    const-string v2, "SRB"

    aput-object v2, v0, v1

    const/16 v1, 0x250

    const-string v2, "RS"

    aput-object v2, v0, v1

    const/16 v1, 0x251

    const-string v2, "Serbia (Republic Of Serbia)"

    aput-object v2, v0, v1

    const/16 v1, 0x252

    const-string v2, "SYC"

    aput-object v2, v0, v1

    const/16 v1, 0x253

    const-string v2, "SC"

    aput-object v2, v0, v1

    const/16 v1, 0x254

    const-string v2, "Seychelles"

    aput-object v2, v0, v1

    const/16 v1, 0x255

    const-string v2, "SLE"

    aput-object v2, v0, v1

    const/16 v1, 0x256

    const-string v2, "SL"

    aput-object v2, v0, v1

    const/16 v1, 0x257

    const-string v2, "Sierra Leone"

    aput-object v2, v0, v1

    const/16 v1, 0x258

    const-string v2, "SGP"

    aput-object v2, v0, v1

    const/16 v1, 0x259

    const-string v2, "SG"

    aput-object v2, v0, v1

    const/16 v1, 0x25a

    const-string v2, "Singapore"

    aput-object v2, v0, v1

    const/16 v1, 0x25b

    const-string v2, "SVK"

    aput-object v2, v0, v1

    const/16 v1, 0x25c

    const-string v2, "SK"

    aput-object v2, v0, v1

    const/16 v1, 0x25d

    const-string v2, "Slovakia (Slovak Republic)"

    aput-object v2, v0, v1

    const/16 v1, 0x25e

    const-string v2, "SVN"

    aput-object v2, v0, v1

    const/16 v1, 0x25f

    const-string v2, "SI"

    aput-object v2, v0, v1

    const/16 v1, 0x260

    const-string v2, "Slovenia"

    aput-object v2, v0, v1

    const/16 v1, 0x261

    const-string v2, "SLB"

    aput-object v2, v0, v1

    const/16 v1, 0x262

    const-string v2, "SB"

    aput-object v2, v0, v1

    const/16 v1, 0x263

    const-string v2, "Solomon Islands"

    aput-object v2, v0, v1

    const/16 v1, 0x264

    const-string v2, "SOM"

    aput-object v2, v0, v1

    const/16 v1, 0x265

    const-string v2, "SO"

    aput-object v2, v0, v1

    const/16 v1, 0x266

    const-string v2, "Somalia"

    aput-object v2, v0, v1

    const/16 v1, 0x267

    const-string v2, "ZAF"

    aput-object v2, v0, v1

    const/16 v1, 0x268

    const-string v2, "ZA"

    aput-object v2, v0, v1

    const/16 v1, 0x269

    const-string v2, "South Africa (Zuid Afrika)"

    aput-object v2, v0, v1

    const/16 v1, 0x26a

    const-string v2, "SGS"

    aput-object v2, v0, v1

    const/16 v1, 0x26b

    const-string v2, "GS"

    aput-object v2, v0, v1

    const/16 v1, 0x26c

    const-string v2, "South Georgia And The South Sandwich Islands"

    aput-object v2, v0, v1

    const/16 v1, 0x26d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x26e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x26f

    const-string v2, "Soviet Union (Internet Code Still Used)"

    aput-object v2, v0, v1

    const/16 v1, 0x270

    const-string v2, "ESP"

    aput-object v2, v0, v1

    const/16 v1, 0x271

    const-string v2, "ES"

    aput-object v2, v0, v1

    const/16 v1, 0x272

    const-string v2, "Spain (Espana)"

    aput-object v2, v0, v1

    const/16 v1, 0x273

    const-string v2, "LKA"

    aput-object v2, v0, v1

    const/16 v1, 0x274

    const-string v2, "LK"

    aput-object v2, v0, v1

    const/16 v1, 0x275

    const-string v2, "Sri Lanka (Formerly Ceylon)"

    aput-object v2, v0, v1

    const/16 v1, 0x276

    const-string v2, "SDN"

    aput-object v2, v0, v1

    const/16 v1, 0x277

    const-string v2, "SD"

    aput-object v2, v0, v1

    const/16 v1, 0x278

    const-string v2, "Sudan"

    aput-object v2, v0, v1

    const/16 v1, 0x279

    const-string v2, "SUR"

    aput-object v2, v0, v1

    const/16 v1, 0x27a

    const-string v2, "SR"

    aput-object v2, v0, v1

    const/16 v1, 0x27b

    const-string v2, "Suriname"

    aput-object v2, v0, v1

    const/16 v1, 0x27c

    const-string v2, "SJM"

    aput-object v2, v0, v1

    const/16 v1, 0x27d

    const-string v2, "SJ"

    aput-object v2, v0, v1

    const/16 v1, 0x27e

    const-string v2, "Svalbard And Jan Mayen"

    aput-object v2, v0, v1

    const/16 v1, 0x27f

    const-string v2, "SWZ"

    aput-object v2, v0, v1

    const/16 v1, 0x280

    const-string v2, "SZ"

    aput-object v2, v0, v1

    const/16 v1, 0x281

    const-string v2, "Swaziland"

    aput-object v2, v0, v1

    const/16 v1, 0x282

    const-string v2, "SWE"

    aput-object v2, v0, v1

    const/16 v1, 0x283

    const-string v2, "SE"

    aput-object v2, v0, v1

    const/16 v1, 0x284

    const-string v2, "Sweden"

    aput-object v2, v0, v1

    const/16 v1, 0x285

    const-string v2, "CHE"

    aput-object v2, v0, v1

    const/16 v1, 0x286

    const-string v2, "CH"

    aput-object v2, v0, v1

    const/16 v1, 0x287

    const-string v2, "Switzerland (Confederation Of Helvetia)"

    aput-object v2, v0, v1

    const/16 v1, 0x288

    const-string v2, "SYR"

    aput-object v2, v0, v1

    const/16 v1, 0x289

    const-string v2, "SY"

    aput-object v2, v0, v1

    const/16 v1, 0x28a

    const-string v2, "Syrian Arab Republic"

    aput-object v2, v0, v1

    const/16 v1, 0x28b

    const-string v2, "TWN"

    aput-object v2, v0, v1

    const/16 v1, 0x28c

    const-string v2, "TW"

    aput-object v2, v0, v1

    const/16 v1, 0x28d

    const-string v2, "Taiwan (\"Chinese Taipei\" For Ioc)"

    aput-object v2, v0, v1

    const/16 v1, 0x28e

    const-string v2, "TJK"

    aput-object v2, v0, v1

    const/16 v1, 0x28f

    const-string v2, "TJ"

    aput-object v2, v0, v1

    const/16 v1, 0x290

    const-string v2, "Tajikistan"

    aput-object v2, v0, v1

    const/16 v1, 0x291

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x292

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x293

    const-string v2, "Tanganyika"

    aput-object v2, v0, v1

    const/16 v1, 0x294

    const-string v2, "TZA"

    aput-object v2, v0, v1

    const/16 v1, 0x295

    const-string v2, "TZ"

    aput-object v2, v0, v1

    const/16 v1, 0x296

    const-string v2, "Tanzania"

    aput-object v2, v0, v1

    const/16 v1, 0x297

    const-string v2, "THA"

    aput-object v2, v0, v1

    const/16 v1, 0x298

    const-string v2, "TH"

    aput-object v2, v0, v1

    const/16 v1, 0x299

    const-string v2, "Thailand"

    aput-object v2, v0, v1

    const/16 v1, 0x29a

    const-string v2, "TLS"

    aput-object v2, v0, v1

    const/16 v1, 0x29b

    const-string v2, "TL"

    aput-object v2, v0, v1

    const/16 v1, 0x29c

    const-string v2, "Timor-Leste (Formerly East Timor)"

    aput-object v2, v0, v1

    const/16 v1, 0x29d

    const-string v2, "TGO"

    aput-object v2, v0, v1

    const/16 v1, 0x29e

    const-string v2, "TG"

    aput-object v2, v0, v1

    const/16 v1, 0x29f

    const-string v2, "Togo"

    aput-object v2, v0, v1

    const/16 v1, 0x2a0

    const-string v2, "TKL"

    aput-object v2, v0, v1

    const/16 v1, 0x2a1

    const-string v2, "TK"

    aput-object v2, v0, v1

    const/16 v1, 0x2a2

    const-string v2, "Tokelau"

    aput-object v2, v0, v1

    const/16 v1, 0x2a3

    const-string v2, "TON"

    aput-object v2, v0, v1

    const/16 v1, 0x2a4

    const-string v2, "TO"

    aput-object v2, v0, v1

    const/16 v1, 0x2a5

    const-string v2, "Tonga"

    aput-object v2, v0, v1

    const/16 v1, 0x2a6

    const-string v2, "TTO"

    aput-object v2, v0, v1

    const/16 v1, 0x2a7

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x2a8

    const-string v2, "Trinidad And Tobago"

    aput-object v2, v0, v1

    const/16 v1, 0x2a9

    const-string v2, "TUN"

    aput-object v2, v0, v1

    const/16 v1, 0x2aa

    const-string v2, "TN"

    aput-object v2, v0, v1

    const/16 v1, 0x2ab

    const-string v2, "Tunisia"

    aput-object v2, v0, v1

    const/16 v1, 0x2ac

    const-string v2, "TUR"

    aput-object v2, v0, v1

    const/16 v1, 0x2ad

    const-string v2, "TR"

    aput-object v2, v0, v1

    const/16 v1, 0x2ae

    const-string v2, "Turkey"

    aput-object v2, v0, v1

    const/16 v1, 0x2af

    const-string v2, "TKM"

    aput-object v2, v0, v1

    const/16 v1, 0x2b0

    const-string v2, "TM"

    aput-object v2, v0, v1

    const/16 v1, 0x2b1

    const-string v2, "Turkmenistan"

    aput-object v2, v0, v1

    const/16 v1, 0x2b2

    const-string v2, "TCA"

    aput-object v2, v0, v1

    const/16 v1, 0x2b3

    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0x2b4

    const-string v2, "Turks And Caicos Islands"

    aput-object v2, v0, v1

    const/16 v1, 0x2b5

    const-string v2, "TUV"

    aput-object v2, v0, v1

    const/16 v1, 0x2b6

    const-string v2, "TV"

    aput-object v2, v0, v1

    const/16 v1, 0x2b7

    const-string v2, "Tuvalu"

    aput-object v2, v0, v1

    const/16 v1, 0x2b8

    const-string v2, "UGA"

    aput-object v2, v0, v1

    const/16 v1, 0x2b9

    const-string v2, "UG"

    aput-object v2, v0, v1

    const/16 v1, 0x2ba

    const-string v2, "Uganda"

    aput-object v2, v0, v1

    const/16 v1, 0x2bb

    const-string v2, "UKR"

    aput-object v2, v0, v1

    const/16 v1, 0x2bc

    const-string v2, "UA"

    aput-object v2, v0, v1

    const/16 v1, 0x2bd

    const-string v2, "Ukraine"

    aput-object v2, v0, v1

    const/16 v1, 0x2be

    const-string v2, "ARE"

    aput-object v2, v0, v1

    const/16 v1, 0x2bf

    const-string v2, "AE"

    aput-object v2, v0, v1

    const/16 v1, 0x2c0

    const-string v2, "United Arab Emirates"

    aput-object v2, v0, v1

    const/16 v1, 0x2c1

    const-string v2, "GBR"

    aput-object v2, v0, v1

    const/16 v1, 0x2c2

    const-string v2, "GB"

    aput-object v2, v0, v1

    const/16 v1, 0x2c3

    const-string v2, "United Kingdom (Great Britain)"

    aput-object v2, v0, v1

    const/16 v1, 0x2c4

    const-string v2, "USA"

    aput-object v2, v0, v1

    const/16 v1, 0x2c5

    const-string v2, "US"

    aput-object v2, v0, v1

    const/16 v1, 0x2c6

    const-string v2, "United States"

    aput-object v2, v0, v1

    const/16 v1, 0x2c7

    const-string v2, "UMI"

    aput-object v2, v0, v1

    const/16 v1, 0x2c8

    const-string v2, "UM"

    aput-object v2, v0, v1

    const/16 v1, 0x2c9

    const-string v2, "United States Minor Outlying Islands"

    aput-object v2, v0, v1

    const/16 v1, 0x2ca

    const-string v2, "URY"

    aput-object v2, v0, v1

    const/16 v1, 0x2cb

    const-string v2, "UY"

    aput-object v2, v0, v1

    const/16 v1, 0x2cc

    const-string v2, "Uruguay"

    aput-object v2, v0, v1

    const/16 v1, 0x2cd

    const-string v2, "UZB"

    aput-object v2, v0, v1

    const/16 v1, 0x2ce

    const-string v2, "UZ"

    aput-object v2, v0, v1

    const/16 v1, 0x2cf

    const-string v2, "Uzbekistan"

    aput-object v2, v0, v1

    const/16 v1, 0x2d0

    const-string v2, "VUT"

    aput-object v2, v0, v1

    const/16 v1, 0x2d1

    const-string v2, "VU"

    aput-object v2, v0, v1

    const/16 v1, 0x2d2

    const-string v2, "Vanuatu"

    aput-object v2, v0, v1

    const/16 v1, 0x2d3

    const-string v2, "VAT"

    aput-object v2, v0, v1

    const/16 v1, 0x2d4

    const-string v2, "VA"

    aput-object v2, v0, v1

    const/16 v1, 0x2d5

    const-string v2, "Vatican City (Holy See)"

    aput-object v2, v0, v1

    const/16 v1, 0x2d6

    const-string v2, "VEN"

    aput-object v2, v0, v1

    const/16 v1, 0x2d7

    const-string v2, "VE"

    aput-object v2, v0, v1

    const/16 v1, 0x2d8

    const-string v2, "Venezuela"

    aput-object v2, v0, v1

    const/16 v1, 0x2d9

    const-string v2, "VNM"

    aput-object v2, v0, v1

    const/16 v1, 0x2da

    const-string v2, "VN"

    aput-object v2, v0, v1

    const/16 v1, 0x2db

    const-string v2, "Viet Nam"

    aput-object v2, v0, v1

    const/16 v1, 0x2dc

    const-string v2, "VGB,VG"

    aput-object v2, v0, v1

    const/16 v1, 0x2dd

    const-string v2, "Virgin Islands"

    aput-object v2, v0, v1

    const/16 v1, 0x2de

    const-string v2, " British"

    aput-object v2, v0, v1

    const/16 v1, 0x2df

    const-string v2, "VIR,VI"

    aput-object v2, v0, v1

    const/16 v1, 0x2e0

    const-string v2, "Virgin Islands"

    aput-object v2, v0, v1

    const/16 v1, 0x2e1

    const-string v2, " U.S."

    aput-object v2, v0, v1

    const/16 v1, 0x2e2

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2e3

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2e4

    const-string v2, "Yugoslavia (Internet Code Still Used)"

    aput-object v2, v0, v1

    const/16 v1, 0x2e5

    const-string v2, "WLF"

    aput-object v2, v0, v1

    const/16 v1, 0x2e6

    const-string v2, "WF"

    aput-object v2, v0, v1

    const/16 v1, 0x2e7

    const-string v2, "Wallis And Futuna"

    aput-object v2, v0, v1

    const/16 v1, 0x2e8

    const-string v2, "ESH"

    aput-object v2, v0, v1

    const/16 v1, 0x2e9

    const-string v2, "EH"

    aput-object v2, v0, v1

    const/16 v1, 0x2ea

    const-string v2, "Western Sahara (Formerly Spanish Sahara)"

    aput-object v2, v0, v1

    const/16 v1, 0x2eb

    const-string v2, "YEM"

    aput-object v2, v0, v1

    const/16 v1, 0x2ec

    const-string v2, "YE"

    aput-object v2, v0, v1

    const/16 v1, 0x2ed

    const-string v2, "Yemen (Yemen Arab Republic)"

    aput-object v2, v0, v1

    const/16 v1, 0x2ee

    const-string v2, "ZMB"

    aput-object v2, v0, v1

    const/16 v1, 0x2ef

    const-string v2, "ZM"

    aput-object v2, v0, v1

    const/16 v1, 0x2f0

    const-string v2, "Zambia (Formerly Northern Rhodesia)"

    aput-object v2, v0, v1

    const/16 v1, 0x2f1

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2f2

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2f3

    const-string v2, "Zanzibar"

    aput-object v2, v0, v1

    const/16 v1, 0x2f4

    const-string v2, "ZWE"

    aput-object v2, v0, v1

    const/16 v1, 0x2f5

    const-string v2, "ZW"

    aput-object v2, v0, v1

    const/16 v1, 0x2f6

    const-string v2, "Zimbabwe"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vlingo/client/core/deviceinfo/CountryCodes;->COUNTRY_MAP_SRC:[Ljava/lang/String;

    .line 268
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/vlingo/client/core/deviceinfo/CountryCodes;->iso3ToIso2CountryMap:Ljava/util/Hashtable;

    .line 269
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/vlingo/client/core/deviceinfo/CountryCodes;->iso2ToIso3CountryMap:Ljava/util/Hashtable;

    .line 271
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/core/deviceinfo/CountryCodes;->instance:Lcom/vlingo/client/core/deviceinfo/CountryCodes;

    return-void
.end method

.method protected constructor <init>()V
    .registers 6

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_4
    sget-object v3, Lcom/vlingo/client/core/deviceinfo/CountryCodes;->COUNTRY_MAP_SRC:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_30

    .line 282
    sget-object v3, Lcom/vlingo/client/core/deviceinfo/CountryCodes;->COUNTRY_MAP_SRC:[Ljava/lang/String;

    aget-object v2, v3, v0

    .line 283
    .local v2, iso3:Ljava/lang/String;
    sget-object v3, Lcom/vlingo/client/core/deviceinfo/CountryCodes;->COUNTRY_MAP_SRC:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    aget-object v1, v3, v4

    .line 284
    .local v1, iso2:Ljava/lang/String;
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2d

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2d

    .line 285
    sget-object v3, Lcom/vlingo/client/core/deviceinfo/CountryCodes;->iso3ToIso2CountryMap:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v3, Lcom/vlingo/client/core/deviceinfo/CountryCodes;->iso2ToIso3CountryMap:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_2d
    add-int/lit8 v0, v0, 0x3

    goto :goto_4

    .line 289
    .end local v1           #iso2:Ljava/lang/String;
    .end local v2           #iso3:Ljava/lang/String;
    :cond_30
    return-void
.end method

.method public static getInstance()Lcom/vlingo/client/core/deviceinfo/CountryCodes;
    .registers 1

    .prologue
    .line 274
    sget-object v0, Lcom/vlingo/client/core/deviceinfo/CountryCodes;->instance:Lcom/vlingo/client/core/deviceinfo/CountryCodes;

    if-nez v0, :cond_b

    .line 275
    new-instance v0, Lcom/vlingo/client/core/deviceinfo/CountryCodes;

    invoke-direct {v0}, Lcom/vlingo/client/core/deviceinfo/CountryCodes;-><init>()V

    sput-object v0, Lcom/vlingo/client/core/deviceinfo/CountryCodes;->instance:Lcom/vlingo/client/core/deviceinfo/CountryCodes;

    .line 277
    :cond_b
    sget-object v0, Lcom/vlingo/client/core/deviceinfo/CountryCodes;->instance:Lcom/vlingo/client/core/deviceinfo/CountryCodes;

    return-object v0
.end method


# virtual methods
.method public getIso2FromIso3(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "iso3"

    .prologue
    .line 292
    sget-object v0, Lcom/vlingo/client/core/deviceinfo/CountryCodes;->iso3ToIso2CountryMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIso3FromIso2(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "iso2"

    .prologue
    .line 296
    sget-object v0, Lcom/vlingo/client/core/deviceinfo/CountryCodes;->iso2ToIso3CountryMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
