.class public Ly/a;
.super Ly/s;


# static fields
.field public static final a:Ly/a;

.field private static j:Z


# instance fields
.field private h:F

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly/a;

    invoke-direct {v0}, Ly/a;-><init>()V

    sput-object v0, Ly/a;->a:Ly/a;

    const/4 v0, 0x1

    sput-boolean v0, Ly/a;->j:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ly/s;-><init>()V

    const/high16 v0, -0x4080

    iput v0, p0, Ly/a;->h:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly/a;->i:Z

    return-void
.end method

.method private a(F)V
    .registers 4

    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->n()V

    invoke-virtual {p0}, Ly/a;->Z()V

    iget v0, p0, Ly/a;->h:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_35

    iget-object v0, p0, Ly/a;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cu;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v0

    add-float/2addr v0, p1

    iput v0, p0, Ly/a;->h:F

    :goto_20
    iget v0, p0, Ly/a;->h:F

    const/high16 v1, 0x41a8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Ly/a;->h:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ly/a;->a(Z)V

    return-void

    :cond_35
    iget v0, p0, Ly/a;->h:F

    add-float/2addr v0, p1

    iput v0, p0, Ly/a;->h:F

    goto :goto_20
.end method

.method private ag()Z
    .registers 7

    iget-object v0, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v2

    invoke-virtual {v2}, Lu/x;->z()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1f

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private b(Lu/I;)V
    .registers 4

    if-nez p1, :cond_1c

    iget-object v0, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->p()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lu/x;->k()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lu/x;->a(I)Lu/I;

    move-result-object p1

    :cond_1c
    :goto_1c
    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Lu/I;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Lu/I;->b()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3e

    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/app/cU;->b(Lu/I;)V

    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->v()V

    :goto_36
    return-void

    :cond_37
    iget-object v0, p0, Ly/a;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->b()Lu/I;

    move-result-object p1

    goto :goto_1c

    :cond_3e
    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->w()V

    goto :goto_36
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "FOLLOW_LOCATION"

    return-object v0
.end method

.method protected a(FFF)V
    .registers 5

    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->n()V

    invoke-virtual {p0}, Ly/a;->Z()V

    iput p1, p0, Ly/a;->h:F

    return-void
.end method

.method protected a(Lu/I;Lu/I;)V
    .registers 3

    invoke-virtual {p0, p2}, Ly/a;->a(Lu/I;)V

    invoke-direct {p0, p2}, Ly/a;->b(Lu/I;)V

    invoke-virtual {p0}, Ly/a;->n()V

    return-void
.end method

.method protected a(Lu/x;[Lu/x;)V
    .registers 4

    invoke-super {p0, p1, p2}, Ly/s;->a(Lu/x;[Lu/x;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ly/a;->b(Lu/I;)V

    invoke-virtual {p0}, Ly/a;->n()V

    return-void
.end method

.method protected a(Z)V
    .registers 6

    invoke-virtual {p0}, Ly/a;->X()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->aa()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1b

    iget-boolean v1, p0, Ly/a;->i:Z

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    iput-boolean v1, p0, Ly/a;->i:Z

    iget-object v1, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/app/cU;->k()V

    :cond_1b
    iget-object v1, p0, Ly/a;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v1

    iget-object v2, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    iget v3, p0, Ly/a;->h:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/app/cu;->a(Lcom/google/android/maps/driveabout/app/aL;FZ)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->w()V

    const/high16 v0, -0x4080

    iput v0, p0, Ly/a;->h:F

    const-string v0, "UIState"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Ly/a;->c()V

    return-void
.end method

.method public c()V
    .registers 6

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/cU;->b(I)V

    iget v0, p0, Ly/a;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_16

    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->n()V

    invoke-virtual {p0}, Ly/a;->Z()V

    :cond_16
    iget-object v0, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    if-nez v0, :cond_53

    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/cU;->j(Z)V

    :goto_23
    iget-object v0, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->j()Lu/I;

    move-result-object v0

    invoke-virtual {p0, v0}, Ly/a;->a(Lu/I;)V

    iget-object v0, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->i()Z

    move-result v0

    if-nez v0, :cond_77

    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->t()V

    :goto_41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ly/a;->b(Lu/I;)V

    invoke-virtual {p0}, Ly/a;->n()V

    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->B()V

    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0, v4}, Lcom/google/android/maps/driveabout/app/cU;->k(Z)V

    return-void

    :cond_53
    iget-object v0, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->u()Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v1

    new-array v2, v2, [Lu/x;

    iget-object v3, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cU;->b(Lu/x;[Lu/x;)V

    goto :goto_23

    :cond_71
    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0, v4}, Lcom/google/android/maps/driveabout/app/cU;->j(Z)V

    goto :goto_23

    :cond_77
    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->u()V

    goto :goto_41
.end method

.method public d()V
    .registers 3

    sget-boolean v0, Ly/a;->j:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    sput-boolean v0, Ly/a;->j:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ly/b;

    invoke-direct {v1, p0}, Ly/b;-><init>(Ly/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public e()V
    .registers 1

    invoke-virtual {p0}, Ly/a;->f()V

    return-void
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->o()V

    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->w()V

    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->p()V

    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->h(Z)V

    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->D()V

    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->k(Z)V

    return-void
.end method

.method protected g()I
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x1

    iget-object v2, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aL;->i()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v2

    invoke-virtual {v2}, Ls/b;->hasBearing()Z

    move-result v2

    if-nez v2, :cond_18

    :cond_16
    const/4 v0, 0x2

    :cond_17
    :goto_17
    return v0

    :cond_18
    iget-object v2, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aL;->q()Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aL;->r()Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aL;->j()Lu/I;

    move-result-object v2

    iget-object v3, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aL;->A()I

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aL;->x()Lu/P;

    move-result-object v3

    if-eqz v3, :cond_46

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lu/I;->b()I

    move-result v2

    if-eq v2, v1, :cond_17

    :cond_46
    move v0, v1

    goto :goto_17
.end method

.method protected h()V
    .registers 2

    iget-object v0, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->i()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->A()I

    move-result v0

    if-eqz v0, :cond_15

    :cond_10
    iget-object v0, p0, Ly/a;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->f()V

    :cond_15
    return-void
.end method

.method protected i()V
    .registers 2

    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Ly/a;->a(F)V

    return-void
.end method

.method protected j()V
    .registers 2

    const/high16 v0, -0x4080

    invoke-direct {p0, v0}, Ly/a;->a(F)V

    return-void
.end method

.method protected k()Z
    .registers 3

    iget v0, p0, Ly/a;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c

    invoke-virtual {p0}, Ly/a;->l()V

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected l()V
    .registers 3

    const/4 v1, 0x0

    const/high16 v0, -0x4080

    iput v0, p0, Ly/a;->h:F

    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->o()V

    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->h(Z)V

    invoke-virtual {p0, v1}, Ly/a;->a(Z)V

    return-void
.end method

.method protected m()V
    .registers 2

    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->w()V

    invoke-virtual {p0}, Ly/a;->n()V

    return-void
.end method

.method protected n()V
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->l()[Lu/x;

    move-result-object v0

    iget-object v1, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->v()I

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->p()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-direct {p0}, Ly/a;->ag()Z

    move-result v1

    if-eqz v1, :cond_28

    :cond_1d
    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->p()V

    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->s()V

    :cond_27
    :goto_27
    return-void

    :cond_28
    iget-object v1, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->v()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_53

    if-eqz v0, :cond_4d

    array-length v0, v0

    if-le v0, v3, :cond_4d

    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0, v3}, Lcom/google/android/maps/driveabout/app/cU;->d(Z)V

    :goto_3b
    iget-object v0, p0, Ly/a;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->i()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->b()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->r()V

    goto :goto_27

    :cond_4d
    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->p()V

    goto :goto_3b

    :cond_53
    if-eqz v0, :cond_58

    array-length v0, v0

    if-gt v0, v3, :cond_27

    :cond_58
    iget-object v0, p0, Ly/a;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->p()V

    goto :goto_27
.end method

.method protected o()V
    .registers 4

    iget-object v0, p0, Ly/a;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lu/x;->k()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lu/x;->a(I)Lu/I;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lu/I;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Ly/a;->f:Ly/p;

    sget-object v1, Ly/d;->a:Ly/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    :cond_22
    return-void
.end method

.method protected p()V
    .registers 4

    sget-object v0, Ly/d;->a:Ly/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ly/d;->a_(Z)V

    iget-object v0, p0, Ly/a;->f:Ly/p;

    sget-object v1, Ly/d;->a:Ly/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    return-void
.end method
