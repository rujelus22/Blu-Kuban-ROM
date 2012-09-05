.class public final Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private count_:I

.field private end_:J

.field private messageId_:Ljava/lang/Object;

.field private order_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

.field private senderId_:Ljava/lang/Object;

.field private start_:J

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 25384
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 25586
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 25622
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->messageId_:Ljava/lang/Object;

    .line 25679
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;->EARLIEST:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->order_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    .line 25745
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 25781
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 25385
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->maybeForceBuilderInitialization()V

    .line 25386
    return-void
.end method

.method static synthetic access$34100()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 1

    .prologue
    .line 25379
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 1

    .prologue
    .line 25391
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 25389
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
    .registers 3

    .prologue
    .line 25424
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    .line 25425
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 25426
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 25428
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25379
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
    .registers 6

    .prologue
    .line 25442
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 25443
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25444
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 25445
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 25446
    or-int/lit8 v2, v2, 0x1

    .line 25448
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->access$34302(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25449
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 25450
    or-int/lit8 v2, v2, 0x2

    .line 25452
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->messageId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->messageId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->access$34402(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25453
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 25454
    or-int/lit8 v2, v2, 0x4

    .line 25456
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->start_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->start_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->access$34502(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;J)J

    .line 25457
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 25458
    or-int/lit8 v2, v2, 0x8

    .line 25460
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->order_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->order_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->access$34602(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    .line 25461
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 25462
    or-int/lit8 v2, v2, 0x10

    .line 25464
    :cond_42
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->end_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->end_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->access$34702(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;J)J

    .line 25465
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 25466
    or-int/lit8 v2, v2, 0x20

    .line 25468
    :cond_4f
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->count_:I

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->count_:I
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->access$34802(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;I)I

    .line 25469
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 25470
    or-int/lit8 v2, v2, 0x40

    .line 25472
    :cond_5c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->senderId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->senderId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->access$34902(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25473
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 25474
    or-int/lit16 v2, v2, 0x80

    .line 25476
    :cond_69
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->access$35002(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 25477
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->access$35102(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;I)I

    .line 25478
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 25379
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 25379
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 25395
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 25396
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 25397
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25398
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->messageId_:Ljava/lang/Object;

    .line 25399
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25400
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->start_:J

    .line 25401
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25402
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;->EARLIEST:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->order_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    .line 25403
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25404
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->end_:J

    .line 25405
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25406
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->count_:I

    .line 25407
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25408
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 25409
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25410
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 25411
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25412
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 2

    .prologue
    .line 25610
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25611
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 25613
    return-object p0
.end method

.method public clearCount()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 2

    .prologue
    .line 25738
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25739
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->count_:I

    .line 25741
    return-object p0
.end method

.method public clearEnd()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 3

    .prologue
    .line 25717
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25718
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->end_:J

    .line 25720
    return-object p0
.end method

.method public clearMessageId()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 2

    .prologue
    .line 25646
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25647
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->messageId_:Ljava/lang/Object;

    .line 25649
    return-object p0
.end method

.method public clearOrder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 2

    .prologue
    .line 25696
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25697
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;->EARLIEST:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->order_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    .line 25699
    return-object p0
.end method

.method public clearSenderId()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 2

    .prologue
    .line 25769
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25770
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getSenderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 25772
    return-object p0
.end method

.method public clearStart()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 3

    .prologue
    .line 25672
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25673
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->start_:J

    .line 25675
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 2

    .prologue
    .line 25817
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 25819
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25820
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 25379
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 25379
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 3

    .prologue
    .line 25416
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

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
    .line 25379
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 25591
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 25592
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 25593
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 25594
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 25597
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

.method public getCount()I
    .registers 2

    .prologue
    .line 25729
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 25379
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25379
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
    .registers 2

    .prologue
    .line 25420
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()J
    .registers 3

    .prologue
    .line 25708
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->end_:J

    return-wide v0
.end method

.method public getMessageId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 25627
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->messageId_:Ljava/lang/Object;

    .line 25628
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 25629
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 25630
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->messageId_:Ljava/lang/Object;

    .line 25633
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

.method public getOrder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;
    .registers 2

    .prologue
    .line 25684
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->order_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 25750
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 25751
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 25752
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 25753
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 25756
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

.method public getStart()J
    .registers 3

    .prologue
    .line 25663
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->start_:J

    return-wide v0
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 25786
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 25588
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

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
    .line 25726
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

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
    .line 25705
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

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
    .line 25624
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

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
    .line 25681
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

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
    .line 25747
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

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
    .line 25660
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

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
    .line 25783
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

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
    .line 25379
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

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
    .line 25379
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25519
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 25520
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_8c

    .line 25525
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 25527
    :sswitch_d
    return-object p0

    .line 25532
    :sswitch_e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25533
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 25537
    :sswitch_1b
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25538
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->messageId_:Ljava/lang/Object;

    goto :goto_0

    .line 25542
    :sswitch_28
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25543
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->start_:J

    goto :goto_0

    .line 25547
    :sswitch_35
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 25548
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    move-result-object v3

    .line 25549
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;
    if-eqz v3, :cond_0

    .line 25550
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25551
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->order_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    goto :goto_0

    .line 25556
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;
    :sswitch_48
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25557
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->end_:J

    goto :goto_0

    .line 25561
    :sswitch_55
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25562
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->count_:I

    goto :goto_0

    .line 25566
    :sswitch_62
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25567
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->senderId_:Ljava/lang/Object;

    goto :goto_0

    .line 25571
    :sswitch_6f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v1

    .line 25572
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->hasStubbyInfo()Z

    move-result v4

    if-eqz v4, :cond_80

    .line 25573
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 25575
    :cond_80
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 25576
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    goto/16 :goto_0

    .line 25520
    :sswitch_data_8c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
        0x28 -> :sswitch_48
        0x30 -> :sswitch_55
        0x3a -> :sswitch_62
        0x42 -> :sswitch_6f
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 25482
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 25507
    :cond_6
    :goto_6
    return-object p0

    .line 25483
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 25484
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    .line 25486
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->hasMessageId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 25487
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->setMessageId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    .line 25489
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 25490
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getStart()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->setStart(J)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    .line 25492
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->hasOrder()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 25493
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getOrder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->setOrder(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    .line 25495
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 25496
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getEnd()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->setEnd(J)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    .line 25498
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 25499
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->setCount(I)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    .line 25501
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->hasSenderId()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 25502
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    .line 25504
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25505
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    goto :goto_6
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 25805
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 25807
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 25813
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25814
    return-object p0

    .line 25810
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_20
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25601
    if-nez p1, :cond_8

    .line 25602
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25604
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25605
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 25607
    return-object p0
.end method

.method public setCount(I)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25732
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25733
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->count_:I

    .line 25735
    return-object p0
.end method

.method public setEnd(J)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 25711
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25712
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->end_:J

    .line 25714
    return-object p0
.end method

.method public setMessageId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25637
    if-nez p1, :cond_8

    .line 25638
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25640
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25641
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->messageId_:Ljava/lang/Object;

    .line 25643
    return-object p0
.end method

.method public setOrder(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25687
    if-nez p1, :cond_8

    .line 25688
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25690
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25691
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->order_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    .line 25693
    return-object p0
.end method

.method public setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25760
    if-nez p1, :cond_8

    .line 25761
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25763
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25764
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 25766
    return-object p0
.end method

.method public setStart(J)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 25666
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25667
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->start_:J

    .line 25669
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 25799
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 25801
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25802
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25789
    if-nez p1, :cond_8

    .line 25790
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25792
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 25794
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->bitField0_:I

    .line 25795
    return-object p0
.end method
