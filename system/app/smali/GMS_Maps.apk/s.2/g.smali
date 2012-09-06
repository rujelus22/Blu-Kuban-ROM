.class public Ls/g;
.super Ls/q;
.source "SourceFile"


# instance fields
.field private c:J

.field private volatile d:Z

.field private e:Z

.field private f:Ls/i;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0}, Ls/q;-><init>()V

    .line 49
    new-instance v0, Ls/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls/i;-><init>(Ls/g;Ls/h;)V

    iput-object v0, p0, Ls/g;->f:Ls/i;

    return-void
.end method

.method static synthetic a(Ls/g;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 19
    iput-boolean p1, p0, Ls/g;->d:Z

    return p1
.end method


# virtual methods
.method protected a(Z)V
    .registers 6
    .parameter

    .prologue
    .line 96
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 97
    iget-wide v2, p0, Ls/g;->c:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_b

    .line 122
    :goto_a
    return-void

    .line 100
    :cond_b
    const-wide/16 v2, 0x320

    add-long/2addr v0, v2

    iput-wide v0, p0, Ls/g;->c:J

    .line 102
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 104
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v0

    packed-switch v0, :pswitch_data_6e

    .line 112
    const v0, 0x47435000

    .line 115
    :goto_2c
    iget-object v1, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v1

    iget-object v2, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v2}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v2

    iget-object v3, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v3}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/app/aN;->a(F)Ln/ai;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/app/ci;->a(Landroid/location/Location;Ln/ai;)V

    goto :goto_a

    .line 106
    :pswitch_4e
    const v0, 0x463b8000

    .line 107
    goto :goto_2c

    .line 109
    :pswitch_52
    const v0, 0x453b8000

    .line 110
    goto :goto_2c

    .line 119
    :cond_56
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    iget-object v1, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/ci;->a(Landroid/location/Location;)V

    goto :goto_a

    .line 104
    :pswitch_data_6e
    .packed-switch 0x2
        :pswitch_52
        :pswitch_4e
    .end packed-switch
.end method

.method public b()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 53
    iput-boolean v5, p0, Ls/g;->d:Z

    .line 54
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/g;->f:Ls/i;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->a(Lcom/google/android/maps/driveabout/vector/dd;)V

    .line 55
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->setViewMode(I)V

    .line 56
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->p()V

    .line 57
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/google/android/maps/driveabout/app/cI;->setTrafficButtonState(Z)V

    .line 58
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->D()V

    .line 60
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 61
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->b(Lo/x;)V

    .line 63
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->k()Lo/I;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 64
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->k()Lo/I;

    move-result-object v0

    invoke-virtual {p0, v0}, Ls/g;->a(Lo/I;)V

    .line 66
    :cond_6b
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->z()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 67
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v1

    new-array v2, v5, [Lo/x;

    const/4 v3, 0x0

    iget-object v4, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v4}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cI;->b(Lo/x;[Lo/x;)V

    .line 73
    :cond_99
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->m()[Lo/x;

    move-result-object v0

    if-eqz v0, :cond_c7

    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->m()[Lo/x;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v5, :cond_be

    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->o()Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 76
    :cond_be
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/google/android/maps/driveabout/app/cI;->c(Z)V

    .line 79
    :cond_c7
    return-void
.end method

.method protected b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 140
    if-nez p1, :cond_7

    .line 141
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->i()Z

    .line 143
    :cond_7
    return-void
.end method

.method public e()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/g;->f:Ls/i;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->b(Lcom/google/android/maps/driveabout/vector/dd;)V

    .line 84
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->q()V

    .line 85
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->H()V

    .line 86
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/cI;->setTrafficButtonState(Z)V

    .line 87
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/cI;->g(Z)V

    .line 88
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->r()V

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ls/g;->c:J

    .line 90
    return-void
.end method

.method protected n()V
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->r()V

    .line 148
    return-void
.end method

.method public p()V
    .registers 2

    .prologue
    .line 152
    iget-boolean v0, p0, Ls/g;->d:Z

    iput-boolean v0, p0, Ls/g;->e:Z

    .line 153
    return-void
.end method

.method public q()V
    .registers 3

    .prologue
    .line 157
    iget-boolean v0, p0, Ls/g;->e:Z

    iput-boolean v0, p0, Ls/g;->d:Z

    .line 160
    iget-boolean v0, p0, Ls/g;->d:Z

    if-nez v0, :cond_13

    .line 161
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/g;->f:Ls/i;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->b(Lcom/google/android/maps/driveabout/vector/dd;)V

    .line 163
    :cond_13
    return-void
.end method

.method protected v()V
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->setTrafficMode(I)V

    .line 127
    return-void
.end method

.method protected w()V
    .registers 6

    .prologue
    .line 131
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    .line 132
    iget-object v0, p0, Ls/g;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->q()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, -0x1

    :goto_13
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->F()I

    move-result v1

    const/4 v4, 0x1

    invoke-interface {v2, v0, v3, v1, v4}, Lcom/google/android/maps/driveabout/app/cI;->setTimeRemaining(IZIZ)V

    .line 136
    return-void

    .line 132
    :cond_20
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->g()I

    move-result v0

    goto :goto_13
.end method
