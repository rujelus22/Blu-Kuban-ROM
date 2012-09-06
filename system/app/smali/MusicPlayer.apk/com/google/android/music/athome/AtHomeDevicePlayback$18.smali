.class Lcom/google/android/music/athome/AtHomeDevicePlayback$18;
.super Ljava/lang/Object;
.source "AtHomeDevicePlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V
    .registers 2
    .parameter

    .prologue
    .line 3086
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$18;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 3088
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$18;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v7

    monitor-enter v7

    .line 3089
    :try_start_7
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$18;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mBroker:Landroid/support/place/connector/Broker;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$7800(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/support/place/connector/Broker;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 3090
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$18;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mBroker:Landroid/support/place/connector/Broker;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$7800(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/support/place/connector/Broker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/connector/Broker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3092
    :cond_1c
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$18;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$18;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 3093
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$18;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$18;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$18;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$700(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$18;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mGetPlayStateHandler:Lcom/google/android/music/athome/api/MusicConnector$OnGetPlayState;
    invoke-static {v5}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$5900(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector$OnGetPlayState;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$18;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mRecoveryErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;
    invoke-static {v6}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$8800(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/support/place/rpc/RpcErrorHandler;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/athome/api/MusicConnector;->getPlayState(JJLcom/google/android/music/athome/api/MusicConnector$OnGetPlayState;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 3097
    :cond_55
    monitor-exit v7

    .line 3098
    return-void

    .line 3097
    :catchall_57
    move-exception v0

    monitor-exit v7
    :try_end_59
    .catchall {:try_start_7 .. :try_end_59} :catchall_57

    throw v0
.end method
