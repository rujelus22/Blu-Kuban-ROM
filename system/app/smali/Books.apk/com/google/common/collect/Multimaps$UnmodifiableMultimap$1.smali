.class Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;
.super Lcom/google/common/collect/ForwardingMap;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->asMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingMap",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field asMapValues:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;

.field final synthetic val$unmodifiableMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;Ljava/util/Map;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 471
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap.1;"
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->this$0:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;

    iput-object p2, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->val$unmodifiableMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    return-void
.end method


# virtual methods
.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 503
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 471
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 473
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap.1;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->val$unmodifiableMap:Ljava/util/Map;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap.1;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->entrySet:Ljava/util/Set;

    .line 480
    .local v0, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    if-nez v0, :cond_10

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->val$unmodifiableMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    #calls: Lcom/google/common/collect/Multimaps;->unmodifiableAsMapEntries(Ljava/util/Set;)Ljava/util/Set;
    invoke-static {v1}, Lcom/google/common/collect/Multimaps;->access$000(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .end local v0           #result:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->entrySet:Ljava/util/Set;

    :cond_10
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 471
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap.1;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 487
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap.1;"
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->val$unmodifiableMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 488
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    #calls: Lcom/google/common/collect/Multimaps;->unmodifiableValueCollection(Ljava/util/Collection;)Ljava/util/Collection;
    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->access$100(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_b
.end method

.method public values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 495
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;,"Lcom/google/common/collect/Multimaps$UnmodifiableMultimap.1;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->asMapValues:Ljava/util/Collection;

    .line 496
    .local v0, result:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/Collection<TV;>;>;"
    if-nez v0, :cond_11

    new-instance v0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;

    .end local v0           #result:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/Collection<TV;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->val$unmodifiableMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap$1;->asMapValues:Ljava/util/Collection;

    :cond_11
    return-object v0
.end method
