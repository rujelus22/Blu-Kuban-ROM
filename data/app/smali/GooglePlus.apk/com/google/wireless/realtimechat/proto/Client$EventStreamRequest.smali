.class public final Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventStreamRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;,
        Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private count_:I

.field private end_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private messageId_:Ljava/lang/Object;

.field private order_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

.field private senderId_:Ljava/lang/Object;

.field private start_:J

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25827
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 25828
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->initFields()V

    .line 25829
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 25007
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 25218
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->memoizedIsInitialized:B

    .line 25256
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->memoizedSerializedSize:I

    .line 25008
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25002
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 25009
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 25218
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->memoizedIsInitialized:B

    .line 25256
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->memoizedSerializedSize:I

    .line 25009
    return-void
.end method

.method static synthetic access$34302(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25002
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$34402(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25002
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->messageId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$34502(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25002
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->start_:J

    return-wide p1
.end method

.method static synthetic access$34602(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25002
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->order_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    return-object p1
.end method

.method static synthetic access$34702(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25002
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->end_:J

    return-wide p1
.end method

.method static synthetic access$34802(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25002
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->count_:I

    return p1
.end method

.method static synthetic access$34902(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25002
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->senderId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$35002(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25002
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object p1
.end method

.method static synthetic access$35102(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25002
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 25083
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->conversationId_:Ljava/lang/Object;

    .line 25084
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 25085
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 25087
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->conversationId_:Ljava/lang/Object;

    .line 25090
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
    .registers 1

    .prologue
    .line 25013
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    return-object v0
.end method

.method private getMessageIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 25115
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->messageId_:Ljava/lang/Object;

    .line 25116
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 25117
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 25119
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->messageId_:Ljava/lang/Object;

    .line 25122
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
    .line 25187
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->senderId_:Ljava/lang/Object;

    .line 25188
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 25189
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 25191
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->senderId_:Ljava/lang/Object;

    .line 25194
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

    .line 25209
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->conversationId_:Ljava/lang/Object;

    .line 25210
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->messageId_:Ljava/lang/Object;

    .line 25211
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->start_:J

    .line 25212
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;->EARLIEST:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->order_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    .line 25213
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->end_:J

    .line 25214
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->count_:I

    .line 25215
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->senderId_:Ljava/lang/Object;

    .line 25216
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 25217
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 1

    .prologue
    .line 25372
    #calls: Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->access$34100()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 25375
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 25069
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->conversationId_:Ljava/lang/Object;

    .line 25070
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 25071
    check-cast v1, Ljava/lang/String;

    .line 25079
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 25073
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 25075
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 25076
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 25077
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 25079
    goto :goto_8
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 25163
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25002
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
    .registers 2

    .prologue
    .line 25017
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    return-object v0
.end method

.method public getEnd()J
    .registers 3

    .prologue
    .line 25153
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->end_:J

    return-wide v0
.end method

.method public getMessageId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 25101
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->messageId_:Ljava/lang/Object;

    .line 25102
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 25103
    check-cast v1, Ljava/lang/String;

    .line 25111
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 25105
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 25107
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 25108
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 25109
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->messageId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 25111
    goto :goto_8
.end method

.method public getOrder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;
    .registers 2

    .prologue
    .line 25143
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->order_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 25173
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->senderId_:Ljava/lang/Object;

    .line 25174
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 25175
    check-cast v1, Ljava/lang/String;

    .line 25183
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 25177
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 25179
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 25180
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 25181
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->senderId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 25183
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 25258
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->memoizedSerializedSize:I

    .line 25259
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 25295
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 25261
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 25262
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 25263
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25266
    :cond_1c
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 25267
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getMessageIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25270
    :cond_2b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 25271
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->start_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 25274
    :cond_39
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4a

    .line 25275
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->order_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;->getNumber()I

    move-result v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 25278
    :cond_4a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5a

    .line 25279
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->end_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 25282
    :cond_5a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6a

    .line 25283
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->count_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 25286
    :cond_6a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7c

    .line 25287
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25290
    :cond_7c
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8b

    .line 25291
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25294
    :cond_8b
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 25295
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getStart()J
    .registers 3

    .prologue
    .line 25133
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->start_:J

    return-wide v0
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 25205
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 25066
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasCount()Z
    .registers 3

    .prologue
    .line 25160
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

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

.method public hasEnd()Z
    .registers 3

    .prologue
    .line 25150
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

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

.method public hasMessageId()Z
    .registers 3

    .prologue
    .line 25098
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

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

.method public hasOrder()Z
    .registers 3

    .prologue
    .line 25140
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

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

.method public hasSenderId()Z
    .registers 3

    .prologue
    .line 25170
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

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

.method public hasStart()Z
    .registers 3

    .prologue
    .line 25130
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

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

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 25202
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 25220
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->memoizedIsInitialized:B

    .line 25221
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 25224
    :goto_8
    return v1

    .line 25221
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 25223
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 25002
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 2

    .prologue
    .line 25373
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 25002
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 2

    .prologue
    .line 25377
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

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
    .line 25302
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
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 25229
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getSerializedSize()I

    .line 25230
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 25231
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 25233
    :cond_15
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 25234
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getMessageIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 25236
    :cond_22
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 25237
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->start_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 25239
    :cond_2e
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3d

    .line 25240
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->order_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;->getNumber()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 25242
    :cond_3d
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4b

    .line 25243
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->end_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 25245
    :cond_4b
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_59

    .line 25246
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->count_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 25248
    :cond_59
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_69

    .line 25249
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 25251
    :cond_69
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_76

    .line 25252
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 25254
    :cond_76
    return-void
.end method
