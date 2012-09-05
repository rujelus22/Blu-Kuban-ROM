.class public Lcom/google/android/maps/driveabout/app/aL;
.super Ljava/lang/Object;


# instance fields
.field private A:Lcom/google/android/maps/driveabout/app/dO;

.field private B:Lcom/google/android/maps/driveabout/app/ae;

.field private C:Lcom/google/android/maps/driveabout/app/a;

.field private D:Ljava/lang/Runnable;

.field private E:Ljava/lang/Runnable;

.field private F:Ls/b;

.field private G:Z

.field private H:Ls/b;

.field private I:F

.field private final J:Lcom/google/android/maps/driveabout/app/du;

.field private final K:Lcom/google/android/maps/driveabout/app/dz;

.field private L:I

.field private M:Lq/F;

.field private N:I

.field protected a:Ls/o;

.field protected b:Lcom/google/android/maps/driveabout/app/NavigationService;

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:Ly/p;

.field protected g:Ls/b;

.field protected h:F

.field protected i:F

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field protected m:Z

.field protected n:Z

.field protected o:Z

.field protected p:Z

.field protected q:Z

.field protected r:I

.field protected s:I

.field protected t:Lu/q;

.field protected u:[Lu/P;

.field protected v:[Lu/b;

.field protected w:Ljava/lang/String;

.field protected x:Lu/a;

.field protected y:Z

.field private z:Lu/r;


# direct methods
.method public constructor <init>()V
    .registers 5

    const v3, 0x927c0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aL;->I:F

    iput v3, p0, Lcom/google/android/maps/driveabout/app/aL;->c:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aL;->d:I

    iput v3, p0, Lcom/google/android/maps/driveabout/app/aL;->e:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aL;->h:F

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/aL;->j:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/aL;->k:Z

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/aL;->l:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/aL;->m:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/aL;->n:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/aL;->o:Z

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/aL;->p:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/aL;->q:Z

    new-instance v0, Lcom/google/android/maps/driveabout/app/du;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/du;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->J:Lcom/google/android/maps/driveabout/app/du;

    new-instance v0, Lcom/google/android/maps/driveabout/app/dz;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/dz;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->K:Lcom/google/android/maps/driveabout/app/dz;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aL;->L:I

    iput v1, p0, Lcom/google/android/maps/driveabout/app/aL;->N:I

    return-void
.end method

.method private ac()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->E:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->E:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/aL;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->E:Ljava/lang/Runnable;

    :cond_c
    return-void
.end method

.method private ad()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->D:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->D:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/aL;->b(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/aL;->D:Ljava/lang/Runnable;

    :cond_c
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/aL;->F:Ls/b;

    return-void
.end method

.method private d(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->E:Ljava/lang/Runnable;

    if-nez v0, :cond_11

    new-instance v0, Lcom/google/android/maps/driveabout/app/aM;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/aM;-><init>(Lcom/google/android/maps/driveabout/app/aL;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->E:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->E:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/aL;->a(Ljava/lang/Runnable;J)V

    :cond_11
    return-void
.end method


# virtual methods
.method public A()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aL;->s:I

    return v0
.end method

.method public B()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->w:Ljava/lang/String;

    return-object v0
.end method

.method public C()[Lu/b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->v:[Lu/b;

    return-object v0
.end method

.method protected D()V
    .registers 3

    invoke-static {}, Lu/q;->a()Lu/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->a:Ls/o;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aL;->s:I

    invoke-virtual {v0, v1}, Ls/o;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->b()V

    return-void
.end method

.method public E()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/maps/driveabout/app/aL;->L:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_e

    iget v2, p0, Lcom/google/android/maps/driveabout/app/aL;->L:I

    if-nez v2, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    move v0, v1

    goto :goto_b

    :cond_e
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aL;->g:Ls/b;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aL;->K:Lcom/google/android/maps/driveabout/app/dz;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aL;->g:Ls/b;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/app/dz;->a(Landroid/location/Location;)I

    move-result v2

    if-eqz v2, :cond_b

    :cond_1c
    move v0, v1

    goto :goto_b
.end method

.method public F()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aL;->L:I

    return-void
.end method

.method public G()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->a:Ls/o;

    invoke-virtual {v0}, Ls/o;->l()Z

    move-result v0

    return v0
.end method

.method public H()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->M:Lq/F;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MockLocationManager is already enabled!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lq/F;

    invoke-direct {v0}, Lq/F;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->M:Lq/F;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->a:Ls/o;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aL;->M:Lq/F;

    invoke-virtual {v0, v1}, Ls/o;->a(Lq/F;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->M:Lq/F;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aL;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v1}, Lq/O;->a(Landroid/content/Context;)Lq/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq/F;->a(LC/f;)V

    return-void
.end method

.method public I()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->M:Lq/F;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->M:Lq/F;

    invoke-virtual {v0}, Lq/F;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->M:Lq/F;

    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->a:Ls/o;

    invoke-virtual {v0}, Ls/o;->k()V

    return-void
.end method

.method public J()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->T()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->a:Ls/o;

    invoke-virtual {v0}, Ls/o;->i()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->M()V

    :goto_11
    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->N()V

    goto :goto_11
.end method

.method public K()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->T()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->a:Ls/o;

    invoke-virtual {v0}, Ls/o;->h()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aL;->ad()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aL;->ac()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->O()V

    return-void
.end method

.method public L()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->T()V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->j:Z

    return v0
.end method

.method public M()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->G:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->D:Ljava/lang/Runnable;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/google/android/maps/driveabout/app/aN;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/aN;-><init>(Lcom/google/android/maps/driveabout/app/aL;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->D:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->g:Ls/b;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->F:Ls/b;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->D:Ljava/lang/Runnable;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aL;->c:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/aL;->a(Ljava/lang/Runnable;J)V

    :cond_1b
    return-void
.end method

.method public N()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aL;->ad()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->S()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->k:Z

    return-void
.end method

.method public O()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->T()V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->j:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->z:Lu/r;

    invoke-virtual {v0}, Lu/r;->d()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->a:Ls/o;

    invoke-virtual {v0}, Ls/o;->d()V

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/aL;->j:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/aL;->k:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->D()V

    :cond_1f
    return-void
.end method

.method public P()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->k:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->O()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->R()V

    :cond_10
    return-void
.end method

.method public Q()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->G:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->G:Z

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aL;->ad()V

    :cond_a
    return-void
.end method

.method public R()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->G:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->G:Z

    :cond_7
    return-void
.end method

.method protected S()V
    .registers 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->T()V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->j:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->a:Ls/o;

    invoke-virtual {v0}, Ls/o;->f()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->z:Lu/r;

    invoke-virtual {v0}, Lu/r;->e()V

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/aL;->j:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/aL;->k:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->D()V

    :cond_1f
    return-void
.end method

.method protected T()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->A:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dO;->s()V

    return-void
.end method

.method public U()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->T()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->l:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->D()V

    return-void
.end method

.method protected V()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->T()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->m:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->U()V

    return-void
.end method

.method protected W()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->a:Ls/o;

    invoke-virtual {v0}, Ls/o;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->g:Ls/b;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected X()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->T()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->W()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->n:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->Y()V

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->W()Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->n:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->Z()V

    goto :goto_10
.end method

.method protected Y()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->T()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->n:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->P()V

    return-void
.end method

.method protected Z()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->T()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->n:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->Q()V

    return-void
.end method

.method public a()Ls/b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->g:Ls/b;

    return-object v0
.end method

.method public a(F)Lt/ab;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    invoke-virtual {v0, p1}, Lu/q;->a(F)Lt/ab;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->z:Lu/r;

    invoke-virtual {v0}, Lu/r;->h()V

    iput p1, p0, Lcom/google/android/maps/driveabout/app/aL;->s:I

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/aL;->u:[Lu/P;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aW;->a(Z)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/aL;->v:[Lu/b;

    invoke-static {}, Lu/q;->a()Lu/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->a:Ls/o;

    invoke-virtual {v0, p1}, Ls/o;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->b()V

    return-void
.end method

.method protected a(ILu/g;Lu/q;)V
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->T()V

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    if-nez p1, :cond_1f

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/app/aL;->y:Z

    if-nez v2, :cond_31

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {p3}, Lu/q;->l()Z

    move-result v2

    if-nez v2, :cond_31

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->y:Z

    :goto_1b
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/aL;->a(Z)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    if-ne p1, v0, :cond_25

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->V()V

    goto :goto_1e

    :cond_25
    if-eqz p2, :cond_1e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0, p2}, Ly/s;->b(Lu/g;)V

    goto :goto_1e

    :cond_31
    move v0, v1

    goto :goto_1b
.end method

.method public a(Lcom/google/android/maps/driveabout/app/NavigationService;Lcom/google/android/maps/driveabout/app/dO;Lu/r;Ls/o;Lcom/google/android/maps/driveabout/app/ae;Lcom/google/android/maps/driveabout/app/a;)V
    .registers 8

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aL;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/aL;->A:Lcom/google/android/maps/driveabout/app/dO;

    sget-object v0, Ly/p;->a:Ly/p;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Ly/p;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/app/aL;->B:Lcom/google/android/maps/driveabout/app/ae;

    iput-object p6, p0, Lcom/google/android/maps/driveabout/app/aL;->C:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {}, Lu/q;->a()Lu/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    invoke-virtual {p0, p3}, Lcom/google/android/maps/driveabout/app/aL;->a(Lu/r;)V

    invoke-virtual {p0, p4}, Lcom/google/android/maps/driveabout/app/aL;->a(Ls/o;)V

    return-void
.end method

.method protected a(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->A:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/dO;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Ljava/lang/Runnable;J)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->A:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/dO;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a(Ls/C;)V
    .registers 3

    invoke-virtual {p1}, Ls/C;->c()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aL;->h:F

    invoke-virtual {p1}, Ls/C;->d()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aL;->i:F

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->F()V

    return-void
.end method

.method protected a(Ls/b;)V
    .registers 10

    const/4 v0, 0x0

    const/high16 v3, 0x42c8

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->T()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aL;->H:Ls/b;

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aL;->I:F

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aL;->H:Ls/b;

    invoke-virtual {v2, p1}, Ls/b;->distanceTo(Landroid/location/Location;)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/app/aL;->I:F

    :cond_1b
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aL;->H:Ls/b;

    invoke-virtual {p1}, Ls/b;->getProvider()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aL;->a:Ls/o;

    invoke-virtual {v2, v1}, Ls/o;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_94

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aL;->g:Ls/b;

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/app/ci;->a(Ls/b;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->X()V

    invoke-virtual {p1}, Ls/b;->e()Z

    move-result v1

    if-nez v1, :cond_5e

    const/4 v1, 0x1

    invoke-virtual {p1}, Ls/b;->j()Lu/B;

    move-result-object v2

    if-eqz v2, :cond_9d

    invoke-virtual {p1}, Ls/b;->j()Lu/B;

    move-result-object v2

    invoke-virtual {v2}, Lu/B;->d()D

    move-result-wide v4

    invoke-virtual {p1}, Ls/b;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Lt/L;->a(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/app/aL;->p:Z

    if-eqz v2, :cond_8f

    const/high16 v2, 0x42a0

    :goto_59
    float-to-double v6, v2

    cmpg-double v2, v4, v6

    if-gez v2, :cond_9d

    :cond_5e
    :goto_5e
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/aL;->p:Z

    if-eq v0, v1, :cond_6b

    if-eqz v0, :cond_91

    const-string v1, "o"

    :goto_66
    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->p:Z

    :cond_6b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->F:Ls/b;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->g:Ls/b;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aL;->F:Ls/b;

    invoke-virtual {v1}, Ls/b;->m()Lt/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls/b;->b(Lt/o;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_85

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aL;->ad()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->M()V

    :cond_85
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->E()V

    :cond_8e
    :goto_8e
    return-void

    :cond_8f
    move v2, v3

    goto :goto_59

    :cond_91
    const-string v1, "O"

    goto :goto_66

    :cond_94
    const-string v0, "driveabout_base_location"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    goto :goto_8e

    :cond_9d
    move v0, v1

    goto :goto_5e
.end method

.method protected a(Ls/o;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aL;->a:Ls/o;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->a:Ls/o;

    new-instance v1, Lcom/google/android/maps/driveabout/app/aQ;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/aQ;-><init>(Lcom/google/android/maps/driveabout/app/aL;)V

    invoke-virtual {v0, v1}, Ls/o;->a(Ls/c;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->a:Ls/o;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aL;->z:Lu/r;

    invoke-virtual {v0, v1}, Ls/o;->a(Ls/c;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->a:Ls/o;

    new-instance v1, Lcom/google/android/maps/driveabout/app/aO;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/maps/driveabout/app/aO;-><init>(Lcom/google/android/maps/driveabout/app/aL;Lcom/google/android/maps/driveabout/app/aM;)V

    invoke-virtual {v0, v1}, Ls/o;->a(Ls/s;)V

    return-void
.end method

.method protected a(Lu/q;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->T()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->o:Z

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aL;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aL;->r:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->T()V

    return-void
.end method

.method protected a(Lu/r;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aL;->z:Lu/r;

    new-instance v0, Lcom/google/android/maps/driveabout/app/aV;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/aV;-><init>(Lcom/google/android/maps/driveabout/app/aL;)V

    invoke-virtual {p1, v0}, Lu/r;->a(Lu/o;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->T()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->l:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly/s;->g(Z)V

    return-void
.end method

.method public a([Lu/P;I[Lu/b;Ljava/lang/String;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/aL;->a([Lu/P;I[Lu/b;Ljava/lang/String;Lu/a;)V

    return-void
.end method

.method public a([Lu/P;I[Lu/b;Ljava/lang/String;Lu/a;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aL;->u:[Lu/P;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aW;->a(Z)V

    iput p2, p0, Lcom/google/android/maps/driveabout/app/aL;->s:I

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/aL;->v:[Lu/b;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/app/aL;->x:Lu/a;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/aL;->w:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->D()V

    return-void
.end method

.method protected a([Lu/R;)V
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    :goto_6
    array-length v2, p1

    if-ge v0, v2, :cond_19

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lu/R;->i()Z

    move-result v2

    if-nez v2, :cond_16

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lu/P;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/P;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->u:[Lu/P;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aW;->a(Z)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    invoke-virtual {v0}, Lu/x;->D()[Lu/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->v:[Lu/b;

    invoke-static {}, Lu/c;->a()Lu/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aL;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aL;->v:[Lu/b;

    invoke-virtual {v0, v1, v2}, Lu/c;->a(Landroid/content/Context;[Lu/b;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    invoke-virtual {v0}, Lu/x;->g()Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->B:Lcom/google/android/maps/driveabout/app/ae;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v1

    invoke-virtual {v1}, Lu/x;->l()Lu/P;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v2

    invoke-virtual {v2}, Lu/x;->m()Lu/P;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/ae;->a(Lu/P;Lu/P;)V

    :cond_66
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aL;->u:[Lu/P;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/aL;->s:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aL;->v:[Lu/b;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/NavigationService;->a([Lu/P;I[Lu/b;)V

    return-void
.end method

.method public aa()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aL;->N:I

    return v0
.end method

.method public ab()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aL;->I:F

    return v0
.end method

.method public b()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aL;->h:F

    return v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/app/aL;->L:I

    return-void
.end method

.method protected b(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->A:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/dO;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected b(Lu/q;)V
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->T()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    invoke-virtual {v0}, Lu/q;->h()Lu/I;

    move-result-object v0

    invoke-virtual {p1}, Lu/q;->h()Lu/I;

    move-result-object v1

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/aL;->r:I

    if-lez v2, :cond_1d

    invoke-virtual {v1}, Lu/I;->i()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1d

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/maps/driveabout/app/aL;->r:I

    :cond_1d
    if-eqz v1, :cond_28

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Ly/p;

    invoke-virtual {v2}, Ly/p;->a()Ly/s;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ly/s;->b(Lu/I;Lu/I;)V

    :cond_28
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aL;->J:Lcom/google/android/maps/driveabout/app/du;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    invoke-virtual {v3}, Lu/q;->g()Lu/x;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/aL;->g:Ls/b;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/google/android/maps/driveabout/app/du;->a(Lu/x;Lu/I;Lu/I;Ls/b;)V

    return-void
.end method

.method protected c(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/app/aL;->N:I

    return-void
.end method

.method protected c(Lu/q;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->T()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->b()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lu/q;->d()I

    move-result v0

    if-ltz v0, :cond_24

    invoke-virtual {p1}, Lu/q;->d()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_24

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aL;->e:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/aL;->d(I)V

    :cond_24
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->D()V

    return-void
.end method

.method public c()Z
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aL;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->x:Lu/a;

    return-void
.end method

.method protected d(Lu/q;)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->T()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/aL;->o:Z

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/aL;->q:Z

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    invoke-virtual {v0}, Lu/x;->a()Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->l:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->C:Lcom/google/android/maps/driveabout/app/a;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->C:Lcom/google/android/maps/driveabout/app/a;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v1

    invoke-virtual {v1}, Lu/x;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/a;->a(Ljava/lang/String;)V

    :cond_28
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/aL;->y:Z

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/aL;->m:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->a:Ls/o;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls/o;->a(Lu/x;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->z:Lu/r;

    invoke-virtual {v0}, Lu/r;->d()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->l()[Lu/x;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ly/s;->b(Lu/x;[Lu/x;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->j()Lu/I;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ly/s;->b(Lu/I;Lu/I;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    invoke-virtual {v0}, Lu/x;->b()Z

    move-result v0

    if-nez v0, :cond_6e

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    invoke-virtual {v0}, Lu/x;->v()[Lu/R;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/aL;->a([Lu/R;)V

    :cond_6e
    return-void
.end method

.method public e()Lu/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->x:Lu/a;

    return-object v0
.end method

.method protected e(Lu/q;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->T()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->o:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->q:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->V()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->b()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aL;->ac()V

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aL;->d:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/aL;->d(I)V

    :cond_24
    return-void
.end method

.method public f()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    invoke-virtual {v0}, Lu/q;->c()I

    move-result v0

    return v0
.end method

.method protected f(Lu/q;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->T()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    invoke-virtual {v1}, Lu/q;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ly/s;->a(I)V

    return-void
.end method

.method public g()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    invoke-virtual {v0}, Lu/q;->b()I

    move-result v0

    return v0
.end method

.method public h()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    invoke-virtual {v0}, Lu/q;->d()I

    move-result v0

    return v0
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->n:Z

    return v0
.end method

.method public j()Lu/I;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    invoke-virtual {v0}, Lu/q;->h()Lu/I;

    move-result-object v0

    return-object v0
.end method

.method public k()Lu/x;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    invoke-virtual {v0}, Lu/q;->g()Lu/x;

    move-result-object v0

    return-object v0
.end method

.method public l()[Lu/x;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    invoke-virtual {v0}, Lu/q;->f()[Lu/x;

    move-result-object v0

    return-object v0
.end method

.method public m()Lu/x;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    invoke-virtual {v0}, Lu/q;->i()Lu/x;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    invoke-virtual {v0}, Lu/q;->j()Z

    move-result v0

    return v0
.end method

.method public o()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    invoke-virtual {v0}, Lu/q;->k()I

    move-result v0

    return v0
.end method

.method public p()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->q:Z

    return v0
.end method

.method public q()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    invoke-virtual {v0}, Lu/q;->l()Z

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->o:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->l:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->m:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public r()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->p:Z

    return v0
.end method

.method public s()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->o:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->t:Lu/q;

    invoke-virtual {v0}, Lu/q;->l()Z

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->l:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->m:Z

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public t()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->q()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aL;->n:Z

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    invoke-virtual {v0}, Lu/x;->j()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public u()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->l()[Lu/x;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->l()[Lu/x;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->p()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public v()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aL;->r:I

    return v0
.end method

.method public w()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aL;->r:I

    return-void
.end method

.method public x()Lu/P;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->u:[Lu/P;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->u:[Lu/P;

    array-length v0, v0

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->u:[Lu/P;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aL;->u:[Lu/P;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public y()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->x()Lu/P;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public z()[Lu/P;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aL;->u:[Lu/P;

    return-object v0
.end method
