.class Lcom/google/android/maps/driveabout/vector/cZ;
.super Lcom/google/android/maps/driveabout/vector/l;


# instance fields
.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:Z

.field private volatile i:Z

.field private final j:Lcom/google/android/maps/driveabout/vector/w;

.field private final k:[F


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/w;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Lcom/google/android/maps/driveabout/vector/u;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cZ;->k:[F

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/cZ;->j:Lcom/google/android/maps/driveabout/vector/w;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cZ;->i:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/t;)Lcom/google/android/maps/driveabout/vector/v;
    .registers 14

    const/high16 v10, 0x42c8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v11, 0x0

    monitor-enter p0

    :try_start_6
    iget v4, p0, Lcom/google/android/maps/driveabout/vector/cZ;->d:F

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/cZ;->e:F

    iget v8, p0, Lcom/google/android/maps/driveabout/vector/cZ;->f:F

    iget v9, p0, Lcom/google/android/maps/driveabout/vector/cZ;->g:F

    iget-boolean v6, p0, Lcom/google/android/maps/driveabout/vector/cZ;->h:Z

    if-eqz v6, :cond_46

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cZ;->b:F

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cZ;->c:F

    move v7, v2

    :goto_17
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cZ;->b:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cZ;->b:F

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cZ;->c:F

    sub-float/2addr v2, v7

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cZ;->c:F

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cZ;->d:F

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cZ;->f:F

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cZ;->e:F

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cZ;->g:F

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cZ;->h:Z

    cmpl-float v2, v3, v11

    if-nez v2, :cond_93

    cmpl-float v2, v7, v11

    if-nez v2, :cond_93

    if-nez v6, :cond_3e

    cmpl-float v2, v4, v8

    if-nez v2, :cond_93

    cmpl-float v2, v5, v9

    if-nez v2, :cond_93

    :cond_3e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cZ;->i:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cZ;->a:Lcom/google/android/maps/driveabout/vector/u;

    monitor-exit p0

    move-object p0, v0

    :cond_45
    :goto_45
    return-object p0

    :cond_46
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cZ;->b:F

    cmpg-float v2, v2, v11

    if-gez v2, :cond_72

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cZ;->b:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cZ;->b:F

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/cZ;->b:F

    mul-float/2addr v3, v7

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/cZ;->b:F

    mul-float/2addr v3, v7

    mul-float/2addr v3, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :goto_5b
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cZ;->c:F

    cmpg-float v2, v2, v11

    if-gez v2, :cond_82

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cZ;->c:F

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/cZ;->c:F

    iget v10, p0, Lcom/google/android/maps/driveabout/vector/cZ;->c:F

    mul-float/2addr v7, v10

    const v10, -0x42333333

    mul-float/2addr v7, v10

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move v7, v2

    goto :goto_17

    :cond_72
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cZ;->b:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cZ;->b:F

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/cZ;->b:F

    mul-float/2addr v3, v7

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/cZ;->b:F

    mul-float/2addr v3, v7

    mul-float/2addr v3, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_5b

    :cond_82
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cZ;->c:F

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/cZ;->c:F

    iget v10, p0, Lcom/google/android/maps/driveabout/vector/cZ;->c:F

    mul-float/2addr v7, v10

    const v10, 0x3dcccccd

    mul-float/2addr v7, v10

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move v7, v2

    goto :goto_17

    :cond_93
    monitor-exit p0
    :try_end_94
    .catchall {:try_start_6 .. :try_end_94} :catchall_e3

    if-nez v6, :cond_e6

    cmpl-float v2, v4, v8

    if-nez v2, :cond_9e

    cmpl-float v2, v5, v9

    if-eqz v2, :cond_e6

    :cond_9e
    move v6, v0

    :goto_9f
    cmpl-float v2, v7, v11

    if-eqz v2, :cond_e8

    move v2, v0

    :goto_a4
    cmpl-float v10, v3, v11

    if-eqz v10, :cond_ea

    :goto_a8
    if-eqz v6, :cond_bf

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cZ;->a:Lcom/google/android/maps/driveabout/vector/u;

    sub-float v6, v8, v4

    sub-float v8, v9, v5

    invoke-static {v1, p1, v6, v8}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/t;FF)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cZ;->a:Lcom/google/android/maps/driveabout/vector/u;

    if-nez v2, :cond_ba

    if-eqz v0, :cond_bf

    :cond_ba
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cZ;->a:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/vector/t;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_bf
    if-eqz v2, :cond_d4

    invoke-virtual {p1, v4, v5}, Lcom/google/android/maps/driveabout/vector/t;->d(FF)Lt/L;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cZ;->j:Lcom/google/android/maps/driveabout/vector/w;

    invoke-static {p1, v2, v1, v7}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/w;Lt/L;F)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cZ;->a:Lcom/google/android/maps/driveabout/vector/u;

    if-eqz v0, :cond_d4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cZ;->a:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/vector/t;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_d4
    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cZ;->a:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cZ;->j:Lcom/google/android/maps/driveabout/vector/w;

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/w;FFF)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cZ;->a:Lcom/google/android/maps/driveabout/vector/u;

    goto/16 :goto_45

    :catchall_e3
    move-exception v0

    :try_start_e4
    monitor-exit p0
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    throw v0

    :cond_e6
    move v6, v1

    goto :goto_9f

    :cond_e8
    move v2, v1

    goto :goto_a4

    :cond_ea
    move v0, v1

    goto :goto_a8
.end method

.method declared-synchronized a(FFFFFFZ)[F
    .registers 12

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cZ;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cZ;->b:F

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cZ;->c:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cZ;->c:F

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/cZ;->d:F

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/cZ;->e:F

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cZ;->h:Z

    if-nez v0, :cond_15

    if-nez p7, :cond_51

    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cZ;->h:Z

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/cZ;->f:F

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/cZ;->g:F

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cZ;->i:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cZ;->k:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cZ;->a:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cZ;->b:F

    add-float/2addr v2, v3

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cV;->i()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cZ;->k:[F

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cZ;->a:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cZ;->c:F

    add-float/2addr v2, v3

    invoke-static {v2}, Lcom/google/android/maps/driveabout/vector/cV;->e(F)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cZ;->k:[F
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_5a

    monitor-exit p0

    return-object v0

    :cond_51
    :try_start_51
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cZ;->i:Z

    if-nez v0, :cond_1c

    iput p5, p0, Lcom/google/android/maps/driveabout/vector/cZ;->f:F

    iput p6, p0, Lcom/google/android/maps/driveabout/vector/cZ;->g:F
    :try_end_59
    .catchall {:try_start_51 .. :try_end_59} :catchall_5a

    goto :goto_1c

    :catchall_5a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
