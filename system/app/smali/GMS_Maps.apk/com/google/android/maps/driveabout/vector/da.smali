.class Lcom/google/android/maps/driveabout/vector/da;
.super Lcom/google/android/maps/driveabout/vector/l;


# instance fields
.field private b:F

.field private c:F

.field private volatile d:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/u;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Lcom/google/android/maps/driveabout/vector/u;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/da;->d:I

    if-lt v1, v0, :cond_6

    const/4 v0, 0x0

    :cond_6
    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/t;)Lcom/google/android/maps/driveabout/vector/v;
    .registers 6

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/da;->b:F

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/da;->c:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/da;->b:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/da;->c:F

    cmpl-float v2, v0, v3

    if-nez v2, :cond_27

    cmpl-float v2, v1, v3

    if-nez v2, :cond_27

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/da;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/da;->d:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_22

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/da;->a:Lcom/google/android/maps/driveabout/vector/u;

    monitor-exit p0

    move-object p0, v0

    :goto_21
    return-object p0

    :cond_22
    monitor-exit p0

    goto :goto_21

    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_24

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/da;->a:Lcom/google/android/maps/driveabout/vector/u;

    invoke-static {v2, p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/t;FF)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/da;->a:Lcom/google/android/maps/driveabout/vector/u;

    goto :goto_21
.end method

.method declared-synchronized a(FF)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/da;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/da;->b:F

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/da;->c:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/da;->c:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/da;->d:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
