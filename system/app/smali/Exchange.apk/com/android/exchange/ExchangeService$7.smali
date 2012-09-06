.class Lcom/android/exchange/ExchangeService$7;
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
    .line 1772
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$7;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1776
    :try_start_1
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$800()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_6a

    .line 1778
    :try_start_6
    new-instance v1, Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v3, p0, Lcom/android/exchange/ExchangeService$7;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {v1, v3}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->test()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1779
    const-string v1, "!!! Email application not found; stopping self"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1780
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$7;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v1}, Lcom/android/exchange/ExchangeService;->stopSelf()V

    .line 1782
    :cond_1d
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1400()Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_67

    move-result-object v1

    if-nez v1, :cond_4b

    .line 1784
    :try_start_23
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$7;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1785
    .local v0, deviceId:Ljava/lang/String;
    if-eqz v0, :cond_2e

    .line 1786
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->access$1402(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_67
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2e} :catch_7f

    .line 1790
    .end local v0           #deviceId:Ljava/lang/String;
    :cond_2e
    :goto_2e
    :try_start_2e
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1400()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4b

    .line 1791
    const-string v1, "!!! deviceId unknown; stopping self and retrying"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1792
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$7;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v1}, Lcom/android/exchange/ExchangeService;->stopSelf()V

    .line 1794
    new-instance v1, Lcom/android/exchange/ExchangeService$7$1;

    invoke-direct {v1, p0}, Lcom/android/exchange/ExchangeService$7$1;-><init>(Lcom/android/exchange/ExchangeService$7;)V

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1804
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_2e .. :try_end_47} :catchall_67

    .line 1821
    :goto_47
    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->access$1202(Z)Z

    .line 1823
    return-void

    .line 1809
    :cond_4b
    :try_start_4b
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$7;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->runAccountReconcilerSync(Landroid/content/Context;)V

    .line 1811
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$7;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v1}, Lcom/android/exchange/ExchangeService;->maybeStartExchangeServiceThread()V

    .line 1812
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1500()Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_6f

    .line 1813
    const-string v1, "!!! EAS ExchangeService, stopping self"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1814
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$7;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v1}, Lcom/android/exchange/ExchangeService;->stopSelf()V

    .line 1819
    :cond_65
    :goto_65
    monitor-exit v2

    goto :goto_47

    :catchall_67
    move-exception v1

    monitor-exit v2
    :try_end_69
    .catchall {:try_start_4b .. :try_end_69} :catchall_67

    :try_start_69
    throw v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    .line 1821
    :catchall_6a
    move-exception v1

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->access$1202(Z)Z

    throw v1

    .line 1815
    :cond_6f
    :try_start_6f
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1817
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$7;->this$0:Lcom/android/exchange/ExchangeService;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1388

    #calls: Lcom/android/exchange/ExchangeService;->setAlarm(JJ)V
    invoke-static {v1, v3, v4, v5, v6}, Lcom/android/exchange/ExchangeService;->access$1600(Lcom/android/exchange/ExchangeService;JJ)V
    :try_end_7e
    .catchall {:try_start_6f .. :try_end_7e} :catchall_67

    goto :goto_65

    .line 1788
    :catch_7f
    move-exception v1

    goto :goto_2e
.end method
