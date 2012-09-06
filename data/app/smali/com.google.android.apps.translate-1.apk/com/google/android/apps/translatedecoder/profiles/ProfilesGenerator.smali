.class public Lcom/google/android/apps/translatedecoder/profiles/ProfilesGenerator;
.super Ljava/lang/Object;
.source "ProfilesGenerator.java"


# static fields
.field private static final BRIDGE_LANG_CODE:Ljava/lang/String; = "en"

.field private static final DOWNLOAD_URL:Ljava/lang/String; = "http://dl.google.com/translate/offline/"

.field private static final VERSION:I = 0x1

.field private static final defaultLangCodes:[Ljava/lang/String;

.field private static final langCodes:Lcom/google/common/flags/Flag;
    .annotation runtime Lcom/google/common/flags/FlagSpec;
        altName = "langcodes"
        help = "list of language codes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flags/Flag",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static protos:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 26
    const/16 v0, 0x3e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "af"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ar"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "az"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "be"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bg"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bn"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ca"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cs"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cy"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "da"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "de"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "el"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "eo"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "es"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "et"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "eu"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "fa"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ga"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "gl"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "gu"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "hi"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "hr"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ht"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "hy"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "id"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "is"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "it"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "iw"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "ja"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "ka"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "kn"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "ko"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "la"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "lt"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "lv"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "mk"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "ms"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "mt"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "no"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "ro"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "ru"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "sk"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "sl"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "sq"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "sr"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "sv"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "sw"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "ta"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "te"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "th"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "uk"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "ur"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "vi"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "zh"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/translatedecoder/profiles/ProfilesGenerator;->defaultLangCodes:[Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/google/android/apps/translatedecoder/profiles/ProfilesGenerator;->defaultLangCodes:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/flags/Flag;->stringList([Ljava/lang/String;)Lcom/google/common/flags/Flag;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/profiles/ProfilesGenerator;->langCodes:Lcom/google/common/flags/Flag;

    .line 37
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->newBuilder()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/profiles/ProfilesGenerator;->protos:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateCommonProfile(I)V
    .registers 3
    .parameter "version"

    .prologue
    .line 41
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->newBuilder()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;

    move-result-object v0

    .line 43
    .local v0, commonProf:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;
    const-string v1, "http://dl.google.com/translate/offline/common/config.txt"

    invoke-virtual {v0, v1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->setConfigFile(Ljava/lang/String;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;

    .line 44
    const-string v1, "http://dl.google.com/translate/offline/common/preproc.data"

    invoke-virtual {v0, v1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->setPreprocFile(Ljava/lang/String;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;

    .line 45
    invoke-virtual {v0, p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->setVersion(I)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;

    .line 46
    sget-object v1, Lcom/google/android/apps/translatedecoder/profiles/ProfilesGenerator;->protos:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;

    invoke-virtual {v1, v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;->setCommonProfile(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;

    .line 47
    return-void
.end method

.method private static generateLanguagePairProfile(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "fromLangCode"
    .parameter "toLangCode"
    .parameter "version"

    .prologue
    .line 67
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->newBuilder()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;

    move-result-object v1

    .line 69
    .local v1, langPairProf:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    invoke-virtual {v1, p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->setFromLangCode(Ljava/lang/String;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;

    .line 70
    invoke-virtual {v1, p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->setToLangCode(Ljava/lang/String;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;

    .line 71
    invoke-virtual {v1, p2}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->setVersion(I)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "http://dl.google.com/translate/offline/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, config:Ljava/lang/StringBuilder;
    const-string v3, "configs/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v3, "_data.config.txt"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->setConfigFile(Ljava/lang/String;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://dl.google.com/translate/offline/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .local v2, ptsFilePrefix:Ljava/lang/StringBuilder;
    const-string v3, "pts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v3, "_data-00000-of-00001.bitpt/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pt.symbol"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->setPtSymbolFile(Ljava/lang/String;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pt.bit.trie"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->setTmFile(Ljava/lang/String;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;

    .line 90
    sget-object v3, Lcom/google/android/apps/translatedecoder/profiles/ProfilesGenerator;->protos:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;

    invoke-virtual {v3, v1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;->addLanguagePairProfiles(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;

    .line 91
    return-void
.end method

.method private static generateLanguageProfile(Ljava/lang/String;I)V
    .registers 6
    .parameter "langCode"
    .parameter "version"

    .prologue
    .line 50
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->newBuilder()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;

    move-result-object v0

    .line 52
    .local v0, langProf:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;->setLangCode(Ljava/lang/String;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;

    .line 53
    invoke-virtual {v0, p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;->setVersion(I)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://dl.google.com/translate/offline/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, lmFilePrefix:Ljava/lang/StringBuilder;
    const-string v2, "lms/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v2, "_data-00000-of-00001.mobilelm/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lm.symbol"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;->setLmSymbolFile(Ljava/lang/String;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lm.bit.trie"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;->setLmFile(Ljava/lang/String;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;

    .line 62
    sget-object v2, Lcom/google/android/apps/translatedecoder/profiles/ProfilesGenerator;->protos:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;

    invoke-virtual {v2, v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;->addLanguageProfiles(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile$Builder;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;

    .line 63
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 94
    invoke-static {v5}, Lcom/google/android/apps/translatedecoder/profiles/ProfilesGenerator;->generateCommonProfile(I)V

    .line 96
    sget-object v3, Lcom/google/android/apps/translatedecoder/profiles/ProfilesGenerator;->langCodes:Lcom/google/common/flags/Flag;

    invoke-virtual {v3}, Lcom/google/common/flags/Flag;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 97
    .local v1, langCodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1f

    .line 98
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/apps/translatedecoder/profiles/ProfilesGenerator;->generateLanguageProfile(Ljava/lang/String;I)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 101
    :cond_1f
    const/4 v0, 0x0

    :goto_20
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4d

    .line 102
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "en"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 103
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "en"

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/translatedecoder/profiles/ProfilesGenerator;->generateLanguagePairProfile(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    const-string v4, "en"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3, v5}, Lcom/google/android/apps/translatedecoder/profiles/ProfilesGenerator;->generateLanguagePairProfile(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 108
    :cond_4d
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/tmp/profiles.txt"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 109
    .local v2, out:Ljava/io/DataOutputStream;
    sget-object v3, Lcom/google/android/apps/translatedecoder/profiles/ProfilesGenerator;->protos:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;

    invoke-virtual {v3}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$Builder;->build()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->writeTo(Ljava/io/OutputStream;)V

    .line 110
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 111
    return-void
.end method
