.class public Lanj;
.super Ljava/lang/RuntimeException;
.source "CreationException.java"


# instance fields
.field private final a:LaiE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiE",
            "<",
            "LaqF;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "LaqF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lanj;->a:LaiE;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 50
    const-string v0, "Guice creation errors"

    iget-object v1, p0, Lanj;->a:LaiE;

    invoke-static {v0, v1}, Laoy;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
