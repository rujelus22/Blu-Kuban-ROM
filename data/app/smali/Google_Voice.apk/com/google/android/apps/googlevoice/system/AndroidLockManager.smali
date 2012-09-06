.class public Lcom/google/android/apps/googlevoice/system/AndroidLockManager;
.super Ljava/lang/Object;
.source "AndroidLockManager.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/system/LockManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WifiLockWrapperImpl;,
        Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;
    }
.end annotation


# static fields
.field private static sharedPartialWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/googlevoice/system/WakeLockWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final fileLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager;->sharedPartialWakeLocks:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/google/android/apps/googlevoice/system/AndroidLockManager;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;Lcom/google/android/apps/googlevoice/BackgroundThread;Landroid/os/Handler;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;Lcom/google/android/apps/googlevoice/BackgroundThread;Landroid/os/Handler;)V
    .registers 5
    .parameter "context"
    .end parameter
    .parameter "fileLog"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "backgroundThread"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "handler"
    .end parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager;->fileLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    .line 39
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager;->backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;

    .line 40
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager;->handler:Landroid/os/Handler;

    .line 41
    return-void
.end method


# virtual methods
.method public createPartialWakeLock(Ljava/lang/Class;)Lcom/google/android/apps/googlevoice/system/WakeLockWrapper;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/android/apps/googlevoice/system/WakeLockWrapper;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, callingClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager;->context:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 50
    .local v6, pm:Landroid/os/PowerManager;
    new-instance v0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager;->fileLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager;->backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager;->handler:Landroid/os/Handler;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;-><init>(Lcom/google/android/apps/googlevoice/system/AndroidLockManager;Landroid/os/PowerManager$WakeLock;Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;Lcom/google/android/apps/googlevoice/BackgroundThread;Landroid/os/Handler;)V

    return-object v0
.end method

.method public createWifiLock(Ljava/lang/Class;)Lcom/google/android/apps/googlevoice/system/LockWrapper;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/android/apps/googlevoice/system/LockWrapper;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, callingClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager;->context:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 58
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    new-instance v1, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WifiLockWrapperImpl;

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WifiLockWrapperImpl;-><init>(Lcom/google/android/apps/googlevoice/system/AndroidLockManager;Landroid/net/wifi/WifiManager$WifiLock;)V

    return-object v1
.end method

.method public declared-synchronized getSharedPartialWakeLock(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/system/WakeLockWrapper;
    .registers 9
    .parameter "lockTag"

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/google/android/apps/googlevoice/system/AndroidLockManager;->sharedPartialWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/system/WakeLockWrapper;

    .line 65
    .local v0, wrapper:Lcom/google/android/apps/googlevoice/system/WakeLockWrapper;
    if-nez v0, :cond_2f

    .line 66
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager;->context:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 67
    .local v6, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {v6, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 68
    .local v2, wakeLock:Landroid/os/PowerManager$WakeLock;
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 69
    new-instance v0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;

    .end local v0           #wrapper:Lcom/google/android/apps/googlevoice/system/WakeLockWrapper;
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager;->fileLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager;->backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager;->handler:Landroid/os/Handler;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;-><init>(Lcom/google/android/apps/googlevoice/system/AndroidLockManager;Landroid/os/PowerManager$WakeLock;Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;Lcom/google/android/apps/googlevoice/BackgroundThread;Landroid/os/Handler;)V

    .line 70
    .restart local v0       #wrapper:Lcom/google/android/apps/googlevoice/system/WakeLockWrapper;
    sget-object v1, Lcom/google/android/apps/googlevoice/system/AndroidLockManager;->sharedPartialWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 72
    .end local v2           #wakeLock:Landroid/os/PowerManager$WakeLock;
    .end local v6           #pm:Landroid/os/PowerManager;
    :cond_2f
    monitor-exit p0

    return-object v0

    .line 64
    .end local v0           #wrapper:Lcom/google/android/apps/googlevoice/system/WakeLockWrapper;
    :catchall_31
    move-exception v1

    monitor-exit p0

    throw v1
.end method
