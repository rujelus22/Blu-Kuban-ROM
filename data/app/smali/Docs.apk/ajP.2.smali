.class final LajP;
.super Ljava/util/AbstractSet;
.source "MapMakerInternalMap.java"


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
.field final synthetic a:Lajx;


# direct methods
.method constructor <init>(Lajx;)V
    .registers 2
    .parameter

    .prologue
    .line 3885
    iput-object p1, p0, LajP;->a:Lajx;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 3929
    iget-object v0, p0, LajP;->a:Lajx;

    invoke-virtual {v0}, Lajx;->clear()V

    .line 3930
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3894
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_6

    .line 3904
    :cond_5
    :goto_5
    return v0

    .line 3897
    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    .line 3898
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3899
    if-eqz v1, :cond_5

    .line 3902
    iget-object v2, p0, LajP;->a:Lajx;

    invoke-virtual {v2, v1}, Lajx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3904
    if-eqz v1, :cond_5

    iget-object v2, p0, LajP;->a:Lajx;

    iget-object v2, v2, Lajx;->b:LafD;

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
    .line 3924
    iget-object v0, p0, LajP;->a:Lajx;

    invoke-virtual {v0}, Lajx;->isEmpty()Z

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
    .line 3889
    new-instance v0, LajO;

    iget-object v1, p0, LajP;->a:Lajx;

    invoke-direct {v0, v1}, LajO;-><init>(Lajx;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3909
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_6

    .line 3914
    :cond_5
    :goto_5
    return v0

    .line 3912
    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    .line 3913
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3914
    if-eqz v1, :cond_5

    iget-object v2, p0, LajP;->a:Lajx;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lajx;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public size()I
    .registers 2

    .prologue
    .line 3919
    iget-object v0, p0, LajP;->a:Lajx;

    invoke-virtual {v0}, Lajx;->size()I

    move-result v0

    return v0
.end method
