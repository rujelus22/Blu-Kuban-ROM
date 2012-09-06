.class Lcom/google/common/collect/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field b:Ljava/util/Map$Entry;

.field c:I

.field d:Z

.field final synthetic e:Lcom/google/common/collect/q;


# direct methods
.method constructor <init>(Lcom/google/common/collect/q;)V
    .registers 3
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/common/collect/x;->e:Lcom/google/common/collect/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    invoke-static {p1}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/x;->a:Ljava/util/Iterator;

    .line 202
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 206
    iget v0, p0, Lcom/google/common/collect/x;->c:I

    if-gtz v0, :cond_c

    iget-object v0, p0, Lcom/google/common/collect/x;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 211
    iget v0, p0, Lcom/google/common/collect/x;->c:I

    if-nez v0, :cond_1c

    .line 212
    iget-object v0, p0, Lcom/google/common/collect/x;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/x;->b:Ljava/util/Map$Entry;

    .line 213
    iget-object v0, p0, Lcom/google/common/collect/x;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/x;->c:I

    .line 215
    :cond_1c
    iget v0, p0, Lcom/google/common/collect/x;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/x;->c:I

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/x;->d:Z

    .line 217
    iget-object v0, p0, Lcom/google/common/collect/x;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/google/common/collect/x;->d:Z

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/P;->b(ZLjava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/google/common/collect/x;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 225
    if-gtz v0, :cond_1b

    .line 226
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 228
    :cond_1b
    iget-object v0, p0, Lcom/google/common/collect/x;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_2f

    .line 229
    iget-object v0, p0, Lcom/google/common/collect/x;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 231
    :cond_2f
    iget-object v0, p0, Lcom/google/common/collect/x;->e:Lcom/google/common/collect/q;

    invoke-static {v0}, Lcom/google/common/collect/q;->b(Lcom/google/common/collect/q;)J

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/x;->d:Z

    .line 233
    return-void
.end method
