.class public Lcom/google/tts/CheckVoiceData;
.super Landroid/app/Activity;
.source "CheckVoiceData.java"


# static fields
.field private static final ESPEAK_DATA_PATH:Ljava/lang/String;

.field private static final baseDataFiles:[Ljava/lang/String;

.field private static final supportedLanguages:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 39
    const-string v1, "/espeak-data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tts/CheckVoiceData;->ESPEAK_DATA_PATH:Ljava/lang/String;

    .line 41
    const/16 v0, 0xab

    new-array v0, v0, [Ljava/lang/String;

    .line 42
    const-string v1, "af_dict"

    aput-object v1, v0, v3

    const-string v1, "config"

    aput-object v1, v0, v4

    const-string v1, "cs_dict"

    aput-object v1, v0, v5

    const-string v1, "cy_dict"

    aput-object v1, v0, v6

    const-string v1, "de_dict"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "el_dict"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "en_dict"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eo_dict"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 43
    const-string v2, "es_dict"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fi_dict"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "fr_dict"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "grc_dict"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "hbs_dict"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hi_dict"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "hu_dict"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 44
    const-string v2, "id_dict"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "is_dict"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "it_dict"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "jbo_dict"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ku_dict"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "la_dict"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "mk_dict"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 45
    const-string v2, "nl_dict"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "no_dict"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "phondata"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "phonindex"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "phontab"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "pl_dict"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "pt_dict"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 46
    const-string v2, "ro_dict"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "ru_dict"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "sk_dict"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "sv_dict"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "sw_dict"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "ta_dict"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "tr_dict"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "vi_dict"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 47
    const-string v2, "zh_dict"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "zhy_dict"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "mbrola/dummyfile"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "mbrola_ph/af1_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 48
    const-string v2, "mbrola_ph/ca1_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "mbrola_ph/cr1_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "mbrola_ph/cs_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 49
    const-string v2, "mbrola_ph/de2_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "mbrola_ph/de4_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "mbrola_ph/de6_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 50
    const-string v2, "mbrola_ph/en1_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "mbrola_ph/es_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "mbrola_ph/es4_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 51
    const-string v2, "mbrola_ph/fr1_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "mbrola_ph/gr2_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "mbrola_ph/grc-de6_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 52
    const-string v2, "mbrola_ph/hu1_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "mbrola_ph/id1_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "mbrola_ph/in1_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 53
    const-string v2, "mbrola_ph/it3_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "mbrola_ph/la1_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "mbrola_ph/nl_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 54
    const-string v2, "mbrola_ph/pl1_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "mbrola_ph/pt_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "mbrola_ph/ptbr_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    .line 55
    const-string v2, "mbrola_ph/ptbr4_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "mbrola_ph/ro1_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "mbrola_ph/sv_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    .line 56
    const-string v2, "mbrola_ph/sv2_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "mbrola_ph/us_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "mbrola_ph/us3_phtrans"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    .line 57
    const-string v2, "soundicons/dummyfile"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "voices/af"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "voices/bs"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "voices/cs"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "voices/cy"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    .line 58
    const-string v2, "voices/de"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "voices/default"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "voices/el"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "voices/eo"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "voices/es"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "voices/es-la"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    .line 59
    const-string v2, "voices/fi"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "voices/fr"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "voices/fr-be"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "voices/grc"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "voices/hi"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "voices/hr"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    .line 60
    const-string v2, "voices/hu"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "voices/id"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "voices/is"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "voices/it"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "voices/jbo"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "voices/ku"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    .line 61
    const-string v2, "voices/la"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "voices/mk"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "voices/nl"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "voices/no"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "voices/pl"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "voices/pt"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    .line 62
    const-string v2, "voices/pt-pt"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "voices/ro"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "voices/ru"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "voices/sk"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "voices/sr"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "voices/sv"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    .line 63
    const-string v2, "voices/sw"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "voices/ta"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "voices/tr"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "voices/vi"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "voices/zh"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "voices/zhy"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    .line 64
    const-string v2, "voices/!v/croak"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "voices/!v/f1"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "voices/!v/f2"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "voices/!v/f3"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "voices/!v/f4"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    .line 65
    const-string v2, "voices/!v/m1"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "voices/!v/m2"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "voices/!v/m3"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "voices/!v/m4"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "voices/!v/m5"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    .line 66
    const-string v2, "voices/!v/m6"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "voices/!v/whisper"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "voices/en/en"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "voices/en/en-n"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    .line 67
    const-string v2, "voices/en/en-r"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "voices/en/en-rp"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "voices/en/en-sc"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "voices/en/en-wi"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    .line 68
    const-string v2, "voices/en/en-wm"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "voices/mb/mb-af1"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "voices/mb/mb-af1-en"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "voices/mb/mb-br1"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    .line 69
    const-string v2, "voices/mb/mb-br3"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "voices/mb/mb-br4"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "voices/mb/mb-cr1"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "voices/mb/mb-cz2"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    .line 70
    const-string v2, "voices/mb/mb-de2"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "voices/mb/mb-de4"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "voices/mb/mb-de4-en"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "voices/mb/mb-de5"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    .line 71
    const-string v2, "voices/mb/mb-de5-en"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "voices/mb/mb-de6"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "voices/mb/mb-de6-grc"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "voices/mb/mb-de7"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    .line 72
    const-string v2, "voices/mb/mb-en1"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "voices/mb/mb-es1"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "voices/mb/mb-es2"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "voices/mb/mb-fr1"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    .line 73
    const-string v2, "voices/mb/mb-fr1-en"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "voices/mb/mb-fr4"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "voices/mb/mb-fr4-en"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "voices/mb/mb-gr2"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    .line 74
    const-string v2, "voices/mb/mb-gr2-en"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "voices/mb/mb-hu1"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "voices/mb/mb-hu1-en"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "voices/mb/mb-id1"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    .line 75
    const-string v2, "voices/mb/mb-it3"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "voices/mb/mb-it4"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "voices/mb/mb-la1"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "voices/mb/mb-nl2"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    .line 76
    const-string v2, "voices/mb/mb-nl2-en"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "voices/mb/mb-pl1"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "voices/mb/mb-pl1-en"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "voices/mb/mb-ro1"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    .line 77
    const-string v2, "voices/mb/mb-ro1-en"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "voices/mb/mb-sw1"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "voices/mb/mb-sw1-en"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "voices/mb/mb-sw2"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    .line 78
    const-string v2, "voices/mb/mb-sw2-en"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "voices/mb/mb-us1"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "voices/mb/mb-us2"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "voices/mb/mb-us3"

    aput-object v2, v0, v1

    .line 41
    sput-object v0, Lcom/google/tts/CheckVoiceData;->baseDataFiles:[Ljava/lang/String;

    .line 81
    const/16 v0, 0x25

    new-array v0, v0, [Ljava/lang/String;

    .line 82
    const-string v1, "afr"

    aput-object v1, v0, v3

    const-string v1, "bos"

    aput-object v1, v0, v4

    const-string v1, "zho"

    aput-object v1, v0, v5

    const-string v1, "hrv"

    aput-object v1, v0, v6

    const-string v1, "ces"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "nld"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "eng"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eng-USA"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "eng-GBR"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 83
    const-string v2, "epo"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "fin"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "fra"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "deu"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ell"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "hin"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "hun"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "isl"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ind"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ita"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "kur"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "lat"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 84
    const-string v2, "mkd"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "nor"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "pol"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "por"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ron"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "rus"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "srp"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "slk"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "spa"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "spa-MEX"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "swa"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "swe"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 85
    const-string v2, "tam"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "tur"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "vie"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "cym"

    aput-object v2, v0, v1

    .line 81
    sput-object v0, Lcom/google/tts/CheckVoiceData;->supportedLanguages:[Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private fileExists(Ljava/lang/String;)Z
    .registers 6
    .parameter "filename"

    .prologue
    .line 128
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/google/tts/CheckVoiceData;->ESPEAK_DATA_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, tempFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/google/tts/CheckVoiceData;->ESPEAK_DATA_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, tempFileSys:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 131
    const/4 v2, 0x0

    .line 133
    :goto_3d
    return v2

    :cond_3e
    const/4 v2, 0x1

    goto :goto_3d
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const/4 v3, 0x1

    .line 93
    .local v3, result:I
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v4, returnData:Landroid/content/Intent;
    const-string v6, "dataRoot"

    sget-object v7, Lcom/google/tts/CheckVoiceData;->ESPEAK_DATA_PATH:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v6, "dataFiles"

    sget-object v7, Lcom/google/tts/CheckVoiceData;->baseDataFiles:[Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v6, "dataFilesInfo"

    sget-object v7, Lcom/google/tts/CheckVoiceData;->baseDataFiles:[Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v5, unavailable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 104
    .local v2, passedAllChecks:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2a
    sget-object v6, Lcom/google/tts/CheckVoiceData;->baseDataFiles:[Ljava/lang/String;

    array-length v6, v6

    if-lt v1, v6, :cond_48

    .line 111
    :goto_2f
    if-eqz v2, :cond_61

    .line 112
    const/4 v1, 0x0

    :goto_32
    sget-object v6, Lcom/google/tts/CheckVoiceData;->supportedLanguages:[Ljava/lang/String;

    array-length v6, v6

    if-lt v1, v6, :cond_57

    .line 121
    :cond_37
    const-string v6, "availableVoices"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 122
    const-string v6, "unavailableVoices"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v3, v4}, Lcom/google/tts/CheckVoiceData;->setResult(ILandroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Lcom/google/tts/CheckVoiceData;->finish()V

    .line 125
    return-void

    .line 105
    :cond_48
    sget-object v6, Lcom/google/tts/CheckVoiceData;->baseDataFiles:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-direct {p0, v6}, Lcom/google/tts/CheckVoiceData;->fileExists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_54

    .line 106
    const/4 v2, 0x0

    .line 107
    goto :goto_2f

    .line 104
    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 113
    :cond_57
    sget-object v6, Lcom/google/tts/CheckVoiceData;->supportedLanguages:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 116
    :cond_61
    const/4 v1, 0x0

    :goto_62
    sget-object v6, Lcom/google/tts/CheckVoiceData;->supportedLanguages:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_37

    .line 117
    sget-object v6, Lcom/google/tts/CheckVoiceData;->supportedLanguages:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_62
.end method
