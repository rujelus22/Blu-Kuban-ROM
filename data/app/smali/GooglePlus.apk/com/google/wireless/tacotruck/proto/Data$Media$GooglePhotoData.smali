.class public final Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GooglePhotoData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

.field private static final serialVersionUID:J


# instance fields
.field private albumId_:J

.field private bitField0_:I

.field private mediaTag_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ownerFocusObfuscatedId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 6911
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    .line 6912
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->initFields()V

    .line 6913
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 6504
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6575
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->memoizedIsInitialized:B

    .line 6598
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->memoizedSerializedSize:I

    .line 6505
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6499
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 6506
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6575
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->memoizedIsInitialized:B

    .line 6598
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->memoizedSerializedSize:I

    .line 6506
    return-void
.end method

.method static synthetic access$8302(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6499
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->mediaTag_:J

    return-wide p1
.end method

.method static synthetic access$8402(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6499
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->ownerFocusObfuscatedId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8502(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6499
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->albumId_:J

    return-wide p1
.end method

.method static synthetic access$8602(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6499
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
    .registers 1

    .prologue
    .line 6510
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    return-object v0
.end method

.method private getOwnerFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6549
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->ownerFocusObfuscatedId_:Ljava/lang/Object;

    .line 6550
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6551
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6553
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->ownerFocusObfuscatedId_:Ljava/lang/Object;

    .line 6556
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
    const-wide/16 v1, 0x0

    .line 6571
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->mediaTag_:J

    .line 6572
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->ownerFocusObfuscatedId_:Ljava/lang/Object;

    .line 6573
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->albumId_:J

    .line 6574
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 1

    .prologue
    .line 6694
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->access$8100()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 6697
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbumId()J
    .registers 3

    .prologue
    .line 6567
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->albumId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6499
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;
    .registers 2

    .prologue
    .line 6514
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    return-object v0
.end method

.method public getMediaTag()J
    .registers 3

    .prologue
    .line 6525
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->mediaTag_:J

    return-wide v0
.end method

.method public getOwnerFocusObfuscatedId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 6535
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->ownerFocusObfuscatedId_:Ljava/lang/Object;

    .line 6536
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 6537
    check-cast v1, Ljava/lang/String;

    .line 6545
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 6539
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6541
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6542
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6543
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->ownerFocusObfuscatedId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 6545
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 6600
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->memoizedSerializedSize:I

    .line 6601
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 6617
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 6603
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 6604
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_17

    .line 6605
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->mediaTag_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 6608
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_26

    .line 6609
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getOwnerFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6612
    :cond_26
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_35

    .line 6613
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->albumId_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 6616
    :cond_35
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->memoizedSerializedSize:I

    move v1, v0

    .line 6617
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasAlbumId()Z
    .registers 3

    .prologue
    .line 6564
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->bitField0_:I

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

.method public hasMediaTag()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 6522
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasOwnerFocusObfuscatedId()Z
    .registers 3

    .prologue
    .line 6532
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 6577
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->memoizedIsInitialized:B

    .line 6578
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 6581
    :goto_8
    return v1

    .line 6578
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 6580
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6499
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 2

    .prologue
    .line 6695
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6499
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;
    .registers 2

    .prologue
    .line 6699
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;)Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData$Builder;

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
    .line 6624
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

    .line 6586
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getSerializedSize()I

    .line 6587
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_10

    .line 6588
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->mediaTag_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6590
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1d

    .line 6591
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getOwnerFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6593
    :cond_1d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 6594
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->albumId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6596
    :cond_2a
    return-void
.end method
