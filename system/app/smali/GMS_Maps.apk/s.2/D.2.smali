.class public Ls/d;
.super Ls/f;
.source "SourceFile"


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ls/f;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/d;->c:Z

    return-void
.end method

.method private b(Lo/I;)Lo/I;
    .registers 4
    .parameter

    .prologue
    .line 105
    if-nez p1, :cond_24

    .line 106
    iget-object v0, p0, Ls/d;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->q()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 108
    iget-object v0, p0, Ls/d;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_24

    .line 110
    invoke-virtual {v0}, Lo/x;->k()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lo/x;->a(I)Lo/I;

    move-result-object p1

    .line 114
    :cond_24
    return-object p1
.end method

.method private c(Lo/I;)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0x10

    .line 123
    if-eqz p1, :cond_26

    invoke-virtual {p1}, Lo/I;->b()I

    move-result v0

    if-eq v0, v1, :cond_10

    invoke-virtual {p1}, Lo/I;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    :cond_10
    invoke-virtual {p1}, Lo/I;->b()I

    move-result v0

    if-ne v0, v1, :cond_26

    invoke-virtual {p1}, Lo/I;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 126
    :cond_1c
    iget-object v0, p0, Ls/d;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->z()V

    .line 130
    :goto_25
    return-void

    .line 128
    :cond_26
    iget-object v0, p0, Ls/d;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->A()V

    goto :goto_25
.end method

.method private c(Lo/I;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Ls/d;->a(Lo/I;)V

    .line 88
    invoke-virtual {p0}, Ls/d;->aa()V

    .line 89
    iget-object v0, p0, Ls/d;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/maps/driveabout/app/ci;->a(Lo/I;ZZ)V

    .line 90
    invoke-direct {p0, p1}, Ls/d;->c(Lo/I;)V

    .line 91
    iget-object v0, p0, Ls/d;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/app/cI;->setNavigationImageStep(Lo/I;)V

    .line 92
    return-void
.end method


# virtual methods
.method protected a(FF)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 147
    return-void
.end method

.method protected a(Lo/I;Lo/I;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Ls/d;->c:Z

    if-eqz v0, :cond_a

    .line 62
    iget-object v0, p0, Ls/d;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->i()Z

    .line 70
    :cond_9
    :goto_9
    return-void

    .line 66
    :cond_a
    iget-object v0, p0, Ls/d;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->b()Lo/I;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Ls/d;->c(Lo/I;Z)V

    goto :goto_9
.end method

.method protected a(Lo/I;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 75
    if-nez p2, :cond_b

    const/4 v0, 0x1

    :goto_4
    invoke-direct {p0, p1, v0}, Ls/d;->c(Lo/I;Z)V

    .line 77
    invoke-virtual {p0, v1}, Ls/d;->a_(Z)V

    .line 78
    return-void

    :cond_b
    move v0, v1

    .line 75
    goto :goto_4
.end method

.method protected a(Z)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 134
    iget-object v0, p0, Ls/d;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->b()Lo/I;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_1a

    .line 136
    iget-object v1, p0, Ls/d;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Lcom/google/android/maps/driveabout/app/ci;->a(Lo/I;ZZ)V

    .line 138
    :cond_1a
    return-void
.end method

.method public a_(Z)V
    .registers 2
    .parameter

    .prologue
    .line 25
    iput-boolean p1, p0, Ls/d;->c:Z

    .line 26
    return-void
.end method

.method public b()V
    .registers 5

    .prologue
    .line 30
    iget-object v0, p0, Ls/d;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->setViewMode(I)V

    .line 31
    iget-object v0, p0, Ls/d;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->p()V

    .line 32
    iget-object v0, p0, Ls/d;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->D()V

    .line 36
    iget-object v0, p0, Ls/d;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->y()V

    .line 37
    iget-object v0, p0, Ls/d;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->b()Lo/I;

    move-result-object v0

    .line 38
    invoke-direct {p0, v0}, Ls/d;->b(Lo/I;)Lo/I;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_4c

    .line 40
    iget-object v0, p0, Ls/d;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->setNavigationImageStep(Lo/I;)V

    .line 41
    const-string v2, "w"

    invoke-virtual {v1}, Lo/I;->b()I

    move-result v0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_53

    const/4 v0, 0x1

    :goto_49
    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Z)V

    .line 44
    :cond_4c
    invoke-direct {p0, v1}, Ls/d;->c(Lo/I;)V

    .line 45
    invoke-virtual {p0}, Ls/d;->aa()V

    .line 46
    return-void

    .line 41
    :cond_53
    const/4 v0, 0x0

    goto :goto_49
.end method

.method public e()V
    .registers 3

    .prologue
    .line 50
    invoke-super {p0}, Ls/f;->e()V

    .line 51
    iget-object v0, p0, Ls/d;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->A()V

    .line 52
    iget-object v0, p0, Ls/d;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->setNavigationImageStep(Lo/I;)V

    .line 53
    return-void
.end method
