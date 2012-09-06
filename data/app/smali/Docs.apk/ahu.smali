.class Lahu;
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
.field final synthetic a:Lahs;


# direct methods
.method constructor <init>(Lahs;LagU;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3738
    iput-object p1, p0, Lahu;->a:Lahs;

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
    .line 3741
    invoke-interface {p1}, LagU;->d()LagU;

    move-result-object v0

    .line 3742
    iget-object v1, p0, Lahu;->a:Lahs;

    iget-object v1, v1, Lahs;->a:LagU;

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 3738
    check-cast p1, LagU;

    invoke-virtual {p0, p1}, Lahu;->a(LagU;)LagU;

    move-result-object v0

    return-object v0
.end method
