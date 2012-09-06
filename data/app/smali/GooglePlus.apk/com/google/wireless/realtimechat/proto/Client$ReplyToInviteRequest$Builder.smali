.class public final Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private replyToId_:Ljava/lang/Object;

.field private reply_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

.field private senderId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 32489
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 32631
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->replyToId_:Ljava/lang/Object;

    .line 32667
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 32703
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;->ACCEPT:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->reply_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    .line 32727
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 32490
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->maybeForceBuilderInitialization()V

    .line 32491
    return-void
.end method

.method static synthetic access$44700()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    .registers 1

    .prologue
    .line 32484
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    .registers 1

    .prologue
    .line 32496
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 32494
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32484
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
    .registers 3

    .prologue
    .line 32521
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    .line 32522
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 32523
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 32525
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32484
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
    .registers 6

    .prologue
    .line 32539
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 32540
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    .line 32541
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 32542
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 32543
    or-int/lit8 v2, v2, 0x1

    .line 32545
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->replyToId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->replyToId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->access$44902(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32546
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 32547
    or-int/lit8 v2, v2, 0x2

    .line 32549
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->access$45002(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32550
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 32551
    or-int/lit8 v2, v2, 0x4

    .line 32553
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->reply_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->reply_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->access$45102(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    .line 32554
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 32555
    or-int/lit8 v2, v2, 0x8

    .line 32557
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->senderId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->senderId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->access$45202(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32558
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->access$45302(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;I)I

    .line 32559
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 32484
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 32484
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    .registers 2

    .prologue
    .line 32500
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 32501
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->replyToId_:Ljava/lang/Object;

    .line 32502
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    .line 32503
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 32504
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    .line 32505
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;->ACCEPT:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->reply_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    .line 32506
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    .line 32507
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 32508
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    .line 32509
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    .registers 2

    .prologue
    .line 32691
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    .line 32692
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 32694
    return-object p0
.end method

.method public clearReply()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    .registers 2

    .prologue
    .line 32720
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    .line 32721
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;->ACCEPT:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->reply_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    .line 32723
    return-object p0
.end method

.method public clearReplyToId()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    .registers 2

    .prologue
    .line 32655
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    .line 32656
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getReplyToId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->replyToId_:Ljava/lang/Object;

    .line 32658
    return-object p0
.end method

.method public clearSenderId()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    .registers 2

    .prologue
    .line 32751
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    .line 32752
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getSenderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 32754
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 32484
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 32484
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    .registers 3

    .prologue
    .line 32513
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

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
    .line 32484
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 32672
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 32673
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 32674
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 32675
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 32678
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
    .line 32484
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32484
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
    .registers 2

    .prologue
    .line 32517
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    return-object v0
.end method

.method public getReply()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;
    .registers 2

    .prologue
    .line 32708
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->reply_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    return-object v0
.end method

.method public getReplyToId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 32636
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->replyToId_:Ljava/lang/Object;

    .line 32637
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 32638
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 32639
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->replyToId_:Ljava/lang/Object;

    .line 32642
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

.method public getSenderId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 32732
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 32733
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 32734
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 32735
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 32738
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

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 32669
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

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
    .line 32705
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

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

    .line 32633
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

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
    .line 32729
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 32580
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
    .line 32484
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 32484
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

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
    .line 32484
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32588
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 32589
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_48

    .line 32594
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 32596
    :sswitch_d
    return-object p0

    .line 32601
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    .line 32602
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->replyToId_:Ljava/lang/Object;

    goto :goto_0

    .line 32606
    :sswitch_1b
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    .line 32607
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 32611
    :sswitch_28
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 32612
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    move-result-object v2

    .line 32613
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;
    if-eqz v2, :cond_0

    .line 32614
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    .line 32615
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->reply_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    goto :goto_0

    .line 32620
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;
    :sswitch_3b
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    .line 32621
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->senderId_:Ljava/lang/Object;

    goto :goto_0

    .line 32589
    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x22 -> :sswitch_3b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 32563
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 32576
    :cond_6
    :goto_6
    return-object p0

    .line 32564
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->hasReplyToId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 32565
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getReplyToId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->setReplyToId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    .line 32567
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 32568
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    .line 32570
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->hasReply()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 32571
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getReply()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->setReply(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    .line 32573
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->hasSenderId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32574
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    goto :goto_6
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32682
    if-nez p1, :cond_8

    .line 32683
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32685
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    .line 32686
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 32688
    return-object p0
.end method

.method public setReply(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32711
    if-nez p1, :cond_8

    .line 32712
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32714
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    .line 32715
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->reply_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    .line 32717
    return-object p0
.end method

.method public setReplyToId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32646
    if-nez p1, :cond_8

    .line 32647
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32649
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    .line 32650
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->replyToId_:Ljava/lang/Object;

    .line 32652
    return-object p0
.end method

.method public setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32742
    if-nez p1, :cond_8

    .line 32743
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32745
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->bitField0_:I

    .line 32746
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 32748
    return-object p0
.end method
