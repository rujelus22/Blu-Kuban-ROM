.class public final Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$CircleActionDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CircleActionData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

.field private static final serialVersionUID:J


# instance fields
.field private gaiaId_:Lcom/google/protobuf/LazyStringList;

.field private lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28074
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    .line 28075
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->initFields()V

    .line 28076
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 27433
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 27507
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->memoizedIsInitialized:B

    .line 27533
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->memoizedSerializedSize:I

    .line 27434
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27428
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 27435
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 27507
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->memoizedIsInitialized:B

    .line 27533
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->memoizedSerializedSize:I

    .line 27435
    return-void
.end method

.method static synthetic access$37300(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27428
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$37302(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27428
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$37400(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27428
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$37402(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27428
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$37500(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27428
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$37502(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27428
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$37600(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27428
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$37602(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27428
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    .registers 1

    .prologue
    .line 27439
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 27502
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    .line 27503
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;

    .line 27504
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;

    .line 27505
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    .line 27506
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 1

    .prologue
    .line 27653
    #calls: Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->access$37100()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 27656
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27428
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    .registers 2

    .prologue
    .line 27443
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    return-object v0
.end method

.method public getGaiaId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 27457
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGaiaIdCount()I
    .registers 2

    .prologue
    .line 27454
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;

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
    .line 27451
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getLowQualityObfuscatedGaiaId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 27498
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLowQualityObfuscatedGaiaIdCount()I
    .registers 2

    .prologue
    .line 27495
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

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
    .line 27492
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getName(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 27471
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameCount()I
    .registers 2

    .prologue
    .line 27468
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;

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
    .line 27465
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getProfileType(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    .registers 3
    .parameter "index"

    .prologue
    .line 27484
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    return-object v0
.end method

.method public getProfileTypeCount()I
    .registers 2

    .prologue
    .line 27481
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;

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
    .line 27478
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 27535
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->memoizedSerializedSize:I

    .line 27536
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    move v3, v2

    .line 27576
    .end local v2           #size:I
    .local v3, size:I
    :goto_6
    return v3

    .line 27538
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_7
    const/4 v2, 0x0

    .line 27540
    const/4 v0, 0x0

    .line 27541
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_20

    .line 27542
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 27541
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 27545
    :cond_20
    add-int/2addr v2, v0

    .line 27546
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getGaiaIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 27549
    const/4 v0, 0x0

    .line 27550
    const/4 v1, 0x0

    :goto_2e
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_44

    .line 27551
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 27550
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 27554
    :cond_44
    add-int/2addr v2, v0

    .line 27555
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getNameList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 27558
    const/4 v0, 0x0

    .line 27559
    const/4 v1, 0x0

    :goto_52
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6e

    .line 27560
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    invoke-virtual {v4}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->getNumber()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 27559
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 27563
    :cond_6e
    add-int/2addr v2, v0

    .line 27564
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 27567
    const/4 v0, 0x0

    .line 27568
    const/4 v1, 0x0

    :goto_7a
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_90

    .line 27569
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 27568
    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    .line 27572
    :cond_90
    add-int/2addr v2, v0

    .line 27573
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getLowQualityObfuscatedGaiaIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 27575
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->memoizedSerializedSize:I

    move v3, v2

    .line 27576
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 27509
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->memoizedIsInitialized:B

    .line 27510
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 27513
    :goto_8
    return v1

    .line 27510
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 27512
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27428
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 2

    .prologue
    .line 27654
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27428
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;
    .registers 2

    .prologue
    .line 27658
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 27583
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27518
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getSerializedSize()I

    .line 27519
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 27520
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->gaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27519
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 27522
    :cond_19
    const/4 v0, 0x0

    :goto_1a
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 27523
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->name_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27522
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 27525
    :cond_2f
    const/4 v0, 0x0

    :goto_30
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 27526
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->profileType_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 27525
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 27528
    :cond_4b
    const/4 v0, 0x0

    :goto_4c
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 27529
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->lowQualityObfuscatedGaiaId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27528
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 27531
    :cond_61
    return-void
.end method
