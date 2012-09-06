.class final Lcom/google/common/collect/lf;
.super Lcom/google/common/collect/ls;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/le;


# direct methods
.method constructor <init>(Lcom/google/common/collect/le;)V
    .registers 4
    .parameter

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/google/common/collect/lf;->a:Lcom/google/common/collect/le;

    iget-object v0, p1, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ls;-><init>(Lcom/google/common/collect/StandardTable;B)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 1069
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_27

    .line 1070
    check-cast p1, Ljava/util/Map$Entry;

    .line 1071
    iget-object v0, p0, Lcom/google/common/collect/lf;->a:Lcom/google/common/collect/le;

    iget-object v0, v0, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1075
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 1076
    iget-object v1, p0, Lcom/google/common/collect/lf;->a:Lcom/google/common/collect/le;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/le;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1079
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/google/common/collect/lf;->a:Lcom/google/common/collect/le;

    iget-object v0, v0, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1052
    new-instance v1, Lcom/google/common/collect/lg;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/lg;-><init>(Lcom/google/common/collect/lf;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 1083
    invoke-virtual {p0, p1}, Lcom/google/common/collect/lf;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1084
    check-cast p1, Ljava/util/Map$Entry;

    .line 1085
    iget-object v0, p0, Lcom/google/common/collect/lf;->a:Lcom/google/common/collect/le;

    iget-object v0, v0, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    #calls: Lcom/google/common/collect/StandardTable;->removeColumn(Ljava/lang/Object;)Ljava/util/Map;
    invoke-static {v0, v1}, Lcom/google/common/collect/StandardTable;->access$1100(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;

    .line 1086
    const/4 v0, 0x1

    .line 1088
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 5
    .parameter

    .prologue
    .line 1092
    const/4 v0, 0x0

    .line 1093
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1094
    invoke-virtual {p0, v2}, Lcom/google/common/collect/lf;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_5

    .line 1096
    :cond_15
    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 7
    .parameter

    .prologue
    .line 1100
    const/4 v0, 0x0

    .line 1101
    iget-object v1, p0, Lcom/google/common/collect/lf;->a:Lcom/google/common/collect/le;

    iget-object v1, v1, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v1}, Lcom/google/common/collect/StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1102
    new-instance v3, Lcom/google/common/collect/ImmutableEntry;

    iget-object v4, p0, Lcom/google/common/collect/lf;->a:Lcom/google/common/collect/le;

    iget-object v4, v4, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v4, v2}, Lcom/google/common/collect/StandardTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1104
    iget-object v0, p0, Lcom/google/common/collect/lf;->a:Lcom/google/common/collect/le;

    iget-object v0, v0, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    #calls: Lcom/google/common/collect/StandardTable;->removeColumn(Ljava/lang/Object;)Ljava/util/Map;
    invoke-static {v0, v2}, Lcom/google/common/collect/StandardTable;->access$1100(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;

    .line 1105
    const/4 v0, 0x1

    goto :goto_15

    .line 1108
    :cond_3b
    return v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/google/common/collect/lf;->a:Lcom/google/common/collect/le;

    iget-object v0, v0, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
