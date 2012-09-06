.class final LapB;
.super Ljava/lang/Object;
.source "ProvisionListenerCallbackStore.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "LapC;",
            "LapD",
            "<*>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Lang;)LapD;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lang",
            "<TT;>;)",
            "LapD",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, LapB;->a:Ljava/util/Map;

    new-instance v1, LapC;

    invoke-interface {p1}, Lang;->a()Lant;

    move-result-object v2

    invoke-direct {v1, v2, p1}, LapC;-><init>(Lant;Lang;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LapD;

    return-object v0
.end method

.method a(Lang;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lang",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, LapB;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
