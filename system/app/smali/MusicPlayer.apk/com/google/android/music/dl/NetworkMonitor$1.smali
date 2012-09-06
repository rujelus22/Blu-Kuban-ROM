.class Lcom/google/android/music/dl/NetworkMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/NetworkMonitor;)V
    .registers 2
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 270
    iget-object v6, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mStateRecievedLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/google/android/music/dl/NetworkMonitor;->access$100(Lcom/google/android/music/dl/NetworkMonitor;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 271
    :try_start_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_150

    .line 273
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 275
    .local v3, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 276
    .local v1, connectivityType:I
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, typeName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/music/dl/NetworkMonitor;->access$200()Z

    move-result v6

    if-eqz v6, :cond_57

    .line 278
    const-string v6, "NetworkMonitor"

    const-string v8, "type=%s subType=%s reason=%s isConnected=%b"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/google/android/music/log/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_57
    iget-object v6, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #calls: Lcom/google/android/music/dl/NetworkMonitor;->isSupportedType(I)Z
    invoke-static {v6, v1}, Lcom/google/android/music/dl/NetworkMonitor;->access$300(Lcom/google/android/music/dl/NetworkMonitor;I)Z

    move-result v6

    if-eqz v6, :cond_116

    .line 283
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 284
    .local v2, isConnected:Z
    const-string v6, "noConnectivity"

    const/4 v8, 0x0

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 287
    .local v4, noDataAvailable:Z
    iget-object v8, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    iget-object v6, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #calls: Lcom/google/android/music/dl/NetworkMonitor;->isMobileType(I)Z
    invoke-static {v6, v1}, Lcom/google/android/music/dl/NetworkMonitor;->access$500(Lcom/google/android/music/dl/NetworkMonitor;I)Z

    move-result v6

    if-eqz v6, :cond_10e

    if-nez v4, :cond_10e

    const/4 v6, 0x1

    :goto_77
    #setter for: Lcom/google/android/music/dl/NetworkMonitor;->mMobileConnected:Z
    invoke-static {v8, v6}, Lcom/google/android/music/dl/NetworkMonitor;->access$402(Lcom/google/android/music/dl/NetworkMonitor;Z)Z

    .line 288
    iget-object v8, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    iget-object v6, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #calls: Lcom/google/android/music/dl/NetworkMonitor;->isWifiType(I)Z
    invoke-static {v6, v1}, Lcom/google/android/music/dl/NetworkMonitor;->access$700(Lcom/google/android/music/dl/NetworkMonitor;I)Z

    move-result v6

    if-eqz v6, :cond_111

    if-nez v4, :cond_111

    const/4 v6, 0x1

    :goto_87
    #setter for: Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z
    invoke-static {v8, v6}, Lcom/google/android/music/dl/NetworkMonitor;->access$602(Lcom/google/android/music/dl/NetworkMonitor;Z)Z

    .line 289
    iget-object v8, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    iget-object v6, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #calls: Lcom/google/android/music/dl/NetworkMonitor;->isEthernetType(I)Z
    invoke-static {v6, v1}, Lcom/google/android/music/dl/NetworkMonitor;->access$900(Lcom/google/android/music/dl/NetworkMonitor;I)Z

    move-result v6

    if-eqz v6, :cond_114

    if-nez v4, :cond_114

    const/4 v6, 0x1

    :goto_97
    #setter for: Lcom/google/android/music/dl/NetworkMonitor;->mEthernetConnected:Z
    invoke-static {v8, v6}, Lcom/google/android/music/dl/NetworkMonitor;->access$802(Lcom/google/android/music/dl/NetworkMonitor;Z)Z

    .line 290
    iget-object v6, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #setter for: Lcom/google/android/music/dl/NetworkMonitor;->mConnectivityType:I
    invoke-static {v6, v1}, Lcom/google/android/music/dl/NetworkMonitor;->access$1002(Lcom/google/android/music/dl/NetworkMonitor;I)I

    .line 291
    iget-object v6, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    iget-object v8, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v8}, Lcom/google/android/music/dl/NetworkMonitor;->access$1200(Lcom/google/android/music/dl/NetworkMonitor;)Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    #setter for: Lcom/google/android/music/dl/NetworkMonitor;->mConnectedMobileDataType:I
    invoke-static {v6, v8}, Lcom/google/android/music/dl/NetworkMonitor;->access$1102(Lcom/google/android/music/dl/NetworkMonitor;I)I

    .line 293
    invoke-static {}, Lcom/google/android/music/dl/NetworkMonitor;->access$200()Z

    move-result v6

    if-eqz v6, :cond_fc

    .line 294
    const-string v6, "NetworkMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Network changed: type("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") name("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") isConnected : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " noData: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bitrate:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/google/android/music/dl/NetworkMonitor;->access$1300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_fc
    iget-object v6, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #calls: Lcom/google/android/music/dl/NetworkMonitor;->resetBitrate()V
    invoke-static {v6}, Lcom/google/android/music/dl/NetworkMonitor;->access$1400(Lcom/google/android/music/dl/NetworkMonitor;)V

    .line 303
    sget-object v6, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    iget-object v8, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mUpdateStreamingAvailable:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/google/android/music/dl/NetworkMonitor;->access$1500(Lcom/google/android/music/dl/NetworkMonitor;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 314
    .end local v1           #connectivityType:I
    .end local v2           #isConnected:Z
    .end local v3           #netInfo:Landroid/net/NetworkInfo;
    .end local v4           #noDataAvailable:Z
    .end local v5           #typeName:Ljava/lang/String;
    :cond_10c
    :goto_10c
    monitor-exit v7

    .line 315
    return-void

    .line 287
    .restart local v1       #connectivityType:I
    .restart local v2       #isConnected:Z
    .restart local v3       #netInfo:Landroid/net/NetworkInfo;
    .restart local v4       #noDataAvailable:Z
    .restart local v5       #typeName:Ljava/lang/String;
    :cond_10e
    const/4 v6, 0x0

    goto/16 :goto_77

    .line 288
    :cond_111
    const/4 v6, 0x0

    goto/16 :goto_87

    .line 289
    :cond_114
    const/4 v6, 0x0

    goto :goto_97

    .line 306
    .end local v2           #isConnected:Z
    .end local v4           #noDataAvailable:Z
    :cond_116
    invoke-static {}, Lcom/google/android/music/dl/NetworkMonitor;->access$200()Z

    move-result v6

    if-eqz v6, :cond_10c

    .line 307
    const-string v6, "NetworkMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignore following network type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") - action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10c

    .line 314
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #connectivityType:I
    .end local v3           #netInfo:Landroid/net/NetworkInfo;
    .end local v5           #typeName:Ljava/lang/String;
    :catchall_14d
    move-exception v6

    monitor-exit v7
    :try_end_14f
    .catchall {:try_start_7 .. :try_end_14f} :catchall_14d

    throw v6

    .line 312
    .restart local v0       #action:Ljava/lang/String;
    :cond_150
    :try_start_150
    const-string v6, "NetworkMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/google/android/music/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16c
    .catchall {:try_start_150 .. :try_end_16c} :catchall_14d

    goto :goto_10c
.end method
