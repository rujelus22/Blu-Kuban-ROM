.class public final Lcom/google/wireless/realtimechat/proto/Client$Receipt;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ReceiptOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Receipt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;,
        Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private messageClientId_:Ljava/lang/Object;

.field private messageId_:Ljava/lang/Object;

.field private messageTimestamp_:J

.field private recipientId_:Lcom/google/protobuf/LazyStringList;

.field private senderId_:Ljava/lang/Object;

.field private shardingHint_:Ljava/lang/Object;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

.field private timestamp_:J

.field private type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 11929
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 11930
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->initFields()V

    .line 11931
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10870
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 11157
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->memoizedIsInitialized:B

    .line 11201
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->memoizedSerializedSize:I

    .line 10871
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10865
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;-><init>(Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 10872
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11157
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->memoizedIsInitialized:B

    .line 11201
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->memoizedSerializedSize:I

    .line 10872
    return-void
.end method

.method static synthetic access$15102(Lcom/google/wireless/realtimechat/proto/Client$Receipt;Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10865
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    return-object p1
.end method

.method static synthetic access$15202(Lcom/google/wireless/realtimechat/proto/Client$Receipt;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10865
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->messageTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$15302(Lcom/google/wireless/realtimechat/proto/Client$Receipt;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10865
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15402(Lcom/google/wireless/realtimechat/proto/Client$Receipt;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10865
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->senderId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15502(Lcom/google/wireless/realtimechat/proto/Client$Receipt;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10865
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$15602(Lcom/google/wireless/realtimechat/proto/Client$Receipt;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10865
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->messageClientId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15702(Lcom/google/wireless/realtimechat/proto/Client$Receipt;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10865
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object p1
.end method

.method static synthetic access$15802(Lcom/google/wireless/realtimechat/proto/Client$Receipt;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10865
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->messageId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15900(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10865
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->recipientId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$15902(Lcom/google/wireless/realtimechat/proto/Client$Receipt;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10865
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->recipientId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$16002(Lcom/google/wireless/realtimechat/proto/Client$Receipt;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10865
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->shardingHint_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16102(Lcom/google/wireless/realtimechat/proto/Client$Receipt;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10865
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 10972
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->conversationId_:Ljava/lang/Object;

    .line 10973
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 10974
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10976
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->conversationId_:Ljava/lang/Object;

    .line 10979
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    .registers 1

    .prologue
    .line 10876
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    return-object v0
.end method

.method private getMessageClientIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11046
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->messageClientId_:Ljava/lang/Object;

    .line 11047
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 11048
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11050
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->messageClientId_:Ljava/lang/Object;

    .line 11053
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

.method private getMessageIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11088
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->messageId_:Ljava/lang/Object;

    .line 11089
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 11090
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11092
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->messageId_:Ljava/lang/Object;

    .line 11095
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
    .line 11004
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->senderId_:Ljava/lang/Object;

    .line 11005
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 11006
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11008
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->senderId_:Ljava/lang/Object;

    .line 11011
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
    .line 11134
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->shardingHint_:Ljava/lang/Object;

    .line 11135
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 11136
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11138
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->shardingHint_:Ljava/lang/Object;

    .line 11141
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

    .line 11146
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    .line 11147
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->messageTimestamp_:J

    .line 11148
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->conversationId_:Ljava/lang/Object;

    .line 11149
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->senderId_:Ljava/lang/Object;

    .line 11150
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->timestamp_:J

    .line 11151
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->messageClientId_:Ljava/lang/Object;

    .line 11152
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 11153
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->messageId_:Ljava/lang/Object;

    .line 11154
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 11155
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->shardingHint_:Ljava/lang/Object;

    .line 11156
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 1

    .prologue
    .line 11330
    #calls: Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->access$14900()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 11333
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 10958
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->conversationId_:Ljava/lang/Object;

    .line 10959
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 10960
    check-cast v1, Ljava/lang/String;

    .line 10968
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 10962
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10964
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10965
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 10966
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 10968
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10865
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    .registers 2

    .prologue
    .line 10880
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    return-object v0
.end method

.method public getMessageClientId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 11032
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->messageClientId_:Ljava/lang/Object;

    .line 11033
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 11034
    check-cast v1, Ljava/lang/String;

    .line 11042
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 11036
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11038
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11039
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 11040
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->messageClientId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 11042
    goto :goto_8
.end method

.method public getMessageId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 11074
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->messageId_:Ljava/lang/Object;

    .line 11075
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 11076
    check-cast v1, Ljava/lang/String;

    .line 11084
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 11078
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11080
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11081
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 11082
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->messageId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 11084
    goto :goto_8
.end method

.method public getMessageTimestamp()J
    .registers 3

    .prologue
    .line 10948
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->messageTimestamp_:J

    return-wide v0
.end method

.method public getRecipientId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 11110
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientIdCount()I
    .registers 2

    .prologue
    .line 11107
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->recipientId_:Lcom/google/protobuf/LazyStringList;

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
    .line 11104
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->recipientId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 10990
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->senderId_:Ljava/lang/Object;

    .line 10991
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 10992
    check-cast v1, Ljava/lang/String;

    .line 11000
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 10994
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10996
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10997
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 10998
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->senderId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 11000
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v5, 0x1

    .line 11203
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->memoizedSerializedSize:I

    .line 11204
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_a

    move v3, v2

    .line 11253
    .end local v2           #size:I
    .local v3, size:I
    :goto_9
    return v3

    .line 11206
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_a
    const/4 v2, 0x0

    .line 11207
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1c

    .line 11208
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->getNumber()I

    move-result v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 11211
    :cond_1c
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_2d

    .line 11212
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getMessageIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11215
    :cond_2d
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v6, :cond_3d

    .line 11216
    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11219
    :cond_3d
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4e

    .line 11220
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11223
    :cond_4e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_5e

    .line 11224
    const/4 v4, 0x5

    iget-wide v5, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->timestamp_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 11227
    :cond_5e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_70

    .line 11228
    const/4 v4, 0x6

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getMessageClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11231
    :cond_70
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_82

    .line 11232
    const/4 v4, 0x7

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getShardingHintBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11236
    :cond_82
    const/4 v0, 0x0

    .line 11237
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_84
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_9a

    .line 11238
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 11237
    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    .line 11241
    :cond_9a
    add-int/2addr v2, v0

    .line 11242
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getRecipientIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 11244
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_b7

    .line 11245
    const/16 v4, 0x9

    iget-object v5, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 11248
    :cond_b7
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v7, :cond_c6

    .line 11249
    const/16 v4, 0xa

    iget-wide v5, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->messageTimestamp_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 11252
    :cond_c6
    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->memoizedSerializedSize:I

    move v3, v2

    .line 11253
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_9
.end method

.method public getShardingHint()Ljava/lang/String;
    .registers 5

    .prologue
    .line 11120
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->shardingHint_:Ljava/lang/Object;

    .line 11121
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 11122
    check-cast v1, Ljava/lang/String;

    .line 11130
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 11124
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11126
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11127
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 11128
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->shardingHint_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 11130
    goto :goto_8
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 11064
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 11022
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->timestamp_:J

    return-wide v0
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;
    .registers 2

    .prologue
    .line 10938
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 10955
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

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

.method public hasMessageClientId()Z
    .registers 3

    .prologue
    .line 11029
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

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

.method public hasMessageId()Z
    .registers 3

    .prologue
    .line 11071
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

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

.method public hasMessageTimestamp()Z
    .registers 3

    .prologue
    .line 10945
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

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

.method public hasSenderId()Z
    .registers 3

    .prologue
    .line 10987
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

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

.method public hasShardingHint()Z
    .registers 3

    .prologue
    .line 11117
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 11061
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

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

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 11019
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 10935
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

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

    .line 11159
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->memoizedIsInitialized:B

    .line 11160
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 11163
    :goto_8
    return v1

    .line 11160
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 11162
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10865
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 2

    .prologue
    .line 11331
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10865
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    .registers 2

    .prologue
    .line 11335
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

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
    .line 11260
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

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 11168
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getSerializedSize()I

    .line 11169
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_17

    .line 11170
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 11172
    :cond_17
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_26

    .line 11173
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getMessageIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11175
    :cond_26
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v3, :cond_34

    .line 11176
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11178
    :cond_34
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_41

    .line 11179
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11181
    :cond_41
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4f

    .line 11182
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->timestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11184
    :cond_4f
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5f

    .line 11185
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getMessageClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11187
    :cond_5f
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_6f

    .line 11188
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getShardingHintBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11190
    :cond_6f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_70
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_84

    .line 11191
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11190
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 11193
    :cond_84
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_93

    .line 11194
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11196
    :cond_93
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_a0

    .line 11197
    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->messageTimestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11199
    :cond_a0
    return-void
.end method
