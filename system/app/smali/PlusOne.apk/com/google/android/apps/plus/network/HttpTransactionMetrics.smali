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
.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "tag"
    .parameter "prefix"

    .prologue
    .line 109
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 110
    .local v2, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 111
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

    .line 112
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

    .line 114
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

    .line 82
    iget-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mProcessingStartMillis:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_16

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mProcessingStartMillis:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$214(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J

    .line 84
    iput-wide v5, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mProcessingStartMillis:J

    .line 86
    :cond_16
    return-void
.end method

.method public onEndTransaction()V
    .registers 6

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndResultProcessing()V

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransactionStartMillis:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$314(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mConnectionMetrics:Lorg/apache/http/HttpConnectionMetrics;

    if-eqz v0, :cond_3d

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mConnectionMetrics:Lorg/apache/http/HttpConnectionMetrics;

    invoke-interface {v1}, Lorg/apache/http/HttpConnectionMetrics;->getRequestCount()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mBaseRequestCount:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$414(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mConnectionMetrics:Lorg/apache/http/HttpConnectionMetrics;

    invoke-interface {v1}, Lorg/apache/http/HttpConnectionMetrics;->getReceivedBytesCount()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mBaseReceivedBytes:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$514(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;

    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mConnectionMetrics:Lorg/apache/http/HttpConnectionMetrics;

    invoke-interface {v1}, Lorg/apache/http/HttpConnectionMetrics;->getSentBytesCount()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mBaseSentBytes:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;->access$614(Lcom/google/android/apps/plus/network/HttpTransactionMetrics$HttpTransactionMetricsHolder;J)J

    .line 102
    :cond_3d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mConnectionMetrics:Lorg/apache/http/HttpConnectionMetrics;

    .line 103
    return-void
.end method

.method public onStartResultProcessing()V
    .registers 3

    .prologue
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mProcessingStartMillis:J

    .line 79
    return-void
.end method

.method public setConnectionMetrics(Lorg/apache/http/HttpConnectionMetrics;)V
    .registers 6
    .parameter "metrics"

    .prologue
    const-wide/16 v2, 0x0

    .line 68
    iput-object p1, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mConnectionMetrics:Lorg/apache/http/HttpConnectionMetrics;

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mConnectionMetrics:Lorg/apache/http/HttpConnectionMetrics;

    invoke-interface {v0}, Lorg/apache/http/HttpConnectionMetrics;->getRequestCount()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mBaseRequestCount:J

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mConnectionMetrics:Lorg/apache/http/HttpConnectionMetrics;

    invoke-interface {v0}, Lorg/apache/http/HttpConnectionMetrics;->getReceivedBytesCount()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mBaseReceivedBytes:J

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mConnectionMetrics:Lorg/apache/http/HttpConnectionMetrics;

    invoke-interface {v0}, Lorg/apache/http/HttpConnectionMetrics;->getSentBytesCount()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mBaseSentBytes:J

    .line 72
    iput-wide v2, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mBaseRequestCount:J

    .line 73
    iput-wide v2, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mBaseReceivedBytes:J

    .line 74
    iput-wide v2, p0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->mBaseSentBytes:J

    .line 75
    return-void
.end method
