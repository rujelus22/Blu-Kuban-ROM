.class Lcom/google/common/collect/gu;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/gg;


# instance fields
.field final a:I

.field final b:Lcom/google/common/collect/gg;

.field volatile c:Lcom/google/common/collect/gs;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/gg;)V
    .registers 6
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1482
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1550
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->unset()Lcom/google/common/collect/gs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gu;->c:Lcom/google/common/collect/gs;

    .line 1483
    iput p3, p0, Lcom/google/common/collect/gu;->a:I

    .line 1484
    iput-object p4, p0, Lcom/google/common/collect/gu;->b:Lcom/google/common/collect/gg;

    .line 1485
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .registers 2

    .prologue
    .line 1496
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHash()I
    .registers 2

    .prologue
    .line 1566
    iget v0, p0, Lcom/google/common/collect/gu;->a:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1489
    invoke-virtual {p0}, Lcom/google/common/collect/gu;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/google/common/collect/gu;->b:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public getNextEvictable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1528
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNextExpirable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1506
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousEvictable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1538
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousExpirable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1516
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValueReference()Lcom/google/common/collect/gs;
    .registers 2

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/google/common/collect/gu;->c:Lcom/google/common/collect/gs;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .registers 4
    .parameter

    .prologue
    .line 1501
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextEvictable(Lcom/google/common/collect/gg;)V
    .registers 3
    .parameter

    .prologue
    .line 1533
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextExpirable(Lcom/google/common/collect/gg;)V
    .registers 3
    .parameter

    .prologue
    .line 1511
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousEvictable(Lcom/google/common/collect/gg;)V
    .registers 3
    .parameter

    .prologue
    .line 1543
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousExpirable(Lcom/google/common/collect/gg;)V
    .registers 3
    .parameter

    .prologue
    .line 1521
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValueReference(Lcom/google/common/collect/gs;)V
    .registers 3
    .parameter

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/google/common/collect/gu;->c:Lcom/google/common/collect/gs;

    .line 1560
    iput-object p1, p0, Lcom/google/common/collect/gu;->c:Lcom/google/common/collect/gs;

    .line 1561
    invoke-interface {v0, p1}, Lcom/google/common/collect/gs;->a(Lcom/google/common/collect/gs;)V

    .line 1562
    return-void
.end method
