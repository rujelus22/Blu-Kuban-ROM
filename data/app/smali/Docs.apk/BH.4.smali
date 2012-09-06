.class public LBH;
.super LBJ;
.source "ManualOffsetTreeNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NodeOwner:",
        "Ljava/lang/Object;",
        ">",
        "LBJ",
        "<TNodeOwner;",
        "LBH",
        "<TNodeOwner;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(LFr;LFr;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFr",
            "<TNodeOwner;>;",
            "LFr",
            "<TNodeOwner;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, LBJ;-><init>(LFr;LFr;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, LBH;->a:LFr;

    invoke-interface {v0}, LFr;->b()I

    move-result v0

    return v0
.end method

.method protected a(LFr;LFr;)LBH;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFr",
            "<TNodeOwner;>;",
            "LFr",
            "<TNodeOwner;>;)",
            "LBH",
            "<TNodeOwner;>;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, LBH;

    invoke-direct {v0, p1, p2}, LBH;-><init>(LFr;LFr;)V

    return-object v0
.end method

.method protected bridge synthetic a(LFr;LFr;)LBJ;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, LBH;->a(LFr;LFr;)LBH;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TNodeOwner;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, LBH;->a:LFr;

    invoke-interface {v0}, LFr;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, LBH;->a:LFr;

    invoke-interface {v0, p1}, LFr;->a(I)V

    .line 53
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TNodeOwner;)V"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, LBH;->a:LFr;

    invoke-interface {v0, p1}, LFr;->a(Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, LBH;->b:LFr;

    invoke-interface {v0, p1}, LFr;->a(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, LBH;->b:LFr;

    invoke-interface {v0}, LFr;->b()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .registers 3
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, LBH;->b:LFr;

    invoke-interface {v0, p1}, LFr;->a(I)V

    .line 63
    return-void
.end method
