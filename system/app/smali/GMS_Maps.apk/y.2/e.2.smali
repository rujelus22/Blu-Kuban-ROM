.class public Ly/e;
.super Ly/f;


# static fields
.field public static final a:Ly/e;


# instance fields
.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly/e;

    invoke-direct {v0}, Ly/e;-><init>()V

    sput-object v0, Ly/e;->a:Ly/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ly/f;-><init>()V

    return-void
.end method

.method private c(Lu/I;Z)V
    .registers 5

    invoke-virtual {p0, p1}, Ly/e;->a(Lu/I;)V

    invoke-virtual {p0}, Ly/e;->Z()V

    iget-object v0, p0, Ly/e;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/maps/driveabout/app/cu;->a(Lu/I;ZZ)V

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lu/I;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ly/e;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->v()V

    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Ly/e;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->w()V

    goto :goto_1d
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "INSPECT_STEP_MAP"

    return-object v0
.end method

.method protected a(Landroid/os/Bundle;Lt/W;)V
    .registers 4

    iget-object v0, p0, Ly/e;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-static {p1, v0, p2}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Landroid/os/Bundle;Lcom/google/android/maps/driveabout/app/aL;Lt/W;)V

    return-void
.end method

.method protected a(Lu/I;Lu/I;)V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Ly/e;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->b()Lu/I;

    move-result-object v0

    if-ne p1, v0, :cond_c

    invoke-direct {p0, p2, v1}, Ly/e;->c(Lu/I;Z)V

    :cond_c
    iput-boolean v1, p0, Ly/e;->h:Z

    return-void
.end method

.method protected a(Lu/I;Z)V
    .registers 4

    if-nez p2, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-direct {p0, p1, v0}, Ly/e;->c(Lu/I;Z)V

    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected a(Z)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Ly/e;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->b()Lu/I;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-boolean v1, p0, Ly/e;->h:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Ly/e;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/app/cu;->a(Lu/I;ZZ)V

    iput-boolean v3, p0, Ly/e;->h:Z

    :cond_19
    return-void
.end method

.method public c()V
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, Ly/e;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/cU;->b(I)V

    iget-object v0, p0, Ly/e;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->n()V

    iget-object v0, p0, Ly/e;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->B()V

    iget-object v0, p0, Ly/e;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->t()V

    invoke-virtual {p0}, Ly/e;->Z()V

    iput-boolean v2, p0, Ly/e;->h:Z

    iget-object v0, p0, Ly/e;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->u()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Ly/e;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/e;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v1

    new-array v2, v2, [Lu/x;

    const/4 v3, 0x0

    iget-object v4, p0, Ly/e;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cU;->b(Lu/x;[Lu/x;)V

    :cond_38
    return-void
.end method

.method protected h()V
    .registers 2

    invoke-super {p0}, Ly/f;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly/e;->h:Z

    return-void
.end method

.method protected o()V
    .registers 4

    iget-object v0, p0, Ly/e;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lu/x;->k()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lu/x;->a(I)Lu/I;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lu/I;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Ly/e;->f:Ly/p;

    sget-object v1, Ly/d;->a:Ly/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    :cond_22
    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Ly/e;->f:Ly/p;

    sget-object v1, Ly/a;->a:Ly/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    goto :goto_22
.end method
