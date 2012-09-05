.class public final Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$TypingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$Typing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$Typing;",
        "Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$TypingOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private senderId_:Ljava/lang/Object;

.field private timestamp_:J

.field private type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 9271
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 9413
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 9437
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->conversationId_:Ljava/lang/Object;

    .line 9473
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->senderId_:Ljava/lang/Object;

    .line 9272
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->maybeForceBuilderInitialization()V

    .line 9273
    return-void
.end method

.method static synthetic access$12200()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    .registers 1

    .prologue
    .line 9266
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    .registers 1

    .prologue
    .line 9278
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 9276
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$Typing;
    .registers 3

    .prologue
    .line 9303
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    .line 9304
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$Typing;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 9305
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 9307
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9266
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Typing;
    .registers 6

    .prologue
    .line 9321
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$Typing;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$Typing;-><init>(Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 9322
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$Typing;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    .line 9323
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 9324
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 9325
    or-int/lit8 v2, v2, 0x1

    .line 9327
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Typing;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->access$12402(Lcom/google/wireless/realtimechat/proto/Client$Typing;Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 9328
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 9329
    or-int/lit8 v2, v2, 0x2

    .line 9331
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Typing;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->access$12502(Lcom/google/wireless/realtimechat/proto/Client$Typing;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9332
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 9333
    or-int/lit8 v2, v2, 0x4

    .line 9335
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->senderId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Typing;->senderId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->access$12602(Lcom/google/wireless/realtimechat/proto/Client$Typing;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9336
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 9337
    or-int/lit8 v2, v2, 0x8

    .line 9339
    :cond_35
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Typing;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->access$12702(Lcom/google/wireless/realtimechat/proto/Client$Typing;J)J

    .line 9340
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$Typing;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->access$12802(Lcom/google/wireless/realtimechat/proto/Client$Typing;I)I

    .line 9341
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9266
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9266
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    .registers 3

    .prologue
    .line 9282
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9283
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 9284
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    .line 9285
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->conversationId_:Ljava/lang/Object;

    .line 9286
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    .line 9287
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->senderId_:Ljava/lang/Object;

    .line 9288
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    .line 9289
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->timestamp_:J

    .line 9290
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    .line 9291
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    .registers 2

    .prologue
    .line 9461
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    .line 9462
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->conversationId_:Ljava/lang/Object;

    .line 9464
    return-object p0
.end method

.method public clearSenderId()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    .registers 2

    .prologue
    .line 9497
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    .line 9498
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getSenderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->senderId_:Ljava/lang/Object;

    .line 9500
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    .registers 3

    .prologue
    .line 9523
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    .line 9524
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->timestamp_:J

    .line 9526
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    .registers 2

    .prologue
    .line 9430
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    .line 9431
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 9433
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 9266
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9266
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    .registers 3

    .prologue
    .line 9295
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

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
    .line 9266
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 9442
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->conversationId_:Ljava/lang/Object;

    .line 9443
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 9444
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9445
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->conversationId_:Ljava/lang/Object;

    .line 9448
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
    .line 9266
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9266
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Typing;
    .registers 2

    .prologue
    .line 9299
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 9478
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->senderId_:Ljava/lang/Object;

    .line 9479
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 9480
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9481
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->senderId_:Ljava/lang/Object;

    .line 9484
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
    .line 9514
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->timestamp_:J

    return-wide v0
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;
    .registers 2

    .prologue
    .line 9418
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 9439
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

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
    .line 9475
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

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
    .line 9511
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

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

    .line 9415
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 9266
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

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
    .line 9266
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9370
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 9371
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_48

    .line 9376
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 9378
    :sswitch_d
    return-object p0

    .line 9383
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 9384
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    move-result-object v2

    .line 9385
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;
    if-eqz v2, :cond_0

    .line 9386
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    .line 9387
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    goto :goto_0

    .line 9392
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    .line 9393
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 9397
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    .line 9398
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->senderId_:Ljava/lang/Object;

    goto :goto_0

    .line 9402
    :sswitch_3b
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    .line 9403
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->timestamp_:J

    goto :goto_0

    .line 9371
    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x20 -> :sswitch_3b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 9345
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 9358
    :cond_6
    :goto_6
    return-object p0

    .line 9346
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 9347
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getType()Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    .line 9349
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 9350
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    .line 9352
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->hasSenderId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 9353
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    .line 9355
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9356
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    goto :goto_6
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9452
    if-nez p1, :cond_8

    .line 9453
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9455
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    .line 9456
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->conversationId_:Ljava/lang/Object;

    .line 9458
    return-object p0
.end method

.method public setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9488
    if-nez p1, :cond_8

    .line 9489
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9491
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    .line 9492
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->senderId_:Ljava/lang/Object;

    .line 9494
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 9517
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    .line 9518
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->timestamp_:J

    .line 9520
    return-object p0
.end method

.method public setType(Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9421
    if-nez p1, :cond_8

    .line 9422
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9424
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->bitField0_:I

    .line 9425
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 9427
    return-object p0
.end method
