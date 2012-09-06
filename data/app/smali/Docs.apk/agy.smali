.class final Lagy;
.super Ljava/util/AbstractQueue;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<",
        "LagU",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final a:LagU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 3759
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3760
    new-instance v0, Lagz;

    invoke-direct {v0, p0}, Lagz;-><init>(Lagy;)V

    iput-object v0, p0, Lagy;->a:LagU;

    return-void
.end method


# virtual methods
.method public a()LagU;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3811
    iget-object v0, p0, Lagy;->a:LagU;

    invoke-interface {v0}, LagU;->b()LagU;

    move-result-object v0

    .line 3812
    iget-object v1, p0, Lagy;->a:LagU;

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method

.method public a(LagU;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3800
    invoke-interface {p1}, LagU;->c()LagU;

    move-result-object v0

    invoke-interface {p1}, LagU;->b()LagU;

    move-result-object v1

    invoke-static {v0, v1}, Lagu;->a(LagU;LagU;)V

    .line 3803
    iget-object v0, p0, Lagy;->a:LagU;

    invoke-interface {v0}, LagU;->c()LagU;

    move-result-object v0

    invoke-static {v0, p1}, Lagu;->a(LagU;LagU;)V

    .line 3804
    iget-object v0, p0, Lagy;->a:LagU;

    invoke-static {p1, v0}, Lagu;->a(LagU;LagU;)V

    .line 3806
    const/4 v0, 0x1

    return v0
.end method

.method public b()LagU;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3817
    iget-object v0, p0, Lagy;->a:LagU;

    invoke-interface {v0}, LagU;->b()LagU;

    move-result-object v0

    .line 3818
    iget-object v1, p0, Lagy;->a:LagU;

    if-ne v0, v1, :cond_c

    .line 3819
    const/4 v0, 0x0

    .line 3823
    :goto_b
    return-object v0

    .line 3822
    :cond_c
    invoke-virtual {p0, v0}, Lagy;->remove(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 3862
    iget-object v0, p0, Lagy;->a:LagU;

    invoke-interface {v0}, LagU;->b()LagU;

    move-result-object v0

    .line 3863
    :goto_6
    iget-object v1, p0, Lagy;->a:LagU;

    if-eq v0, v1, :cond_13

    .line 3864
    invoke-interface {v0}, LagU;->b()LagU;

    move-result-object v1

    .line 3865
    invoke-static {v0}, Lagu;->b(LagU;)V

    move-object v0, v1

    .line 3867
    goto :goto_6

    .line 3869
    :cond_13
    iget-object v0, p0, Lagy;->a:LagU;

    iget-object v1, p0, Lagy;->a:LagU;

    invoke-interface {v0, v1}, LagU;->a(LagU;)V

    .line 3870
    iget-object v0, p0, Lagy;->a:LagU;

    iget-object v1, p0, Lagy;->a:LagU;

    invoke-interface {v0, v1}, LagU;->b(LagU;)V

    .line 3871
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 3841
    check-cast p1, LagU;

    .line 3842
    invoke-interface {p1}, LagU;->b()LagU;

    move-result-object v0

    sget-object v1, LagT;->a:LagT;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .line 3847
    iget-object v0, p0, Lagy;->a:LagU;

    invoke-interface {v0}, LagU;->b()LagU;

    move-result-object v0

    iget-object v1, p0, Lagy;->a:LagU;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "LagU",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3875
    new-instance v0, LagA;

    invoke-virtual {p0}, Lagy;->a()LagU;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LagA;-><init>(Lagy;LagU;)V

    return-object v0
.end method

.method public synthetic offer(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 3759
    check-cast p1, LagU;

    invoke-virtual {p0, p1}, Lagy;->a(LagU;)Z

    move-result v0

    return v0
.end method

.method public synthetic peek()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3759
    invoke-virtual {p0}, Lagy;->a()LagU;

    move-result-object v0

    return-object v0
.end method

.method public synthetic poll()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3759
    invoke-virtual {p0}, Lagy;->b()LagU;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 3829
    check-cast p1, LagU;

    .line 3830
    invoke-interface {p1}, LagU;->c()LagU;

    move-result-object v0

    .line 3831
    invoke-interface {p1}, LagU;->b()LagU;

    move-result-object v1

    .line 3832
    invoke-static {v0, v1}, Lagu;->a(LagU;LagU;)V

    .line 3833
    invoke-static {p1}, Lagu;->b(LagU;)V

    .line 3835
    sget-object v0, LagT;->a:LagT;

    if-eq v1, v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public size()I
    .registers 4

    .prologue
    .line 3852
    const/4 v1, 0x0

    .line 3853
    iget-object v0, p0, Lagy;->a:LagU;

    invoke-interface {v0}, LagU;->b()LagU;

    move-result-object v0

    :goto_7
    iget-object v2, p0, Lagy;->a:LagU;

    if-eq v0, v2, :cond_12

    .line 3855
    add-int/lit8 v1, v1, 0x1

    .line 3854
    invoke-interface {v0}, LagU;->b()LagU;

    move-result-object v0

    goto :goto_7

    .line 3857
    :cond_12
    return v1
.end method
