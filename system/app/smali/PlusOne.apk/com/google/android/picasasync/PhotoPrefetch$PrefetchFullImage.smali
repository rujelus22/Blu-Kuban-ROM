.class Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;
.super Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;
.source "PhotoPrefetch.java"

# interfaces
.implements Lcom/google/android/picasasync/PrefetchHelper$PrefetchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PhotoPrefetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefetchFullImage"
.end annotation


# instance fields
.field private mCacheStats:Lcom/google/android/picasasync/PrefetchHelper$CacheStats;

.field final synthetic this$0:Lcom/google/android/picasasync/PhotoPrefetch;


# direct methods
.method public constructor <init>(Lcom/google/android/picasasync/PhotoPrefetch;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "accountName"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    .line 260
    sget-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_FULL_IMAGE:Lcom/google/android/picasasync/SyncState;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;-><init>(Lcom/google/android/picasasync/PhotoPrefetch;Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V

    .line 261
    return-void
.end method


# virtual methods
.method public isBackgroundSync()Z
    .registers 2

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public onDownloadFinish(JZ)V
    .registers 8
    .parameter "photoId"
    .parameter "success"

    .prologue
    .line 287
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->mCacheStats:Lcom/google/android/picasasync/PrefetchHelper$CacheStats;

    .line 288
    .local v1, stats:Lcom/google/android/picasasync/PrefetchHelper$CacheStats;
    iget v2, v1, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->pendingCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->pendingCount:I

    .line 289
    iget v2, v1, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->totalCount:I

    iget v3, v1, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->pendingCount:I

    sub-int v0, v2, v3

    .line 290
    .local v0, completeCount:I
    iget-object v2, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    iget v3, v1, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->totalCount:I

    invoke-virtual {v2, v0, v3}, Lcom/google/android/picasasync/PhotoPrefetch;->updateOngoingNotification(II)V

    .line 291
    return-void
.end method

.method protected performSyncInternal(Lcom/google/android/picasasync/UserEntry;Lcom/google/android/picasasync/PrefetchHelper;Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 8
    .parameter "user"
    .parameter "helper"
    .parameter "db"

    .prologue
    const/4 v1, 0x1

    .line 266
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->mSyncContext:Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    invoke-virtual {v0, p0}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->setCacheDownloadListener(Lcom/google/android/picasasync/PrefetchHelper$PrefetchListener;)V

    .line 267
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->mSyncContext:Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    #calls: Lcom/google/android/picasasync/PhotoPrefetch;->cleanCache(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;)V
    invoke-static {v0, v2}, Lcom/google/android/picasasync/PhotoPrefetch;->access$100(Lcom/google/android/picasasync/PhotoPrefetch;Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;)V

    .line 268
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/google/android/picasasync/PrefetchHelper;->getCacheStatistics(I)Lcom/google/android/picasasync/PrefetchHelper$CacheStats;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->mCacheStats:Lcom/google/android/picasasync/PrefetchHelper$CacheStats;

    .line 269
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->mCacheStats:Lcom/google/android/picasasync/PrefetchHelper$CacheStats;

    iget v0, v0, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->pendingCount:I

    if-nez v0, :cond_1b

    .line 281
    :goto_1a
    return v1

    .line 271
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->mSyncContext:Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/picasasync/PrefetchHelper;->syncFullImagesForUser(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Lcom/google/android/picasasync/UserEntry;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_4b

    .line 274
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    #getter for: Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/picasasync/PhotoPrefetch;->access$000(Lcom/google/android/picasasync/PhotoPrefetch;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 278
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->mCacheStats:Lcom/google/android/picasasync/PrefetchHelper$CacheStats;

    iget v0, v0, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->pendingCount:I

    if-nez v0, :cond_40

    .line 279
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->mCacheStats:Lcom/google/android/picasasync/PrefetchHelper$CacheStats;

    iget v2, v2, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->totalCount:I

    invoke-virtual {v0, v2}, Lcom/google/android/picasasync/PhotoPrefetch;->showPrefetchCompleteNotification(I)V

    .line 281
    :cond_40
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->mSyncContext:Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z

    move-result v0

    if-nez v0, :cond_5f

    move v0, v1

    :goto_49
    move v1, v0

    goto :goto_1a

    .line 274
    :catchall_4b
    move-exception v0

    move-object v2, v0

    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    #getter for: Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/picasasync/PhotoPrefetch;->access$000(Lcom/google/android/picasasync/PhotoPrefetch;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    throw v2

    .line 281
    :cond_5f
    const/4 v0, 0x0

    goto :goto_49
.end method
