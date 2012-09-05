.class Lcom/sec/android/app/clockpackage/timer/PowerController;
.super Ljava/lang/Object;
.source "PowerController.java"


# static fields
.field private static keyLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private static wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized acquire(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 32
    const-class v2, Lcom/sec/android/app/clockpackage/timer/PowerController;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/sec/android/app/clockpackage/timer/PowerController;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_26

    if-eqz v1, :cond_9

    .line 45
    :goto_7
    monitor-exit v2

    return-void

    .line 36
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 39
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000000a

    const-string v3, "Timer"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/clockpackage/timer/PowerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 44
    sget-object v1, Lcom/sec/android/app/clockpackage/timer/PowerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_26

    goto :goto_7

    .line 32
    .end local v0           #pm:Landroid/os/PowerManager;
    :catchall_26
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized disableKeyguard(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 59
    const-class v2, Lcom/sec/android/app/clockpackage/timer/PowerController;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/sec/android/app/clockpackage/timer/PowerController;->keyLock:Landroid/app/KeyguardManager$KeyguardLock;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1a

    if-eqz v1, :cond_9

    .line 69
    :goto_7
    monitor-exit v2

    return-void

    .line 63
    :cond_9
    :try_start_9
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 66
    .local v0, km:Landroid/app/KeyguardManager;
    const-string v1, "Timer"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/clockpackage/timer/PowerController;->keyLock:Landroid/app/KeyguardManager$KeyguardLock;
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1a

    goto :goto_7

    .line 59
    .end local v0           #km:Landroid/app/KeyguardManager;
    :catchall_1a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized reenableKeyguard()V
    .registers 2

    .prologue
    .line 73
    const-class v1, Lcom/sec/android/app/clockpackage/timer/PowerController;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/PowerController;->keyLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_f

    .line 74
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/PowerController;->keyLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/clockpackage/timer/PowerController;->keyLock:Landroid/app/KeyguardManager$KeyguardLock;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 77
    :cond_f
    monitor-exit v1

    return-void

    .line 73
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized release()V
    .registers 2

    .prologue
    .line 49
    const-class v1, Lcom/sec/android/app/clockpackage/timer/PowerController;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/PowerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_17

    .line 50
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/PowerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 51
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/PowerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 53
    :cond_14
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/clockpackage/timer/PowerController;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    .line 55
    :cond_17
    monitor-exit v1

    return-void

    .line 49
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method
