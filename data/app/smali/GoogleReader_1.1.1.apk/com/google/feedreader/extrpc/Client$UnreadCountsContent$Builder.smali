.class public final Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$UnreadCountsContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;",
        "Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$UnreadCountsContentOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private denied_:Z

.field private max_:I

.field private unreadcounts_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 10336
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10517
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->unreadcounts_:Ljava/util/List;

    .line 10337
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->maybeForceBuilderInitialization()V

    .line 10338
    return-void
.end method

.method static synthetic access$12500(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10331
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12600()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    .registers 1

    .prologue
    .line 10331
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10375
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    .line 10376
    .local v0, result:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 10377
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 10380
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    .registers 1

    .prologue
    .line 10343
    new-instance v0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;-><init>()V

    return-object v0
.end method

.method private ensureUnreadcountsIsMutable()V
    .registers 3

    .prologue
    .line 10520
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 10521
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->unreadcounts_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->unreadcounts_:Ljava/util/List;

    .line 10522
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    .line 10524
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 10341
    return-void
.end method


# virtual methods
.method public addAllUnreadcounts(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;"
        }
    .end annotation

    .prologue
    .line 10587
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->ensureUnreadcountsIsMutable()V

    .line 10588
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->unreadcounts_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10590
    return-object p0
.end method

.method public addUnreadcounts(ILcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 10580
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->ensureUnreadcountsIsMutable()V

    .line 10581
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->unreadcounts_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->build()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10583
    return-object p0
.end method

.method public addUnreadcounts(ILcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10563
    if-nez p2, :cond_8

    .line 10564
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10566
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->ensureUnreadcountsIsMutable()V

    .line 10567
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->unreadcounts_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10569
    return-object p0
.end method

.method public addUnreadcounts(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    .registers 4
    .parameter

    .prologue
    .line 10573
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->ensureUnreadcountsIsMutable()V

    .line 10574
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->unreadcounts_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->build()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10576
    return-object p0
.end method

.method public addUnreadcounts(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    .registers 3
    .parameter

    .prologue
    .line 10553
    if-nez p1, :cond_8

    .line 10554
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10556
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->ensureUnreadcountsIsMutable()V

    .line 10557
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->unreadcounts_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10559
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    .registers 3

    .prologue
    .line 10366
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    .line 10367
    .local v0, result:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 10368
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 10370
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10331
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->build()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    .registers 6

    .prologue
    .line 10384
    new-instance v0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;-><init>(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 10385
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    .line 10386
    const/4 v2, 0x0

    .line 10387
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 10388
    or-int/lit8 v2, v2, 0x1

    .line 10390
    :cond_10
    iget-boolean v3, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->denied_:Z

    #setter for: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->denied_:Z
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->access$12802(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;Z)Z

    .line 10391
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3f

    .line 10392
    or-int/lit8 v1, v2, 0x2

    .line 10394
    :goto_1c
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->max_:I

    #setter for: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->max_:I
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->access$12902(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;I)I

    .line 10395
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_36

    .line 10396
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->unreadcounts_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->unreadcounts_:Ljava/util/List;

    .line 10397
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    .line 10399
    :cond_36
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->unreadcounts_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->unreadcounts_:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->access$13002(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;Ljava/util/List;)Ljava/util/List;

    .line 10400
    #setter for: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->access$13102(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;I)I

    .line 10401
    return-object v0

    :cond_3f
    move v1, v2

    goto :goto_1c
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10331
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 10347
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 10348
    iput-boolean v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->denied_:Z

    .line 10349
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    .line 10350
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->max_:I

    .line 10351
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    .line 10352
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->unreadcounts_:Ljava/util/List;

    .line 10353
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    .line 10354
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10331
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->clear()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10331
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->clear()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDenied()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    .registers 2

    .prologue
    .line 10489
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    .line 10490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->denied_:Z

    .line 10492
    return-object p0
.end method

.method public clearMax()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    .registers 2

    .prologue
    .line 10510
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    .line 10511
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->max_:I

    .line 10513
    return-object p0
.end method

.method public clearUnreadcounts()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    .registers 2

    .prologue
    .line 10593
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->unreadcounts_:Ljava/util/List;

    .line 10594
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    .line 10596
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    .registers 3

    .prologue
    .line 10358
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 10331
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10331
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10331
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

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
    .line 10331
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    .registers 2

    .prologue
    .line 10362
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 10331
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10331
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    return-object v0
.end method

.method public getDenied()Z
    .registers 2

    .prologue
    .line 10480
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->denied_:Z

    return v0
.end method

.method public getMax()I
    .registers 2

    .prologue
    .line 10501
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->max_:I

    return v0
.end method

.method public getUnreadcounts(I)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    .registers 3
    .parameter "index"

    .prologue
    .line 10533
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->unreadcounts_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    return-object p0
.end method

.method public getUnreadcountsCount()I
    .registers 2

    .prologue
    .line 10530
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->unreadcounts_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUnreadcountsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10527
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->unreadcounts_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasDenied()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 10477
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasMax()Z
    .registers 3

    .prologue
    .line 10498
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

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
    .registers 3

    .prologue
    .line 10426
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->getUnreadcountsCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 10427
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->getUnreadcounts(I)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 10429
    const/4 v1, 0x0

    .line 10432
    :goto_12
    return v1

    .line 10426
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10432
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    .registers 4
    .parameter

    .prologue
    .line 10405
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 10422
    :goto_7
    return-object v0

    .line 10406
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->hasDenied()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 10407
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->getDenied()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->setDenied(Z)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    .line 10409
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->hasMax()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 10410
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->getMax()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->setMax(I)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    .line 10412
    :cond_22
    #getter for: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->unreadcounts_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->access$13000(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 10413
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->unreadcounts_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 10414
    #getter for: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->unreadcounts_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->access$13000(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->unreadcounts_:Ljava/util/List;

    .line 10415
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    :cond_40
    :goto_40
    move-object v0, p0

    .line 10422
    goto :goto_7

    .line 10417
    :cond_42
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->ensureUnreadcountsIsMutable()V

    .line 10418
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->unreadcounts_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->unreadcounts_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->access$13000(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_40
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10440
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 10441
    sparse-switch v0, :sswitch_data_3a

    .line 10446
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 10448
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 10444
    goto :goto_e

    .line 10453
    :sswitch_11
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    .line 10454
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->denied_:Z

    goto :goto_0

    .line 10458
    :sswitch_1e
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    .line 10459
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->max_:I

    goto :goto_0

    .line 10463
    :sswitch_2b
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    .line 10464
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 10465
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->addUnreadcounts(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    goto :goto_0

    .line 10441
    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_f
        0x8 -> :sswitch_11
        0x10 -> :sswitch_1e
        0x1a -> :sswitch_2b
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
    .line 10331
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 10331
    check-cast p1, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

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
    .line 10331
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeUnreadcounts(I)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    .registers 3
    .parameter

    .prologue
    .line 10599
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->ensureUnreadcountsIsMutable()V

    .line 10600
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->unreadcounts_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10602
    return-object p0
.end method

.method public setDenied(Z)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10483
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    .line 10484
    iput-boolean p1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->denied_:Z

    .line 10486
    return-object p0
.end method

.method public setMax(I)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10504
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->bitField0_:I

    .line 10505
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->max_:I

    .line 10507
    return-object p0
.end method

.method public setUnreadcounts(ILcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 10547
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->ensureUnreadcountsIsMutable()V

    .line 10548
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->unreadcounts_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->build()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10550
    return-object p0
.end method

.method public setUnreadcounts(ILcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 10537
    if-nez p2, :cond_8

    .line 10538
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10540
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->ensureUnreadcountsIsMutable()V

    .line 10541
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->unreadcounts_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10543
    return-object p0
.end method
