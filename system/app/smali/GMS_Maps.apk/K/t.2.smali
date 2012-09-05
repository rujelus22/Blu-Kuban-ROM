.class LK/t;
.super Ljava/util/AbstractSet;


# instance fields
.field final synthetic a:LK/s;


# direct methods
.method constructor <init>(LK/s;)V
    .registers 2

    iput-object p1, p0, LK/t;->a:LK/s;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, LK/t;->a:LK/s;

    iget-object v0, v0, LK/s;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, LK/J;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, LK/u;

    iget-object v1, p0, LK/t;->a:LK/s;

    invoke-direct {v0, v1}, LK/u;-><init>(LK/s;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    invoke-virtual {p0, p1}, LK/t;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, LK/t;->a:LK/s;

    iget-object v0, v0, LK/s;->c:LK/r;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, LK/r;->a(LK/r;Ljava/lang/Object;)I

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, LK/t;->a:LK/s;

    iget-object v0, v0, LK/s;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
