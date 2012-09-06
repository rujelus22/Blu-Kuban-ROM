.class final Lahs;
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
    .line 3622
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3623
    new-instance v0, Laht;

    invoke-direct {v0, p0}, Laht;-><init>(Lahs;)V

    iput-object v0, p0, Lahs;->a:LagU;

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
    .line 3674
    iget-object v0, p0, Lahs;->a:LagU;

    invoke-interface {v0}, LagU;->d()LagU;

    move-result-object v0

    .line 3675
    iget-object v1, p0, Lahs;->a:LagU;

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
    .line 3663
    invoke-interface {p1}, LagU;->e()LagU;

    move-result-object v0

    invoke-interface {p1}, LagU;->d()LagU;

    move-result-object v1

    invoke-static {v0, v1}, Lagu;->b(LagU;LagU;)V

    .line 3666
    iget-object v0, p0, Lahs;->a:LagU;

    invoke-interface {v0}, LagU;->e()LagU;

    move-result-object v0

    invoke-static {v0, p1}, Lagu;->b(LagU;LagU;)V

    .line 3667
    iget-object v0, p0, Lahs;->a:LagU;

    invoke-static {p1, v0}, Lagu;->b(LagU;LagU;)V

    .line 3669
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
    .line 3680
    iget-object v0, p0, Lahs;->a:LagU;

    invoke-interface {v0}, LagU;->d()LagU;

    move-result-object v0

    .line 3681
    iget-object v1, p0, Lahs;->a:LagU;

    if-ne v0, v1, :cond_c

    .line 3682
    const/4 v0, 0x0

    .line 3686
    :goto_b
    return-object v0

    .line 3685
    :cond_c
    invoke-virtual {p0, v0}, Lahs;->remove(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 3725
    iget-object v0, p0, Lahs;->a:LagU;

    invoke-interface {v0}, LagU;->d()LagU;

    move-result-object v0

    .line 3726
    :goto_6
    iget-object v1, p0, Lahs;->a:LagU;

    if-eq v0, v1, :cond_13

    .line 3727
    invoke-interface {v0}, LagU;->d()LagU;

    move-result-object v1

    .line 3728
    invoke-static {v0}, Lagu;->c(LagU;)V

    move-object v0, v1

    .line 3730
    goto :goto_6

    .line 3732
    :cond_13
    iget-object v0, p0, Lahs;->a:LagU;

    iget-object v1, p0, Lahs;->a:LagU;

    invoke-interface {v0, v1}, LagU;->c(LagU;)V

    .line 3733
    iget-object v0, p0, Lahs;->a:LagU;

    iget-object v1, p0, Lahs;->a:LagU;

    invoke-interface {v0, v1}, LagU;->d(LagU;)V

    .line 3734
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 3704
    check-cast p1, LagU;

    .line 3705
    invoke-interface {p1}, LagU;->d()LagU;

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
    .line 3710
    iget-object v0, p0, Lahs;->a:LagU;

    invoke-interface {v0}, LagU;->d()LagU;

    move-result-object v0

    iget-object v1, p0, Lahs;->a:LagU;

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
    .line 3738
    new-instance v0, Lahu;

    invoke-virtual {p0}, Lahs;->a()LagU;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lahu;-><init>(Lahs;LagU;)V

    return-object v0
.end method

.method public synthetic offer(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 3622
    check-cast p1, LagU;

    invoke-virtual {p0, p1}, Lahs;->a(LagU;)Z

    move-result v0

    return v0
.end method

.method public synthetic peek()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3622
    invoke-virtual {p0}, Lahs;->a()LagU;

    move-result-object v0

    return-object v0
.end method

.method public synthetic poll()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3622
    invoke-virtual {p0}, Lahs;->b()LagU;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 3692
    check-cast p1, LagU;

    .line 3693
    invoke-interface {p1}, LagU;->e()LagU;

    move-result-object v0

    .line 3694
    invoke-interface {p1}, LagU;->d()LagU;

    move-result-object v1

    .line 3695
    invoke-static {v0, v1}, Lagu;->b(LagU;LagU;)V

    .line 3696
    invoke-static {p1}, Lagu;->c(LagU;)V

    .line 3698
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
    .line 3715
    const/4 v1, 0x0

    .line 3716
    iget-object v0, p0, Lahs;->a:LagU;

    invoke-interface {v0}, LagU;->d()LagU;

    move-result-object v0

    :goto_7
    iget-object v2, p0, Lahs;->a:LagU;

    if-eq v0, v2, :cond_12

    .line 3718
    add-int/lit8 v1, v1, 0x1

    .line 3717
    invoke-interface {v0}, LagU;->d()LagU;

    move-result-object v0

    goto :goto_7

    .line 3720
    :cond_12
    return v1
.end method
