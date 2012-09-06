.class Lyv;
.super Ljava/lang/Object;
.source "SpanList.java"

# interfaces
.implements LFs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LFs",
        "<",
        "LyD",
        "<TT;>;TT;>;"
    }
.end annotation


# virtual methods
.method public a(LFr;I)LBj;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFr",
            "<",
            "LyD",
            "<TT;>;>;I)TT;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-interface {p1}, LFr;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LyD;

    invoke-interface {v0}, LyD;->a()LBj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(LFr;I)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2}, Lyv;->a(LFr;I)LBj;

    move-result-object v0

    return-object v0
.end method
