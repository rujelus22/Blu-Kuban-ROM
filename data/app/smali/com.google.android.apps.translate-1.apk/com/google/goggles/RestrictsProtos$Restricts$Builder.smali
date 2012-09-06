.class public final Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RestrictsProtos.java"

# interfaces
.implements Lcom/google/goggles/RestrictsProtos$RestrictsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/RestrictsProtos$Restricts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/RestrictsProtos$Restricts;",
        "Lcom/google/goggles/RestrictsProtos$Restricts$Builder;",
        ">;",
        "Lcom/google/goggles/RestrictsProtos$RestrictsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private brands_:Lcom/google/protobuf/LazyStringList;

.field private categories_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/RestrictsProtos$Category;",
            ">;"
        }
    .end annotation
.end field

.field private colors_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/RestrictsProtos$ColorEnum$Color;",
            ">;"
        }
    .end annotation
.end field

.field private genders_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/RestrictsProtos$Restricts$Gender;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 522
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->categories_:Ljava/util/List;

    .line 611
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->brands_:Lcom/google/protobuf/LazyStringList;

    .line 667
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->genders_:Ljava/util/List;

    .line 718
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->colors_:Ljava/util/List;

    .line 321
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->maybeForceBuilderInitialization()V

    .line 322
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/RestrictsProtos$Restricts$Builder;)Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 1

    .prologue
    .line 315
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->create()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->buildPartial()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Lcom/google/goggles/RestrictsProtos$Restricts;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 363
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 366
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 1

    .prologue
    .line 327
    new-instance v0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    invoke-direct {v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;-><init>()V

    return-object v0
.end method

.method private ensureBrandsIsMutable()V
    .registers 3

    .prologue
    .line 613
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 614
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->brands_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->brands_:Lcom/google/protobuf/LazyStringList;

    .line 615
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    .line 617
    :cond_16
    return-void
.end method

.method private ensureCategoriesIsMutable()V
    .registers 3

    .prologue
    .line 525
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->categories_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->categories_:Ljava/util/List;

    .line 527
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    .line 529
    :cond_16
    return-void
.end method

.method private ensureColorsIsMutable()V
    .registers 3

    .prologue
    .line 721
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 722
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->colors_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->colors_:Ljava/util/List;

    .line 723
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    .line 725
    :cond_17
    return-void
.end method

.method private ensureGendersIsMutable()V
    .registers 3

    .prologue
    .line 670
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 671
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->genders_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->genders_:Ljava/util/List;

    .line 672
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    .line 674
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 325
    return-void
.end method


# virtual methods
.method public addAllBrands(Ljava/lang/Iterable;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/goggles/RestrictsProtos$Restricts$Builder;"
        }
    .end annotation

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->ensureBrandsIsMutable()V

    .line 650
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->brands_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 652
    return-object p0
.end method

.method public addAllCategories(Ljava/lang/Iterable;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/RestrictsProtos$Category;",
            ">;)",
            "Lcom/google/goggles/RestrictsProtos$Restricts$Builder;"
        }
    .end annotation

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->ensureCategoriesIsMutable()V

    .line 593
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->categories_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 595
    return-object p0
.end method

.method public addAllColors(Ljava/lang/Iterable;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/RestrictsProtos$ColorEnum$Color;",
            ">;)",
            "Lcom/google/goggles/RestrictsProtos$Restricts$Builder;"
        }
    .end annotation

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->ensureColorsIsMutable()V

    .line 757
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->colors_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 759
    return-object p0
.end method

.method public addAllGenders(Ljava/lang/Iterable;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/RestrictsProtos$Restricts$Gender;",
            ">;)",
            "Lcom/google/goggles/RestrictsProtos$Restricts$Builder;"
        }
    .end annotation

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->ensureGendersIsMutable()V

    .line 706
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->genders_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 708
    return-object p0
.end method

.method public addBrands(Ljava/lang/String;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 3
    .parameter

    .prologue
    .line 639
    if-nez p1, :cond_8

    .line 640
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 642
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->ensureBrandsIsMutable()V

    .line 643
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->brands_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 645
    return-object p0
.end method

.method addBrands(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->ensureBrandsIsMutable()V

    .line 662
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->brands_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 664
    return-void
.end method

.method public addCategories(ILcom/google/goggles/RestrictsProtos$Category$Builder;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->ensureCategoriesIsMutable()V

    .line 586
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->categories_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->build()Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 588
    return-object p0
.end method

.method public addCategories(ILcom/google/goggles/RestrictsProtos$Category;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 568
    if-nez p2, :cond_8

    .line 569
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 571
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->ensureCategoriesIsMutable()V

    .line 572
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 574
    return-object p0
.end method

.method public addCategories(Lcom/google/goggles/RestrictsProtos$Category$Builder;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 4
    .parameter

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->ensureCategoriesIsMutable()V

    .line 579
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->categories_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->build()Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    return-object p0
.end method

.method public addCategories(Lcom/google/goggles/RestrictsProtos$Category;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 3
    .parameter

    .prologue
    .line 558
    if-nez p1, :cond_8

    .line 559
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 561
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->ensureCategoriesIsMutable()V

    .line 562
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    return-object p0
.end method

.method public addColors(Lcom/google/goggles/RestrictsProtos$ColorEnum$Color;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 3
    .parameter

    .prologue
    .line 746
    if-nez p1, :cond_8

    .line 747
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 749
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->ensureColorsIsMutable()V

    .line 750
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->colors_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    return-object p0
.end method

.method public addGenders(Lcom/google/goggles/RestrictsProtos$Restricts$Gender;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 3
    .parameter

    .prologue
    .line 695
    if-nez p1, :cond_8

    .line 696
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 698
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->ensureGendersIsMutable()V

    .line 699
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->genders_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    return-object p0
.end method

.method public build()Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 3

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->buildPartial()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lcom/google/goggles/RestrictsProtos$Restricts;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 354
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 356
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->build()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 4

    .prologue
    .line 370
    new-instance v0, Lcom/google/goggles/RestrictsProtos$Restricts;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/goggles/RestrictsProtos$Restricts;-><init>(Lcom/google/goggles/RestrictsProtos$Restricts$Builder;Lcom/google/goggles/RestrictsProtos$1;)V

    .line 371
    iget v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    .line 372
    iget v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    .line 373
    iget-object v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->categories_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->categories_:Ljava/util/List;

    .line 374
    iget v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    .line 376
    :cond_1d
    iget-object v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->categories_:Ljava/util/List;

    #setter for: Lcom/google/goggles/RestrictsProtos$Restricts;->categories_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/goggles/RestrictsProtos$Restricts;->access$302(Lcom/google/goggles/RestrictsProtos$Restricts;Ljava/util/List;)Ljava/util/List;

    .line 377
    iget v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_38

    .line 378
    new-instance v1, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v2, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->brands_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v1, v2}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->brands_:Lcom/google/protobuf/LazyStringList;

    .line 380
    iget v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    .line 382
    :cond_38
    iget-object v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->brands_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/goggles/RestrictsProtos$Restricts;->brands_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v0, v1}, Lcom/google/goggles/RestrictsProtos$Restricts;->access$402(Lcom/google/goggles/RestrictsProtos$Restricts;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 383
    iget v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_52

    .line 384
    iget-object v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->genders_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->genders_:Ljava/util/List;

    .line 385
    iget v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    .line 387
    :cond_52
    iget-object v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->genders_:Ljava/util/List;

    #setter for: Lcom/google/goggles/RestrictsProtos$Restricts;->genders_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/goggles/RestrictsProtos$Restricts;->access$502(Lcom/google/goggles/RestrictsProtos$Restricts;Ljava/util/List;)Ljava/util/List;

    .line 388
    iget v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6d

    .line 389
    iget-object v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->colors_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->colors_:Ljava/util/List;

    .line 390
    iget v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    .line 392
    :cond_6d
    iget-object v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->colors_:Ljava/util/List;

    #setter for: Lcom/google/goggles/RestrictsProtos$Restricts;->colors_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/goggles/RestrictsProtos$Restricts;->access$602(Lcom/google/goggles/RestrictsProtos$Restricts;Ljava/util/List;)Ljava/util/List;

    .line 393
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->buildPartial()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 2

    .prologue
    .line 331
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 332
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->categories_:Ljava/util/List;

    .line 333
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    .line 334
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->brands_:Lcom/google/protobuf/LazyStringList;

    .line 335
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    .line 336
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->genders_:Ljava/util/List;

    .line 337
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    .line 338
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->colors_:Ljava/util/List;

    .line 339
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    .line 340
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->clear()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->clear()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBrands()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 2

    .prologue
    .line 655
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->brands_:Lcom/google/protobuf/LazyStringList;

    .line 656
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    .line 658
    return-object p0
.end method

.method public clearCategories()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 2

    .prologue
    .line 598
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->categories_:Ljava/util/List;

    .line 599
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    .line 601
    return-object p0
.end method

.method public clearColors()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 2

    .prologue
    .line 762
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->colors_:Ljava/util/List;

    .line 763
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    .line 765
    return-object p0
.end method

.method public clearGenders()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 2

    .prologue
    .line 711
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->genders_:Ljava/util/List;

    .line 712
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    .line 714
    return-object p0
.end method

.method public clone()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 3

    .prologue
    .line 344
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->create()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->buildPartial()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->mergeFrom(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->clone()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->clone()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->clone()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

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
    .line 315
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->clone()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBrands(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->brands_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBrandsCount()I
    .registers 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->brands_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getBrandsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->brands_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCategories(I)Lcom/google/goggles/RestrictsProtos$Category;
    .registers 3
    .parameter

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Category;

    return-object v0
.end method

.method public getCategoriesCount()I
    .registers 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCategoriesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/RestrictsProtos$Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->categories_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getColors(I)Lcom/google/goggles/RestrictsProtos$ColorEnum$Color;
    .registers 3
    .parameter

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->colors_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$ColorEnum$Color;

    return-object v0
.end method

.method public getColorsCount()I
    .registers 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->colors_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getColorsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/RestrictsProtos$ColorEnum$Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->colors_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 2

    .prologue
    .line 348
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->getDefaultInstance()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->getDefaultInstanceForType()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->getDefaultInstanceForType()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    return-object v0
.end method

.method public getGenders(I)Lcom/google/goggles/RestrictsProtos$Restricts$Gender;
    .registers 3
    .parameter

    .prologue
    .line 682
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->genders_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    return-object v0
.end method

.method public getGendersCount()I
    .registers 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->genders_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGendersList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/RestrictsProtos$Restricts$Gender;",
            ">;"
        }
    .end annotation

    .prologue
    .line 676
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->genders_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 442
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 4
    .parameter

    .prologue
    .line 397
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->getDefaultInstance()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 438
    :cond_6
    :goto_6
    return-object p0

    .line 398
    :cond_7
    #getter for: Lcom/google/goggles/RestrictsProtos$Restricts;->categories_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/RestrictsProtos$Restricts;->access$300(Lcom/google/goggles/RestrictsProtos$Restricts;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 399
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 400
    #getter for: Lcom/google/goggles/RestrictsProtos$Restricts;->categories_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/RestrictsProtos$Restricts;->access$300(Lcom/google/goggles/RestrictsProtos$Restricts;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->categories_:Ljava/util/List;

    .line 401
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    .line 408
    :cond_25
    :goto_25
    #getter for: Lcom/google/goggles/RestrictsProtos$Restricts;->brands_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/goggles/RestrictsProtos$Restricts;->access$400(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 409
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->brands_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 410
    #getter for: Lcom/google/goggles/RestrictsProtos$Restricts;->brands_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/goggles/RestrictsProtos$Restricts;->access$400(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->brands_:Lcom/google/protobuf/LazyStringList;

    .line 411
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    .line 418
    :cond_43
    :goto_43
    #getter for: Lcom/google/goggles/RestrictsProtos$Restricts;->genders_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/RestrictsProtos$Restricts;->access$500(Lcom/google/goggles/RestrictsProtos$Restricts;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    .line 419
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->genders_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 420
    #getter for: Lcom/google/goggles/RestrictsProtos$Restricts;->genders_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/RestrictsProtos$Restricts;->access$500(Lcom/google/goggles/RestrictsProtos$Restricts;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->genders_:Ljava/util/List;

    .line 421
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    .line 428
    :cond_61
    :goto_61
    #getter for: Lcom/google/goggles/RestrictsProtos$Restricts;->colors_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/RestrictsProtos$Restricts;->access$600(Lcom/google/goggles/RestrictsProtos$Restricts;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 429
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->colors_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 430
    #getter for: Lcom/google/goggles/RestrictsProtos$Restricts;->colors_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/RestrictsProtos$Restricts;->access$600(Lcom/google/goggles/RestrictsProtos$Restricts;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->colors_:Ljava/util/List;

    .line 431
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->bitField0_:I

    goto :goto_6

    .line 403
    :cond_80
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->ensureCategoriesIsMutable()V

    .line 404
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->categories_:Ljava/util/List;

    #getter for: Lcom/google/goggles/RestrictsProtos$Restricts;->categories_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/RestrictsProtos$Restricts;->access$300(Lcom/google/goggles/RestrictsProtos$Restricts;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 413
    :cond_8d
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->ensureBrandsIsMutable()V

    .line 414
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->brands_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/goggles/RestrictsProtos$Restricts;->brands_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/goggles/RestrictsProtos$Restricts;->access$400(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_43

    .line 423
    :cond_9a
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->ensureGendersIsMutable()V

    .line 424
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->genders_:Ljava/util/List;

    #getter for: Lcom/google/goggles/RestrictsProtos$Restricts;->genders_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/RestrictsProtos$Restricts;->access$500(Lcom/google/goggles/RestrictsProtos$Restricts;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_61

    .line 433
    :cond_a7
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->ensureColorsIsMutable()V

    .line 434
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->colors_:Ljava/util/List;

    #getter for: Lcom/google/goggles/RestrictsProtos$Restricts;->colors_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/RestrictsProtos$Restricts;->access$600(Lcom/google/goggles/RestrictsProtos$Restricts;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 451
    sparse-switch v0, :sswitch_data_88

    .line 456
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    :sswitch_d
    return-object p0

    .line 463
    :sswitch_e
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->ensureBrandsIsMutable()V

    .line 464
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->brands_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 468
    :sswitch_1b
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Category;->newBuilder()Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    .line 469
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 470
    invoke-virtual {v0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->buildPartial()Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->addCategories(Lcom/google/goggles/RestrictsProtos$Category;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    goto :goto_0

    .line 474
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 475
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Gender;->valueOf(I)Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p0, v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->addGenders(Lcom/google/goggles/RestrictsProtos$Restricts$Gender;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    goto :goto_0

    .line 482
    :sswitch_38
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 483
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    .line 484
    :cond_40
    :goto_40
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v1

    if-lez v1, :cond_54

    .line 485
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    .line 486
    invoke-static {v1}, Lcom/google/goggles/RestrictsProtos$Restricts$Gender;->valueOf(I)Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    move-result-object v1

    .line 487
    if-eqz v1, :cond_40

    .line 488
    invoke-virtual {p0, v1}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->addGenders(Lcom/google/goggles/RestrictsProtos$Restricts$Gender;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    goto :goto_40

    .line 491
    :cond_54
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 495
    :sswitch_58
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 496
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Color;->valueOf(I)Lcom/google/goggles/RestrictsProtos$ColorEnum$Color;

    move-result-object v0

    .line 497
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {p0, v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->addColors(Lcom/google/goggles/RestrictsProtos$ColorEnum$Color;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    goto :goto_0

    .line 503
    :sswitch_66
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 504
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    .line 505
    :cond_6e
    :goto_6e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v1

    if-lez v1, :cond_82

    .line 506
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    .line 507
    invoke-static {v1}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Color;->valueOf(I)Lcom/google/goggles/RestrictsProtos$ColorEnum$Color;

    move-result-object v1

    .line 508
    if-eqz v1, :cond_6e

    .line 509
    invoke-virtual {p0, v1}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->addColors(Lcom/google/goggles/RestrictsProtos$ColorEnum$Color;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    goto :goto_6e

    .line 512
    :cond_82
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 451
    nop

    :sswitch_data_88
    .sparse-switch
        0x0 -> :sswitch_d
        0x12 -> :sswitch_e
        0x1a -> :sswitch_1b
        0x20 -> :sswitch_2a
        0x22 -> :sswitch_38
        0x28 -> :sswitch_58
        0x2a -> :sswitch_66
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
    .line 315
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 315
    check-cast p1, Lcom/google/goggles/RestrictsProtos$Restricts;

    invoke-virtual {p0, p1}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->mergeFrom(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

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
    .line 315
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeCategories(I)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 3
    .parameter

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->ensureCategoriesIsMutable()V

    .line 605
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 607
    return-object p0
.end method

.method public setBrands(ILjava/lang/String;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 630
    if-nez p2, :cond_8

    .line 631
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 633
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->ensureBrandsIsMutable()V

    .line 634
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->brands_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 636
    return-object p0
.end method

.method public setCategories(ILcom/google/goggles/RestrictsProtos$Category$Builder;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->ensureCategoriesIsMutable()V

    .line 553
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->categories_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->build()Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 555
    return-object p0
.end method

.method public setCategories(ILcom/google/goggles/RestrictsProtos$Category;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 542
    if-nez p2, :cond_8

    .line 543
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 545
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->ensureCategoriesIsMutable()V

    .line 546
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 548
    return-object p0
.end method

.method public setColors(ILcom/google/goggles/RestrictsProtos$ColorEnum$Color;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 737
    if-nez p2, :cond_8

    .line 738
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 740
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->ensureColorsIsMutable()V

    .line 741
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->colors_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 743
    return-object p0
.end method

.method public setGenders(ILcom/google/goggles/RestrictsProtos$Restricts$Gender;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 686
    if-nez p2, :cond_8

    .line 687
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 689
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->ensureGendersIsMutable()V

    .line 690
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->genders_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 692
    return-object p0
.end method
