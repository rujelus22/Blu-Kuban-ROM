.class public final Lcom/dropbox/android/util/N;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static a:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static a()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .prologue
    .line 22
    invoke-static {}, Lcom/dropbox/android/util/N;->b()V

    .line 23
    sget-object v0, Lcom/dropbox/android/util/N;->a:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private static declared-synchronized b()V
    .registers 4

    .prologue
    .line 27
    const-class v1, Lcom/dropbox/android/util/N;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/dropbox/android/util/N;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1c

    .line 28
    invoke-static {}, Lcom/dropbox/android/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 29
    const/4 v2, 0x1

    const-string v3, "DropboxCpuOnlyWakeLock"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/util/N;->a:Landroid/os/PowerManager$WakeLock;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    .line 31
    :cond_1c
    monitor-exit v1

    return-void

    .line 27
    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method
