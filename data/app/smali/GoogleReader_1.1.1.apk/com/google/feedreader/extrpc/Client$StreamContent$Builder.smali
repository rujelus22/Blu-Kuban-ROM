.class public final Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$StreamContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$StreamContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$StreamContent;",
        "Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$StreamContentOrBuilder;"
    }
.end annotation


# instance fields
.field private author_:Ljava/lang/Object;

.field private bitField0_:I

.field private continuation_:Ljava/lang/Object;

.field private description_:Ljava/lang/Object;

.field private direction_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private items_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Item;",
            ">;"
        }
    .end annotation
.end field

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

.field private publishedMsec_:J

.field private title_:Ljava/lang/Object;

.field private updatedMsec_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 7164
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7424
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->id_:Ljava/lang/Object;

    .line 7460
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->title_:Ljava/lang/Object;

    .line 7496
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->author_:Ljava/lang/Object;

    .line 7532
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->continuation_:Ljava/lang/Object;

    .line 7568
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->items_:Ljava/util/List;

    .line 7657
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->links_:Ljava/util/List;

    .line 7788
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->description_:Ljava/lang/Object;

    .line 7824
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->direction_:Ljava/lang/Object;

    .line 7165
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->maybeForceBuilderInitialization()V

    .line 7166
    return-void
.end method

.method static synthetic access$8200(Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamContent;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7159
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8300()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 1

    .prologue
    .line 7159
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$StreamContent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7217
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    .line 7218
    .local v0, result:Lcom/google/feedreader/extrpc/Client$StreamContent;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 7219
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 7222
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 1

    .prologue
    .line 7171
    new-instance v0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;-><init>()V

    return-object v0
.end method

.method private ensureItemsIsMutable()V
    .registers 3

    .prologue
    .line 7571
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 7572
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->items_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->items_:Ljava/util/List;

    .line 7573
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7575
    :cond_17
    return-void
.end method

.method private ensureLinksIsMutable()V
    .registers 3

    .prologue
    .line 7660
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_17

    .line 7661
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->links_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->links_:Ljava/util/List;

    .line 7662
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7664
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 7169
    return-void
.end method


# virtual methods
.method public addAllItems(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$Item;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;"
        }
    .end annotation

    .prologue
    .line 7638
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$Item;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->ensureItemsIsMutable()V

    .line 7639
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->items_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7641
    return-object p0
.end method

.method public addAllLinks(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$Link;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;"
        }
    .end annotation

    .prologue
    .line 7727
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$Link;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->ensureLinksIsMutable()V

    .line 7728
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->links_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7730
    return-object p0
.end method

.method public addItems(ILcom/google/feedreader/extrpc/Client$Item$Builder;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 7631
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->ensureItemsIsMutable()V

    .line 7632
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->items_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->build()Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7634
    return-object p0
.end method

.method public addItems(ILcom/google/feedreader/extrpc/Client$Item;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 7614
    if-nez p2, :cond_8

    .line 7615
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7617
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->ensureItemsIsMutable()V

    .line 7618
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->items_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7620
    return-object p0
.end method

.method public addItems(Lcom/google/feedreader/extrpc/Client$Item$Builder;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 4
    .parameter

    .prologue
    .line 7624
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->ensureItemsIsMutable()V

    .line 7625
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->items_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->build()Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7627
    return-object p0
.end method

.method public addItems(Lcom/google/feedreader/extrpc/Client$Item;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 3
    .parameter

    .prologue
    .line 7604
    if-nez p1, :cond_8

    .line 7605
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7607
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->ensureItemsIsMutable()V

    .line 7608
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->items_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7610
    return-object p0
.end method

.method public addLinks(ILcom/google/feedreader/extrpc/Client$Link$Builder;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 7720
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->ensureLinksIsMutable()V

    .line 7721
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->links_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->build()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7723
    return-object p0
.end method

.method public addLinks(ILcom/google/feedreader/extrpc/Client$Link;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 7703
    if-nez p2, :cond_8

    .line 7704
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7706
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->ensureLinksIsMutable()V

    .line 7707
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->links_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7709
    return-object p0
.end method

.method public addLinks(Lcom/google/feedreader/extrpc/Client$Link$Builder;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 4
    .parameter

    .prologue
    .line 7713
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->ensureLinksIsMutable()V

    .line 7714
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->links_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->build()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7716
    return-object p0
.end method

.method public addLinks(Lcom/google/feedreader/extrpc/Client$Link;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 3
    .parameter

    .prologue
    .line 7693
    if-nez p1, :cond_8

    .line 7694
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7696
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->ensureLinksIsMutable()V

    .line 7697
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->links_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7699
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$StreamContent;
    .registers 3

    .prologue
    .line 7208
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    .line 7209
    .local v0, result:Lcom/google/feedreader/extrpc/Client$StreamContent;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 7210
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 7212
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7159
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->build()Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$StreamContent;
    .registers 6

    .prologue
    .line 7226
    new-instance v0, Lcom/google/feedreader/extrpc/Client$StreamContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$StreamContent;-><init>(Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 7227
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7228
    const/4 v2, 0x0

    .line 7229
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 7230
    or-int/lit8 v2, v2, 0x1

    .line 7232
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamContent;->id_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$StreamContent;->access$8502(Lcom/google/feedreader/extrpc/Client$StreamContent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7233
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 7234
    or-int/lit8 v2, v2, 0x2

    .line 7236
    :cond_1c
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamContent;->title_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$StreamContent;->access$8602(Lcom/google/feedreader/extrpc/Client$StreamContent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7237
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 7238
    or-int/lit8 v2, v2, 0x4

    .line 7240
    :cond_28
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->author_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamContent;->author_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$StreamContent;->access$8702(Lcom/google/feedreader/extrpc/Client$StreamContent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7241
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 7242
    or-int/lit8 v2, v2, 0x8

    .line 7244
    :cond_35
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->continuation_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamContent;->continuation_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$StreamContent;->access$8802(Lcom/google/feedreader/extrpc/Client$StreamContent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7245
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 7246
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->items_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->items_:Ljava/util/List;

    .line 7247
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7249
    :cond_50
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->items_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamContent;->items_:Ljava/util/List;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$StreamContent;->access$8902(Lcom/google/feedreader/extrpc/Client$StreamContent;Ljava/util/List;)Ljava/util/List;

    .line 7250
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6b

    .line 7251
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->links_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->links_:Ljava/util/List;

    .line 7252
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7254
    :cond_6b
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->links_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamContent;->links_:Ljava/util/List;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$StreamContent;->access$9002(Lcom/google/feedreader/extrpc/Client$StreamContent;Ljava/util/List;)Ljava/util/List;

    .line 7255
    and-int/lit8 v3, v1, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_78

    .line 7256
    or-int/lit8 v2, v2, 0x10

    .line 7258
    :cond_78
    iget-wide v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->updatedMsec_:J

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamContent;->updatedMsec_:J
    invoke-static {v0, v3, v4}, Lcom/google/feedreader/extrpc/Client$StreamContent;->access$9102(Lcom/google/feedreader/extrpc/Client$StreamContent;J)J

    .line 7259
    and-int/lit16 v3, v1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_85

    .line 7260
    or-int/lit8 v2, v2, 0x20

    .line 7262
    :cond_85
    iget-wide v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->publishedMsec_:J

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamContent;->publishedMsec_:J
    invoke-static {v0, v3, v4}, Lcom/google/feedreader/extrpc/Client$StreamContent;->access$9202(Lcom/google/feedreader/extrpc/Client$StreamContent;J)J

    .line 7263
    and-int/lit16 v3, v1, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_92

    .line 7264
    or-int/lit8 v2, v2, 0x40

    .line 7266
    :cond_92
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->description_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamContent;->description_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$StreamContent;->access$9302(Lcom/google/feedreader/extrpc/Client$StreamContent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7267
    and-int/lit16 v1, v1, 0x200

    const/16 v3, 0x200

    if-ne v1, v3, :cond_a8

    .line 7268
    or-int/lit16 v1, v2, 0x80

    .line 7270
    :goto_9f
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->direction_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$StreamContent;->direction_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$StreamContent;->access$9402(Lcom/google/feedreader/extrpc/Client$StreamContent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7271
    #setter for: Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamContent;->access$9502(Lcom/google/feedreader/extrpc/Client$StreamContent;I)I

    .line 7272
    return-object v0

    :cond_a8
    move v1, v2

    goto :goto_9f
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7159
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 7175
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 7176
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->id_:Ljava/lang/Object;

    .line 7177
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7178
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->title_:Ljava/lang/Object;

    .line 7179
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7180
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->author_:Ljava/lang/Object;

    .line 7181
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7182
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->continuation_:Ljava/lang/Object;

    .line 7183
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7184
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->items_:Ljava/util/List;

    .line 7185
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7186
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->links_:Ljava/util/List;

    .line 7187
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7188
    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->updatedMsec_:J

    .line 7189
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7190
    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->publishedMsec_:J

    .line 7191
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7192
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->description_:Ljava/lang/Object;

    .line 7193
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7194
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->direction_:Ljava/lang/Object;

    .line 7195
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7196
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7159
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->clear()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7159
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->clear()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAuthor()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 2

    .prologue
    .line 7520
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7521
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getAuthor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->author_:Ljava/lang/Object;

    .line 7523
    return-object p0
.end method

.method public clearContinuation()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 2

    .prologue
    .line 7556
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7557
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getContinuation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->continuation_:Ljava/lang/Object;

    .line 7559
    return-object p0
.end method

.method public clearDescription()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 2

    .prologue
    .line 7812
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7813
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->description_:Ljava/lang/Object;

    .line 7815
    return-object p0
.end method

.method public clearDirection()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 2

    .prologue
    .line 7848
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7849
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getDirection()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->direction_:Ljava/lang/Object;

    .line 7851
    return-object p0
.end method

.method public clearId()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 2

    .prologue
    .line 7448
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7449
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->id_:Ljava/lang/Object;

    .line 7451
    return-object p0
.end method

.method public clearItems()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 2

    .prologue
    .line 7644
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->items_:Ljava/util/List;

    .line 7645
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7647
    return-object p0
.end method

.method public clearLinks()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 2

    .prologue
    .line 7733
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->links_:Ljava/util/List;

    .line 7734
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7736
    return-object p0
.end method

.method public clearPublishedMsec()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 3

    .prologue
    .line 7781
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7782
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->publishedMsec_:J

    .line 7784
    return-object p0
.end method

.method public clearTitle()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 2

    .prologue
    .line 7484
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7485
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->title_:Ljava/lang/Object;

    .line 7487
    return-object p0
.end method

.method public clearUpdatedMsec()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 3

    .prologue
    .line 7760
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7761
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->updatedMsec_:J

    .line 7763
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 3

    .prologue
    .line 7200
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamContent;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 7159
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7159
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7159
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

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
    .line 7159
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .registers 4

    .prologue
    .line 7501
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->author_:Ljava/lang/Object;

    .line 7502
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 7503
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7504
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->author_:Ljava/lang/Object;

    move-object v2, v1

    .line 7507
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

.method public getContinuation()Ljava/lang/String;
    .registers 4

    .prologue
    .line 7537
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->continuation_:Ljava/lang/Object;

    .line 7538
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 7539
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7540
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->continuation_:Ljava/lang/Object;

    move-object v2, v1

    .line 7543
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

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamContent;
    .registers 2

    .prologue
    .line 7204
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 7159
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7159
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 4

    .prologue
    .line 7793
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->description_:Ljava/lang/Object;

    .line 7794
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 7795
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7796
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->description_:Ljava/lang/Object;

    move-object v2, v1

    .line 7799
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

.method public getDirection()Ljava/lang/String;
    .registers 4

    .prologue
    .line 7829
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->direction_:Ljava/lang/Object;

    .line 7830
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 7831
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7832
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->direction_:Ljava/lang/Object;

    move-object v2, v1

    .line 7835
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

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 7429
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->id_:Ljava/lang/Object;

    .line 7430
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 7431
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7432
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->id_:Ljava/lang/Object;

    move-object v2, v1

    .line 7435
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

.method public getItems(I)Lcom/google/feedreader/extrpc/Client$Item;
    .registers 3
    .parameter "index"

    .prologue
    .line 7584
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->items_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item;

    return-object p0
.end method

.method public getItemsCount()I
    .registers 2

    .prologue
    .line 7581
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->items_:Ljava/util/List;

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
            "Lcom/google/feedreader/extrpc/Client$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7578
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->items_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLinks(I)Lcom/google/feedreader/extrpc/Client$Link;
    .registers 3
    .parameter "index"

    .prologue
    .line 7673
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->links_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Link;

    return-object p0
.end method

.method public getLinksCount()I
    .registers 2

    .prologue
    .line 7670
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->links_:Ljava/util/List;

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
    .line 7667
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->links_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPublishedMsec()J
    .registers 3

    .prologue
    .line 7772
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->publishedMsec_:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 7465
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->title_:Ljava/lang/Object;

    .line 7466
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 7467
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7468
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->title_:Ljava/lang/Object;

    move-object v2, v1

    .line 7471
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
    .line 7751
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->updatedMsec_:J

    return-wide v0
.end method

.method public hasAuthor()Z
    .registers 3

    .prologue
    .line 7498
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

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

.method public hasContinuation()Z
    .registers 3

    .prologue
    .line 7534
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

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

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 7790
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

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

.method public hasDirection()Z
    .registers 3

    .prologue
    .line 7826
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

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

    .line 7426
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasPublishedMsec()Z
    .registers 3

    .prologue
    .line 7769
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

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

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 7462
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

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

.method public hasUpdatedMsec()Z
    .registers 3

    .prologue
    .line 7748
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 7325
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->hasId()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    .line 7345
    :goto_8
    return v1

    .line 7329
    :cond_9
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->hasTitle()Z

    move-result v1

    if-nez v1, :cond_11

    move v1, v2

    .line 7331
    goto :goto_8

    .line 7333
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->getItemsCount()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 7334
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->getItems(I)Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$Item;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_24

    move v1, v2

    .line 7336
    goto :goto_8

    .line 7333
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 7339
    :cond_27
    const/4 v0, 0x0

    :goto_28
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->getLinksCount()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 7340
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->getLinks(I)Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$Link;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_3a

    move v1, v2

    .line 7342
    goto :goto_8

    .line 7339
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 7345
    :cond_3d
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamContent;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 4
    .parameter

    .prologue
    .line 7276
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 7321
    :goto_7
    return-object v0

    .line 7277
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamContent;->hasId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 7278
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    .line 7280
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamContent;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 7281
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    .line 7283
    :cond_22
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamContent;->hasAuthor()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 7284
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->setAuthor(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    .line 7286
    :cond_2f
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamContent;->hasContinuation()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 7287
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getContinuation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->setContinuation(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    .line 7289
    :cond_3c
    #getter for: Lcom/google/feedreader/extrpc/Client$StreamContent;->items_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$StreamContent;->access$8900(Lcom/google/feedreader/extrpc/Client$StreamContent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 7290
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->items_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 7291
    #getter for: Lcom/google/feedreader/extrpc/Client$StreamContent;->items_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$StreamContent;->access$8900(Lcom/google/feedreader/extrpc/Client$StreamContent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->items_:Ljava/util/List;

    .line 7292
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7299
    :cond_5a
    :goto_5a
    #getter for: Lcom/google/feedreader/extrpc/Client$StreamContent;->links_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$StreamContent;->access$9000(Lcom/google/feedreader/extrpc/Client$StreamContent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_78

    .line 7300
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->links_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 7301
    #getter for: Lcom/google/feedreader/extrpc/Client$StreamContent;->links_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$StreamContent;->access$9000(Lcom/google/feedreader/extrpc/Client$StreamContent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->links_:Ljava/util/List;

    .line 7302
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7309
    :cond_78
    :goto_78
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamContent;->hasUpdatedMsec()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 7310
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getUpdatedMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->setUpdatedMsec(J)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    .line 7312
    :cond_85
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamContent;->hasPublishedMsec()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 7313
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getPublishedMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->setPublishedMsec(J)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    .line 7315
    :cond_92
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamContent;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 7316
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->setDescription(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    .line 7318
    :cond_9f
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamContent;->hasDirection()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 7319
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getDirection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->setDirection(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    :cond_ac
    move-object v0, p0

    .line 7321
    goto/16 :goto_7

    .line 7294
    :cond_af
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->ensureItemsIsMutable()V

    .line 7295
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->items_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$StreamContent;->items_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$StreamContent;->access$8900(Lcom/google/feedreader/extrpc/Client$StreamContent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5a

    .line 7304
    :cond_bc
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->ensureLinksIsMutable()V

    .line 7305
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->links_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$StreamContent;->links_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$StreamContent;->access$9000(Lcom/google/feedreader/extrpc/Client$StreamContent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_78
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7353
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 7354
    sparse-switch v0, :sswitch_data_9a

    .line 7359
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 7361
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 7357
    goto :goto_e

    .line 7366
    :sswitch_11
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7367
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 7371
    :sswitch_1e
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7372
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 7376
    :sswitch_2b
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7377
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->author_:Ljava/lang/Object;

    goto :goto_0

    .line 7381
    :sswitch_38
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7382
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->continuation_:Ljava/lang/Object;

    goto :goto_0

    .line 7386
    :sswitch_45
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$Builder;

    move-result-object v0

    .line 7387
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 7388
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->addItems(Lcom/google/feedreader/extrpc/Client$Item;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    goto :goto_0

    .line 7392
    :sswitch_54
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Link;->newBuilder()Lcom/google/feedreader/extrpc/Client$Link$Builder;

    move-result-object v0

    .line 7393
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 7394
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->addLinks(Lcom/google/feedreader/extrpc/Client$Link;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    goto :goto_0

    .line 7398
    :sswitch_63
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7399
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->updatedMsec_:J

    goto :goto_0

    .line 7403
    :sswitch_70
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7404
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->publishedMsec_:J

    goto :goto_0

    .line 7408
    :sswitch_7d
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7409
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->description_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 7413
    :sswitch_8b
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7414
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->direction_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 7354
    nop

    :sswitch_data_9a
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_11
        0x12 -> :sswitch_1e
        0x1a -> :sswitch_2b
        0x22 -> :sswitch_38
        0x2a -> :sswitch_45
        0x32 -> :sswitch_54
        0x38 -> :sswitch_63
        0x40 -> :sswitch_70
        0x4a -> :sswitch_7d
        0x52 -> :sswitch_8b
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
    .line 7159
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 7159
    check-cast p1, Lcom/google/feedreader/extrpc/Client$StreamContent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamContent;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

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
    .line 7159
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeItems(I)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 3
    .parameter

    .prologue
    .line 7650
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->ensureItemsIsMutable()V

    .line 7651
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->items_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7653
    return-object p0
.end method

.method public removeLinks(I)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 3
    .parameter

    .prologue
    .line 7739
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->ensureLinksIsMutable()V

    .line 7740
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->links_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7742
    return-object p0
.end method

.method public setAuthor(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7511
    if-nez p1, :cond_8

    .line 7512
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7514
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7515
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->author_:Ljava/lang/Object;

    .line 7517
    return-object p0
.end method

.method setAuthor(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 7526
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7527
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->author_:Ljava/lang/Object;

    .line 7529
    return-void
.end method

.method public setContinuation(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7547
    if-nez p1, :cond_8

    .line 7548
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7550
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7551
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->continuation_:Ljava/lang/Object;

    .line 7553
    return-object p0
.end method

.method setContinuation(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 7562
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7563
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->continuation_:Ljava/lang/Object;

    .line 7565
    return-void
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7803
    if-nez p1, :cond_8

    .line 7804
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7806
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7807
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->description_:Ljava/lang/Object;

    .line 7809
    return-object p0
.end method

.method setDescription(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 7818
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7819
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->description_:Ljava/lang/Object;

    .line 7821
    return-void
.end method

.method public setDirection(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7839
    if-nez p1, :cond_8

    .line 7840
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7842
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7843
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->direction_:Ljava/lang/Object;

    .line 7845
    return-object p0
.end method

.method setDirection(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 7854
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7855
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->direction_:Ljava/lang/Object;

    .line 7857
    return-void
.end method

.method public setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7439
    if-nez p1, :cond_8

    .line 7440
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7442
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7443
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->id_:Ljava/lang/Object;

    .line 7445
    return-object p0
.end method

.method setId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 7454
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7455
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->id_:Ljava/lang/Object;

    .line 7457
    return-void
.end method

.method public setItems(ILcom/google/feedreader/extrpc/Client$Item$Builder;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 7598
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->ensureItemsIsMutable()V

    .line 7599
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->items_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$Item$Builder;->build()Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7601
    return-object p0
.end method

.method public setItems(ILcom/google/feedreader/extrpc/Client$Item;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 7588
    if-nez p2, :cond_8

    .line 7589
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7591
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->ensureItemsIsMutable()V

    .line 7592
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->items_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7594
    return-object p0
.end method

.method public setLinks(ILcom/google/feedreader/extrpc/Client$Link$Builder;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 7687
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->ensureLinksIsMutable()V

    .line 7688
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->links_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$Link$Builder;->build()Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7690
    return-object p0
.end method

.method public setLinks(ILcom/google/feedreader/extrpc/Client$Link;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 7677
    if-nez p2, :cond_8

    .line 7678
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7680
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->ensureLinksIsMutable()V

    .line 7681
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->links_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7683
    return-object p0
.end method

.method public setPublishedMsec(J)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 7775
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7776
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->publishedMsec_:J

    .line 7778
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7475
    if-nez p1, :cond_8

    .line 7476
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7478
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7479
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->title_:Ljava/lang/Object;

    .line 7481
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 7490
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7491
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->title_:Ljava/lang/Object;

    .line 7493
    return-void
.end method

.method public setUpdatedMsec(J)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 7754
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->bitField0_:I

    .line 7755
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->updatedMsec_:J

    .line 7757
    return-object p0
.end method
