.class Lcom/google/android/maps/driveabout/vector/bz;
.super Lcom/google/android/maps/driveabout/vector/aS;


# instance fields
.field private a:I

.field private b:Z

.field private c:F

.field private d:J

.field private final e:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aS;-><init>(I)V

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/bz;->e:I

    return-void
.end method

.method static a(JJIZ)F
    .registers 9

    const/high16 v2, 0x3f80

    sub-long v0, p2, p0

    long-to-float v0, v0

    int-to-float v1, p4

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    if-eqz p5, :cond_13

    :goto_12
    return v0

    :cond_13
    sub-float v0, v2, v0

    goto :goto_12
.end method

.method static a(JJFZ)J
    .registers 8

    if-eqz p5, :cond_9

    :goto_2
    long-to-float v0, p2

    mul-float/2addr v0, p4

    float-to-int v0, v0

    int-to-long v0, v0

    sub-long v0, p0, v0

    return-wide v0

    :cond_9
    const/high16 v0, 0x3f80

    sub-float p4, v0, p4

    goto :goto_2
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bz;->a:I

    return-void
.end method

.method a(ZJ)V
    .registers 10

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bz;->b:Z

    if-eq p1, v0, :cond_22

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/bz;->b:Z

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bz;->e:I

    int-to-long v2, v0

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/bz;->c:F

    iget-boolean v5, p0, Lcom/google/android/maps/driveabout/vector/bz;->b:Z

    move-wide v0, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bz;->a(JJFZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/bz;->d:J

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/bz;->d:J

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/bz;->d:J

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/bz;->e:I

    iget-boolean v5, p0, Lcom/google/android/maps/driveabout/vector/bz;->b:Z

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bz;->a(JJIZ)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bz;->c:F

    :cond_22
    return-void
.end method

.method a(J)Z
    .registers 9

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/bz;->d:J

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/bz;->e:I

    iget-boolean v5, p0, Lcom/google/android/maps/driveabout/vector/bz;->b:Z

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bz;->a(JJIZ)F

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bz;->b:Z

    if-eqz v1, :cond_17

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bz;->c:F

    const/high16 v2, 0x3f80

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_22

    :cond_17
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bz;->b:Z

    if-nez v1, :cond_31

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bz;->c:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_31

    :cond_22
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bz;->c:F

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bz;->c:F

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bz;->a:I

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/C;->a(FI)I

    move-result v0

    invoke-super {p0, v0}, Lcom/google/android/maps/driveabout/vector/aS;->a(I)V

    const/4 v0, 0x1

    :goto_30
    return v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public declared-synchronized b(Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/bz;->a(ZJ)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bz;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bz;->b:Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_11

    if-eqz v0, :cond_f

    :cond_c
    const/4 v0, 0x1

    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/bz;->a(J)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    move-result v0

    monitor-exit p0

    return v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method
