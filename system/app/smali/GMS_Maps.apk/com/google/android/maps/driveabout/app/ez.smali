.class Lcom/google/android/maps/driveabout/app/ez;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/ey;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/ey;JJ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ez;->a:Lcom/google/android/maps/driveabout/app/ey;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onFinish()V
    .registers 2

    .prologue
    .line 244
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ez;->b:Z

    if-nez v0, :cond_c

    .line 245
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ez;->a:Lcom/google/android/maps/driveabout/app/ey;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/ey;->c:Lcom/google/android/maps/driveabout/app/et;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/et;->a()V

    .line 247
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ez;->b:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 248
    monitor-exit p0

    return-void

    .line 244
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTick(J)V
    .registers 4
    .parameter

    .prologue
    .line 251
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ez;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-eqz v0, :cond_7

    .line 258
    :goto_5
    monitor-exit p0

    return-void

    .line 257
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ez;->a:Lcom/google/android/maps/driveabout/app/ey;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/ey;->c:Lcom/google/android/maps/driveabout/app/et;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/et;->a(J)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_5

    .line 251
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
