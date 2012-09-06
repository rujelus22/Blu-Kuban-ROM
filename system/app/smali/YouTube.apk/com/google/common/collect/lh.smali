.class final Lcom/google/common/collect/lh;
.super Lcom/google/common/collect/lr;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/le;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/le;)V
    .registers 4
    .parameter

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/google/common/collect/lh;->a:Lcom/google/common/collect/le;

    iget-object v0, p1, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/lr;-><init>(Lcom/google/common/collect/StandardTable;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/le;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1112
    invoke-direct {p0, p1}, Lcom/google/common/collect/lh;-><init>(Lcom/google/common/collect/le;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/google/common/collect/lh;->a:Lcom/google/common/collect/le;

    invoke-static {v0}, Lcom/google/common/collect/StandardTable;->valueIteratorImpl(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/google/common/collect/lh;->a:Lcom/google/common/collect/le;

    invoke-virtual {v0}, Lcom/google/common/collect/le;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1120
    iget-object v1, p0, Lcom/google/common/collect/lh;->a:Lcom/google/common/collect/le;

    iget-object v1, v1, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    #calls: Lcom/google/common/collect/StandardTable;->removeColumn(Ljava/lang/Object;)Ljava/util/Map;
    invoke-static {v1, v0}, Lcom/google/common/collect/StandardTable;->access$1100(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;

    .line 1121
    const/4 v0, 0x1

    .line 1124
    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 6
    .parameter

    .prologue
    .line 1128
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    const/4 v0, 0x0

    .line 1130
    iget-object v1, p0, Lcom/google/common/collect/lh;->a:Lcom/google/common/collect/le;

    iget-object v1, v1, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v1}, Lcom/google/common/collect/StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1131
    iget-object v3, p0, Lcom/google/common/collect/lh;->a:Lcom/google/common/collect/le;

    iget-object v3, v3, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/StandardTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1132
    iget-object v0, p0, Lcom/google/common/collect/lh;->a:Lcom/google/common/collect/le;

    iget-object v0, v0, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    #calls: Lcom/google/common/collect/StandardTable;->removeColumn(Ljava/lang/Object;)Ljava/util/Map;
    invoke-static {v0, v2}, Lcom/google/common/collect/StandardTable;->access$1100(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;

    .line 1133
    const/4 v0, 0x1

    goto :goto_18

    .line 1136
    :cond_39
    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 6
    .parameter

    .prologue
    .line 1140
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    const/4 v0, 0x0

    .line 1142
    iget-object v1, p0, Lcom/google/common/collect/lh;->a:Lcom/google/common/collect/le;

    iget-object v1, v1, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v1}, Lcom/google/common/collect/StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1143
    iget-object v3, p0, Lcom/google/common/collect/lh;->a:Lcom/google/common/collect/le;

    iget-object v3, v3, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/StandardTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 1144
    iget-object v0, p0, Lcom/google/common/collect/lh;->a:Lcom/google/common/collect/le;

    iget-object v0, v0, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    #calls: Lcom/google/common/collect/StandardTable;->removeColumn(Ljava/lang/Object;)Ljava/util/Map;
    invoke-static {v0, v2}, Lcom/google/common/collect/StandardTable;->access$1100(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;

    .line 1145
    const/4 v0, 0x1

    goto :goto_18

    .line 1148
    :cond_39
    return v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/google/common/collect/lh;->a:Lcom/google/common/collect/le;

    iget-object v0, v0, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
