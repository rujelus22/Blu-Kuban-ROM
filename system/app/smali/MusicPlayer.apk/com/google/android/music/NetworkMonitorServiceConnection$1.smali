.class Lcom/google/android/music/NetworkMonitorServiceConnection$1;
.super Lcom/google/android/music/utils/SafeServiceConnection;
.source "NetworkMonitorServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/NetworkMonitorServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/NetworkMonitorServiceConnection;


# direct methods
.method constructor <init>(Lcom/google/android/music/NetworkMonitorServiceConnection;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection$1;->this$0:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-direct {p0}, Lcom/google/android/music/utils/SafeServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .parameter "name"
    .parameter "service"

    .prologue
    .line 42
    iget-object v3, p0, Lcom/google/android/music/NetworkMonitorServiceConnection$1;->this$0:Lcom/google/android/music/NetworkMonitorServiceConnection;

    monitor-enter v3

    .line 43
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/NetworkMonitorServiceConnection$1;->this$0:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-static {p2}, Lcom/google/android/music/dl/INetworkMonitor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v4

    #setter for: Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    invoke-static {v2, v4}, Lcom/google/android/music/NetworkMonitorServiceConnection;->access$002(Lcom/google/android/music/NetworkMonitorServiceConnection;Lcom/google/android/music/dl/INetworkMonitor;)Lcom/google/android/music/dl/INetworkMonitor;

    .line 44
    iget-object v2, p0, Lcom/google/android/music/NetworkMonitorServiceConnection$1;->this$0:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v2}, Lcom/google/android/music/NetworkMonitorServiceConnection;->registerListeners()V

    .line 46
    iget-object v2, p0, Lcom/google/android/music/NetworkMonitorServiceConnection$1;->this$0:Lcom/google/android/music/NetworkMonitorServiceConnection;

    #getter for: Lcom/google/android/music/NetworkMonitorServiceConnection;->mRunOnServiceConnected:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/music/NetworkMonitorServiceConnection;->access$100(Lcom/google/android/music/NetworkMonitorServiceConnection;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 47
    iget-object v2, p0, Lcom/google/android/music/NetworkMonitorServiceConnection$1;->this$0:Lcom/google/android/music/NetworkMonitorServiceConnection;

    #getter for: Lcom/google/android/music/NetworkMonitorServiceConnection;->mRunOnServiceConnected:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/music/NetworkMonitorServiceConnection;->access$100(Lcom/google/android/music/NetworkMonitorServiceConnection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 48
    .local v1, run:Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_23

    .line 53
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #run:Ljava/lang/Runnable;
    :catchall_33
    move-exception v2

    monitor-exit v3
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v2

    .line 51
    :cond_36
    :try_start_36
    iget-object v2, p0, Lcom/google/android/music/NetworkMonitorServiceConnection$1;->this$0:Lcom/google/android/music/NetworkMonitorServiceConnection;

    const/4 v4, 0x0

    #setter for: Lcom/google/android/music/NetworkMonitorServiceConnection;->mRunOnServiceConnected:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/google/android/music/NetworkMonitorServiceConnection;->access$102(Lcom/google/android/music/NetworkMonitorServiceConnection;Ljava/util/List;)Ljava/util/List;

    .line 52
    iget-object v2, p0, Lcom/google/android/music/NetworkMonitorServiceConnection$1;->this$0:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 53
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_33

    .line 54
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 57
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection$1;->this$0:Lcom/google/android/music/NetworkMonitorServiceConnection;

    monitor-enter v1

    .line 58
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/NetworkMonitorServiceConnection$1;->this$0:Lcom/google/android/music/NetworkMonitorServiceConnection;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    invoke-static {v0, v2}, Lcom/google/android/music/NetworkMonitorServiceConnection;->access$002(Lcom/google/android/music/NetworkMonitorServiceConnection;Lcom/google/android/music/dl/INetworkMonitor;)Lcom/google/android/music/dl/INetworkMonitor;

    .line 59
    monitor-exit v1

    .line 60
    return-void

    .line 59
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method
