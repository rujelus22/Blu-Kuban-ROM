.class public Ly/d;
.super Ly/f;


# static fields
.field public static final a:Ly/d;


# instance fields
.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly/d;

    invoke-direct {v0}, Ly/d;-><init>()V

    sput-object v0, Ly/d;->a:Ly/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ly/f;-><init>()V

    return-void
.end method

.method private b(Lu/I;)Lu/I;
    .registers 4

    if-nez p1, :cond_1c

    iget-object v0, p0, Ly/d;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->p()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Ly/d;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lu/x;->k()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lu/x;->a(I)Lu/I;

    move-result-object p1

    :cond_1c
    return-object p1
.end method

.method private c(Lu/I;)V
    .registers 4

    const/16 v1, 0x10

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lu/I;->b()I

    move-result v0

    if-eq v0, v1, :cond_10

    invoke-virtual {p1}, Lu/I;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    :cond_10
    invoke-virtual {p1}, Lu/I;->b()I

    move-result v0

    if-ne v0, v1, :cond_22

    invoke-virtual {p1}, Lu/I;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    :cond_1c
    iget-object v0, p0, Ly/d;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->x()V

    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Ly/d;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->y()V

    goto :goto_21
.end method

.method private c(Lu/I;Z)V
    .registers 5

    invoke-virtual {p0, p1}, Ly/d;->a(Lu/I;)V

    invoke-virtual {p0}, Ly/d;->Z()V

    iget-object v0, p0, Ly/d;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/maps/driveabout/app/cu;->a(Lu/I;ZZ)V

    invoke-direct {p0, p1}, Ly/d;->c(Lu/I;)V

    iget-object v0, p0, Ly/d;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/app/cU;->b(Lu/I;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "INSPECT_NAVIGATION_IMAGE"

    return-object v0
.end method

.method protected a(FF)V
    .registers 3

    return-void
.end method

.method protected a(Lu/I;Lu/I;)V
    .registers 4

    iget-boolean v0, p0, Ly/d;->h:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Ly/d;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->c()Z

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Ly/d;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->b()Lu/I;

    move-result-object v0

    if-ne p1, v0, :cond_9

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Ly/d;->c(Lu/I;Z)V

    goto :goto_9
.end method

.method protected a(Lu/I;Z)V
    .registers 5

    const/4 v1, 0x0

    if-nez p2, :cond_b

    const/4 v0, 0x1

    :goto_4
    invoke-direct {p0, p1, v0}, Ly/d;->c(Lu/I;Z)V

    invoke-virtual {p0, v1}, Ly/d;->a_(Z)V

    return-void

    :cond_b
    move v0, v1

    goto :goto_4
.end method

.method protected a(Z)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Ly/d;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->b()Lu/I;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Ly/d;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Lcom/google/android/maps/driveabout/app/cu;->a(Lu/I;ZZ)V

    :cond_12
    return-void
.end method

.method public a_(Z)V
    .registers 2

    iput-boolean p1, p0, Ly/d;->h:Z

    return-void
.end method

.method public c()V
    .registers 5

    iget-object v0, p0, Ly/d;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->b(I)V

    iget-object v0, p0, Ly/d;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->n()V

    iget-object v0, p0, Ly/d;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->B()V

    iget-object v0, p0, Ly/d;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->w()V

    iget-object v0, p0, Ly/d;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->b()Lu/I;

    move-result-object v0

    invoke-direct {p0, v0}, Ly/d;->b(Lu/I;)Lu/I;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v0, p0, Ly/d;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->b(Lu/I;)V

    const-string v2, "w"

    invoke-virtual {v1}, Lu/I;->b()I

    move-result v0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_3b

    const/4 v0, 0x1

    :goto_31
    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;Z)V

    :cond_34
    invoke-direct {p0, v1}, Ly/d;->c(Lu/I;)V

    invoke-virtual {p0}, Ly/d;->Z()V

    return-void

    :cond_3b
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public f()V
    .registers 3

    invoke-super {p0}, Ly/f;->f()V

    iget-object v0, p0, Ly/d;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->y()V

    iget-object v0, p0, Ly/d;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->b(Lu/I;)V

    return-void
.end method
