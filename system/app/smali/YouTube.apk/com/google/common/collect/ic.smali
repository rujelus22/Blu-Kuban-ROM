.class final Lcom/google/common/collect/ic;
.super Lcom/google/common/collect/iy;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/hy;


# direct methods
.method constructor <init>(Lcom/google/common/collect/hy;)V
    .registers 2
    .parameter

    .prologue
    .line 1900
    iput-object p1, p0, Lcom/google/common/collect/ic;->a:Lcom/google/common/collect/hy;

    invoke-direct {p0}, Lcom/google/common/collect/iy;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/common/collect/iq;
    .registers 2

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/google/common/collect/ic;->a:Lcom/google/common/collect/hy;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 1918
    instance-of v0, p1, Lcom/google/common/collect/ir;

    if-eqz v0, :cond_2b

    .line 1919
    check-cast p1, Lcom/google/common/collect/ir;

    .line 1920
    iget-object v0, p0, Lcom/google/common/collect/ic;->a:Lcom/google/common/collect/hy;

    invoke-virtual {v0}, Lcom/google/common/collect/hy;->a()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1921
    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/ir;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_29

    const/4 v0, 0x1

    .line 1923
    :goto_28
    return v0

    :cond_29
    move v0, v1

    .line 1921
    goto :goto_28

    :cond_2b
    move v0, v1

    .line 1923
    goto :goto_28
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/google/common/collect/ic;->a:Lcom/google/common/collect/hy;

    invoke-virtual {v0}, Lcom/google/common/collect/hy;->a()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/google/common/collect/ic;->a:Lcom/google/common/collect/hy;

    invoke-virtual {v0}, Lcom/google/common/collect/hy;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1927
    instance-of v0, p1, Lcom/google/common/collect/ir;

    if-eqz v0, :cond_2b

    .line 1928
    check-cast p1, Lcom/google/common/collect/ir;

    .line 1929
    iget-object v0, p0, Lcom/google/common/collect/ic;->a:Lcom/google/common/collect/hy;

    invoke-virtual {v0}, Lcom/google/common/collect/hy;->a()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1930
    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/collect/ir;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_2b

    .line 1931
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1932
    const/4 v0, 0x1

    .line 1935
    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/google/common/collect/ic;->a:Lcom/google/common/collect/hy;

    invoke-virtual {v0}, Lcom/google/common/collect/hy;->distinctElements()I

    move-result v0

    return v0
.end method
