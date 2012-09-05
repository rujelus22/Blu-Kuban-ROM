.class public final Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ChatMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChatMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;,
        Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private content_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Content;",
            ">;"
        }
    .end annotation
.end field

.field private conversationId_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private messageClientId_:Ljava/lang/Object;

.field private receiverState_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

.field private recipientId_:Lcom/google/protobuf/LazyStringList;

.field private retry_:Z

.field private senderId_:Ljava/lang/Object;

.field private shardingHint_:Ljava/lang/Object;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2513
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 2514
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->initFields()V

    .line 2515
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1392
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1690
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->memoizedIsInitialized:B

    .line 1734
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->memoizedSerializedSize:I

    .line 1393
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1387
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1394
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1690
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->memoizedIsInitialized:B

    .line 1734
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->memoizedSerializedSize:I

    .line 1394
    return-void
.end method

.method static synthetic access$2102(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->messageClientId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1387
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$2402(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->senderId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->content_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->content_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->shardingHint_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1387
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->retry_:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->recipientId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->recipientId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1387
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1548
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->conversationId_:Ljava/lang/Object;

    .line 1549
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1550
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1552
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->conversationId_:Ljava/lang/Object;

    .line 1555
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 1

    .prologue
    .line 1398
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1506
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->id_:Ljava/lang/Object;

    .line 1507
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1508
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1510
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->id_:Ljava/lang/Object;

    .line 1513
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

.method private getMessageClientIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1474
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->messageClientId_:Ljava/lang/Object;

    .line 1475
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1476
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1478
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->messageClientId_:Ljava/lang/Object;

    .line 1481
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

.method private getSenderIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1580
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->senderId_:Ljava/lang/Object;

    .line 1581
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1582
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1584
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->senderId_:Ljava/lang/Object;

    .line 1587
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

.method private getShardingHintBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1633
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->shardingHint_:Ljava/lang/Object;

    .line 1634
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1635
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1637
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->shardingHint_:Ljava/lang/Object;

    .line 1640
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
    .line 1679
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->messageClientId_:Ljava/lang/Object;

    .line 1680
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->id_:Ljava/lang/Object;

    .line 1681
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->timestamp_:J

    .line 1682
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->conversationId_:Ljava/lang/Object;

    .line 1683
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->senderId_:Ljava/lang/Object;

    .line 1684
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->content_:Ljava/util/List;

    .line 1685
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->shardingHint_:Ljava/lang/Object;

    .line 1686
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->retry_:Z

    .line 1687
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    .line 1688
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 1689
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 1

    .prologue
    .line 1863
    #calls: Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->access$1900()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1866
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;
    .registers 3
    .parameter "index"

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->content_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Content;

    return-object v0
.end method

.method public getContentCount()I
    .registers 2

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->content_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContentList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Content;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->content_:Ljava/util/List;

    return-object v0
.end method

.method public getContentOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Data$ContentOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->content_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$ContentOrBuilder;

    return-object v0
.end method

.method public getContentOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$ContentOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->content_:Ljava/util/List;

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1534
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->conversationId_:Ljava/lang/Object;

    .line 1535
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1536
    check-cast v1, Ljava/lang/String;

    .line 1544
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1538
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1540
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1541
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1542
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1544
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1387
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 2

    .prologue
    .line 1402
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1492
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->id_:Ljava/lang/Object;

    .line 1493
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1494
    check-cast v1, Ljava/lang/String;

    .line 1502
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1496
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1498
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1499
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1500
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1502
    goto :goto_8
.end method

.method public getMessageClientId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1460
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->messageClientId_:Ljava/lang/Object;

    .line 1461
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1462
    check-cast v1, Ljava/lang/String;

    .line 1470
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1464
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1466
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1467
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1468
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->messageClientId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1470
    goto :goto_8
.end method

.method public getReceiverState()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;
    .registers 2

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    return-object v0
.end method

.method public getRecipientId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientIdCount()I
    .registers 2

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getRecipientIdList()Ljava/util/List;
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
    .line 1669
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->recipientId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getRetry()Z
    .registers 2

    .prologue
    .line 1651
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->retry_:Z

    return v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1566
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->senderId_:Ljava/lang/Object;

    .line 1567
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1568
    check-cast v1, Ljava/lang/String;

    .line 1576
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1570
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1572
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1573
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1574
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->senderId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1576
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1736
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->memoizedSerializedSize:I

    .line 1737
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_a

    move v3, v2

    .line 1786
    .end local v2           #size:I
    .local v3, size:I
    :goto_9
    return v3

    .line 1739
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_a
    const/4 v2, 0x0

    .line 1740
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1a

    .line 1741
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getMessageClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1744
    :cond_1a
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_29

    .line 1745
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1748
    :cond_29
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_37

    .line 1749
    const/4 v4, 0x3

    iget-wide v5, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->timestamp_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 1752
    :cond_37
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_48

    .line 1753
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1756
    :cond_48
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_5a

    .line 1757
    const/4 v4, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1760
    :cond_5a
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5b
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->content_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_74

    .line 1761
    const/4 v5, 0x6

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->content_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1760
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 1764
    :cond_74
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_86

    .line 1765
    const/4 v4, 0x7

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getShardingHintBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1769
    :cond_86
    const/4 v0, 0x0

    .line 1770
    .local v0, dataSize:I
    const/4 v1, 0x0

    :goto_88
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_9e

    .line 1771
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1770
    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    .line 1774
    :cond_9e
    add-int/2addr v2, v0

    .line 1775
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getRecipientIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 1777
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_bb

    .line 1778
    const/16 v4, 0x9

    iget-boolean v5, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->retry_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 1781
    :cond_bb
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_d0

    .line 1782
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    invoke-virtual {v5}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 1785
    :cond_d0
    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->memoizedSerializedSize:I

    move v3, v2

    .line 1786
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_9
.end method

.method public getShardingHint()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1619
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->shardingHint_:Ljava/lang/Object;

    .line 1620
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1621
    check-cast v1, Ljava/lang/String;

    .line 1629
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1623
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1625
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1626
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1627
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->shardingHint_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1629
    goto :goto_8
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 1524
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->timestamp_:J

    return-wide v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 1531
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    .line 1489
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

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

.method public hasMessageClientId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1457
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasReceiverState()Z
    .registers 3

    .prologue
    .line 1658
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasRetry()Z
    .registers 3

    .prologue
    .line 1648
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSenderId()Z
    .registers 3

    .prologue
    .line 1563
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

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

.method public hasShardingHint()Z
    .registers 3

    .prologue
    .line 1616
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

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

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 1521
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1692
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->memoizedIsInitialized:B

    .line 1693
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1696
    :goto_8
    return v1

    .line 1693
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1695
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->memoizedIsInitialized:B

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
    .line 1793
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1701
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getSerializedSize()I

    .line 1702
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 1703
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getMessageClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1705
    :cond_15
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_22

    .line 1706
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1708
    :cond_22
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2e

    .line 1709
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->timestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1711
    :cond_2e
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3b

    .line 1712
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1714
    :cond_3b
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4b

    .line 1715
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1717
    :cond_4b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4c
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->content_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_63

    .line 1718
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->content_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1717
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 1720
    :cond_63
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_73

    .line 1721
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getShardingHintBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1723
    :cond_73
    const/4 v0, 0x0

    :goto_74
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_88

    .line 1724
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1723
    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    .line 1726
    :cond_88
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_97

    .line 1727
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->retry_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1729
    :cond_97
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_aa

    .line 1730
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1732
    :cond_aa
    return-void
.end method
