.class final LalP;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements LafH;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LafH",
        "<",
        "Ljava/lang/Exception;",
        "TX;>;"
    }
.end annotation


# virtual methods
.method public a(Ljava/lang/Exception;)Ljava/lang/Exception;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")TX;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "impossible"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 108
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, LalP;->a(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method
