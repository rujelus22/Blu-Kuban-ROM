.class public final Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "CanonicalImageProtos.java"

# interfaces
.implements Lcom/google/goggles/CanonicalImageProtos$CanonicalImageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;",
        "Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;",
        ">;",
        "Lcom/google/goggles/CanonicalImageProtos$CanonicalImageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private imageUrl_:Ljava/lang/Object;

.field private previewUrl_:Ljava/lang/Object;

.field private referrerUrl_:Ljava/lang/Object;

.field private thumbnailUrl_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 473
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->imageUrl_:Ljava/lang/Object;

    .line 509
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 545
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->previewUrl_:Ljava/lang/Object;

    .line 581
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->referrerUrl_:Ljava/lang/Object;

    .line 331
    invoke-direct {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->maybeForceBuilderInitialization()V

    .line 332
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->buildParsed()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;
    .registers 1

    .prologue
    .line 326
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->create()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->buildPartial()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 373
    invoke-static {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 376
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;
    .registers 1

    .prologue
    .line 337
    new-instance v0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    invoke-direct {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 335
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    .registers 3

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->buildPartial()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 364
    invoke-static {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 366
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->build()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 380
    new-instance v2, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;-><init>(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;Lcom/google/goggles/CanonicalImageProtos$1;)V

    .line 381
    iget v3, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    .line 382
    const/4 v1, 0x0

    .line 383
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3c

    .line 386
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->imageUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->imageUrl_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->access$302(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 388
    or-int/lit8 v0, v0, 0x2

    .line 390
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->thumbnailUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->thumbnailUrl_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->access$402(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 392
    or-int/lit8 v0, v0, 0x4

    .line 394
    :cond_26
    iget-object v1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->previewUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->previewUrl_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->access$502(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_33

    .line 396
    or-int/lit8 v0, v0, 0x8

    .line 398
    :cond_33
    iget-object v1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->referrerUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->referrerUrl_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->access$602(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    #setter for: Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->access$702(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;I)I

    .line 400
    return-object v2

    :cond_3c
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->buildPartial()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;
    .registers 2

    .prologue
    .line 341
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 342
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->imageUrl_:Ljava/lang/Object;

    .line 343
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    .line 344
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 345
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    .line 346
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->previewUrl_:Ljava/lang/Object;

    .line 347
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    .line 348
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->referrerUrl_:Ljava/lang/Object;

    .line 349
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    .line 350
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->clear()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->clear()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->clear()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearImageUrl()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;
    .registers 2

    .prologue
    .line 497
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    .line 498
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getDefaultInstance()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->imageUrl_:Ljava/lang/Object;

    .line 500
    return-object p0
.end method

.method public clearPreviewUrl()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;
    .registers 2

    .prologue
    .line 569
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    .line 570
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getDefaultInstance()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getPreviewUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->previewUrl_:Ljava/lang/Object;

    .line 572
    return-object p0
.end method

.method public clearReferrerUrl()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;
    .registers 2

    .prologue
    .line 605
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    .line 606
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getDefaultInstance()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getReferrerUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->referrerUrl_:Ljava/lang/Object;

    .line 608
    return-object p0
.end method

.method public clearThumbnailUrl()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;
    .registers 2

    .prologue
    .line 533
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    .line 534
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getDefaultInstance()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 536
    return-object p0
.end method

.method public clone()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;
    .registers 3

    .prologue
    .line 354
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->create()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->buildPartial()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->mergeFrom(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->clone()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->clone()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->clone()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->clone()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

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
    .line 326
    invoke-virtual {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->clone()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    .registers 2

    .prologue
    .line 358
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getDefaultInstance()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->getDefaultInstanceForType()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->getDefaultInstanceForType()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->imageUrl_:Ljava/lang/Object;

    .line 479
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 480
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 481
    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->imageUrl_:Ljava/lang/Object;

    .line 484
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 550
    iget-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->previewUrl_:Ljava/lang/Object;

    .line 551
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 552
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 553
    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->previewUrl_:Ljava/lang/Object;

    .line 556
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getReferrerUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->referrerUrl_:Ljava/lang/Object;

    .line 587
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 588
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 589
    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->referrerUrl_:Ljava/lang/Object;

    .line 592
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 515
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 516
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 517
    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 520
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasImageUrl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 475
    iget v1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPreviewUrl()Z
    .registers 3

    .prologue
    .line 547
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

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

.method public hasReferrerUrl()Z
    .registers 3

    .prologue
    .line 583
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

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

.method public hasThumbnailUrl()Z
    .registers 3

    .prologue
    .line 511
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    .line 424
    const/4 v0, 0x0

    .line 426
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;
    .registers 3
    .parameter

    .prologue
    .line 404
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getDefaultInstance()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 418
    :goto_6
    return-object p0

    .line 405
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->hasImageUrl()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 406
    invoke-virtual {p1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->setImageUrl(Ljava/lang/String;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    .line 408
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->hasThumbnailUrl()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 409
    invoke-virtual {p1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->setThumbnailUrl(Ljava/lang/String;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    .line 411
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->hasPreviewUrl()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 412
    invoke-virtual {p1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getPreviewUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->setPreviewUrl(Ljava/lang/String;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    .line 414
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->hasReferrerUrl()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 415
    invoke-virtual {p1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getReferrerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->setReferrerUrl(Ljava/lang/String;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    .line 417
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 435
    sparse-switch v0, :sswitch_data_42

    .line 440
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    :sswitch_d
    return-object p0

    .line 447
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    .line 448
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->imageUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 452
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    .line 453
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->thumbnailUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 457
    :sswitch_28
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    .line 458
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->referrerUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 462
    :sswitch_35
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    .line 463
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->previewUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 435
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
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
    .line 326
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 326
    check-cast p1, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    invoke-virtual {p0, p1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->mergeFrom(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

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
    .line 326
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;
    .registers 3
    .parameter

    .prologue
    .line 488
    if-nez p1, :cond_8

    .line 489
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 491
    :cond_8
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    .line 492
    iput-object p1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->imageUrl_:Ljava/lang/Object;

    .line 494
    return-object p0
.end method

.method setImageUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 503
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    .line 504
    iput-object p1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->imageUrl_:Ljava/lang/Object;

    .line 506
    return-void
.end method

.method public setPreviewUrl(Ljava/lang/String;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;
    .registers 3
    .parameter

    .prologue
    .line 560
    if-nez p1, :cond_8

    .line 561
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 563
    :cond_8
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    .line 564
    iput-object p1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->previewUrl_:Ljava/lang/Object;

    .line 566
    return-object p0
.end method

.method setPreviewUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 575
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    .line 576
    iput-object p1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->previewUrl_:Ljava/lang/Object;

    .line 578
    return-void
.end method

.method public setReferrerUrl(Ljava/lang/String;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;
    .registers 3
    .parameter

    .prologue
    .line 596
    if-nez p1, :cond_8

    .line 597
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 599
    :cond_8
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    .line 600
    iput-object p1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->referrerUrl_:Ljava/lang/Object;

    .line 602
    return-object p0
.end method

.method setReferrerUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 611
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    .line 612
    iput-object p1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->referrerUrl_:Ljava/lang/Object;

    .line 614
    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;
    .registers 3
    .parameter

    .prologue
    .line 524
    if-nez p1, :cond_8

    .line 525
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 527
    :cond_8
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    .line 528
    iput-object p1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 530
    return-object p0
.end method

.method setThumbnailUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 539
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->bitField0_:I

    .line 540
    iput-object p1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 542
    return-void
.end method
