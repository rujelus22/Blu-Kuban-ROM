.class public final Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$OverviewContent$StreamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;",
        "Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$OverviewContent$StreamOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private image_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

.field private items_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;",
            ">;"
        }
    .end annotation
.end field

.field private titleText_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 29034
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 29205
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->id_:Ljava/lang/Object;

    .line 29241
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->titleText_:Ljava/lang/Object;

    .line 29277
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->items_:Ljava/util/List;

    .line 29366
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->image_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    .line 29035
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->maybeForceBuilderInitialization()V

    .line 29036
    return-void
.end method

.method static synthetic access$36200(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 29029
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$36300()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 1

    .prologue
    .line 29029
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->create()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 29075
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    .line 29076
    .local v0, result:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 29077
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 29080
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 1

    .prologue
    .line 29041
    new-instance v0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;-><init>()V

    return-object v0
.end method

.method private ensureItemsIsMutable()V
    .registers 3

    .prologue
    .line 29280
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 29281
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->items_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->items_:Ljava/util/List;

    .line 29282
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    .line 29284
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 29039
    return-void
.end method


# virtual methods
.method public addAllItems(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;"
        }
    .end annotation

    .prologue
    .line 29347
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->ensureItemsIsMutable()V

    .line 29348
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->items_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 29350
    return-object p0
.end method

.method public addItems(ILcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 29340
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->ensureItemsIsMutable()V

    .line 29341
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->items_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->build()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29343
    return-object p0
.end method

.method public addItems(ILcom/google/feedreader/extrpc/Client$OverviewContent$Item;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 29323
    if-nez p2, :cond_8

    .line 29324
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29326
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->ensureItemsIsMutable()V

    .line 29327
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->items_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29329
    return-object p0
.end method

.method public addItems(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 4
    .parameter

    .prologue
    .line 29333
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->ensureItemsIsMutable()V

    .line 29334
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->items_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->build()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29336
    return-object p0
.end method

.method public addItems(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 3
    .parameter

    .prologue
    .line 29313
    if-nez p1, :cond_8

    .line 29314
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29316
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->ensureItemsIsMutable()V

    .line 29317
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->items_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29319
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 3

    .prologue
    .line 29066
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    .line 29067
    .local v0, result:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 29068
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 29070
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29029
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->build()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 6

    .prologue
    .line 29084
    new-instance v0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;-><init>(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 29085
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    .line 29086
    const/4 v2, 0x0

    .line 29087
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 29088
    or-int/lit8 v2, v2, 0x1

    .line 29090
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->id_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->access$36502(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29091
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 29092
    or-int/lit8 v2, v2, 0x2

    .line 29094
    :cond_1c
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->titleText_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->titleText_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->access$36602(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29095
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 29096
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->items_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->items_:Ljava/util/List;

    .line 29097
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    .line 29099
    :cond_36
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->items_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->items_:Ljava/util/List;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->access$36702(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;Ljava/util/List;)Ljava/util/List;

    .line 29100
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4c

    .line 29101
    or-int/lit8 v1, v2, 0x4

    .line 29103
    :goto_43
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->image_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    #setter for: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->image_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->access$36802(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    .line 29104
    #setter for: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->access$36902(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;I)I

    .line 29105
    return-object v0

    :cond_4c
    move v1, v2

    goto :goto_43
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29029
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 2

    .prologue
    .line 29045
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 29046
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->id_:Ljava/lang/Object;

    .line 29047
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    .line 29048
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->titleText_:Ljava/lang/Object;

    .line 29049
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    .line 29050
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->items_:Ljava/util/List;

    .line 29051
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    .line 29052
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->image_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    .line 29053
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    .line 29054
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 29029
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->clear()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29029
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->clear()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 2

    .prologue
    .line 29229
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    .line 29230
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->id_:Ljava/lang/Object;

    .line 29232
    return-object p0
.end method

.method public clearImage()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 2

    .prologue
    .line 29402
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->image_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    .line 29404
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    .line 29405
    return-object p0
.end method

.method public clearItems()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 2

    .prologue
    .line 29353
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->items_:Ljava/util/List;

    .line 29354
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    .line 29356
    return-object p0
.end method

.method public clearTitleText()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 2

    .prologue
    .line 29265
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    .line 29266
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getTitleText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->titleText_:Ljava/lang/Object;

    .line 29268
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 3

    .prologue
    .line 29058
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->create()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 29029
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->clone()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 29029
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->clone()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29029
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->clone()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

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
    .line 29029
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->clone()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
    .registers 2

    .prologue
    .line 29062
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 29029
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29029
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 29210
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->id_:Ljava/lang/Object;

    .line 29211
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 29212
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 29213
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->id_:Ljava/lang/Object;

    move-object v2, v1

    .line 29216
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

.method public getImage()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
    .registers 2

    .prologue
    .line 29371
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->image_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    return-object v0
.end method

.method public getItems(I)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    .registers 3
    .parameter "index"

    .prologue
    .line 29293
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->items_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    return-object p0
.end method

.method public getItemsCount()I
    .registers 2

    .prologue
    .line 29290
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->items_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29287
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->items_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTitleText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 29246
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->titleText_:Ljava/lang/Object;

    .line 29247
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 29248
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 29249
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->titleText_:Ljava/lang/Object;

    move-object v2, v1

    .line 29252
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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 29207
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasImage()Z
    .registers 3

    .prologue
    .line 29368
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

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

.method public hasTitleText()Z
    .registers 3

    .prologue
    .line 29243
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 29133
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->hasId()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    .line 29153
    :goto_8
    return v1

    .line 29137
    :cond_9
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->hasTitleText()Z

    move-result v1

    if-nez v1, :cond_11

    move v1, v2

    .line 29139
    goto :goto_8

    .line 29141
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->getItemsCount()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 29142
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->getItems(I)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_24

    move v1, v2

    .line 29144
    goto :goto_8

    .line 29141
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 29147
    :cond_27
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 29148
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->getImage()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_39

    move v1, v2

    .line 29150
    goto :goto_8

    .line 29153
    :cond_39
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 4
    .parameter

    .prologue
    .line 29109
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 29129
    :goto_7
    return-object v0

    .line 29110
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->hasId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 29111
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    .line 29113
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->hasTitleText()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 29114
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getTitleText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->setTitleText(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    .line 29116
    :cond_22
    #getter for: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->items_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->access$36700(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 29117
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->items_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 29118
    #getter for: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->items_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->access$36700(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->items_:Ljava/util/List;

    .line 29119
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    .line 29126
    :cond_40
    :goto_40
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 29127
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->getImage()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeImage(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    :cond_4d
    move-object v0, p0

    .line 29129
    goto :goto_7

    .line 29121
    :cond_4f
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->ensureItemsIsMutable()V

    .line 29122
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->items_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->items_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;->access$36700(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_40
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29161
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 29162
    sparse-switch v0, :sswitch_data_56

    .line 29167
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 29169
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 29165
    goto :goto_e

    .line 29174
    :sswitch_11
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    .line 29175
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 29179
    :sswitch_1e
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    .line 29180
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->titleText_:Ljava/lang/Object;

    goto :goto_0

    .line 29184
    :sswitch_2b
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    .line 29185
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 29186
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->addItems(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    goto :goto_0

    .line 29190
    :sswitch_3a
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    .line 29191
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 29192
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->getImage()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    .line 29194
    :cond_4b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 29195
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->setImage(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    goto :goto_0

    .line 29162
    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_11
        0x12 -> :sswitch_1e
        0x1a -> :sswitch_2b
        0x22 -> :sswitch_3a
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
    .line 29029
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 29029
    check-cast p1, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

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
    .line 29029
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeImage(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 29390
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->image_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 29392
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->image_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;->newBuilder(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->image_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    .line 29398
    :goto_20
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    .line 29399
    return-object p0

    .line 29395
    :cond_27
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->image_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    goto :goto_20
.end method

.method public removeItems(I)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 3
    .parameter

    .prologue
    .line 29359
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->ensureItemsIsMutable()V

    .line 29360
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->items_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 29362
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29220
    if-nez p1, :cond_8

    .line 29221
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29223
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    .line 29224
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->id_:Ljava/lang/Object;

    .line 29226
    return-object p0
.end method

.method setId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 29235
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    .line 29236
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->id_:Ljava/lang/Object;

    .line 29238
    return-void
.end method

.method public setImage(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 29384
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image$Builder;->build()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->image_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    .line 29386
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    .line 29387
    return-object p0
.end method

.method public setImage(Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29374
    if-nez p1, :cond_8

    .line 29375
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29377
    :cond_8
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->image_:Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;

    .line 29379
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    .line 29380
    return-object p0
.end method

.method public setItems(ILcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 29307
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->ensureItemsIsMutable()V

    .line 29308
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->items_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->build()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29310
    return-object p0
.end method

.method public setItems(ILcom/google/feedreader/extrpc/Client$OverviewContent$Item;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 29297
    if-nez p2, :cond_8

    .line 29298
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29300
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->ensureItemsIsMutable()V

    .line 29301
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->items_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29303
    return-object p0
.end method

.method public setTitleText(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29256
    if-nez p1, :cond_8

    .line 29257
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29259
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    .line 29260
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->titleText_:Ljava/lang/Object;

    .line 29262
    return-object p0
.end method

.method setTitleText(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 29271
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->bitField0_:I

    .line 29272
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Builder;->titleText_:Ljava/lang/Object;

    .line 29274
    return-void
.end method
