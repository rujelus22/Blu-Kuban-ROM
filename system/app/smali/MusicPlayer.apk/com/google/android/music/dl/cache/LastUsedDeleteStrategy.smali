.class public Lcom/google/android/music/dl/cache/LastUsedDeleteStrategy;
.super Ljava/lang/Object;
.source "LastUsedDeleteStrategy.java"

# interfaces
.implements Lcom/google/android/music/dl/cache/DeletionStrategy;


# instance fields
.field private final LOGV:Z

.field private final mContext:Landroid/content/Context;

.field protected final mFileSys:Lcom/google/android/music/dl/FileSystem;

.field protected final mStore:Lcom/google/android/music/store/Store;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/dl/FileSystem;Lcom/google/android/music/store/Store;)V
    .registers 5
    .parameter "context"
    .parameter "fileSystem"
    .parameter "store"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "MusicCache"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/dl/cache/LastUsedDeleteStrategy;->LOGV:Z

    .line 29
    iput-object p3, p0, Lcom/google/android/music/dl/cache/LastUsedDeleteStrategy;->mStore:Lcom/google/android/music/store/Store;

    .line 30
    iput-object p2, p0, Lcom/google/android/music/dl/cache/LastUsedDeleteStrategy;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    .line 31
    iput-object p1, p0, Lcom/google/android/music/dl/cache/LastUsedDeleteStrategy;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public createSpace(JLcom/google/android/music/dl/cache/CacheLocation;Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;)Z
    .registers 16
    .parameter "requiredSpace"
    .parameter "cacheLocation"
    .parameter "dontDelete"

    .prologue
    .line 36
    iget-object v8, p0, Lcom/google/android/music/dl/cache/LastUsedDeleteStrategy;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {p3}, Lcom/google/android/music/dl/cache/CacheLocation;->getSchemaValueForStorageType()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/music/store/Store;->getLeastRecentlyUsedCacheFiles(I)Landroid/database/Cursor;

    move-result-object v3

    .line 37
    .local v3, possibleDeletes:Landroid/database/Cursor;
    if-nez v3, :cond_e

    .line 38
    const/4 v8, 0x0

    .line 70
    :goto_d
    return v8

    .line 40
    :cond_e
    const-wide/16 v6, 0x0

    .line 42
    .local v6, recoveredSize:J
    :cond_10
    :goto_10
    cmp-long v8, v6, p1

    if-gez v8, :cond_70

    :try_start_14
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_70

    .line 43
    const/4 v8, 0x0

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 44
    .local v1, deleteId:J
    iget-object v8, p0, Lcom/google/android/music/dl/cache/LastUsedDeleteStrategy;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v8, v9, v10}, Lcom/google/android/music/dl/cache/CacheUtils;->resolveMusicPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 46
    .local v0, deleteFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 47
    iget-object v8, p0, Lcom/google/android/music/dl/cache/LastUsedDeleteStrategy;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    invoke-interface {v8, v0}, Lcom/google/android/music/dl/FileSystem;->getLength(Ljava/io/File;)J

    move-result-wide v4

    .line 48
    .local v4, possibleRecoverSize:J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_10

    .line 49
    iget-boolean v8, p0, Lcom/google/android/music/dl/cache/LastUsedDeleteStrategy;->LOGV:Z

    if-eqz v8, :cond_61

    .line 50
    const-string v8, "MusicCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "About to delete local file for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_61
    iget-object v8, p0, Lcom/google/android/music/dl/cache/LastUsedDeleteStrategy;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    invoke-interface {v8, v0}, Lcom/google/android/music/dl/FileSystem;->delete(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 55
    iget-object v8, p0, Lcom/google/android/music/dl/cache/LastUsedDeleteStrategy;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v8, v1, v2}, Lcom/google/android/music/store/Store;->removeFileLocation(J)V
    :try_end_6e
    .catchall {:try_start_14 .. :try_end_6e} :catchall_a1

    .line 56
    add-long/2addr v6, v4

    goto :goto_10

    .line 62
    .end local v0           #deleteFile:Ljava/io/File;
    .end local v1           #deleteId:J
    .end local v4           #possibleRecoverSize:J
    :cond_70
    cmp-long v8, v6, p1

    if-ltz v8, :cond_79

    .line 63
    const/4 v8, 0x1

    .line 70
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_d

    .line 66
    :cond_79
    :try_start_79
    const-string v8, "MusicCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not create enough space("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_79 .. :try_end_9b} :catchall_a1

    .line 68
    const/4 v8, 0x0

    .line 70
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_d

    :catchall_a1
    move-exception v8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v8
.end method
