.class final Lcom/google/common/collect/b;
.super Lcom/google/common/collect/dc;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Set;

.field final synthetic b:Lcom/google/common/collect/AbstractBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractBiMap;)V
    .registers 3
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/AbstractBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/dc;-><init>()V

    .line 277
    iget-object v0, p0, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/AbstractBiMap;

    #getter for: Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->access$200(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/b;->a:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractBiMap;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/google/common/collect/b;-><init>(Lcom/google/common/collect/AbstractBiMap;)V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/common/collect/b;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final clear()V
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractBiMap;->clear()V

    .line 285
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/common/collect/b;->a:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lcom/google/common/collect/b;->standardContainsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/common/collect/b;->a:Ljava/util/Set;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/common/collect/b;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/common/collect/b;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 306
    new-instance v1, Lcom/google/common/collect/c;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/c;-><init>(Lcom/google/common/collect/b;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/common/collect/b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 289
    const/4 v0, 0x0

    .line 301
    :goto_9
    return v0

    .line 293
    :cond_a
    check-cast p1, Ljava/util/Map$Entry;

    .line 294
    iget-object v0, p0, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/AbstractBiMap;

    #getter for: Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;
    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->access$600(Lcom/google/common/collect/AbstractBiMap;)Lcom/google/common/collect/AbstractBiMap;

    move-result-object v0

    #getter for: Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->access$200(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lcom/google/common/collect/b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 301
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/google/common/collect/b;->standardRemoveAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 367
    invoke-virtual {p0, p1}, Lcom/google/common/collect/b;->standardRetainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/google/common/collect/b;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Lcom/google/common/collect/b;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
