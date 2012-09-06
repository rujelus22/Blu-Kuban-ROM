.class Lcom/google/common/collect/z;
.super Lcom/google/common/collect/hi;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Map;

.field final synthetic b:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 883
    iput-object p1, p0, Lcom/google/common/collect/z;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/hi;-><init>()V

    .line 884
    iput-object p2, p0, Lcom/google/common/collect/z;->a:Ljava/util/Map;

    .line 885
    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .registers 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Map;

    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 933
    invoke-virtual {p0}, Lcom/google/common/collect/z;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ee;->e(Ljava/util/Iterator;)V

    .line 934
    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 937
    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 941
    if-eq p0, p1, :cond_e

    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 945
    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 893
    new-instance v0, Lcom/google/common/collect/aa;

    invoke-direct {v0, p0}, Lcom/google/common/collect/aa;-><init>(Lcom/google/common/collect/z;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 922
    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 923
    if-eqz v0, :cond_1e

    .line 924
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    .line 925
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 926
    iget-object v0, p0, Lcom/google/common/collect/z;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0, v2}, Lcom/google/common/collect/AbstractMultimap;->access$220(Lcom/google/common/collect/AbstractMultimap;I)I

    move v0, v2

    .line 928
    :goto_18
    if-lez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    move v0, v1

    goto :goto_1b

    :cond_1e
    move v0, v1

    goto :goto_18
.end method
