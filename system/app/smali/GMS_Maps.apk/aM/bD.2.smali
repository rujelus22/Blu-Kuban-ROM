.class public LaM/bD;
.super LaM/y;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct/range {p0 .. p6}, LaM/y;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;)V

    .line 36
    return-void
.end method


# virtual methods
.method public aB()Z
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public aK()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    const/16 v0, 0x249

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aL()LS/f;
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, LaM/bD;->a:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->p()LS/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bn;->ag:C

    invoke-interface {v0, v1}, LS/g;->e(C)LS/f;

    move-result-object v0

    return-object v0
.end method

.method public aM()Z
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public aT()Z
    .registers 2

    .prologue
    .line 107
    invoke-virtual {p0}, LaM/bD;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 108
    invoke-super {p0}, LaM/y;->aT()Z

    .line 111
    :cond_11
    invoke-virtual {p0}, LaM/bD;->bI()V

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public aU()V
    .registers 2

    .prologue
    .line 118
    invoke-virtual {p0}, LaM/bD;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 119
    invoke-super {p0}, LaM/y;->aU()V

    .line 122
    :cond_11
    invoke-virtual {p0}, LaM/bD;->bJ()V

    .line 123
    return-void
.end method

.method public av()I
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x7

    return v0
.end method

.method public b(Lat/B;)I
    .registers 3
    .parameter

    .prologue
    .line 73
    invoke-virtual {p0}, LaM/bD;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 74
    const/4 v0, -0x1

    .line 76
    :goto_f
    return v0

    :cond_10
    invoke-super {p0, p1}, LaM/y;->b(Lat/B;)I

    move-result v0

    goto :goto_f
.end method

.method protected bE()V
    .registers 1

    .prologue
    .line 85
    return-void
.end method

.method protected bI()V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, LaM/bD;->i:Lcom/google/googlenav/ui/ac;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/ac;->a(Z)V

    .line 93
    return-void
.end method

.method protected bJ()V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, LaM/bD;->i:Lcom/google/googlenav/ui/ac;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/ac;->a(Z)V

    .line 101
    return-void
.end method

.method protected bv()Z
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method
