.class Lcom/google/common/collect/s;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/q;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/q;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/common/collect/s;->a:Lcom/google/common/collect/q;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/q;Lcom/google/common/collect/r;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/google/common/collect/s;-><init>(Lcom/google/common/collect/q;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/common/collect/s;->a:Lcom/google/common/collect/q;

    invoke-static {v0}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 152
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_e

    .line 154
    :cond_1f
    iget-object v0, p0, Lcom/google/common/collect/s;->a:Lcom/google/common/collect/q;

    invoke-static {v0}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 155
    iget-object v0, p0, Lcom/google/common/collect/s;->a:Lcom/google/common/collect/q;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/q;->b(Lcom/google/common/collect/q;J)J

    .line 156
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 159
    instance-of v1, p1, Lcom/google/common/collect/cN;

    if-eqz v1, :cond_1a

    .line 160
    check-cast p1, Lcom/google/common/collect/cN;

    .line 161
    iget-object v1, p0, Lcom/google/common/collect/s;->a:Lcom/google/common/collect/q;

    invoke-interface {p1}, Lcom/google/common/collect/cN;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/q;->a(Ljava/lang/Object;)I

    move-result v1

    .line 162
    invoke-interface {p1}, Lcom/google/common/collect/cN;->b()I

    move-result v2

    if-ne v1, v2, :cond_1a

    if-lez v1, :cond_1a

    const/4 v0, 0x1

    .line 164
    :cond_1a
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/common/collect/s;->a:Lcom/google/common/collect/q;

    invoke-static {v0}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/google/common/collect/t;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/t;-><init>(Lcom/google/common/collect/s;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/common/collect/s;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 169
    check-cast p1, Lcom/google/common/collect/cN;

    .line 170
    iget-object v0, p0, Lcom/google/common/collect/s;->a:Lcom/google/common/collect/q;

    invoke-static {v0}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/cN;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 171
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 172
    iget-object v1, p0, Lcom/google/common/collect/s;->a:Lcom/google/common/collect/q;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;J)J

    .line 173
    const/4 v0, 0x1

    .line 175
    :goto_24
    return v0

    :cond_25
    move v0, v1

    goto :goto_24
.end method

.method public size()I
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/common/collect/s;->a:Lcom/google/common/collect/q;

    invoke-static {v0}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
