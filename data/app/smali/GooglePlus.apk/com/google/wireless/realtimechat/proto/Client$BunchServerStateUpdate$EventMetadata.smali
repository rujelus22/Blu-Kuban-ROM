.class public final Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private eventTimestamp_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 57837
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    .line 57838
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->initFields()V

    .line 57839
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 57483
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 57543
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->memoizedIsInitialized:B

    .line 57563
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->memoizedSerializedSize:I

    .line 57484
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57478
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;-><init>(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 57485
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 57543
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->memoizedIsInitialized:B

    .line 57563
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->memoizedSerializedSize:I

    .line 57485
    return-void
.end method

.method static synthetic access$78502(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57478
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$78602(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57478
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->eventTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$78702(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57478
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 57518
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->conversationId_:Ljava/lang/Object;

    .line 57519
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 57520
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 57522
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->conversationId_:Ljava/lang/Object;

    .line 57525
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;
    .registers 1

    .prologue
    .line 57489
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 57540
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->conversationId_:Ljava/lang/Object;

    .line 57541
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->eventTimestamp_:J

    .line 57542
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;
    .registers 1

    .prologue
    .line 57655
    #calls: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->access$78300()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 57658
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 57504
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->conversationId_:Ljava/lang/Object;

    .line 57505
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 57506
    check-cast v1, Ljava/lang/String;

    .line 57514
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 57508
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 57510
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 57511
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 57512
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 57514
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 57478
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;
    .registers 2

    .prologue
    .line 57493
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    return-object v0
.end method

.method public getEventTimestamp()J
    .registers 3

    .prologue
    .line 57536
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->eventTimestamp_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 57565
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->memoizedSerializedSize:I

    .line 57566
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 57578
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 57568
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 57569
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 57570
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 57573
    :cond_19
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 57574
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->eventTimestamp_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 57577
    :cond_26
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->memoizedSerializedSize:I

    move v1, v0

    .line 57578
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 57501
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasEventTimestamp()Z
    .registers 3

    .prologue
    .line 57533
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->bitField0_:I

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

    .line 57545
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->memoizedIsInitialized:B

    .line 57546
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 57549
    :goto_8
    return v1

    .line 57546
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 57548
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 57478
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;
    .registers 2

    .prologue
    .line 57656
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 57478
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;
    .registers 2

    .prologue
    .line 57660
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

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
    .line 57585
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 57554
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->getSerializedSize()I

    .line 57555
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 57556
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 57558
    :cond_12
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 57559
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->eventTimestamp_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 57561
    :cond_1d
    return-void
.end method
