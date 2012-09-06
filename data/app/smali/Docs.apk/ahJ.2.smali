.class LahJ;
.super Ljava/util/AbstractMap;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LahI;

.field final transient a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field transient a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(LahI;Ljava/util/Map;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1173
    iput-object p1, p0, LahJ;->a:LahI;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1174
    iput-object p2, p0, LahJ;->a:Ljava/util/Map;

    .line 1175
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1191
    iget-object v0, p0, LahJ;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lakz;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1192
    if-nez v0, :cond_c

    .line 1193
    const/4 v0, 0x0

    .line 1197
    :goto_b
    return-object v0

    :cond_c
    iget-object v1, p0, LahJ;->a:LahI;

    invoke-static {v1, p1, v0}, LahI;->a(LahI;Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_b
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1210
    iget-object v0, p0, LahJ;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1211
    if-nez v0, :cond_c

    .line 1212
    const/4 v0, 0x0

    .line 1219
    :goto_b
    return-object v0

    .line 1215
    :cond_c
    iget-object v1, p0, LahJ;->a:LahI;

    invoke-virtual {v1}, LahI;->a()Ljava/util/Collection;

    move-result-object v1

    .line 1216
    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1217
    iget-object v2, p0, LahJ;->a:LahI;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v2, v3}, LahI;->b(LahI;I)I

    .line 1218
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    move-object v0, v1

    .line 1219
    goto :goto_b
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 1236
    iget-object v0, p0, LahJ;->a:Ljava/util/Map;

    iget-object v1, p0, LahJ;->a:LahI;

    invoke-static {v1}, LahI;->a(LahI;)Ljava/util/Map;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 1237
    iget-object v0, p0, LahJ;->a:LahI;

    invoke-virtual {v0}, LahI;->a()V

    .line 1242
    :goto_f
    return-void

    .line 1240
    :cond_10
    new-instance v0, LahL;

    invoke-direct {v0, p0}, LahL;-><init>(LahJ;)V

    invoke-static {v0}, LaiY;->a(Ljava/util/Iterator;)V

    goto :goto_f
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 1187
    iget-object v0, p0, LahJ;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lakz;->a(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1180
    iget-object v0, p0, LahJ;->a:Ljava/util/Set;

    .line 1181
    if-nez v0, :cond_b

    new-instance v0, LahK;

    invoke-direct {v0, p0}, LahK;-><init>(LahJ;)V

    iput-object v0, p0, LahJ;->a:Ljava/util/Set;

    :cond_b
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 1223
    if-eq p0, p1, :cond_a

    iget-object v0, p0, LahJ;->a:Ljava/util/Map;

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
    .registers 3
    .parameter

    .prologue
    .line 1166
    invoke-virtual {p0, p1}, LahJ;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1227
    iget-object v0, p0, LahJ;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1201
    iget-object v0, p0, LahJ;->a:LahI;

    invoke-virtual {v0}, LahI;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1166
    invoke-virtual {p0, p1}, LahJ;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1206
    iget-object v0, p0, LahJ;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1231
    iget-object v0, p0, LahJ;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
