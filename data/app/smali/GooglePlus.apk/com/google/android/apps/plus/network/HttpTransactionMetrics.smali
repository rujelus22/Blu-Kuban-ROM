.class public Lcom/google/android/apps/plus/network/HttpTransactionMetrics;
.super Ljava/lang/Object;
.source "HttpTransactionMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/network/HttpTransactionMetrics$1;,
        Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;
    }
.end annotation


# instance fields
.field private mBaseReceivedBytes:J

.field private mBaseRequestCount:J

.field private mBaseSentBytes:J

.field private mConnectionMetrics:Lorg/apache/http/HttpConnectionMetrics;

.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessingStartMillis:J

.field private mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

.field private mTransactionStartMillis:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public accumulateFrom(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V
    .registers 5
    .parameter "other"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    if-nez v0, :cond_b

    .line 219
    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onBeginTransaction(Ljava/lang/String;)V

    .line 221
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getDuration()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$314(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J

    .line 222
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getProcessingDuration()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$214(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J

    .line 223
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getRequestCount()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$414(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J

    .line 224
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getReceivedBytes()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$514(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J

    .line 225
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getSentBytes()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$614(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J

    .line 226
    return-void
.end method

.method public getDuration()J
    .registers 8

    .prologue
    .line 147
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 148
    .local v4, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    .line 149
    .local v0, duration:J
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 150
    .local v3, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    #getter for: Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->duration:J
    invoke-static {v5}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$300(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;)J

    move-result-wide v5

    add-long/2addr v0, v5

    goto :goto_11

    .line 152
    .end local v3           #name:Ljava/lang/String;
    :cond_2b
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    :goto_18
    return-object v0

    :cond_19
    const-string v0, "Unknown"

    goto :goto_18
.end method

.method public getProcessingDuration()J
    .registers 8

    .prologue
    .line 161
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 162
    .local v4, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    .line 163
    .local v0, duration:J
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 164
    .local v3, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    #getter for: Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->processingDuration:J
    invoke-static {v5}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$200(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;)J

    move-result-wide v5

    add-long/2addr v0, v5

    goto :goto_11

    .line 166
    .end local v3           #name:Ljava/lang/String;
    :cond_2b
    return-wide v0
.end method

.method public getReceivedBytes()J
    .registers 8

    .prologue
    .line 190
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 191
    .local v2, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v3, 0x0

    .line 192
    .local v3, receivedBytes:J
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 193
    .local v1, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    #getter for: Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->receivedBytes:J
    invoke-static {v5}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$500(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;)J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_11

    .line 195
    .end local v1           #name:Ljava/lang/String;
    :cond_2b
    return-wide v3
.end method

.method public getRequestCount()J
    .registers 8

    .prologue
    .line 175
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 176
    .local v2, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v3, 0x0

    .line 177
    .local v3, requestCount:J
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 178
    .local v1, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    #getter for: Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->requestCount:J
    invoke-static {v5}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$400(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;)J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_11

    .line 181
    .end local v1           #name:Ljava/lang/String;
    :cond_2b
    return-wide v3
.end method

.method public getSentBytes()J
    .registers 8

    .prologue
    .line 204
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 205
    .local v2, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v3, 0x0

    .line 206
    .local v3, sentBytes:J
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 207
    .local v1, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    #getter for: Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->sentBytes:J
    invoke-static {v5}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$600(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;)J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_11

    .line 209
    .end local v1           #name:Ljava/lang/String;
    :cond_2b
    return-wide v3
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "tag"
    .parameter "prefix"

    .prologue
    .line 123
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    .local v2, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 125
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    .local v1, name:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 128
    .end local v1           #name:Ljava/lang/String;
    :cond_39
    return-void
.end method

.method public onBeginTransaction(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    iput-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    if-nez v0, :cond_22

    .line 56
    new-instance v0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;-><init>(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    #setter for: Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->name:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$102(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransactionStartMillis:J

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mProcessingStartMillis:J

    .line 62
    return-void
.end method

.method public onEndResultProcessing()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x0

    .line 79
    iget-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mProcessingStartMillis:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_16

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mProcessingStartMillis:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$214(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J

    .line 81
    iput-wide v5, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mProcessingStartMillis:J

    .line 83
    :cond_16
    return-void
.end method

.method public onEndTransaction()V
    .registers 6

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndResultProcessing()V

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransactionStartMillis:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$314(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mConnectionMetrics:Lorg/apache/http/HttpConnectionMetrics;

    if-eqz v0, :cond_3d

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mConnectionMetrics:Lorg/apache/http/HttpConnectionMetrics;

    invoke-interface {v1}, Lorg/apache/http/HttpConnectionMetrics;->getRequestCount()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mBaseRequestCount:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$414(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mConnectionMetrics:Lorg/apache/http/HttpConnectionMetrics;

    invoke-interface {v1}, Lorg/apache/http/HttpConnectionMetrics;->getReceivedBytesCount()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mBaseReceivedBytes:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$514(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mConnectionMetrics:Lorg/apache/http/HttpConnectionMetrics;

    invoke-interface {v1}, Lorg/apache/http/HttpConnectionMetrics;->getSentBytesCount()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mBaseSentBytes:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$614(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J

    .line 99
    :cond_3d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mConnectionMetrics:Lorg/apache/http/HttpConnectionMetrics;

    .line 100
    return-void
.end method

.method public onEndTransaction(JJ)V
    .registers 10
    .parameter "duration"
    .parameter "processingDuration"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    #setter for: Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->duration:J
    invoke-static {v0, p1, p2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$302(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    #setter for: Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->processingDuration:J
    invoke-static {v0, p3, p4}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$202(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mConnectionMetrics:Lorg/apache/http/HttpConnectionMetrics;

    if-eqz v0, :cond_38

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mConnectionMetrics:Lorg/apache/http/HttpConnectionMetrics;

    invoke-interface {v1}, Lorg/apache/http/HttpConnectionMetrics;->getRequestCount()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mBaseRequestCount:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$414(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mConnectionMetrics:Lorg/apache/http/HttpConnectionMetrics;

    invoke-interface {v1}, Lorg/apache/http/HttpConnectionMetrics;->getReceivedBytesCount()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mBaseReceivedBytes:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$514(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mConnectionMetrics:Lorg/apache/http/HttpConnectionMetrics;

    invoke-interface {v1}, Lorg/apache/http/HttpConnectionMetrics;->getSentBytesCount()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mBaseSentBytes:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$614(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J

    .line 116
    :cond_38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mConnectionMetrics:Lorg/apache/http/HttpConnectionMetrics;

    .line 117
    return-void
.end method

.method public onStartResultProcessing()V
    .registers 3

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mProcessingStartMillis:J

    .line 76
    return-void
.end method

.method public setConnectionMetrics(Lorg/apache/http/HttpConnectionMetrics;)V
    .registers 4
    .parameter "metrics"

    .prologue
    const-wide/16 v0, 0x0

    .line 68
    iput-object p1, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mConnectionMetrics:Lorg/apache/http/HttpConnectionMetrics;

    .line 69
    iput-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mBaseRequestCount:J

    .line 70
    iput-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mBaseReceivedBytes:J

    .line 71
    iput-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mBaseSentBytes:J

    .line 72
    return-void
.end method
