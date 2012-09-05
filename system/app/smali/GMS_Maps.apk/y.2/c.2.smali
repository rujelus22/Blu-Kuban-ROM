.class public Ly/c;
.super Ly/s;


# static fields
.field public static final a:Ly/c;


# instance fields
.field private h:Lcom/google/android/maps/driveabout/vector/u;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly/c;

    invoke-direct {v0}, Ly/c;-><init>()V

    sput-object v0, Ly/c;->a:Ly/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ly/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "FREE_MOVEMENT"

    return-object v0
.end method

.method protected a(FF)V
    .registers 3

    invoke-virtual {p0}, Ly/c;->Z()V

    return-void
.end method

.method protected a(FFF)V
    .registers 4

    invoke-virtual {p0}, Ly/c;->Z()V

    return-void
.end method

.method protected a(Landroid/os/Bundle;Lt/W;)V
    .registers 4

    iget-object v0, p0, Ly/c;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-static {p1, v0, p2}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Landroid/os/Bundle;Lcom/google/android/maps/driveabout/app/aL;Lt/W;)V

    return-void
.end method

.method protected a(Lu/I;Lu/I;)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p0, Ly/c;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->b()Lu/I;

    move-result-object v0

    if-ne p1, v0, :cond_d

    :cond_a
    invoke-virtual {p0, p2}, Ly/c;->a(Lu/I;)V

    :cond_d
    return-void
.end method

.method protected a(Z)V
    .registers 4

    iget-boolean v0, p0, Ly/c;->i:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Ly/c;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v0

    iget-object v1, p0, Ly/c;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cu;->a(Lcom/google/android/maps/driveabout/app/aL;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly/c;->i:Z

    :cond_12
    return-void
.end method

.method public c()V
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, Ly/c;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/cU;->b(I)V

    iget-object v0, p0, Ly/c;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->n()V

    iget-object v0, p0, Ly/c;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->B()V

    iget-object v0, p0, Ly/c;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Ly/c;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->i()Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Ly/c;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->t()V

    :goto_25
    iget-object v0, p0, Ly/c;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->u()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Ly/c;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/c;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v1

    new-array v2, v2, [Lu/x;

    const/4 v3, 0x0

    iget-object v4, p0, Ly/c;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cU;->b(Lu/x;[Lu/x;)V

    :cond_43
    iget-object v0, p0, Ly/c;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->b()Lu/I;

    move-result-object v0

    invoke-virtual {p0, v0}, Ly/c;->a(Lu/I;)V

    invoke-virtual {p0}, Ly/c;->Z()V

    return-void

    :cond_50
    iget-object v0, p0, Ly/c;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->u()V

    goto :goto_25
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Ly/c;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->o()V

    iget-object v0, p0, Ly/c;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->h(Z)V

    return-void
.end method

.method protected h()V
    .registers 2

    iget-object v0, p0, Ly/c;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly/c;->i:Z

    return-void
.end method

.method public q()V
    .registers 2

    iget-object v0, p0, Ly/c;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cu;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    iput-object v0, p0, Ly/c;->h:Lcom/google/android/maps/driveabout/vector/u;

    return-void
.end method

.method public r()V
    .registers 3

    iget-object v0, p0, Ly/c;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v0

    iget-object v1, p0, Ly/c;->h:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cu;->a(Lcom/google/android/maps/driveabout/vector/v;)V

    return-void
.end method

.method protected s()V
    .registers 4

    iget-object v0, p0, Ly/c;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->u()V

    iget-object v0, p0, Ly/c;->f:Ly/p;

    sget-object v1, Ly/a;->a:Ly/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    return-void
.end method

.method protected t()V
    .registers 4

    iget-object v0, p0, Ly/c;->f:Ly/p;

    sget-object v1, Ly/a;->a:Ly/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    return-void
.end method

.method protected u()V
    .registers 4

    iget-object v0, p0, Ly/c;->f:Ly/p;

    sget-object v1, Ly/a;->a:Ly/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    return-void
.end method
