.class Lcom/google/android/maps/driveabout/vector/bO;
.super Lcom/google/android/maps/driveabout/vector/aT;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:F

.field private d:J

.field private final e:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aT;-><init>(I)V

    .line 114
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/bO;->e:I

    .line 115
    return-void
.end method

.method static a(JJIZ)F
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 185
    sub-long v0, p2, p0

    long-to-float v0, v0

    int-to-float v1, p4

    div-float/2addr v0, v1

    .line 186
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 187
    if-eqz p5, :cond_13

    :goto_12
    return v0

    :cond_13
    sub-float v0, v2, v0

    goto :goto_12
.end method

.method static a(JJFZ)J
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    if-eqz p5, :cond_9

    .line 179
    :goto_2
    long-to-float v0, p2

    mul-float/2addr v0, p4

    float-to-int v0, v0

    int-to-long v0, v0

    sub-long v0, p0, v0

    return-wide v0

    .line 178
    :cond_9
    const/high16 v0, 0x3f80

    sub-float p4, v0, p4

    goto :goto_2
.end method


# virtual methods
.method a(ZJ)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->b:Z

    if-eq p1, v0, :cond_22

    .line 132
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/bO;->b:Z

    .line 133
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->e:I

    int-to-long v2, v0

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/bO;->c:F

    iget-boolean v5, p0, Lcom/google/android/maps/driveabout/vector/bO;->b:Z

    move-wide v0, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bO;->a(JJFZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->d:J

    .line 135
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->d:J

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/bO;->d:J

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/bO;->e:I

    iget-boolean v5, p0, Lcom/google/android/maps/driveabout/vector/bO;->b:Z

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bO;->a(JJIZ)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->c:F

    .line 138
    :cond_22
    return-void
.end method

.method a(J)Z
    .registers 9
    .parameter

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->d:J

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/bO;->e:I

    iget-boolean v5, p0, Lcom/google/android/maps/driveabout/vector/bO;->b:Z

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bO;->a(JJIZ)F

    move-result v0

    .line 160
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bO;->b:Z

    if-eqz v1, :cond_17

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bO;->c:F

    const/high16 v2, 0x3f80

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_22

    :cond_17
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bO;->b:Z

    if-nez v1, :cond_31

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bO;->c:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_31

    .line 162
    :cond_22
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->c:F

    .line 163
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->c:F

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bO;->a:I

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/u;->a(FI)I

    move-result v0

    .line 164
    invoke-super {p0, v0}, Lcom/google/android/maps/driveabout/vector/aT;->b(I)V

    .line 165
    const/4 v0, 0x1

    .line 167
    :goto_30
    return v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public b(I)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bO;->a:I

    .line 120
    return-void
.end method

.method public declared-synchronized b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 126
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/bO;->a(ZJ)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 127
    monitor-exit p0

    return-void

    .line 126
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Z
    .registers 3

    .prologue
    .line 145
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->b:Z
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

    .prologue
    .line 153
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/bO;->a(J)Z
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
