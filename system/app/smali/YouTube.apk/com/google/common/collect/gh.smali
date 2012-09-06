.class Lcom/google/common/collect/gh;
.super Ljava/lang/ref/SoftReference;
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
    .line 1225
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1292
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->unset()Lcom/google/common/collect/gs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gh;->c:Lcom/google/common/collect/gs;

    .line 1226
    iput p3, p0, Lcom/google/common/collect/gh;->a:I

    .line 1227
    iput-object p4, p0, Lcom/google/common/collect/gh;->b:Lcom/google/common/collect/gg;

    .line 1228
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .registers 2

    .prologue
    .line 1238
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHash()I
    .registers 2

    .prologue
    .line 1308
    iget v0, p0, Lcom/google/common/collect/gh;->a:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1232
    invoke-virtual {p0}, Lcom/google/common/collect/gh;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/google/common/collect/gh;->b:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public getNextEvictable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1270
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNextExpirable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1248
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousEvictable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1280
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousExpirable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValueReference()Lcom/google/common/collect/gs;
    .registers 2

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/google/common/collect/gh;->c:Lcom/google/common/collect/gs;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .registers 4
    .parameter

    .prologue
    .line 1243
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextEvictable(Lcom/google/common/collect/gg;)V
    .registers 3
    .parameter

    .prologue
    .line 1275
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextExpirable(Lcom/google/common/collect/gg;)V
    .registers 3
    .parameter

    .prologue
    .line 1253
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousEvictable(Lcom/google/common/collect/gg;)V
    .registers 3
    .parameter

    .prologue
    .line 1285
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousExpirable(Lcom/google/common/collect/gg;)V
    .registers 3
    .parameter

    .prologue
    .line 1263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValueReference(Lcom/google/common/collect/gs;)V
    .registers 3
    .parameter

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/google/common/collect/gh;->c:Lcom/google/common/collect/gs;

    .line 1302
    iput-object p1, p0, Lcom/google/common/collect/gh;->c:Lcom/google/common/collect/gs;

    .line 1303
    invoke-interface {v0, p1}, Lcom/google/common/collect/gs;->a(Lcom/google/common/collect/gs;)V

    .line 1304
    return-void
.end method
