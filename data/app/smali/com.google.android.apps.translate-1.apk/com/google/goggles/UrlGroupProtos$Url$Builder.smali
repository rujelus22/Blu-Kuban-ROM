.class public final Lcom/google/goggles/UrlGroupProtos$Url$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "UrlGroupProtos.java"

# interfaces
.implements Lcom/google/goggles/UrlGroupProtos$UrlOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/UrlGroupProtos$Url;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/UrlGroupProtos$Url;",
        "Lcom/google/goggles/UrlGroupProtos$Url$Builder;",
        ">;",
        "Lcom/google/goggles/UrlGroupProtos$UrlOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private purpose_:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

.field private recommendedQuickAction_:Z

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 501
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->url_:Ljava/lang/Object;

    .line 537
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->description_:Ljava/lang/Object;

    .line 573
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->UNKNOWN:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->purpose_:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    .line 356
    invoke-direct {p0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->maybeForceBuilderInitialization()V

    .line 357
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/UrlGroupProtos$Url$Builder;)Lcom/google/goggles/UrlGroupProtos$Url;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->buildParsed()Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/UrlGroupProtos$Url$Builder;
    .registers 1

    .prologue
    .line 350
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->create()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/UrlGroupProtos$Url;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->buildPartial()Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Lcom/google/goggles/UrlGroupProtos$Url;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 398
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 401
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/UrlGroupProtos$Url$Builder;
    .registers 1

    .prologue
    .line 362
    new-instance v0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    invoke-direct {v0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 360
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/UrlGroupProtos$Url;
    .registers 3

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->buildPartial()Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Lcom/google/goggles/UrlGroupProtos$Url;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 389
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 391
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->build()Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/UrlGroupProtos$Url;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 405
    new-instance v2, Lcom/google/goggles/UrlGroupProtos$Url;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/UrlGroupProtos$Url;-><init>(Lcom/google/goggles/UrlGroupProtos$Url$Builder;Lcom/google/goggles/UrlGroupProtos$1;)V

    .line 406
    iget v3, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    .line 407
    const/4 v1, 0x0

    .line 408
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3c

    .line 411
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/UrlGroupProtos$Url;->url_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/UrlGroupProtos$Url;->access$302(Lcom/google/goggles/UrlGroupProtos$Url;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 413
    or-int/lit8 v0, v0, 0x2

    .line 415
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->description_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/UrlGroupProtos$Url;->description_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/UrlGroupProtos$Url;->access$402(Lcom/google/goggles/UrlGroupProtos$Url;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 417
    or-int/lit8 v0, v0, 0x4

    .line 419
    :cond_26
    iget-object v1, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->purpose_:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    #setter for: Lcom/google/goggles/UrlGroupProtos$Url;->purpose_:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;
    invoke-static {v2, v1}, Lcom/google/goggles/UrlGroupProtos$Url;->access$502(Lcom/google/goggles/UrlGroupProtos$Url;Lcom/google/goggles/UrlGroupProtos$Url$Purpose;)Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    .line 420
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_33

    .line 421
    or-int/lit8 v0, v0, 0x8

    .line 423
    :cond_33
    iget-boolean v1, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->recommendedQuickAction_:Z

    #setter for: Lcom/google/goggles/UrlGroupProtos$Url;->recommendedQuickAction_:Z
    invoke-static {v2, v1}, Lcom/google/goggles/UrlGroupProtos$Url;->access$602(Lcom/google/goggles/UrlGroupProtos$Url;Z)Z

    .line 424
    #setter for: Lcom/google/goggles/UrlGroupProtos$Url;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/UrlGroupProtos$Url;->access$702(Lcom/google/goggles/UrlGroupProtos$Url;I)I

    .line 425
    return-object v2

    :cond_3c
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->buildPartial()Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/UrlGroupProtos$Url$Builder;
    .registers 2

    .prologue
    .line 366
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 367
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->url_:Ljava/lang/Object;

    .line 368
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    .line 369
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->description_:Ljava/lang/Object;

    .line 370
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    .line 371
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->UNKNOWN:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->purpose_:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    .line 372
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->recommendedQuickAction_:Z

    .line 374
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    .line 375
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->clear()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->clear()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDescription()Lcom/google/goggles/UrlGroupProtos$Url$Builder;
    .registers 2

    .prologue
    .line 561
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    .line 562
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$Url;->getDefaultInstance()Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/UrlGroupProtos$Url;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->description_:Ljava/lang/Object;

    .line 564
    return-object p0
.end method

.method public clearPurpose()Lcom/google/goggles/UrlGroupProtos$Url$Builder;
    .registers 2

    .prologue
    .line 590
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    .line 591
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->UNKNOWN:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->purpose_:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    .line 593
    return-object p0
.end method

.method public clearRecommendedQuickAction()Lcom/google/goggles/UrlGroupProtos$Url$Builder;
    .registers 2

    .prologue
    .line 611
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    .line 612
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->recommendedQuickAction_:Z

    .line 614
    return-object p0
.end method

.method public clearUrl()Lcom/google/goggles/UrlGroupProtos$Url$Builder;
    .registers 2

    .prologue
    .line 525
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    .line 526
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$Url;->getDefaultInstance()Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/UrlGroupProtos$Url;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->url_:Ljava/lang/Object;

    .line 528
    return-object p0
.end method

.method public clone()Lcom/google/goggles/UrlGroupProtos$Url$Builder;
    .registers 3

    .prologue
    .line 379
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->create()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->buildPartial()Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->mergeFrom(Lcom/google/goggles/UrlGroupProtos$Url;)Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->clone()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->clone()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->clone()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

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
    .line 350
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->clone()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/UrlGroupProtos$Url;
    .registers 2

    .prologue
    .line 383
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$Url;->getDefaultInstance()Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->getDefaultInstanceForType()Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->getDefaultInstanceForType()Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->description_:Ljava/lang/Object;

    .line 543
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 544
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 545
    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->description_:Ljava/lang/Object;

    .line 548
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getPurpose()Lcom/google/goggles/UrlGroupProtos$Url$Purpose;
    .registers 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->purpose_:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    return-object v0
.end method

.method public getRecommendedQuickAction()Z
    .registers 2

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->recommendedQuickAction_:Z

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->url_:Ljava/lang/Object;

    .line 507
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 508
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 509
    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->url_:Ljava/lang/Object;

    .line 512
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 539
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

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

.method public hasPurpose()Z
    .registers 3

    .prologue
    .line 575
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

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

.method public hasRecommendedQuickAction()Z
    .registers 3

    .prologue
    .line 599
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

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

.method public hasUrl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 503
    iget v1, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->hasUrl()Z

    move-result v0

    if-nez v0, :cond_8

    .line 448
    const/4 v0, 0x0

    .line 450
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/goggles/UrlGroupProtos$Url;)Lcom/google/goggles/UrlGroupProtos$Url$Builder;
    .registers 3
    .parameter

    .prologue
    .line 429
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$Url;->getDefaultInstance()Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 442
    :cond_6
    :goto_6
    return-object p0

    .line 430
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/UrlGroupProtos$Url;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 431
    invoke-virtual {p1}, Lcom/google/goggles/UrlGroupProtos$Url;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->setUrl(Ljava/lang/String;)Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    .line 433
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/UrlGroupProtos$Url;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 434
    invoke-virtual {p1}, Lcom/google/goggles/UrlGroupProtos$Url;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->setDescription(Ljava/lang/String;)Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    .line 436
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/UrlGroupProtos$Url;->hasPurpose()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 437
    invoke-virtual {p1}, Lcom/google/goggles/UrlGroupProtos$Url;->getPurpose()Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->setPurpose(Lcom/google/goggles/UrlGroupProtos$Url$Purpose;)Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    .line 439
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/UrlGroupProtos$Url;->hasRecommendedQuickAction()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 440
    invoke-virtual {p1}, Lcom/google/goggles/UrlGroupProtos$Url;->getRecommendedQuickAction()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->setRecommendedQuickAction(Z)Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/UrlGroupProtos$Url$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 459
    sparse-switch v0, :sswitch_data_48

    .line 464
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    :sswitch_d
    return-object p0

    .line 471
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    .line 472
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 476
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    .line 477
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 481
    :sswitch_28
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 482
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->valueOf(I)Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    move-result-object v0

    .line 483
    if-eqz v0, :cond_0

    .line 484
    iget v1, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    .line 485
    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->purpose_:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    goto :goto_0

    .line 490
    :sswitch_3b
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    .line 491
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->recommendedQuickAction_:Z

    goto :goto_0

    .line 459
    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_3b
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 350
    check-cast p1, Lcom/google/goggles/UrlGroupProtos$Url;

    invoke-virtual {p0, p1}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->mergeFrom(Lcom/google/goggles/UrlGroupProtos$Url;)Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/goggles/UrlGroupProtos$Url$Builder;
    .registers 3
    .parameter

    .prologue
    .line 552
    if-nez p1, :cond_8

    .line 553
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 555
    :cond_8
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    .line 556
    iput-object p1, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->description_:Ljava/lang/Object;

    .line 558
    return-object p0
.end method

.method setDescription(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 567
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    .line 568
    iput-object p1, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->description_:Ljava/lang/Object;

    .line 570
    return-void
.end method

.method public setPurpose(Lcom/google/goggles/UrlGroupProtos$Url$Purpose;)Lcom/google/goggles/UrlGroupProtos$Url$Builder;
    .registers 3
    .parameter

    .prologue
    .line 581
    if-nez p1, :cond_8

    .line 582
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 584
    :cond_8
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    .line 585
    iput-object p1, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->purpose_:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    .line 587
    return-object p0
.end method

.method public setRecommendedQuickAction(Z)Lcom/google/goggles/UrlGroupProtos$Url$Builder;
    .registers 3
    .parameter

    .prologue
    .line 605
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    .line 606
    iput-boolean p1, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->recommendedQuickAction_:Z

    .line 608
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/goggles/UrlGroupProtos$Url$Builder;
    .registers 3
    .parameter

    .prologue
    .line 516
    if-nez p1, :cond_8

    .line 517
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 519
    :cond_8
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    .line 520
    iput-object p1, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->url_:Ljava/lang/Object;

    .line 522
    return-object p0
.end method

.method setUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 531
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->bitField0_:I

    .line 532
    iput-object p1, p0, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->url_:Ljava/lang/Object;

    .line 534
    return-void
.end method
