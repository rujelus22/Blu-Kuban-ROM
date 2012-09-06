.class public Lcom/google/tts/ConfigurationManager;
.super Landroid/app/Activity;
.source "ConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tts/ConfigurationManager$dataDownloader;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static allFilesExist()Z
    .registers 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 67
    const-string v4, "/sdcard/espeak-data/"

    .line 68
    .local v4, espeakDataDirStr:Ljava/lang/String;
    const/16 v10, 0xab

    new-array v0, v10, [Ljava/lang/String;

    .line 69
    const-string v10, "af_dict"

    aput-object v10, v0, v8

    const-string v10, "config"

    aput-object v10, v0, v9

    const/4 v10, 0x2

    const-string v11, "cs_dict"

    aput-object v11, v0, v10

    const/4 v10, 0x3

    const-string v11, "cy_dict"

    aput-object v11, v0, v10

    const/4 v10, 0x4

    const-string v11, "de_dict"

    aput-object v11, v0, v10

    const/4 v10, 0x5

    const-string v11, "el_dict"

    aput-object v11, v0, v10

    const/4 v10, 0x6

    const-string v11, "en_dict"

    aput-object v11, v0, v10

    const/4 v10, 0x7

    .line 70
    const-string v11, "eo_dict"

    aput-object v11, v0, v10

    const/16 v10, 0x8

    const-string v11, "es_dict"

    aput-object v11, v0, v10

    const/16 v10, 0x9

    const-string v11, "fi_dict"

    aput-object v11, v0, v10

    const/16 v10, 0xa

    const-string v11, "fr_dict"

    aput-object v11, v0, v10

    const/16 v10, 0xb

    const-string v11, "grc_dict"

    aput-object v11, v0, v10

    const/16 v10, 0xc

    const-string v11, "hbs_dict"

    aput-object v11, v0, v10

    const/16 v10, 0xd

    const-string v11, "hi_dict"

    aput-object v11, v0, v10

    const/16 v10, 0xe

    .line 71
    const-string v11, "hu_dict"

    aput-object v11, v0, v10

    const/16 v10, 0xf

    const-string v11, "id_dict"

    aput-object v11, v0, v10

    const/16 v10, 0x10

    const-string v11, "is_dict"

    aput-object v11, v0, v10

    const/16 v10, 0x11

    const-string v11, "it_dict"

    aput-object v11, v0, v10

    const/16 v10, 0x12

    const-string v11, "jbo_dict"

    aput-object v11, v0, v10

    const/16 v10, 0x13

    const-string v11, "ku_dict"

    aput-object v11, v0, v10

    const/16 v10, 0x14

    const-string v11, "la_dict"

    aput-object v11, v0, v10

    const/16 v10, 0x15

    .line 72
    const-string v11, "mk_dict"

    aput-object v11, v0, v10

    const/16 v10, 0x16

    const-string v11, "nl_dict"

    aput-object v11, v0, v10

    const/16 v10, 0x17

    const-string v11, "no_dict"

    aput-object v11, v0, v10

    const/16 v10, 0x18

    const-string v11, "phondata"

    aput-object v11, v0, v10

    const/16 v10, 0x19

    const-string v11, "phonindex"

    aput-object v11, v0, v10

    const/16 v10, 0x1a

    const-string v11, "phontab"

    aput-object v11, v0, v10

    const/16 v10, 0x1b

    const-string v11, "pl_dict"

    aput-object v11, v0, v10

    const/16 v10, 0x1c

    .line 73
    const-string v11, "pt_dict"

    aput-object v11, v0, v10

    const/16 v10, 0x1d

    const-string v11, "ro_dict"

    aput-object v11, v0, v10

    const/16 v10, 0x1e

    const-string v11, "ru_dict"

    aput-object v11, v0, v10

    const/16 v10, 0x1f

    const-string v11, "sk_dict"

    aput-object v11, v0, v10

    const/16 v10, 0x20

    const-string v11, "sv_dict"

    aput-object v11, v0, v10

    const/16 v10, 0x21

    const-string v11, "sw_dict"

    aput-object v11, v0, v10

    const/16 v10, 0x22

    const-string v11, "ta_dict"

    aput-object v11, v0, v10

    const/16 v10, 0x23

    .line 74
    const-string v11, "tr_dict"

    aput-object v11, v0, v10

    const/16 v10, 0x24

    const-string v11, "vi_dict"

    aput-object v11, v0, v10

    const/16 v10, 0x25

    const-string v11, "zh_dict"

    aput-object v11, v0, v10

    const/16 v10, 0x26

    const-string v11, "zhy_dict"

    aput-object v11, v0, v10

    const/16 v10, 0x27

    const-string v11, "mbrola/dummyfile"

    aput-object v11, v0, v10

    const/16 v10, 0x28

    .line 75
    const-string v11, "mbrola_ph/af1_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x29

    const-string v11, "mbrola_ph/ca1_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x2a

    const-string v11, "mbrola_ph/cr1_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x2b

    .line 76
    const-string v11, "mbrola_ph/cs_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x2c

    const-string v11, "mbrola_ph/de2_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x2d

    const-string v11, "mbrola_ph/de4_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x2e

    .line 77
    const-string v11, "mbrola_ph/de6_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x2f

    const-string v11, "mbrola_ph/en1_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x30

    const-string v11, "mbrola_ph/es_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x31

    .line 78
    const-string v11, "mbrola_ph/es4_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x32

    const-string v11, "mbrola_ph/fr1_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x33

    const-string v11, "mbrola_ph/gr2_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x34

    .line 79
    const-string v11, "mbrola_ph/grc-de6_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x35

    const-string v11, "mbrola_ph/hu1_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x36

    const-string v11, "mbrola_ph/id1_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x37

    .line 80
    const-string v11, "mbrola_ph/in1_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x38

    const-string v11, "mbrola_ph/it3_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x39

    const-string v11, "mbrola_ph/la1_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x3a

    .line 81
    const-string v11, "mbrola_ph/nl_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x3b

    const-string v11, "mbrola_ph/pl1_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x3c

    const-string v11, "mbrola_ph/pt_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x3d

    .line 82
    const-string v11, "mbrola_ph/ptbr_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x3e

    const-string v11, "mbrola_ph/ptbr4_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x3f

    const-string v11, "mbrola_ph/ro1_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x40

    .line 83
    const-string v11, "mbrola_ph/sv_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x41

    const-string v11, "mbrola_ph/sv2_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x42

    const-string v11, "mbrola_ph/us_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x43

    .line 84
    const-string v11, "mbrola_ph/us3_phtrans"

    aput-object v11, v0, v10

    const/16 v10, 0x44

    const-string v11, "soundicons/dummyfile"

    aput-object v11, v0, v10

    const/16 v10, 0x45

    const-string v11, "voices/af"

    aput-object v11, v0, v10

    const/16 v10, 0x46

    const-string v11, "voices/bs"

    aput-object v11, v0, v10

    const/16 v10, 0x47

    .line 85
    const-string v11, "voices/cs"

    aput-object v11, v0, v10

    const/16 v10, 0x48

    const-string v11, "voices/cy"

    aput-object v11, v0, v10

    const/16 v10, 0x49

    const-string v11, "voices/de"

    aput-object v11, v0, v10

    const/16 v10, 0x4a

    const-string v11, "voices/default"

    aput-object v11, v0, v10

    const/16 v10, 0x4b

    const-string v11, "voices/el"

    aput-object v11, v0, v10

    const/16 v10, 0x4c

    const-string v11, "voices/eo"

    aput-object v11, v0, v10

    const/16 v10, 0x4d

    .line 86
    const-string v11, "voices/es"

    aput-object v11, v0, v10

    const/16 v10, 0x4e

    const-string v11, "voices/es-la"

    aput-object v11, v0, v10

    const/16 v10, 0x4f

    const-string v11, "voices/fi"

    aput-object v11, v0, v10

    const/16 v10, 0x50

    const-string v11, "voices/fr"

    aput-object v11, v0, v10

    const/16 v10, 0x51

    const-string v11, "voices/fr-be"

    aput-object v11, v0, v10

    const/16 v10, 0x52

    .line 87
    const-string v11, "voices/grc"

    aput-object v11, v0, v10

    const/16 v10, 0x53

    const-string v11, "voices/hi"

    aput-object v11, v0, v10

    const/16 v10, 0x54

    const-string v11, "voices/hr"

    aput-object v11, v0, v10

    const/16 v10, 0x55

    const-string v11, "voices/hu"

    aput-object v11, v0, v10

    const/16 v10, 0x56

    const-string v11, "voices/id"

    aput-object v11, v0, v10

    const/16 v10, 0x57

    const-string v11, "voices/is"

    aput-object v11, v0, v10

    const/16 v10, 0x58

    .line 88
    const-string v11, "voices/it"

    aput-object v11, v0, v10

    const/16 v10, 0x59

    const-string v11, "voices/jbo"

    aput-object v11, v0, v10

    const/16 v10, 0x5a

    const-string v11, "voices/ku"

    aput-object v11, v0, v10

    const/16 v10, 0x5b

    const-string v11, "voices/la"

    aput-object v11, v0, v10

    const/16 v10, 0x5c

    const-string v11, "voices/mk"

    aput-object v11, v0, v10

    const/16 v10, 0x5d

    const-string v11, "voices/nl"

    aput-object v11, v0, v10

    const/16 v10, 0x5e

    .line 89
    const-string v11, "voices/no"

    aput-object v11, v0, v10

    const/16 v10, 0x5f

    const-string v11, "voices/pl"

    aput-object v11, v0, v10

    const/16 v10, 0x60

    const-string v11, "voices/pt"

    aput-object v11, v0, v10

    const/16 v10, 0x61

    const-string v11, "voices/pt-pt"

    aput-object v11, v0, v10

    const/16 v10, 0x62

    const-string v11, "voices/ro"

    aput-object v11, v0, v10

    const/16 v10, 0x63

    const-string v11, "voices/ru"

    aput-object v11, v0, v10

    const/16 v10, 0x64

    .line 90
    const-string v11, "voices/sk"

    aput-object v11, v0, v10

    const/16 v10, 0x65

    const-string v11, "voices/sr"

    aput-object v11, v0, v10

    const/16 v10, 0x66

    const-string v11, "voices/sv"

    aput-object v11, v0, v10

    const/16 v10, 0x67

    const-string v11, "voices/sw"

    aput-object v11, v0, v10

    const/16 v10, 0x68

    const-string v11, "voices/ta"

    aput-object v11, v0, v10

    const/16 v10, 0x69

    const-string v11, "voices/tr"

    aput-object v11, v0, v10

    const/16 v10, 0x6a

    .line 91
    const-string v11, "voices/vi"

    aput-object v11, v0, v10

    const/16 v10, 0x6b

    const-string v11, "voices/zh"

    aput-object v11, v0, v10

    const/16 v10, 0x6c

    const-string v11, "voices/zhy"

    aput-object v11, v0, v10

    const/16 v10, 0x6d

    const-string v11, "voices/!v/croak"

    aput-object v11, v0, v10

    const/16 v10, 0x6e

    const-string v11, "voices/!v/f1"

    aput-object v11, v0, v10

    const/16 v10, 0x6f

    .line 92
    const-string v11, "voices/!v/f2"

    aput-object v11, v0, v10

    const/16 v10, 0x70

    const-string v11, "voices/!v/f3"

    aput-object v11, v0, v10

    const/16 v10, 0x71

    const-string v11, "voices/!v/f4"

    aput-object v11, v0, v10

    const/16 v10, 0x72

    const-string v11, "voices/!v/m1"

    aput-object v11, v0, v10

    const/16 v10, 0x73

    const-string v11, "voices/!v/m2"

    aput-object v11, v0, v10

    const/16 v10, 0x74

    .line 93
    const-string v11, "voices/!v/m3"

    aput-object v11, v0, v10

    const/16 v10, 0x75

    const-string v11, "voices/!v/m4"

    aput-object v11, v0, v10

    const/16 v10, 0x76

    const-string v11, "voices/!v/m5"

    aput-object v11, v0, v10

    const/16 v10, 0x77

    const-string v11, "voices/!v/m6"

    aput-object v11, v0, v10

    const/16 v10, 0x78

    .line 94
    const-string v11, "voices/!v/whisper"

    aput-object v11, v0, v10

    const/16 v10, 0x79

    const-string v11, "voices/en/en"

    aput-object v11, v0, v10

    const/16 v10, 0x7a

    const-string v11, "voices/en/en-n"

    aput-object v11, v0, v10

    const/16 v10, 0x7b

    const-string v11, "voices/en/en-r"

    aput-object v11, v0, v10

    const/16 v10, 0x7c

    .line 95
    const-string v11, "voices/en/en-rp"

    aput-object v11, v0, v10

    const/16 v10, 0x7d

    const-string v11, "voices/en/en-sc"

    aput-object v11, v0, v10

    const/16 v10, 0x7e

    const-string v11, "voices/en/en-wi"

    aput-object v11, v0, v10

    const/16 v10, 0x7f

    const-string v11, "voices/en/en-wm"

    aput-object v11, v0, v10

    const/16 v10, 0x80

    .line 96
    const-string v11, "voices/mb/mb-af1"

    aput-object v11, v0, v10

    const/16 v10, 0x81

    const-string v11, "voices/mb/mb-af1-en"

    aput-object v11, v0, v10

    const/16 v10, 0x82

    const-string v11, "voices/mb/mb-br1"

    aput-object v11, v0, v10

    const/16 v10, 0x83

    const-string v11, "voices/mb/mb-br3"

    aput-object v11, v0, v10

    const/16 v10, 0x84

    .line 97
    const-string v11, "voices/mb/mb-br4"

    aput-object v11, v0, v10

    const/16 v10, 0x85

    const-string v11, "voices/mb/mb-cr1"

    aput-object v11, v0, v10

    const/16 v10, 0x86

    const-string v11, "voices/mb/mb-cz2"

    aput-object v11, v0, v10

    const/16 v10, 0x87

    const-string v11, "voices/mb/mb-de2"

    aput-object v11, v0, v10

    const/16 v10, 0x88

    .line 98
    const-string v11, "voices/mb/mb-de4"

    aput-object v11, v0, v10

    const/16 v10, 0x89

    const-string v11, "voices/mb/mb-de4-en"

    aput-object v11, v0, v10

    const/16 v10, 0x8a

    const-string v11, "voices/mb/mb-de5"

    aput-object v11, v0, v10

    const/16 v10, 0x8b

    .line 99
    const-string v11, "voices/mb/mb-de5-en"

    aput-object v11, v0, v10

    const/16 v10, 0x8c

    const-string v11, "voices/mb/mb-de6"

    aput-object v11, v0, v10

    const/16 v10, 0x8d

    const-string v11, "voices/mb/mb-de6-grc"

    aput-object v11, v0, v10

    const/16 v10, 0x8e

    .line 100
    const-string v11, "voices/mb/mb-de7"

    aput-object v11, v0, v10

    const/16 v10, 0x8f

    const-string v11, "voices/mb/mb-en1"

    aput-object v11, v0, v10

    const/16 v10, 0x90

    const-string v11, "voices/mb/mb-es1"

    aput-object v11, v0, v10

    const/16 v10, 0x91

    const-string v11, "voices/mb/mb-es2"

    aput-object v11, v0, v10

    const/16 v10, 0x92

    .line 101
    const-string v11, "voices/mb/mb-fr1"

    aput-object v11, v0, v10

    const/16 v10, 0x93

    const-string v11, "voices/mb/mb-fr1-en"

    aput-object v11, v0, v10

    const/16 v10, 0x94

    const-string v11, "voices/mb/mb-fr4"

    aput-object v11, v0, v10

    const/16 v10, 0x95

    .line 102
    const-string v11, "voices/mb/mb-fr4-en"

    aput-object v11, v0, v10

    const/16 v10, 0x96

    const-string v11, "voices/mb/mb-gr2"

    aput-object v11, v0, v10

    const/16 v10, 0x97

    const-string v11, "voices/mb/mb-gr2-en"

    aput-object v11, v0, v10

    const/16 v10, 0x98

    .line 103
    const-string v11, "voices/mb/mb-hu1"

    aput-object v11, v0, v10

    const/16 v10, 0x99

    const-string v11, "voices/mb/mb-hu1-en"

    aput-object v11, v0, v10

    const/16 v10, 0x9a

    const-string v11, "voices/mb/mb-id1"

    aput-object v11, v0, v10

    const/16 v10, 0x9b

    const-string v11, "voices/mb/mb-it3"

    aput-object v11, v0, v10

    const/16 v10, 0x9c

    .line 104
    const-string v11, "voices/mb/mb-it4"

    aput-object v11, v0, v10

    const/16 v10, 0x9d

    const-string v11, "voices/mb/mb-la1"

    aput-object v11, v0, v10

    const/16 v10, 0x9e

    const-string v11, "voices/mb/mb-nl2"

    aput-object v11, v0, v10

    const/16 v10, 0x9f

    const-string v11, "voices/mb/mb-nl2-en"

    aput-object v11, v0, v10

    const/16 v10, 0xa0

    .line 105
    const-string v11, "voices/mb/mb-pl1"

    aput-object v11, v0, v10

    const/16 v10, 0xa1

    const-string v11, "voices/mb/mb-pl1-en"

    aput-object v11, v0, v10

    const/16 v10, 0xa2

    const-string v11, "voices/mb/mb-ro1"

    aput-object v11, v0, v10

    const/16 v10, 0xa3

    .line 106
    const-string v11, "voices/mb/mb-ro1-en"

    aput-object v11, v0, v10

    const/16 v10, 0xa4

    const-string v11, "voices/mb/mb-sw1"

    aput-object v11, v0, v10

    const/16 v10, 0xa5

    const-string v11, "voices/mb/mb-sw1-en"

    aput-object v11, v0, v10

    const/16 v10, 0xa6

    .line 107
    const-string v11, "voices/mb/mb-sw2"

    aput-object v11, v0, v10

    const/16 v10, 0xa7

    const-string v11, "voices/mb/mb-sw2-en"

    aput-object v11, v0, v10

    const/16 v10, 0xa8

    const-string v11, "voices/mb/mb-us1"

    aput-object v11, v0, v10

    const/16 v10, 0xa9

    const-string v11, "voices/mb/mb-us2"

    aput-object v11, v0, v10

    const/16 v10, 0xaa

    .line 108
    const-string v11, "voices/mb/mb-us3"

    aput-object v11, v0, v10

    .line 111
    .local v0, datafiles:[Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v3, espeakDataDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    .line 114
    .local v2, directoryExists:Z
    if-nez v2, :cond_40c

    .line 128
    :cond_40b
    :goto_40b
    return v8

    .line 117
    :cond_40c
    const/4 v5, 0x0

    .local v5, i:I
    :goto_40d
    array-length v10, v0

    if-lt v5, v10, :cond_412

    move v8, v9

    .line 128
    goto :goto_40b

    .line 118
    :cond_412
    new-instance v7, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v11, v0, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v7, tempFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_452

    .line 120
    const/4 v6, 0x0

    .local v6, j:I
    :goto_431
    array-length v9, v0

    if-ge v6, v9, :cond_40b

    .line 121
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, v0, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, delFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 120
    add-int/lit8 v6, v6, 0x1

    goto :goto_431

    .line 117
    .end local v1           #delFile:Ljava/io/File;
    .end local v6           #j:I
    :cond_452
    add-int/lit8 v5, v5, 0x1

    goto :goto_40d
.end method

.method public static downloadEspeakData()V
    .registers 24

    .prologue
    .line 134
    :try_start_0
    new-instance v22, Ljava/io/File;

    const-string v23, "/sdcard/"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->canWrite()Z

    move-result v22

    if-nez v22, :cond_e

    .line 205
    .local v8, espeakDataDir:Ljava/io/File;
    :cond_d
    :goto_d
    return-void

    .line 139
    .end local v8           #espeakDataDir:Ljava/io/File;
    :cond_e
    new-instance v8, Ljava/io/File;

    const-string v22, "/sdcard/espeak-data/"

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .restart local v8       #espeakDataDir:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    .line 143
    const-string v9, "http://eyes-free.googlecode.com/svn/trunk/thirdparty/espeak-data.zip"

    .line 144
    .local v9, fileUrl:Ljava/lang/String;
    new-instance v22, Ljava/net/URL;

    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, v23

    invoke-direct {v0, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v9}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    .line 145
    new-instance v19, Ljava/net/URL;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 146
    .local v19, url:Ljava/net/URL;
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 147
    .local v4, cn:Ljava/net/URLConnection;
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 148
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    .line 150
    .local v18, stream:Ljava/io/InputStream;
    new-instance v5, Ljava/io/File;

    const-string v22, "/sdcard/espeak-data/data.zip"

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v5, dlFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 152
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 154
    .local v14, out:Ljava/io/FileOutputStream;
    const/16 v22, 0x4000

    move/from16 v0, v22

    new-array v3, v0, [B

    .line 156
    .local v3, buf:[B
    :goto_59
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .line 157
    .local v13, numread:I
    if-gtz v13, :cond_b0

    .line 164
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 165
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 168
    new-instance v20, Ljava/util/zip/ZipFile;

    const-string v22, "/sdcard/espeak-data/data.zip"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 169
    .local v20, zip:Ljava/util/zip/ZipFile;
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v21

    .line 170
    .local v21, zippedFiles:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_76
    invoke-interface/range {v21 .. v21}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 171
    invoke-interface/range {v21 .. v21}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 172
    .local v7, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v22

    if-eqz v22, :cond_b8

    .line 173
    new-instance v12, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v12, newDir:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->mkdir()Z
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a9} :catch_aa

    goto :goto_76

    .line 202
    .end local v3           #buf:[B
    .end local v4           #cn:Ljava/net/URLConnection;
    .end local v5           #dlFile:Ljava/io/File;
    .end local v7           #entry:Ljava/util/zip/ZipEntry;
    .end local v9           #fileUrl:Ljava/lang/String;
    .end local v12           #newDir:Ljava/io/File;
    .end local v13           #numread:I
    .end local v14           #out:Ljava/io/FileOutputStream;
    .end local v18           #stream:Ljava/io/InputStream;
    .end local v19           #url:Ljava/net/URL;
    .end local v20           #zip:Ljava/util/zip/ZipFile;
    .end local v21           #zippedFiles:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :catch_aa
    move-exception v6

    .line 203
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_d

    .line 160
    .end local v6           #e:Ljava/io/IOException;
    .restart local v3       #buf:[B
    .restart local v4       #cn:Ljava/net/URLConnection;
    .restart local v5       #dlFile:Ljava/io/File;
    .restart local v9       #fileUrl:Ljava/lang/String;
    .restart local v13       #numread:I
    .restart local v14       #out:Ljava/io/FileOutputStream;
    .restart local v18       #stream:Ljava/io/InputStream;
    .restart local v19       #url:Ljava/net/URL;
    :cond_b0
    const/16 v22, 0x0

    :try_start_b2
    move/from16 v0, v22

    invoke-virtual {v14, v3, v0, v13}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_59

    .line 176
    .restart local v7       #entry:Ljava/util/zip/ZipEntry;
    .restart local v20       #zip:Ljava/util/zip/ZipFile;
    .restart local v21       #zippedFiles:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_b8
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    .line 177
    .local v10, is:Ljava/io/InputStream;
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    .line 178
    .local v11, name:Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "/sdcard/espeak-data/"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v16, outputFile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v17

    .line 180
    .local v17, outputPath:Ljava/lang/String;
    const-string v22, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 181
    const/16 v22, 0x0

    const-string v23, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 182
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v15, outputDir:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 184
    new-instance v16, Ljava/io/File;

    .end local v16           #outputFile:Ljava/io/File;
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .restart local v16       #outputFile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    .line 186
    new-instance v14, Ljava/io/FileOutputStream;

    .end local v14           #out:Ljava/io/FileOutputStream;
    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 188
    .restart local v14       #out:Ljava/io/FileOutputStream;
    const/16 v22, 0x4000

    move/from16 v0, v22

    new-array v3, v0, [B

    .line 190
    :goto_12d
    invoke-virtual {v10, v3}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .line 191
    if-gtz v13, :cond_13b

    .line 198
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 199
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_76

    .line 194
    :cond_13b
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v3, v0, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_142} :catch_aa

    goto :goto_12d
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {}, Lcom/google/tts/ConfigurationManager;->allFilesExist()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 46
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lcom/google/tts/ConfigurationManager;->setContentView(I)V

    .line 47
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/google/tts/ConfigurationManager$dataDownloader;

    invoke-direct {v3, p0}, Lcom/google/tts/ConfigurationManager$dataDownloader;-><init>(Lcom/google/tts/ConfigurationManager;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 57
    :goto_1b
    return-void

    .line 49
    :cond_1c
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 50
    .local v1, version:I
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/tts/TextToSpeechSettings;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, 0x4

    if-ge v1, v2, :cond_33

    .line 52
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v2, Lcom/google/tts/OldPrefsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_33
    const/16 v2, 0x2a

    invoke-virtual {p0, v0, v2}, Lcom/google/tts/ConfigurationManager;->startActivityForResult(Landroid/content/Intent;I)V

    .line 55
    invoke-virtual {p0}, Lcom/google/tts/ConfigurationManager;->finish()V

    goto :goto_1b
.end method
