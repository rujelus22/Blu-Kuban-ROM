.class public Ls/e;
.super Ls/f;
.source "SourceFile"


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ls/f;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/e;->c:Z

    return-void
.end method

.method private c(Lo/I;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Ls/e;->a(Lo/I;)V

    .line 80
    invoke-virtual {p0}, Ls/e;->aa()V

    .line 81
    iget-object v0, p0, Ls/e;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/maps/driveabout/app/ci;->a(Lo/I;ZZ)V

    .line 83
    if-eqz p1, :cond_26

    invoke-virtual {p1}, Lo/I;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 84
    iget-object v0, p0, Ls/e;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->x()V

    .line 88
    :goto_25
    return-void

    .line 86
    :cond_26
    iget-object v0, p0, Ls/e;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->y()V

    goto :goto_25
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;Ln/ab;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Ls/e;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Landroid/os/Bundle;Lcom/google/android/maps/driveabout/app/aN;Ln/ab;)V

    .line 94
    return-void
.end method

.method protected a(Lo/I;Lo/I;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 53
    iget-object v0, p0, Ls/e;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->b()Lo/I;

    move-result-object v0

    if-ne p1, v0, :cond_10

    .line 54
    invoke-direct {p0, p2, v1}, Ls/e;->c(Lo/I;Z)V

    .line 56
    :cond_10
    iput-boolean v1, p0, Ls/e;->c:Z

    .line 57
    return-void
.end method

.method protected a(Lo/I;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 75
    if-nez p2, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-direct {p0, p1, v0}, Ls/e;->c(Lo/I;Z)V

    .line 76
    return-void

    .line 75
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected a(Z)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 38
    iget-object v0, p0, Ls/e;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->b()Lo/I;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_21

    iget-boolean v1, p0, Ls/e;->c:Z

    if-eqz v1, :cond_21

    .line 40
    iget-object v1, p0, Ls/e;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/app/ci;->a(Lo/I;ZZ)V

    .line 41
    iput-boolean v3, p0, Ls/e;->c:Z

    .line 43
    :cond_21
    return-void
.end method

.method public b()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 23
    iget-object v0, p0, Ls/e;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/cI;->setViewMode(I)V

    .line 24
    iget-object v0, p0, Ls/e;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->p()V

    .line 25
    iget-object v0, p0, Ls/e;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->D()V

    .line 26
    iget-object v0, p0, Ls/e;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->v()V

    .line 27
    invoke-virtual {p0}, Ls/e;->aa()V

    .line 28
    iput-boolean v2, p0, Ls/e;->c:Z

    .line 29
    iget-object v0, p0, Ls/e;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->z()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 30
    iget-object v0, p0, Ls/e;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/e;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v1

    new-array v2, v2, [Lo/x;

    const/4 v3, 0x0

    iget-object v4, p0, Ls/e;->a:Ls/n;

    invoke-virtual {v4}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cI;->b(Lo/x;[Lo/x;)V

    .line 34
    :cond_58
    return-void
.end method

.method protected g()V
    .registers 2

    .prologue
    .line 47
    invoke-super {p0}, Ls/f;->g()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/e;->c:Z

    .line 49
    return-void
.end method

.method protected n()V
    .registers 4

    .prologue
    .line 61
    iget-object v0, p0, Ls/e;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_26

    .line 63
    invoke-virtual {v0}, Lo/x;->k()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lo/x;->a(I)Lo/I;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lo/I;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 65
    iget-object v0, p0, Ls/e;->a:Ls/n;

    sget-object v1, Ls/w;->l:Ls/w;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 71
    :cond_26
    :goto_26
    return-void

    .line 68
    :cond_27
    iget-object v0, p0, Ls/e;->a:Ls/n;

    sget-object v1, Ls/w;->h:Ls/w;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    goto :goto_26
.end method
