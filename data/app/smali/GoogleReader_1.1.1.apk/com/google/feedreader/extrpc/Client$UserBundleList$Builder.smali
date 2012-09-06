.class public final Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$UserBundleListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$UserBundleList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$UserBundleList;",
        "Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$UserBundleListOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private bundles_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$UserBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 9402
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 9511
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bundles_:Ljava/util/List;

    .line 9403
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->maybeForceBuilderInitialization()V

    .line 9404
    return-void
.end method

.method static synthetic access$11300(Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundleList;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9397
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundleList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11400()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
    .registers 1

    .prologue
    .line 9397
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->create()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$UserBundleList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9437
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UserBundleList;

    move-result-object v0

    .line 9438
    .local v0, result:Lcom/google/feedreader/extrpc/Client$UserBundleList;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 9439
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 9442
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
    .registers 1

    .prologue
    .line 9409
    new-instance v0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;-><init>()V

    return-object v0
.end method

.method private ensureBundlesIsMutable()V
    .registers 3

    .prologue
    .line 9514
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 9515
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bundles_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bundles_:Ljava/util/List;

    .line 9516
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bitField0_:I

    .line 9518
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 9407
    return-void
.end method


# virtual methods
.method public addAllBundles(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$UserBundle;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;"
        }
    .end annotation

    .prologue
    .line 9581
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$UserBundle;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->ensureBundlesIsMutable()V

    .line 9582
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bundles_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 9584
    return-object p0
.end method

.method public addBundles(ILcom/google/feedreader/extrpc/Client$UserBundle$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 9574
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->ensureBundlesIsMutable()V

    .line 9575
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bundles_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->build()Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9577
    return-object p0
.end method

.method public addBundles(ILcom/google/feedreader/extrpc/Client$UserBundle;)Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 9557
    if-nez p2, :cond_8

    .line 9558
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9560
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->ensureBundlesIsMutable()V

    .line 9561
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bundles_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9563
    return-object p0
.end method

.method public addBundles(Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
    .registers 4
    .parameter

    .prologue
    .line 9567
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->ensureBundlesIsMutable()V

    .line 9568
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bundles_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->build()Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9570
    return-object p0
.end method

.method public addBundles(Lcom/google/feedreader/extrpc/Client$UserBundle;)Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
    .registers 3
    .parameter

    .prologue
    .line 9547
    if-nez p1, :cond_8

    .line 9548
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9550
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->ensureBundlesIsMutable()V

    .line 9551
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bundles_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9553
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$UserBundleList;
    .registers 3

    .prologue
    .line 9428
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UserBundleList;

    move-result-object v0

    .line 9429
    .local v0, result:Lcom/google/feedreader/extrpc/Client$UserBundleList;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 9430
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 9432
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9397
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->build()Lcom/google/feedreader/extrpc/Client$UserBundleList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$UserBundleList;
    .registers 4

    .prologue
    .line 9446
    new-instance v0, Lcom/google/feedreader/extrpc/Client$UserBundleList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$UserBundleList;-><init>(Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 9447
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 9449
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bundles_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bundles_:Ljava/util/List;

    .line 9450
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bitField0_:I

    .line 9452
    :cond_1b
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bundles_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$UserBundleList;->bundles_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->access$11602(Lcom/google/feedreader/extrpc/Client$UserBundleList;Ljava/util/List;)Ljava/util/List;

    .line 9453
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9397
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UserBundleList;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
    .registers 2

    .prologue
    .line 9413
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9414
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bundles_:Ljava/util/List;

    .line 9415
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bitField0_:I

    .line 9416
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9397
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->clear()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9397
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->clear()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBundles()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
    .registers 2

    .prologue
    .line 9587
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bundles_:Ljava/util/List;

    .line 9588
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bitField0_:I

    .line 9590
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
    .registers 3

    .prologue
    .line 9420
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->create()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UserBundleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$UserBundleList;)Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 9397
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9397
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9397
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

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
    .line 9397
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBundles(I)Lcom/google/feedreader/extrpc/Client$UserBundle;
    .registers 3
    .parameter "index"

    .prologue
    .line 9527
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bundles_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserBundle;

    return-object p0
.end method

.method public getBundlesCount()I
    .registers 2

    .prologue
    .line 9524
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bundles_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBundlesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$UserBundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9521
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bundles_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UserBundleList;
    .registers 2

    .prologue
    .line 9424
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserBundleList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 9397
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UserBundleList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9397
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UserBundleList;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 9472
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->getBundlesCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 9473
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->getBundles(I)Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$UserBundle;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 9475
    const/4 v1, 0x0

    .line 9478
    :goto_12
    return v1

    .line 9472
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9478
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$UserBundleList;)Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
    .registers 4
    .parameter

    .prologue
    .line 9457
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserBundleList;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 9468
    :goto_7
    return-object v0

    .line 9458
    :cond_8
    #getter for: Lcom/google/feedreader/extrpc/Client$UserBundleList;->bundles_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->access$11600(Lcom/google/feedreader/extrpc/Client$UserBundleList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 9459
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bundles_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 9460
    #getter for: Lcom/google/feedreader/extrpc/Client$UserBundleList;->bundles_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->access$11600(Lcom/google/feedreader/extrpc/Client$UserBundleList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bundles_:Ljava/util/List;

    .line 9461
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bitField0_:I

    :cond_26
    :goto_26
    move-object v0, p0

    .line 9468
    goto :goto_7

    .line 9463
    :cond_28
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->ensureBundlesIsMutable()V

    .line 9464
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bundles_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$UserBundleList;->bundles_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$UserBundleList;->access$11600(Lcom/google/feedreader/extrpc/Client$UserBundleList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_26
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9486
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 9487
    sparse-switch v0, :sswitch_data_20

    .line 9492
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 9494
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 9490
    goto :goto_e

    .line 9499
    :sswitch_11
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserBundle;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;

    move-result-object v0

    .line 9500
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 9501
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->addBundles(Lcom/google/feedreader/extrpc/Client$UserBundle;)Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    goto :goto_0

    .line 9487
    :sswitch_data_20
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_11
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
    .line 9397
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 9397
    check-cast p1, Lcom/google/feedreader/extrpc/Client$UserBundleList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$UserBundleList;)Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

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
    .line 9397
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeBundles(I)Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
    .registers 3
    .parameter

    .prologue
    .line 9593
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->ensureBundlesIsMutable()V

    .line 9594
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bundles_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9596
    return-object p0
.end method

.method public setBundles(ILcom/google/feedreader/extrpc/Client$UserBundle$Builder;)Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 9541
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->ensureBundlesIsMutable()V

    .line 9542
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bundles_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$UserBundle$Builder;->build()Lcom/google/feedreader/extrpc/Client$UserBundle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9544
    return-object p0
.end method

.method public setBundles(ILcom/google/feedreader/extrpc/Client$UserBundle;)Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 9531
    if-nez p2, :cond_8

    .line 9532
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9534
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->ensureBundlesIsMutable()V

    .line 9535
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserBundleList$Builder;->bundles_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9537
    return-object p0
.end method
