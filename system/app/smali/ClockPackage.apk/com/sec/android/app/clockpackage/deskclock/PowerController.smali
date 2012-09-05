.class Lcom/sec/android/app/clockpackage/deskclock/PowerController;
.super Ljava/lang/Object;
.source "PowerController.java"


# static fields
.field private static wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized acquire(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 53
    const-class v2, Lcom/sec/android/app/clockpackage/deskclock/PowerController;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/sec/android/app/clockpackage/deskclock/PowerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_c

    .line 54
    sget-object v1, Lcom/sec/android/app/clockpackage/deskclock/PowerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 57
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 60
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000000a

    const-string v3, "Deskclock"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/clockpackage/deskclock/PowerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 65
    sget-object v1, Lcom/sec/android/app/clockpackage/deskclock/PowerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2a

    .line 67
    monitor-exit v2

    return-void

    .line 53
    .end local v0           #pm:Landroid/os/PowerManager;
    :catchall_2a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized release()V
    .registers 2

    .prologue
    .line 71
    const-class v1, Lcom/sec/android/app/clockpackage/deskclock/PowerController;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/clockpackage/deskclock/PowerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_17

    .line 73
    sget-object v0, Lcom/sec/android/app/clockpackage/deskclock/PowerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 74
    sget-object v0, Lcom/sec/android/app/clockpackage/deskclock/PowerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 76
    :cond_14
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/clockpackage/deskclock/PowerController;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    .line 80
    :cond_17
    monitor-exit v1

    return-void

    .line 71
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method
