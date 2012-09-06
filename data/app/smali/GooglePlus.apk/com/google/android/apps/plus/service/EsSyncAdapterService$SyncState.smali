.class public final Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
.super Ljava/lang/Object;
.source "EsSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/EsSyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncState"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mCurrentCount:I

.field private mCurrentMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

.field private mCurrentOperation:Ljava/lang/String;

.field private mCurrentOperationStart:J

.field private mCurrentSubCount:I

.field private mFullSync:Z

.field private final mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTimestamp:J

.field private mSyncName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mOperations:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mFullSync:Z

    return p1
.end method

.method public static isFullSync(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z
    .registers 2
    .parameter "s"

    .prologue
    .line 157
    if-eqz p0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mFullSync:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static declared-synchronized logSyncStats(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 12
    .parameter "syncState"

    .prologue
    .line 212
    const-class v5, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    monitor-enter v5

    :try_start_3
    const-string v4, "EsSyncAdapterService"

    const/4 v6, 0x4

    invoke-static {v4, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 213
    const-string v4, "EsSyncAdapterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mSyncName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " finished. Elapsed time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mStartTimestamp:J

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;

    .line 216
    .local v3, operation:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;
    iget v4, v3, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;->count:I

    if-nez v4, :cond_b0

    iget-wide v0, v3, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;->duration:J

    .line 218
    .local v0, avgDuration:J
    :goto_4f
    const-string v4, "EsSyncAdapterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;->operation:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] items: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;->count:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sub-items: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;->subCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", duration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v3, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;->duration:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", avg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v4, v3, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;->metrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    const-string v6, "EsSyncAdapterService"

    const-string v7, "    "

    invoke-virtual {v4, v6, v7}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ac
    .catchall {:try_start_3 .. :try_end_ac} :catchall_ad

    goto :goto_3d

    .line 212
    .end local v0           #avgDuration:J
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #operation:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;
    :catchall_ad
    move-exception v4

    monitor-exit v5

    throw v4

    .line 216
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #operation:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;
    :cond_b0
    :try_start_b0
    iget-wide v6, v3, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;->duration:J

    long-to-double v6, v6

    iget v4, v3, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;->count:I
    :try_end_b5
    .catchall {:try_start_b0 .. :try_end_b5} :catchall_ad

    int-to-double v8, v4

    div-double/2addr v6, v8

    double-to-long v0, v6

    goto :goto_4f

    .line 225
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #operation:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;
    :cond_b9
    monitor-exit v5

    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 2

    .prologue
    .line 134
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mCanceled:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 135
    monitor-exit p0

    return-void

    .line 134
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHttpTransactionMetrics()Lcom/google/android/apps/plus/network/HttpTransactionMetrics;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mCurrentMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    return-object v0
.end method

.method public declared-synchronized incrementCount()V
    .registers 2

    .prologue
    .line 165
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mCurrentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mCurrentCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 166
    monitor-exit p0

    return-void

    .line 165
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized incrementCount(I)V
    .registers 3
    .parameter "increment"

    .prologue
    .line 169
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mCurrentCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mCurrentCount:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 170
    monitor-exit p0

    return-void

    .line 169
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized incrementSubCount()V
    .registers 2

    .prologue
    .line 173
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mCurrentSubCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mCurrentSubCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 174
    monitor-exit p0

    return-void

    .line 173
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCanceled()Z
    .registers 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mCanceled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFinish()V
    .registers 3

    .prologue
    .line 189
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mCurrentCount:I

    iget v1, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mCurrentSubCount:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(II)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 190
    monitor-exit p0

    return-void

    .line 189
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFinish(I)V
    .registers 3
    .parameter "count"

    .prologue
    .line 193
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(II)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 194
    monitor-exit p0

    return-void

    .line 193
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFinish(II)V
    .registers 8
    .parameter "count"
    .parameter "subCount"

    .prologue
    .line 197
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;

    invoke-direct {v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;-><init>()V

    .line 198
    .local v0, state:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;
    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mCurrentOperation:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;->operation:Ljava/lang/String;

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mCurrentOperationStart:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;->duration:J

    .line 200
    iput p1, v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;->count:I

    .line 201
    iput p2, v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;->subCount:I

    .line 202
    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mCurrentMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    iput-object v1, v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;->metrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mCurrentMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    .line 204
    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 205
    monitor-exit p0

    return-void

    .line 197
    .end local v0           #state:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onStart(Ljava/lang/String;)V
    .registers 4
    .parameter "operation"

    .prologue
    .line 181
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mCurrentOperation:Ljava/lang/String;

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mCurrentOperationStart:J

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mCurrentCount:I

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mCurrentSubCount:I

    .line 185
    new-instance v0, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-direct {v0}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mCurrentMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 186
    monitor-exit p0

    return-void

    .line 181
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSyncFinish()V
    .registers 2

    .prologue
    .line 208
    monitor-enter p0

    :try_start_1
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->logSyncStats(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 209
    monitor-exit p0

    return-void

    .line 208
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSyncStart(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 146
    monitor-enter p0

    :try_start_1
    const-string v0, "EsSyncAdapterService"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 147
    const-string v0, "EsSyncAdapterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " started."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_22
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mSyncName:Ljava/lang/String;

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mCanceled:Z

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mStartTimestamp:J

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    .line 154
    monitor-exit p0

    return-void

    .line 146
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pollAccountSyncRequest()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public declared-synchronized requestAccountSync(Landroid/os/Bundle;)Z
    .registers 5
    .parameter "extras"

    .prologue
    .line 118
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    .line 119
    .local v1, idle:Z
    if-nez p1, :cond_f

    .line 120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .end local p1
    .local v0, extras:Landroid/os/Bundle;
    move-object p1, v0

    .line 122
    .end local v0           #extras:Landroid/os/Bundle;
    .restart local p1
    :cond_f
    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 123
    monitor-exit p0

    return v1

    .line 118
    .end local v1           #idle:Z
    :catchall_16
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setFullSync(Z)V
    .registers 2
    .parameter "fullSync"

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mFullSync:Z

    .line 162
    return-void
.end method
