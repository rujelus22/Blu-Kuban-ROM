.class public Ly/g;
.super Ly/s;


# static fields
.field public static final a:Ly/g;


# instance fields
.field private h:J

.field private volatile i:Z

.field private j:Z

.field private k:Ly/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly/g;

    invoke-direct {v0}, Ly/g;-><init>()V

    sput-object v0, Ly/g;->a:Ly/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ly/s;-><init>()V

    new-instance v0, Ly/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ly/i;-><init>(Ly/g;Ly/h;)V

    iput-object v0, p0, Ly/g;->k:Ly/i;

    return-void
.end method

.method static synthetic a(Ly/g;Z)Z
    .registers 2

    iput-boolean p1, p0, Ly/g;->i:Z

    return p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "INSPECT_TRAFFIC"

    return-object v0
.end method

.method protected a(Z)V
    .registers 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Ly/g;->h:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_b

    :goto_a
    return-void

    :cond_b
    const-wide/16 v2, 0x320

    add-long/2addr v0, v2

    iput-wide v0, p0, Ly/g;->h:J

    iget-object v0, p0, Ly/g;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Ly/g;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v0

    iget-object v1, p0, Ly/g;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v1

    iget-object v2, p0, Ly/g;->e:Lcom/google/android/maps/driveabout/app/aL;

    const v3, 0x47435000

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/app/aL;->a(F)Lt/ab;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cu;->a(Landroid/location/Location;Lt/ab;)V

    goto :goto_a

    :cond_31
    iget-object v0, p0, Ly/g;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v0

    iget-object v1, p0, Ly/g;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cu;->a(Landroid/location/Location;)V

    goto :goto_a
.end method

.method protected b(Z)V
    .registers 3

    if-nez p1, :cond_7

    iget-object v0, p0, Ly/g;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->c()Z

    :cond_7
    return-void
.end method

.method public c()V
    .registers 7

    const/4 v5, 0x1

    iput-boolean v5, p0, Ly/g;->i:Z

    iget-object v0, p0, Ly/g;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/g;->k:Ly/i;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->a(Lcom/google/android/maps/driveabout/vector/cK;)V

    iget-object v0, p0, Ly/g;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->b(I)V

    iget-object v0, p0, Ly/g;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->n()V

    iget-object v0, p0, Ly/g;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0, v5}, Lcom/google/android/maps/driveabout/app/cU;->a(Z)V

    iget-object v0, p0, Ly/g;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->B()V

    iget-object v0, p0, Ly/g;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Ly/g;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/g;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->b(Lu/x;)V

    iget-object v0, p0, Ly/g;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->j()Lu/I;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Ly/g;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->j()Lu/I;

    move-result-object v0

    invoke-virtual {p0, v0}, Ly/g;->a(Lu/I;)V

    :cond_43
    iget-object v0, p0, Ly/g;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->u()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Ly/g;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/g;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v1

    new-array v2, v5, [Lu/x;

    const/4 v3, 0x0

    iget-object v4, p0, Ly/g;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cU;->b(Lu/x;[Lu/x;)V

    :cond_61
    iget-object v0, p0, Ly/g;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->l()[Lu/x;

    move-result-object v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Ly/g;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->l()[Lu/x;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v5, :cond_7a

    iget-object v0, p0, Ly/g;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->n()Z

    move-result v0

    if-eqz v0, :cond_7f

    :cond_7a
    iget-object v0, p0, Ly/g;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0, v5}, Lcom/google/android/maps/driveabout/app/cU;->d(Z)V

    :cond_7f
    return-void
.end method

.method public f()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Ly/g;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/g;->k:Ly/i;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->b(Lcom/google/android/maps/driveabout/vector/cK;)V

    iget-object v0, p0, Ly/g;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->o()V

    iget-object v0, p0, Ly/g;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->F()V

    iget-object v0, p0, Ly/g;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/cU;->a(Z)V

    iget-object v0, p0, Ly/g;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/cU;->h(Z)V

    iget-object v0, p0, Ly/g;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->p()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ly/g;->h:J

    return-void
.end method

.method protected o()V
    .registers 2

    iget-object v0, p0, Ly/g;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->p()V

    return-void
.end method

.method public q()V
    .registers 2

    iget-boolean v0, p0, Ly/g;->i:Z

    iput-boolean v0, p0, Ly/g;->j:Z

    return-void
.end method

.method public r()V
    .registers 3

    iget-boolean v0, p0, Ly/g;->j:Z

    iput-boolean v0, p0, Ly/g;->i:Z

    iget-boolean v0, p0, Ly/g;->i:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Ly/g;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/g;->k:Ly/i;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->b(Lcom/google/android/maps/driveabout/vector/cK;)V

    :cond_f
    return-void
.end method

.method protected w()V
    .registers 3

    iget-object v0, p0, Ly/g;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->c(I)V

    return-void
.end method

.method protected x()V
    .registers 6

    iget-object v1, p0, Ly/g;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v0, p0, Ly/g;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->p()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, -0x1

    :goto_b
    iget-object v2, p0, Ly/g;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v2

    iget-object v3, p0, Ly/g;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aL;->A()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/cU;->a(IZIZ)V

    return-void

    :cond_1c
    iget-object v0, p0, Ly/g;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->f()I

    move-result v0

    goto :goto_b
.end method
