.class Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WifiLockWrapperImpl;
.super Ljava/lang/Object;
.source "AndroidLockManager.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/system/LockWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/system/AndroidLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiLockWrapperImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/system/AndroidLockManager;

.field private final wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/system/AndroidLockManager;Landroid/net/wifi/WifiManager$WifiLock;)V
    .registers 3
    .parameter
    .parameter "wifiLock"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WifiLockWrapperImpl;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidLockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WifiLockWrapperImpl;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 198
    return-void
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .registers 2

    .prologue
    .line 202
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WifiLockWrapperImpl;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 203
    monitor-exit p0

    return-void

    .line 202
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .registers 2

    .prologue
    .line 207
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WifiLockWrapperImpl;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 208
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WifiLockWrapperImpl;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 210
    :cond_e
    monitor-exit p0

    return-void

    .line 207
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
