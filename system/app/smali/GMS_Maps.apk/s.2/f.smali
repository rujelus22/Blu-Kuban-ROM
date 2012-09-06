.class public abstract Ls/f;
.super Ls/q;
.source "SourceFile"


# instance fields
.field private c:Lo/I;

.field private d:Lo/x;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ls/q;-><init>()V

    .line 21
    iput-object v0, p0, Ls/f;->c:Lo/I;

    .line 22
    iput-object v0, p0, Ls/f;->d:Lo/x;

    return-void
.end method


# virtual methods
.method protected a(Lo/x;[Lo/x;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Ls/q;->a(Lo/x;[Lo/x;)V

    .line 94
    invoke-virtual {p1}, Lo/x;->i()Z

    move-result v0

    if-nez v0, :cond_11

    .line 95
    iget-object v0, p0, Ls/f;->a:Ls/n;

    sget-object v1, Ls/w;->h:Ls/w;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 97
    :cond_11
    return-void
.end method

.method public c()V
    .registers 4

    .prologue
    .line 47
    iget-object v0, p0, Ls/f;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Ls/f;->e:Z

    if-eqz v0, :cond_1b

    .line 48
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/f;->e:Z

    .line 49
    iget-object v0, p0, Ls/f;->a:Ls/n;

    sget-object v1, Ls/w;->h:Ls/w;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 51
    :cond_1b
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Ls/f;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->q()V

    .line 56
    iget-object v0, p0, Ls/f;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->w()V

    .line 57
    iget-object v0, p0, Ls/f;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->y()V

    .line 58
    iget-object v0, p0, Ls/f;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->g(Z)V

    .line 59
    return-void
.end method

.method protected f()I
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public p()V
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Ls/f;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->b()Lo/I;

    move-result-object v0

    iput-object v0, p0, Ls/f;->c:Lo/I;

    .line 42
    iget-object v0, p0, Ls/f;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    iput-object v0, p0, Ls/f;->d:Lo/x;

    .line 43
    return-void
.end method

.method public q()V
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Ls/f;->d:Lo/x;

    iget-object v1, p0, Ls/f;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Ls/f;->c:Lo/I;

    if-eqz v0, :cond_19

    .line 31
    iget-object v0, p0, Ls/f;->c:Lo/I;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ls/f;->a(Lo/I;Z)V

    .line 37
    :goto_18
    return-void

    .line 35
    :cond_19
    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/f;->e:Z

    goto :goto_18
.end method

.method protected r()V
    .registers 4

    .prologue
    .line 81
    iget-object v0, p0, Ls/f;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->w()V

    .line 82
    iget-object v0, p0, Ls/f;->a:Ls/n;

    sget-object v1, Ls/w;->h:Ls/w;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 83
    return-void
.end method

.method protected s()V
    .registers 4

    .prologue
    .line 101
    iget-object v0, p0, Ls/f;->a:Ls/n;

    sget-object v1, Ls/w;->h:Ls/w;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 102
    return-void
.end method

.method protected t()V
    .registers 4

    .prologue
    .line 106
    iget-object v0, p0, Ls/f;->a:Ls/n;

    sget-object v1, Ls/w;->h:Ls/w;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 107
    return-void
.end method

.method protected u()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 70
    iget-object v0, p0, Ls/f;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->b()Lo/I;

    move-result-object v0

    .line 71
    if-nez v0, :cond_19

    .line 72
    iget-object v0, p0, Ls/f;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1, v4}, Lcom/google/android/maps/driveabout/app/cI;->a(Ljava/lang/String;Z)V

    .line 77
    :goto_18
    return-void

    .line 74
    :cond_19
    iget-object v1, p0, Ls/f;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v1

    iget-object v2, p0, Ls/f;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/google/android/maps/driveabout/app/cI;->a(Lcom/google/android/maps/driveabout/app/aN;Lo/I;ZZ)V

    goto :goto_18
.end method
