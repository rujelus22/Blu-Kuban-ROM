.class Lcom/google/android/maps/driveabout/app/eN;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/eM;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/eM;JJ)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/eN;->a:Lcom/google/android/maps/driveabout/app/eM;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onFinish()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/eN;->b:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eN;->a:Lcom/google/android/maps/driveabout/app/eM;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/eM;->c:Lcom/google/android/maps/driveabout/app/eH;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/eH;->a()V

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/eN;->b:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTick(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/eN;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eN;->a:Lcom/google/android/maps/driveabout/app/eM;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/eM;->c:Lcom/google/android/maps/driveabout/app/eH;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/eH;->a(J)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_5

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
