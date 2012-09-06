.class public abstract LzB;
.super Lzu;
.source "UnitElement.java"


# direct methods
.method public constructor <init>(LBH;LBV;)V
    .registers 3
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lzu;-><init>(LBH;LBV;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, LzB;->a:LBV;

    invoke-virtual {v0}, LBV;->c()I

    move-result v0

    return v0
.end method

.method protected a(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 61
    return-void
.end method

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
    .line 81
    iget-object v0, p0, LzB;->a:LBV;

    invoke-virtual {v0}, LBV;->c()I

    move-result v0

    if-gt p1, v0, :cond_2c

    iget-object v0, p0, LzB;->a:LBV;

    invoke-virtual {v0}, LBV;->c()I

    move-result v0

    if-lt p2, v0, :cond_2c

    .line 82
    iget-object v0, p0, LzB;->a:LBH;

    invoke-virtual {v0}, LBH;->c()I

    move-result v1

    .line 83
    iget-object v0, p0, LzB;->a:LBV;

    invoke-virtual {v0}, LBV;->d()I

    move-result v0

    if-lt p2, v0, :cond_2d

    iget-object v0, p0, LzB;->a:LBH;

    invoke-virtual {v0}, LBH;->d()I

    move-result v0

    .line 84
    :goto_24
    new-instance v2, LFt;

    invoke-direct {v2, v1, v0}, LFt;-><init>(II)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_2c
    return-void

    :cond_2d
    move v0, v1

    .line 83
    goto :goto_24
.end method

.method public a(LvZ;Lye;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3}, Lzu;->a(LvZ;Lye;I)V

    .line 43
    invoke-virtual {p0}, LzB;->b()V

    .line 44
    return-void
.end method

.method public a(IILAV;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public b(I)I
    .registers 3
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, LzB;->a:LBH;

    invoke-virtual {v0}, LBH;->c()I

    move-result v0

    return v0
.end method

.method protected abstract b()V
.end method

.method protected b(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 66
    return-void
.end method

.method protected c(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 71
    return-void
.end method
