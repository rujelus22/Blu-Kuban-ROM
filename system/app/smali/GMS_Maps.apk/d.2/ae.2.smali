.class public Ld/ae;
.super Ljava/lang/Object;


# instance fields
.field private final a:F

.field private b:I

.field private c:J


# direct methods
.method public constructor <init>(F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ld/ae;->b:I

    const v0, 0x476a6000

    div-float/2addr v0, p1

    iput v0, p0, Ld/ae;->a:F

    return-void
.end method


# virtual methods
.method public declared-synchronized a()J
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Ld/ae;->b:I

    if-nez v0, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1b

    move-result-wide v0

    :goto_9
    monitor-exit p0

    return-wide v0

    :cond_b
    :try_start_b
    iget-wide v0, p0, Ld/ae;->c:J

    iget v2, p0, Ld/ae;->b:I

    int-to-float v2, v2

    iget v3, p0, Ld/ae;->a:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    move-result-wide v2

    double-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_9

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ld/ae;->c:J

    iget v0, p0, Ld/ae;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/ae;->b:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
