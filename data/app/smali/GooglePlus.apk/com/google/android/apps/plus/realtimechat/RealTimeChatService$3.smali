.class Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$3;
.super Ljava/lang/Object;
.source "RealTimeChatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)V
    .registers 2
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$3;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x3

    .line 414
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x3a98

    sub-long v4, v8, v10

    .line 415
    .local v4, oldestValid:J
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$400()Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->getOutdatedRequestIds(J)Ljava/util/List;

    move-result-object v7

    .line 416
    .local v7, timedOutRequests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 417
    .local v2, id:Ljava/lang/Integer;
    const-string v8, "RealTimeChatService"

    invoke-static {v8, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 418
    const-string v8, "RealTimeChatService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " request "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " timed out"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_47
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$600()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    .line 421
    .local v3, listener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;->onResponseTimeout(I)V

    goto :goto_4f

    .line 423
    .end local v3           #listener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
    :cond_63
    new-instance v6, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v6, v8, v12, v9}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;-><init>(IILcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)V

    .line 425
    .local v6, result:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$700()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 427
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #id:Ljava/lang/Integer;
    .end local v6           #result:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    :cond_75
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$400()Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->trim(J)V

    .line 428
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$400()Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->dump()V

    .line 429
    return-void
.end method
