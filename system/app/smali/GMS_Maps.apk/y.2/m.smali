.class public Ly/m;
.super Ly/s;


# static fields
.field public static final a:Ly/m;


# instance fields
.field private h:Z

.field private i:Ly/r;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lu/x;

.field private o:[Lu/x;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly/m;

    invoke-direct {v0}, Ly/m;-><init>()V

    sput-object v0, Ly/m;->a:Ly/m;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ly/s;-><init>()V

    return-void
.end method

.method static synthetic a(Ly/m;)Lu/x;
    .registers 2

    iget-object v0, p0, Ly/m;->n:Lu/x;

    return-object v0
.end method

.method private a(Lu/x;Lu/x;)Z
    .registers 9

    const/4 v1, 0x0

    invoke-virtual {p1}, Lu/x;->v()[Lu/R;

    move-result-object v2

    invoke-virtual {p2}, Lu/x;->v()[Lu/R;

    move-result-object v3

    array-length v0, v2

    array-length v4, v3

    if-eq v0, v4, :cond_e

    :cond_d
    :goto_d
    return v1

    :cond_e
    move v0, v1

    :goto_f
    array-length v4, v2

    if-ge v0, v4, :cond_27

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lu/R;->c()Lt/o;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lu/R;->c()Lt/o;

    move-result-object v5

    invoke-virtual {v4, v5}, Lt/o;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_27
    const/4 v1, 0x1

    goto :goto_d
.end method

.method static synthetic a(Ly/m;Z)Z
    .registers 2

    iput-boolean p1, p0, Ly/m;->l:Z

    return p1
.end method

.method private ag()V
    .registers 4

    iget-boolean v0, p0, Ly/m;->h:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Ly/m;->o:[Lu/x;

    :goto_6
    iget-object v1, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v2, p0, Ly/m;->n:Lu/x;

    invoke-interface {v1, v2, v0}, Lcom/google/android/maps/driveabout/app/cU;->b(Lu/x;[Lu/x;)V

    iget-object v0, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/m;->n:Lu/x;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->b(Lu/x;)V

    return-void

    :cond_15
    const/4 v0, 0x1

    new-array v0, v0, [Lu/x;

    const/4 v1, 0x0

    iget-object v2, p0, Ly/m;->n:Lu/x;

    aput-object v2, v0, v1

    goto :goto_6
.end method

.method private ah()V
    .registers 4

    iget-object v0, p0, Ly/m;->n:Lu/x;

    if-eqz v0, :cond_34

    iget-object v0, p0, Ly/m;->n:Lu/x;

    invoke-virtual {v0}, Lu/x;->E()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Ly/m;->n:Lu/x;

    invoke-virtual {v0}, Lu/x;->D()[Lu/b;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lu/c;->a([Lu/b;I)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/m;->b:Landroid/content/Context;

    const v2, 0x7f0b00d6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->a(Ljava/lang/CharSequence;)V

    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/m;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dA;->b(Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->a(Ljava/lang/CharSequence;)V

    goto :goto_27

    :cond_34
    iget-object v0, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->l()V

    goto :goto_27
.end method

.method private ai()V
    .registers 4

    iget-object v1, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v0, p0, Ly/m;->n:Lu/x;

    if-eqz v0, :cond_1b

    invoke-static {}, Lu/c;->a()Lu/c;

    move-result-object v0

    iget-object v2, p0, Ly/m;->n:Lu/x;

    invoke-virtual {v2}, Lu/x;->D()[Lu/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lu/c;->b([Lu/b;)I

    move-result v0

    if-lez v0, :cond_1b

    const/4 v0, 0x1

    :goto_17
    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/app/cU;->f(Z)V

    return-void

    :cond_1b
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private c(Lu/x;[Lu/x;)Lu/x;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_12

    aget-object v1, p2, v0

    invoke-direct {p0, p1, v1}, Ly/m;->a(Lu/x;Lu/x;)Z

    move-result v1

    if-eqz v1, :cond_f

    aget-object v0, p2, v0

    :goto_e
    return-object v0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public A()V
    .registers 4

    iget-object v0, p0, Ly/m;->n:Lu/x;

    invoke-virtual {v0}, Lu/x;->D()[Lu/b;

    move-result-object v0

    new-instance v1, Ly/n;

    invoke-direct {v1, p0, v0}, Ly/n;-><init>(Ly/m;[Lu/b;)V

    iget-object v2, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v2, v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->a([Lu/b;Lcom/google/android/maps/driveabout/app/aC;)V

    return-void
.end method

.method public B()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ly/m;->i:Ly/r;

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Ly/m;->ac()V

    const/4 v1, 0x0

    iput-object v1, p0, Ly/m;->i:Ly/r;

    :goto_c
    return v0

    :cond_d
    iget-boolean v2, p0, Ly/m;->k:Z

    if-eqz v2, :cond_1e

    invoke-virtual {p0}, Ly/m;->ac()V

    iput-boolean v1, p0, Ly/m;->h:Z

    iget-object v2, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v2, v0}, Lcom/google/android/maps/driveabout/app/cU;->d(Z)V

    iput-boolean v1, p0, Ly/m;->k:Z

    goto :goto_c

    :cond_1e
    iget-boolean v2, p0, Ly/m;->l:Z

    if-eqz v2, :cond_2d

    iget-object v2, p0, Ly/m;->g:Lu/r;

    invoke-virtual {v2}, Lu/r;->c()V

    invoke-virtual {p0}, Ly/m;->ac()V

    iput-boolean v1, p0, Ly/m;->l:Z

    goto :goto_c

    :cond_2d
    move v0, v1

    goto :goto_c
.end method

.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "ROUTE_OVERVIEW"

    return-object v0
.end method

.method protected a(Landroid/os/Bundle;Lt/W;)V
    .registers 4

    iget-object v0, p0, Ly/m;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-static {p1, v0, p2}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Landroid/os/Bundle;Lcom/google/android/maps/driveabout/app/aL;Lt/W;)V

    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/app/bS;)V
    .registers 3

    invoke-super {p0, p1}, Ly/s;->a(Lcom/google/android/maps/driveabout/app/bS;)V

    const v0, 0x7f0f00f0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bS;->b(I)V

    const v0, 0x7f0f0412

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bS;->a(I)V

    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/m;)V
    .registers 2

    return-void
.end method

.method protected a(Lt/L;)V
    .registers 16

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-wide/high16 v0, 0x3fc4

    const-wide/high16 v2, 0x4000

    const/high16 v4, 0x41f0

    iget-object v5, p0, Ly/m;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/app/cu;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v7, v0, v2

    const-wide v2, 0x7fefffffffffffffL

    const/4 v1, 0x0

    iget-boolean v0, p0, Ly/m;->h:Z

    if-eqz v0, :cond_5c

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    :goto_2c
    iget-object v1, p0, Ly/m;->o:[Lu/x;

    array-length v1, v1

    if-ge v4, v1, :cond_5d

    iget-object v1, p0, Ly/m;->o:[Lu/x;

    aget-object v1, v1, v4

    invoke-virtual {v1, p1, v7, v8}, Lu/x;->a(Lt/L;D)Lu/B;

    move-result-object v9

    if-nez v9, :cond_42

    move-wide v1, v2

    :goto_3c
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-wide v12, v1

    move-wide v2, v12

    goto :goto_2c

    :cond_42
    invoke-virtual {v9}, Lu/B;->d()D

    move-result-wide v5

    iget-object v10, p0, Ly/m;->n:Lu/x;

    if-ne v1, v10, :cond_50

    const-wide v10, 0x3fe999999999999aL

    mul-double/2addr v5, v10

    :cond_50
    cmpg-double v5, v5, v2

    if-gez v5, :cond_67

    invoke-virtual {v9}, Lu/B;->d()D

    move-result-wide v2

    move-object v0, v1

    move-wide v12, v2

    move-wide v1, v12

    goto :goto_3c

    :cond_5c
    move-object v0, v1

    :cond_5d
    if-eqz v0, :cond_2

    iget-object v1, p0, Ly/m;->n:Lu/x;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ly/m;->a(Lu/x;)V

    goto :goto_2

    :cond_67
    move-wide v1, v2

    goto :goto_3c
.end method

.method protected a(Lu/g;)V
    .registers 2

    invoke-super {p0, p1}, Ly/s;->a(Lu/g;)V

    invoke-virtual {p0}, Ly/m;->ac()V

    return-void
.end method

.method public a(Lu/x;)V
    .registers 2

    iput-object p1, p0, Ly/m;->n:Lu/x;

    invoke-direct {p0}, Ly/m;->ag()V

    invoke-direct {p0}, Ly/m;->ah()V

    invoke-virtual {p0}, Ly/m;->v()V

    return-void
.end method

.method public a(Lu/x;[Lu/x;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Ly/m;->ac()V

    iget-boolean v0, p0, Ly/m;->k:Z

    if-eqz v0, :cond_57

    iput-boolean v3, p0, Ly/m;->k:Z

    array-length v0, p2

    if-le v0, v2, :cond_16

    iput-boolean v2, p0, Ly/m;->h:Z

    iget-object v0, p0, Ly/m;->g:Lu/r;

    invoke-virtual {v0, v3}, Lu/r;->a(Z)V

    :cond_16
    :goto_16
    iput-boolean v2, p0, Ly/m;->m:Z

    iget-object v0, p0, Ly/m;->n:Lu/x;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Ly/m;->n:Lu/x;

    invoke-direct {p0, v0, p2}, Ly/m;->c(Lu/x;[Lu/x;)Lu/x;

    move-result-object v0

    :goto_22
    iput-object v0, p0, Ly/m;->n:Lu/x;

    iget-object v0, p0, Ly/m;->n:Lu/x;

    if-nez v0, :cond_2a

    iput-object p1, p0, Ly/m;->n:Lu/x;

    :cond_2a
    iput-object p2, p0, Ly/m;->o:[Lu/x;

    invoke-direct {p0}, Ly/m;->ag()V

    invoke-direct {p0}, Ly/m;->ah()V

    invoke-virtual {p0}, Ly/m;->n()V

    invoke-direct {p0}, Ly/m;->ai()V

    iget-boolean v0, p0, Ly/m;->h:Z

    if-eqz v0, :cond_41

    iget-object v0, p0, Ly/m;->g:Lu/r;

    invoke-virtual {v0}, Lu/r;->g()V

    :cond_41
    iget-object v0, p0, Ly/m;->n:Lu/x;

    invoke-virtual {v0}, Lu/x;->y()Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Ly/m;->i:Ly/r;

    if-eqz v0, :cond_56

    iget-object v0, p0, Ly/m;->f:Ly/p;

    iget-object v2, p0, Ly/m;->i:Ly/r;

    invoke-virtual {v0, v2}, Ly/p;->a(Ly/r;)V

    iput-object v1, p0, Ly/m;->i:Ly/r;

    :cond_56
    return-void

    :cond_57
    iget-boolean v0, p0, Ly/m;->l:Z

    if-eqz v0, :cond_16

    iput-boolean v3, p0, Ly/m;->l:Z

    iget-boolean v0, p0, Ly/m;->h:Z

    if-eqz v0, :cond_16

    array-length v0, p2

    if-ne v0, v2, :cond_16

    iput-boolean v3, p0, Ly/m;->h:Z

    iget-object v0, p0, Ly/m;->g:Lu/r;

    invoke-virtual {v0, v2}, Lu/r;->a(Z)V

    goto :goto_16

    :cond_6c
    move-object v0, v1

    goto :goto_22
.end method

.method protected a(Z)V
    .registers 4

    iget-object v0, p0, Ly/m;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Ly/m;->m:Z

    if-nez v0, :cond_e

    if-eqz p1, :cond_20

    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Ly/m;->m:Z

    iget-boolean v0, p0, Ly/m;->h:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Ly/m;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v0

    iget-object v1, p0, Ly/m;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cu;->b(Lcom/google/android/maps/driveabout/app/aL;)V

    :cond_20
    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Ly/m;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v0

    iget-object v1, p0, Ly/m;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cu;->c(Lcom/google/android/maps/driveabout/app/aL;)V

    goto :goto_20
.end method

.method public a(Ly/r;)Z
    .registers 3

    iget-object v0, p0, Ly/m;->n:Lu/x;

    if-eqz v0, :cond_16

    iget-object v0, p0, Ly/m;->n:Lu/x;

    invoke-virtual {v0}, Lu/x;->y()Z

    move-result v0

    if-eqz v0, :cond_16

    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Ly/m;->c(I)V

    iput-object p1, p0, Ly/m;->i:Ly/r;

    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly/m;->h:Z

    const-string v0, "UIState"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Ly/m;->c()V

    return-void
.end method

.method public c()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly/m;->m:Z

    iget-object v0, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->b(I)V

    iget-object v0, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->A()V

    iget-object v0, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->t()V

    iget-object v0, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->n()V

    iget-object v0, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->E()V

    iget-object v0, p0, Ly/m;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->l()[Lu/x;

    move-result-object v0

    iput-object v0, p0, Ly/m;->o:[Lu/x;

    iget-object v0, p0, Ly/m;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    iput-object v0, p0, Ly/m;->n:Lu/x;

    invoke-virtual {p0}, Ly/m;->n()V

    invoke-direct {p0}, Ly/m;->ai()V

    iget-object v0, p0, Ly/m;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->u()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-direct {p0}, Ly/m;->ag()V

    :cond_3e
    return-void
.end method

.method public e()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Ly/m;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ly/m;->n:Lu/x;

    iget-object v1, p0, Ly/m;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v1

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Ly/m;->g:Lu/r;

    iget-object v1, p0, Ly/m;->n:Lu/x;

    invoke-virtual {v0, v1}, Lu/r;->a(Lu/x;)V

    :cond_1a
    iget-object v0, p0, Ly/m;->g:Lu/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lu/r;->a(Z)V

    invoke-super {p0}, Ly/s;->e()V

    iput-object v2, p0, Ly/m;->n:Lu/x;

    iput-object v2, p0, Ly/m;->o:[Lu/x;

    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->u()V

    iget-object v0, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->o()V

    iget-object v0, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->F()V

    iget-object v0, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->p()V

    iget-object v0, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->q()V

    iget-object v0, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->l()V

    return-void
.end method

.method protected n()V
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-boolean v2, p0, Ly/m;->k:Z

    if-nez v2, :cond_23

    iget-object v2, p0, Ly/m;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aL;->n()Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, p0, Ly/m;->o:[Lu/x;

    if-eqz v2, :cond_23

    iget-object v2, p0, Ly/m;->o:[Lu/x;

    array-length v2, v2

    if-le v2, v0, :cond_23

    :cond_18
    :goto_18
    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/app/cU;->d(Z)V

    iget-object v0, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-boolean v1, p0, Ly/m;->h:Z

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->e(Z)V

    return-void

    :cond_23
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public q()V
    .registers 2

    iget-boolean v0, p0, Ly/m;->h:Z

    iput-boolean v0, p0, Ly/m;->j:Z

    return-void
.end method

.method public r()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly/m;->m:Z

    iget-boolean v0, p0, Ly/m;->j:Z

    iput-boolean v0, p0, Ly/m;->h:Z

    iget-boolean v0, p0, Ly/m;->h:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Ly/m;->n()V

    iget-object v0, p0, Ly/m;->g:Lu/r;

    invoke-virtual {v0}, Lu/r;->g()V

    iget-object v0, p0, Ly/m;->g:Lu/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu/r;->a(Z)V

    :cond_19
    invoke-direct {p0}, Ly/m;->ag()V

    invoke-direct {p0}, Ly/m;->ai()V

    invoke-virtual {p0}, Ly/m;->v()V

    return-void
.end method

.method protected s()V
    .registers 1

    return-void
.end method

.method protected v()V
    .registers 4

    iget-boolean v0, p0, Ly/m;->h:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/m;->n:Lu/x;

    iget-object v2, p0, Ly/m;->o:[Lu/x;

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cU;->a(Lu/x;[Lu/x;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/m;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->a(Lcom/google/android/maps/driveabout/app/aL;)V

    goto :goto_d
.end method

.method protected w()V
    .registers 3

    iget-object v0, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->c(I)V

    return-void
.end method

.method protected y()V
    .registers 3

    iget-object v0, p0, Ly/m;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->c(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public z()V
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Ly/m;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->n()Z

    move-result v0

    if-eqz v0, :cond_27

    iput-boolean v1, p0, Ly/m;->k:Z

    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Ly/m;->c(I)V

    iget-object v0, p0, Ly/m;->g:Lu/r;

    iget-object v1, p0, Ly/m;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v1

    iget-object v2, p0, Ly/m;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu/r;->a(Ls/b;Lu/x;)V

    :goto_23
    invoke-virtual {p0}, Ly/m;->n()V

    return-void

    :cond_27
    iget-object v0, p0, Ly/m;->g:Lu/r;

    invoke-virtual {v0, v2}, Lu/r;->a(Z)V

    iget-boolean v0, p0, Ly/m;->h:Z

    if-nez v0, :cond_54

    move v0, v1

    :goto_31
    iput-boolean v0, p0, Ly/m;->h:Z

    iput-boolean v1, p0, Ly/m;->m:Z

    invoke-virtual {p0}, Ly/m;->v()V

    invoke-virtual {p0, v2}, Ly/m;->a(Z)V

    iget-object v0, p0, Ly/m;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    iput-object v0, p0, Ly/m;->n:Lu/x;

    iget-object v0, p0, Ly/m;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->l()[Lu/x;

    move-result-object v0

    iput-object v0, p0, Ly/m;->o:[Lu/x;

    invoke-direct {p0}, Ly/m;->ag()V

    iget-object v0, p0, Ly/m;->g:Lu/r;

    invoke-virtual {v0}, Lu/r;->g()V

    goto :goto_23

    :cond_54
    move v0, v2

    goto :goto_31
.end method
