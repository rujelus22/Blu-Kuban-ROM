.class public Lcom/samsung/SMT/CheckVoiceData;
.super Landroid/app/Activity;
.source "CheckVoiceData.java"


# static fields
.field private static final SMT_DATA_PATH:Ljava/lang/String; = null

.field private static final SMT_SYSTEM_PATH:Ljava/lang/String; = "/system/tts/lang_SMT/"

.field private static final START_INDEX_OF_DEU_DEU_F01_DATA:I = 0x27

.field private static final START_INDEX_OF_ENG_GBR_F01_DATA:I = 0x31

.field private static final START_INDEX_OF_ENG_USA_D01_DATA:I = 0x17

.field private static final START_INDEX_OF_ENG_USA_F01_DATA:I = 0x12

.field private static final START_INDEX_OF_FRA_FRA_F01_DATA:I = 0x2c

.field private static final START_INDEX_OF_ITA_ITA_F01_DATA:I = 0x3a

.field private static final START_INDEX_OF_KOR_KOR_F01_DATA:I = 0x0

.field private static final START_INDEX_OF_KOR_KOR_M01_DATA:I = 0x9

.field private static final START_INDEX_OF_SPA_ESP_F01_DATA:I = 0x22

.field private static final START_INDEX_OF_ZHO_CHN_F01_DATA:I = 0x1c

.field private static final SUPPORTED_LANGUAGES:[Ljava/lang/String;

.field private static final szVoiceDataFiles:[Ljava/lang/String;


# instance fields
.field private volatile m_iDataPathOfdeuDEUf01:I

.field private volatile m_iDataPathOfengGBRf01:I

.field private volatile m_iDataPathOfengUSAd01:I

.field private volatile m_iDataPathOfengUSAf01:I

.field private volatile m_iDataPathOffraFRAf01:I

.field private volatile m_iDataPathOfitaITAf01:I

.field private volatile m_iDataPathOfkorKORf01:I

.field private volatile m_iDataPathOfkorKORm01:I

.field private volatile m_iDataPathOfspaESPf01:I

.field private volatile m_iDataPathOfzhoCHNf01:I

.field private m_oSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SMT/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/SMT/CheckVoiceData;->SMT_DATA_PATH:Ljava/lang/String;

    .line 44
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "kor"

    aput-object v1, v0, v3

    const-string v1, "kor-KOR"

    aput-object v1, v0, v4

    const-string v1, "kor-KOR-f01"

    aput-object v1, v0, v5

    const-string v1, "kor-KOR-m01"

    aput-object v1, v0, v6

    const-string v1, "eng"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "eng-USA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "eng-GBR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eng-USA-f01"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "eng-USA-d01"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "eng-GBR-f01"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "zho"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "zho-CHN"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "zho-CHN-f01"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "spa"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "spa-ESP"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "spa-ESP-f01"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "deu"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "deu-DEU"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "deu-DEU-f01"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "fra"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "fra-FRA"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "fra-FRA-f01"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "ita"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ita-ITA"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "ita-ITA-f01"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/SMT/CheckVoiceData;->SUPPORTED_LANGUAGES:[Ljava/lang/String;

    .line 45
    const/16 v0, 0x42

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "smt_ko_KR_f01.qs"

    aput-object v1, v0, v3

    const-string v1, "smt_ko_KR_f01.cfg"

    aput-object v1, v0, v4

    const-string v1, "smt_ko_KR_f01.dt"

    aput-object v1, v0, v5

    const-string v1, "smt_ko_KR_f01.am"

    aput-object v1, v0, v6

    const-string v1, "smt_ko_KR.pb1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "smt_ko_KR.pb2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "smt_ko_KR.pbi"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "smt_ko_KR.cart"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "smt_ko_KR.symbol"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 46
    const-string v2, "smt_ko_KR_m01.qs"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "smt_ko_KR_m01.cfg"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "smt_ko_KR_m01.dt"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "smt_ko_KR_m01.am"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "smt_ko_KR.pb1"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "smt_ko_KR.pb2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "smt_ko_KR.pbi"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "smt_ko_KR.cart"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "smt_ko_KR.symbol"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 47
    const-string v2, "smt_en_US_f01.qs"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "smt_en_US_f01.cfg"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "smt_en_US_f01.dt"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "smt_en_US_f01.am"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "smt_en_US.lng"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 48
    const-string v2, "smt_en_US_dict_f01.qs"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "smt_en_US_dict_f01.cfg"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "smt_en_US_dict_f01.dt"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "smt_en_US_dict_f01.am"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "smt_en_US_dict.lng"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 49
    const-string v2, "smt_zh_CN_f01.qs"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "smt_zh_CN_f01.cfg"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "smt_zh_CN_f01.dt"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "smt_zh_CN_f01.am"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "smt_zh_CN.pb"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "smt_zh_CN.cart"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 50
    const-string v2, "smt_es_ES_f01.qs"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "smt_es_ES_f01.cfg"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "smt_es_ES_f01.dt"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "smt_es_ES_f01.am"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "smt_es_ES.dic"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 51
    const-string v2, "smt_de_DE_f01.qs"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "smt_de_DE_f01.cfg"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "smt_de_DE_f01.dt"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "smt_de_DE_f01.am"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "smt_de_DE.dic"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 52
    const-string v2, "smt_fr_FR_f01.qs"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "smt_fr_FR_f01.cfg"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "smt_fr_FR_f01.dt"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "smt_fr_FR_f01.am"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "smt_fr_FR.dic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 53
    const-string v2, "smt_en_GB_f01.qs"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "smt_en_GB_f01.cfg"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "smt_en_GB_f01.dt"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "smt_en_GB_f01.am"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "smt_en_GB.dic"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "smt_en_GB.lbk"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "smt_en_GB.sbk"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "smt_en_GB.pos"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "smt_en_GB.acc"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 54
    const-string v2, "smt_it_IT_f01.qs"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "smt_it_IT_f01.cfg"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "smt_it_IT_f01.dt"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "smt_it_IT_f01.am"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "smt_it_IT.dic"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "smt_it_IT.lbk"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "smt_it_IT.sbk"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "smt_it_IT.pos"

    aput-object v2, v0, v1

    .line 45
    sput-object v0, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/SMT/CheckVoiceData;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    .line 67
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfkorKORf01:I

    .line 68
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfkorKORm01:I

    .line 69
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfengUSAf01:I

    .line 70
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfengUSAd01:I

    .line 71
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfzhoCHNf01:I

    .line 72
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfspaESPf01:I

    .line 73
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfdeuDEUf01:I

    .line 74
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOffraFRAf01:I

    .line 75
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfengGBRf01:I

    .line 76
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfitaITAf01:I

    .line 40
    return-void
.end method

.method private getCheckVoiceDataFor(Landroid/content/Intent;)Ljava/util/List;
    .registers 7
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    const-string v3, "checkVoiceDataFor"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 262
    .local v0, arrayListExtra:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v1, arrayListResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_17

    .line 266
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_18

    .line 273
    :cond_17
    return-object v1

    .line 266
    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 268
    .local v2, szLanguage:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 269
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method private isDataInstalled(Ljava/lang/String;)Z
    .registers 9
    .parameter "lang"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 300
    const-string v2, "kor"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "kor-KOR"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ca

    .line 302
    :cond_15
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ee

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ee

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ee

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ee

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ee

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ee

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ee

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ee

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 303
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfkorKORf01:I

    .line 311
    :goto_77
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_156

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_156

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_156

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_156

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_156

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_156

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_156

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_156

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_156

    .line 312
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfkorKORm01:I

    .line 320
    :goto_e5
    iget v2, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfkorKORf01:I

    if-ne v2, v4, :cond_234

    iget v2, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfkorKORm01:I

    if-ne v2, v4, :cond_234

    .line 584
    :cond_ed
    :goto_ed
    return v0

    .line 305
    :cond_ee
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_152

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_152

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_152

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_152

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_152

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_152

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_152

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_152

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_152

    .line 306
    iput v0, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfkorKORf01:I

    goto/16 :goto_77

    .line 309
    :cond_152
    iput v4, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfkorKORf01:I

    goto/16 :goto_77

    .line 314
    :cond_156
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c6

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c6

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c6

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c6

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c6

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c6

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c6

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c6

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c6

    .line 315
    iput v0, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfkorKORm01:I

    goto/16 :goto_e5

    .line 318
    :cond_1c6
    iput v4, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfkorKORm01:I

    goto/16 :goto_e5

    .line 324
    :cond_1ca
    const-string v2, "kor-KOR-f01"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29e

    .line 326
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_237

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_237

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_237

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_237

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_237

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_237

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_237

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_237

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_237

    .line 327
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfkorKORf01:I

    :cond_234
    :goto_234
    move v0, v1

    .line 584
    goto/16 :goto_ed

    .line 329
    :cond_237
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29a

    .line 330
    iput v0, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfkorKORf01:I

    goto :goto_234

    .line 334
    :cond_29a
    iput v4, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfkorKORf01:I

    goto/16 :goto_ed

    .line 339
    :cond_29e
    const-string v2, "kor-KOR-m01"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38a

    .line 341
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_316

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_316

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_316

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_316

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_316

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_316

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_316

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_316

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_316

    .line 342
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfkorKORm01:I

    goto/16 :goto_234

    .line 344
    :cond_316
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_386

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_386

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_386

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_386

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_386

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_386

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_386

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_386

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_386

    .line 345
    iput v0, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfkorKORm01:I

    goto/16 :goto_234

    .line 349
    :cond_386
    iput v4, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfkorKORm01:I

    goto/16 :goto_ed

    .line 354
    :cond_38a
    const-string v2, "eng"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39a

    const-string v2, "eng-USA"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_406

    .line 356
    :cond_39a
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x12

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3ce

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3ce

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x14

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3ce

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x15

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3ce

    .line 357
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfengUSAf01:I

    goto/16 :goto_234

    .line 359
    :cond_3ce
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x12

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_402

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_402

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x14

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_402

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x15

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_402

    .line 360
    iput v0, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfengUSAf01:I

    goto/16 :goto_234

    .line 364
    :cond_402
    iput v4, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfengUSAf01:I

    goto/16 :goto_ed

    .line 369
    :cond_406
    const-string v2, "eng-USA-f01"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_492

    .line 371
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x12

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x14

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x15

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x16

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44e

    .line 372
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfengUSAf01:I

    goto/16 :goto_234

    .line 374
    :cond_44e
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x12

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x14

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x15

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x16

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48e

    .line 375
    iput v0, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfengUSAf01:I

    goto/16 :goto_234

    .line 379
    :cond_48e
    iput v4, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfengUSAf01:I

    goto/16 :goto_ed

    .line 384
    :cond_492
    const-string v2, "eng-USA-d01"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51e

    .line 386
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x17

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4da

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x18

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4da

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x19

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4da

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x1a

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4da

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x1b

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4da

    .line 387
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfengUSAd01:I

    goto/16 :goto_234

    .line 389
    :cond_4da
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x17

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x18

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x19

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x1a

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x1b

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51a

    .line 390
    iput v0, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfengUSAd01:I

    goto/16 :goto_234

    .line 394
    :cond_51a
    iput v4, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfengUSAd01:I

    goto/16 :goto_ed

    .line 399
    :cond_51e
    const-string v2, "zho"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52e

    const-string v2, "zho-CHN"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5ca

    .line 401
    :cond_52e
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x1c

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x1e

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x20

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x21

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57a

    .line 402
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfzhoCHNf01:I

    goto/16 :goto_234

    .line 404
    :cond_57a
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x1c

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c6

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c6

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x1e

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c6

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c6

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x20

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c6

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x21

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c6

    .line 405
    iput v0, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfzhoCHNf01:I

    goto/16 :goto_234

    .line 409
    :cond_5c6
    iput v4, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfzhoCHNf01:I

    goto/16 :goto_ed

    .line 414
    :cond_5ca
    const-string v2, "zho-CHN-f01"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66e

    .line 416
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x1c

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x1e

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x20

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x21

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61e

    .line 417
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfzhoCHNf01:I

    goto/16 :goto_234

    .line 419
    :cond_61e
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x1c

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x1e

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x20

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x21

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66a

    .line 420
    iput v0, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfzhoCHNf01:I

    goto/16 :goto_234

    .line 424
    :cond_66a
    iput v4, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfzhoCHNf01:I

    goto/16 :goto_ed

    .line 429
    :cond_66e
    const-string v2, "spa"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67e

    const-string v2, "spa-ESP"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_702

    .line 431
    :cond_67e
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x22

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6be

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x23

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6be

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x24

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6be

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x25

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6be

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x26

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6be

    .line 432
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfspaESPf01:I

    goto/16 :goto_234

    .line 434
    :cond_6be
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x22

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6fe

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x23

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6fe

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x24

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6fe

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x25

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6fe

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x26

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6fe

    .line 435
    iput v0, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfspaESPf01:I

    goto/16 :goto_234

    .line 439
    :cond_6fe
    iput v4, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfspaESPf01:I

    goto/16 :goto_ed

    .line 444
    :cond_702
    const-string v2, "spa-ESP-f01"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78e

    .line 446
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x22

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x23

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x24

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x25

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x26

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74a

    .line 447
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfspaESPf01:I

    goto/16 :goto_234

    .line 449
    :cond_74a
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x22

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x23

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x24

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x25

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x26

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78a

    .line 450
    iput v0, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfspaESPf01:I

    goto/16 :goto_234

    .line 454
    :cond_78a
    iput v4, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfspaESPf01:I

    goto/16 :goto_ed

    .line 459
    :cond_78e
    const-string v2, "deu"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79e

    const-string v2, "deu-DEU"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_822

    .line 461
    :cond_79e
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x27

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7de

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x28

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7de

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x29

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7de

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2a

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7de

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2b

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7de

    .line 462
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfdeuDEUf01:I

    goto/16 :goto_234

    .line 464
    :cond_7de
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x27

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x28

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x29

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2a

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2b

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81e

    .line 465
    iput v0, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfdeuDEUf01:I

    goto/16 :goto_234

    .line 469
    :cond_81e
    iput v4, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfdeuDEUf01:I

    goto/16 :goto_ed

    .line 474
    :cond_822
    const-string v2, "deu-DEU-f01"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8ae

    .line 476
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x27

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_86a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x28

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_86a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x29

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_86a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2a

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_86a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2b

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_86a

    .line 477
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfdeuDEUf01:I

    goto/16 :goto_234

    .line 479
    :cond_86a
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x27

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8aa

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x28

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8aa

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x29

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8aa

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2a

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8aa

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2b

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8aa

    .line 480
    iput v0, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfdeuDEUf01:I

    goto/16 :goto_234

    .line 484
    :cond_8aa
    iput v4, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfdeuDEUf01:I

    goto/16 :goto_ed

    .line 489
    :cond_8ae
    const-string v2, "fra"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8be

    const-string v2, "fra-FRA"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_942

    .line 491
    :cond_8be
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2c

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8fe

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2d

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8fe

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2e

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8fe

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2f

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8fe

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x30

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8fe

    .line 492
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOffraFRAf01:I

    goto/16 :goto_234

    .line 494
    :cond_8fe
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2c

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_93e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2d

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_93e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2e

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_93e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2f

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_93e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x30

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_93e

    .line 495
    iput v0, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOffraFRAf01:I

    goto/16 :goto_234

    .line 499
    :cond_93e
    iput v4, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOffraFRAf01:I

    goto/16 :goto_ed

    .line 504
    :cond_942
    const-string v2, "fra-FRA-f01"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9ce

    .line 506
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2c

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_98a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2d

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_98a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2e

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_98a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2f

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_98a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x30

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_98a

    .line 507
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOffraFRAf01:I

    goto/16 :goto_234

    .line 509
    :cond_98a
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2c

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9ca

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2d

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9ca

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2e

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9ca

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x2f

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9ca

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x30

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9ca

    .line 510
    iput v0, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOffraFRAf01:I

    goto/16 :goto_234

    .line 514
    :cond_9ca
    iput v4, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOffraFRAf01:I

    goto/16 :goto_ed

    .line 519
    :cond_9ce
    const-string v2, "eng-GBR"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aba

    .line 521
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x31

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a46

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x32

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a46

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x33

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a46

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x34

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a46

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x35

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a46

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x36

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a46

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x37

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a46

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x38

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a46

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x39

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a46

    .line 522
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfengGBRf01:I

    goto/16 :goto_234

    .line 524
    :cond_a46
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x31

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ab6

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x32

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ab6

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x33

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ab6

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x34

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ab6

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x35

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ab6

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x36

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ab6

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x37

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ab6

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x38

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ab6

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x39

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ab6

    .line 525
    iput v0, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfengGBRf01:I

    goto/16 :goto_234

    .line 529
    :cond_ab6
    iput v4, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfengGBRf01:I

    goto/16 :goto_ed

    .line 534
    :cond_aba
    const-string v2, "eng-GBR-f01"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba6

    .line 536
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x31

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b32

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x32

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b32

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x33

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b32

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x34

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b32

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x35

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b32

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x36

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b32

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x37

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b32

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x38

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b32

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x39

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b32

    .line 537
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfengGBRf01:I

    goto/16 :goto_234

    .line 539
    :cond_b32
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x31

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ba2

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x32

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ba2

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x33

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ba2

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x34

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ba2

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x35

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ba2

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x36

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ba2

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x37

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ba2

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x38

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ba2

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x39

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ba2

    .line 540
    iput v0, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfengGBRf01:I

    goto/16 :goto_234

    .line 544
    :cond_ba2
    iput v4, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfengGBRf01:I

    goto/16 :goto_ed

    .line 549
    :cond_ba6
    const-string v2, "ita"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb6

    const-string v2, "ita-ITA"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c82

    .line 551
    :cond_bb6
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3a

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c1a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3b

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c1a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3c

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c1a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3d

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c1a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3e

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c1a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3f

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c1a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x40

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c1a

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x41

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c1a

    .line 552
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfitaITAf01:I

    goto/16 :goto_234

    .line 554
    :cond_c1a
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3a

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c7e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3b

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c7e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3c

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c7e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3d

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c7e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3e

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c7e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3f

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c7e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x40

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c7e

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x41

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c7e

    .line 555
    iput v0, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfitaITAf01:I

    goto/16 :goto_234

    .line 559
    :cond_c7e
    iput v4, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfitaITAf01:I

    goto/16 :goto_ed

    .line 564
    :cond_c82
    const-string v2, "ita-ITA-f01"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 566
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3a

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cee

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3b

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cee

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3c

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cee

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3d

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cee

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3e

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cee

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3f

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cee

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x40

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cee

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x41

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInStorageArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cee

    .line 567
    iput v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfitaITAf01:I

    goto/16 :goto_234

    .line 569
    :cond_cee
    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3a

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d52

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3b

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d52

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3c

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d52

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3d

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d52

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3e

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d52

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x3f

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d52

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x40

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d52

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->szVoiceDataFiles:[Ljava/lang/String;

    const/16 v3, 0x41

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/SMT/CheckVoiceData;->isFileExistsInSystemArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d52

    .line 570
    iput v0, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfitaITAf01:I

    goto/16 :goto_234

    .line 574
    :cond_d52
    iput v4, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfitaITAf01:I

    goto/16 :goto_ed
.end method

.method private isFileExistsInStorageArea(Ljava/lang/String;)Z
    .registers 5
    .parameter "szFileName"

    .prologue
    .line 599
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/SMT/CheckVoiceData;->SMT_DATA_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    .local v0, fileInStorageArea:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_20

    .line 602
    const/4 v1, 0x0

    .line 604
    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x1

    goto :goto_1f
.end method

.method private isFileExistsInSystemArea(Ljava/lang/String;)Z
    .registers 5
    .parameter "szFileName"

    .prologue
    .line 589
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/system/tts/lang_SMT/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    .local v0, fileInSystemArea:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 592
    const/4 v1, 0x0

    .line 594
    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x1

    goto :goto_1b
.end method

.method private isLanguageSupported(Ljava/lang/String;)Z
    .registers 8
    .parameter "input"

    .prologue
    const/4 v1, 0x0

    .line 281
    sget-object v3, Lcom/samsung/SMT/CheckVoiceData;->SUPPORTED_LANGUAGES:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_5
    if-lt v2, v4, :cond_8

    .line 287
    :goto_7
    return v1

    .line 281
    :cond_8
    aget-object v0, v3, v2

    .line 283
    .local v0, szLanguage:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 284
    const/4 v1, 0x1

    goto :goto_7

    .line 281
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 22
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const-string v18, "SamsungTTSSettings"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/SMT/CheckVoiceData;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/SMT/CheckVoiceData;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/SMT/CheckVoiceData;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 87
    .local v13, iIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/SMT/CheckVoiceData;->getCheckVoiceDataFor(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v16

    .line 91
    .local v16, listCheckLanguages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_2d

    .line 92
    sget-object v18, Lcom/samsung/SMT/CheckVoiceData;->SUPPORTED_LANGUAGES:[Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    .line 94
    :cond_2d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v3, arrayListAvailable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v4, arrayListUnavailable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 98
    .local v10, bkorKORAlreadyIncluded:Z
    const/4 v7, 0x0

    .line 99
    .local v7, bengUSAAlreadyIncluded:Z
    const/4 v12, 0x0

    .line 100
    .local v12, bzhoCHNAlreadyIncluded:Z
    const/4 v11, 0x0

    .line 101
    .local v11, bspaESPAlreadyIncluded:Z
    const/4 v5, 0x0

    .line 102
    .local v5, bdeuDEUAlreadyIncluded:Z
    const/4 v8, 0x0

    .line 103
    .local v8, bfraFRAAlreadyIncluded:Z
    const/4 v6, 0x0

    .line 104
    .local v6, bengGBRAlreadyIncluded:Z
    const/4 v9, 0x0

    .line 106
    .local v9, bitaITAAlreadyIncluded:Z
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_43
    :goto_43
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_72

    .line 202
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_20c

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_20c

    .line 205
    const/4 v14, 0x0

    .line 224
    .local v14, iResult:I
    :goto_56
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 225
    .local v15, intentReturnData:Landroid/content/Intent;
    const-string v18, "availableVoices"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 226
    const-string v18, "unavailableVoices"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 227
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/samsung/SMT/CheckVoiceData;->setResult(ILandroid/content/Intent;)V

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/SMT/CheckVoiceData;->finish()V

    .line 229
    return-void

    .line 106
    .end local v14           #iResult:I
    .end local v15           #intentReturnData:Landroid/content/Intent;
    :cond_72
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 111
    .local v17, szLanguage:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/SMT/CheckVoiceData;->isLanguageSupported(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_43

    .line 113
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/SMT/CheckVoiceData;->isDataInstalled(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_43

    .line 115
    const-string v19, "kor"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_bc

    const-string v19, "kor-KOR"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_bc

    const-string v19, "kor-KOR-f01"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_bc

    const-string v19, "kor-KOR-m01"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c8

    .line 117
    :cond_bc
    if-nez v10, :cond_43

    .line 119
    const-string v19, "kor-KOR"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    const/4 v10, 0x1

    goto/16 :goto_43

    .line 124
    :cond_c8
    const-string v19, "eng"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_ec

    const-string v19, "eng-USA"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_ec

    const-string v19, "eng-USA-f01"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f8

    .line 126
    :cond_ec
    if-nez v7, :cond_43

    .line 128
    const-string v19, "eng-USA"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    const/4 v7, 0x1

    goto/16 :goto_43

    .line 133
    :cond_f8
    const-string v19, "zho"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_11c

    const-string v19, "zho-CHN"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_11c

    const-string v19, "zho-CHN-f01"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_128

    .line 135
    :cond_11c
    if-nez v12, :cond_43

    .line 137
    const-string v19, "zho-CHN"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    const/4 v12, 0x1

    goto/16 :goto_43

    .line 142
    :cond_128
    const-string v19, "spa"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_14c

    const-string v19, "spa-ESP"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_14c

    const-string v19, "spa-ESP-f01"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_158

    .line 144
    :cond_14c
    if-nez v11, :cond_43

    .line 146
    const-string v19, "spa-ESP"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const/4 v11, 0x1

    goto/16 :goto_43

    .line 151
    :cond_158
    const-string v19, "deu"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_17c

    const-string v19, "deu-DEU"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_17c

    const-string v19, "deu-DEU-f01"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_188

    .line 153
    :cond_17c
    if-nez v5, :cond_43

    .line 155
    const-string v19, "deu-DEU"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    const/4 v5, 0x1

    goto/16 :goto_43

    .line 160
    :cond_188
    const-string v19, "fra"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1ac

    const-string v19, "fra-FRA"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1ac

    const-string v19, "fra-FRA-f01"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b8

    .line 162
    :cond_1ac
    if-nez v8, :cond_43

    .line 164
    const-string v19, "fra-FRA"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    const/4 v8, 0x1

    goto/16 :goto_43

    .line 169
    :cond_1b8
    const-string v19, "eng-GBR"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1d0

    const-string v19, "eng-GBR-f01"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1dc

    .line 171
    :cond_1d0
    if-nez v6, :cond_43

    .line 173
    const-string v19, "eng-GBR"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    const/4 v6, 0x1

    goto/16 :goto_43

    .line 178
    :cond_1dc
    const-string v19, "ita"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_200

    const-string v19, "ita-ITA"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_200

    const-string v19, "ita-ITA-f01"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_43

    .line 180
    :cond_200
    if-nez v9, :cond_43

    .line 182
    const-string v19, "ita-ITA"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    const/4 v9, 0x1

    goto/16 :goto_43

    .line 219
    .end local v17           #szLanguage:Ljava/lang/String;
    :cond_20c
    const/4 v14, 0x1

    .restart local v14       #iResult:I
    goto/16 :goto_56
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 236
    iget-object v1, p0, Lcom/samsung/SMT/CheckVoiceData;->m_oSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 238
    .local v0, prefSettingsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "kor-KOR-f01 Data Path"

    iget v2, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfkorKORf01:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 239
    const-string v1, "kor-KOR-m01 Data Path"

    iget v2, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfkorKORm01:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 240
    const-string v1, "eng-USA-f01 Data Path"

    iget v2, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfengUSAf01:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 241
    const-string v1, "eng-USA-d01 Data Path"

    iget v2, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfengUSAd01:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 242
    const-string v1, "zho-CHN-f01 Data Path"

    iget v2, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfzhoCHNf01:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 243
    const-string v1, "spa-ESP-f01 Data Path"

    iget v2, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfspaESPf01:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 244
    const-string v1, "deu-DEU-f01 Data Path"

    iget v2, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfdeuDEUf01:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 245
    const-string v1, "fra-FRA-f01 Data Path"

    iget v2, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOffraFRAf01:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 246
    const-string v1, "eng-GBR-f01 Data Path"

    iget v2, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfengGBRf01:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 247
    const-string v1, "ita-ITA-f01 Data Path"

    iget v2, p0, Lcom/samsung/SMT/CheckVoiceData;->m_iDataPathOfitaITAf01:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 249
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 250
    return-void
.end method
