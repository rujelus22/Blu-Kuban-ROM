.class Lcom/google/android/maps/driveabout/vector/dK;
.super Lcom/google/android/maps/driveabout/vector/c;
.source "SourceFile"


# instance fields
.field private b:F

.field private c:F

.field private d:J


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/l;)V
    .registers 2
    .parameter

    .prologue
    .line 1044
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/c;-><init>(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 1045
    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1085
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dK;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dK;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x2

    goto :goto_e
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;)Lcom/google/android/maps/driveabout/vector/m;
    .registers 9
    .parameter

    .prologue
    const v6, 0x3e19999a

    const v5, 0x3bc49ba6

    const/4 v4, 0x0

    .line 1063
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1064
    monitor-enter p0

    .line 1065
    :try_start_c
    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/dK;->d:J

    sub-long v2, v0, v2

    .line 1066
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/dK;->d:J

    .line 1067
    neg-long v0, v2

    long-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1068
    const/high16 v1, 0x3f80

    sub-float/2addr v1, v0

    div-float/2addr v1, v5

    .line 1069
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/dK;->b:F

    mul-float/2addr v2, v1

    .line 1070
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/dK;->c:F

    mul-float/2addr v1, v3

    .line 1071
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/dK;->b:F

    mul-float/2addr v3, v0

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/dK;->b:F

    .line 1072
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/dK;->c:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dK;->c:F

    .line 1073
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dK;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_49

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dK;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_49

    .line 1075
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dK;->b:F

    .line 1076
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dK;->c:F

    .line 1078
    :cond_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_c .. :try_end_4a} :catchall_61

    .line 1079
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dK;->a:Lcom/google/android/maps/driveabout/vector/l;

    invoke-static {v0, p1, v2, v1}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/vector/k;FF)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dK;->a:Lcom/google/android/maps/driveabout/vector/l;

    .line 1080
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dK;->b:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_60

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dK;->c:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_60

    iget-object p0, p0, Lcom/google/android/maps/driveabout/vector/dK;->a:Lcom/google/android/maps/driveabout/vector/l;

    :cond_60
    return-object p0

    .line 1078
    :catchall_61
    move-exception v0

    :try_start_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v0
.end method

.method declared-synchronized a(FF)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const v1, -0x457ced91

    .line 1053
    monitor-enter p0

    mul-float v0, p1, v1

    :try_start_6
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dK;->b:F

    .line 1054
    mul-float v0, p2, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dK;->c:F

    .line 1055
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/dK;->d:J
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_14

    .line 1056
    monitor-exit p0

    return-void

    .line 1053
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
