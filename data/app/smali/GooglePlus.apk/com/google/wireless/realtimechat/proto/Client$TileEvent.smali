.class public final Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$TileEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TileEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private eventData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private eventType_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private tileType_:Ljava/lang/Object;

.field private tileVersion_:I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 6226
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 6227
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->initFields()V

    .line 6228
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 5498
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 5657
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->memoizedIsInitialized:B

    .line 5689
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->memoizedSerializedSize:I

    .line 5499
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5493
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;-><init>(Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 5500
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5657
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->memoizedIsInitialized:B

    .line 5689
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->memoizedSerializedSize:I

    .line 5500
    return-void
.end method

.method static synthetic access$7402(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5493
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7502(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5493
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$7602(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5493
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->tileType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7702(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5493
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->tileVersion_:I

    return p1
.end method

.method static synthetic access$7802(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5493
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->eventType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7900(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5493
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->eventData_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7902(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5493
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->eventData_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8002(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5493
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 5533
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->conversationId_:Ljava/lang/Object;

    .line 5534
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 5535
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5537
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->conversationId_:Ljava/lang/Object;

    .line 5540
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    .registers 1

    .prologue
    .line 5504
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    return-object v0
.end method

.method private getEventTypeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 5617
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->eventType_:Ljava/lang/Object;

    .line 5618
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 5619
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5621
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->eventType_:Ljava/lang/Object;

    .line 5624
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

.method private getTileTypeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 5575
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->tileType_:Ljava/lang/Object;

    .line 5576
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 5577
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5579
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->tileType_:Ljava/lang/Object;

    .line 5582
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
    .line 5650
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->conversationId_:Ljava/lang/Object;

    .line 5651
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->timestamp_:J

    .line 5652
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->tileType_:Ljava/lang/Object;

    .line 5653
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->tileVersion_:I

    .line 5654
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->eventType_:Ljava/lang/Object;

    .line 5655
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->eventData_:Ljava/util/List;

    .line 5656
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 1

    .prologue
    .line 5797
    #calls: Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->access$7200()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 5800
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 5519
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->conversationId_:Ljava/lang/Object;

    .line 5520
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 5521
    check-cast v1, Ljava/lang/String;

    .line 5529
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 5523
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5525
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5526
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 5527
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 5529
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5493
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    .registers 2

    .prologue
    .line 5508
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    return-object v0
.end method

.method public getEventData(I)Lcom/google/wireless/realtimechat/proto/Data$KeyValue;
    .registers 3
    .parameter "index"

    .prologue
    .line 5642
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->eventData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    return-object v0
.end method

.method public getEventDataCount()I
    .registers 2

    .prologue
    .line 5639
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->eventData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEventDataList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$KeyValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5632
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->eventData_:Ljava/util/List;

    return-object v0
.end method

.method public getEventDataOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Data$KeyValueOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 5646
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->eventData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$KeyValueOrBuilder;

    return-object v0
.end method

.method public getEventDataOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$KeyValueOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5636
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->eventData_:Ljava/util/List;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 5603
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->eventType_:Ljava/lang/Object;

    .line 5604
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 5605
    check-cast v1, Ljava/lang/String;

    .line 5613
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 5607
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5609
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5610
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 5611
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->eventType_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 5613
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 5691
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->memoizedSerializedSize:I

    .line 5692
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 5720
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 5694
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 5695
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1a

    .line 5696
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5699
    :cond_1a
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_27

    .line 5700
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->timestamp_:J

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 5703
    :cond_27
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_37

    .line 5704
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getTileTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5707
    :cond_37
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_46

    .line 5708
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->tileVersion_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 5711
    :cond_46
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_58

    .line 5712
    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getEventTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5715
    :cond_58
    const/4 v0, 0x0

    .local v0, i:I
    :goto_59
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->eventData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_72

    .line 5716
    const/4 v4, 0x6

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->eventData_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5715
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 5719
    :cond_72
    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->memoizedSerializedSize:I

    move v2, v1

    .line 5720
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getTileType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 5561
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->tileType_:Ljava/lang/Object;

    .line 5562
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 5563
    check-cast v1, Ljava/lang/String;

    .line 5571
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 5565
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5567
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5568
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 5569
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->tileType_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 5571
    goto :goto_8
.end method

.method public getTileVersion()I
    .registers 2

    .prologue
    .line 5593
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->tileVersion_:I

    return v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 5551
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->timestamp_:J

    return-wide v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5516
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasEventType()Z
    .registers 3

    .prologue
    .line 5600
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->bitField0_:I

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

.method public hasTileType()Z
    .registers 3

    .prologue
    .line 5558
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->bitField0_:I

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

.method public hasTileVersion()Z
    .registers 3

    .prologue
    .line 5590
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->bitField0_:I

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

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 5548
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->bitField0_:I

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

    .line 5659
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->memoizedIsInitialized:B

    .line 5660
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 5663
    :goto_8
    return v1

    .line 5660
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 5662
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5493
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 2

    .prologue
    .line 5798
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5493
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    .registers 2

    .prologue
    .line 5802
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

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
    .line 5727
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

    .line 5668
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getSerializedSize()I

    .line 5669
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 5670
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5672
    :cond_13
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1e

    .line 5673
    iget-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->timestamp_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 5675
    :cond_1e
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2c

    .line 5676
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getTileTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5678
    :cond_2c
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_39

    .line 5679
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->tileVersion_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5681
    :cond_39
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_49

    .line 5682
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getEventTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5684
    :cond_49
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4a
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->eventData_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 5685
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->eventData_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5684
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 5687
    :cond_61
    return-void
.end method
