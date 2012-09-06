.class final Lcom/google/common/collect/if;
.super Lcom/google/common/collect/hf;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/Multimaps$MapMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$MapMultimap;)V
    .registers 2
    .parameter

    .prologue
    .line 1256
    iput-object p1, p0, Lcom/google/common/collect/if;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/hf;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Set;
    .registers 3

    .prologue
    .line 1258
    new-instance v0, Lcom/google/common/collect/ig;

    iget-object v1, p0, Lcom/google/common/collect/if;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ig;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap;)V

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/google/common/collect/if;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/google/common/collect/if;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    :cond_d
    return-object v0
.end method

.method public final synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/google/common/collect/if;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    :cond_d
    return-object v0
.end method
