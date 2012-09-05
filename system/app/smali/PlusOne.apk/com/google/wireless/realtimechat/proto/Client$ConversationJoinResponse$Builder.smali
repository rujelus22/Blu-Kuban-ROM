.class public final Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private participantError_:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

.field private requestError_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 15322
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 15468
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 15492
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 15528
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->participantError_:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    .line 15323
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->maybeForceBuilderInitialization()V

    .line 15324
    return-void
.end method

.method static synthetic access$20500()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    .registers 1

    .prologue
    .line 15317
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    .registers 1

    .prologue
    .line 15329
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 15327
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;
    .registers 3

    .prologue
    .line 15354
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    .line 15355
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 15356
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 15358
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15317
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;
    .registers 6

    .prologue
    .line 15372
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 15373
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    .line 15374
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 15375
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 15376
    or-int/lit8 v2, v2, 0x1

    .line 15378
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->access$20702(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 15379
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 15380
    or-int/lit8 v2, v2, 0x2

    .line 15382
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->requestError_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->requestError_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->access$20802(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15383
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 15384
    or-int/lit8 v2, v2, 0x4

    .line 15386
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->participantError_:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->participantError_:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->access$20902(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    .line 15387
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 15388
    or-int/lit8 v2, v2, 0x8

    .line 15390
    :cond_35
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->access$21002(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;J)J

    .line 15391
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->access$21102(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;I)I

    .line 15392
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15317
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15317
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    .registers 3

    .prologue
    .line 15333
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 15334
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 15335
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    .line 15336
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 15337
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    .line 15338
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->participantError_:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    .line 15339
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    .line 15340
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->timestamp_:J

    .line 15341
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    .line 15342
    return-object p0
.end method

.method public clearParticipantError()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    .registers 2

    .prologue
    .line 15564
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->participantError_:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    .line 15566
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    .line 15567
    return-object p0
.end method

.method public clearRequestError()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    .registers 2

    .prologue
    .line 15516
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    .line 15517
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 15519
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    .registers 2

    .prologue
    .line 15485
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    .line 15486
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 15488
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    .registers 3

    .prologue
    .line 15585
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    .line 15586
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->timestamp_:J

    .line 15588
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 15317
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 15317
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    .registers 3

    .prologue
    .line 15346
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

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
    .line 15317
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 15317
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15317
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;
    .registers 2

    .prologue
    .line 15350
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantError()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
    .registers 2

    .prologue
    .line 15533
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->participantError_:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    return-object v0
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 4

    .prologue
    .line 15497
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 15498
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 15499
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 15500
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 15503
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

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 15473
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 15576
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasParticipantError()Z
    .registers 3

    .prologue
    .line 15530
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

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

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 15494
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 15470
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 15573
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

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
    .line 15317
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

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
    .line 15317
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15421
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 15422
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_58

    .line 15427
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 15429
    :sswitch_d
    return-object p0

    .line 15434
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 15435
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v3

    .line 15436
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v3, :cond_0

    .line 15437
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    .line 15438
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 15443
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    .line 15444
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->requestError_:Ljava/lang/Object;

    goto :goto_0

    .line 15448
    :sswitch_2e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    move-result-object v1

    .line 15449
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->hasParticipantError()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 15450
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->getParticipantError()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    .line 15452
    :cond_3f
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 15453
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->setParticipantError(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    goto :goto_0

    .line 15457
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;
    :sswitch_4a
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    .line 15458
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->timestamp_:J

    goto :goto_0

    .line 15422
    nop

    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x20 -> :sswitch_4a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 15396
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 15409
    :cond_6
    :goto_6
    return-object p0

    .line 15397
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 15398
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    .line 15400
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->hasRequestError()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 15401
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    .line 15403
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->hasParticipantError()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 15404
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getParticipantError()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->mergeParticipantError(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    .line 15406
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15407
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    goto :goto_6
.end method

.method public mergeParticipantError(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 15552
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->participantError_:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 15554
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->participantError_:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->participantError_:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    .line 15560
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    .line 15561
    return-object p0

    .line 15557
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->participantError_:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    goto :goto_1f
.end method

.method public setParticipantError(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 15546
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->participantError_:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    .line 15548
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    .line 15549
    return-object p0
.end method

.method public setParticipantError(Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15536
    if-nez p1, :cond_8

    .line 15537
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15539
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->participantError_:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    .line 15541
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    .line 15542
    return-object p0
.end method

.method public setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15507
    if-nez p1, :cond_8

    .line 15508
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15510
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    .line 15511
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 15513
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 15476
    if-nez p1, :cond_8

    .line 15477
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15479
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    .line 15480
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 15482
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 15579
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->bitField0_:I

    .line 15580
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->timestamp_:J

    .line 15582
    return-object p0
.end method
