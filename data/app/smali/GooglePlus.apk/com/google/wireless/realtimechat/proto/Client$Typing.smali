.class public final Lcom/google/wireless/realtimechat/proto/Client$Typing;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$TypingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Typing"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;,
        Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Typing;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private senderId_:Ljava/lang/Object;

.field private timestamp_:J

.field private type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9533
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Typing;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$Typing;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 9534
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->initFields()V

    .line 9535
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8982
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9133
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->memoizedIsInitialized:B

    .line 9159
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->memoizedSerializedSize:I

    .line 8983
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8977
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Typing;-><init>(Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8984
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9133
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->memoizedIsInitialized:B

    .line 9159
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->memoizedSerializedSize:I

    .line 8984
    return-void
.end method

.method static synthetic access$12402(Lcom/google/wireless/realtimechat/proto/Client$Typing;Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8977
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    return-object p1
.end method

.method static synthetic access$12502(Lcom/google/wireless/realtimechat/proto/Client$Typing;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8977
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12602(Lcom/google/wireless/realtimechat/proto/Client$Typing;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8977
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->senderId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12702(Lcom/google/wireless/realtimechat/proto/Client$Typing;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8977
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$12802(Lcom/google/wireless/realtimechat/proto/Client$Typing;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8977
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 9074
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->conversationId_:Ljava/lang/Object;

    .line 9075
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 9076
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9078
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->conversationId_:Ljava/lang/Object;

    .line 9081
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Typing;
    .registers 1

    .prologue
    .line 8988
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    return-object v0
.end method

.method private getSenderIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 9106
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->senderId_:Ljava/lang/Object;

    .line 9107
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 9108
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9110
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->senderId_:Ljava/lang/Object;

    .line 9113
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
    .line 9128
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 9129
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->conversationId_:Ljava/lang/Object;

    .line 9130
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->senderId_:Ljava/lang/Object;

    .line 9131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->timestamp_:J

    .line 9132
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    .registers 1

    .prologue
    .line 9259
    #calls: Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->access$12200()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 9262
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 9060
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->conversationId_:Ljava/lang/Object;

    .line 9061
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 9062
    check-cast v1, Ljava/lang/String;

    .line 9070
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 9064
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 9066
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 9067
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 9068
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 9070
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8977
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Typing;
    .registers 2

    .prologue
    .line 8992
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 9092
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->senderId_:Ljava/lang/Object;

    .line 9093
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 9094
    check-cast v1, Ljava/lang/String;

    .line 9102
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 9096
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 9098
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 9099
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 9100
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->senderId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 9102
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 9161
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->memoizedSerializedSize:I

    .line 9162
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 9182
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 9164
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 9165
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 9166
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9169
    :cond_1c
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 9170
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9173
    :cond_2b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3b

    .line 9174
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9177
    :cond_3b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4a

    .line 9178
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->timestamp_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 9181
    :cond_4a
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->memoizedSerializedSize:I

    move v1, v0

    .line 9182
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 9124
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->timestamp_:J

    return-wide v0
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;
    .registers 2

    .prologue
    .line 9050
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 9057
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->bitField0_:I

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
    .line 9089
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->bitField0_:I

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

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 9121
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 9047
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->bitField0_:I

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

    .line 9135
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->memoizedIsInitialized:B

    .line 9136
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 9139
    :goto_8
    return v1

    .line 9136
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 9138
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8977
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    .registers 2

    .prologue
    .line 9260
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8977
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    .registers 2

    .prologue
    .line 9264
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

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
    .line 9189
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

    .line 9144
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getSerializedSize()I

    .line 9145
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 9146
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9148
    :cond_15
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 9149
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9151
    :cond_22
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 9152
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9154
    :cond_30
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 9155
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing;->timestamp_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 9157
    :cond_3d
    return-void
.end method
