.class Lcom/google/common/collect/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field b:Ljava/util/Map$Entry;

.field final synthetic c:Lcom/google/common/collect/D;


# direct methods
.method constructor <init>(Lcom/google/common/collect/D;)V
    .registers 3
    .parameter

    .prologue
    .line 891
    iput-object p1, p0, Lcom/google/common/collect/E;->c:Lcom/google/common/collect/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 892
    iget-object v0, p0, Lcom/google/common/collect/E;->c:Lcom/google/common/collect/D;

    iget-object v0, v0, Lcom/google/common/collect/D;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/E;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/google/common/collect/E;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 902
    iget-object v0, p0, Lcom/google/common/collect/E;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/E;->b:Ljava/util/Map$Entry;

    .line 903
    iget-object v0, p0, Lcom/google/common/collect/E;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 4

    .prologue
    .line 907
    iget-object v0, p0, Lcom/google/common/collect/E;->b:Ljava/util/Map$Entry;

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/P;->b(Z)V

    .line 908
    iget-object v0, p0, Lcom/google/common/collect/E;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 909
    iget-object v1, p0, Lcom/google/common/collect/E;->a:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 910
    iget-object v1, p0, Lcom/google/common/collect/E;->c:Lcom/google/common/collect/D;

    iget-object v1, v1, Lcom/google/common/collect/D;->b:Lcom/google/common/collect/z;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/common/collect/z;->b(Lcom/google/common/collect/z;I)I

    .line 911
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 912
    return-void

    .line 907
    :cond_24
    const/4 v0, 0x0

    goto :goto_5
.end method
