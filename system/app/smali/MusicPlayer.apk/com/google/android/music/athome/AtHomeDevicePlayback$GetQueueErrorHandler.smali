.class Lcom/google/android/music/athome/AtHomeDevicePlayback$GetQueueErrorHandler;
.super Ljava/lang/Object;
.source "AtHomeDevicePlayback.java"

# interfaces
.implements Landroid/support/place/rpc/RpcErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetQueueErrorHandler"
.end annotation


# instance fields
.field private MAX_RETRY_ATTEMPTS:I

.field private mAttempts:I

.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;


# direct methods
.method private constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V
    .registers 3
    .parameter

    .prologue
    .line 1636
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$GetQueueErrorHandler;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1637
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$GetQueueErrorHandler;->MAX_RETRY_ATTEMPTS:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;Lcom/google/android/music/athome/AtHomeDevicePlayback$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1636
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback$GetQueueErrorHandler;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/support/place/rpc/RpcError;)V
    .registers 10
    .parameter "error"

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$GetQueueErrorHandler;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v7

    monitor-enter v7

    .line 1642
    :try_start_7
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$GetQueueErrorHandler;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$GetQueueErrorHandler;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->checkSessionLocked()Z
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$5800(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1643
    :cond_17
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$GetQueueErrorHandler;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->handleErrorLocked(Landroid/support/place/rpc/RpcError;)V
    invoke-static {v0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$6600(Lcom/google/android/music/athome/AtHomeDevicePlayback;Landroid/support/place/rpc/RpcError;)V

    .line 1644
    monitor-exit v7

    .line 1654
    :goto_1d
    return-void

    .line 1646
    :cond_1e
    iget v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$GetQueueErrorHandler;->mAttempts:I

    iget v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$GetQueueErrorHandler;->MAX_RETRY_ATTEMPTS:I

    if-ge v0, v1, :cond_53

    .line 1647
    iget v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$GetQueueErrorHandler;->mAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$GetQueueErrorHandler;->mAttempts:I

    .line 1648
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$GetQueueErrorHandler;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$GetQueueErrorHandler;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$GetQueueErrorHandler;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$700(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$GetQueueErrorHandler;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mGetQueueHandler:Lcom/google/android/music/athome/api/MusicConnector$OnGetQueue;
    invoke-static {v5}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$6700(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector$OnGetQueue;

    move-result-object v5

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/athome/api/MusicConnector;->getQueue(JJLcom/google/android/music/athome/api/MusicConnector$OnGetQueue;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1653
    :goto_4e
    monitor-exit v7

    goto :goto_1d

    :catchall_50
    move-exception v0

    monitor-exit v7
    :try_end_52
    .catchall {:try_start_7 .. :try_end_52} :catchall_50

    throw v0

    .line 1651
    :cond_53
    :try_start_53
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$GetQueueErrorHandler;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->handleErrorLocked(Landroid/support/place/rpc/RpcError;)V
    invoke-static {v0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$6600(Lcom/google/android/music/athome/AtHomeDevicePlayback;Landroid/support/place/rpc/RpcError;)V
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_50

    goto :goto_4e
.end method
