.class LagA;
.super LahG;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LahG",
        "<",
        "LagU",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lagy;


# direct methods
.method constructor <init>(Lagy;LagU;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3875
    iput-object p1, p0, LagA;->a:Lagy;

    invoke-direct {p0, p2}, LahG;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(LagU;)LagU;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;)",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3878
    invoke-interface {p1}, LagU;->b()LagU;

    move-result-object v0

    .line 3879
    iget-object v1, p0, LagA;->a:Lagy;

    iget-object v1, v1, Lagy;->a:LagU;

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 3875
    check-cast p1, LagU;

    invoke-virtual {p0, p1}, LagA;->a(LagU;)LagU;

    move-result-object v0

    return-object v0
.end method
