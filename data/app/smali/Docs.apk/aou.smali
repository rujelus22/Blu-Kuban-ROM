.class final Laou;
.super Ljava/lang/Object;
.source "ConstructorInjectorStore.java"


# instance fields
.field private final a:LaoI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaoI",
            "<",
            "Laqt;",
            "Laos",
            "<*>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Laqt;Laoy;)Laos;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqt;",
            "Laoy;",
            ")",
            "Laos",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Laou;->a:LaoI;

    invoke-virtual {v0, p1, p2}, LaoI;->b(Ljava/lang/Object;Laoy;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laos;

    return-object v0
.end method

.method a(Laqt;)Z
    .registers 3
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Laou;->a:LaoI;

    invoke-virtual {v0, p1}, LaoI;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
