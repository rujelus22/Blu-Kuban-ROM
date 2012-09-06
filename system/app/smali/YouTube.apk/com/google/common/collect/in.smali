.class final Lcom/google/common/collect/in;
.super Lcom/google/common/collect/cx;
.source "SourceFile"


# instance fields
.field a:Ljava/util/Set;

.field b:Ljava/util/Collection;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;Ljava/util/Map;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/google/common/collect/in;->d:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;

    iput-object p2, p0, Lcom/google/common/collect/in;->c:Ljava/util/Map;

    invoke-direct {p0}, Lcom/google/common/collect/cx;-><init>()V

    return-void
.end method


# virtual methods
.method public final containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/google/common/collect/in;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/google/common/collect/in;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Map;
    .registers 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/common/collect/in;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/common/collect/in;->a:Ljava/util/Set;

    .line 522
    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/common/collect/in;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/in;->a:Ljava/util/Set;

    :cond_10
    return-object v0
.end method

.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/common/collect/in;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_b
.end method

.method public final values()Ljava/util/Collection;
    .registers 3

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/common/collect/in;->b:Ljava/util/Collection;

    .line 538
    if-nez v0, :cond_11

    new-instance v0, Lcom/google/common/collect/il;

    iget-object v1, p0, Lcom/google/common/collect/in;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/il;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/in;->b:Ljava/util/Collection;

    :cond_11
    return-object v0
.end method
