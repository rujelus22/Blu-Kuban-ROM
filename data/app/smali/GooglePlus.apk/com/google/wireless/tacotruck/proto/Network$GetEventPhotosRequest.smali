.class public final Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetEventPhotosRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private byUser_:Z

.field private eventId_:Ljava/lang/Object;

.field private maxClusterSize_:J

.field private maxInterval_:J

.field private maxPhotos_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private minTimestamp_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 54974
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;

    .line 54975
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->initFields()V

    .line 54976
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 54408
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 54512
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->memoizedIsInitialized:B

    .line 54544
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->memoizedSerializedSize:I

    .line 54409
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54403
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 54410
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 54512
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->memoizedIsInitialized:B

    .line 54544
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->memoizedSerializedSize:I

    .line 54410
    return-void
.end method

.method static synthetic access$77202(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54403
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->eventId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$77302(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54403
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->maxPhotos_:I

    return p1
.end method

.method static synthetic access$77402(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54403
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->maxClusterSize_:J

    return-wide p1
.end method

.method static synthetic access$77502(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54403
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->byUser_:Z

    return p1
.end method

.method static synthetic access$77602(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54403
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->maxInterval_:J

    return-wide p1
.end method

.method static synthetic access$77702(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54403
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->minTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$77802(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54403
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;
    .registers 1

    .prologue
    .line 54414
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;

    return-object v0
.end method

.method private getEventIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 54443
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->eventId_:Ljava/lang/Object;

    .line 54444
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 54445
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 54447
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->eventId_:Ljava/lang/Object;

    .line 54450
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
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 54505
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->eventId_:Ljava/lang/Object;

    .line 54506
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->maxPhotos_:I

    .line 54507
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->maxClusterSize_:J

    .line 54508
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->byUser_:Z

    .line 54509
    const-wide/16 v0, 0x708

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->maxInterval_:J

    .line 54510
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->minTimestamp_:J

    .line 54511
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    .registers 1

    .prologue
    .line 54652
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->access$77000()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 54655
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getByUser()Z
    .registers 2

    .prologue
    .line 54481
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->byUser_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 54403
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;
    .registers 2

    .prologue
    .line 54418
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 54429
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->eventId_:Ljava/lang/Object;

    .line 54430
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 54431
    check-cast v1, Ljava/lang/String;

    .line 54439
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 54433
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 54435
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 54436
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 54437
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->eventId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 54439
    goto :goto_8
.end method

.method public getMaxClusterSize()J
    .registers 3

    .prologue
    .line 54471
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->maxClusterSize_:J

    return-wide v0
.end method

.method public getMaxInterval()J
    .registers 3

    .prologue
    .line 54491
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->maxInterval_:J

    return-wide v0
.end method

.method public getMaxPhotos()I
    .registers 2

    .prologue
    .line 54461
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->maxPhotos_:I

    return v0
.end method

.method public getMinTimestamp()J
    .registers 3

    .prologue
    .line 54501
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->minTimestamp_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 54546
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->memoizedSerializedSize:I

    .line 54547
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 54575
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 54549
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 54550
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 54551
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->getEventIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 54554
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 54555
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->maxPhotos_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 54558
    :cond_27
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 54559
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->maxClusterSize_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 54562
    :cond_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_44

    .line 54563
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->byUser_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 54566
    :cond_44
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_54

    .line 54567
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->maxInterval_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 54570
    :cond_54
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_64

    .line 54571
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->minTimestamp_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 54574
    :cond_64
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 54575
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasByUser()Z
    .registers 3

    .prologue
    .line 54478
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->bitField0_:I

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

.method public hasEventId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 54426
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMaxClusterSize()Z
    .registers 3

    .prologue
    .line 54468
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->bitField0_:I

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

.method public hasMaxInterval()Z
    .registers 3

    .prologue
    .line 54488
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->bitField0_:I

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

.method public hasMaxPhotos()Z
    .registers 3

    .prologue
    .line 54458
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->bitField0_:I

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

.method public hasMinTimestamp()Z
    .registers 3

    .prologue
    .line 54498
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 54514
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->memoizedIsInitialized:B

    .line 54515
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 54518
    :goto_8
    return v1

    .line 54515
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 54517
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 54403
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    .registers 2

    .prologue
    .line 54653
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 54403
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    .registers 2

    .prologue
    .line 54657
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

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
    .line 54582
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
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 54523
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->getSerializedSize()I

    .line 54524
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 54525
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->getEventIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 54527
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 54528
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->maxPhotos_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 54530
    :cond_1e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 54531
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->maxClusterSize_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 54533
    :cond_2a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_37

    .line 54534
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->byUser_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 54536
    :cond_37
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_45

    .line 54537
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->maxInterval_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 54539
    :cond_45
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_53

    .line 54540
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->minTimestamp_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 54542
    :cond_53
    return-void
.end method
