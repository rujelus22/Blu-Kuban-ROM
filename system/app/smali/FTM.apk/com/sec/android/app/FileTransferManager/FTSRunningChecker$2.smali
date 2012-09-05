.class Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$2;
.super Landroid/os/Handler;
.source "FTSRunningChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)V
    .registers 2
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$2;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    .line 205
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_c6

    .line 276
    :goto_5
    return-void

    .line 208
    :pswitch_6
    iget-object v6, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$2;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->startHandler(Landroid/content/Intent;)V

    goto :goto_5

    .line 213
    :pswitch_d
    :try_start_d
    iget-object v6, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$2;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    const/4 v7, 0x0

    #setter for: Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mConnectionMode:I
    invoke-static {v6, v7}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->access$602(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;I)I

    .line 214
    iget-object v6, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$2;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    #getter for: Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->access$100(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 224
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    iget-object v6, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$2;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    const-string v7, "wifip2p"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 225
    .local v5, wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    if-eqz v5, :cond_b6

    .line 227
    iget-object v6, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$2;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    invoke-virtual {v6}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 228
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 229
    .local v3, netInfo:Landroid/net/NetworkInfo;
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 231
    iget-object v6, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$2;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    const/4 v7, 0x3

    #setter for: Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mConnectionMode:I
    invoke-static {v6, v7}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->access$602(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;I)I

    .line 232
    const-string v6, "[FT]-Server"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mWifiP2PConnected = true :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v3           #netInfo:Landroid/net/NetworkInfo;
    :cond_6f
    :goto_6f
    iget-object v6, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$2;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    #getter for: Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mConnectionMode:I
    invoke-static {v6}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->access$600(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)I

    move-result v6

    if-lez v6, :cond_be

    .line 259
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.app.FileTransferServer.FTS_SERVICE_START"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "MODE"

    iget-object v7, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$2;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    #getter for: Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mConnectionMode:I
    invoke-static {v7}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->access$600(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    const-string v6, "[FT]-Server"

    const-string v7, "start Service"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v6, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$2;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    #getter for: Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->access$100(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_99} :catch_9b

    goto/16 :goto_5

    .line 270
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v5           #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :catch_9b
    move-exception v1

    .line 272
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "[FT]-Server"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTSRunningChecker :Exception on mHandler"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 237
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v4       #wifiManager:Landroid/net/wifi/WifiManager;
    .restart local v5       #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_b6
    :try_start_b6
    const-string v6, "[FT]-Server"

    const-string v7, "mWifiP2pManager is null !"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 267
    :cond_be
    iget-object v6, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$2;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    invoke-virtual {v6}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->stopSelf()V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_c3} :catch_9b

    goto/16 :goto_5

    .line 205
    nop

    :pswitch_data_c6
    .packed-switch 0x1544
        :pswitch_d
        :pswitch_6
    .end packed-switch
.end method
