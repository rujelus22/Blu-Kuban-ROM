.class final Lcom/google/common/collect/cz;
.super Lcom/google/common/collect/bt;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Set;

.field final b:Ljava/lang/Object;

.field final synthetic c:Lcom/google/common/collect/LinkedHashMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;Ljava/util/Set;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/common/collect/cz;->c:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/bt;-><init>()V

    .line 172
    iput-object p3, p0, Lcom/google/common/collect/cz;->a:Ljava/util/Set;

    .line 173
    iput-object p2, p0, Lcom/google/common/collect/cz;->b:Ljava/lang/Object;

    .line 174
    return-void
.end method

.method private a(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5
    .parameter

    .prologue
    .line 186
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 188
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 189
    invoke-virtual {p0, v2}, Lcom/google/common/collect/cz;->a(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 191
    :cond_1e
    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/common/collect/cz;->b:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final add(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 196
    if-eqz v0, :cond_13

    .line 197
    iget-object v1, p0, Lcom/google/common/collect/cz;->c:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/cz;->a(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_13
    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 5
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 204
    if-eqz v0, :cond_15

    .line 205
    iget-object v1, p0, Lcom/google/common/collect/cz;->c:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    iget-object v2, p0, Lcom/google/common/collect/cz;->a:Ljava/util/Set;

    invoke-direct {p0, v2}, Lcom/google/common/collect/cz;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 207
    :cond_15
    return v0
.end method

.method public final clear()V
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/common/collect/cz;->c:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v0, v0, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/cz;->a:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/google/common/collect/cz;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 212
    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 213
    return-void
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Ljava/util/Set;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 217
    new-instance v1, Lcom/google/common/collect/da;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/da;-><init>(Lcom/google/common/collect/cz;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 236
    if-eqz v0, :cond_13

    .line 241
    iget-object v1, p0, Lcom/google/common/collect/cz;->c:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/cz;->a(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 243
    :cond_13
    return v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 5
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 248
    if-eqz v0, :cond_13

    .line 249
    iget-object v1, p0, Lcom/google/common/collect/cz;->c:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    invoke-direct {p0, p1}, Lcom/google/common/collect/cz;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 251
    :cond_13
    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 6
    .parameter

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 260
    iget-object v1, p0, Lcom/google/common/collect/cz;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 261
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 262
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 263
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 264
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 265
    iget-object v0, p0, Lcom/google/common/collect/cz;->c:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v0, v0, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    iget-object v3, p0, Lcom/google/common/collect/cz;->b:Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 266
    const/4 v0, 0x1

    goto :goto_7

    .line 269
    :cond_29
    return v0
.end method
