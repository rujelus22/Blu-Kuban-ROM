.class public Lu/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/l;


# instance fields
.field private final a:Lu/o;

.field private final b:Lu/i;

.field private final c:Lu/j;

.field private final d:Lu/j;


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const v2, 0x3f7d70a4

    const-wide/16 v3, 0x1388

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lu/o;

    new-instance v1, Lu/d;

    invoke-direct {v1, v2}, Lu/d;-><init>(F)V

    invoke-direct {v0, v1}, Lu/o;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lu/m;->a:Lu/o;

    .line 38
    new-instance v0, Lu/j;

    new-instance v1, Lu/d;

    invoke-direct {v1, v2}, Lu/d;-><init>(F)V

    invoke-direct {v0, v1}, Lu/j;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lu/m;->c:Lu/j;

    .line 44
    new-instance v0, Lu/i;

    new-instance v1, Lu/b;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v2}, Lu/b;-><init>(F)V

    invoke-direct {v0, v1}, Lu/i;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lu/m;->b:Lu/i;

    .line 46
    iget-object v0, p0, Lu/m;->a:Lu/o;

    invoke-virtual {v0, v3, v4}, Lu/o;->setDuration(J)V

    .line 47
    iget-object v0, p0, Lu/m;->b:Lu/i;

    invoke-virtual {v0, v3, v4}, Lu/i;->setDuration(J)V

    .line 48
    iget-object v0, p0, Lu/m;->c:Lu/j;

    invoke-virtual {v0, v3, v4}, Lu/j;->setDuration(J)V

    .line 50
    new-instance v0, Lu/j;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, v1}, Lu/j;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lu/m;->d:Lu/j;

    .line 54
    iget-object v0, p0, Lu/m;->d:Lu/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu/j;->a(I)V

    .line 55
    iget-object v0, p0, Lu/m;->d:Lu/j;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lu/j;->a(I)V

    .line 56
    iget-object v0, p0, Lu/m;->d:Lu/j;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lu/j;->setDuration(J)V

    .line 57
    iget-object v0, p0, Lu/m;->d:Lu/j;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lu/j;->setRepeatCount(I)V

    .line 58
    iget-object v0, p0, Lu/m;->d:Lu/j;

    invoke-virtual {v0}, Lu/j;->start()V

    .line 59
    return-void
.end method


# virtual methods
.method public declared-synchronized a(J)I
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 81
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lu/m;->a:Lu/o;

    invoke-virtual {v1}, Lu/o;->isInitialized()Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_74

    move-result v1

    if-nez v1, :cond_c

    .line 108
    :cond_a
    :goto_a
    monitor-exit p0

    return v0

    .line 85
    :cond_c
    :try_start_c
    iget-object v1, p0, Lu/m;->d:Lu/j;

    invoke-virtual {v1, p1, p2}, Lu/j;->a(J)V

    .line 89
    iget-object v1, p0, Lu/m;->a:Lu/o;

    invoke-virtual {v1}, Lu/o;->hasEnded()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lu/m;->b:Lu/i;

    invoke-virtual {v1}, Lu/i;->hasEnded()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lu/m;->c:Lu/j;

    invoke-virtual {v1}, Lu/j;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_a

    .line 94
    :cond_29
    iget-object v0, p0, Lu/m;->a:Lu/o;

    invoke-virtual {v0}, Lu/o;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/Q;

    iget-object v1, p0, Lu/m;->a:Lu/o;

    invoke-virtual {v1}, Lu/o;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/Q;

    invoke-virtual {v0, v1}, Ln/Q;->c(Ln/Q;)F

    move-result v0

    float-to-double v1, v0

    iget-object v0, p0, Lu/m;->a:Lu/o;

    invoke-virtual {v0}, Lu/o;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/Q;

    invoke-virtual {v0}, Ln/Q;->e()D

    move-result-wide v3

    div-double v0, v1, v3

    .line 97
    const-wide/high16 v2, 0x4059

    cmpl-double v0, v0, v2

    if-lez v0, :cond_63

    .line 98
    iget-object v0, p0, Lu/m;->a:Lu/o;

    iget-object v1, p0, Lu/m;->a:Lu/o;

    invoke-virtual {v1}, Lu/o;->b()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lu/m;->a:Lu/o;

    invoke-virtual {v2}, Lu/o;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu/o;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    :cond_63
    iget-object v0, p0, Lu/m;->a:Lu/o;

    invoke-virtual {v0, p1, p2}, Lu/o;->b(J)V

    .line 103
    iget-object v0, p0, Lu/m;->b:Lu/i;

    invoke-virtual {v0, p1, p2}, Lu/i;->b(J)V

    .line 104
    iget-object v0, p0, Lu/m;->c:Lu/j;

    invoke-virtual {v0, p1, p2}, Lu/j;->a(J)V
    :try_end_72
    .catchall {:try_start_c .. :try_end_72} :catchall_74

    .line 106
    const/4 v0, 0x1

    goto :goto_a

    .line 81
    :catchall_74
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    return-void
.end method

.method public declared-synchronized a(Ln/P;)Z
    .registers 5
    .parameter

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lu/m;->a:Lu/o;

    invoke-virtual {v0}, Lu/o;->isInitialized()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_32

    move-result v0

    if-nez v0, :cond_c

    .line 65
    const/4 v0, 0x0

    .line 75
    :goto_a
    monitor-exit p0

    return v0

    .line 68
    :cond_c
    :try_start_c
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lu/m;->a:Lu/o;

    invoke-virtual {v0}, Lu/o;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/Q;

    iget-object v1, p0, Lu/m;->b:Lu/i;

    invoke-virtual {v1}, Lu/i;->b()F

    move-result v1

    iget-object v2, p0, Lu/m;->c:Lu/j;

    invoke-virtual {v2}, Lu/j;->b()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ln/P;->a(Ln/Q;FI)V

    .line 74
    iget-object v0, p0, Lu/m;->d:Lu/j;

    invoke-virtual {v0}, Lu/j;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Ln/P;->b(F)V
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_32

    .line 75
    const/4 v0, 0x1

    goto :goto_a

    .line 64
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ln/P;)V
    .registers 4
    .parameter

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lu/m;->a:Lu/o;

    invoke-virtual {v0}, Lu/o;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Ln/P;->a()Ln/Q;

    move-result-object v0

    iget-object v1, p0, Lu/m;->a:Lu/o;

    invoke-virtual {v1}, Lu/o;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 121
    :cond_19
    iget-object v0, p0, Lu/m;->a:Lu/o;

    invoke-virtual {p1}, Ln/P;->a()Ln/Q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/o;->d(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lu/m;->a:Lu/o;

    invoke-virtual {v0}, Lu/o;->start()V

    .line 124
    :cond_27
    iget-object v0, p0, Lu/m;->b:Lu/i;

    invoke-virtual {v0}, Lu/i;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p1}, Ln/P;->b()F

    move-result v0

    iget-object v1, p0, Lu/m;->b:Lu/i;

    invoke-virtual {v1}, Lu/i;->a()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4b

    .line 126
    :cond_3d
    iget-object v0, p0, Lu/m;->b:Lu/i;

    invoke-virtual {p1}, Ln/P;->b()F

    move-result v1

    invoke-virtual {v0, v1}, Lu/i;->a(F)V

    .line 127
    iget-object v0, p0, Lu/m;->b:Lu/i;

    invoke-virtual {v0}, Lu/i;->start()V

    .line 129
    :cond_4b
    iget-object v0, p0, Lu/m;->c:Lu/j;

    invoke-virtual {v0}, Lu/j;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p1}, Ln/P;->c()I

    move-result v0

    iget-object v1, p0, Lu/m;->c:Lu/j;

    invoke-virtual {v1}, Lu/j;->a()I

    move-result v1

    if-eq v0, v1, :cond_6d

    .line 131
    :cond_5f
    iget-object v0, p0, Lu/m;->c:Lu/j;

    invoke-virtual {p1}, Ln/P;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lu/j;->a(I)V

    .line 132
    iget-object v0, p0, Lu/m;->c:Lu/j;

    invoke-virtual {v0}, Lu/j;->start()V
    :try_end_6d
    .catchall {:try_start_1 .. :try_end_6d} :catchall_6f

    .line 134
    :cond_6d
    monitor-exit p0

    return-void

    .line 119
    :catchall_6f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
