.class Lcom/google/common/collect/hk;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Map;

.field final b:Lcom/google/common/collect/he;

.field c:Ljava/util/Set;

.field d:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/collect/he;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1164
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1165
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/collect/hk;->a:Ljava/util/Map;

    .line 1166
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/he;

    iput-object v0, p0, Lcom/google/common/collect/hk;->b:Lcom/google/common/collect/he;

    .line 1167
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/google/common/collect/hk;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1196
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/google/common/collect/hk;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/google/common/collect/hk;->c:Ljava/util/Set;

    .line 1206
    if-nez v0, :cond_b

    .line 1207
    new-instance v0, Lcom/google/common/collect/hl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/hl;-><init>(Lcom/google/common/collect/hk;)V

    iput-object v0, p0, Lcom/google/common/collect/hk;->c:Ljava/util/Set;

    .line 1227
    :cond_b
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/google/common/collect/hk;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1181
    if-nez v0, :cond_10

    iget-object v1, p0, Lcom/google/common/collect/hk;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_10
    iget-object v1, p0, Lcom/google/common/collect/hk;->b:Lcom/google/common/collect/he;

    invoke-interface {v1, v0}, Lcom/google/common/collect/he;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/google/common/collect/hk;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/google/common/collect/hk;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/common/collect/hk;->b:Lcom/google/common/collect/he;

    iget-object v1, p0, Lcom/google/common/collect/hk;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/he;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/google/common/collect/hk;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/google/common/collect/hk;->d:Ljava/util/Collection;

    .line 1234
    if-nez v0, :cond_b

    .line 1235
    new-instance v0, Lcom/google/common/collect/hn;

    invoke-direct {v0, p0}, Lcom/google/common/collect/hn;-><init>(Lcom/google/common/collect/hk;)V

    iput-object v0, p0, Lcom/google/common/collect/hk;->d:Ljava/util/Collection;

    .line 1241
    :cond_b
    return-object v0
.end method
