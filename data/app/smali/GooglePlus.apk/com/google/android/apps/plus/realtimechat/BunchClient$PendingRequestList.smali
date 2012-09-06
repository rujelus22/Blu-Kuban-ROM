.class Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;
.super Ljava/lang/Object;
.source "BunchClient.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/realtimechat/BunchClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingRequestList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRequestData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestData:Ljava/util/HashMap;

    .line 168
    return-void
.end method


# virtual methods
.method public addRequest(Ljava/lang/String;Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;)V
    .registers 4
    .parameter "requestId"
    .parameter "data"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 172
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 173
    return-void
.end method

.method public dump()V
    .registers 8

    .prologue
    .line 224
    const-string v4, "BunchClient"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 225
    const-string v4, "BunchClient"

    const-string v5, "mRequestList"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 227
    .local v3, requestId:Ljava/lang/String;
    const-string v4, "BunchClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  requestId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 229
    .end local v3           #requestId:Ljava/lang/String;
    :cond_3b
    const-string v4, "BunchClient"

    const-string v5, "mRequestData"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestData:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 231
    .local v1, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_89

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 232
    .restart local v3       #requestId:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestData:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;

    .line 233
    .local v2, request:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    const-string v4, "BunchClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  requestId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    #calls: Lcom/google/android/apps/plus/realtimechat/BunchClient;->getRequestTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->access$100(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 237
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #request:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .end local v3           #requestId:Ljava/lang/String;
    :cond_89
    return-void
.end method

.method public getData(Ljava/lang/String;)Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .registers 4
    .parameter "requestId"

    .prologue
    .line 181
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;

    .line 182
    .local v0, data:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    return-object v0
.end method

.method public getRequestIds()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 213
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 214
    .local v2, requestId:Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 216
    .end local v2           #requestId:Ljava/lang/String;
    :cond_1b
    return-object v1
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeRequest(Ljava/lang/String;)V
    .registers 3
    .parameter "requestId"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-void
.end method

.method public trimOutdatedRequestIds(J)Ljava/util/List;
    .registers 10
    .parameter "oldestValidTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, done:Z
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 192
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;>;"
    :goto_6
    if-nez v0, :cond_48

    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_48

    .line 193
    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 194
    .local v2, requestId:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestData:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;

    .line 195
    .local v1, request:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    if-eqz v1, :cond_42

    .line 196
    iget-wide v5, v1, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mTimestamp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 197
    .local v4, timestamp:Ljava/lang/Long;
    if-eqz v4, :cond_32

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-gez v5, :cond_40

    .line 198
    :cond_32
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestData:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_6

    .line 202
    :cond_40
    const/4 v0, 0x1

    goto :goto_6

    .line 205
    .end local v4           #timestamp:Ljava/lang/Long;
    :cond_42
    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_6

    .line 208
    .end local v1           #request:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .end local v2           #requestId:Ljava/lang/String;
    :cond_48
    return-object v3
.end method
