.class public final Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReplyToInviteRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;,
        Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private replyToId_:Ljava/lang/Object;

.field private reply_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

.field private senderId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32766
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 32767
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->initFields()V

    .line 32768
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 32187
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 32351
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->memoizedIsInitialized:B

    .line 32377
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->memoizedSerializedSize:I

    .line 32188
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32182
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 32189
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 32351
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->memoizedIsInitialized:B

    .line 32377
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->memoizedSerializedSize:I

    .line 32189
    return-void
.end method

.method static synthetic access$44902(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32182
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->replyToId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$45002(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32182
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$45102(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32182
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->reply_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    return-object p1
.end method

.method static synthetic access$45202(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32182
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->senderId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$45302(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32182
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->bitField0_:I

    return p1
.end method

.method private getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 32292
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->conversationId_:Ljava/lang/Object;

    .line 32293
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 32294
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 32296
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->conversationId_:Ljava/lang/Object;

    .line 32299
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
    .registers 1

    .prologue
    .line 32193
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    return-object v0
.end method

.method private getReplyToIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 32260
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->replyToId_:Ljava/lang/Object;

    .line 32261
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 32262
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 32264
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->replyToId_:Ljava/lang/Object;

    .line 32267
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
    .line 32334
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->senderId_:Ljava/lang/Object;

    .line 32335
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 32336
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 32338
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->senderId_:Ljava/lang/Object;

    .line 32341
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
    .registers 2

    .prologue
    .line 32346
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->replyToId_:Ljava/lang/Object;

    .line 32347
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->conversationId_:Ljava/lang/Object;

    .line 32348
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;->ACCEPT:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->reply_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    .line 32349
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->senderId_:Ljava/lang/Object;

    .line 32350
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    .registers 1

    .prologue
    .line 32477
    #calls: Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->access$44700()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 32480
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 32278
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->conversationId_:Ljava/lang/Object;

    .line 32279
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 32280
    check-cast v1, Ljava/lang/String;

    .line 32288
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 32282
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 32284
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 32285
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 32286
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 32288
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32182
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
    .registers 2

    .prologue
    .line 32197
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    return-object v0
.end method

.method public getReply()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;
    .registers 2

    .prologue
    .line 32310
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->reply_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    return-object v0
.end method

.method public getReplyToId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 32246
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->replyToId_:Ljava/lang/Object;

    .line 32247
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 32248
    check-cast v1, Ljava/lang/String;

    .line 32256
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 32250
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 32252
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 32253
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 32254
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->replyToId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 32256
    goto :goto_8
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 32320
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->senderId_:Ljava/lang/Object;

    .line 32321
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 32322
    check-cast v1, Ljava/lang/String;

    .line 32330
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 32324
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 32326
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 32327
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 32328
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->senderId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 32330
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 32379
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->memoizedSerializedSize:I

    .line 32380
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 32400
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 32382
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 32383
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 32384
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getReplyToIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 32387
    :cond_1a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 32388
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 32391
    :cond_29
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3b

    .line 32392
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->reply_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 32395
    :cond_3b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4c

    .line 32396
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 32399
    :cond_4c
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 32400
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 32275
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->bitField0_:I

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

.method public hasReply()Z
    .registers 3

    .prologue
    .line 32307
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->bitField0_:I

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

.method public hasReplyToId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 32243
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSenderId()Z
    .registers 3

    .prologue
    .line 32317
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 32353
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->memoizedIsInitialized:B

    .line 32354
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 32357
    :goto_8
    return v1

    .line 32354
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 32356
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 32182
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    .registers 2

    .prologue
    .line 32478
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 32182
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    .registers 2

    .prologue
    .line 32482
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

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
    .line 32407
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

    .line 32362
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getSerializedSize()I

    .line 32363
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 32364
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getReplyToIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 32366
    :cond_13
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 32367
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 32369
    :cond_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 32370
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->reply_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 32372
    :cond_30
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3f

    .line 32373
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 32375
    :cond_3f
    return-void
.end method
