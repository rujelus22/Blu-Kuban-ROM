.class final Lapj;
.super Ljava/lang/Object;
.source "MembersInjectorStore.java"


# instance fields
.field private final a:LaoI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaoI",
            "<",
            "LanP",
            "<*>;",
            "Laph",
            "<*>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public a(LanP;Laoy;)Laph;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LanP",
            "<TT;>;",
            "Laoy;",
            ")",
            "Laph",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lapj;->a:LaoI;

    invoke-virtual {v0, p1, p2}, LaoI;->b(Ljava/lang/Object;Laoy;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laph;

    return-object v0
.end method

.method a(LanP;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanP",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lapj;->a:LaoI;

    invoke-virtual {v0, p1}, LaoI;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
