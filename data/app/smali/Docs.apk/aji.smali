.class Laji;
.super Laip;
.source "LinkedHashMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laip",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lajh;

.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lajh;Ljava/lang/Object;Ljava/util/Set;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Set",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 174
    iput-object p1, p0, Laji;->a:Lajh;

    invoke-direct {p0}, Laip;-><init>()V

    .line 175
    iput-object p3, p0, Laji;->a:Ljava/util/Set;

    .line 176
    iput-object p2, p0, Laji;->a:Ljava/lang/Object;

    .line 177
    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 170
    invoke-virtual {p0}, Laji;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 170
    invoke-virtual {p0}, Laji;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TE;>;>;"
        }
    .end annotation

    .prologue
    .line 189
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lajk;->a(I)Ljava/util/ArrayList;

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
    invoke-virtual {p0, v2}, Laji;->a(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 194
    :cond_1e
    return-object v0
.end method

.method a(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljava/util/Map$Entry",
            "<TK;TE;>;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Laji;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lakz;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Laji;->a:Ljava/util/Set;

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Laji;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 199
    if-eqz v0, :cond_13

    .line 200
    iget-object v1, p0, Laji;->a:Lajh;

    iget-object v1, v1, Lajh;->a:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Laji;->a(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_13
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Laji;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 207
    if-eqz v0, :cond_17

    .line 208
    iget-object v1, p0, Laji;->a:Lajh;

    iget-object v1, v1, Lajh;->a:Ljava/util/Collection;

    invoke-virtual {p0}, Laji;->a()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, v2}, Laji;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 210
    :cond_17
    return v0
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 214
    iget-object v0, p0, Laji;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 215
    iget-object v2, p0, Laji;->a:Lajh;

    iget-object v2, v2, Lajh;->a:Ljava/util/Collection;

    invoke-virtual {p0, v1}, Laji;->a(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 217
    :cond_1c
    iget-object v0, p0, Laji;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 218
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Laji;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 222
    new-instance v1, Lajj;

    invoke-direct {v1, p0, v0}, Lajj;-><init>(Laji;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Laji;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 244
    if-eqz v0, :cond_13

    .line 249
    iget-object v1, p0, Laji;->a:Lajh;

    iget-object v1, v1, Lajh;->a:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Laji;->a(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 251
    :cond_13
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Laji;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 256
    if-eqz v0, :cond_13

    .line 257
    iget-object v1, p0, Laji;->a:Lajh;

    iget-object v1, v1, Lajh;->a:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Laji;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 259
    :cond_13
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 268
    iget-object v1, p0, Laji;->a:Ljava/util/Set;

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
    iget-object v0, p0, Laji;->a:Lajh;

    iget-object v0, v0, Lajh;->a:Ljava/util/Collection;

    iget-object v3, p0, Laji;->a:Ljava/lang/Object;

    invoke-static {v3, v2}, Lakz;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 274
    const/4 v0, 0x1

    goto :goto_7

    .line 277
    :cond_29
    return v0
.end method
