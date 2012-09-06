.class public final Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequestOrBuilder;"
    }
.end annotation


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

.field private messageClientId_:Ljava/lang/Object;

.field private retry_:Z

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 477
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->messageClientId_:Ljava/lang/Object;

    .line 513
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 549
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->content_:Ljava/util/List;

    .line 659
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 313
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->maybeForceBuilderInitialization()V

    .line 314
    return-void
.end method

.method static synthetic access$100()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 1

    .prologue
    .line 307
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 1

    .prologue
    .line 319
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureContentIsMutable()V
    .registers 3

    .prologue
    .line 552
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->content_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->content_:Ljava/util/List;

    .line 554
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    .line 556
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 317
    return-void
.end method


# virtual methods
.method public addAllContent(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Data$Content;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 619
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Data$Content;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->ensureContentIsMutable()V

    .line 620
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->content_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 622
    return-object p0
.end method

.method public addContent(ILcom/google/wireless/realtimechat/proto/Data$Content$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 612
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->ensureContentIsMutable()V

    .line 613
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->content_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 615
    return-object p0
.end method

.method public addContent(ILcom/google/wireless/realtimechat/proto/Data$Content;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 595
    if-nez p2, :cond_8

    .line 596
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 598
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->ensureContentIsMutable()V

    .line 599
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->content_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 601
    return-object p0
.end method

.method public addContent(Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->ensureContentIsMutable()V

    .line 606
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->content_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    return-object p0
.end method

.method public addContent(Lcom/google/wireless/realtimechat/proto/Data$Content;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 585
    if-nez p1, :cond_8

    .line 586
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 588
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->ensureContentIsMutable()V

    .line 589
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->content_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    .registers 3

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    .line 347
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 348
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 350
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    .registers 6

    .prologue
    .line 364
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 365
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    .line 366
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 367
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 368
    or-int/lit8 v2, v2, 0x1

    .line 370
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->messageClientId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->messageClientId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->access$302(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 372
    or-int/lit8 v2, v2, 0x2

    .line 374
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->access$402(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 376
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->content_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->content_:Ljava/util/List;

    .line 377
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    .line 379
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->content_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->content_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->access$502(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;Ljava/util/List;)Ljava/util/List;

    .line 380
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 381
    or-int/lit8 v2, v2, 0x4

    .line 383
    :cond_43
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->retry_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->retry_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->access$602(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;Z)Z

    .line 384
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 385
    or-int/lit8 v2, v2, 0x8

    .line 387
    :cond_50
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->access$702(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 388
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->access$802(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;I)I

    .line 389
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 2

    .prologue
    .line 323
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 324
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->messageClientId_:Ljava/lang/Object;

    .line 325
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    .line 326
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 327
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    .line 328
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->content_:Ljava/util/List;

    .line 329
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->retry_:Z

    .line 331
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    .line 332
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 333
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    .line 334
    return-object p0
.end method

.method public clearContent()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 2

    .prologue
    .line 625
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->content_:Ljava/util/List;

    .line 626
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    .line 628
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 2

    .prologue
    .line 537
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    .line 538
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 540
    return-object p0
.end method

.method public clearMessageClientId()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 2

    .prologue
    .line 501
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    .line 502
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getMessageClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->messageClientId_:Ljava/lang/Object;

    .line 504
    return-object p0
.end method

.method public clearRetry()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 2

    .prologue
    .line 652
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    .line 653
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->retry_:Z

    .line 655
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 2

    .prologue
    .line 695
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 697
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    .line 698
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 3

    .prologue
    .line 338
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

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
    .line 307
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;
    .registers 3
    .parameter "index"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->content_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Content;

    return-object v0
.end method

.method public getContentCount()I
    .registers 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->content_:Ljava/util/List;

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
    .line 559
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->content_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 519
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 520
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 524
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
    .line 307
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    .registers 2

    .prologue
    .line 342
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    return-object v0
.end method

.method public getMessageClientId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->messageClientId_:Ljava/lang/Object;

    .line 483
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 484
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->messageClientId_:Ljava/lang/Object;

    .line 488
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

.method public getRetry()Z
    .registers 2

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->retry_:Z

    return v0
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 515
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

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

    .line 479
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasRetry()Z
    .registers 3

    .prologue
    .line 640
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

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

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 661
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 420
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
    .line 307
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 307
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

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
    .line 307
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 429
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_60

    .line 434
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 436
    :sswitch_d
    return-object p0

    .line 441
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    .line 442
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->messageClientId_:Ljava/lang/Object;

    goto :goto_0

    .line 446
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    .line 447
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 451
    :sswitch_28
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Content;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v0

    .line 452
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 453
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->addContent(Lcom/google/wireless/realtimechat/proto/Data$Content;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    goto :goto_0

    .line 457
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    .line 458
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->retry_:Z

    goto :goto_0

    .line 462
    :sswitch_44
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    .line 463
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->hasStubbyInfo()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 464
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 466
    :cond_55
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 467
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    goto :goto_0

    .line 429
    :sswitch_data_60
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x20 -> :sswitch_37
        0x2a -> :sswitch_44
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 393
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 416
    :cond_6
    :goto_6
    return-object p0

    .line 394
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->hasMessageClientId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 395
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getMessageClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->setMessageClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    .line 397
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 398
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    .line 400
    :cond_21
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->content_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->access$500(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 401
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->content_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 402
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->content_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->access$500(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->content_:Ljava/util/List;

    .line 403
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    .line 410
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->hasRetry()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 411
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getRetry()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->setRetry(Z)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    .line 413
    :cond_4c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 414
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    goto :goto_6

    .line 405
    :cond_5a
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->ensureContentIsMutable()V

    .line 406
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->content_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->content_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->access$500(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3f
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 683
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 685
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 691
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    .line 692
    return-object p0

    .line 688
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_20
.end method

.method public setContent(ILcom/google/wireless/realtimechat/proto/Data$Content$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->ensureContentIsMutable()V

    .line 580
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->content_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 582
    return-object p0
.end method

.method public setContent(ILcom/google/wireless/realtimechat/proto/Data$Content;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 569
    if-nez p2, :cond_8

    .line 570
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 572
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->ensureContentIsMutable()V

    .line 573
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->content_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 575
    return-object p0
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 528
    if-nez p1, :cond_8

    .line 529
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 531
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    .line 532
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 534
    return-object p0
.end method

.method public setMessageClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 492
    if-nez p1, :cond_8

    .line 493
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 495
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    .line 496
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->messageClientId_:Ljava/lang/Object;

    .line 498
    return-object p0
.end method

.method public setRetry(Z)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 646
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    .line 647
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->retry_:Z

    .line 649
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 677
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 679
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    .line 680
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 667
    if-nez p1, :cond_8

    .line 668
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 670
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 672
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->bitField0_:I

    .line 673
    return-object p0
.end method
