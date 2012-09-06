.class public final Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PlusPhotoAlbumItem.java"

# interfaces
.implements Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;",
        "Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;",
        ">;",
        "Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbumOrBuilder;"
    }
.end annotation


# instance fields
.field private albumId_:Ljava/lang/Object;

.field private associatedMedia_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

.field private description_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private ownerObfuscatedId_:Ljava/lang/Object;

.field private photoCount_:I

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 664
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->url_:Ljava/lang/Object;

    .line 700
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->name_:Ljava/lang/Object;

    .line 736
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->description_:Ljava/lang/Object;

    .line 772
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->associatedMedia_:Ljava/util/List;

    .line 861
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 897
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->albumId_:Ljava/lang/Object;

    .line 954
    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place;->getDefaultInstance()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    .line 452
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->maybeForceBuilderInitialization()V

    .line 453
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    .registers 1

    .prologue
    .line 446
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->create()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    .registers 1

    .prologue
    .line 458
    new-instance v0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    invoke-direct {v0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAssociatedMediaIsMutable()V
    .registers 3

    .prologue
    .line 775
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 776
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->associatedMedia_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->associatedMedia_:Ljava/util/List;

    .line 777
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 779
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 456
    return-void
.end method


# virtual methods
.method public addAssociatedMedia(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 808
    if-nez p1, :cond_8

    .line 809
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 811
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->ensureAssociatedMediaIsMutable()V

    .line 812
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->associatedMedia_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->build()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;
    .registers 3

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->buildPartial()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v0

    .line 492
    .local v0, result:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;
    invoke-virtual {v0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 493
    invoke-static {v0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 495
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->buildPartial()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;
    .registers 6

    .prologue
    .line 509
    new-instance v1, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;-><init>(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;Lcom/google/protos/embeds/PlusPhotoAlbumItem$1;)V

    .line 510
    .local v1, result:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 511
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 512
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 513
    or-int/lit8 v2, v2, 0x1

    .line 515
    :cond_10
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->access$302(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 517
    or-int/lit8 v2, v2, 0x2

    .line 519
    :cond_1c
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->access$402(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 521
    or-int/lit8 v2, v2, 0x4

    .line 523
    :cond_28
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->description_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->description_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->access$502(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    iget v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 525
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->associatedMedia_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->associatedMedia_:Ljava/util/List;

    .line 526
    iget v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 528
    :cond_43
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->associatedMedia_:Ljava/util/List;

    #setter for: Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->associatedMedia_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->access$602(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;Ljava/util/List;)Ljava/util/List;

    .line 529
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 530
    or-int/lit8 v2, v2, 0x8

    .line 532
    :cond_50
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->ownerObfuscatedId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->access$702(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 534
    or-int/lit8 v2, v2, 0x10

    .line 536
    :cond_5d
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->albumId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->albumId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->access$802(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6a

    .line 538
    or-int/lit8 v2, v2, 0x20

    .line 540
    :cond_6a
    iget v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->photoCount_:I

    #setter for: Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->photoCount_:I
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->access$902(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;I)I

    .line 541
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_77

    .line 542
    or-int/lit8 v2, v2, 0x40

    .line 544
    :cond_77
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    #setter for: Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->access$1002(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embed/place/PlaceItem$Place;

    .line 545
    #setter for: Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->access$1102(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;I)I

    .line 546
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->clear()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->clear()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    .registers 2

    .prologue
    .line 462
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 463
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->url_:Ljava/lang/Object;

    .line 464
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 465
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->name_:Ljava/lang/Object;

    .line 466
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 467
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->description_:Ljava/lang/Object;

    .line 468
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 469
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->associatedMedia_:Ljava/util/List;

    .line 470
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 471
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 472
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 473
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->albumId_:Ljava/lang/Object;

    .line 474
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 475
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->photoCount_:I

    .line 476
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 477
    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place;->getDefaultInstance()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    .line 478
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 479
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->clone()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->clone()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    .registers 3

    .prologue
    .line 483
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->create()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->buildPartial()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

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
    .line 446
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->clone()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAssociatedMedia(I)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 788
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->associatedMedia_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

    return-object v0
.end method

.method public getAssociatedMediaCount()I
    .registers 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->associatedMedia_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContentLocation()Lcom/google/protos/embed/place/PlaceItem$Place;
    .registers 2

    .prologue
    .line 959
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;
    .registers 2

    .prologue
    .line 487
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getDefaultInstance()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v0

    return-object v0
.end method

.method public hasContentLocation()Z
    .registers 3

    .prologue
    .line 956
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 586
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->getAssociatedMediaCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 587
    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->getAssociatedMedia(I)Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 589
    const/4 v1, 0x0

    .line 592
    :goto_12
    return v1

    .line 586
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 592
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeContentLocation(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 978
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place;->getDefaultInstance()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 980
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    invoke-static {v0}, Lcom/google/protos/embed/place/PlaceItem$Place;->newBuilder(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->mergeFrom(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->buildPartial()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    .line 986
    :goto_20
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 987
    return-object p0

    .line 983
    :cond_27
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    goto :goto_20
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
    .line 446
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 446
    check-cast p1, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

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
    .line 446
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 601
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_88

    .line 606
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 608
    :sswitch_d
    return-object p0

    .line 613
    :sswitch_e
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 614
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 618
    :sswitch_1b
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 619
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 623
    :sswitch_28
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 624
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 628
    :sswitch_35
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;->newBuilder()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;

    move-result-object v0

    .line 629
    .local v0, subBuilder:Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 630
    invoke-virtual {v0}, Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;->buildPartial()Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->addAssociatedMedia(Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    goto :goto_0

    .line 634
    .end local v0           #subBuilder:Lcom/google/protos/embeds/PlusPhotoItem$PlusPhoto$Builder;
    :sswitch_44
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 635
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    goto :goto_0

    .line 639
    :sswitch_51
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 640
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->albumId_:Ljava/lang/Object;

    goto :goto_0

    .line 644
    :sswitch_5e
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 645
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->photoCount_:I

    goto :goto_0

    .line 649
    :sswitch_6b
    invoke-static {}, Lcom/google/protos/embed/place/PlaceItem$Place;->newBuilder()Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    move-result-object v0

    .line 650
    .local v0, subBuilder:Lcom/google/protos/embed/place/PlaceItem$Place$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->hasContentLocation()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 651
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->getContentLocation()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->mergeFrom(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embed/place/PlaceItem$Place$Builder;

    .line 653
    :cond_7c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 654
    invoke-virtual {v0}, Lcom/google/protos/embed/place/PlaceItem$Place$Builder;->buildPartial()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->setContentLocation(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    goto/16 :goto_0

    .line 601
    :sswitch_data_88
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x2a -> :sswitch_44
        0x32 -> :sswitch_51
        0x38 -> :sswitch_5e
        0x42 -> :sswitch_6b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 550
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getDefaultInstance()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 582
    :cond_6
    :goto_6
    return-object p0

    .line 551
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 552
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->setUrl(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    .line 554
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->hasName()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 555
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    .line 557
    :cond_21
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 558
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->setDescription(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    .line 560
    :cond_2e
    #getter for: Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->associatedMedia_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->access$600(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 561
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->associatedMedia_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 562
    #getter for: Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->associatedMedia_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->access$600(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->associatedMedia_:Ljava/util/List;

    .line 563
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 570
    :cond_4c
    :goto_4c
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->hasOwnerObfuscatedId()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 571
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getOwnerObfuscatedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->setOwnerObfuscatedId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    .line 573
    :cond_59
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->hasAlbumId()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 574
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->setAlbumId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    .line 576
    :cond_66
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->hasPhotoCount()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 577
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getPhotoCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->setPhotoCount(I)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    .line 579
    :cond_73
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->hasContentLocation()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 580
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getContentLocation()Lcom/google/protos/embed/place/PlaceItem$Place;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->mergeContentLocation(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    goto :goto_6

    .line 565
    :cond_81
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->ensureAssociatedMediaIsMutable()V

    .line 566
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->associatedMedia_:Ljava/util/List;

    #getter for: Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->associatedMedia_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->access$600(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4c
.end method

.method public setAlbumId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 912
    if-nez p1, :cond_8

    .line 913
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 915
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 916
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->albumId_:Ljava/lang/Object;

    .line 918
    return-object p0
.end method

.method public setContentLocation(Lcom/google/protos/embed/place/PlaceItem$Place;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 962
    if-nez p1, :cond_8

    .line 963
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 965
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->contentLocation_:Lcom/google/protos/embed/place/PlaceItem$Place;

    .line 967
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 968
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 751
    if-nez p1, :cond_8

    .line 752
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 754
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 755
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->description_:Ljava/lang/Object;

    .line 757
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
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
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 719
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->name_:Ljava/lang/Object;

    .line 721
    return-object p0
.end method

.method public setOwnerObfuscatedId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 876
    if-nez p1, :cond_8

    .line 877
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 879
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 880
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 882
    return-object p0
.end method

.method public setPhotoCount(I)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 941
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 942
    iput p1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->photoCount_:I

    .line 944
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 679
    if-nez p1, :cond_8

    .line 680
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 682
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->bitField0_:I

    .line 683
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->url_:Ljava/lang/Object;

    .line 685
    return-object p0
.end method
