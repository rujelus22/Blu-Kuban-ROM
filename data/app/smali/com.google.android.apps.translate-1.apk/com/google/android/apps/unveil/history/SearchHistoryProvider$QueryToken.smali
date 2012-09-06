.class public Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;
.super Ljava/lang/Object;
.source "SearchHistoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/history/SearchHistoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryToken"
.end annotation


# static fields
.field static final DEFAULT_BATCH_COUNT:I = 0xa


# instance fields
.field private approximateTotalCount:I

.field private batchSize:I

.field private hasRequestedMore:Z

.field public lastContinuationToken:Ljava/lang/String;

.field protected listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryListener;

.field public nextContinuationToken:Ljava/lang/String;

.field private final querySpec:Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;

.field private recycled:Z

.field protected final results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/unveil/history/SearchHistoryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryListener;)V
    .registers 7
    .parameter "querySpec"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->lastContinuationToken:Ljava/lang/String;

    .line 223
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->nextContinuationToken:Ljava/lang/String;

    .line 228
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->batchSize:I

    .line 257
    invoke-static {}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->access$300()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Creating a new queryToken."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->results:Ljava/util/ArrayList;

    .line 259
    iput-object p1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->querySpec:Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;

    .line 260
    iput-boolean v3, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->hasRequestedMore:Z

    .line 262
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->approximateTotalCount:I

    .line 263
    iput-object p2, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryListener;

    .line 264
    iput-boolean v3, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->recycled:Z

    .line 265
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->hasRequestedMore:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->hasRequestedMore:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->recycled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 221
    iput p1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->approximateTotalCount:I

    return p1
.end method


# virtual methods
.method public getApproximateTotalCount()I
    .registers 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->hasCommunicatedWithServer()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->approximateTotalCount:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getBatchSize()I
    .registers 2

    .prologue
    .line 334
    iget v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->batchSize:I

    return v0
.end method

.method public getQuerySpec()Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->querySpec:Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;

    return-object v0
.end method

.method public declared-synchronized getResults()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/history/SearchHistoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->results:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasCommunicatedWithServer()Z
    .registers 3

    .prologue
    .line 311
    iget v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->approximateTotalCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public declared-synchronized hasMore()Z
    .registers 3

    .prologue
    .line 295
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->hasCommunicatedWithServer()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->lastContinuationToken:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->lastContinuationToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->nextContinuationToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1a

    move-result v0

    if-nez v0, :cond_18

    :cond_15
    const/4 v0, 0x1

    :goto_16
    monitor-exit p0

    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_16

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isQueryForAllItems()Z
    .registers 2

    .prologue
    .line 327
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->querySpec:Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;->isQueryForAllItems()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recycle()V
    .registers 2

    .prologue
    .line 318
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->recycled:Z

    .line 319
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryListener;
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    .line 321
    monitor-exit p0

    return-void

    .line 318
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBatchSize(I)V
    .registers 2
    .parameter "batchSize"

    .prologue
    .line 341
    iput p1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->batchSize:I

    .line 342
    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 269
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryString("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->querySpec:Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;->queryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hasRequestedMore("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->hasRequestedMore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "totalCount("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->approximateTotalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recycled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->recycled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_55
    .catchall {:try_start_1 .. :try_end_55} :catchall_58

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0
.end method
