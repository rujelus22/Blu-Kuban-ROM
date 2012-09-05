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
        "<RequestType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TDataType;>;"
    }
.end annotation


# instance fields
.field private final mRequestData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TRequestType;TDataType;>;"
        }
    .end annotation
.end field

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
    .line 83
    .local p0, this:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;,"Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList<TRequestType;TDataType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestData:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestTimestamps:Ljava/util/HashMap;

    .line 87
    return-void
.end method


# virtual methods
.method public addRequest(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestType;TDataType;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, this:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;,"Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList<TRequestType;TDataType;>;"
    .local p1, requestId:Ljava/lang/Object;,"TRequestType;"
    .local p2, data:Ljava/lang/Object;,"TDataType;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 91
    .local v0, currentTime:J
    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 92
    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestData:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestTimestamps:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public getData(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestType;)TDataType;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, this:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;,"Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList<TRequestType;TDataType;>;"
    .local p1, requestId:Ljava/lang/Object;,"TRequestType;"
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 117
    .local p0, this:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;,"Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList<TRequestType;TDataType;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 118
    .local v1, list:Ljava/util/List;,"Ljava/util/List<TRequestType;>;"
    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 119
    .local v2, requestId:Ljava/lang/Object;,"TRequestType;"
    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestTimestamps:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 120
    .local v3, timestamp:Ljava/lang/Long;
    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-gez v4, :cond_2b

    .line 121
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 126
    .end local v2           #requestId:Ljava/lang/Object;,"TRequestType;"
    .end local v3           #timestamp:Ljava/lang/Long;
    :cond_2b
    return-object v1
.end method

.method public getRequestIds()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TRequestType;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, this:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;,"Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList<TRequestType;TDataType;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 131
    .local v1, list:Ljava/util/List;,"Ljava/util/List<TRequestType;>;"
    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 132
    .local v2, requestId:Ljava/lang/Object;,"TRequestType;"
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 134
    .end local v2           #requestId:Ljava/lang/Object;,"TRequestType;"
    :cond_19
    return-object v1
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 154
    .local p0, this:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;,"Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList<TRequestType;TDataType;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TDataType;>;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, this:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;,"Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList<TRequestType;TDataType;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public pendingRequestTimestamp(Ljava/lang/Object;)Ljava/lang/Long;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestType;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, this:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;,"Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList<TRequestType;TDataType;>;"
    .local p1, requestId:Ljava/lang/Object;,"TRequestType;"
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestTimestamps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 108
    .local v0, timestamp:Ljava/lang/Long;
    return-object v0
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
    .line 102
    .local p0, this:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;,"Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList<TRequestType;TDataType;>;"
    .local p1, requestId:Ljava/lang/Object;,"TRequestType;"
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestTimestamps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
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
    .line 112
    .local p0, this:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;,"Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList<TRequestType;TDataType;>;"
    .local p1, requestId:Ljava/lang/Object;,"TRequestType;"
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestTimestamps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 113
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
    .line 139
    .local p0, this:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;,"Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList<TRequestType;TDataType;>;"
    const/4 v0, 0x0

    .line 140
    .local v0, done:Z
    :goto_1
    if-nez v0, :cond_35

    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_35

    .line 141
    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    .line 142
    .local v1, requestId:Ljava/lang/Object;,"TRequestType;"
    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestTimestamps:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 143
    .local v2, timestamp:Ljava/lang/Long;
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-gez v3, :cond_33

    .line 144
    :cond_23
    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestData:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestTimestamps:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->mRequestList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    .line 148
    :cond_33
    const/4 v0, 0x1

    goto :goto_1

    .line 151
    .end local v1           #requestId:Ljava/lang/Object;,"TRequestType;"
    .end local v2           #timestamp:Ljava/lang/Long;
    :cond_35
    return-void
.end method
