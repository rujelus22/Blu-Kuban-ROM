.class Lcom/google/android/music/OfflineMusicManager$1;
.super Ljava/lang/Object;
.source "OfflineMusicManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/OfflineMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/OfflineMusicManager;


# direct methods
.method constructor <init>(Lcom/google/android/music/OfflineMusicManager;)V
    .registers 2
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/android/music/OfflineMusicManager$1;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "name"
    .parameter "service"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$1;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #getter for: Lcom/google/android/music/OfflineMusicManager;->mStoreConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/google/android/music/OfflineMusicManager;->access$1000(Lcom/google/android/music/OfflineMusicManager;)Landroid/content/ServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 293
    :try_start_7
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$1;->this$0:Lcom/google/android/music/OfflineMusicManager;

    const/4 v2, 0x1

    #setter for: Lcom/google/android/music/OfflineMusicManager;->mStoreServiceConnected:Z
    invoke-static {v0, v2}, Lcom/google/android/music/OfflineMusicManager;->access$1102(Lcom/google/android/music/OfflineMusicManager;Z)Z

    .line 294
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$1;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {p2}, Lcom/google/android/music/store/IStoreService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/store/IStoreService;

    move-result-object v2

    #setter for: Lcom/google/android/music/OfflineMusicManager;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0, v2}, Lcom/google/android/music/OfflineMusicManager;->access$102(Lcom/google/android/music/OfflineMusicManager;Lcom/google/android/music/store/IStoreService;)Lcom/google/android/music/store/IStoreService;

    .line 295
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$1;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #getter for: Lcom/google/android/music/OfflineMusicManager;->mStoreConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/google/android/music/OfflineMusicManager;->access$1000(Lcom/google/android/music/OfflineMusicManager;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 296
    monitor-exit v1

    .line 297
    return-void

    .line 296
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$1;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #getter for: Lcom/google/android/music/OfflineMusicManager;->mStoreConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/google/android/music/OfflineMusicManager;->access$1000(Lcom/google/android/music/OfflineMusicManager;)Landroid/content/ServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 301
    :try_start_7
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$1;->this$0:Lcom/google/android/music/OfflineMusicManager;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/music/OfflineMusicManager;->mStoreServiceConnected:Z
    invoke-static {v0, v2}, Lcom/google/android/music/OfflineMusicManager;->access$1102(Lcom/google/android/music/OfflineMusicManager;Z)Z

    .line 302
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$1;->this$0:Lcom/google/android/music/OfflineMusicManager;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/music/OfflineMusicManager;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0, v2}, Lcom/google/android/music/OfflineMusicManager;->access$102(Lcom/google/android/music/OfflineMusicManager;Lcom/google/android/music/store/IStoreService;)Lcom/google/android/music/store/IStoreService;

    .line 303
    monitor-exit v1

    .line 304
    return-void

    .line 303
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v0
.end method
