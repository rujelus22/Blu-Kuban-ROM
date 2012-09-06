.class public final Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RenderedAdToken.java"

# interfaces
.implements Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;",
        "Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;",
        ">;",
        "Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElementOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private contentMimeType_:Ljava/lang/Object;

.field private contentUrl_:Ljava/lang/Object;

.field private height_:I

.field private thumbnailHeight_:I

.field private thumbnailUrl_:Ljava/lang/Object;

.field private thumbnailWidth_:I

.field private width_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 565
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->contentUrl_:Ljava/lang/Object;

    .line 601
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->contentMimeType_:Ljava/lang/Object;

    .line 679
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 382
    invoke-direct {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->maybeForceBuilderInitialization()V

    .line 383
    return-void
.end method

.method static synthetic access$100()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;
    .registers 1

    .prologue
    .line 376
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->create()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;
    .registers 1

    .prologue
    .line 388
    new-instance v0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    invoke-direct {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 386
    return-void
.end method


# virtual methods
.method public build()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;
    .registers 3

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->buildPartial()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    move-result-object v0

    .line 420
    .local v0, result:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;
    invoke-virtual {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 421
    invoke-static {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 423
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->build()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;
    .registers 6

    .prologue
    .line 437
    new-instance v1, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;-><init>(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;Lcom/google/contentads/frontend/token/proto/RenderedAdToken$1;)V

    .line 438
    .local v1, result:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    .line 439
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 440
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 441
    or-int/lit8 v2, v2, 0x1

    .line 443
    :cond_10
    iget-object v3, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->contentUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->contentUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->access$302(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 445
    or-int/lit8 v2, v2, 0x2

    .line 447
    :cond_1c
    iget-object v3, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->contentMimeType_:Ljava/lang/Object;

    #setter for: Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->contentMimeType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->access$402(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 449
    or-int/lit8 v2, v2, 0x4

    .line 451
    :cond_28
    iget v3, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->width_:I

    #setter for: Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->width_:I
    invoke-static {v1, v3}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->access$502(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;I)I

    .line 452
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 453
    or-int/lit8 v2, v2, 0x8

    .line 455
    :cond_35
    iget v3, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->height_:I

    #setter for: Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->height_:I
    invoke-static {v1, v3}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->access$602(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;I)I

    .line 456
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 457
    or-int/lit8 v2, v2, 0x10

    .line 459
    :cond_42
    iget-object v3, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->thumbnailUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->thumbnailUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->access$702(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 461
    or-int/lit8 v2, v2, 0x20

    .line 463
    :cond_4f
    iget v3, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->thumbnailWidth_:I

    #setter for: Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->thumbnailWidth_:I
    invoke-static {v1, v3}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->access$802(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;I)I

    .line 464
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 465
    or-int/lit8 v2, v2, 0x40

    .line 467
    :cond_5c
    iget v3, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->thumbnailHeight_:I

    #setter for: Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->thumbnailHeight_:I
    invoke-static {v1, v3}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->access$902(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;I)I

    .line 468
    #setter for: Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->access$1002(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;I)I

    .line 469
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->buildPartial()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 392
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 393
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->contentUrl_:Ljava/lang/Object;

    .line 394
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    .line 395
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->contentMimeType_:Ljava/lang/Object;

    .line 396
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    .line 397
    iput v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->width_:I

    .line 398
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    .line 399
    iput v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->height_:I

    .line 400
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    .line 401
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 402
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    .line 403
    iput v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->thumbnailWidth_:I

    .line 404
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    .line 405
    iput v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->thumbnailHeight_:I

    .line 406
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    .line 407
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->clear()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->clear()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;
    .registers 3

    .prologue
    .line 411
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->create()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->buildPartial()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->mergeFrom(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->clone()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->clone()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

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
    .line 376
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->clone()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;
    .registers 2

    .prologue
    .line 415
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->getDefaultInstance()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->getDefaultInstanceForType()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->getDefaultInstanceForType()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    move-result-object v0

    return-object v0
.end method

.method public hasContentUrl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 567
    iget v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

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
    .line 499
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->hasContentUrl()Z

    move-result v0

    if-nez v0, :cond_8

    .line 501
    const/4 v0, 0x0

    .line 503
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 473
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->getDefaultInstance()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 495
    :cond_6
    :goto_6
    return-object p0

    .line 474
    :cond_7
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->hasContentUrl()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 475
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->getContentUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->setContentUrl(Ljava/lang/String;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    .line 477
    :cond_14
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->hasContentMimeType()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 478
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->getContentMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->setContentMimeType(Ljava/lang/String;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    .line 480
    :cond_21
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->hasWidth()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 481
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->setWidth(I)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    .line 483
    :cond_2e
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->hasHeight()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 484
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->setHeight(I)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    .line 486
    :cond_3b
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->hasThumbnailUrl()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 487
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->setThumbnailUrl(Ljava/lang/String;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    .line 489
    :cond_48
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->hasThumbnailWidth()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 490
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->getThumbnailWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->setThumbnailWidth(I)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    .line 492
    :cond_55
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->hasThumbnailHeight()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 493
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->getThumbnailHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->setThumbnailHeight(I)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 512
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_6a

    .line 517
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 519
    :sswitch_d
    return-object p0

    .line 524
    :sswitch_e
    iget v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    .line 525
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->contentUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 529
    :sswitch_1b
    iget v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    .line 530
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->contentMimeType_:Ljava/lang/Object;

    goto :goto_0

    .line 534
    :sswitch_28
    iget v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    .line 535
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->width_:I

    goto :goto_0

    .line 539
    :sswitch_35
    iget v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    .line 540
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->height_:I

    goto :goto_0

    .line 544
    :sswitch_42
    iget v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    .line 545
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->thumbnailUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 549
    :sswitch_4f
    iget v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    .line 550
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->thumbnailWidth_:I

    goto :goto_0

    .line 554
    :sswitch_5c
    iget v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    .line 555
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->thumbnailHeight_:I

    goto :goto_0

    .line 512
    nop

    :sswitch_data_6a
    .sparse-switch
        0x0 -> :sswitch_d
        0x2a -> :sswitch_e
        0x32 -> :sswitch_1b
        0x38 -> :sswitch_28
        0x40 -> :sswitch_35
        0x7a -> :sswitch_42
        0x80 -> :sswitch_4f
        0x88 -> :sswitch_5c
    .end sparse-switch
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
    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 376
    check-cast p1, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->mergeFrom(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

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
    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContentMimeType(Ljava/lang/String;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 616
    if-nez p1, :cond_8

    .line 617
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 619
    :cond_8
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    .line 620
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->contentMimeType_:Ljava/lang/Object;

    .line 622
    return-object p0
.end method

.method public setContentUrl(Ljava/lang/String;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 580
    if-nez p1, :cond_8

    .line 581
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 583
    :cond_8
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    .line 584
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->contentUrl_:Ljava/lang/Object;

    .line 586
    return-object p0
.end method

.method public setHeight(I)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 666
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    .line 667
    iput p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->height_:I

    .line 669
    return-object p0
.end method

.method public setThumbnailHeight(I)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 744
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    .line 745
    iput p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->thumbnailHeight_:I

    .line 747
    return-object p0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 694
    if-nez p1, :cond_8

    .line 695
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 697
    :cond_8
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    .line 698
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 700
    return-object p0
.end method

.method public setThumbnailWidth(I)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 723
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    .line 724
    iput p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->thumbnailWidth_:I

    .line 726
    return-object p0
.end method

.method public setWidth(I)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 645
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->bitField0_:I

    .line 646
    iput p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->width_:I

    .line 648
    return-object p0
.end method
