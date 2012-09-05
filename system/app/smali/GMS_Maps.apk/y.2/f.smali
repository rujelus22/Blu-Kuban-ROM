.class public abstract Ly/f;
.super Ly/s;


# instance fields
.field private a:Lu/I;

.field private h:Lu/x;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ly/s;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lu/x;[Lu/x;)V
    .registers 6

    invoke-super {p0, p1, p2}, Ly/s;->a(Lu/x;[Lu/x;)V

    invoke-virtual {p1}, Lu/x;->i()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Ly/f;->f:Ly/p;

    sget-object v1, Ly/a;->a:Ly/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    :cond_11
    return-void
.end method

.method public d()V
    .registers 4

    iget-object v0, p0, Ly/f;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Ly/f;->i:Z

    if-eqz v0, :cond_17

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Ly/f;->i:Z

    iget-object v0, p0, Ly/f;->f:Ly/p;

    sget-object v1, Ly/a;->a:Ly/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    :cond_17
    return-void
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Ly/f;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->o()V

    iget-object v0, p0, Ly/f;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->u()V

    iget-object v0, p0, Ly/f;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->w()V

    iget-object v0, p0, Ly/f;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->h(Z)V

    return-void
.end method

.method protected g()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .registers 2

    iget-object v0, p0, Ly/f;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->b()Lu/I;

    move-result-object v0

    iput-object v0, p0, Ly/f;->a:Lu/I;

    iget-object v0, p0, Ly/f;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    iput-object v0, p0, Ly/f;->h:Lu/x;

    return-void
.end method

.method public r()V
    .registers 3

    iget-object v0, p0, Ly/f;->h:Lu/x;

    iget-object v1, p0, Ly/f;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Ly/f;->a:Lu/I;

    if-eqz v0, :cond_15

    iget-object v0, p0, Ly/f;->a:Lu/I;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ly/f;->a(Lu/I;Z)V

    :goto_14
    return-void

    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Ly/f;->i:Z

    goto :goto_14
.end method

.method protected s()V
    .registers 4

    iget-object v0, p0, Ly/f;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->u()V

    iget-object v0, p0, Ly/f;->f:Ly/p;

    sget-object v1, Ly/a;->a:Ly/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    return-void
.end method

.method protected t()V
    .registers 4

    iget-object v0, p0, Ly/f;->f:Ly/p;

    sget-object v1, Ly/a;->a:Ly/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    return-void
.end method

.method protected u()V
    .registers 4

    iget-object v0, p0, Ly/f;->f:Ly/p;

    sget-object v1, Ly/a;->a:Ly/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    return-void
.end method

.method protected v()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Ly/f;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->b()Lu/I;

    move-result-object v0

    if-nez v0, :cond_11

    iget-object v0, p0, Ly/f;->d:Lcom/google/android/maps/driveabout/app/cU;

    const-string v1, ""

    invoke-interface {v0, v1, v4}, Lcom/google/android/maps/driveabout/app/cU;->a(Ljava/lang/String;Z)V

    :goto_10
    return-void

    :cond_11
    iget-object v1, p0, Ly/f;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v2, p0, Ly/f;->e:Lcom/google/android/maps/driveabout/app/aL;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/google/android/maps/driveabout/app/cU;->a(Lcom/google/android/maps/driveabout/app/aL;Lu/I;ZZ)V

    goto :goto_10
.end method
