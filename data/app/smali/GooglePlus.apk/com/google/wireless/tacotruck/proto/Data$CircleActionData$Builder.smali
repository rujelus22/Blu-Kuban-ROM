.class public final Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$CircleActionDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;",
        "Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$CircleActionDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private gaiaId_:Lcom/google/protobuf/LazyStringList;

.field private lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

.field private name_:Lcom/google/protobuf/LazyStringList;

.field private profileType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 27665
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 27852
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    .line 27908
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 27964
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    .line 28015
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    .line 27666
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->maybeForceBuilderInitialization()V

    .line 27667
    return-void
.end method

.method static synthetic access$37100()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 1

    .prologue
    .line 27660
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 1

    .prologue
    .line 27672
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureGaiaIdIsMutable()V
    .registers 3

    .prologue
    .line 27854
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 27855
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    .line 27856
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 27858
    :cond_16
    return-void
.end method

.method private ensureLowQualityObfuscatedGaiaIdIsMutable()V
    .registers 3

    .prologue
    .line 28017
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 28018
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    .line 28019
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 28021
    :cond_17
    return-void
.end method

.method private ensureNameIsMutable()V
    .registers 3

    .prologue
    .line 27910
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 27911
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 27912
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 27914
    :cond_16
    return-void
.end method

.method private ensureProfileTypeIsMutable()V
    .registers 3

    .prologue
    .line 27967
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 27968
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    .line 27969
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 27971
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 27670
    return-void
.end method


# virtual methods
.method public addAllGaiaId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;"
        }
    .end annotation

    .prologue
    .line 27890
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureGaiaIdIsMutable()V

    .line 27891
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 27893
    return-object p0
.end method

.method public addAllLowQualityObfuscatedGaiaId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;"
        }
    .end annotation

    .prologue
    .line 28053
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureLowQualityObfuscatedGaiaIdIsMutable()V

    .line 28054
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 28056
    return-object p0
.end method

.method public addAllName(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;"
        }
    .end annotation

    .prologue
    .line 27946
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureNameIsMutable()V

    .line 27947
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 27949
    return-object p0
.end method

.method public addAllProfileType(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;"
        }
    .end annotation

    .prologue
    .line 28002
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureProfileTypeIsMutable()V

    .line 28003
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 28005
    return-object p0
.end method

.method public addGaiaId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27880
    if-nez p1, :cond_8

    .line 27881
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27883
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureGaiaIdIsMutable()V

    .line 27884
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 27886
    return-object p0
.end method

.method public addLowQualityObfuscatedGaiaId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28043
    if-nez p1, :cond_8

    .line 28044
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28046
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureLowQualityObfuscatedGaiaIdIsMutable()V

    .line 28047
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 28049
    return-object p0
.end method

.method public addName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27936
    if-nez p1, :cond_8

    .line 27937
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27939
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureNameIsMutable()V

    .line 27940
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 27942
    return-object p0
.end method

.method public addProfileType(Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27992
    if-nez p1, :cond_8

    .line 27993
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27995
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureProfileTypeIsMutable()V

    .line 27996
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27998
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27660
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    .registers 3

    .prologue
    .line 27697
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    .line 27698
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 27699
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 27701
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27660
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    .registers 5

    .prologue
    .line 27715
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 27716
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 27717
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 27718
    new-instance v2, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v2, v3}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    .line 27720
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 27722
    :cond_1e
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$37302(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 27723
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_39

    .line 27724
    new-instance v2, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v2, v3}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 27726
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 27728
    :cond_39
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$37402(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 27729
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_53

    .line 27730
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    .line 27731
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 27733
    :cond_53
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$37502(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;Ljava/util/List;)Ljava/util/List;

    .line 27734
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6f

    .line 27735
    new-instance v2, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v2, v3}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    .line 27737
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 27739
    :cond_6f
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$37602(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 27740
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27660
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27660
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 2

    .prologue
    .line 27676
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 27677
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    .line 27678
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 27679
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 27680
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 27681
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    .line 27682
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 27683
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    .line 27684
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 27685
    return-object p0
.end method

.method public clearGaiaId()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 2

    .prologue
    .line 27896
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    .line 27897
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 27899
    return-object p0
.end method

.method public clearLowQualityObfuscatedGaiaId()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 2

    .prologue
    .line 28059
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    .line 28060
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 28062
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 2

    .prologue
    .line 27952
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 27953
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 27955
    return-object p0
.end method

.method public clearProfileType()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 2

    .prologue
    .line 28008
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    .line 28009
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 28011
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 27660
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27660
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 3

    .prologue
    .line 27689
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

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
    .line 27660
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 27660
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27660
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    .registers 2

    .prologue
    .line 27693
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    return-object v0
.end method

.method public getGaiaId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 27867
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGaiaIdCount()I
    .registers 2

    .prologue
    .line 27864
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getGaiaIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27861
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLowQualityObfuscatedGaiaId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 28030
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLowQualityObfuscatedGaiaIdCount()I
    .registers 2

    .prologue
    .line 28027
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getLowQualityObfuscatedGaiaIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28024
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 27923
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameCount()I
    .registers 2

    .prologue
    .line 27920
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getNameList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27917
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProfileType(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    .registers 3
    .parameter "index"

    .prologue
    .line 27979
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    return-object v0
.end method

.method public getProfileTypeCount()I
    .registers 2

    .prologue
    .line 27976
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getProfileTypeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27973
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 27789
    const/4 v0, 0x1

    return v0
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
    .line 27660
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 27660
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

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
    .line 27660
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 10
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27797
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 27798
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_64

    .line 27803
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 27805
    :sswitch_d
    return-object p0

    .line 27810
    :sswitch_e
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureGaiaIdIsMutable()V

    .line 27811
    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 27815
    :sswitch_1b
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureNameIsMutable()V

    .line 27816
    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 27820
    :sswitch_28
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 27821
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->valueOf(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    move-result-object v4

    .line 27822
    .local v4, value:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    if-eqz v4, :cond_0

    .line 27823
    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->addProfileType(Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    goto :goto_0

    .line 27828
    .end local v2           #rawValue:I
    .end local v4           #value:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 27829
    .local v0, length:I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 27830
    .local v1, oldLimit:I
    :cond_3e
    :goto_3e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_52

    .line 27831
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 27832
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->valueOf(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    move-result-object v4

    .line 27833
    .restart local v4       #value:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    if-eqz v4, :cond_3e

    .line 27834
    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->addProfileType(Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    goto :goto_3e

    .line 27837
    .end local v2           #rawValue:I
    .end local v4           #value:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    :cond_52
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 27841
    .end local v0           #length:I
    .end local v1           #oldLimit:I
    :sswitch_56
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureLowQualityObfuscatedGaiaIdIsMutable()V

    .line 27842
    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 27798
    nop

    :sswitch_data_64
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x1a -> :sswitch_36
        0x22 -> :sswitch_56
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 27744
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 27785
    :cond_6
    :goto_6
    return-object p0

    .line 27745
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$37300(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 27746
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 27747
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$37300(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    .line 27748
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 27755
    :cond_25
    :goto_25
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$37400(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 27756
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 27757
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$37400(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    .line 27758
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 27765
    :cond_43
    :goto_43
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$37500(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    .line 27766
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 27767
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$37500(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    .line 27768
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    .line 27775
    :cond_61
    :goto_61
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$37600(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 27776
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 27777
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$37600(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    .line 27778
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->bitField0_:I

    goto :goto_6

    .line 27750
    :cond_80
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureGaiaIdIsMutable()V

    .line 27751
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$37300(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 27760
    :cond_8d
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureNameIsMutable()V

    .line 27761
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$37400(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_43

    .line 27770
    :cond_9a
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureProfileTypeIsMutable()V

    .line 27771
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$37500(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_61

    .line 27780
    :cond_a7
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureLowQualityObfuscatedGaiaIdIsMutable()V

    .line 27781
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->access$37600(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6
.end method

.method public setGaiaId(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 27871
    if-nez p2, :cond_8

    .line 27872
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27874
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureGaiaIdIsMutable()V

    .line 27875
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27877
    return-object p0
.end method

.method public setLowQualityObfuscatedGaiaId(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 28034
    if-nez p2, :cond_8

    .line 28035
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28037
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureLowQualityObfuscatedGaiaIdIsMutable()V

    .line 28038
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28040
    return-object p0
.end method

.method public setName(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 27927
    if-nez p2, :cond_8

    .line 27928
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27930
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureNameIsMutable()V

    .line 27931
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27933
    return-object p0
.end method

.method public setProfileType(ILcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 27983
    if-nez p2, :cond_8

    .line 27984
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27986
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->ensureProfileTypeIsMutable()V

    .line 27987
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->profileType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27989
    return-object p0
.end method
