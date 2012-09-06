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
    .line 512
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->this$1:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;

    iput-object p2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->val$results:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 515
    iget-object v6, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->val$results:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;

    .line 516
    .local v5, result:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    invoke-virtual {v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getRequestId()I

    move-result v4

    .line 517
    .local v4, originalRequestId:I
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$400()Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->removeRequest(Ljava/lang/Object;)V

    .line 518
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$700()Ljava/util/Map;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    invoke-virtual {v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasPingResponse()Z

    move-result v6

    if-nez v6, :cond_7c

    .line 521
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$600()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    .line 522
    .local v3, listener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
    iget-object v6, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v6

    invoke-virtual {v3, v4, v6, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;->onResponseReceived(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;)V

    goto :goto_3e

    .line 525
    .end local v3           #listener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
    :cond_54
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 526
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "op"

    const/16 v7, 0xdf

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 527
    const-string v6, "account"

    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 528
    iget-object v6, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 531
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_7c
    invoke-virtual {v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasConversationListResponse()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 532
    const-class v7, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    monitor-enter v7

    .line 533
    const/4 v6, 0x1

    :try_start_8a
    invoke-static {v6}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$902(Z)Z

    .line 534
    monitor-exit v7
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_e4

    .line 535
    const-string v6, "RealTimeChatService"

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 536
    const-string v6, "RealTimeChatService"

    const-string v7, "conversations loaded"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_9e
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 539
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v6, "op"

    const/16 v7, 0xe3

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 540
    const-string v6, "account"

    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 541
    iget-object v6, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 543
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$600()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_ce
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    .line 544
    .restart local v3       #listener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
    iget-object v6, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener$4;->val$client:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;->onConversationsLoaded(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_ce

    .line 534
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #listener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
    :catchall_e4
    move-exception v6

    :try_start_e5
    monitor-exit v7
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e4

    throw v6

    .line 548
    .end local v4           #originalRequestId:I
    .end local v5           #result:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    :cond_e7
    return-void
.end method
