.class Lcom/google/android/picasasync/PhotoPrefetch$PrefetchAlbumCover;
.super Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;
.source "PhotoPrefetch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PhotoPrefetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefetchAlbumCover"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasasync/PhotoPrefetch;


# direct methods
.method public constructor <init>(Lcom/google/android/picasasync/PhotoPrefetch;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "accountName"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchAlbumCover;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    .line 327
    sget-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_ALBUM_COVER:Lcom/google/android/picasasync/SyncState;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;-><init>(Lcom/google/android/picasasync/PhotoPrefetch;Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V

    .line 328
    return-void
.end method


# virtual methods
.method public performSync(Landroid/content/SyncResult;)V
    .registers 5
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    const-string v1, "PrefetchAlbumCover"

    invoke-static {v1}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v0

    .line 335
    .local v0, statsId:I
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchAlbumCover;->performSyncCommon(Landroid/content/SyncResult;)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_f

    .line 338
    const-string v1, "picasa.prefetch.thumbnail"

    invoke-static {v0, v1}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    .line 340
    return-void

    .line 338
    :catchall_f
    move-exception v1

    const-string v2, "picasa.prefetch.thumbnail"

    invoke-static {v0, v2}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    throw v1
.end method

.method protected performSyncInternal(Lcom/google/android/picasasync/UserEntry;Lcom/google/android/picasasync/PrefetchHelper;Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 7
    .parameter "user"
    .parameter "helper"
    .parameter "db"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 349
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchAlbumCover;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    #getter for: Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/picasasync/PhotoPrefetch;->access$000(Lcom/google/android/picasasync/PhotoPrefetch;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_15

    .line 350
    const-string v1, "PhotoPrefetch"

    const-string v2, "no external storage, skip album cover prefetching"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_14
    :goto_14
    return v0

    .line 353
    :cond_15
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchAlbumCover;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchAlbumCover;->mSyncContext:Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    #calls: Lcom/google/android/picasasync/PhotoPrefetch;->cleanCache(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;)V
    invoke-static {v1, v2}, Lcom/google/android/picasasync/PhotoPrefetch;->access$100(Lcom/google/android/picasasync/PhotoPrefetch;Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;)V

    .line 354
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchAlbumCover;->mSyncContext:Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    invoke-virtual {p2, v1, p1}, Lcom/google/android/picasasync/PrefetchHelper;->syncAlbumCoversForUser(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Lcom/google/android/picasasync/UserEntry;)V

    .line 355
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchAlbumCover;->mSyncContext:Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    invoke-virtual {v1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x0

    goto :goto_14
.end method
