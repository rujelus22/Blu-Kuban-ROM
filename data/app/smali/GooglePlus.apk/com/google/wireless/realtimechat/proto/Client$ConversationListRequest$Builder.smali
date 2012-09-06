.class public final Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private senderId_:Ljava/lang/Object;

.field private timestamp_:J

.field private type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 24204
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 24367
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 24403
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;->ID:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    .line 24427
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 24205
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->maybeForceBuilderInitialization()V

    .line 24206
    return-void
.end method

.method static synthetic access$32600()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    .registers 1

    .prologue
    .line 24199
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    .registers 1

    .prologue
    .line 24211
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 24209
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24199
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    .registers 3

    .prologue
    .line 24236
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    .line 24237
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 24238
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 24240
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24199
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    .registers 6

    .prologue
    .line 24254
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 24255
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    .line 24256
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 24257
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 24258
    or-int/lit8 v2, v2, 0x1

    .line 24260
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->access$32802(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;J)J

    .line 24261
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 24262
    or-int/lit8 v2, v2, 0x2

    .line 24264
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->senderId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->senderId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->access$32902(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24265
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 24266
    or-int/lit8 v2, v2, 0x4

    .line 24268
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->access$33002(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    .line 24269
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 24270
    or-int/lit8 v2, v2, 0x8

    .line 24272
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->access$33102(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24273
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->access$33202(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;I)I

    .line 24274
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24199
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24199
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    .registers 3

    .prologue
    .line 24215
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 24216
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->timestamp_:J

    .line 24217
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    .line 24218
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 24219
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    .line 24220
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;->ID:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    .line 24221
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    .line 24222
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 24223
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    .line 24224
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    .registers 2

    .prologue
    .line 24451
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    .line 24452
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 24454
    return-object p0
.end method

.method public clearSenderId()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    .registers 2

    .prologue
    .line 24391
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    .line 24392
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getSenderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 24394
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    .registers 3

    .prologue
    .line 24360
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    .line 24361
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->timestamp_:J

    .line 24363
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    .registers 2

    .prologue
    .line 24420
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    .line 24421
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;->ID:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    .line 24423
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 24199
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24199
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    .registers 3

    .prologue
    .line 24228
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 24199
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 24432
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 24433
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 24434
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24435
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 24438
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 24199
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24199
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    .registers 2

    .prologue
    .line 24232
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 24372
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 24373
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 24374
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24375
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 24378
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 24351
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->timestamp_:J

    return-wide v0
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;
    .registers 2

    .prologue
    .line 24408
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 24429
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

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
    .line 24369
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

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

.method public hasTimestamp()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 24348
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasType()Z
    .registers 3

    .prologue
    .line 24405
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 24295
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24199
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 24199
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24199
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24303
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 24304
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_48

    .line 24309
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 24311
    :sswitch_d
    return-object p0

    .line 24316
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    .line 24317
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->timestamp_:J

    goto :goto_0

    .line 24321
    :sswitch_1b
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    .line 24322
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->senderId_:Ljava/lang/Object;

    goto :goto_0

    .line 24326
    :sswitch_28
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 24327
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    move-result-object v2

    .line 24328
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;
    if-eqz v2, :cond_0

    .line 24329
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    .line 24330
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    goto :goto_0

    .line 24335
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;
    :sswitch_3b
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    .line 24336
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 24304
    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x22 -> :sswitch_3b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 24278
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 24291
    :cond_6
    :goto_6
    return-object p0

    .line 24279
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 24280
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    .line 24282
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->hasSenderId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 24283
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    .line 24285
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 24286
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getType()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    .line 24288
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24289
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    goto :goto_6
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24442
    if-nez p1, :cond_8

    .line 24443
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24445
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    .line 24446
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 24448
    return-object p0
.end method

.method public setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24382
    if-nez p1, :cond_8

    .line 24383
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24385
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    .line 24386
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 24388
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 24354
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    .line 24355
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->timestamp_:J

    .line 24357
    return-object p0
.end method

.method public setType(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24411
    if-nez p1, :cond_8

    .line 24412
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24414
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->bitField0_:I

    .line 24415
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    .line 24417
    return-object p0
.end method
