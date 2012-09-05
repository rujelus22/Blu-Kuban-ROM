.class Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$WakeLock;
.super Ljava/lang/Object;
.source "AlarmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WakeLock"
.end annotation


# static fields
.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1249
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized acquire(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 1255
    const-class v2, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$WakeLock;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_c

    .line 1257
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1261
    :cond_c
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1266
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x30000001

    const-string v3, "AlarmReceiver"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1272
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_26

    .line 1274
    monitor-exit v2

    return-void

    .line 1255
    .end local v0           #pm:Landroid/os/PowerManager;
    :catchall_26
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized release()V
    .registers 2

    .prologue
    .line 1278
    const-class v1, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$WakeLock;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_f

    .line 1280
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1282
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$WakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 1286
    :cond_f
    monitor-exit v1

    return-void

    .line 1278
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method
