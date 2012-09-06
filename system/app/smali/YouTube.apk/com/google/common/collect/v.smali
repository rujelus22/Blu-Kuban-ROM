.class Lcom/google/common/collect/v;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field final transient a:Ljava/util/Map;

.field transient b:Ljava/util/Set;

.field final synthetic c:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/google/common/collect/v;->c:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1174
    iput-object p2, p0, Lcom/google/common/collect/v;->a:Ljava/util/Map;

    .line 1175
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/google/common/collect/v;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/v;->c:Lcom/google/common/collect/AbstractMultimap;

    #getter for: Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 1237
    iget-object v0, p0, Lcom/google/common/collect/v;->c:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->clear()V

    .line 1242
    :goto_f
    return-void

    .line 1240
    :cond_10
    new-instance v0, Lcom/google/common/collect/x;

    invoke-direct {v0, p0}, Lcom/google/common/collect/x;-><init>(Lcom/google/common/collect/v;)V

    invoke-static {v0}, Lcom/google/common/collect/ee;->e(Ljava/util/Iterator;)V

    goto :goto_f
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/google/common/collect/v;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->b(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/google/common/collect/v;->b:Ljava/util/Set;

    .line 1181
    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/w;

    invoke-direct {v0, p0}, Lcom/google/common/collect/w;-><init>(Lcom/google/common/collect/v;)V

    iput-object v0, p0, Lcom/google/common/collect/v;->b:Ljava/util/Set;

    :cond_b
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1223
    if-eq p0, p1, :cond_a

    iget-object v0, p0, Lcom/google/common/collect/v;->a:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/google/common/collect/v;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v1, p0, Lcom/google/common/collect/v;->c:Lcom/google/common/collect/AbstractMultimap;

    #calls: Lcom/google/common/collect/AbstractMultimap;->wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    invoke-static {v1, p1, v0}, Lcom/google/common/collect/AbstractMultimap;->access$400(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_b
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/google/common/collect/v;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/google/common/collect/v;->c:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/google/common/collect/v;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v1, p0, Lcom/google/common/collect/v;->c:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v1}, Lcom/google/common/collect/AbstractMultimap;->createCollection()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/google/common/collect/v;->c:Lcom/google/common/collect/AbstractMultimap;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/common/collect/AbstractMultimap;->access$220(Lcom/google/common/collect/AbstractMultimap;I)I

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    move-object v0, v1

    goto :goto_b
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/google/common/collect/v;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/google/common/collect/v;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
