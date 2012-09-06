.class LahK;
.super LakA;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LakA",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LahJ;


# direct methods
.method constructor <init>(LahJ;)V
    .registers 2
    .parameter

    .prologue
    .line 1244
    iput-object p1, p0, LahK;->a:LahJ;

    invoke-direct {p0}, LakA;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1247
    iget-object v0, p0, LahK;->a:LahJ;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 1257
    iget-object v0, p0, LahK;->a:LahJ;

    iget-object v0, v0, LahJ;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, LahZ;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1251
    new-instance v0, LahL;

    iget-object v1, p0, LahK;->a:LahJ;

    invoke-direct {v0, v1}, LahL;-><init>(LahJ;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 1261
    invoke-virtual {p0, p1}, LahK;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1262
    const/4 v0, 0x0

    .line 1266
    :goto_7
    return v0

    .line 1264
    :cond_8
    check-cast p1, Ljava/util/Map$Entry;

    .line 1265
    iget-object v0, p0, LahK;->a:LahJ;

    iget-object v0, v0, LahJ;->a:LahI;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, LahI;->a(LahI;Ljava/lang/Object;)I

    .line 1266
    const/4 v0, 0x1

    goto :goto_7
.end method
