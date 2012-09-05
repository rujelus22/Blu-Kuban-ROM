.class final Lcom/google/android/location/internal/server/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# instance fields
.field final a:Landroid/app/PendingIntent;

.field final b:I

.field final c:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/app/PendingIntent;ILandroid/os/PowerManager$WakeLock;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/location/internal/server/b;->a:Landroid/app/PendingIntent;

    iput p2, p0, Lcom/google/android/location/internal/server/b;->b:I

    iput-object p3, p0, Lcom/google/android/location/internal/server/b;->c:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 10

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/location/internal/server/b;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_14

    :try_start_8
    iget-object v0, p0, Lcom/google/android/location/internal/server/b;->a:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_12
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_8 .. :try_end_12} :catch_17

    const/4 v0, 0x1

    :goto_13
    return v0

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0

    :catch_17
    move-exception v0

    monitor-enter p0

    :try_start_19
    iget-object v0, p0, Lcom/google/android/location/internal/server/b;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    monitor-exit p0

    move v0, v6

    goto :goto_13

    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/internal/server/b;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method
