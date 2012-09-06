.class public final Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "LatticeP.java"

# interfaces
.implements Lcom/google/protos/aksara/lattice/LatticeP$StateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/aksara/lattice/LatticeP$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lcom/google/protos/aksara/lattice/LatticeP$State;",
        "Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;",
        ">;",
        "Lcom/google/protos/aksara/lattice/LatticeP$StateOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private description_:Lcom/google/protobuf/LazyStringList;

.field private state_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1451
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 1551
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->state_:Lcom/google/protobuf/ByteString;

    .line 1575
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 1452
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->maybeForceBuilderInitialization()V

    .line 1453
    return-void
.end method

.method static synthetic access$1600()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;
    .registers 1

    .prologue
    .line 1447
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;
    .registers 1

    .prologue
    .line 1458
    new-instance v0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

    invoke-direct {v0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;-><init>()V

    return-object v0
.end method

.method private ensureDescriptionIsMutable()V
    .registers 3

    .prologue
    .line 1577
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 1578
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 1579
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->bitField0_:I

    .line 1581
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1456
    return-void
.end method


# virtual methods
.method public addAllDescription(Ljava/lang/Iterable;)Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;"
        }
    .end annotation

    .prologue
    .line 1617
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->ensureDescriptionIsMutable()V

    .line 1618
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1620
    return-object p0
.end method

.method public addDescription(Ljava/lang/String;)Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1607
    if-nez p1, :cond_8

    .line 1608
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1610
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->ensureDescriptionIsMutable()V

    .line 1611
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1613
    return-object p0
.end method

.method public addDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1630
    if-nez p1, :cond_8

    .line 1631
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1633
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->ensureDescriptionIsMutable()V

    .line 1634
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 1636
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->build()Lcom/google/protos/aksara/lattice/LatticeP$State;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/aksara/lattice/LatticeP$State;
    .registers 3

    .prologue
    .line 1479
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$State;

    move-result-object v0

    .line 1480
    .local v0, result:Lcom/google/protos/aksara/lattice/LatticeP$State;
    invoke-virtual {v0}, Lcom/google/protos/aksara/lattice/LatticeP$State;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1481
    invoke-static {v0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1483
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$State;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$State;
    .registers 6

    .prologue
    .line 1487
    new-instance v1, Lcom/google/protos/aksara/lattice/LatticeP$State;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/aksara/lattice/LatticeP$State;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/aksara/lattice/LatticeP$1;)V

    .line 1488
    .local v1, result:Lcom/google/protos/aksara/lattice/LatticeP$State;
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->bitField0_:I

    .line 1489
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1490
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1491
    or-int/lit8 v2, v2, 0x1

    .line 1493
    :cond_10
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->state_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$State;->state_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$State;->access$1802(Lcom/google/protos/aksara/lattice/LatticeP$State;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1494
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    .line 1495
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 1497
    iget v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->bitField0_:I

    .line 1499
    :cond_2b
    iget-object v3, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$State;->description_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/protos/aksara/lattice/LatticeP$State;->access$1902(Lcom/google/protos/aksara/lattice/LatticeP$State;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 1500
    #setter for: Lcom/google/protos/aksara/lattice/LatticeP$State;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/aksara/lattice/LatticeP$State;->access$2002(Lcom/google/protos/aksara/lattice/LatticeP$State;I)I

    .line 1501
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->clear()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;
    .registers 2

    .prologue
    .line 1462
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 1463
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->state_:Lcom/google/protobuf/ByteString;

    .line 1464
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->bitField0_:I

    .line 1465
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 1466
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->bitField0_:I

    .line 1467
    return-object p0
.end method

.method public clearDescription()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;
    .registers 2

    .prologue
    .line 1623
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 1624
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->bitField0_:I

    .line 1626
    return-object p0
.end method

.method public clearState()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;
    .registers 2

    .prologue
    .line 1568
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->bitField0_:I

    .line 1569
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$State;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/aksara/lattice/LatticeP$State;->getState()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->state_:Lcom/google/protobuf/ByteString;

    .line 1571
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;
    .registers 3

    .prologue
    .line 1471
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->create()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->buildPartial()Lcom/google/protos/aksara/lattice/LatticeP$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$State;)Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

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
    .line 1447
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->clone()Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$State;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$State;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/aksara/lattice/LatticeP$State;
    .registers 2

    .prologue
    .line 1475
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$State;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$State;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionCount()I
    .registers 2

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDescriptionList()Ljava/util/List;
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
    .line 1584
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->state_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasState()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1553
    iget v1, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 1524
    invoke-virtual {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1526
    const/4 v0, 0x0

    .line 1528
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
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
    .line 1447
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1447
    check-cast p1, Lcom/google/protos/aksara/lattice/LatticeP$State;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$State;)Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

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
    .line 1447
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1535
    const/4 v2, 0x0

    .line 1537
    .local v2, parsedMessage:Lcom/google/protos/aksara/lattice/LatticeP$State;
    :try_start_1
    sget-object v3, Lcom/google/protos/aksara/lattice/LatticeP$State;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$State;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 1542
    if-eqz v2, :cond_10

    .line 1543
    invoke-virtual {p0, v2}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$State;)Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

    .line 1546
    :cond_10
    return-object p0

    .line 1538
    :catch_11
    move-exception v1

    .line 1539
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/aksara/lattice/LatticeP$State;

    move-object v2, v0

    .line 1540
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 1542
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 1543
    invoke-virtual {p0, v2}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$State;)Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/aksara/lattice/LatticeP$State;)Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 1505
    invoke-static {}, Lcom/google/protos/aksara/lattice/LatticeP$State;->getDefaultInstance()Lcom/google/protos/aksara/lattice/LatticeP$State;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1520
    :goto_6
    return-object p0

    .line 1506
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$State;->hasState()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1507
    invoke-virtual {p1}, Lcom/google/protos/aksara/lattice/LatticeP$State;->getState()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->setState(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;

    .line 1509
    :cond_14
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$State;->description_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$State;->access$1900(Lcom/google/protos/aksara/lattice/LatticeP$State;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1510
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1511
    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$State;->description_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$State;->access$1900(Lcom/google/protos/aksara/lattice/LatticeP$State;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    .line 1512
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->bitField0_:I

    .line 1519
    :cond_32
    :goto_32
    invoke-virtual {p0, p1}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    goto :goto_6

    .line 1514
    :cond_36
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->ensureDescriptionIsMutable()V

    .line 1515
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/protos/aksara/lattice/LatticeP$State;->description_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/aksara/lattice/LatticeP$State;->access$1900(Lcom/google/protos/aksara/lattice/LatticeP$State;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_32
.end method

.method public setDescription(ILjava/lang/String;)Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1598
    if-nez p2, :cond_8

    .line 1599
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1601
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->ensureDescriptionIsMutable()V

    .line 1602
    iget-object v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->description_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1604
    return-object p0
.end method

.method public setState(Lcom/google/protobuf/ByteString;)Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1559
    if-nez p1, :cond_8

    .line 1560
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1562
    :cond_8
    iget v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->bitField0_:I

    .line 1563
    iput-object p1, p0, Lcom/google/protos/aksara/lattice/LatticeP$State$Builder;->state_:Lcom/google/protobuf/ByteString;

    .line 1565
    return-object p0
.end method
