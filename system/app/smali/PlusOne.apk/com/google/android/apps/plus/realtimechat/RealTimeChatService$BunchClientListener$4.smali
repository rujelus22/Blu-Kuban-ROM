.class Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;
.super Ljava/lang/Object;
.source "RealTimeChatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;->onResultsReceived(Lcom/google/android/apps/plus/realtimechat/BunchClient;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;

.field final synthetic val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;Ljava/util/List;Lcom/google/android/apps/plus/realtimechat/BunchClient;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->this$1:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;

    iput-object p2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->val$results:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->val$results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_dd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;

    .line 487
    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getRequestId()I

    move-result v3

    .line 488
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$400()Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->removeRequest(Ljava/lang/Object;)V

    .line 489
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$700()Ljava/util/Map;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$600()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    .line 491
    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v5

    invoke-virtual {v1, v3, v5, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;->onResponseReceived(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;)V

    goto :goto_34

    .line 494
    :cond_4a
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 495
    const-string v3, "op"

    const/16 v4, 0x17

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 496
    const-string v3, "account"

    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 497
    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 499
    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationListResponse()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 500
    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    monitor-enter v1

    .line 501
    const/4 v0, 0x1

    :try_start_80
    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$902(Z)Z

    .line 502
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_da

    .line 503
    const-string v0, "RealTimeChatService"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 504
    const-string v0, "RealTimeChatService"

    const-string v1, "conversations loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_94
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 507
    const-string v1, "op"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 508
    const-string v1, "account"

    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 509
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 511
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$600()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    .line 512
    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;->onConversationsLoaded(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_c4

    .line 502
    :catchall_da
    move-exception v0

    :try_start_db
    monitor-exit v1
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_da

    throw v0

    .line 516
    :cond_dd
    return-void
.end method
