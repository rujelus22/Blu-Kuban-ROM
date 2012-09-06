.class public Lzp;
.super Lzq;
.source "Autogen.java"


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
    .line 33
    invoke-direct/range {p0 .. p5}, Lzq;-><init>(LBH;LBV;LyO;Lyg;LwH;)V

    .line 34
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
    .line 76
    iget-object v0, p0, Lzp;->a:LBV;

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

    .line 77
    invoke-virtual {v0}, LBV;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzr;

    invoke-interface {v0, p1, p2, p3}, Lzr;->a(IILjava/util/List;)V

    goto :goto_e

    .line 79
    :cond_24
    return-void
.end method

.method public a(LvZ;Lye;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 40
    iget-object v0, p0, Lzp;->a:LBH;

    invoke-virtual {v0}, LBH;->a()I

    move-result v0

    if-nez v0, :cond_34

    .line 41
    iget-object v0, p0, Lzp;->a:LBH;

    invoke-virtual {v0, v1}, LBH;->a(I)V

    .line 42
    iget-object v0, p0, Lzp;->a:LBH;

    invoke-virtual {v0}, LBH;->c()I

    move-result v0

    invoke-interface {p2, v0, v1}, Lye;->a(II)V

    .line 47
    :goto_18
    add-int/lit8 v0, p3, -0x1

    invoke-super {p0, p1, p2, v0}, Lzq;->a(LvZ;Lye;I)V

    .line 50
    iget-object v0, p0, Lzp;->a:LBH;

    invoke-virtual {v0}, LBH;->b()I

    move-result v0

    if-nez v0, :cond_3e

    .line 51
    iget-object v0, p0, Lzp;->a:LBH;

    invoke-virtual {v0, v1}, LBH;->b(I)V

    .line 52
    iget-object v0, p0, Lzp;->a:LBH;

    invoke-virtual {v0}, LBH;->g()I

    move-result v0

    invoke-interface {p2, v0, v1}, Lye;->a(II)V

    .line 56
    :goto_33
    return-void

    .line 44
    :cond_34
    iget-object v0, p0, Lzp;->a:LBH;

    invoke-virtual {v0}, LBH;->c()I

    move-result v0

    invoke-interface {p2, v0, v2}, Lye;->a(II)V

    goto :goto_18

    .line 54
    :cond_3e
    iget-object v0, p0, Lzp;->a:LBH;

    invoke-virtual {v0}, LBH;->g()I

    move-result v0

    invoke-interface {p2, v0, v2}, Lye;->a(II)V

    goto :goto_33
.end method

.method public a(IILAV;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lzp;->a:LBV;

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

    .line 61
    invoke-virtual {v0}, LBV;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzr;

    .line 62
    invoke-interface {v0, p1, p2, p3}, Lzr;->a(IILAV;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 63
    const/4 v0, 0x0

    .line 66
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x1

    goto :goto_23
.end method
