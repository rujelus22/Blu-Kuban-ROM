.class Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;
.super Ljava/lang/Object;
.source "RealTimeChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingRequestList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mRequestList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TRequestType;>;"
        }
    .end annotation
.end field

.field private final mRequestTimestamps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TRequestType;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 281
    .local p0, this:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;,"Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList<TRequestType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->mRequestTimestamps:Ljava/util/HashMap;

    .line 284
    return-void
.end method


# virtual methods
.method public addRequest(Ljava/lang/Object;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestType;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, this:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;,"Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList<TRequestType;>;"
    .local p1, requestId:Ljava/lang/Object;,"TRequestType;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 288
    .local v0, currentTime:J
    const-string v2, "RealTimeChatService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 289
    const-string v2, "RealTimeChatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_2f
    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 292
    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->mRequestTimestamps:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    return-void
.end method

.method public dump()V
    .registers 8

    .prologue
    .line 333
    .local p0, this:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;,"Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList<TRequestType;>;"
    const-string v4, "RealTimeChatService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 336
    .local v2, requestId:Ljava/lang/Object;,"TRequestType;"
    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->mRequestTimestamps:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 337
    .local v3, timestamp:Ljava/lang/Long;
    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 340
    .end local v2           #requestId:Ljava/lang/Object;,"TRequestType;"
    .end local v3           #timestamp:Ljava/lang/Long;
    :cond_40
    const-string v4, "RealTimeChatService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pendingRequests "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_5c
    return-void
.end method

.method public getOutdatedRequestIds(J)Ljava/util/List;
    .registers 9
    .parameter "oldestValidTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<TRequestType;>;"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, this:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;,"Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList<TRequestType;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 306
    .local v1, list:Ljava/util/List;,"Ljava/util/List<TRequestType;>;"
    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 307
    .local v2, requestId:Ljava/lang/Object;,"TRequestType;"
    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->mRequestTimestamps:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 308
    .local v3, timestamp:Ljava/lang/Long;
    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-gez v4, :cond_2b

    .line 309
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 314
    .end local v2           #requestId:Ljava/lang/Object;,"TRequestType;"
    .end local v3           #timestamp:Ljava/lang/Long;
    :cond_2b
    return-object v1
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 345
    .local p0, this:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;,"Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList<TRequestType;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeRequest(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestType;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, this:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;,"Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList<TRequestType;>;"
    .local p1, requestId:Ljava/lang/Object;,"TRequestType;"
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->mRequestTimestamps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    return-void
.end method

.method public requestPending(Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestType;)Z"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, this:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;,"Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList<TRequestType;>;"
    .local p1, requestId:Ljava/lang/Object;,"TRequestType;"
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->mRequestTimestamps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 301
    .local v0, timestamp:Ljava/lang/Long;
    if-eqz v0, :cond_c

    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public trim(J)V
    .registers 8
    .parameter "oldestValidTime"

    .prologue
    .line 319
    .local p0, this:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;,"Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList<TRequestType;>;"
    const/4 v0, 0x0

    .line 320
    .local v0, done:Z
    :goto_1
    if-nez v0, :cond_30

    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_30

    .line 321
    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    .line 322
    .local v1, requestId:Ljava/lang/Object;,"TRequestType;"
    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->mRequestTimestamps:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 323
    .local v2, timestamp:Ljava/lang/Long;
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-gez v3, :cond_2e

    .line 324
    :cond_23
    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->mRequestTimestamps:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    .line 327
    :cond_2e
    const/4 v0, 0x1

    goto :goto_1

    .line 330
    .end local v1           #requestId:Ljava/lang/Object;,"TRequestType;"
    .end local v2           #timestamp:Ljava/lang/Long;
    :cond_30
    return-void
.end method
