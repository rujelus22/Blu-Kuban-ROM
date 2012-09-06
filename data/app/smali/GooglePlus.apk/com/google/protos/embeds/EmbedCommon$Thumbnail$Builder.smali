.class public final Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "EmbedCommon.java"

# interfaces
.implements Lcom/google/protos/embeds/EmbedCommon$ThumbnailOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/EmbedCommon$Thumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/embeds/EmbedCommon$Thumbnail;",
        "Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;",
        ">;",
        "Lcom/google/protos/embeds/EmbedCommon$ThumbnailOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private boxHeightPx_:I

.field private boxWidthPx_:I

.field private exactHeight_:Z

.field private exactWidth_:Z

.field private imageHeightPx_:I

.field private imageUrl_:Ljava/lang/Object;

.field private recenterVertically_:Z

.field private uncroppedImageUrl_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 559
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->imageUrl_:Ljava/lang/Object;

    .line 700
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->uncroppedImageUrl_:Ljava/lang/Object;

    .line 366
    invoke-direct {p0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->maybeForceBuilderInitialization()V

    .line 367
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    .registers 1

    .prologue
    .line 360
    invoke-static {}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->create()Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    .registers 1

    .prologue
    .line 372
    new-instance v0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    invoke-direct {v0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 370
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->build()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;
    .registers 3

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->buildPartial()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v0

    .line 406
    .local v0, result:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;
    invoke-virtual {v0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 407
    invoke-static {v0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 409
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->buildPartial()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;
    .registers 6

    .prologue
    .line 423
    new-instance v1, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;-><init>(Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;Lcom/google/protos/embeds/EmbedCommon$1;)V

    .line 424
    .local v1, result:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 425
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 426
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 427
    or-int/lit8 v2, v2, 0x1

    .line 429
    :cond_10
    iget-object v3, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->imageUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->imageUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->access$302(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 431
    or-int/lit8 v2, v2, 0x2

    .line 433
    :cond_1c
    iget v3, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->boxWidthPx_:I

    #setter for: Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->boxWidthPx_:I
    invoke-static {v1, v3}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->access$402(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;I)I

    .line 434
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 435
    or-int/lit8 v2, v2, 0x4

    .line 437
    :cond_28
    iget v3, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->boxHeightPx_:I

    #setter for: Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->boxHeightPx_:I
    invoke-static {v1, v3}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->access$502(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;I)I

    .line 438
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 439
    or-int/lit8 v2, v2, 0x8

    .line 441
    :cond_35
    iget-boolean v3, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->exactWidth_:Z

    #setter for: Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->exactWidth_:Z
    invoke-static {v1, v3}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->access$602(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;Z)Z

    .line 442
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 443
    or-int/lit8 v2, v2, 0x10

    .line 445
    :cond_42
    iget-boolean v3, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->exactHeight_:Z

    #setter for: Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->exactHeight_:Z
    invoke-static {v1, v3}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->access$702(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;Z)Z

    .line 446
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 447
    or-int/lit8 v2, v2, 0x20

    .line 449
    :cond_4f
    iget-boolean v3, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->recenterVertically_:Z

    #setter for: Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->recenterVertically_:Z
    invoke-static {v1, v3}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->access$802(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;Z)Z

    .line 450
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 451
    or-int/lit8 v2, v2, 0x40

    .line 453
    :cond_5c
    iget-object v3, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->uncroppedImageUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->uncroppedImageUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->access$902(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 455
    or-int/lit16 v2, v2, 0x80

    .line 457
    :cond_69
    iget v3, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->imageHeightPx_:I

    #setter for: Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->imageHeightPx_:I
    invoke-static {v1, v3}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->access$1002(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;I)I

    .line 458
    #setter for: Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->access$1102(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;I)I

    .line 459
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->clear()Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->clear()Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 376
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 377
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->imageUrl_:Ljava/lang/Object;

    .line 378
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 379
    iput v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->boxWidthPx_:I

    .line 380
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 381
    iput v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->boxHeightPx_:I

    .line 382
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 383
    iput-boolean v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->exactWidth_:Z

    .line 384
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 385
    iput-boolean v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->exactHeight_:Z

    .line 386
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 387
    iput-boolean v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->recenterVertically_:Z

    .line 388
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 389
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->uncroppedImageUrl_:Ljava/lang/Object;

    .line 390
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 391
    iput v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->imageHeightPx_:I

    .line 392
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 393
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->clone()Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->clone()Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    .registers 3

    .prologue
    .line 397
    invoke-static {}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->create()Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->buildPartial()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->mergeFrom(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

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
    .line 360
    invoke-virtual {p0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->clone()Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;
    .registers 2

    .prologue
    .line 401
    invoke-static {}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getDefaultInstance()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 492
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
    .line 360
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 360
    check-cast p1, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->mergeFrom(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

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
    .line 360
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 501
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_76

    .line 506
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 508
    :sswitch_d
    return-object p0

    .line 513
    :sswitch_e
    iget v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 514
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->imageUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 518
    :sswitch_1b
    iget v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 519
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->boxWidthPx_:I

    goto :goto_0

    .line 523
    :sswitch_28
    iget v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 524
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->boxHeightPx_:I

    goto :goto_0

    .line 528
    :sswitch_35
    iget v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 529
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->exactWidth_:Z

    goto :goto_0

    .line 533
    :sswitch_42
    iget v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 534
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->exactHeight_:Z

    goto :goto_0

    .line 538
    :sswitch_4f
    iget v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 539
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->recenterVertically_:Z

    goto :goto_0

    .line 543
    :sswitch_5c
    iget v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 544
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->uncroppedImageUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 548
    :sswitch_69
    iget v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 549
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->imageHeightPx_:I

    goto :goto_0

    .line 501
    :sswitch_data_76
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
        0x28 -> :sswitch_42
        0x30 -> :sswitch_4f
        0x3a -> :sswitch_5c
        0x40 -> :sswitch_69
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 463
    invoke-static {}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getDefaultInstance()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 488
    :cond_6
    :goto_6
    return-object p0

    .line 464
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->hasImageUrl()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 465
    invoke-virtual {p1}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->setImageUrl(Ljava/lang/String;)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    .line 467
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->hasBoxWidthPx()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 468
    invoke-virtual {p1}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getBoxWidthPx()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->setBoxWidthPx(I)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    .line 470
    :cond_21
    invoke-virtual {p1}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->hasBoxHeightPx()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 471
    invoke-virtual {p1}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getBoxHeightPx()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->setBoxHeightPx(I)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    .line 473
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->hasExactWidth()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 474
    invoke-virtual {p1}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getExactWidth()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->setExactWidth(Z)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    .line 476
    :cond_3b
    invoke-virtual {p1}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->hasExactHeight()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 477
    invoke-virtual {p1}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getExactHeight()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->setExactHeight(Z)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    .line 479
    :cond_48
    invoke-virtual {p1}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->hasRecenterVertically()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 480
    invoke-virtual {p1}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getRecenterVertically()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->setRecenterVertically(Z)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    .line 482
    :cond_55
    invoke-virtual {p1}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->hasUncroppedImageUrl()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 483
    invoke-virtual {p1}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getUncroppedImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->setUncroppedImageUrl(Ljava/lang/String;)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    .line 485
    :cond_62
    invoke-virtual {p1}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->hasImageHeightPx()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 486
    invoke-virtual {p1}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getImageHeightPx()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->setImageHeightPx(I)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    goto :goto_6
.end method

.method public setBoxHeightPx(I)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 624
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 625
    iput p1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->boxHeightPx_:I

    .line 627
    return-object p0
.end method

.method public setBoxWidthPx(I)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 603
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 604
    iput p1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->boxWidthPx_:I

    .line 606
    return-object p0
.end method

.method public setExactHeight(Z)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 666
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 667
    iput-boolean p1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->exactHeight_:Z

    .line 669
    return-object p0
.end method

.method public setExactWidth(Z)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 645
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 646
    iput-boolean p1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->exactWidth_:Z

    .line 648
    return-object p0
.end method

.method public setImageHeightPx(I)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 744
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 745
    iput p1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->imageHeightPx_:I

    .line 747
    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 574
    if-nez p1, :cond_8

    .line 575
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 577
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 578
    iput-object p1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->imageUrl_:Ljava/lang/Object;

    .line 580
    return-object p0
.end method

.method public setRecenterVertically(Z)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 687
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 688
    iput-boolean p1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->recenterVertically_:Z

    .line 690
    return-object p0
.end method

.method public setUncroppedImageUrl(Ljava/lang/String;)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 715
    if-nez p1, :cond_8

    .line 716
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 718
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->bitField0_:I

    .line 719
    iput-object p1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->uncroppedImageUrl_:Ljava/lang/Object;

    .line 721
    return-object p0
.end method
