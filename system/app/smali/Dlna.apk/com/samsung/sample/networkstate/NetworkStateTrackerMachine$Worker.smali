.class Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;
.super Ljava/lang/Object;
.source "NetworkStateTrackerMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Worker"
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;


# direct methods
.method public constructor <init>(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter "handler"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->handler:Landroid/os/Handler;

    .line 283
    iput-object p2, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->handler:Landroid/os/Handler;

    .line 284
    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 287
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-boolean v9, v9, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->run:Z

    if-nez v9, :cond_7

    .line 348
    :goto_6
    return-void

    .line 290
    :cond_7
    :try_start_7
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v9}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$000(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_155

    .line 292
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v9}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$000(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 293
    .local v8, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v5

    .line 294
    .local v5, ipAddress:I
    const-string v9, "Tracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/high16 v11, -0x1

    and-int/2addr v11, v5

    shr-int/lit8 v11, v11, 0x18

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-eqz v5, :cond_13f

    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v9}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$000(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v9

    sget-object v10, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v9, v10}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13f

    .line 298
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v9, v9, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mState:Lcom/samsung/sample/networkstate/INetworkState;

    invoke-interface {v9}, Lcom/samsung/sample/networkstate/INetworkState;->wifiConnected()V

    .line 299
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    const/16 v10, 0x5dc

    #setter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->timeInterval:I
    invoke-static {v9, v10}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$302(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;I)I

    .line 300
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIpaddress:I
    invoke-static {v9}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$400(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)I

    move-result v9

    if-nez v9, :cond_123

    .line 301
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #setter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIpaddress:I
    invoke-static {v9, v5}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$402(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;I)I

    .line 308
    :cond_72
    :goto_72
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIpaddress:I
    invoke-static {v9}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$400(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)I

    move-result v9

    if-eqz v9, :cond_85

    .line 309
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v10, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIpaddress:I
    invoke-static {v10}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$400(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)I

    move-result v10

    #setter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->tempIpAddress:I
    invoke-static {v9, v10}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$202(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;I)I
    :try_end_85
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_85} :catch_139

    .line 324
    .end local v5           #ipAddress:I
    .end local v8           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_85
    :goto_85
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/dlna/DLNAManager;->GetUploadFileCnt()Z

    move-result v10

    #setter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->uploadedFilecnt:Z
    invoke-static {v9, v10}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$502(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;Z)Z

    .line 325
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->bAutoIPEnable:Z
    invoke-static {v9}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$600(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)Z

    move-result v9

    if-nez v9, :cond_a2

    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->uploadedFilecnt:Z
    invoke-static {v9}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$500(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)Z

    move-result v9

    if-eqz v9, :cond_115

    .line 326
    :cond_a2
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->context:Landroid/content/Context;
    invoke-static {v9}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$700(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->context:Landroid/content/Context;
    invoke-static {v10}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$700(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 328
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 329
    .local v4, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 330
    .local v3, i:Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 331
    .local v7, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v9, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 332
    .local v6, pkgName:Ljava/lang/String;
    iget-object v9, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, className:Ljava/lang/String;
    const-string v9, "com.sec.android.app.dlna"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_115

    const-string v9, "com.android.settings.wifi.WifiSettings"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_115

    .line 334
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->bAutoIPEnable:Z
    invoke-static {v9}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$600(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)Z

    move-result v9

    if-eqz v9, :cond_102

    .line 335
    const-string v9, "DLNA"

    const-string v10, " NO more Allshare is not top so Allshare stop the AutoIP"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    invoke-virtual {v9}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->DisableAutoIP()V

    .line 337
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/dlna/DLNAManager;->releaseWakeLock()V

    .line 338
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/dlna/DLNAManager;->releaseWifiLock()V

    .line 340
    :cond_102
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->uploadedFilecnt:Z
    invoke-static {v9}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$500(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)Z

    move-result v9

    if-eqz v9, :cond_115

    .line 341
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v9

    iget-object v9, v9, Lcom/sec/android/app/dlna/DLNAManager;->uploadHandler:Landroid/os/Handler;

    const/16 v10, 0x1a2c

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 347
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v1           #className:Ljava/lang/String;
    .end local v3           #i:Ljava/util/Iterator;
    .end local v4           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v6           #pkgName:Ljava/lang/String;
    .end local v7           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_115
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->timeInterval:I
    invoke-static {v10}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$300(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v9, p0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_6

    .line 302
    .restart local v5       #ipAddress:I
    .restart local v8       #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_123
    :try_start_123
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #getter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIpaddress:I
    invoke-static {v9}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$400(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;)I

    move-result v9

    if-eq v5, v9, :cond_72

    .line 303
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    #setter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIpaddress:I
    invoke-static {v9, v5}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$402(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;I)I

    .line 306
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v9, v9, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mState:Lcom/samsung/sample/networkstate/INetworkState;

    invoke-interface {v9}, Lcom/samsung/sample/networkstate/INetworkState;->ipChanged()V
    :try_end_137
    .catch Ljava/lang/NullPointerException; {:try_start_123 .. :try_end_137} :catch_139

    goto/16 :goto_72

    .line 320
    .end local v5           #ipAddress:I
    .end local v8           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :catch_139
    move-exception v2

    .line 321
    .local v2, e:Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_85

    .line 311
    .end local v2           #e:Ljava/lang/NullPointerException;
    .restart local v5       #ipAddress:I
    .restart local v8       #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_13f
    :try_start_13f
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v9, v9, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mState:Lcom/samsung/sample/networkstate/INetworkState;

    invoke-interface {v9}, Lcom/samsung/sample/networkstate/INetworkState;->wifiDisconnected()V

    .line 312
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    const/4 v10, 0x0

    #setter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIpaddress:I
    invoke-static {v9, v10}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$402(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;I)I

    .line 313
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    const/16 v10, 0x64

    #setter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->timeInterval:I
    invoke-static {v9, v10}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$302(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;I)I

    goto/16 :goto_85

    .line 316
    .end local v5           #ipAddress:I
    .end local v8           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_155
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v9, v9, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mState:Lcom/samsung/sample/networkstate/INetworkState;

    invoke-interface {v9}, Lcom/samsung/sample/networkstate/INetworkState;->wifiDisconnected()V

    .line 317
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    const/4 v10, 0x0

    #setter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->mIpaddress:I
    invoke-static {v9, v10}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$402(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;I)I

    .line 318
    iget-object v9, p0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine$Worker;->this$0:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    const/16 v10, 0x64

    #setter for: Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->timeInterval:I
    invoke-static {v9, v10}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->access$302(Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;I)I
    :try_end_169
    .catch Ljava/lang/NullPointerException; {:try_start_13f .. :try_end_169} :catch_139

    goto/16 :goto_85
.end method
