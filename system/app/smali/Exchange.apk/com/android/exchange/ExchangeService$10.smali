.class Lcom/android/exchange/ExchangeService$10;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService;)V
    .registers 2
    .parameter

    .prologue
    .line 3899
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$10;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 3903
    :try_start_1
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$500()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_76

    .line 3906
    :try_start_6
    new-instance v2, Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v4, p0, Lcom/android/exchange/ExchangeService$10;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {v2, v4}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/emailcommon/service/AccountServiceProxy;->test()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 3907
    const-string v2, "!!! Email application not found; stopping self"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 3908
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$10;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v2}, Lcom/android/exchange/ExchangeService;->stopSelf()V

    .line 3910
    :cond_1d
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$2500()Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_73

    move-result-object v2

    if-nez v2, :cond_4b

    .line 3912
    :try_start_23
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$10;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3913
    .local v0, deviceId:Ljava/lang/String;
    if-eqz v0, :cond_2e

    .line 3914
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->access$2502(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_73
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2e} :catch_8e

    .line 3918
    .end local v0           #deviceId:Ljava/lang/String;
    :cond_2e
    :goto_2e
    :try_start_2e
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$2500()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4b

    .line 3919
    const-string v2, "!!! deviceId unknown; stopping self and retrying"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 3920
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$10;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v2}, Lcom/android/exchange/ExchangeService;->stopSelf()V

    .line 3922
    new-instance v2, Lcom/android/exchange/ExchangeService$10$1;

    invoke-direct {v2, p0}, Lcom/android/exchange/ExchangeService$10$1;-><init>(Lcom/android/exchange/ExchangeService$10;)V

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 3933
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_2e .. :try_end_47} :catchall_73

    .line 3962
    :goto_47
    invoke-static {v8}, Lcom/android/exchange/ExchangeService;->access$2302(Z)Z

    .line 3964
    return-void

    .line 3938
    :cond_4b
    :try_start_4b
    new-instance v2, Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v4, p0, Lcom/android/exchange/ExchangeService$10;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {v2, v4}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/emailcommon/service/AccountServiceProxy;->restoreAccountsIfNeeded()V
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_73
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_55} :catch_7b

    .line 3948
    :try_start_55
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$10;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v4, p0, Lcom/android/exchange/ExchangeService$10;->this$0:Lcom/android/exchange/ExchangeService;

    #calls: Lcom/android/exchange/ExchangeService;->runAccountReconcilerSync(Landroid/content/Context;)V
    invoke-static {v2, v4}, Lcom/android/exchange/ExchangeService;->access$1700(Lcom/android/exchange/ExchangeService;Landroid/content/Context;)V

    .line 3951
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$10;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v2}, Lcom/android/exchange/ExchangeService;->maybeStartExchangeServiceThread()V

    .line 3952
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$2600()Ljava/lang/Thread;

    move-result-object v2

    if-nez v2, :cond_7e

    .line 3953
    const-string v2, "!!! EAS ExchangeService, stopping self"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 3954
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$10;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v2}, Lcom/android/exchange/ExchangeService;->stopSelf()V

    .line 3960
    :cond_71
    :goto_71
    monitor-exit v3

    goto :goto_47

    :catchall_73
    move-exception v2

    monitor-exit v3
    :try_end_75
    .catchall {:try_start_55 .. :try_end_75} :catchall_73

    :try_start_75
    throw v2
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_76

    .line 3962
    :catchall_76
    move-exception v2

    invoke-static {v8}, Lcom/android/exchange/ExchangeService;->access$2302(Z)Z

    throw v2

    .line 3940
    :catch_7b
    move-exception v1

    .line 3942
    .local v1, e:Landroid/os/RemoteException;
    :try_start_7c
    monitor-exit v3

    goto :goto_47

    .line 3955
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_7e
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$2400()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 3958
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$10;->this$0:Lcom/android/exchange/ExchangeService;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1388

    #calls: Lcom/android/exchange/ExchangeService;->setAlarm(JJ)V
    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/exchange/ExchangeService;->access$2700(Lcom/android/exchange/ExchangeService;JJ)V
    :try_end_8d
    .catchall {:try_start_7c .. :try_end_8d} :catchall_73

    goto :goto_71

    .line 3916
    :catch_8e
    move-exception v2

    goto :goto_2e
.end method
