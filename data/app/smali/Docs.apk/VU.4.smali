.class public LVU;
.super Ljava/lang/Object;
.source "SyncAlgorithms.java"


# direct methods
.method public static a(Ljava/util/Collection;)LVT;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "LVT;",
            ">;)",
            "LVT;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 58
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVT;

    .line 60
    :goto_11
    return-object v0

    :cond_12
    new-instance v0, LVW;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LVW;-><init>(Ljava/util/Collection;LVV;)V

    goto :goto_11
.end method
