.class abstract Lcom/google/common/collect/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field b:I

.field c:I

.field d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field e:Ljava/lang/Object;

.field f:Lcom/google/common/collect/bi;

.field g:Lcom/google/common/collect/bi;

.field final synthetic h:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V
    .registers 3
    .parameter

    .prologue
    .line 1625
    iput-object p1, p0, Lcom/google/common/collect/bd;->h:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1626
    iget-object v0, p1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/bd;->b:I

    .line 1627
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/bd;->c:I

    .line 1628
    invoke-direct {p0}, Lcom/google/common/collect/bd;->b()V

    .line 1629
    return-void
.end method

.method private a(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/google/common/collect/bd;->h:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/bk;

    .line 1696
    invoke-interface {v0, p1}, Lcom/google/common/collect/bk;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1697
    invoke-interface {v0, p1}, Lcom/google/common/collect/bk;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1698
    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    .line 1699
    new-instance v2, Lcom/google/common/collect/bi;

    iget-object v3, p0, Lcom/google/common/collect/bd;->h:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {v2, v3, v1, v0}, Lcom/google/common/collect/bi;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/common/collect/bd;->f:Lcom/google/common/collect/bi;

    .line 1700
    const/4 v0, 0x1

    .line 1703
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private b()V
    .registers 4

    .prologue
    .line 1636
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/bd;->f:Lcom/google/common/collect/bi;

    .line 1638
    invoke-direct {p0}, Lcom/google/common/collect/bd;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1656
    :cond_9
    :goto_9
    return-void

    .line 1642
    :cond_a
    invoke-direct {p0}, Lcom/google/common/collect/bd;->d()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1646
    :cond_10
    iget v0, p0, Lcom/google/common/collect/bd;->b:I

    if-ltz v0, :cond_9

    .line 1647
    iget-object v0, p0, Lcom/google/common/collect/bd;->h:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    iget v1, p0, Lcom/google/common/collect/bd;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/bd;->b:I

    aget-object v0, v0, v1

    .line 1648
    iget v1, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v1, :cond_10

    .line 1649
    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/collect/bd;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1650
    iget-object v0, p0, Lcom/google/common/collect/bd;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/bd;->c:I

    .line 1651
    invoke-direct {p0}, Lcom/google/common/collect/bd;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9
.end method

.method private c()Z
    .registers 3

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/google/common/collect/bd;->h:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/bk;

    .line 1664
    iget-object v1, p0, Lcom/google/common/collect/bd;->e:Ljava/lang/Object;

    if-eqz v1, :cond_27

    .line 1665
    iget-object v1, p0, Lcom/google/common/collect/bd;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/bk;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/bd;->e:Ljava/lang/Object;

    :goto_10
    iget-object v1, p0, Lcom/google/common/collect/bd;->e:Ljava/lang/Object;

    if-eqz v1, :cond_27

    .line 1667
    iget-object v1, p0, Lcom/google/common/collect/bd;->e:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/google/common/collect/bd;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1668
    const/4 v0, 0x1

    .line 1672
    :goto_1d
    return v0

    .line 1666
    :cond_1e
    iget-object v1, p0, Lcom/google/common/collect/bd;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/bk;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/bd;->e:Ljava/lang/Object;

    goto :goto_10

    .line 1672
    :cond_27
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private d()Z
    .registers 4

    .prologue
    .line 1680
    :cond_0
    iget v0, p0, Lcom/google/common/collect/bd;->c:I

    if-ltz v0, :cond_24

    .line 1681
    iget-object v0, p0, Lcom/google/common/collect/bd;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/common/collect/bd;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/bd;->c:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/bd;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/google/common/collect/bd;->e:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/common/collect/bd;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-direct {p0}, Lcom/google/common/collect/bd;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1683
    :cond_22
    const/4 v0, 0x1

    .line 1687
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method


# virtual methods
.method final a()Lcom/google/common/collect/bi;
    .registers 2

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/google/common/collect/bd;->f:Lcom/google/common/collect/bi;

    if-nez v0, :cond_a

    .line 1713
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1715
    :cond_a
    iget-object v0, p0, Lcom/google/common/collect/bd;->f:Lcom/google/common/collect/bi;

    iput-object v0, p0, Lcom/google/common/collect/bd;->g:Lcom/google/common/collect/bi;

    .line 1716
    invoke-direct {p0}, Lcom/google/common/collect/bd;->b()V

    .line 1717
    iget-object v0, p0, Lcom/google/common/collect/bd;->g:Lcom/google/common/collect/bi;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/google/common/collect/bd;->f:Lcom/google/common/collect/bi;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/google/common/collect/bd;->g:Lcom/google/common/collect/bi;

    if-nez v0, :cond_a

    .line 1722
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1724
    :cond_a
    iget-object v0, p0, Lcom/google/common/collect/bd;->h:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v1, p0, Lcom/google/common/collect/bd;->g:Lcom/google/common/collect/bi;

    invoke-virtual {v1}, Lcom/google/common/collect/bi;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/bd;->g:Lcom/google/common/collect/bi;

    .line 1726
    return-void
.end method
