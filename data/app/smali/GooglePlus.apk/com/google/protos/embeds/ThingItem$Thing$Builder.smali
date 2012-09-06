.class public final Lcom/google/protos/embeds/ThingItem$Thing$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ThingItem.java"

# interfaces
.implements Lcom/google/protos/embeds/ThingItem$ThingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/ThingItem$Thing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/embeds/ThingItem$Thing;",
        "Lcom/google/protos/embeds/ThingItem$Thing$Builder;",
        ">;",
        "Lcom/google/protos/embeds/ThingItem$ThingOrBuilder;"
    }
.end annotation


# instance fields
.field private author_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/embed/EmbedClient$EmbedClientItem;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private imageUrl_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private proxiedFaviconUrl_:Ljava/lang/Object;

.field private proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 628
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->url_:Ljava/lang/Object;

    .line 664
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->imageUrl_:Ljava/lang/Object;

    .line 700
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->name_:Ljava/lang/Object;

    .line 736
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->description_:Ljava/lang/Object;

    .line 772
    invoke-static {}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getDefaultInstance()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    .line 815
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->proxiedFaviconUrl_:Ljava/lang/Object;

    .line 851
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->author_:Ljava/util/List;

    .line 430
    invoke-direct {p0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->maybeForceBuilderInitialization()V

    .line 431
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/embeds/ThingItem$Thing$Builder;
    .registers 1

    .prologue
    .line 424
    invoke-static {}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->create()Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/embeds/ThingItem$Thing$Builder;
    .registers 1

    .prologue
    .line 436
    new-instance v0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    invoke-direct {v0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAuthorIsMutable()V
    .registers 3

    .prologue
    .line 854
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_17

    .line 855
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->author_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->author_:Ljava/util/List;

    .line 856
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    .line 858
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 434
    return-void
.end method


# virtual methods
.method public addAuthor(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 887
    if-nez p1, :cond_8

    .line 888
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 890
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->ensureAuthorIsMutable()V

    .line 891
    iget-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->author_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->build()Lcom/google/protos/embeds/ThingItem$Thing;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/embeds/ThingItem$Thing;
    .registers 3

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->buildPartial()Lcom/google/protos/embeds/ThingItem$Thing;

    move-result-object v0

    .line 468
    .local v0, result:Lcom/google/protos/embeds/ThingItem$Thing;
    invoke-virtual {v0}, Lcom/google/protos/embeds/ThingItem$Thing;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 469
    invoke-static {v0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 471
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->buildPartial()Lcom/google/protos/embeds/ThingItem$Thing;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/embeds/ThingItem$Thing;
    .registers 6

    .prologue
    .line 485
    new-instance v1, Lcom/google/protos/embeds/ThingItem$Thing;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/embeds/ThingItem$Thing;-><init>(Lcom/google/protos/embeds/ThingItem$Thing$Builder;Lcom/google/protos/embeds/ThingItem$1;)V

    .line 486
    .local v1, result:Lcom/google/protos/embeds/ThingItem$Thing;
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    .line 487
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 488
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 489
    or-int/lit8 v2, v2, 0x1

    .line 491
    :cond_10
    iget-object v3, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/ThingItem$Thing;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/ThingItem$Thing;->access$302(Lcom/google/protos/embeds/ThingItem$Thing;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 493
    or-int/lit8 v2, v2, 0x2

    .line 495
    :cond_1c
    iget-object v3, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->imageUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/ThingItem$Thing;->imageUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/ThingItem$Thing;->access$402(Lcom/google/protos/embeds/ThingItem$Thing;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 497
    or-int/lit8 v2, v2, 0x4

    .line 499
    :cond_28
    iget-object v3, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/ThingItem$Thing;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/ThingItem$Thing;->access$502(Lcom/google/protos/embeds/ThingItem$Thing;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 501
    or-int/lit8 v2, v2, 0x8

    .line 503
    :cond_35
    iget-object v3, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->description_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/ThingItem$Thing;->description_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/ThingItem$Thing;->access$602(Lcom/google/protos/embeds/ThingItem$Thing;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 505
    or-int/lit8 v2, v2, 0x10

    .line 507
    :cond_42
    iget-object v3, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    #setter for: Lcom/google/protos/embeds/ThingItem$Thing;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/ThingItem$Thing;->access$702(Lcom/google/protos/embeds/ThingItem$Thing;Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    .line 508
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 509
    or-int/lit8 v2, v2, 0x20

    .line 511
    :cond_4f
    iget-object v3, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->proxiedFaviconUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/ThingItem$Thing;->proxiedFaviconUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/ThingItem$Thing;->access$802(Lcom/google/protos/embeds/ThingItem$Thing;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget v3, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6a

    .line 513
    iget-object v3, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->author_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->author_:Ljava/util/List;

    .line 514
    iget v3, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    .line 516
    :cond_6a
    iget-object v3, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->author_:Ljava/util/List;

    #setter for: Lcom/google/protos/embeds/ThingItem$Thing;->author_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/ThingItem$Thing;->access$902(Lcom/google/protos/embeds/ThingItem$Thing;Ljava/util/List;)Ljava/util/List;

    .line 517
    #setter for: Lcom/google/protos/embeds/ThingItem$Thing;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/embeds/ThingItem$Thing;->access$1002(Lcom/google/protos/embeds/ThingItem$Thing;I)I

    .line 518
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->clear()Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->clear()Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/embeds/ThingItem$Thing$Builder;
    .registers 2

    .prologue
    .line 440
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 441
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->url_:Ljava/lang/Object;

    .line 442
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    .line 443
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->imageUrl_:Ljava/lang/Object;

    .line 444
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    .line 445
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->name_:Ljava/lang/Object;

    .line 446
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    .line 447
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->description_:Ljava/lang/Object;

    .line 448
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    .line 449
    invoke-static {}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getDefaultInstance()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    .line 450
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    .line 451
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->proxiedFaviconUrl_:Ljava/lang/Object;

    .line 452
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    .line 453
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->author_:Ljava/util/List;

    .line 454
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    .line 455
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->clone()Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->clone()Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/embeds/ThingItem$Thing$Builder;
    .registers 3

    .prologue
    .line 459
    invoke-static {}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->create()Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->buildPartial()Lcom/google/protos/embeds/ThingItem$Thing;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->mergeFrom(Lcom/google/protos/embeds/ThingItem$Thing;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;

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
    .line 424
    invoke-virtual {p0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->clone()Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthor(I)Lcom/google/protos/embed/EmbedClient$EmbedClientItem;
    .registers 3
    .parameter "index"

    .prologue
    .line 867
    iget-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->author_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    return-object v0
.end method

.method public getAuthorCount()I
    .registers 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->author_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/ThingItem$Thing;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/ThingItem$Thing;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/ThingItem$Thing;
    .registers 2

    .prologue
    .line 463
    invoke-static {}, Lcom/google/protos/embeds/ThingItem$Thing;->getDefaultInstance()Lcom/google/protos/embeds/ThingItem$Thing;

    move-result-object v0

    return-object v0
.end method

.method public getProxiedImage()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;
    .registers 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    return-object v0
.end method

.method public hasProxiedImage()Z
    .registers 3

    .prologue
    .line 774
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

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
    .registers 3

    .prologue
    .line 555
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->getAuthorCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 556
    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->getAuthor(I)Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 558
    const/4 v1, 0x0

    .line 561
    :goto_12
    return v1

    .line 555
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 561
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
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
    .line 424
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 424
    check-cast p1, Lcom/google/protos/embeds/ThingItem$Thing;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->mergeFrom(Lcom/google/protos/embeds/ThingItem$Thing;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;

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
    .line 424
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 570
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_7a

    .line 575
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 577
    :sswitch_d
    return-object p0

    .line 582
    :sswitch_e
    iget v2, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    .line 583
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 587
    :sswitch_1b
    iget v2, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    .line 588
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->imageUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 592
    :sswitch_28
    iget v2, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    .line 593
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 597
    :sswitch_35
    iget v2, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    .line 598
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 602
    :sswitch_42
    invoke-static {}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->newBuilder()Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    move-result-object v0

    .line 603
    .local v0, subBuilder:Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->hasProxiedImage()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 604
    invoke-virtual {p0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->getProxiedImage()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->mergeFrom(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    .line 606
    :cond_53
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 607
    invoke-virtual {v0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->buildPartial()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->setProxiedImage(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    goto :goto_0

    .line 611
    .end local v0           #subBuilder:Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    :sswitch_5e
    iget v2, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    .line 612
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->proxiedFaviconUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 616
    :sswitch_6b
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->newBuilder()Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;

    move-result-object v0

    .line 617
    .local v0, subBuilder:Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 618
    invoke-virtual {v0}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem$Builder;->buildPartial()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->addAuthor(Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    goto :goto_0

    .line 570
    :sswitch_data_7a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x2a -> :sswitch_42
        0x32 -> :sswitch_5e
        0x3a -> :sswitch_6b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protos/embeds/ThingItem$Thing;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 522
    invoke-static {}, Lcom/google/protos/embeds/ThingItem$Thing;->getDefaultInstance()Lcom/google/protos/embeds/ThingItem$Thing;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 551
    :cond_6
    :goto_6
    return-object p0

    .line 523
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/embeds/ThingItem$Thing;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 524
    invoke-virtual {p1}, Lcom/google/protos/embeds/ThingItem$Thing;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->setUrl(Ljava/lang/String;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    .line 526
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/embeds/ThingItem$Thing;->hasImageUrl()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 527
    invoke-virtual {p1}, Lcom/google/protos/embeds/ThingItem$Thing;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->setImageUrl(Ljava/lang/String;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    .line 529
    :cond_21
    invoke-virtual {p1}, Lcom/google/protos/embeds/ThingItem$Thing;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 530
    invoke-virtual {p1}, Lcom/google/protos/embeds/ThingItem$Thing;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    .line 532
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protos/embeds/ThingItem$Thing;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 533
    invoke-virtual {p1}, Lcom/google/protos/embeds/ThingItem$Thing;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->setDescription(Ljava/lang/String;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    .line 535
    :cond_3b
    invoke-virtual {p1}, Lcom/google/protos/embeds/ThingItem$Thing;->hasProxiedImage()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 536
    invoke-virtual {p1}, Lcom/google/protos/embeds/ThingItem$Thing;->getProxiedImage()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->mergeProxiedImage(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    .line 538
    :cond_48
    invoke-virtual {p1}, Lcom/google/protos/embeds/ThingItem$Thing;->hasProxiedFaviconUrl()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 539
    invoke-virtual {p1}, Lcom/google/protos/embeds/ThingItem$Thing;->getProxiedFaviconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->setProxiedFaviconUrl(Ljava/lang/String;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;

    .line 541
    :cond_55
    #getter for: Lcom/google/protos/embeds/ThingItem$Thing;->author_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/ThingItem$Thing;->access$900(Lcom/google/protos/embeds/ThingItem$Thing;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 542
    iget-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->author_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 543
    #getter for: Lcom/google/protos/embeds/ThingItem$Thing;->author_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/ThingItem$Thing;->access$900(Lcom/google/protos/embeds/ThingItem$Thing;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->author_:Ljava/util/List;

    .line 544
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    goto :goto_6

    .line 546
    :cond_74
    invoke-direct {p0}, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->ensureAuthorIsMutable()V

    .line 547
    iget-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->author_:Ljava/util/List;

    #getter for: Lcom/google/protos/embeds/ThingItem$Thing;->author_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/ThingItem$Thing;->access$900(Lcom/google/protos/embeds/ThingItem$Thing;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public mergeProxiedImage(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 796
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    invoke-static {}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getDefaultInstance()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 798
    iget-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    invoke-static {v0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->newBuilder(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->mergeFrom(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->buildPartial()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    .line 804
    :goto_20
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    .line 805
    return-object p0

    .line 801
    :cond_27
    iput-object p1, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    goto :goto_20
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;
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
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    .line 755
    iput-object p1, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->description_:Ljava/lang/Object;

    .line 757
    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;
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
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    .line 683
    iput-object p1, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->imageUrl_:Ljava/lang/Object;

    .line 685
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;
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
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    .line 719
    iput-object p1, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->name_:Ljava/lang/Object;

    .line 721
    return-object p0
.end method

.method public setProxiedFaviconUrl(Ljava/lang/String;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 830
    if-nez p1, :cond_8

    .line 831
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 833
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    .line 834
    iput-object p1, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->proxiedFaviconUrl_:Ljava/lang/Object;

    .line 836
    return-object p0
.end method

.method public setProxiedImage(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 780
    if-nez p1, :cond_8

    .line 781
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 783
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->proxiedImage_:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    .line 785
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    .line 786
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/protos/embeds/ThingItem$Thing$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 643
    if-nez p1, :cond_8

    .line 644
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 646
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->bitField0_:I

    .line 647
    iput-object p1, p0, Lcom/google/protos/embeds/ThingItem$Thing$Builder;->url_:Ljava/lang/Object;

    .line 649
    return-object p0
.end method
