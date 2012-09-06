.class final Lcom/google/common/collect/ld;
.super Lcom/google/common/collect/ls;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .registers 3
    .parameter

    .prologue
    .line 792
    iput-object p1, p0, Lcom/google/common/collect/ld;->a:Lcom/google/common/collect/StandardTable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ls;-><init>(Lcom/google/common/collect/StandardTable;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 792
    invoke-direct {p0, p1}, Lcom/google/common/collect/ld;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 854
    if-nez p1, :cond_5

    move v0, v1

    .line 862
    :goto_4
    return v0

    .line 857
    :cond_5
    iget-object v0, p0, Lcom/google/common/collect/ld;->a:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 858
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 859
    const/4 v0, 0x1

    goto :goto_4

    :cond_25
    move v0, v1

    .line 862
    goto :goto_4
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/google/common/collect/ld;->a:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->createColumnKeyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 802
    if-nez p1, :cond_4

    .line 816
    :goto_3
    return v0

    .line 806
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/ld;->a:Lcom/google/common/collect/StandardTable;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 807
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 808
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 809
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 810
    const/4 v1, 0x1

    .line 811
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 812
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_31
    move v0, v1

    move v1, v0

    .line 815
    goto :goto_11

    :cond_34
    move v0, v1

    .line 816
    goto :goto_3
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 6
    .parameter

    .prologue
    .line 820
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    const/4 v0, 0x0

    .line 822
    iget-object v1, p0, Lcom/google/common/collect/ld;->a:Lcom/google/common/collect/StandardTable;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 823
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 824
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 827
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/common/collect/ee;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 828
    const/4 v1, 0x1

    .line 829
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 830
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_35
    move v0, v1

    move v1, v0

    .line 833
    goto :goto_11

    .line 834
    :cond_38
    return v1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 6
    .parameter

    .prologue
    .line 838
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    const/4 v0, 0x0

    .line 840
    iget-object v1, p0, Lcom/google/common/collect/ld;->a:Lcom/google/common/collect/StandardTable;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 841
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 842
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 843
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 844
    const/4 v1, 0x1

    .line 845
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 846
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_31
    move v0, v1

    move v1, v0

    .line 849
    goto :goto_11

    .line 850
    :cond_34
    return v1
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/google/common/collect/ld;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ee;->b(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method
