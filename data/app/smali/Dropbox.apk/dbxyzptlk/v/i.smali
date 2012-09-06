.class abstract Ldbxyzptlk/v/i;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field b:I

.field c:I

.field d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field e:Ljava/lang/Object;

.field f:Ldbxyzptlk/v/p;

.field g:Ldbxyzptlk/v/p;

.field final synthetic h:Ldbxyzptlk/v/e;


# direct methods
.method constructor <init>(Ldbxyzptlk/v/e;)V
    .registers 3
    .parameter

    .prologue
    .line 1674
    iput-object p1, p0, Ldbxyzptlk/v/i;->h:Ldbxyzptlk/v/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1675
    iget-object v0, p1, Ldbxyzptlk/v/e;->d:[Ldbxyzptlk/v/m;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ldbxyzptlk/v/i;->b:I

    .line 1676
    const/4 v0, -0x1

    iput v0, p0, Ldbxyzptlk/v/i;->c:I

    .line 1677
    invoke-virtual {p0}, Ldbxyzptlk/v/i;->b()V

    .line 1678
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    .line 1743
    iget-object v0, p0, Ldbxyzptlk/v/i;->h:Ldbxyzptlk/v/e;

    iget-object v0, v0, Ldbxyzptlk/v/e;->a:Ldbxyzptlk/v/r;

    .line 1744
    invoke-interface {v0, p1}, Ldbxyzptlk/v/r;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1745
    invoke-interface {v0, p1}, Ldbxyzptlk/v/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1746
    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    .line 1747
    new-instance v2, Ldbxyzptlk/v/p;

    iget-object v3, p0, Ldbxyzptlk/v/i;->h:Ldbxyzptlk/v/e;

    invoke-direct {v2, v3, v1, v0}, Ldbxyzptlk/v/p;-><init>(Ldbxyzptlk/v/e;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Ldbxyzptlk/v/i;->f:Ldbxyzptlk/v/p;

    .line 1748
    const/4 v0, 0x1

    .line 1751
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method final b()V
    .registers 4

    .prologue
    .line 1685
    const/4 v0, 0x0

    iput-object v0, p0, Ldbxyzptlk/v/i;->f:Ldbxyzptlk/v/p;

    .line 1687
    invoke-virtual {p0}, Ldbxyzptlk/v/i;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1705
    :cond_9
    :goto_9
    return-void

    .line 1691
    :cond_a
    invoke-virtual {p0}, Ldbxyzptlk/v/i;->d()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1695
    :cond_10
    iget v0, p0, Ldbxyzptlk/v/i;->b:I

    if-ltz v0, :cond_9

    .line 1696
    iget-object v0, p0, Ldbxyzptlk/v/i;->h:Ldbxyzptlk/v/e;

    iget-object v0, v0, Ldbxyzptlk/v/e;->d:[Ldbxyzptlk/v/m;

    iget v1, p0, Ldbxyzptlk/v/i;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ldbxyzptlk/v/i;->b:I

    aget-object v0, v0, v1

    .line 1697
    iget v1, v0, Ldbxyzptlk/v/m;->a:I

    if-eqz v1, :cond_10

    .line 1698
    iget-object v0, v0, Ldbxyzptlk/v/m;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Ldbxyzptlk/v/i;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1699
    iget-object v0, p0, Ldbxyzptlk/v/i;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ldbxyzptlk/v/i;->c:I

    .line 1700
    invoke-virtual {p0}, Ldbxyzptlk/v/i;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9
.end method

.method final c()Z
    .registers 3

    .prologue
    .line 1712
    iget-object v0, p0, Ldbxyzptlk/v/i;->h:Ldbxyzptlk/v/e;

    iget-object v0, v0, Ldbxyzptlk/v/e;->a:Ldbxyzptlk/v/r;

    .line 1713
    iget-object v1, p0, Ldbxyzptlk/v/i;->e:Ljava/lang/Object;

    if-eqz v1, :cond_27

    .line 1714
    iget-object v1, p0, Ldbxyzptlk/v/i;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ldbxyzptlk/v/r;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ldbxyzptlk/v/i;->e:Ljava/lang/Object;

    :goto_10
    iget-object v1, p0, Ldbxyzptlk/v/i;->e:Ljava/lang/Object;

    if-eqz v1, :cond_27

    .line 1715
    iget-object v1, p0, Ldbxyzptlk/v/i;->e:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ldbxyzptlk/v/i;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1716
    const/4 v0, 0x1

    .line 1720
    :goto_1d
    return v0

    .line 1714
    :cond_1e
    iget-object v1, p0, Ldbxyzptlk/v/i;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ldbxyzptlk/v/r;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ldbxyzptlk/v/i;->e:Ljava/lang/Object;

    goto :goto_10

    .line 1720
    :cond_27
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method final d()Z
    .registers 4

    .prologue
    .line 1728
    :cond_0
    iget v0, p0, Ldbxyzptlk/v/i;->c:I

    if-ltz v0, :cond_24

    .line 1729
    iget-object v0, p0, Ldbxyzptlk/v/i;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Ldbxyzptlk/v/i;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ldbxyzptlk/v/i;->c:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/v/i;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1730
    iget-object v0, p0, Ldbxyzptlk/v/i;->e:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ldbxyzptlk/v/i;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Ldbxyzptlk/v/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1731
    :cond_22
    const/4 v0, 0x1

    .line 1735
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method final e()Ldbxyzptlk/v/p;
    .registers 2

    .prologue
    .line 1760
    iget-object v0, p0, Ldbxyzptlk/v/i;->f:Ldbxyzptlk/v/p;

    if-nez v0, :cond_a

    .line 1761
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1763
    :cond_a
    iget-object v0, p0, Ldbxyzptlk/v/i;->f:Ldbxyzptlk/v/p;

    iput-object v0, p0, Ldbxyzptlk/v/i;->g:Ldbxyzptlk/v/p;

    .line 1764
    invoke-virtual {p0}, Ldbxyzptlk/v/i;->b()V

    .line 1765
    iget-object v0, p0, Ldbxyzptlk/v/i;->g:Ldbxyzptlk/v/p;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 1756
    iget-object v0, p0, Ldbxyzptlk/v/i;->f:Ldbxyzptlk/v/p;

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
    .line 1769
    iget-object v0, p0, Ldbxyzptlk/v/i;->g:Ldbxyzptlk/v/p;

    if-nez v0, :cond_a

    .line 1770
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1772
    :cond_a
    iget-object v0, p0, Ldbxyzptlk/v/i;->h:Ldbxyzptlk/v/e;

    iget-object v1, p0, Ldbxyzptlk/v/i;->g:Ldbxyzptlk/v/p;

    invoke-virtual {v1}, Ldbxyzptlk/v/p;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldbxyzptlk/v/e;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    const/4 v0, 0x0

    iput-object v0, p0, Ldbxyzptlk/v/i;->g:Ldbxyzptlk/v/p;

    .line 1774
    return-void
.end method
