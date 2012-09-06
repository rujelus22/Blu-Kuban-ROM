.class public LaM/bC;
.super LaM/y;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x6

    .line 34
    invoke-direct/range {p0 .. p6}, LaM/y;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;)V

    .line 35
    iget-object v0, p0, LaM/bC;->a:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->p()LS/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bn;->ay:C

    invoke-interface {v0, v1}, LS/g;->e(C)LS/f;

    move-result-object v0

    invoke-static {v0}, LS/j;->d(LS/f;)LS/f;

    move-result-object v0

    .line 37
    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Lcom/google/googlenav/layer/m;->a(I)Lcom/google/googlenav/e;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_36

    .line 39
    invoke-virtual {v1}, Lcom/google/googlenav/e;->a()LS/f;

    move-result-object v1

    .line 40
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v2

    .line 41
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v3

    .line 42
    invoke-interface {v0}, LS/f;->c()LS/e;

    move-result-object v4

    invoke-interface {v4, v1, v2, v3}, LS/e;->a(LS/f;II)V

    .line 44
    :cond_36
    invoke-virtual {p0, v0}, LaM/bC;->a(LS/f;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ui/u;Lcom/google/googlenav/E;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-interface {p2}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_2e

    .line 66
    iget-object v1, p0, LaM/bC;->c:Lat/p;

    iget-object v2, p0, LaM/bC;->e:Landroid/graphics/Point;

    invoke-virtual {v1, v0, v2}, Lat/p;->a(Lat/B;Landroid/graphics/Point;)V

    .line 67
    iget-object v0, p0, LaM/bC;->a:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->y()LS/g;

    move-result-object v0

    .line 68
    sget-char v1, Lcom/google/googlenav/ui/bn;->l:C

    .line 69
    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->b()LS/e;

    move-result-object v2

    iget-object v3, p0, LaM/bC;->e:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-interface {v0, v1}, LS/g;->c(C)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, LaM/bC;->e:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v1}, LS/g;->b(C)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, LS/g;->a(CLS/e;II)Z

    .line 73
    :cond_2e
    return-void
.end method

.method public aL()LS/f;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, LaM/bC;->n:LS/f;

    if-nez v0, :cond_9

    invoke-super {p0}, LaM/y;->aL()LS/f;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, LaM/bC;->n:LS/f;

    goto :goto_8
.end method

.method public b(Lcom/google/googlenav/E;)I
    .registers 4
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, LaM/bC;->a:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->y()LS/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bn;->k:C

    invoke-interface {v0, v1}, LS/g;->c(C)I

    move-result v0

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0xb

    div-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public c(Lcom/google/googlenav/E;)I
    .registers 4
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, LaM/bC;->a:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->y()LS/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bn;->k:C

    invoke-interface {v0, v1}, LS/g;->b(C)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method protected d(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 97
    const/4 v0, 0x2

    return v0
.end method

.method protected e(Lcom/google/googlenav/E;)I
    .registers 4
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, LaM/bC;->a:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->y()LS/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bn;->k:C

    invoke-interface {v0, v1}, LS/g;->c(C)I

    move-result v0

    return v0
.end method

.method protected e(Lcom/google/googlenav/ui/u;)V
    .registers 3
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, LaM/bC;->f:Lcom/google/googlenav/F;

    invoke-virtual {p0, p1, v0}, LaM/bC;->a(Lcom/google/googlenav/ui/u;Lcom/google/googlenav/F;)V

    .line 60
    return-void
.end method

.method protected f(Lcom/google/googlenav/E;)I
    .registers 4
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, LaM/bC;->a:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->y()LS/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bn;->k:C

    invoke-interface {v0, v1}, LS/g;->b(C)I

    move-result v0

    return v0
.end method

.method protected i()LaO/a;
    .registers 2

    .prologue
    .line 49
    new-instance v0, LaO/k;

    invoke-direct {v0, p0}, LaO/k;-><init>(LaM/i;)V

    return-object v0
.end method
