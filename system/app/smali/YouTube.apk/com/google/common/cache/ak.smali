.class Lcom/google/common/cache/ak;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/x;


# instance fields
.field final g:I

.field final h:Lcom/google/common/cache/x;

.field volatile i:Lcom/google/common/cache/ag;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/x;)V
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
    .line 1347
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1425
    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/ak;->i:Lcom/google/common/cache/ag;

    .line 1348
    iput p3, p0, Lcom/google/common/cache/ak;->g:I

    .line 1349
    iput-object p4, p0, Lcom/google/common/cache/ak;->h:Lcom/google/common/cache/x;

    .line 1350
    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .registers 2

    .prologue
    .line 1361
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHash()I
    .registers 2

    .prologue
    .line 1439
    iget v0, p0, Lcom/google/common/cache/ak;->g:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1354
    invoke-virtual {p0}, Lcom/google/common/cache/ak;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/google/common/cache/ak;->h:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public getNextInAccessQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1371
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNextInWriteQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1403
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousInAccessQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1381
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousInWriteQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1413
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValueReference()Lcom/google/common/cache/ag;
    .registers 2

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/google/common/cache/ak;->i:Lcom/google/common/cache/ag;

    return-object v0
.end method

.method public getWriteTime()J
    .registers 2

    .prologue
    .line 1393
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAccessTime(J)V
    .registers 4
    .parameter

    .prologue
    .line 1366
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextInAccessQueue(Lcom/google/common/cache/x;)V
    .registers 3
    .parameter

    .prologue
    .line 1376
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextInWriteQueue(Lcom/google/common/cache/x;)V
    .registers 3
    .parameter

    .prologue
    .line 1408
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousInAccessQueue(Lcom/google/common/cache/x;)V
    .registers 3
    .parameter

    .prologue
    .line 1386
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousInWriteQueue(Lcom/google/common/cache/x;)V
    .registers 3
    .parameter

    .prologue
    .line 1418
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValueReference(Lcom/google/common/cache/ag;)V
    .registers 2
    .parameter

    .prologue
    .line 1434
    iput-object p1, p0, Lcom/google/common/cache/ak;->i:Lcom/google/common/cache/ag;

    .line 1435
    return-void
.end method

.method public setWriteTime(J)V
    .registers 4
    .parameter

    .prologue
    .line 1398
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
