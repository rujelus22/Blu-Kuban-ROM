.class public Ls/c;
.super Ls/q;
.source "SourceFile"


# instance fields
.field private c:Lcom/google/android/maps/driveabout/vector/l;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ls/q;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/c;->d:Z

    return-void
.end method


# virtual methods
.method protected a(FF)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0}, Ls/c;->aa()V

    .line 67
    return-void
.end method

.method protected a(FFF)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, Ls/c;->aa()V

    .line 72
    return-void
.end method

.method protected a(Landroid/os/Bundle;Ln/ab;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Ls/c;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Landroid/os/Bundle;Lcom/google/android/maps/driveabout/app/aN;Ln/ab;)V

    .line 113
    return-void
.end method

.method protected a(Lo/I;Lo/I;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 82
    if-eqz p1, :cond_e

    iget-object v0, p0, Ls/c;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->b()Lo/I;

    move-result-object v0

    if-ne p1, v0, :cond_11

    .line 83
    :cond_e
    invoke-virtual {p0, p2}, Ls/c;->a(Lo/I;)V

    .line 85
    :cond_11
    return-void
.end method

.method protected a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Ls/c;->d:Z

    if-eqz v0, :cond_1a

    .line 58
    iget-object v0, p0, Ls/c;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    iget-object v1, p0, Ls/c;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/app/aN;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/c;->d:Z

    .line 62
    :cond_1a
    return-void
.end method

.method public b()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 25
    iget-object v0, p0, Ls/c;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/cI;->setViewMode(I)V

    .line 26
    iget-object v0, p0, Ls/c;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->p()V

    .line 27
    iget-object v0, p0, Ls/c;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->D()V

    .line 28
    iget-object v0, p0, Ls/c;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->w()V

    .line 29
    iget-object v0, p0, Ls/c;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->z()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 30
    iget-object v0, p0, Ls/c;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/c;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v1

    new-array v2, v2, [Lo/x;

    const/4 v3, 0x0

    iget-object v4, p0, Ls/c;->a:Ls/n;

    invoke-virtual {v4}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cI;->b(Lo/x;[Lo/x;)V

    .line 34
    :cond_53
    iget-object v0, p0, Ls/c;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->b()Lo/I;

    move-result-object v0

    invoke-virtual {p0, v0}, Ls/c;->a(Lo/I;)V

    .line 35
    invoke-virtual {p0}, Ls/c;->aa()V

    .line 36
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 40
    iget-object v0, p0, Ls/c;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->q()V

    .line 41
    iget-object v0, p0, Ls/c;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->g(Z)V

    .line 42
    return-void
.end method

.method protected g()V
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Ls/c;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->f()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/c;->d:Z

    .line 78
    return-void
.end method

.method public p()V
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Ls/c;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ci;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    iput-object v0, p0, Ls/c;->c:Lcom/google/android/maps/driveabout/vector/l;

    .line 48
    return-void
.end method

.method public q()V
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Ls/c;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    iget-object v1, p0, Ls/c;->c:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/vector/m;)V

    .line 53
    return-void
.end method

.method protected r()V
    .registers 4

    .prologue
    .line 89
    iget-object v0, p0, Ls/c;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->w()V

    .line 90
    iget-object v0, p0, Ls/c;->a:Ls/n;

    sget-object v1, Ls/w;->h:Ls/w;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 91
    return-void
.end method

.method protected s()V
    .registers 4

    .prologue
    .line 100
    iget-object v0, p0, Ls/c;->a:Ls/n;

    sget-object v1, Ls/w;->h:Ls/w;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 101
    return-void
.end method

.method protected t()V
    .registers 4

    .prologue
    .line 105
    iget-object v0, p0, Ls/c;->a:Ls/n;

    sget-object v1, Ls/w;->h:Ls/w;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 106
    return-void
.end method
