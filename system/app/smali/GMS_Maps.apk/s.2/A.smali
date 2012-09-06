.class public Ls/a;
.super Ls/q;
.source "SourceFile"


# instance fields
.field private c:F

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ls/q;-><init>()V

    .line 34
    const/high16 v0, -0x4080

    iput v0, p0, Ls/a;->c:F

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/a;->d:Z

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/a;->e:Z

    return-void
.end method

.method private a(F)V
    .registers 4
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->p()V

    .line 173
    invoke-virtual {p0}, Ls/a;->aa()V

    .line 174
    iget v0, p0, Ls/a;->c:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3d

    .line 175
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ci;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v0

    add-float/2addr v0, p1

    iput v0, p0, Ls/a;->c:F

    .line 180
    :goto_28
    iget v0, p0, Ls/a;->c:F

    const/high16 v1, 0x41a8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Ls/a;->c:F

    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ls/a;->a(Z)V

    .line 183
    return-void

    .line 178
    :cond_3d
    iget v0, p0, Ls/a;->c:F

    add-float/2addr v0, p1

    iput v0, p0, Ls/a;->c:F

    goto :goto_28
.end method

.method private ai()Z
    .registers 8

    .prologue
    .line 248
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_1d

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lo/x;->z()J

    move-result-wide v3

    const-wide/16 v5, 0x7530

    add-long/2addr v3, v5

    cmp-long v0, v1, v3

    if-lez v0, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private b(Lo/I;)V
    .registers 4
    .parameter

    .prologue
    .line 261
    if-nez p1, :cond_24

    .line 262
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->q()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 264
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_24

    .line 266
    invoke-virtual {v0}, Lo/x;->k()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lo/x;->a(I)Lo/I;

    move-result-object p1

    .line 272
    :cond_24
    :goto_24
    if-eqz p1, :cond_52

    invoke-virtual {p1}, Lo/I;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-virtual {p1}, Lo/I;->b()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_52

    .line 278
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/app/cI;->setNavigationImageStep(Lo/I;)V

    .line 279
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->x()V

    .line 283
    :goto_46
    return-void

    .line 269
    :cond_47
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->b()Lo/I;

    move-result-object p1

    goto :goto_24

    .line 281
    :cond_52
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->y()V

    goto :goto_46
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->B()V

    .line 43
    const/high16 v0, -0x4080

    iput v0, p0, Ls/a;->c:F

    .line 44
    const-string v0, "UIState"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->b(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Ls/a;->b()V

    .line 46
    return-void
.end method

.method protected a(FFF)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->p()V

    .line 331
    invoke-virtual {p0}, Ls/a;->aa()V

    .line 332
    iput p1, p0, Ls/a;->c:F

    .line 333
    return-void
.end method

.method protected a(Lo/I;Lo/I;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 205
    invoke-virtual {p0, p2}, Ls/a;->a(Lo/I;)V

    .line 206
    invoke-direct {p0, p2}, Ls/a;->b(Lo/I;)V

    .line 207
    invoke-virtual {p0}, Ls/a;->m()V

    .line 208
    return-void
.end method

.method protected a(Lo/x;[Lo/x;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-super {p0, p1, p2}, Ls/q;->a(Lo/x;[Lo/x;)V

    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ls/a;->b(Lo/I;)V

    .line 221
    invoke-virtual {p0}, Ls/a;->m()V

    .line 222
    return-void
.end method

.method protected a(Z)V
    .registers 6
    .parameter

    .prologue
    .line 137
    invoke-virtual {p0}, Ls/a;->Y()Z

    move-result v0

    .line 142
    if-eqz v0, :cond_23

    iget-object v1, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->af()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_23

    iget-boolean v1, p0, Ls/a;->d:Z

    if-nez v1, :cond_23

    .line 145
    const/4 v1, 0x1

    iput-boolean v1, p0, Ls/a;->d:Z

    .line 146
    iget-object v1, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/app/cI;->m()V

    .line 149
    :cond_23
    iget-object v1, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v1

    iget-object v2, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v2

    iget v3, p0, Ls/a;->c:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/app/aN;FZ)V

    .line 151
    return-void
.end method

.method public b()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 50
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/cI;->setViewMode(I)V

    .line 52
    iget v0, p0, Ls/a;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1e

    .line 53
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->p()V

    .line 54
    invoke-virtual {p0}, Ls/a;->aa()V

    .line 56
    :cond_1e
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    if-nez v0, :cond_63

    .line 57
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/cI;->i(Z)V

    .line 65
    :goto_33
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->k()Lo/I;

    move-result-object v0

    invoke-virtual {p0, v0}, Ls/a;->a(Lo/I;)V

    .line 66
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->w()V

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ls/a;->b(Lo/I;)V

    .line 68
    invoke-virtual {p0}, Ls/a;->m()V

    .line 69
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->D()V

    .line 70
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/google/android/maps/driveabout/app/cI;->setAllowNonCenteredZoom(Z)V

    .line 71
    return-void

    .line 58
    :cond_63
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->z()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 59
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v1

    new-array v2, v2, [Lo/x;

    iget-object v3, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v3}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cI;->b(Lo/x;[Lo/x;)V

    goto :goto_33

    .line 63
    :cond_91
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/google/android/maps/driveabout/app/cI;->i(Z)V

    goto :goto_33
.end method

.method public c()V
    .registers 3

    .prologue
    .line 78
    iget-boolean v0, p0, Ls/a;->e:Z

    if-eqz v0, :cond_14

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/a;->e:Z

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ls/b;

    invoke-direct {v1, p0}, Ls/b;-><init>(Ls/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    :cond_14
    return-void
.end method

.method public d()V
    .registers 1

    .prologue
    .line 98
    invoke-virtual {p0}, Ls/a;->e()V

    .line 99
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->q()V

    .line 104
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->y()V

    .line 105
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->r()V

    .line 106
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->g(Z)V

    .line 107
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->F()V

    .line 108
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->setAllowNonCenteredZoom(Z)V

    .line 109
    return-void
.end method

.method protected f()I
    .registers 5

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 113
    iget-object v2, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aN;->j()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v2

    invoke-virtual {v2}, Lm/b;->hasBearing()Z

    move-result v2

    if-nez v2, :cond_20

    .line 115
    :cond_1e
    const/4 v0, 0x2

    .line 132
    :cond_1f
    :goto_1f
    return v0

    .line 117
    :cond_20
    iget-object v2, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aN;->v()Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aN;->w()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 125
    iget-object v2, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aN;->k()Lo/I;

    move-result-object v2

    .line 126
    iget-object v3, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v3}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v3

    if-eqz v3, :cond_62

    iget-object v3, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v3}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aN;->C()Lo/P;

    move-result-object v3

    if-eqz v3, :cond_62

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lo/I;->b()I

    move-result v2

    if-eq v2, v1, :cond_1f

    :cond_62
    move v0, v1

    .line 132
    goto :goto_1f
.end method

.method protected g()V
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->j()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v0

    if-eqz v0, :cond_21

    .line 157
    :cond_18
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->f()V

    .line 159
    :cond_21
    return-void
.end method

.method protected h()V
    .registers 2

    .prologue
    .line 163
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Ls/a;->a(F)V

    .line 164
    return-void
.end method

.method protected i()V
    .registers 2

    .prologue
    .line 168
    const/high16 v0, -0x4080

    invoke-direct {p0, v0}, Ls/a;->a(F)V

    .line 169
    return-void
.end method

.method protected j()Z
    .registers 3

    .prologue
    .line 187
    iget v0, p0, Ls/a;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c

    .line 188
    invoke-virtual {p0}, Ls/a;->k()V

    .line 189
    const/4 v0, 0x1

    .line 191
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected k()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 196
    const/high16 v0, -0x4080

    iput v0, p0, Ls/a;->c:F

    .line 198
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->q()V

    .line 199
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->g(Z)V

    .line 200
    invoke-virtual {p0, v1}, Ls/a;->a(Z)V

    .line 201
    return-void
.end method

.method protected l()V
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->y()V

    .line 213
    invoke-virtual {p0}, Ls/a;->m()V

    .line 214
    return-void
.end method

.method protected m()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 226
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->m()[Lo/x;

    move-result-object v0

    .line 227
    iget-object v1, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->A()I

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->q()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-direct {p0}, Ls/a;->ai()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 230
    :cond_29
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->r()V

    .line 231
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->u()V

    .line 245
    :cond_3b
    :goto_3b
    return-void

    .line 232
    :cond_3c
    iget-object v1, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->A()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_7b

    .line 234
    if-eqz v0, :cond_71

    array-length v0, v0

    if-le v0, v3, :cond_71

    .line 235
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/android/maps/driveabout/app/cI;->c(Z)V

    .line 239
    :goto_57
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->j()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 240
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->t()V

    goto :goto_3b

    .line 237
    :cond_71
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->r()V

    goto :goto_57

    .line 242
    :cond_7b
    if-eqz v0, :cond_80

    array-length v0, v0

    if-gt v0, v3, :cond_3b

    .line 243
    :cond_80
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->r()V

    goto :goto_3b
.end method

.method protected n()V
    .registers 4

    .prologue
    .line 287
    iget-object v0, p0, Ls/a;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_26

    .line 289
    invoke-virtual {v0}, Lo/x;->k()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lo/x;->a(I)Lo/I;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lo/I;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 291
    iget-object v0, p0, Ls/a;->a:Ls/n;

    sget-object v1, Ls/w;->l:Ls/w;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 294
    :cond_26
    return-void
.end method

.method protected o()V
    .registers 4

    .prologue
    .line 318
    iget-object v0, p0, Ls/a;->a:Ls/n;

    sget-object v1, Ls/w;->l:Ls/w;

    invoke-virtual {v0, v1}, Ls/n;->a(Ls/w;)Ls/q;

    move-result-object v0

    check-cast v0, Ls/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ls/d;->a_(Z)V

    .line 320
    iget-object v0, p0, Ls/a;->a:Ls/n;

    sget-object v1, Ls/w;->l:Ls/w;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 322
    return-void
.end method
