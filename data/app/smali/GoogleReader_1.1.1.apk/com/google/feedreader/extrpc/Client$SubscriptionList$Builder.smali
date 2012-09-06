.class public final Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$SubscriptionListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$SubscriptionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$SubscriptionList;",
        "Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$SubscriptionListOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private subscriptions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$SubscriptionData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1449
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1558
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->subscriptions_:Ljava/util/List;

    .line 1450
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->maybeForceBuilderInitialization()V

    .line 1451
    return-void
.end method

.method static synthetic access$1600(Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1444
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
    .registers 1

    .prologue
    .line 1444
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->create()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1484
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    .line 1485
    .local v0, result:Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1486
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1489
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
    .registers 1

    .prologue
    .line 1456
    new-instance v0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSubscriptionsIsMutable()V
    .registers 3

    .prologue
    .line 1561
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 1562
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->subscriptions_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->subscriptions_:Ljava/util/List;

    .line 1563
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->bitField0_:I

    .line 1565
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1454
    return-void
.end method


# virtual methods
.method public addAllSubscriptions(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$SubscriptionData;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;"
        }
    .end annotation

    .prologue
    .line 1628
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$SubscriptionData;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->ensureSubscriptionsIsMutable()V

    .line 1629
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->subscriptions_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1631
    return-object p0
.end method

.method public addSubscriptions(ILcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1621
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->ensureSubscriptionsIsMutable()V

    .line 1622
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->subscriptions_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->build()Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1624
    return-object p0
.end method

.method public addSubscriptions(ILcom/google/feedreader/extrpc/Client$SubscriptionData;)Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1604
    if-nez p2, :cond_8

    .line 1605
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1607
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->ensureSubscriptionsIsMutable()V

    .line 1608
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->subscriptions_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1610
    return-object p0
.end method

.method public addSubscriptions(Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1614
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->ensureSubscriptionsIsMutable()V

    .line 1615
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->subscriptions_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->build()Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1617
    return-object p0
.end method

.method public addSubscriptions(Lcom/google/feedreader/extrpc/Client$SubscriptionData;)Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1594
    if-nez p1, :cond_8

    .line 1595
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1597
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->ensureSubscriptionsIsMutable()V

    .line 1598
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->subscriptions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1600
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    .registers 3

    .prologue
    .line 1475
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    .line 1476
    .local v0, result:Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1477
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1479
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1444
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->build()Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    .registers 4

    .prologue
    .line 1493
    new-instance v0, Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;-><init>(Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 1494
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 1496
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->subscriptions_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->subscriptions_:Ljava/util/List;

    .line 1497
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->bitField0_:I

    .line 1499
    :cond_1b
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->subscriptions_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$SubscriptionList;->subscriptions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->access$1902(Lcom/google/feedreader/extrpc/Client$SubscriptionList;Ljava/util/List;)Ljava/util/List;

    .line 1500
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1444
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
    .registers 2

    .prologue
    .line 1460
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1461
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->subscriptions_:Ljava/util/List;

    .line 1462
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->bitField0_:I

    .line 1463
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1444
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->clear()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1444
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->clear()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearSubscriptions()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
    .registers 2

    .prologue
    .line 1634
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->subscriptions_:Ljava/util/List;

    .line 1635
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->bitField0_:I

    .line 1637
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
    .registers 3

    .prologue
    .line 1467
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->create()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$SubscriptionList;)Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1444
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1444
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1444
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

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
    .line 1444
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->clone()Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SubscriptionList;
    .registers 2

    .prologue
    .line 1471
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1444
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1444
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptions(I)Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    .registers 3
    .parameter "index"

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->subscriptions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    return-object p0
.end method

.method public getSubscriptionsCount()I
    .registers 2

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->subscriptions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSubscriptionsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$SubscriptionData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->subscriptions_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 1519
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->getSubscriptionsCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 1520
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->getSubscriptions(I)Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1522
    const/4 v1, 0x0

    .line 1525
    :goto_12
    return v1

    .line 1519
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1525
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$SubscriptionList;)Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1504
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 1515
    :goto_7
    return-object v0

    .line 1505
    :cond_8
    #getter for: Lcom/google/feedreader/extrpc/Client$SubscriptionList;->subscriptions_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->access$1900(Lcom/google/feedreader/extrpc/Client$SubscriptionList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1506
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->subscriptions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1507
    #getter for: Lcom/google/feedreader/extrpc/Client$SubscriptionList;->subscriptions_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->access$1900(Lcom/google/feedreader/extrpc/Client$SubscriptionList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->subscriptions_:Ljava/util/List;

    .line 1508
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->bitField0_:I

    :cond_26
    :goto_26
    move-object v0, p0

    .line 1515
    goto :goto_7

    .line 1510
    :cond_28
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->ensureSubscriptionsIsMutable()V

    .line 1511
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->subscriptions_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$SubscriptionList;->subscriptions_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionList;->access$1900(Lcom/google/feedreader/extrpc/Client$SubscriptionList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_26
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1533
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1534
    sparse-switch v0, :sswitch_data_20

    .line 1539
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 1541
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 1537
    goto :goto_e

    .line 1546
    :sswitch_11
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->newBuilder()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    .line 1547
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1548
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->addSubscriptions(Lcom/google/feedreader/extrpc/Client$SubscriptionData;)Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    goto :goto_0

    .line 1534
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
    .line 1444
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1444
    check-cast p1, Lcom/google/feedreader/extrpc/Client$SubscriptionList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$SubscriptionList;)Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

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
    .line 1444
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeSubscriptions(I)Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1640
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->ensureSubscriptionsIsMutable()V

    .line 1641
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->subscriptions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1643
    return-object p0
.end method

.method public setSubscriptions(ILcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1588
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->ensureSubscriptionsIsMutable()V

    .line 1589
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->subscriptions_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->build()Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1591
    return-object p0
.end method

.method public setSubscriptions(ILcom/google/feedreader/extrpc/Client$SubscriptionData;)Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1578
    if-nez p2, :cond_8

    .line 1579
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1581
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->ensureSubscriptionsIsMutable()V

    .line 1582
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionList$Builder;->subscriptions_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1584
    return-object p0
.end method
