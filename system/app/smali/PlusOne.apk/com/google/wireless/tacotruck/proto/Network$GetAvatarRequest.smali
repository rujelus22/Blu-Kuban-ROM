.class public final Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAvatarRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private enableSilhouette_:Z

.field private focusObfuscatedId_:Ljava/lang/Object;

.field private imageSize_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private useBase64_:Z

.field private userId_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8904
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

    .line 8905
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->initFields()V

    .line 8906
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8391
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8484
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->memoizedIsInitialized:B

    .line 8513
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->memoizedSerializedSize:I

    .line 8392
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8386
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8393
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8484
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->memoizedIsInitialized:B

    .line 8513
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->memoizedSerializedSize:I

    .line 8393
    return-void
.end method

.method static synthetic access$11302(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8386
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->userId_:J

    return-wide p1
.end method

.method static synthetic access$11402(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8386
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->focusObfuscatedId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11502(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8386
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->useBase64_:Z

    return p1
.end method

.method static synthetic access$11602(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8386
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->imageSize_:I

    return p1
.end method

.method static synthetic access$11702(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8386
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->enableSilhouette_:Z

    return p1
.end method

.method static synthetic access$11802(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8386
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;
    .registers 1

    .prologue
    .line 8397
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

    return-object v0
.end method

.method private getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8436
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->focusObfuscatedId_:Ljava/lang/Object;

    .line 8437
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 8438
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8440
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->focusObfuscatedId_:Ljava/lang/Object;

    .line 8443
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

.method private initFields()V
    .registers 3

    .prologue
    .line 8478
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->userId_:J

    .line 8479
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->focusObfuscatedId_:Ljava/lang/Object;

    .line 8480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->useBase64_:Z

    .line 8481
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->imageSize_:I

    .line 8482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->enableSilhouette_:Z

    .line 8483
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    .registers 1

    .prologue
    .line 8617
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->access$11100()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8386
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;
    .registers 2

    .prologue
    .line 8401
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

    return-object v0
.end method

.method public getEnableSilhouette()Z
    .registers 2

    .prologue
    .line 8474
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->enableSilhouette_:Z

    return v0
.end method

.method public getFocusObfuscatedId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 8422
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->focusObfuscatedId_:Ljava/lang/Object;

    .line 8423
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 8424
    check-cast v1, Ljava/lang/String;

    .line 8432
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 8426
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8428
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8429
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 8430
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->focusObfuscatedId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 8432
    goto :goto_8
.end method

.method public getImageSize()I
    .registers 2

    .prologue
    .line 8464
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->imageSize_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 8515
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->memoizedSerializedSize:I

    .line 8516
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 8540
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 8518
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 8519
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_18

    .line 8520
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->userId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 8523
    :cond_18
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_25

    .line 8524
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->useBase64_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 8527
    :cond_25
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_35

    .line 8528
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->imageSize_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 8531
    :cond_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_44

    .line 8532
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->enableSilhouette_:Z

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 8535
    :cond_44
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_54

    .line 8536
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8539
    :cond_54
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 8540
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getUseBase64()Z
    .registers 2

    .prologue
    .line 8454
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->useBase64_:Z

    return v0
.end method

.method public getUserId()J
    .registers 3

    .prologue
    .line 8412
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->userId_:J

    return-wide v0
.end method

.method public hasEnableSilhouette()Z
    .registers 3

    .prologue
    .line 8471
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

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

.method public hasFocusObfuscatedId()Z
    .registers 3

    .prologue
    .line 8419
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

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

.method public hasImageSize()Z
    .registers 3

    .prologue
    .line 8461
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

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

.method public hasUseBase64()Z
    .registers 3

    .prologue
    .line 8451
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

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

.method public hasUserId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8409
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

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

    .line 8486
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->memoizedIsInitialized:B

    .line 8487
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 8490
    :goto_8
    return v1

    .line 8487
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 8489
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 8547
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 8495
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->getSerializedSize()I

    .line 8496
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_11

    .line 8497
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->userId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 8499
    :cond_11
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_1c

    .line 8500
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->useBase64_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 8502
    :cond_1c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2a

    .line 8503
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->imageSize_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 8505
    :cond_2a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_37

    .line 8506
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->enableSilhouette_:Z

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 8508
    :cond_37
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_45

    .line 8509
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8511
    :cond_45
    return-void
.end method
