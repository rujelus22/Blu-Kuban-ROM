.class public final Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PlusPhotosAddedToCollectionItem.java"

# interfaces
.implements Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;",
        "Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;",
        ">;",
        "Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollectionOrBuilder;"
    }
.end annotation


# instance fields
.field private associatedMediaDisplay_:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

.field private associatedMedia_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private collectionId_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private ownerObfuscatedId_:Ljava/lang/Object;

.field private plusEvent_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 622
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->name_:Ljava/lang/Object;

    .line 658
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 694
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->collectionId_:Ljava/lang/Object;

    .line 730
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->associatedMedia_:Ljava/util/List;

    .line 819
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getDefaultInstance()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->associatedMediaDisplay_:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    .line 862
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->plusEvent_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    .line 905
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->url_:Ljava/lang/Object;

    .line 414
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->maybeForceBuilderInitialization()V

    .line 415
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;
    .registers 1

    .prologue
    .line 408
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->create()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;
    .registers 1

    .prologue
    .line 420
    new-instance v0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    invoke-direct {v0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAssociatedMediaIsMutable()V
    .registers 3

    .prologue
    .line 733
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 734
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->associatedMedia_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->associatedMedia_:Ljava/util/List;

    .line 735
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    .line 737
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 418
    return-void
.end method


# virtual methods
.method public addAssociatedMedia(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 766
    if-nez p1, :cond_8

    .line 767
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 769
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->ensureAssociatedMediaIsMutable()V

    .line 770
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->associatedMedia_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->build()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;
    .registers 3

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->buildPartial()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;

    move-result-object v0

    .line 452
    .local v0, result:Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;
    invoke-virtual {v0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 453
    invoke-static {v0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 455
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->buildPartial()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;
    .registers 6

    .prologue
    .line 469
    new-instance v1, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;-><init>(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$1;)V

    .line 470
    .local v1, result:Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    .line 471
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 472
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 473
    or-int/lit8 v2, v2, 0x1

    .line 475
    :cond_10
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->access$302(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 477
    or-int/lit8 v2, v2, 0x2

    .line 479
    :cond_1c
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->ownerObfuscatedId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->access$402(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 481
    or-int/lit8 v2, v2, 0x4

    .line 483
    :cond_28
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->collectionId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->collectionId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->access$502(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget v3, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 485
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->associatedMedia_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->associatedMedia_:Ljava/util/List;

    .line 486
    iget v3, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    .line 488
    :cond_43
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->associatedMedia_:Ljava/util/List;

    #setter for: Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->associatedMedia_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->access$602(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;Ljava/util/List;)Ljava/util/List;

    .line 489
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 490
    or-int/lit8 v2, v2, 0x8

    .line 492
    :cond_50
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->associatedMediaDisplay_:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    #setter for: Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->associatedMediaDisplay_:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->access$702(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    .line 493
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 494
    or-int/lit8 v2, v2, 0x10

    .line 496
    :cond_5d
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->plusEvent_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    #setter for: Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->plusEvent_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->access$802(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    .line 497
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6a

    .line 498
    or-int/lit8 v2, v2, 0x20

    .line 500
    :cond_6a
    iget-object v3, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->access$902(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    #setter for: Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->access$1002(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;I)I

    .line 502
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->clear()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->clear()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;
    .registers 2

    .prologue
    .line 424
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 425
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->name_:Ljava/lang/Object;

    .line 426
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    .line 427
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 428
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    .line 429
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->collectionId_:Ljava/lang/Object;

    .line 430
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    .line 431
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->associatedMedia_:Ljava/util/List;

    .line 432
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    .line 433
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getDefaultInstance()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->associatedMediaDisplay_:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    .line 434
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    .line 435
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->plusEvent_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    .line 436
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    .line 437
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->url_:Ljava/lang/Object;

    .line 438
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    .line 439
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->clone()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->clone()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;
    .registers 3

    .prologue
    .line 443
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->create()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->buildPartial()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

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
    .line 408
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->clone()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAssociatedMedia(I)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;
    .registers 3
    .parameter "index"

    .prologue
    .line 746
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->associatedMedia_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    return-object v0
.end method

.method public getAssociatedMediaCount()I
    .registers 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->associatedMedia_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAssociatedMediaDisplay()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;
    .registers 2

    .prologue
    .line 824
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->associatedMediaDisplay_:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;
    .registers 2

    .prologue
    .line 447
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getDefaultInstance()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;

    move-result-object v0

    return-object v0
.end method

.method public getPlusEvent()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;
    .registers 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->plusEvent_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    return-object v0
.end method

.method public hasAssociatedMediaDisplay()Z
    .registers 3

    .prologue
    .line 821
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

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

.method public hasPlusEvent()Z
    .registers 3

    .prologue
    .line 864
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 539
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->getAssociatedMediaCount()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 540
    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->getAssociatedMedia(I)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_13

    .line 551
    :cond_12
    :goto_12
    return v1

    .line 539
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 545
    :cond_16
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->hasAssociatedMediaDisplay()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 546
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->getAssociatedMediaDisplay()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 551
    :cond_26
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeAssociatedMediaDisplay(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 843
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->associatedMediaDisplay_:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->getDefaultInstance()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 845
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->associatedMediaDisplay_:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    invoke-static {v0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->newBuilder(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->buildPartial()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->associatedMediaDisplay_:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    .line 851
    :goto_20
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    .line 852
    return-object p0

    .line 848
    :cond_27
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->associatedMediaDisplay_:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

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
    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 408
    check-cast p1, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

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
    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 559
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 560
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_8a

    .line 565
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 567
    :sswitch_d
    return-object p0

    .line 572
    :sswitch_e
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    .line 573
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 577
    :sswitch_1b
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    .line 578
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    goto :goto_0

    .line 582
    :sswitch_28
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    .line 583
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->collectionId_:Ljava/lang/Object;

    goto :goto_0

    .line 587
    :sswitch_35
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->newBuilder()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    move-result-object v0

    .line 588
    .local v0, subBuilder:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 589
    invoke-virtual {v0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->buildPartial()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->addAssociatedMedia(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    goto :goto_0

    .line 593
    .end local v0           #subBuilder:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    :sswitch_44
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;->newBuilder()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    move-result-object v0

    .line 594
    .restart local v0       #subBuilder:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->hasAssociatedMediaDisplay()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 595
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->getAssociatedMediaDisplay()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;)Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;

    .line 597
    :cond_55
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 598
    invoke-virtual {v0}, Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;->buildPartial()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->setAssociatedMediaDisplay(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    goto :goto_0

    .line 602
    .end local v0           #subBuilder:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum$Builder;
    :sswitch_60
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->newBuilder()Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    move-result-object v0

    .line 603
    .local v0, subBuilder:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->hasPlusEvent()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 604
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->getPlusEvent()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    .line 606
    :cond_71
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 607
    invoke-virtual {v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->setPlusEvent(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    goto :goto_0

    .line 611
    .end local v0           #subBuilder:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;
    :sswitch_7c
    iget v2, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    .line 612
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->url_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 560
    :sswitch_data_8a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x2a -> :sswitch_44
        0x32 -> :sswitch_60
        0x3a -> :sswitch_7c
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 506
    invoke-static {}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getDefaultInstance()Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 535
    :cond_6
    :goto_6
    return-object p0

    .line 507
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->hasName()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 508
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    .line 510
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->hasOwnerObfuscatedId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 511
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getOwnerObfuscatedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->setOwnerObfuscatedId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    .line 513
    :cond_21
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->hasCollectionId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 514
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getCollectionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->setCollectionId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    .line 516
    :cond_2e
    #getter for: Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->associatedMedia_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->access$600(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 517
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->associatedMedia_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 518
    #getter for: Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->associatedMedia_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->access$600(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->associatedMedia_:Ljava/util/List;

    .line 519
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    .line 526
    :cond_4c
    :goto_4c
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->hasAssociatedMediaDisplay()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 527
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getAssociatedMediaDisplay()Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->mergeAssociatedMediaDisplay(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    .line 529
    :cond_59
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->hasPlusEvent()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 530
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getPlusEvent()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->mergePlusEvent(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    .line 532
    :cond_66
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 533
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->setUrl(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;

    goto :goto_6

    .line 521
    :cond_74
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->ensureAssociatedMediaIsMutable()V

    .line 522
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->associatedMedia_:Ljava/util/List;

    #getter for: Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->associatedMedia_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->access$600(Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4c
.end method

.method public mergePlusEvent(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 886
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->plusEvent_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 888
    iget-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->plusEvent_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    invoke-static {v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->newBuilder(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->plusEvent_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    .line 894
    :goto_20
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    .line 895
    return-object p0

    .line 891
    :cond_27
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->plusEvent_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    goto :goto_20
.end method

.method public setAssociatedMediaDisplay(Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 827
    if-nez p1, :cond_8

    .line 828
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 830
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->associatedMediaDisplay_:Lcom/google/protos/embeds/PlusPhotoAlbumItem$PlusPhotoAlbum;

    .line 832
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    .line 833
    return-object p0
.end method

.method public setCollectionId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 709
    if-nez p1, :cond_8

    .line 710
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 712
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    .line 713
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->collectionId_:Ljava/lang/Object;

    .line 715
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 637
    if-nez p1, :cond_8

    .line 638
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 640
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    .line 641
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->name_:Ljava/lang/Object;

    .line 643
    return-object p0
.end method

.method public setOwnerObfuscatedId(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 673
    if-nez p1, :cond_8

    .line 674
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 676
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    .line 677
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->ownerObfuscatedId_:Ljava/lang/Object;

    .line 679
    return-object p0
.end method

.method public setPlusEvent(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 870
    if-nez p1, :cond_8

    .line 871
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 873
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->plusEvent_:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    .line 875
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    .line 876
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 920
    if-nez p1, :cond_8

    .line 921
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 923
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->bitField0_:I

    .line 924
    iput-object p1, p0, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection$Builder;->url_:Ljava/lang/Object;

    .line 926
    return-object p0
.end method
