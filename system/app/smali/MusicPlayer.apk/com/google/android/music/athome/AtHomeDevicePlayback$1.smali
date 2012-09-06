.class Lcom/google/android/music/athome/AtHomeDevicePlayback$1;
.super Ljava/lang/Object;
.source "AtHomeDevicePlayback.java"

# interfaces
.implements Lcom/google/android/music/athome/api/MusicConnector$OnVersionCheck;


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
    .line 1431
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$1;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVersionCheck(Lcom/google/android/music/athome/api/AtHomeVersionCheck;)V
    .registers 11
    .parameter "versionCheck"

    .prologue
    .line 1435
    const/4 v1, 0x0

    .line 1436
    .local v1, notifyFailure:Z
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$1;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    monitor-enter v4

    .line 1438
    :try_start_8
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$1;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v3

    if-nez v3, :cond_12

    .line 1439
    monitor-exit v4

    .line 1469
    :cond_11
    :goto_11
    return-void

    .line 1442
    :cond_12
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$1;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mVersionCheck:Lcom/google/android/music/athome/api/AtHomeVersionCheck;
    invoke-static {v3, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2102(Lcom/google/android/music/athome/AtHomeDevicePlayback;Lcom/google/android/music/athome/api/AtHomeVersionCheck;)Lcom/google/android/music/athome/api/AtHomeVersionCheck;

    .line 1443
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$1;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mVersionCheck:Lcom/google/android/music/athome/api/AtHomeVersionCheck;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2100(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeVersionCheck;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->getCheckStatus()I

    move-result v2

    .line 1444
    .local v2, status:I
    if-nez v2, :cond_5a

    .line 1446
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$1;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$1;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mListener:Lcom/google/android/music/athome/api/MusicConnector$Listener;
    invoke-static {v5}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$4100(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector$Listener;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/music/athome/api/MusicConnector;->startListening(Lcom/google/android/music/athome/api/MusicConnector$Listener;)V

    .line 1447
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$1;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$1;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v5}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$700(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$1;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mGetSessionInfoHandler:Lcom/google/android/music/athome/api/MusicConnector$OnGetSessionInfo;
    invoke-static {v7}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$4200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector$OnGetSessionInfo;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$1;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mFatalErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;
    invoke-static {v8}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$4300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/support/place/rpc/RpcErrorHandler;

    move-result-object v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/google/android/music/athome/api/MusicConnector;->getSessionInfo(JLcom/google/android/music/athome/api/MusicConnector$OnGetSessionInfo;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1464
    :goto_51
    monitor-exit v4
    :try_end_52
    .catchall {:try_start_8 .. :try_end_52} :catchall_aa

    .line 1466
    if-eqz v1, :cond_11

    .line 1467
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$1;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-virtual {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyFailure()V

    goto :goto_11

    .line 1450
    :cond_5a
    :try_start_5a
    const-string v3, "aah.Music"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Version check failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$1;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mVersionCheck:Lcom/google/android/music/athome/api/AtHomeVersionCheck;
    invoke-static {v6}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2100(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeVersionCheck;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->getDebugString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    const/16 v0, 0x138c

    .line 1452
    .local v0, errorType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_8a

    .line 1453
    const/16 v0, 0x138b

    .line 1461
    :goto_83
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$1;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->onFatalErrorLocked(I)V
    invoke-static {v3, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$4400(Lcom/google/android/music/athome/AtHomeDevicePlayback;I)V

    .line 1462
    const/4 v1, 0x1

    goto :goto_51

    .line 1454
    :cond_8a
    const/4 v3, 0x1

    if-ne v2, v3, :cond_90

    .line 1456
    const/16 v0, 0x138a

    goto :goto_83

    .line 1458
    :cond_90
    const-string v3, "aah.Music"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected version check status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    const/4 v0, 0x1

    goto :goto_83

    .line 1464
    .end local v0           #errorType:I
    .end local v2           #status:I
    :catchall_aa
    move-exception v3

    monitor-exit v4
    :try_end_ac
    .catchall {:try_start_5a .. :try_end_ac} :catchall_aa

    throw v3
.end method
