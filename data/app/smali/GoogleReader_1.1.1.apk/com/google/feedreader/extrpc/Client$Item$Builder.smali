.class public final Lcom/google/feedreader/extrpc/Client$Item$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$ItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$Item;",
        "Lcom/google/feedreader/extrpc/Client$Item$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$ItemOrBuilder;"
    }
.end annotation


# instance fields
.field private annotations_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Item$Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private categories_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Item$Category;",
            ">;"
        }
    .end annotation
.end field

.field private content_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private links_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Link;",
            ">;"
        }
    .end annotation
.end field

.field private media_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Item$MediaContent;",
            ">;"
        }
    .end annotation
.end field

.field private origin_:Lcom/google/feedreader/extrpc/Client$Item$Origin;

.field private publishedMsec_:J

.field private summary_:Ljava/lang/Object;

.field private timestampUsec_:J

.field private title_:Ljava/lang/Object;

.field private updatedMsec_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 5696
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 6016
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->id_:Ljava/lang/Object;

    .line 6073
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->categories_:Ljava/util/List;

    .line 6162
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->title_:Ljava/lang/Object;

    .line 6198
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->summary_:Ljava/lang/Object;

    .line 6234
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->content_:Ljava/lang/Object;

    .line 6270
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->origin_:Lcom/google/feedreader/extrpc/Client$Item$Origin;

    .line 6355
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->links_:Ljava/util/List;

    .line 6444
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->annotations_:Ljava/util/List;

    .line 6533
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->media_:Ljava/util/List;

    .line 5697
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->maybeForceBuilderInitialization()V

    .line 5698
    return-void
.end method

.method static synthetic access$6600(Lcom/google/feedreader/extrpc/Client$Item$Builder;)Lcom/google/feedreader/extrpc/Client$Item;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5691
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6700()Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 1

    .prologue
    .line 5691
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->create()Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$Item;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5753
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v0

    .line 5754
    .local v0, result:Lcom/google/feedreader/extrpc/Client$Item;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 5755
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 5758
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 1

    .prologue
    .line 5703
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Item$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAnnotationsIsMutable()V
    .registers 3

    .prologue
    .line 6447
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-eq v0, v1, :cond_17

    .line 6448
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->annotations_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->annotations_:Ljava/util/List;

    .line 6449
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6451
    :cond_17
    return-void
.end method

.method private ensureCategoriesIsMutable()V
    .registers 3

    .prologue
    .line 6076
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 6077
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->categories_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->categories_:Ljava/util/List;

    .line 6078
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6080
    :cond_16
    return-void
.end method

.method private ensureLinksIsMutable()V
    .registers 3

    .prologue
    .line 6358
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_17

    .line 6359
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->links_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->links_:Ljava/util/List;

    .line 6360
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6362
    :cond_17
    return-void
.end method

.method private ensureMediaIsMutable()V
    .registers 3

    .prologue
    .line 6536
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_17

    .line 6537
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->media_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->media_:Ljava/util/List;

    .line 6538
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6540
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 5701
    return-void
.end method


# virtual methods
.method public addAllAnnotations(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$Item$Annotation;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$Item$Builder;"
        }
    .end annotation

    .prologue
    .line 6514
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$Item$Annotation;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureAnnotationsIsMutable()V

    .line 6515
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->annotations_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6517
    return-object p0
.end method

.method public addAllCategories(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$Item$Category;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$Item$Builder;"
        }
    .end annotation

    .prologue
    .line 6143
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$Item$Category;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureCategoriesIsMutable()V

    .line 6144
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->categories_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6146
    return-object p0
.end method

.method public addAllLinks(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$Link;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$Item$Builder;"
        }
    .end annotation

    .prologue
    .line 6425
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$Link;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureLinksIsMutable()V

    .line 6426
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->links_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6428
    return-object p0
.end method

.method public addAllMedia(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$Item$MediaContent;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$Item$Builder;"
        }
    .end annotation

    .prologue
    .line 6603
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$Item$MediaContent;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureMediaIsMutable()V

    .line 6604
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->media_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6606
    return-object p0
.end method

.method public addAnnotations(ILcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6507
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureAnnotationsIsMutable()V

    .line 6508
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->annotations_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->build()Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6510
    return-object p0
.end method

.method public addAnnotations(ILcom/google/feedreader/extrpc/Client$Item$Annotation;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6490
    if-nez p2, :cond_8

    .line 6491
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6493
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureAnnotationsIsMutable()V

    .line 6494
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->annotations_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6496
    return-object p0
.end method

.method public addAnnotations(Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 4
    .parameter

    .prologue
    .line 6500
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureAnnotationsIsMutable()V

    .line 6501
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->annotations_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->build()Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6503
    return-object p0
.end method

.method public addAnnotations(Lcom/google/feedreader/extrpc/Client$Item$Annotation;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 3
    .parameter

    .prologue
    .line 6480
    if-nez p1, :cond_8

    .line 6481
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6483
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureAnnotationsIsMutable()V

    .line 6484
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->annotations_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6486
    return-object p0
.end method

.method public addCategories(ILcom/google/feedreader/extrpc/Client$Item$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6136
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureCategoriesIsMutable()V

    .line 6137
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->categories_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->build()Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6139
    return-object p0
.end method

.method public addCategories(ILcom/google/feedreader/extrpc/Client$Item$Category;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6119
    if-nez p2, :cond_8

    .line 6120
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6122
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureCategoriesIsMutable()V

    .line 6123
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6125
    return-object p0
.end method

.method public addCategories(Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 4
    .parameter

    .prologue
    .line 6129
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureCategoriesIsMutable()V

    .line 6130
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->categories_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->build()Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6132
    return-object p0
.end method

.method public addCategories(Lcom/google/feedreader/extrpc/Client$Item$Category;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 3
    .parameter

    .prologue
    .line 6109
    if-nez p1, :cond_8

    .line 6110
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6112
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureCategoriesIsMutable()V

    .line 6113
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6115
    return-object p0
.end method

.method public addLinks(ILcom/google/feedreader/extrpc/Client$Link$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6418
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureLinksIsMutable()V

    .line 6419
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->links_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->build()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6421
    return-object p0
.end method

.method public addLinks(ILcom/google/feedreader/extrpc/Client$Link;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6401
    if-nez p2, :cond_8

    .line 6402
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6404
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureLinksIsMutable()V

    .line 6405
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->links_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6407
    return-object p0
.end method

.method public addLinks(Lcom/google/feedreader/extrpc/Client$Link$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 4
    .parameter

    .prologue
    .line 6411
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureLinksIsMutable()V

    .line 6412
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->links_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->build()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6414
    return-object p0
.end method

.method public addLinks(Lcom/google/feedreader/extrpc/Client$Link;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 3
    .parameter

    .prologue
    .line 6391
    if-nez p1, :cond_8

    .line 6392
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6394
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureLinksIsMutable()V

    .line 6395
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->links_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6397
    return-object p0
.end method

.method public addMedia(ILcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6596
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureMediaIsMutable()V

    .line 6597
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->media_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->build()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6599
    return-object p0
.end method

.method public addMedia(ILcom/google/feedreader/extrpc/Client$Item$MediaContent;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6579
    if-nez p2, :cond_8

    .line 6580
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6582
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureMediaIsMutable()V

    .line 6583
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->media_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6585
    return-object p0
.end method

.method public addMedia(Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 4
    .parameter

    .prologue
    .line 6589
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureMediaIsMutable()V

    .line 6590
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->media_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->build()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6592
    return-object p0
.end method

.method public addMedia(Lcom/google/feedreader/extrpc/Client$Item$MediaContent;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 3
    .parameter

    .prologue
    .line 6569
    if-nez p1, :cond_8

    .line 6570
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6572
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureMediaIsMutable()V

    .line 6573
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->media_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6575
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$Item;
    .registers 3

    .prologue
    .line 5744
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v0

    .line 5745
    .local v0, result:Lcom/google/feedreader/extrpc/Client$Item;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 5746
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5748
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5691
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->build()Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$Item;
    .registers 6

    .prologue
    .line 5762
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Item;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$Item;-><init>(Lcom/google/feedreader/extrpc/Client$Item$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 5763
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5764
    const/4 v2, 0x0

    .line 5765
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 5766
    or-int/lit8 v2, v2, 0x1

    .line 5768
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Item;->id_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Item;->access$6902(Lcom/google/feedreader/extrpc/Client$Item;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5769
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 5770
    or-int/lit8 v2, v2, 0x2

    .line 5772
    :cond_1c
    iget-wide v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->timestampUsec_:J

    #setter for: Lcom/google/feedreader/extrpc/Client$Item;->timestampUsec_:J
    invoke-static {v0, v3, v4}, Lcom/google/feedreader/extrpc/Client$Item;->access$7002(Lcom/google/feedreader/extrpc/Client$Item;J)J

    .line 5773
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 5774
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->categories_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->categories_:Ljava/util/List;

    .line 5775
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5777
    :cond_36
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->categories_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$Item;->categories_:Ljava/util/List;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Item;->access$7102(Lcom/google/feedreader/extrpc/Client$Item;Ljava/util/List;)Ljava/util/List;

    .line 5778
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 5779
    or-int/lit8 v2, v2, 0x4

    .line 5781
    :cond_43
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Item;->title_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Item;->access$7202(Lcom/google/feedreader/extrpc/Client$Item;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5782
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 5783
    or-int/lit8 v2, v2, 0x8

    .line 5785
    :cond_50
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->summary_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Item;->summary_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Item;->access$7302(Lcom/google/feedreader/extrpc/Client$Item;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5786
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 5787
    or-int/lit8 v2, v2, 0x10

    .line 5789
    :cond_5d
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->content_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Item;->content_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Item;->access$7402(Lcom/google/feedreader/extrpc/Client$Item;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5790
    and-int/lit8 v3, v1, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6a

    .line 5791
    or-int/lit8 v2, v2, 0x20

    .line 5793
    :cond_6a
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->origin_:Lcom/google/feedreader/extrpc/Client$Item$Origin;

    #setter for: Lcom/google/feedreader/extrpc/Client$Item;->origin_:Lcom/google/feedreader/extrpc/Client$Item$Origin;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Item;->access$7502(Lcom/google/feedreader/extrpc/Client$Item;Lcom/google/feedreader/extrpc/Client$Item$Origin;)Lcom/google/feedreader/extrpc/Client$Item$Origin;

    .line 5794
    and-int/lit16 v3, v1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_77

    .line 5795
    or-int/lit8 v2, v2, 0x40

    .line 5797
    :cond_77
    iget-wide v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->updatedMsec_:J

    #setter for: Lcom/google/feedreader/extrpc/Client$Item;->updatedMsec_:J
    invoke-static {v0, v3, v4}, Lcom/google/feedreader/extrpc/Client$Item;->access$7602(Lcom/google/feedreader/extrpc/Client$Item;J)J

    .line 5798
    and-int/lit16 v1, v1, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_de

    .line 5799
    or-int/lit16 v1, v2, 0x80

    .line 5801
    :goto_84
    iget-wide v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->publishedMsec_:J

    #setter for: Lcom/google/feedreader/extrpc/Client$Item;->publishedMsec_:J
    invoke-static {v0, v2, v3}, Lcom/google/feedreader/extrpc/Client$Item;->access$7702(Lcom/google/feedreader/extrpc/Client$Item;J)J

    .line 5802
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9f

    .line 5803
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->links_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->links_:Ljava/util/List;

    .line 5804
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x201

    iput v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5806
    :cond_9f
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->links_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$Item;->links_:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$Item;->access$7802(Lcom/google/feedreader/extrpc/Client$Item;Ljava/util/List;)Ljava/util/List;

    .line 5807
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_ba

    .line 5808
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->annotations_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->annotations_:Ljava/util/List;

    .line 5809
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5811
    :cond_ba
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->annotations_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$Item;->annotations_:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$Item;->access$7902(Lcom/google/feedreader/extrpc/Client$Item;Ljava/util/List;)Ljava/util/List;

    .line 5812
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_d5

    .line 5813
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->media_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->media_:Ljava/util/List;

    .line 5814
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x801

    iput v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5816
    :cond_d5
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->media_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$Item;->media_:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$Item;->access$8002(Lcom/google/feedreader/extrpc/Client$Item;Ljava/util/List;)Ljava/util/List;

    .line 5817
    #setter for: Lcom/google/feedreader/extrpc/Client$Item;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$Item;->access$8102(Lcom/google/feedreader/extrpc/Client$Item;I)I

    .line 5818
    return-object v0

    :cond_de
    move v1, v2

    goto :goto_84
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5691
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 5707
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 5708
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->id_:Ljava/lang/Object;

    .line 5709
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5710
    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->timestampUsec_:J

    .line 5711
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5712
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->categories_:Ljava/util/List;

    .line 5713
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5714
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->title_:Ljava/lang/Object;

    .line 5715
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5716
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->summary_:Ljava/lang/Object;

    .line 5717
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5718
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->content_:Ljava/lang/Object;

    .line 5719
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5720
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->origin_:Lcom/google/feedreader/extrpc/Client$Item$Origin;

    .line 5721
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5722
    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->updatedMsec_:J

    .line 5723
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5724
    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->publishedMsec_:J

    .line 5725
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5726
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->links_:Ljava/util/List;

    .line 5727
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5728
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->annotations_:Ljava/util/List;

    .line 5729
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5730
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->media_:Ljava/util/List;

    .line 5731
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5732
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5691
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->clear()Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5691
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->clear()Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAnnotations()Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 2

    .prologue
    .line 6520
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->annotations_:Ljava/util/List;

    .line 6521
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6523
    return-object p0
.end method

.method public clearCategories()Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 2

    .prologue
    .line 6149
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->categories_:Ljava/util/List;

    .line 6150
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6152
    return-object p0
.end method

.method public clearContent()Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 2

    .prologue
    .line 6258
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6259
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->content_:Ljava/lang/Object;

    .line 6261
    return-object p0
.end method

.method public clearId()Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 2

    .prologue
    .line 6040
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6041
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->id_:Ljava/lang/Object;

    .line 6043
    return-object p0
.end method

.method public clearLinks()Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 2

    .prologue
    .line 6431
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->links_:Ljava/util/List;

    .line 6432
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6434
    return-object p0
.end method

.method public clearMedia()Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 2

    .prologue
    .line 6609
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->media_:Ljava/util/List;

    .line 6610
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6612
    return-object p0
.end method

.method public clearOrigin()Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 2

    .prologue
    .line 6306
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->origin_:Lcom/google/feedreader/extrpc/Client$Item$Origin;

    .line 6308
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6309
    return-object p0
.end method

.method public clearPublishedMsec()Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 3

    .prologue
    .line 6348
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6349
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->publishedMsec_:J

    .line 6351
    return-object p0
.end method

.method public clearSummary()Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 2

    .prologue
    .line 6222
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6223
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item;->getSummary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->summary_:Ljava/lang/Object;

    .line 6225
    return-object p0
.end method

.method public clearTimestampUsec()Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 3

    .prologue
    .line 6066
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6067
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->timestampUsec_:J

    .line 6069
    return-object p0
.end method

.method public clearTitle()Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 2

    .prologue
    .line 6186
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6187
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->title_:Ljava/lang/Object;

    .line 6189
    return-object p0
.end method

.method public clearUpdatedMsec()Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 3

    .prologue
    .line 6327
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6328
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->updatedMsec_:J

    .line 6330
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 3

    .prologue
    .line 5736
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->create()Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Item;)Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 5691
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5691
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5691
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Item$Builder;

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
    .line 5691
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations(I)Lcom/google/feedreader/extrpc/Client$Item$Annotation;
    .registers 3
    .parameter "index"

    .prologue
    .line 6460
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->annotations_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    return-object p0
.end method

.method public getAnnotationsCount()I
    .registers 2

    .prologue
    .line 6457
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->annotations_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAnnotationsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Item$Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6454
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->annotations_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCategories(I)Lcom/google/feedreader/extrpc/Client$Item$Category;
    .registers 3
    .parameter "index"

    .prologue
    .line 6089
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$Category;

    return-object p0
.end method

.method public getCategoriesCount()I
    .registers 2

    .prologue
    .line 6086
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->categories_:Ljava/util/List;

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
            "Lcom/google/feedreader/extrpc/Client$Item$Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6083
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->categories_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 4

    .prologue
    .line 6239
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->content_:Ljava/lang/Object;

    .line 6240
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 6241
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6242
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->content_:Ljava/lang/Object;

    move-object v2, v1

    .line 6245
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item;
    .registers 2

    .prologue
    .line 5740
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 5691
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5691
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 6021
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->id_:Ljava/lang/Object;

    .line 6022
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 6023
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6024
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->id_:Ljava/lang/Object;

    move-object v2, v1

    .line 6027
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getLinks(I)Lcom/google/feedreader/extrpc/Client$Link;
    .registers 3
    .parameter "index"

    .prologue
    .line 6371
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->links_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Link;

    return-object p0
.end method

.method public getLinksCount()I
    .registers 2

    .prologue
    .line 6368
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->links_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLinksList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6365
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->links_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMedia(I)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    .registers 3
    .parameter "index"

    .prologue
    .line 6549
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->media_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    return-object p0
.end method

.method public getMediaCount()I
    .registers 2

    .prologue
    .line 6546
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->media_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMediaList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Item$MediaContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6543
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->media_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Lcom/google/feedreader/extrpc/Client$Item$Origin;
    .registers 2

    .prologue
    .line 6275
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->origin_:Lcom/google/feedreader/extrpc/Client$Item$Origin;

    return-object v0
.end method

.method public getPublishedMsec()J
    .registers 3

    .prologue
    .line 6339
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->publishedMsec_:J

    return-wide v0
.end method

.method public getSummary()Ljava/lang/String;
    .registers 4

    .prologue
    .line 6203
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->summary_:Ljava/lang/Object;

    .line 6204
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 6205
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6206
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->summary_:Ljava/lang/Object;

    move-object v2, v1

    .line 6209
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getTimestampUsec()J
    .registers 3

    .prologue
    .line 6057
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->timestampUsec_:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 6167
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->title_:Ljava/lang/Object;

    .line 6168
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 6169
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6170
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->title_:Ljava/lang/Object;

    move-object v2, v1

    .line 6173
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getUpdatedMsec()J
    .registers 3

    .prologue
    .line 6318
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->updatedMsec_:J

    return-wide v0
.end method

.method public hasContent()Z
    .registers 3

    .prologue
    .line 6236
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 6018
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasOrigin()Z
    .registers 3

    .prologue
    .line 6272
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

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

.method public hasPublishedMsec()Z
    .registers 3

    .prologue
    .line 6336
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSummary()Z
    .registers 3

    .prologue
    .line 6200
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

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

.method public hasTimestampUsec()Z
    .registers 3

    .prologue
    .line 6054
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

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

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 6164
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

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

.method public hasUpdatedMsec()Z
    .registers 3

    .prologue
    .line 6315
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 5891
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->hasId()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    .line 5921
    :goto_8
    return v1

    .line 5895
    :cond_9
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->hasOrigin()Z

    move-result v1

    if-nez v1, :cond_11

    move v1, v2

    .line 5897
    goto :goto_8

    .line 5899
    :cond_11
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->getOrigin()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1d

    move v1, v2

    .line 5901
    goto :goto_8

    .line 5903
    :cond_1d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1e
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->getLinksCount()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 5904
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->getLinks(I)Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$Link;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_30

    move v1, v2

    .line 5906
    goto :goto_8

    .line 5903
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 5909
    :cond_33
    const/4 v0, 0x0

    :goto_34
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->getAnnotationsCount()I

    move-result v1

    if-ge v0, v1, :cond_49

    .line 5910
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->getAnnotations(I)Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_46

    move v1, v2

    .line 5912
    goto :goto_8

    .line 5909
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 5915
    :cond_49
    const/4 v0, 0x0

    :goto_4a
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->getMediaCount()I

    move-result v1

    if-ge v0, v1, :cond_5f

    .line 5916
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->getMedia(I)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_5c

    move v1, v2

    .line 5918
    goto :goto_8

    .line 5915
    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 5921
    :cond_5f
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$Item;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 4
    .parameter

    .prologue
    .line 5822
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 5887
    :goto_7
    return-object v0

    .line 5823
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item;->hasId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5824
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Builder;

    .line 5826
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item;->hasTimestampUsec()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 5827
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item;->getTimestampUsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->setTimestampUsec(J)Lcom/google/feedreader/extrpc/Client$Item$Builder;

    .line 5829
    :cond_22
    #getter for: Lcom/google/feedreader/extrpc/Client$Item;->categories_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Item;->access$7100(Lcom/google/feedreader/extrpc/Client$Item;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 5830
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 5831
    #getter for: Lcom/google/feedreader/extrpc/Client$Item;->categories_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Item;->access$7100(Lcom/google/feedreader/extrpc/Client$Item;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->categories_:Ljava/util/List;

    .line 5832
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5839
    :cond_40
    :goto_40
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 5840
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Builder;

    .line 5842
    :cond_4d
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item;->hasSummary()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 5843
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->setSummary(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Builder;

    .line 5845
    :cond_5a
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 5846
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->setContent(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Builder;

    .line 5848
    :cond_67
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item;->hasOrigin()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 5849
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item;->getOrigin()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->mergeOrigin(Lcom/google/feedreader/extrpc/Client$Item$Origin;)Lcom/google/feedreader/extrpc/Client$Item$Builder;

    .line 5851
    :cond_74
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item;->hasUpdatedMsec()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 5852
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item;->getUpdatedMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->setUpdatedMsec(J)Lcom/google/feedreader/extrpc/Client$Item$Builder;

    .line 5854
    :cond_81
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item;->hasPublishedMsec()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 5855
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item;->getPublishedMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->setPublishedMsec(J)Lcom/google/feedreader/extrpc/Client$Item$Builder;

    .line 5857
    :cond_8e
    #getter for: Lcom/google/feedreader/extrpc/Client$Item;->links_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Item;->access$7800(Lcom/google/feedreader/extrpc/Client$Item;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ac

    .line 5858
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->links_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 5859
    #getter for: Lcom/google/feedreader/extrpc/Client$Item;->links_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Item;->access$7800(Lcom/google/feedreader/extrpc/Client$Item;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->links_:Ljava/util/List;

    .line 5860
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5867
    :cond_ac
    :goto_ac
    #getter for: Lcom/google/feedreader/extrpc/Client$Item;->annotations_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Item;->access$7900(Lcom/google/feedreader/extrpc/Client$Item;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ca

    .line 5868
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->annotations_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_106

    .line 5869
    #getter for: Lcom/google/feedreader/extrpc/Client$Item;->annotations_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Item;->access$7900(Lcom/google/feedreader/extrpc/Client$Item;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->annotations_:Ljava/util/List;

    .line 5870
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5877
    :cond_ca
    :goto_ca
    #getter for: Lcom/google/feedreader/extrpc/Client$Item;->media_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Item;->access$8000(Lcom/google/feedreader/extrpc/Client$Item;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e8

    .line 5878
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->media_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_113

    .line 5879
    #getter for: Lcom/google/feedreader/extrpc/Client$Item;->media_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Item;->access$8000(Lcom/google/feedreader/extrpc/Client$Item;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->media_:Ljava/util/List;

    .line 5880
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    :cond_e8
    :goto_e8
    move-object v0, p0

    .line 5887
    goto/16 :goto_7

    .line 5834
    :cond_eb
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureCategoriesIsMutable()V

    .line 5835
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->categories_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$Item;->categories_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Item;->access$7100(Lcom/google/feedreader/extrpc/Client$Item;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_40

    .line 5862
    :cond_f9
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureLinksIsMutable()V

    .line 5863
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->links_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$Item;->links_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Item;->access$7800(Lcom/google/feedreader/extrpc/Client$Item;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_ac

    .line 5872
    :cond_106
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureAnnotationsIsMutable()V

    .line 5873
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->annotations_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$Item;->annotations_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Item;->access$7900(Lcom/google/feedreader/extrpc/Client$Item;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_ca

    .line 5882
    :cond_113
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureMediaIsMutable()V

    .line 5883
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->media_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$Item;->media_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$Item;->access$8000(Lcom/google/feedreader/extrpc/Client$Item;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_e8
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5929
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 5930
    sparse-switch v0, :sswitch_data_ca

    .line 5935
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 5937
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 5933
    goto :goto_e

    .line 5942
    :sswitch_11
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5943
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 5947
    :sswitch_1e
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;

    move-result-object v0

    .line 5948
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5949
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->addCategories(Lcom/google/feedreader/extrpc/Client$Item$Category;)Lcom/google/feedreader/extrpc/Client$Item$Builder;

    goto :goto_0

    .line 5953
    :sswitch_2d
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5954
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 5958
    :sswitch_3a
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5959
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->summary_:Ljava/lang/Object;

    goto :goto_0

    .line 5963
    :sswitch_47
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5964
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->content_:Ljava/lang/Object;

    goto :goto_0

    .line 5968
    :sswitch_54
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    .line 5969
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->hasOrigin()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 5970
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->getOrigin()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Item$Origin;)Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    .line 5972
    :cond_65
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5973
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->setOrigin(Lcom/google/feedreader/extrpc/Client$Item$Origin;)Lcom/google/feedreader/extrpc/Client$Item$Builder;

    goto :goto_0

    .line 5977
    :sswitch_70
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5978
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->updatedMsec_:J

    goto :goto_0

    .line 5982
    :sswitch_7d
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 5983
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->publishedMsec_:J

    goto/16 :goto_0

    .line 5987
    :sswitch_8b
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link;->newBuilder()Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    .line 5988
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5989
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->addLinks(Lcom/google/feedreader/extrpc/Client$Link;)Lcom/google/feedreader/extrpc/Client$Item$Builder;

    goto/16 :goto_0

    .line 5993
    :sswitch_9b
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Annotation;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;

    move-result-object v0

    .line 5994
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5995
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->addAnnotations(Lcom/google/feedreader/extrpc/Client$Item$Annotation;)Lcom/google/feedreader/extrpc/Client$Item$Builder;

    goto/16 :goto_0

    .line 5999
    :sswitch_ab
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    .line 6000
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 6001
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->addMedia(Lcom/google/feedreader/extrpc/Client$Item$MediaContent;)Lcom/google/feedreader/extrpc/Client$Item$Builder;

    goto/16 :goto_0

    .line 6005
    :sswitch_bb
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6006
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->timestampUsec_:J

    goto/16 :goto_0

    .line 5930
    nop

    :sswitch_data_ca
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_11
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_2d
        0x2a -> :sswitch_3a
        0x32 -> :sswitch_47
        0x3a -> :sswitch_54
        0x40 -> :sswitch_70
        0x48 -> :sswitch_7d
        0x52 -> :sswitch_8b
        0x5a -> :sswitch_9b
        0x62 -> :sswitch_ab
        0x68 -> :sswitch_bb
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
    .line 5691
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 5691
    check-cast p1, Lcom/google/feedreader/extrpc/Client$Item;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Item;)Lcom/google/feedreader/extrpc/Client$Item$Builder;

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
    .line 5691
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeOrigin(Lcom/google/feedreader/extrpc/Client$Item$Origin;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 6294
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->origin_:Lcom/google/feedreader/extrpc/Client$Item$Origin;

    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 6296
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->origin_:Lcom/google/feedreader/extrpc/Client$Item$Origin;

    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->newBuilder(Lcom/google/feedreader/extrpc/Client$Item$Origin;)Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Item$Origin;)Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->origin_:Lcom/google/feedreader/extrpc/Client$Item$Origin;

    .line 6302
    :goto_20
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6303
    return-object p0

    .line 6299
    :cond_27
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->origin_:Lcom/google/feedreader/extrpc/Client$Item$Origin;

    goto :goto_20
.end method

.method public removeAnnotations(I)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 3
    .parameter

    .prologue
    .line 6526
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureAnnotationsIsMutable()V

    .line 6527
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->annotations_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6529
    return-object p0
.end method

.method public removeCategories(I)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 3
    .parameter

    .prologue
    .line 6155
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureCategoriesIsMutable()V

    .line 6156
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6158
    return-object p0
.end method

.method public removeLinks(I)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 3
    .parameter

    .prologue
    .line 6437
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureLinksIsMutable()V

    .line 6438
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->links_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6440
    return-object p0
.end method

.method public removeMedia(I)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 3
    .parameter

    .prologue
    .line 6615
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureMediaIsMutable()V

    .line 6616
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->media_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6618
    return-object p0
.end method

.method public setAnnotations(ILcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 6474
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureAnnotationsIsMutable()V

    .line 6475
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->annotations_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$Item$Annotation$Builder;->build()Lcom/google/feedreader/extrpc/Client$Item$Annotation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6477
    return-object p0
.end method

.method public setAnnotations(ILcom/google/feedreader/extrpc/Client$Item$Annotation;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 6464
    if-nez p2, :cond_8

    .line 6465
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6467
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureAnnotationsIsMutable()V

    .line 6468
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->annotations_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6470
    return-object p0
.end method

.method public setCategories(ILcom/google/feedreader/extrpc/Client$Item$Category$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 6103
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureCategoriesIsMutable()V

    .line 6104
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->categories_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$Item$Category$Builder;->build()Lcom/google/feedreader/extrpc/Client$Item$Category;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6106
    return-object p0
.end method

.method public setCategories(ILcom/google/feedreader/extrpc/Client$Item$Category;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 6093
    if-nez p2, :cond_8

    .line 6094
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6096
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureCategoriesIsMutable()V

    .line 6097
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6099
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6249
    if-nez p1, :cond_8

    .line 6250
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6252
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6253
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->content_:Ljava/lang/Object;

    .line 6255
    return-object p0
.end method

.method setContent(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 6264
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6265
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->content_:Ljava/lang/Object;

    .line 6267
    return-void
.end method

.method public setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6031
    if-nez p1, :cond_8

    .line 6032
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6034
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6035
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->id_:Ljava/lang/Object;

    .line 6037
    return-object p0
.end method

.method setId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 6046
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6047
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->id_:Ljava/lang/Object;

    .line 6049
    return-void
.end method

.method public setLinks(ILcom/google/feedreader/extrpc/Client$Link$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 6385
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureLinksIsMutable()V

    .line 6386
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->links_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->build()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6388
    return-object p0
.end method

.method public setLinks(ILcom/google/feedreader/extrpc/Client$Link;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 6375
    if-nez p2, :cond_8

    .line 6376
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6378
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureLinksIsMutable()V

    .line 6379
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->links_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6381
    return-object p0
.end method

.method public setMedia(ILcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 6563
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureMediaIsMutable()V

    .line 6564
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->media_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->build()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6566
    return-object p0
.end method

.method public setMedia(ILcom/google/feedreader/extrpc/Client$Item$MediaContent;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 6553
    if-nez p2, :cond_8

    .line 6554
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6556
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->ensureMediaIsMutable()V

    .line 6557
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->media_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6559
    return-object p0
.end method

.method public setOrigin(Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 6288
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->build()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->origin_:Lcom/google/feedreader/extrpc/Client$Item$Origin;

    .line 6290
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6291
    return-object p0
.end method

.method public setOrigin(Lcom/google/feedreader/extrpc/Client$Item$Origin;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6278
    if-nez p1, :cond_8

    .line 6279
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6281
    :cond_8
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->origin_:Lcom/google/feedreader/extrpc/Client$Item$Origin;

    .line 6283
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6284
    return-object p0
.end method

.method public setPublishedMsec(J)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 6342
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6343
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->publishedMsec_:J

    .line 6345
    return-object p0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6213
    if-nez p1, :cond_8

    .line 6214
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6216
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6217
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->summary_:Ljava/lang/Object;

    .line 6219
    return-object p0
.end method

.method setSummary(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 6228
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6229
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->summary_:Ljava/lang/Object;

    .line 6231
    return-void
.end method

.method public setTimestampUsec(J)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 6060
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6061
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->timestampUsec_:J

    .line 6063
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6177
    if-nez p1, :cond_8

    .line 6178
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6180
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6181
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->title_:Ljava/lang/Object;

    .line 6183
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 6192
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6193
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->title_:Ljava/lang/Object;

    .line 6195
    return-void
.end method

.method public setUpdatedMsec(J)Lcom/google/feedreader/extrpc/Client$Item$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 6321
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->bitField0_:I

    .line 6322
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Builder;->updatedMsec_:J

    .line 6324
    return-object p0
.end method
