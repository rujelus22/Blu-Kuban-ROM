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
    .line 3587
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
    .line 3590
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 3591
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 3592
    .local v1, b:Landroid/os/Bundle;
    if-eqz v1, :cond_5d

    .line 3593
    const-string v5, "networkInfo"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 3594
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

    .line 3595
    .local v3, info:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 3596
    .local v4, state:Landroid/net/NetworkInfo$State;
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_61

    .line 3597
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " CONNECTED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3598
    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 3599
    sget-object v6, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3600
    :try_start_52
    sget-object v5, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 3601
    monitor-exit v6
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_5e

    .line 3602
    const-string v5, "connected"

    invoke-static {v5}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 3640
    .end local v0           #a:Landroid/net/NetworkInfo;
    .end local v1           #b:Landroid/os/Bundle;
    .end local v3           #info:Ljava/lang/String;
    .end local v4           #state:Landroid/net/NetworkInfo$State;
    :cond_5d
    :goto_5d
    return-void

    .line 3601
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

    .line 3603
    :cond_61
    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_5d

    .line 3604
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " DISCONNECTED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3605
    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 3606
    const-string v5, "disconnected"

    invoke-static {v5}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto :goto_5d

    .line 3609
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

    .line 3611
    iget-object v5, p0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;->this$0:Lcom/android/exchange/ExchangeService;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 3613
    .local v2, cm:Landroid/net/ConnectivityManager;
    iget-object v5, p0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v6

    #setter for: Lcom/android/exchange/ExchangeService;->mBackgroundData:Z
    invoke-static {v5, v6}, Lcom/android/exchange/ExchangeService;->access$1902(Lcom/android/exchange/ExchangeService;Z)Z

    .line 3615
    iget-object v5, p0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;->this$0:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mBackgroundData:Z
    invoke-static {v5}, Lcom/android/exchange/ExchangeService;->access$1900(Lcom/android/exchange/ExchangeService;)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 3616
    const-string v5, "background data on"

    invoke-static {v5}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 3617
    const-string v5, "Background data on; restart syncs"

    invoke-static {v5}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_5d

    .line 3620
    :cond_b3
    const-string v5, "Background data off: stop all syncs"

    invoke-static {v5}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 3628
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;

    invoke-direct {v6, p0}, Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;-><init>(Lcom/android/exchange/ExchangeService$ConnectivityReceiver;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_5d
.end method
