.class final LagL;
.super Ljava/util/AbstractSet;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lagu;


# direct methods
.method constructor <init>(Lagu;)V
    .registers 2
    .parameter

    .prologue
    .line 4525
    iput-object p1, p0, LagL;->a:Lagu;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 4569
    iget-object v0, p0, LagL;->a:Lagu;

    invoke-virtual {v0}, Lagu;->clear()V

    .line 4570
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4534
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_6

    .line 4544
    :cond_5
    :goto_5
    return v0

    .line 4537
    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    .line 4538
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 4539
    if-eqz v1, :cond_5

    .line 4542
    iget-object v2, p0, LagL;->a:Lagu;

    invoke-virtual {v2, v1}, Lagu;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4544
    if-eqz v1, :cond_5

    iget-object v2, p0, LagL;->a:Lagu;

    iget-object v2, v2, Lagu;->b:LafD;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 4564
    iget-object v0, p0, LagL;->a:Lagu;

    invoke-virtual {v0}, Lagu;->isEmpty()Z

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
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 4529
    new-instance v0, LagK;

    iget-object v1, p0, LagL;->a:Lagu;

    invoke-direct {v0, v1}, LagK;-><init>(Lagu;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4549
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_6

    .line 4554
    :cond_5
    :goto_5
    return v0

    .line 4552
    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    .line 4553
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 4554
    if-eqz v1, :cond_5

    iget-object v2, p0, LagL;->a:Lagu;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lagu;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public size()I
    .registers 2

    .prologue
    .line 4559
    iget-object v0, p0, LagL;->a:Lagu;

    invoke-virtual {v0}, Lagu;->size()I

    move-result v0

    return v0
.end method
