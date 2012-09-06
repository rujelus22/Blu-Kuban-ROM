.class Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService$ConnectivityReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService$ConnectivityReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 1572
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;->this$1:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1575
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;->this$1:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    iget-object v2, v2, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v3, v2, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    monitor-enter v3

    .line 1576
    :try_start_7
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;->this$1:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    iget-object v2, v2, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v2, v2, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v2}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 1577
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-wide v4, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->stopAccountSyncs(J)V

    goto :goto_11

    .line 1578
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_26
    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 1579
    return-void
.end method
