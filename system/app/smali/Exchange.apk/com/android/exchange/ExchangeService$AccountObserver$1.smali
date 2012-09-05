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
    .line 1693
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$AccountObserver$1;->this$1:Lcom/android/exchange/ExchangeService$AccountObserver;

    iput-object p2, p0, Lcom/android/exchange/ExchangeService$AccountObserver$1;->val$this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1696
    sget-object v3, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    monitor-enter v3

    .line 1697
    :try_start_3
    sget-object v2, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v2}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1698
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_9

    .line 1704
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$AccountObserver$1;->this$1:Lcom/android/exchange/ExchangeService$AccountObserver;

    iget-object v2, v2, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/emailcommon/service/PolicyServiceProxy;->isActive(Landroid/content/Context;Lcom/android/emailcommon/service/PolicySet;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1705
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$AccountObserver$1;->this$1:Lcom/android/exchange/ExchangeService$AccountObserver;

    iget-object v2, v2, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    const/4 v4, 0x0

    invoke-static {v2, v0, v4}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Z)V

    .line 1707
    const-string v2, "ExchangeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccountObserver - isActive true; release hold for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1717
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_49
    move-exception v2

    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw v2

    .line 1711
    .restart local v0       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4c
    :try_start_4c
    const-string v2, "ExchangeService"

    const-string v4, "AccountObserver - policiesRequired"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$AccountObserver$1;->this$1:Lcom/android/exchange/ExchangeService$AccountObserver;

    iget-object v2, v2, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v4, v5}, Lcom/android/emailcommon/service/PolicyServiceProxy;->policiesRequired(Landroid/content/Context;J)V

    goto :goto_9

    .line 1717
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_5d
    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_4c .. :try_end_5e} :catchall_49

    .line 1718
    return-void
.end method
