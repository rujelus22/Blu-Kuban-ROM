.class Lcom/android/exchange/ExchangeService$AccountObserver$1;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService$AccountObserver;-><init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exchange/ExchangeService$AccountObserver;

.field final synthetic val$this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService$AccountObserver;Lcom/android/exchange/ExchangeService;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$AccountObserver$1;->this$1:Lcom/android/exchange/ExchangeService$AccountObserver;

    iput-object p2, p0, Lcom/android/exchange/ExchangeService$AccountObserver$1;->val$this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 635
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$AccountObserver$1;->this$1:Lcom/android/exchange/ExchangeService$AccountObserver;

    iget-object v2, v2, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v3, v2, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    monitor-enter v3

    .line 636
    :try_start_7
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$AccountObserver$1;->this$1:Lcom/android/exchange/ExchangeService$AccountObserver;

    iget-object v2, v2, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v2, v2, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v2}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 637
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget v2, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_11

    .line 641
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$AccountObserver$1;->this$1:Lcom/android/exchange/ExchangeService$AccountObserver;

    iget-object v2, v2, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/emailcommon/service/PolicyServiceProxy;->isActive(Landroid/content/Context;Lcom/android/emailcommon/provider/Policy;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 642
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$AccountObserver$1;->this$1:Lcom/android/exchange/ExchangeService$AccountObserver;

    iget-object v2, v2, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    const/4 v4, 0x0

    invoke-static {v2, v0, v4}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive true; release hold for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_11

    .line 651
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_4f
    move-exception v2

    monitor-exit v3
    :try_end_51
    .catchall {:try_start_7 .. :try_end_51} :catchall_4f

    throw v2

    .line 646
    .restart local v0       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_52
    :try_start_52
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$AccountObserver$1;->this$1:Lcom/android/exchange/ExchangeService$AccountObserver;

    iget-object v2, v2, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-wide v4, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v2, v4, v5}, Lcom/android/emailcommon/service/PolicyServiceProxy;->policiesRequired(Landroid/content/Context;J)V

    goto :goto_11

    .line 651
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    :cond_5c
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_52 .. :try_end_5d} :catchall_4f

    .line 652
    return-void
.end method
