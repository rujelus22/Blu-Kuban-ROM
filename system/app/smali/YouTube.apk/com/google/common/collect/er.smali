.class final Lcom/google/common/collect/er;
.super Lcom/google/common/collect/dc;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Set;

.field final b:Ljava/lang/Object;

.field final synthetic c:Lcom/google/common/collect/LinkedHashMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;Ljava/util/Set;)V
    .registers 4
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/common/collect/er;->c:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/dc;-><init>()V

    .line 175
    iput-object p3, p0, Lcom/google/common/collect/er;->a:Ljava/util/Set;

    .line 176
    iput-object p2, p0, Lcom/google/common/collect/er;->b:Ljava/lang/Object;

    .line 177
    return-void
.end method

.method private a(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5
    .parameter

    .prologue
    .line 189
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 191
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 192
    invoke-virtual {p0, v2}, Lcom/google/common/collect/er;->a(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 194
    :cond_1e
    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/common/collect/er;->b:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/common/collect/er;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final add(Ljava/lang/Object;)Z
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/common/collect/er;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 199
    if-eqz v0, :cond_13

    .line 200
    iget-object v1, p0, Lcom/google/common/collect/er;->c:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/er;->a(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_13
    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 5
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/common/collect/er;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 207
    if-eqz v0, :cond_15

    .line 208
    iget-object v1, p0, Lcom/google/common/collect/er;->c:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    iget-object v2, p0, Lcom/google/common/collect/er;->a:Ljava/util/Set;

    invoke-direct {p0, v2}, Lcom/google/common/collect/er;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 210
    :cond_15
    return v0
.end method

.method public final clear()V
    .registers 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/common/collect/er;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 215
    iget-object v2, p0, Lcom/google/common/collect/er;->c:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v2, v2, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/er;->a(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 217
    :cond_1c
    iget-object v0, p0, Lcom/google/common/collect/er;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 218
    return-void
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/common/collect/er;->a:Ljava/util/Set;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/common/collect/er;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/common/collect/er;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 222
    new-instance v1, Lcom/google/common/collect/es;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/es;-><init>(Lcom/google/common/collect/er;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/common/collect/er;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 244
    if-eqz v0, :cond_13

    .line 249
    iget-object v1, p0, Lcom/google/common/collect/er;->c:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/er;->a(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 251
    :cond_13
    return v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 5
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/common/collect/er;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 256
    if-eqz v0, :cond_13

    .line 257
    iget-object v1, p0, Lcom/google/common/collect/er;->c:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    invoke-direct {p0, p1}, Lcom/google/common/collect/er;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 259
    :cond_13
    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 6
    .parameter

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 268
    iget-object v1, p0, Lcom/google/common/collect/er;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 269
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 270
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 271
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 272
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 273
    iget-object v0, p0, Lcom/google/common/collect/er;->c:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v0, v0, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    iget-object v3, p0, Lcom/google/common/collect/er;->b:Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 274
    const/4 v0, 0x1

    goto :goto_7

    .line 277
    :cond_29
    return v0
.end method
