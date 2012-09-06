.class public Lzy;
.super Lzq;
.source "Section.java"


# direct methods
.method public constructor <init>(LBH;LBV;LyO;Lyg;LwH;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBH",
            "<",
            "Lzr;",
            ">;",
            "LBV",
            "<",
            "Lzr;",
            ">;",
            "LyO;",
            "Lyg;",
            "LwH;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct/range {p0 .. p5}, Lzq;-><init>(LBH;LBV;LyO;Lyg;LwH;)V

    .line 32
    return-void
.end method


# virtual methods
.method public a(IILjava/util/List;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "LFt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lzy;->a:LBV;

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v1, v2}, LBV;->a(II)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBV;

    .line 85
    invoke-virtual {v0}, LBV;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzr;

    invoke-interface {v0, p1, p2, p3}, Lzr;->a(IILjava/util/List;)V

    goto :goto_e

    .line 87
    :cond_24
    return-void
.end method

.method public a(LvZ;Lye;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 37
    iget-object v0, p0, Lzy;->a:LBH;

    invoke-virtual {v0}, LBH;->e()I

    move-result v0

    if-nez v0, :cond_1b

    .line 39
    iget-object v0, p0, Lzy;->a:LBH;

    invoke-virtual {v0, v1}, LBH;->a(I)V

    .line 40
    iget-object v0, p0, Lzy;->a:LBH;

    invoke-virtual {v0}, LBH;->c()I

    move-result v0

    invoke-interface {p2, v0, v1}, Lye;->a(II)V

    .line 45
    :goto_17
    invoke-super {p0, p1, p2, p3}, Lzq;->a(LvZ;Lye;I)V

    .line 46
    return-void

    .line 42
    :cond_1b
    iget-object v0, p0, Lzy;->a:LBH;

    invoke-virtual {v0}, LBH;->c()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lye;->a(II)V

    goto :goto_17
.end method

.method public a(Lye;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 50
    invoke-super {p0, p1}, Lzq;->a(Lye;)V

    .line 51
    iget-object v0, p0, Lzy;->a:LBH;

    invoke-virtual {v0}, LBH;->e()I

    move-result v0

    if-lez v0, :cond_1a

    .line 52
    iget-object v0, p0, Lzy;->a:LBH;

    invoke-virtual {v0, v1}, LBH;->a(I)V

    .line 54
    iget-object v0, p0, Lzy;->a:LBH;

    invoke-virtual {v0}, LBH;->c()I

    move-result v0

    invoke-interface {p1, v0, v1}, Lye;->b(II)V

    .line 56
    :cond_1a
    return-void
.end method

.method public a(IILAV;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lzy;->a:LBV;

    invoke-virtual {v0, p1, p2}, LBV;->a(II)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBV;

    .line 71
    invoke-virtual {v0}, LBV;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzr;

    .line 72
    invoke-interface {v0, p1, p2, p3}, Lzr;->a(IILAV;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 73
    const/4 v0, 0x0

    .line 76
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x1

    goto :goto_23
.end method

.method public b(I)I
    .registers 3
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lzy;->a:LBV;

    invoke-virtual {v0}, LBV;->d()I

    move-result v0

    if-ne p1, v0, :cond_11

    .line 63
    iget-object v0, p0, Lzy;->a:LBH;

    invoke-virtual {v0}, LBH;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 65
    :goto_10
    return v0

    :cond_11
    invoke-super {p0, p1}, Lzq;->b(I)I

    move-result v0

    goto :goto_10
.end method
