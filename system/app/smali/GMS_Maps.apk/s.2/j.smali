.class public Ls/j;
.super Ls/q;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ls/q;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/maps/driveabout/app/bM;)V
    .registers 3
    .parameter

    .prologue
    .line 66
    invoke-super {p0, p1}, Ls/q;->a(Lcom/google/android/maps/driveabout/app/bM;)V

    .line 67
    const v0, 0x7f100116

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 68
    const v0, 0x7f1004b9

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->a(I)V

    .line 69
    return-void
.end method

.method protected a(Lo/I;Lo/I;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Ls/j;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/maps/driveabout/app/cI;->setCurrentDirectionsListStep(Lo/I;)V

    .line 47
    return-void
.end method

.method protected a(Lo/x;[Lo/x;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Ls/q;->a(Lo/x;[Lo/x;)V

    .line 39
    iget-object v0, p0, Ls/j;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/j;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->a(Lo/x;)Z

    .line 41
    iget-object v0, p0, Ls/j;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->B()V

    .line 42
    return-void
.end method

.method protected a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 33
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 17
    iget-object v0, p0, Ls/j;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->w()V

    .line 18
    iget-object v0, p0, Ls/j;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->C()V

    .line 19
    iget-object v0, p0, Ls/j;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/j;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->a(Lo/x;)Z

    .line 21
    iget-object v0, p0, Ls/j;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->k()Lo/I;

    move-result-object v0

    .line 22
    if-eqz v0, :cond_45

    .line 23
    iget-object v1, p0, Ls/j;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/app/cI;->setCurrentDirectionsListStep(Lo/I;)V

    .line 27
    :goto_3a
    iget-object v0, p0, Ls/j;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->setViewMode(I)V

    .line 28
    return-void

    .line 25
    :cond_45
    iget-object v0, p0, Ls/j;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->B()V

    goto :goto_3a
.end method

.method protected r()V
    .registers 4

    .prologue
    .line 51
    iget-object v0, p0, Ls/j;->a:Ls/n;

    sget-object v1, Ls/w;->h:Ls/w;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 52
    return-void
.end method

.method protected u()V
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Ls/j;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/j;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->a(Lcom/google/android/maps/driveabout/app/aN;)V

    .line 57
    return-void
.end method

.method protected x()V
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Ls/j;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->setTopOverlayText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method
