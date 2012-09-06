.class public final Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ModelProfileProtos.java"

# interfaces
.implements Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfileOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;",
        "Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;",
        ">;",
        "Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfileOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private configFile_:Ljava/lang/Object;

.field private fromLangCode_:Ljava/lang/Object;

.field private ptSymbolFile_:Ljava/lang/Object;

.field private tmFile_:Ljava/lang/Object;

.field private toLangCode_:Ljava/lang/Object;

.field private version_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1849
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2005
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->fromLangCode_:Ljava/lang/Object;

    .line 2058
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->toLangCode_:Ljava/lang/Object;

    .line 2111
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->configFile_:Ljava/lang/Object;

    .line 2164
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->ptSymbolFile_:Ljava/lang/Object;

    .line 2217
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->tmFile_:Ljava/lang/Object;

    .line 1850
    invoke-direct {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->maybeForceBuilderInitialization()V

    .line 1851
    return-void
.end method

.method static synthetic access$1700()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    .registers 1

    .prologue
    .line 1844
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->create()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    .registers 1

    .prologue
    .line 1856
    new-instance v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;

    invoke-direct {v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1854
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1844
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->build()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;
    .registers 3

    .prologue
    .line 1885
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->buildPartial()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    move-result-object v0

    .line 1886
    .local v0, result:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;
    invoke-virtual {v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1887
    invoke-static {v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1889
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1844
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->buildPartial()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;
    .registers 6

    .prologue
    .line 1893
    new-instance v1, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$1;)V

    .line 1894
    .local v1, result:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 1895
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1896
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1897
    or-int/lit8 v2, v2, 0x1

    .line 1899
    :cond_10
    iget-object v3, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->fromLangCode_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->fromLangCode_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->access$1902(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1900
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1901
    or-int/lit8 v2, v2, 0x2

    .line 1903
    :cond_1c
    iget-object v3, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->toLangCode_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->toLangCode_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->access$2002(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1904
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 1905
    or-int/lit8 v2, v2, 0x4

    .line 1907
    :cond_28
    iget-object v3, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->configFile_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->configFile_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->access$2102(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1908
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 1909
    or-int/lit8 v2, v2, 0x8

    .line 1911
    :cond_35
    iget-object v3, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->ptSymbolFile_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->ptSymbolFile_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->access$2202(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1912
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 1913
    or-int/lit8 v2, v2, 0x10

    .line 1915
    :cond_42
    iget-object v3, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->tmFile_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->tmFile_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->access$2302(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1916
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 1917
    or-int/lit8 v2, v2, 0x20

    .line 1919
    :cond_4f
    iget v3, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->version_:I

    #setter for: Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->version_:I
    invoke-static {v1, v3}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->access$2402(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;I)I

    .line 1920
    #setter for: Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->access$2502(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;I)I

    .line 1921
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1844
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->clear()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1844
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->clear()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    .registers 2

    .prologue
    .line 1860
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1861
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->fromLangCode_:Ljava/lang/Object;

    .line 1862
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 1863
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->toLangCode_:Ljava/lang/Object;

    .line 1864
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 1865
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->configFile_:Ljava/lang/Object;

    .line 1866
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 1867
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->ptSymbolFile_:Ljava/lang/Object;

    .line 1868
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 1869
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->tmFile_:Ljava/lang/Object;

    .line 1870
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 1871
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->version_:I

    .line 1872
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 1873
    return-object p0
.end method

.method public clearConfigFile()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    .registers 2

    .prologue
    .line 2147
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 2148
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getDefaultInstance()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->configFile_:Ljava/lang/Object;

    .line 2150
    return-object p0
.end method

.method public clearFromLangCode()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    .registers 2

    .prologue
    .line 2041
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 2042
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getDefaultInstance()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getFromLangCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->fromLangCode_:Ljava/lang/Object;

    .line 2044
    return-object p0
.end method

.method public clearPtSymbolFile()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    .registers 2

    .prologue
    .line 2200
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 2201
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getDefaultInstance()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getPtSymbolFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->ptSymbolFile_:Ljava/lang/Object;

    .line 2203
    return-object p0
.end method

.method public clearTmFile()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    .registers 2

    .prologue
    .line 2253
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 2254
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getDefaultInstance()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getTmFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->tmFile_:Ljava/lang/Object;

    .line 2256
    return-object p0
.end method

.method public clearToLangCode()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    .registers 2

    .prologue
    .line 2094
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 2095
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getDefaultInstance()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getToLangCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->toLangCode_:Ljava/lang/Object;

    .line 2097
    return-object p0
.end method

.method public clearVersion()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    .registers 2

    .prologue
    .line 2284
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 2285
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->version_:I

    .line 2287
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1844
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->clone()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1844
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->clone()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1844
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->clone()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    .registers 3

    .prologue
    .line 1877
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->create()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->buildPartial()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->mergeFrom(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1844
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->clone()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConfigFile()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->configFile_:Ljava/lang/Object;

    .line 2117
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2118
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2119
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->configFile_:Ljava/lang/Object;

    .line 2122
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getConfigFileBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2127
    iget-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->configFile_:Ljava/lang/Object;

    .line 2128
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2129
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2131
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->configFile_:Ljava/lang/Object;

    .line 2134
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1844
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->getDefaultInstanceForType()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1844
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->getDefaultInstanceForType()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;
    .registers 2

    .prologue
    .line 1881
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getDefaultInstance()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    move-result-object v0

    return-object v0
.end method

.method public getFromLangCode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->fromLangCode_:Ljava/lang/Object;

    .line 2011
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2012
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2013
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->fromLangCode_:Ljava/lang/Object;

    .line 2016
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getFromLangCodeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2021
    iget-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->fromLangCode_:Ljava/lang/Object;

    .line 2022
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2023
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2025
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->fromLangCode_:Ljava/lang/Object;

    .line 2028
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getPtSymbolFile()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->ptSymbolFile_:Ljava/lang/Object;

    .line 2170
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2171
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2172
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->ptSymbolFile_:Ljava/lang/Object;

    .line 2175
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getPtSymbolFileBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2180
    iget-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->ptSymbolFile_:Ljava/lang/Object;

    .line 2181
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2182
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2184
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->ptSymbolFile_:Ljava/lang/Object;

    .line 2187
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getTmFile()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->tmFile_:Ljava/lang/Object;

    .line 2223
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2224
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2225
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->tmFile_:Ljava/lang/Object;

    .line 2228
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getTmFileBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2233
    iget-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->tmFile_:Ljava/lang/Object;

    .line 2234
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2235
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2237
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->tmFile_:Ljava/lang/Object;

    .line 2240
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getToLangCode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->toLangCode_:Ljava/lang/Object;

    .line 2064
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2065
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2066
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->toLangCode_:Ljava/lang/Object;

    .line 2069
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getToLangCodeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2074
    iget-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->toLangCode_:Ljava/lang/Object;

    .line 2075
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2076
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2078
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->toLangCode_:Ljava/lang/Object;

    .line 2081
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 2275
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->version_:I

    return v0
.end method

.method public hasConfigFile()Z
    .registers 3

    .prologue
    .line 2113
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasFromLangCode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2007
    iget v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPtSymbolFile()Z
    .registers 3

    .prologue
    .line 2166
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTmFile()Z
    .registers 3

    .prologue
    .line 2219
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasToLangCode()Z
    .registers 3

    .prologue
    .line 2060
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasVersion()Z
    .registers 3

    .prologue
    .line 2272
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1958
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->hasFromLangCode()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1982
    :cond_7
    :goto_7
    return v0

    .line 1962
    :cond_8
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->hasToLangCode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1966
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->hasConfigFile()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1970
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->hasPtSymbolFile()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1974
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->hasTmFile()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1978
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->hasVersion()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1982
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1844
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1844
    check-cast p1, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->mergeFrom(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1844
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1989
    const/4 v2, 0x0

    .line 1991
    .local v2, parsedMessage:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;
    :try_start_1
    sget-object v3, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 1996
    if-eqz v2, :cond_10

    .line 1997
    invoke-virtual {p0, v2}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->mergeFrom(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;

    .line 2000
    :cond_10
    return-object p0

    .line 1992
    :catch_11
    move-exception v1

    .line 1993
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    move-object v2, v0

    .line 1994
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 1996
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 1997
    invoke-virtual {p0, v2}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->mergeFrom(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 1925
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getDefaultInstance()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1954
    :cond_6
    :goto_6
    return-object p0

    .line 1926
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->hasFromLangCode()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1927
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 1928
    #getter for: Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->fromLangCode_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->access$1900(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->fromLangCode_:Ljava/lang/Object;

    .line 1931
    :cond_19
    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->hasToLangCode()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1932
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 1933
    #getter for: Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->toLangCode_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->access$2000(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->toLangCode_:Ljava/lang/Object;

    .line 1936
    :cond_2b
    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->hasConfigFile()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1937
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 1938
    #getter for: Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->configFile_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->access$2100(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->configFile_:Ljava/lang/Object;

    .line 1941
    :cond_3d
    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->hasPtSymbolFile()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1942
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 1943
    #getter for: Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->ptSymbolFile_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->access$2200(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->ptSymbolFile_:Ljava/lang/Object;

    .line 1946
    :cond_4f
    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->hasTmFile()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1947
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 1948
    #getter for: Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->tmFile_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->access$2300(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->tmFile_:Ljava/lang/Object;

    .line 1951
    :cond_61
    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1952
    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->setVersion(I)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;

    goto :goto_6
.end method

.method public setConfigFile(Ljava/lang/String;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2138
    if-nez p1, :cond_8

    .line 2139
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2141
    :cond_8
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 2142
    iput-object p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->configFile_:Ljava/lang/Object;

    .line 2144
    return-object p0
.end method

.method public setConfigFileBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2154
    if-nez p1, :cond_8

    .line 2155
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2157
    :cond_8
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 2158
    iput-object p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->configFile_:Ljava/lang/Object;

    .line 2160
    return-object p0
.end method

.method public setFromLangCode(Ljava/lang/String;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2032
    if-nez p1, :cond_8

    .line 2033
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2035
    :cond_8
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 2036
    iput-object p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->fromLangCode_:Ljava/lang/Object;

    .line 2038
    return-object p0
.end method

.method public setFromLangCodeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2048
    if-nez p1, :cond_8

    .line 2049
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2051
    :cond_8
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 2052
    iput-object p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->fromLangCode_:Ljava/lang/Object;

    .line 2054
    return-object p0
.end method

.method public setPtSymbolFile(Ljava/lang/String;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2191
    if-nez p1, :cond_8

    .line 2192
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2194
    :cond_8
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 2195
    iput-object p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->ptSymbolFile_:Ljava/lang/Object;

    .line 2197
    return-object p0
.end method

.method public setPtSymbolFileBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2207
    if-nez p1, :cond_8

    .line 2208
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2210
    :cond_8
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 2211
    iput-object p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->ptSymbolFile_:Ljava/lang/Object;

    .line 2213
    return-object p0
.end method

.method public setTmFile(Ljava/lang/String;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2244
    if-nez p1, :cond_8

    .line 2245
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2247
    :cond_8
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 2248
    iput-object p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->tmFile_:Ljava/lang/Object;

    .line 2250
    return-object p0
.end method

.method public setTmFileBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2260
    if-nez p1, :cond_8

    .line 2261
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2263
    :cond_8
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 2264
    iput-object p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->tmFile_:Ljava/lang/Object;

    .line 2266
    return-object p0
.end method

.method public setToLangCode(Ljava/lang/String;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2085
    if-nez p1, :cond_8

    .line 2086
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2088
    :cond_8
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 2089
    iput-object p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->toLangCode_:Ljava/lang/Object;

    .line 2091
    return-object p0
.end method

.method public setToLangCodeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2101
    if-nez p1, :cond_8

    .line 2102
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2104
    :cond_8
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 2105
    iput-object p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->toLangCode_:Ljava/lang/Object;

    .line 2107
    return-object p0
.end method

.method public setVersion(I)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2278
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->bitField0_:I

    .line 2279
    iput p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile$Builder;->version_:I

    .line 2281
    return-object p0
.end method
