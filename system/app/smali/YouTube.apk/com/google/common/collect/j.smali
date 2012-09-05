.class final Lcom/google/common/collect/j;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/AbstractMapBasedMultiset;


# direct methods
.method synthetic constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V
    .registers 3
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/j;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/common/collect/j;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/common/collect/j;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    #getter for: Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$100(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

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

    .line 145
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_e

    .line 147
    :cond_1f
    iget-object v0, p0, Lcom/google/common/collect/j;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    #getter for: Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$100(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 148
    iget-object v0, p0, Lcom/google/common/collect/j;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    const-wide/16 v1, 0x0

    #setter for: Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$202(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J

    .line 149
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 152
    instance-of v1, p1, Lcom/google/common/collect/fk;

    if-eqz v1, :cond_1a

    .line 153
    check-cast p1, Lcom/google/common/collect/fk;

    .line 154
    iget-object v1, p0, Lcom/google/common/collect/j;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-interface {p1}, Lcom/google/common/collect/fk;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 155
    invoke-interface {p1}, Lcom/google/common/collect/fk;->b()I

    move-result v2

    if-ne v1, v2, :cond_1a

    if-lez v1, :cond_1a

    const/4 v0, 0x1

    .line 157
    :cond_1a
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/common/collect/j;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    #getter for: Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$100(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/google/common/collect/k;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/k;-><init>(Lcom/google/common/collect/j;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-virtual {p0, p1}, Lcom/google/common/collect/j;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 162
    check-cast p1, Lcom/google/common/collect/fk;

    .line 163
    iget-object v0, p0, Lcom/google/common/collect/j;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    #getter for: Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$100(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/fk;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 164
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/google/common/collect/j;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$222(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J

    .line 166
    const/4 v0, 0x1

    .line 168
    :goto_24
    return v0

    :cond_25
    move v0, v1

    goto :goto_24
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/common/collect/j;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    #getter for: Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$100(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
