.class Lcom/sec/android/app/clockpackage/stopwatch/PowerController;
.super Ljava/lang/Object;
.source "PowerController.java"


# static fields
.field private static wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized acquire(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 63
    const-class v2, Lcom/sec/android/app/clockpackage/stopwatch/PowerController;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/sec/android/app/clockpackage/stopwatch/PowerController;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_22

    if-eqz v1, :cond_9

    .line 80
    :goto_7
    monitor-exit v2

    return-void

    .line 69
    :cond_9
    :try_start_9
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 72
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x10000006

    const-string v3, "Stopwatch : power managing start."

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/clockpackage/stopwatch/PowerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 78
    sget-object v1, Lcom/sec/android/app/clockpackage/stopwatch/PowerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_22

    goto :goto_7

    .line 63
    .end local v0           #pm:Landroid/os/PowerManager;
    :catchall_22
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized release()V
    .registers 2

    .prologue
    .line 84
    const-class v1, Lcom/sec/android/app/clockpackage/stopwatch/PowerController;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/PowerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_f

    .line 86
    sget-object v0, Lcom/sec/android/app/clockpackage/stopwatch/PowerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/clockpackage/stopwatch/PowerController;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 92
    :cond_f
    monitor-exit v1

    return-void

    .line 84
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method
