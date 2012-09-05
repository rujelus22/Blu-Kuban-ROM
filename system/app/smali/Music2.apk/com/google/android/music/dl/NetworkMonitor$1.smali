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
    .line 290
    iput-object p1, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 294
    iget-object v8, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mStateRecievedLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/google/android/music/dl/NetworkMonitor;->access$100(Lcom/google/android/music/dl/NetworkMonitor;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 295
    :try_start_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11d

    .line 297
    const-string v8, "networkInfo"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 299
    .local v3, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 300
    .local v1, connectivityType:I
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 301
    .local v5, typeName:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #calls: Lcom/google/android/music/dl/NetworkMonitor;->isSupportedType(I)Z
    invoke-static {v8, v1}, Lcom/google/android/music/dl/NetworkMonitor;->access$200(Lcom/google/android/music/dl/NetworkMonitor;I)Z

    move-result v8

    if-eqz v8, :cond_e3

    .line 302
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 303
    .local v2, isConnected:Z
    const-string v8, "noConnectivity"

    const/4 v10, 0x0

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 306
    .local v4, noDataAvailable:Z
    iget-object v10, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    iget-object v8, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #calls: Lcom/google/android/music/dl/NetworkMonitor;->isMobileType(I)Z
    invoke-static {v8, v1}, Lcom/google/android/music/dl/NetworkMonitor;->access$400(Lcom/google/android/music/dl/NetworkMonitor;I)Z

    move-result v8

    if-eqz v8, :cond_db

    if-nez v4, :cond_db

    move v8, v6

    :goto_45
    #setter for: Lcom/google/android/music/dl/NetworkMonitor;->mMobileConnected:Z
    invoke-static {v10, v8}, Lcom/google/android/music/dl/NetworkMonitor;->access$302(Lcom/google/android/music/dl/NetworkMonitor;Z)Z

    .line 307
    iget-object v10, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    iget-object v8, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #calls: Lcom/google/android/music/dl/NetworkMonitor;->isWifiType(I)Z
    invoke-static {v8, v1}, Lcom/google/android/music/dl/NetworkMonitor;->access$600(Lcom/google/android/music/dl/NetworkMonitor;I)Z

    move-result v8

    if-eqz v8, :cond_de

    if-nez v4, :cond_de

    move v8, v6

    :goto_55
    #setter for: Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z
    invoke-static {v10, v8}, Lcom/google/android/music/dl/NetworkMonitor;->access$502(Lcom/google/android/music/dl/NetworkMonitor;Z)Z

    .line 308
    iget-object v8, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    iget-object v10, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #calls: Lcom/google/android/music/dl/NetworkMonitor;->isEthernetType(I)Z
    invoke-static {v10, v1}, Lcom/google/android/music/dl/NetworkMonitor;->access$800(Lcom/google/android/music/dl/NetworkMonitor;I)Z

    move-result v10

    if-eqz v10, :cond_e1

    if-nez v4, :cond_e1

    :goto_64
    #setter for: Lcom/google/android/music/dl/NetworkMonitor;->mEthernetConnected:Z
    invoke-static {v8, v6}, Lcom/google/android/music/dl/NetworkMonitor;->access$702(Lcom/google/android/music/dl/NetworkMonitor;Z)Z

    .line 309
    iget-object v6, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #setter for: Lcom/google/android/music/dl/NetworkMonitor;->mConnectivityType:I
    invoke-static {v6, v1}, Lcom/google/android/music/dl/NetworkMonitor;->access$902(Lcom/google/android/music/dl/NetworkMonitor;I)I

    .line 310
    iget-object v6, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    iget-object v7, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v7}, Lcom/google/android/music/dl/NetworkMonitor;->access$1100(Lcom/google/android/music/dl/NetworkMonitor;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    #setter for: Lcom/google/android/music/dl/NetworkMonitor;->mConnectedMobileDataType:I
    invoke-static {v6, v7}, Lcom/google/android/music/dl/NetworkMonitor;->access$1002(Lcom/google/android/music/dl/NetworkMonitor;I)I

    .line 312
    invoke-static {}, Lcom/google/android/music/dl/NetworkMonitor;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_c9

    .line 313
    const-string v6, "NetworkMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Network changed: type("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") name("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") isConnected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " noData: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bitrate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/google/android/music/dl/NetworkMonitor;->access$1300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_c9
    iget-object v6, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #calls: Lcom/google/android/music/dl/NetworkMonitor;->resetBitrate()V
    invoke-static {v6}, Lcom/google/android/music/dl/NetworkMonitor;->access$1400(Lcom/google/android/music/dl/NetworkMonitor;)V

    .line 322
    sget-object v6, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    iget-object v7, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mUpdateStreamingAvailable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/google/android/music/dl/NetworkMonitor;->access$1500(Lcom/google/android/music/dl/NetworkMonitor;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 333
    .end local v1           #connectivityType:I
    .end local v2           #isConnected:Z
    .end local v3           #netInfo:Landroid/net/NetworkInfo;
    .end local v4           #noDataAvailable:Z
    .end local v5           #typeName:Ljava/lang/String;
    :cond_d9
    :goto_d9
    monitor-exit v9

    .line 334
    return-void

    .restart local v1       #connectivityType:I
    .restart local v2       #isConnected:Z
    .restart local v3       #netInfo:Landroid/net/NetworkInfo;
    .restart local v4       #noDataAvailable:Z
    .restart local v5       #typeName:Ljava/lang/String;
    :cond_db
    move v8, v7

    .line 306
    goto/16 :goto_45

    :cond_de
    move v8, v7

    .line 307
    goto/16 :goto_55

    :cond_e1
    move v6, v7

    .line 308
    goto :goto_64

    .line 325
    .end local v2           #isConnected:Z
    .end local v4           #noDataAvailable:Z
    :cond_e3
    invoke-static {}, Lcom/google/android/music/dl/NetworkMonitor;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 326
    const-string v6, "NetworkMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignore following network type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") - action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d9

    .line 333
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #connectivityType:I
    .end local v3           #netInfo:Landroid/net/NetworkInfo;
    .end local v5           #typeName:Ljava/lang/String;
    :catchall_11a
    move-exception v6

    monitor-exit v9
    :try_end_11c
    .catchall {:try_start_9 .. :try_end_11c} :catchall_11a

    throw v6

    .line 331
    .restart local v0       #action:Ljava/lang/String;
    :cond_11d
    :try_start_11d
    const-string v6, "NetworkMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_139
    .catchall {:try_start_11d .. :try_end_139} :catchall_11a

    goto :goto_d9
.end method
