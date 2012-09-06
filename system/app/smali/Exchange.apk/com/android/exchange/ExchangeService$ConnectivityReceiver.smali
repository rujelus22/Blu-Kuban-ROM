.class public Lcom/android/exchange/ExchangeService$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/ExchangeService;)V
    .registers 2
    .parameter

    .prologue
    .line 1538
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1541
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 1542
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1543
    .local v1, b:Landroid/os/Bundle;
    if-eqz v1, :cond_5d

    .line 1544
    const-string v5, "networkInfo"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1545
    .local v0, a:Landroid/net/NetworkInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connectivity alert for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1546
    .local v3, info:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 1547
    .local v4, state:Landroid/net/NetworkInfo$State;
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_61

    .line 1548
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " CONNECTED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1549
    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1550
    sget-object v6, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1551
    :try_start_52
    sget-object v5, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 1552
    monitor-exit v6
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_5e

    .line 1553
    const-string v5, "connected"

    invoke-static {v5}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 1582
    .end local v0           #a:Landroid/net/NetworkInfo;
    .end local v1           #b:Landroid/os/Bundle;
    .end local v3           #info:Ljava/lang/String;
    .end local v4           #state:Landroid/net/NetworkInfo$State;
    :cond_5d
    :goto_5d
    return-void

    .line 1552
    .restart local v0       #a:Landroid/net/NetworkInfo;
    .restart local v1       #b:Landroid/os/Bundle;
    .restart local v3       #info:Ljava/lang/String;
    .restart local v4       #state:Landroid/net/NetworkInfo$State;
    :catchall_5e
    move-exception v5

    :try_start_5f
    monitor-exit v6
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v5

    .line 1554
    :cond_61
    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_5d

    .line 1555
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " DISCONNECTED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1556
    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1557
    const-string v5, "disconnected"

    invoke-static {v5}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto :goto_5d

    .line 1560
    .end local v0           #a:Landroid/net/NetworkInfo;
    .end local v1           #b:Landroid/os/Bundle;
    .end local v3           #info:Ljava/lang/String;
    .end local v4           #state:Landroid/net/NetworkInfo$State;
    :cond_81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 1562
    iget-object v5, p0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;->this$0:Lcom/android/exchange/ExchangeService;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1564
    .local v2, cm:Landroid/net/ConnectivityManager;
    iget-object v5, p0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v6

    #setter for: Lcom/android/exchange/ExchangeService;->mBackgroundData:Z
    invoke-static {v5, v6}, Lcom/android/exchange/ExchangeService;->access$1102(Lcom/android/exchange/ExchangeService;Z)Z

    .line 1566
    iget-object v5, p0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;->this$0:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mBackgroundData:Z
    invoke-static {v5}, Lcom/android/exchange/ExchangeService;->access$1100(Lcom/android/exchange/ExchangeService;)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 1567
    const-string v5, "background data on"

    invoke-static {v5}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 1568
    const-string v5, "Background data on; restart syncs"

    invoke-static {v5}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_5d

    .line 1571
    :cond_b3
    const-string v5, "Background data off: stop all syncs"

    invoke-static {v5}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1572
    new-instance v5, Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;

    invoke-direct {v5, p0}, Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;-><init>(Lcom/android/exchange/ExchangeService$ConnectivityReceiver;)V

    invoke-static {v5}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_5d
.end method
