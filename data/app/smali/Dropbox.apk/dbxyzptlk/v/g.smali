.class final Ldbxyzptlk/v/g;
.super Ljava/util/AbstractSet;
.source "panda.py"


# instance fields
.field final synthetic a:Ldbxyzptlk/v/e;


# direct methods
.method constructor <init>(Ldbxyzptlk/v/e;)V
    .registers 2
    .parameter

    .prologue
    .line 1901
    iput-object p1, p0, Ldbxyzptlk/v/g;->a:Ldbxyzptlk/v/e;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 1945
    iget-object v0, p0, Ldbxyzptlk/v/g;->a:Ldbxyzptlk/v/e;

    invoke-virtual {v0}, Ldbxyzptlk/v/e;->clear()V

    .line 1946
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1910
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_6

    .line 1920
    :cond_5
    :goto_5
    return v0

    .line 1913
    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    .line 1914
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1915
    if-eqz v1, :cond_5

    .line 1918
    iget-object v2, p0, Ldbxyzptlk/v/g;->a:Ldbxyzptlk/v/e;

    invoke-virtual {v2, v1}, Ldbxyzptlk/v/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1920
    if-eqz v1, :cond_5

    iget-object v2, p0, Ldbxyzptlk/v/g;->a:Ldbxyzptlk/v/e;

    iget-object v2, v2, Ldbxyzptlk/v/e;->a:Ldbxyzptlk/v/r;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ldbxyzptlk/v/r;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 1940
    iget-object v0, p0, Ldbxyzptlk/v/g;->a:Ldbxyzptlk/v/e;

    invoke-virtual {v0}, Ldbxyzptlk/v/e;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 1905
    new-instance v0, Ldbxyzptlk/v/f;

    iget-object v1, p0, Ldbxyzptlk/v/g;->a:Ldbxyzptlk/v/e;

    invoke-direct {v0, v1}, Ldbxyzptlk/v/f;-><init>(Ldbxyzptlk/v/e;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1925
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_6

    .line 1930
    :cond_5
    :goto_5
    return v0

    .line 1928
    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    .line 1929
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1930
    if-eqz v1, :cond_5

    iget-object v2, p0, Ldbxyzptlk/v/g;->a:Ldbxyzptlk/v/e;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ldbxyzptlk/v/e;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 1935
    iget-object v0, p0, Ldbxyzptlk/v/g;->a:Ldbxyzptlk/v/e;

    invoke-virtual {v0}, Ldbxyzptlk/v/e;->size()I

    move-result v0

    return v0
.end method
