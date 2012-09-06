.class public final Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CountData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private circleName_:Ljava/lang/Object;

.field private count_:I

.field private focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private personFirstName_:Lcom/google/protobuf/LazyStringList;

.field private personId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10110
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    .line 10111
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->initFields()V

    .line 10112
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 9441
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9546
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->memoizedIsInitialized:B

    .line 9575
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->memoizedSerializedSize:I

    .line 9442
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9436
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 9443
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9546
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->memoizedIsInitialized:B

    .line 9575
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->memoizedSerializedSize:I

    .line 9443
    return-void
.end method

.method static synthetic access$12502(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9436
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->count_:I

    return p1
.end method

.method static synthetic access$12600(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 9436
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$12602(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9436
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$12700(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 9436
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$12702(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9436
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$12802(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9436
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->circleName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12900(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 9436
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$12902(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9436
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$13002(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9436
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->bitField0_:I

    return p1
.end method

.method private getCircleNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 9514
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->circleName_:Ljava/lang/Object;

    .line 9515
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 9516
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9518
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->circleName_:Ljava/lang/Object;

    .line 9521
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    .registers 1

    .prologue
    .line 9447
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 9540
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->count_:I

    .line 9541
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;

    .line 9542
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    .line 9543
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->circleName_:Ljava/lang/Object;

    .line 9544
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    .line 9545
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 1

    .prologue
    .line 9694
    #calls: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->access$12300()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 9697
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCircleName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 9500
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->circleName_:Ljava/lang/Object;

    .line 9501
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 9502
    check-cast v1, Ljava/lang/String;

    .line 9510
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 9504
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 9506
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 9507
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 9508
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->circleName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 9510
    goto :goto_8
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 9462
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9436
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    .registers 2

    .prologue
    .line 9451
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    return-object v0
.end method

.method public getFocusObfuscatedPersonId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 9490
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFocusObfuscatedPersonIdCount()I
    .registers 2

    .prologue
    .line 9487
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getFocusObfuscatedPersonIdList()Ljava/util/List;
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
    .line 9484
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getPersonFirstName(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 9536
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPersonFirstNameCount()I
    .registers 2

    .prologue
    .line 9533
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getPersonFirstNameList()Ljava/util/List;
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
    .line 9530
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getPersonId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 9476
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPersonIdCount()I
    .registers 2

    .prologue
    .line 9473
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPersonIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9470
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 9577
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->memoizedSerializedSize:I

    .line 9578
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    move v3, v2

    .line 9617
    .end local v2           #size:I
    .local v3, size:I
    :goto_7
    return v3

    .line 9580
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_8
    const/4 v2, 0x0

    .line 9581
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_16

    .line 9582
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->count_:I

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 9586
    :cond_16
    const/4 v0, 0x0

    .line 9587
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_34

    .line 9588
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v0, v4

    .line 9587
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 9591
    :cond_34
    add-int/2addr v2, v0

    .line 9592
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getPersonIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 9594
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_51

    .line 9595
    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getCircleNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 9599
    :cond_51
    const/4 v0, 0x0

    .line 9600
    const/4 v1, 0x0

    :goto_53
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_69

    .line 9601
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 9600
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 9604
    :cond_69
    add-int/2addr v2, v0

    .line 9605
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getPersonFirstNameList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 9608
    const/4 v0, 0x0

    .line 9609
    const/4 v1, 0x0

    :goto_77
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_8d

    .line 9610
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 9609
    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    .line 9613
    :cond_8d
    add-int/2addr v2, v0

    .line 9614
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getFocusObfuscatedPersonIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 9616
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->memoizedSerializedSize:I

    move v3, v2

    .line 9617
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_7
.end method

.method public hasCircleName()Z
    .registers 3

    .prologue
    .line 9497
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->bitField0_:I

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

.method public hasCount()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 9459
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 9548
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->memoizedIsInitialized:B

    .line 9549
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 9552
    :goto_8
    return v1

    .line 9549
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 9551
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9436
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 2

    .prologue
    .line 9695
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9436
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .registers 2

    .prologue
    .line 9699
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

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
    .line 9624
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 9557
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getSerializedSize()I

    .line 9558
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_10

    .line 9559
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->count_:I

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9561
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 9562
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personId_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 9561
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 9564
    :cond_2b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_39

    .line 9565
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getCircleNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9567
    :cond_39
    const/4 v0, 0x0

    :goto_3a
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4f

    .line 9568
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->personFirstName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9567
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 9570
    :cond_4f
    const/4 v0, 0x0

    :goto_50
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_65

    .line 9571
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->focusObfuscatedPersonId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9570
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 9573
    :cond_65
    return-void
.end method
