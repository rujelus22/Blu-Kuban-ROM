.class public Lcom/cooliris/media/DiskCache;
.super Ljava/lang/Object;
.source "DiskCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/DiskCache$Record;
    }
.end annotation


# instance fields
.field protected final mCacheDirectoryPath:Ljava/lang/String;

.field protected final mChunkFiles:Lcom/cooliris/media/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cooliris/media/LongSparseArray",
            "<",
            "Ljava/io/RandomAccessFile;",
            ">;"
        }
    .end annotation
.end field

.field protected mIndexMap:Lcom/cooliris/media/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cooliris/media/LongSparseArray",
            "<",
            "Lcom/cooliris/media/DiskCache$Record;",
            ">;"
        }
    .end annotation
.end field

.field protected mNumInsertions:I

.field protected mTailChunk:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 7
    .parameter "cacheDirectoryName"

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v2, Lcom/cooliris/media/LongSparseArray;

    invoke-direct {v2}, Lcom/cooliris/media/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/cooliris/media/DiskCache;->mChunkFiles:Lcom/cooliris/media/LongSparseArray;

    .line 56
    iput v3, p0, Lcom/cooliris/media/DiskCache;->mTailChunk:I

    .line 58
    iput v3, p0, Lcom/cooliris/media/DiskCache;->mNumInsertions:I

    .line 61
    invoke-static {p1}, Lcom/cooliris/cache/CacheService;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, cacheDirectoryPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, cacheDirectory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 66
    const-string v2, "DiskCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create cache directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_3c
    iput-object v1, p0, Lcom/cooliris/media/DiskCache;->mCacheDirectoryPath:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/cooliris/media/DiskCache;->loadIndex()V

    .line 70
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/cooliris/media/DiskCache;->writeIndex()V

    .line 231
    invoke-virtual {p0}, Lcom/cooliris/media/DiskCache;->shutdown()V

    .line 232
    return-void
.end method

.method public delete(J)V
    .registers 5
    .parameter "key"

    .prologue
    .line 199
    iget-object v1, p0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    monitor-enter v1

    .line 200
    :try_start_3
    iget-object v0, p0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Lcom/cooliris/media/LongSparseArray;->remove(J)V

    .line 201
    monitor-exit v1

    .line 202
    return-void

    .line 201
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public deleteAll()V
    .registers 11

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/cooliris/media/DiskCache;->shutdown()V

    .line 210
    :try_start_3
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/cooliris/media/DiskCache;->mCacheDirectoryPath:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, cacheDirectory:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, cacheFiles:[Ljava/lang/String;
    if-nez v3, :cond_11

    .line 220
    .end local v1           #cacheDirectory:Ljava/io/File;
    .end local v3           #cacheFiles:[Ljava/lang/String;
    :cond_10
    :goto_10
    return-void

    .line 214
    .restart local v1       #cacheDirectory:Ljava/io/File;
    .restart local v3       #cacheFiles:[Ljava/lang/String;
    :cond_11
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_14
    if-ge v5, v6, :cond_10

    aget-object v2, v0, v5

    .line 215
    .local v2, cacheFile:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_20} :catch_23

    .line 214
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 217
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #cacheDirectory:Ljava/io/File;
    .end local v2           #cacheFile:Ljava/lang/String;
    .end local v3           #cacheFiles:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catch_23
    move-exception v4

    .line 218
    .local v4, e:Ljava/lang/Exception;
    const-string v7, "DiskCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delete All error ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method protected finalize()V
    .registers 2

    .prologue
    .line 75
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_7

    .line 80
    :goto_3
    invoke-virtual {p0}, Lcom/cooliris/media/DiskCache;->shutdown()V

    .line 81
    return-void

    .line 76
    :catch_7
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 223
    iget v0, p0, Lcom/cooliris/media/DiskCache;->mNumInsertions:I

    if-eqz v0, :cond_a

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/DiskCache;->mNumInsertions:I

    .line 225
    invoke-virtual {p0}, Lcom/cooliris/media/DiskCache;->writeIndex()V

    .line 227
    :cond_a
    return-void
.end method

.method public get(JJ)[B
    .registers 15
    .parameter "key"
    .parameter "timestamp"

    .prologue
    const/4 v6, 0x0

    .line 85
    const/4 v4, 0x0

    .line 88
    .local v4, record:Lcom/cooliris/media/DiskCache$Record;
    :try_start_2
    iget-object v7, p0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    monitor-enter v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_47

    .line 89
    :try_start_5
    iget-object v5, p0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    invoke-virtual {v5, p1, p2}, Lcom/cooliris/media/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/cooliris/media/DiskCache$Record;

    move-object v4, v0

    .line 90
    monitor-exit v7
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_44

    .line 91
    if-eqz v4, :cond_4b

    .line 93
    :try_start_12
    iget-wide v7, v4, Lcom/cooliris/media/DiskCache$Record;->timestamp:J

    cmp-long v5, v7, p3

    if-gez v5, :cond_4d

    .line 94
    const-string v5, "DiskCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File has been updated to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " since the last time "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v4, Lcom/cooliris/media/DiskCache$Record;->timestamp:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " stored in cache."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_42} :catch_47

    move-object v2, v6

    .line 113
    :goto_43
    return-object v2

    .line 90
    :catchall_44
    move-exception v5

    :try_start_45
    monitor-exit v7
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw v5
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_47} :catch_47

    .line 110
    :catch_47
    move-exception v3

    .line 111
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3           #e:Ljava/lang/Exception;
    :cond_4b
    :goto_4b
    move-object v2, v6

    .line 113
    goto :goto_43

    .line 99
    :cond_4d
    :try_start_4d
    iget v5, v4, Lcom/cooliris/media/DiskCache$Record;->chunk:I

    invoke-virtual {p0, v5}, Lcom/cooliris/media/DiskCache;->getChunkFile(I)Ljava/io/RandomAccessFile;

    move-result-object v1

    .line 100
    .local v1, chunkFile:Ljava/io/RandomAccessFile;
    if-eqz v1, :cond_4b

    .line 101
    iget v5, v4, Lcom/cooliris/media/DiskCache$Record;->size:I

    new-array v2, v5, [B

    .line 102
    .local v2, data:[B
    iget v5, v4, Lcom/cooliris/media/DiskCache$Record;->offset:I

    int-to-long v7, v5

    invoke-virtual {v1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 103
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_62} :catch_63

    goto :goto_43

    .line 106
    .end local v1           #chunkFile:Ljava/io/RandomAccessFile;
    .end local v2           #data:[B
    :catch_63
    move-exception v3

    .line 107
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_64
    const-string v5, "DiskCache"

    const-string v7, "Unable to read from chunk file"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6b} :catch_47

    goto :goto_4b
.end method

.method protected getChunkFile(I)Ljava/io/RandomAccessFile;
    .registers 12
    .parameter "chunk"

    .prologue
    .line 386
    const/4 v2, 0x0

    .line 387
    .local v2, chunkFile:Ljava/io/RandomAccessFile;
    iget-object v7, p0, Lcom/cooliris/media/DiskCache;->mChunkFiles:Lcom/cooliris/media/LongSparseArray;

    monitor-enter v7

    .line 389
    :try_start_4
    iget-object v6, p0, Lcom/cooliris/media/DiskCache;->mChunkFiles:Lcom/cooliris/media/LongSparseArray;

    int-to-long v8, p1

    invoke-virtual {v6, v8, v9}, Lcom/cooliris/media/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/io/RandomAccessFile;

    move-object v2, v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_49
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_3e

    move-object v3, v2

    .line 394
    .end local v2           #chunkFile:Ljava/io/RandomAccessFile;
    .local v3, chunkFile:Ljava/io/RandomAccessFile;
    :goto_10
    :try_start_10
    monitor-exit v7
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_97

    .line 395
    if-nez v3, :cond_9a

    .line 396
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/cooliris/media/DiskCache;->mCacheDirectoryPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "chunk_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 398
    .local v4, chunkFilePath:Ljava/lang/String;
    :try_start_2c
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v2, v4, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_33} :catch_4c

    .line 406
    .end local v3           #chunkFile:Ljava/io/RandomAccessFile;
    .restart local v2       #chunkFile:Ljava/io/RandomAccessFile;
    :goto_33
    iget-object v7, p0, Lcom/cooliris/media/DiskCache;->mChunkFiles:Lcom/cooliris/media/LongSparseArray;

    monitor-enter v7

    .line 407
    :try_start_36
    iget-object v6, p0, Lcom/cooliris/media/DiskCache;->mChunkFiles:Lcom/cooliris/media/LongSparseArray;

    int-to-long v8, p1

    invoke-virtual {v6, v8, v9, v2}, Lcom/cooliris/media/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 408
    monitor-exit v7
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_94

    .line 410
    .end local v4           #chunkFilePath:Ljava/lang/String;
    :goto_3d
    return-object v2

    .line 390
    :catch_3e
    move-exception v5

    .line 391
    .local v5, e:Ljava/lang/Exception;
    :try_start_3f
    const-string v6, "DiskCache"

    const-string v8, "ChunkFiles get error!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v2, 0x0

    move-object v3, v2

    .end local v2           #chunkFile:Ljava/io/RandomAccessFile;
    .restart local v3       #chunkFile:Ljava/io/RandomAccessFile;
    goto :goto_10

    .line 394
    .end local v3           #chunkFile:Ljava/io/RandomAccessFile;
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v2       #chunkFile:Ljava/io/RandomAccessFile;
    :catchall_49
    move-exception v6

    :goto_4a
    monitor-exit v7
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_49

    throw v6

    .line 399
    .end local v2           #chunkFile:Ljava/io/RandomAccessFile;
    .restart local v3       #chunkFile:Ljava/io/RandomAccessFile;
    .restart local v4       #chunkFilePath:Ljava/lang/String;
    :catch_4c
    move-exception v5

    .line 400
    .local v5, e:Ljava/io/FileNotFoundException;
    const-string v6, "DiskCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create or open the chunk file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/cooliris/media/DiskCache;->mCacheDirectoryPath:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .local v1, cacheDirectory:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_92

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_92

    .line 403
    const-string v6, "DiskCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create cache directory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/cooliris/media/DiskCache;->mCacheDirectoryPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    move-object v2, v3

    .end local v3           #chunkFile:Ljava/io/RandomAccessFile;
    .restart local v2       #chunkFile:Ljava/io/RandomAccessFile;
    goto :goto_33

    .line 408
    .end local v1           #cacheDirectory:Ljava/io/File;
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :catchall_94
    move-exception v6

    :try_start_95
    monitor-exit v7
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v6

    .line 394
    .end local v2           #chunkFile:Ljava/io/RandomAccessFile;
    .end local v4           #chunkFilePath:Ljava/lang/String;
    .restart local v3       #chunkFile:Ljava/io/RandomAccessFile;
    :catchall_97
    move-exception v6

    move-object v2, v3

    .end local v3           #chunkFile:Ljava/io/RandomAccessFile;
    .restart local v2       #chunkFile:Ljava/io/RandomAccessFile;
    goto :goto_4a

    .end local v2           #chunkFile:Ljava/io/RandomAccessFile;
    .restart local v3       #chunkFile:Ljava/io/RandomAccessFile;
    :cond_9a
    move-object v2, v3

    .end local v3           #chunkFile:Ljava/io/RandomAccessFile;
    .restart local v2       #chunkFile:Ljava/io/RandomAccessFile;
    goto :goto_3d
.end method

.method protected getIndexFilePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cooliris/media/DiskCache;->mCacheDirectoryPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDataAvailable(JJ)Z
    .registers 13
    .parameter "key"
    .parameter "timestamp"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, record:Lcom/cooliris/media/DiskCache$Record;
    iget-object v4, p0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    monitor-enter v4

    .line 119
    :try_start_7
    iget-object v2, p0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Lcom/cooliris/media/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/cooliris/media/DiskCache$Record;

    move-object v1, v0

    .line 120
    monitor-exit v4

    .line 121
    if-nez v1, :cond_19

    move v2, v3

    .line 131
    :goto_15
    return v2

    .line 120
    :catchall_16
    move-exception v2

    monitor-exit v4
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v2

    .line 124
    :cond_19
    cmp-long v2, p3, v6

    if-nez v2, :cond_25

    iget-wide v4, v1, Lcom/cooliris/media/DiskCache$Record;->timestamp:J

    cmp-long v2, v4, p3

    if-gez v2, :cond_25

    move v2, v3

    .line 125
    goto :goto_15

    .line 126
    :cond_25
    cmp-long v2, p3, v6

    if-eqz v2, :cond_31

    iget-wide v4, v1, Lcom/cooliris/media/DiskCache$Record;->timestamp:J

    cmp-long v2, v4, p3

    if-eqz v2, :cond_31

    move v2, v3

    .line 127
    goto :goto_15

    .line 129
    :cond_31
    iget v2, v1, Lcom/cooliris/media/DiskCache$Record;->size:I

    if-nez v2, :cond_37

    move v2, v3

    .line 130
    goto :goto_15

    .line 131
    :cond_37
    const/4 v2, 0x1

    goto :goto_15
.end method

.method protected loadIndex()V
    .registers 28

    .prologue
    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/DiskCache;->getIndexFilePath()Ljava/lang/String;

    move-result-object v18

    .line 261
    .local v18, indexFilePath:Ljava/lang/String;
    const/4 v15, 0x0

    .line 262
    .local v15, fileInput:Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 263
    .local v10, bufferedInput:Ljava/io/BufferedInputStream;
    const/4 v12, 0x0

    .line 266
    .local v12, dataInput:Ljava/io/DataInputStream;
    :try_start_7
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_16a
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_10} :catch_1a6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_132

    .line 267
    .end local v15           #fileInput:Ljava/io/FileInputStream;
    .local v16, fileInput:Ljava/io/FileInputStream;
    :try_start_10
    new-instance v11, Ljava/io/BufferedInputStream;

    const/16 v3, 0x400

    move-object/from16 v0, v16

    invoke-direct {v11, v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_188
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_19} :catch_1a9
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_19} :catch_197

    .line 268
    .end local v10           #bufferedInput:Ljava/io/BufferedInputStream;
    .local v11, bufferedInput:Ljava/io/BufferedInputStream;
    :try_start_19
    new-instance v13, Ljava/io/DataInputStream;

    invoke-direct {v13, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_18c
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_1e} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_19b

    .line 271
    .end local v12           #dataInput:Ljava/io/DataInputStream;
    .local v13, dataInput:Ljava/io/DataInputStream;
    :try_start_1e
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v21

    .line 272
    .local v21, magic:I
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v24

    .line 273
    .local v24, version:I
    const/16 v23, 0x1

    .line 274
    .local v23, valid:Z
    const v3, 0xcafe

    move/from16 v0, v21

    if-eq v0, v3, :cond_6a

    .line 275
    const-string v3, "DiskCache"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Index file appears to be corrupt ("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " != "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const v26, 0xcafe

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "), "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/16 v23, 0x0

    .line 279
    :cond_6a
    if-eqz v23, :cond_97

    const/4 v3, 0x2

    move/from16 v0, v24

    if-eq v0, v3, :cond_97

    .line 281
    const-string v3, "DiskCache"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Index file version "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " not supported"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/16 v23, 0x0

    .line 284
    :cond_97
    if-eqz v23, :cond_a1

    .line 285
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/cooliris/media/DiskCache;->mTailChunk:I

    .line 289
    :cond_a1
    if-eqz v23, :cond_ef

    .line 291
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    .line 292
    .local v22, numEntries:I
    new-instance v3, Lcom/cooliris/media/LongSparseArray;

    move/from16 v0, v22

    invoke-direct {v3, v0}, Lcom/cooliris/media/LongSparseArray;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v25, v0

    monitor-enter v25
    :try_end_b9
    .catchall {:try_start_1e .. :try_end_b9} :catchall_191
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_b9} :catch_114
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_b9} :catch_1a0

    .line 294
    const/16 v17, 0x0

    .local v17, i:I
    :goto_bb
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_ee

    .line 295
    :try_start_c1
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v19

    .line 296
    .local v19, key:J
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    .line 297
    .local v4, chunk:I
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 298
    .local v5, offset:I
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 299
    .local v6, size:I
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 300
    .local v7, sizeOnDisk:I
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 301
    .local v8, timestamp:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v26, v0

    new-instance v3, Lcom/cooliris/media/DiskCache$Record;

    invoke-direct/range {v3 .. v9}, Lcom/cooliris/media/DiskCache$Record;-><init>(IIIIJ)V

    move-object/from16 v0, v26

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/cooliris/media/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 294
    add-int/lit8 v17, v17, 0x1

    goto :goto_bb

    .line 304
    .end local v4           #chunk:I
    .end local v5           #offset:I
    .end local v6           #size:I
    .end local v7           #sizeOnDisk:I
    .end local v8           #timestamp:J
    .end local v19           #key:J
    :cond_ee
    monitor-exit v25
    :try_end_ef
    .catchall {:try_start_c1 .. :try_end_ef} :catchall_111

    .line 307
    .end local v17           #i:I
    .end local v22           #numEntries:I
    :cond_ef
    if-nez v23, :cond_f4

    .line 308
    :try_start_f1
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/DiskCache;->deleteAll()V
    :try_end_f4
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_191
    .catch Ljava/io/FileNotFoundException; {:try_start_f1 .. :try_end_f4} :catch_114
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_1a0

    .line 316
    :cond_f4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    if-nez v3, :cond_103

    .line 317
    new-instance v3, Lcom/cooliris/media/LongSparseArray;

    invoke-direct {v3}, Lcom/cooliris/media/LongSparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    .line 320
    :cond_103
    invoke-static {v13}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 321
    invoke-static {v11}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 322
    invoke-static/range {v16 .. v16}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v12, v13

    .end local v13           #dataInput:Ljava/io/DataInputStream;
    .restart local v12       #dataInput:Ljava/io/DataInputStream;
    move-object v10, v11

    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v10       #bufferedInput:Ljava/io/BufferedInputStream;
    move-object/from16 v15, v16

    .line 324
    .end local v16           #fileInput:Ljava/io/FileInputStream;
    .end local v21           #magic:I
    .end local v23           #valid:Z
    .end local v24           #version:I
    .restart local v15       #fileInput:Ljava/io/FileInputStream;
    :goto_110
    return-void

    .line 304
    .end local v10           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v12           #dataInput:Ljava/io/DataInputStream;
    .end local v15           #fileInput:Ljava/io/FileInputStream;
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v13       #dataInput:Ljava/io/DataInputStream;
    .restart local v16       #fileInput:Ljava/io/FileInputStream;
    .restart local v17       #i:I
    .restart local v21       #magic:I
    .restart local v22       #numEntries:I
    .restart local v23       #valid:Z
    .restart local v24       #version:I
    :catchall_111
    move-exception v3

    :try_start_112
    monitor-exit v25
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_111

    :try_start_113
    throw v3
    :try_end_114
    .catchall {:try_start_113 .. :try_end_114} :catchall_191
    .catch Ljava/io/FileNotFoundException; {:try_start_113 .. :try_end_114} :catch_114
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_114} :catch_1a0

    .line 311
    .end local v17           #i:I
    .end local v21           #magic:I
    .end local v22           #numEntries:I
    .end local v23           #valid:Z
    .end local v24           #version:I
    :catch_114
    move-exception v3

    move-object v12, v13

    .end local v13           #dataInput:Ljava/io/DataInputStream;
    .restart local v12       #dataInput:Ljava/io/DataInputStream;
    move-object v10, v11

    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v10       #bufferedInput:Ljava/io/BufferedInputStream;
    move-object/from16 v15, v16

    .line 316
    .end local v16           #fileInput:Ljava/io/FileInputStream;
    .restart local v15       #fileInput:Ljava/io/FileInputStream;
    :goto_119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    if-nez v3, :cond_128

    .line 317
    new-instance v3, Lcom/cooliris/media/LongSparseArray;

    invoke-direct {v3}, Lcom/cooliris/media/LongSparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    .line 320
    :cond_128
    invoke-static {v12}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 321
    invoke-static {v10}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 322
    invoke-static {v15}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_110

    .line 313
    :catch_132
    move-exception v14

    .line 314
    .local v14, e:Ljava/io/IOException;
    :goto_133
    :try_start_133
    const-string v3, "DiskCache"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unable to read the index file "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_151
    .catchall {:try_start_133 .. :try_end_151} :catchall_16a

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    if-nez v3, :cond_160

    .line 317
    new-instance v3, Lcom/cooliris/media/LongSparseArray;

    invoke-direct {v3}, Lcom/cooliris/media/LongSparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    .line 320
    :cond_160
    invoke-static {v12}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 321
    invoke-static {v10}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 322
    invoke-static {v15}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_110

    .line 316
    .end local v14           #e:Ljava/io/IOException;
    :catchall_16a
    move-exception v3

    :goto_16b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v25, v0

    if-nez v25, :cond_17e

    .line 317
    new-instance v25, Lcom/cooliris/media/LongSparseArray;

    invoke-direct/range {v25 .. v25}, Lcom/cooliris/media/LongSparseArray;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    .line 320
    :cond_17e
    invoke-static {v12}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 321
    invoke-static {v10}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 322
    invoke-static {v15}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    .line 316
    .end local v15           #fileInput:Ljava/io/FileInputStream;
    .restart local v16       #fileInput:Ljava/io/FileInputStream;
    :catchall_188
    move-exception v3

    move-object/from16 v15, v16

    .end local v16           #fileInput:Ljava/io/FileInputStream;
    .restart local v15       #fileInput:Ljava/io/FileInputStream;
    goto :goto_16b

    .end local v10           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v15           #fileInput:Ljava/io/FileInputStream;
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v16       #fileInput:Ljava/io/FileInputStream;
    :catchall_18c
    move-exception v3

    move-object v10, v11

    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v10       #bufferedInput:Ljava/io/BufferedInputStream;
    move-object/from16 v15, v16

    .end local v16           #fileInput:Ljava/io/FileInputStream;
    .restart local v15       #fileInput:Ljava/io/FileInputStream;
    goto :goto_16b

    .end local v10           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v12           #dataInput:Ljava/io/DataInputStream;
    .end local v15           #fileInput:Ljava/io/FileInputStream;
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v13       #dataInput:Ljava/io/DataInputStream;
    .restart local v16       #fileInput:Ljava/io/FileInputStream;
    :catchall_191
    move-exception v3

    move-object v12, v13

    .end local v13           #dataInput:Ljava/io/DataInputStream;
    .restart local v12       #dataInput:Ljava/io/DataInputStream;
    move-object v10, v11

    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v10       #bufferedInput:Ljava/io/BufferedInputStream;
    move-object/from16 v15, v16

    .end local v16           #fileInput:Ljava/io/FileInputStream;
    .restart local v15       #fileInput:Ljava/io/FileInputStream;
    goto :goto_16b

    .line 313
    .end local v15           #fileInput:Ljava/io/FileInputStream;
    .restart local v16       #fileInput:Ljava/io/FileInputStream;
    :catch_197
    move-exception v14

    move-object/from16 v15, v16

    .end local v16           #fileInput:Ljava/io/FileInputStream;
    .restart local v15       #fileInput:Ljava/io/FileInputStream;
    goto :goto_133

    .end local v10           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v15           #fileInput:Ljava/io/FileInputStream;
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v16       #fileInput:Ljava/io/FileInputStream;
    :catch_19b
    move-exception v14

    move-object v10, v11

    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v10       #bufferedInput:Ljava/io/BufferedInputStream;
    move-object/from16 v15, v16

    .end local v16           #fileInput:Ljava/io/FileInputStream;
    .restart local v15       #fileInput:Ljava/io/FileInputStream;
    goto :goto_133

    .end local v10           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v12           #dataInput:Ljava/io/DataInputStream;
    .end local v15           #fileInput:Ljava/io/FileInputStream;
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v13       #dataInput:Ljava/io/DataInputStream;
    .restart local v16       #fileInput:Ljava/io/FileInputStream;
    :catch_1a0
    move-exception v14

    move-object v12, v13

    .end local v13           #dataInput:Ljava/io/DataInputStream;
    .restart local v12       #dataInput:Ljava/io/DataInputStream;
    move-object v10, v11

    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v10       #bufferedInput:Ljava/io/BufferedInputStream;
    move-object/from16 v15, v16

    .end local v16           #fileInput:Ljava/io/FileInputStream;
    .restart local v15       #fileInput:Ljava/io/FileInputStream;
    goto :goto_133

    .line 311
    :catch_1a6
    move-exception v3

    goto/16 :goto_119

    .end local v15           #fileInput:Ljava/io/FileInputStream;
    .restart local v16       #fileInput:Ljava/io/FileInputStream;
    :catch_1a9
    move-exception v3

    move-object/from16 v15, v16

    .end local v16           #fileInput:Ljava/io/FileInputStream;
    .restart local v15       #fileInput:Ljava/io/FileInputStream;
    goto/16 :goto_119

    .end local v10           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v15           #fileInput:Ljava/io/FileInputStream;
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v16       #fileInput:Ljava/io/FileInputStream;
    :catch_1ae
    move-exception v3

    move-object v10, v11

    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v10       #bufferedInput:Ljava/io/BufferedInputStream;
    move-object/from16 v15, v16

    .end local v16           #fileInput:Ljava/io/FileInputStream;
    .restart local v15       #fileInput:Ljava/io/FileInputStream;
    goto/16 :goto_119
.end method

.method public put(J[BJ)V
    .registers 21
    .parameter "key"
    .parameter "data"
    .parameter "timestamp"

    .prologue
    .line 136
    const/4 v13, 0x0

    .line 137
    .local v13, record:Lcom/cooliris/media/DiskCache$Record;
    iget-object v4, p0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    monitor-enter v4

    .line 138
    :try_start_4
    iget-object v2, p0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/cooliris/media/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/cooliris/media/DiskCache$Record;

    move-object v13, v0

    .line 139
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_56

    .line 140
    if-eqz v13, :cond_64

    move-object/from16 v0, p3

    array-length v2, v0

    iget v4, v13, Lcom/cooliris/media/DiskCache$Record;->sizeOnDisk:I

    if-gt v2, v4, :cond_64

    .line 142
    iget v3, v13, Lcom/cooliris/media/DiskCache$Record;->chunk:I

    .line 144
    .local v3, currentChunk:I
    :try_start_1c
    iget v2, v13, Lcom/cooliris/media/DiskCache$Record;->chunk:I

    invoke-virtual {p0, v2}, Lcom/cooliris/media/DiskCache;->getChunkFile(I)Ljava/io/RandomAccessFile;

    move-result-object v11

    .line 145
    .local v11, chunkFile:Ljava/io/RandomAccessFile;
    if-eqz v11, :cond_64

    .line 146
    iget v2, v13, Lcom/cooliris/media/DiskCache$Record;->offset:I

    int-to-long v7, v2

    invoke-virtual {v11, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 147
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 148
    iget-object v9, p0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    monitor-enter v9
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_32} :catch_5c

    .line 149
    :try_start_32
    iget-object v10, p0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    new-instance v2, Lcom/cooliris/media/DiskCache$Record;

    iget v4, v13, Lcom/cooliris/media/DiskCache$Record;->offset:I

    move-object/from16 v0, p3

    array-length v5, v0

    iget v6, v13, Lcom/cooliris/media/DiskCache$Record;->sizeOnDisk:I

    move-wide/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/cooliris/media/DiskCache$Record;-><init>(IIIIJ)V

    move-wide/from16 v0, p1

    invoke-virtual {v10, v0, v1, v2}, Lcom/cooliris/media/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 151
    monitor-exit v9
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_59

    .line 152
    :try_start_48
    iget v2, p0, Lcom/cooliris/media/DiskCache;->mNumInsertions:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/cooliris/media/DiskCache;->mNumInsertions:I

    const/16 v4, 0x20

    if-ne v2, v4, :cond_55

    .line 158
    invoke-virtual {p0}, Lcom/cooliris/media/DiskCache;->flush()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_55} :catch_5c

    .line 196
    .end local v3           #currentChunk:I
    :cond_55
    :goto_55
    return-void

    .line 139
    .end local v11           #chunkFile:Ljava/io/RandomAccessFile;
    :catchall_56
    move-exception v2

    :try_start_57
    monitor-exit v4
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v2

    .line 151
    .restart local v3       #currentChunk:I
    .restart local v11       #chunkFile:Ljava/io/RandomAccessFile;
    :catchall_59
    move-exception v2

    :try_start_5a
    monitor-exit v9
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    :try_start_5b
    throw v2
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5c} :catch_5c

    .line 162
    .end local v11           #chunkFile:Ljava/io/RandomAccessFile;
    :catch_5c
    move-exception v12

    .line 163
    .local v12, e:Ljava/lang/Exception;
    const-string v2, "DiskCache"

    const-string v4, "Unable to read from chunk file"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v3           #currentChunk:I
    .end local v12           #e:Ljava/lang/Exception;
    :cond_64
    iget v5, p0, Lcom/cooliris/media/DiskCache;->mTailChunk:I

    .line 168
    .local v5, chunk:I
    invoke-virtual {p0, v5}, Lcom/cooliris/media/DiskCache;->getChunkFile(I)Ljava/io/RandomAccessFile;

    move-result-object v11

    .line 169
    .restart local v11       #chunkFile:Ljava/io/RandomAccessFile;
    if-eqz v11, :cond_ba

    .line 171
    :try_start_6c
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v6, v7

    .line 172
    .local v6, offset:I
    int-to-long v7, v6

    invoke-virtual {v11, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 173
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 174
    iget-object v14, p0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    monitor-enter v14
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_7d} :catch_ae

    .line 175
    :try_start_7d
    iget-object v2, p0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    new-instance v4, Lcom/cooliris/media/DiskCache$Record;

    move-object/from16 v0, p3

    array-length v7, v0

    move-object/from16 v0, p3

    array-length v8, v0

    move-wide/from16 v9, p4

    invoke-direct/range {v4 .. v10}, Lcom/cooliris/media/DiskCache$Record;-><init>(IIIIJ)V

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v4}, Lcom/cooliris/media/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 177
    monitor-exit v14
    :try_end_92
    .catchall {:try_start_7d .. :try_end_92} :catchall_b7

    .line 178
    :try_start_92
    move-object/from16 v0, p3

    array-length v2, v0

    add-int/2addr v2, v6

    const/high16 v4, 0x20

    if-le v2, v4, :cond_a0

    .line 179
    iget v2, p0, Lcom/cooliris/media/DiskCache;->mTailChunk:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/cooliris/media/DiskCache;->mTailChunk:I

    .line 182
    :cond_a0
    iget v2, p0, Lcom/cooliris/media/DiskCache;->mNumInsertions:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/cooliris/media/DiskCache;->mNumInsertions:I

    const/16 v4, 0x20

    if-ne v2, v4, :cond_55

    .line 188
    invoke-virtual {p0}, Lcom/cooliris/media/DiskCache;->flush()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_ad} :catch_ae

    goto :goto_55

    .line 190
    .end local v6           #offset:I
    :catch_ae
    move-exception v12

    .line 191
    .local v12, e:Ljava/io/IOException;
    const-string v2, "DiskCache"

    const-string v4, "Unable to write new entry to chunk file"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 177
    .end local v12           #e:Ljava/io/IOException;
    .restart local v6       #offset:I
    :catchall_b7
    move-exception v2

    :try_start_b8
    monitor-exit v14
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    :try_start_b9
    throw v2
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_ba} :catch_ae

    .line 194
    .end local v6           #offset:I
    :cond_ba
    const-string v2, "DiskCache"

    const-string v4, "getChunkFile() returned null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55
.end method

.method protected shutdown()V
    .registers 7

    .prologue
    .line 235
    iget-object v4, p0, Lcom/cooliris/media/DiskCache;->mChunkFiles:Lcom/cooliris/media/LongSparseArray;

    monitor-enter v4

    .line 236
    const/4 v1, 0x0

    .local v1, i:I
    :try_start_4
    iget-object v3, p0, Lcom/cooliris/media/DiskCache;->mChunkFiles:Lcom/cooliris/media/LongSparseArray;

    invoke-virtual {v3}, Lcom/cooliris/media/LongSparseArray;->size()I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_23

    move-result v2

    .local v2, size:I
    :goto_a
    if-ge v1, v2, :cond_26

    .line 238
    :try_start_c
    iget-object v3, p0, Lcom/cooliris/media/DiskCache;->mChunkFiles:Lcom/cooliris/media/LongSparseArray;

    invoke-virtual {v3, v1}, Lcom/cooliris/media/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_23
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_1a

    .line 236
    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 239
    :catch_1a
    move-exception v0

    .line 240
    .local v0, e:Ljava/lang/Exception;
    :try_start_1b
    const-string v3, "DiskCache"

    const-string v5, "Unable to close chunk file"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 244
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #size:I
    :catchall_23
    move-exception v3

    monitor-exit v4
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw v3

    .line 243
    .restart local v2       #size:I
    :cond_26
    :try_start_26
    iget-object v3, p0, Lcom/cooliris/media/DiskCache;->mChunkFiles:Lcom/cooliris/media/LongSparseArray;

    invoke-virtual {v3}, Lcom/cooliris/media/LongSparseArray;->clear()V

    .line 244
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_23

    .line 245
    iget-object v3, p0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    if-eqz v3, :cond_3d

    .line 246
    iget-object v4, p0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    monitor-enter v4

    .line 247
    :try_start_33
    iget-object v3, p0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    if-eqz v3, :cond_3c

    .line 248
    iget-object v3, p0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    invoke-virtual {v3}, Lcom/cooliris/media/LongSparseArray;->clear()V

    .line 250
    :cond_3c
    monitor-exit v4

    .line 252
    :cond_3d
    return-void

    .line 250
    :catchall_3e
    move-exception v3

    monitor-exit v4
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_3e

    throw v3
.end method

.method protected writeIndex()V
    .registers 21

    .prologue
    .line 327
    const/4 v15, 0x0

    .line 328
    .local v15, tempFile:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mCacheDirectoryPath:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 329
    .local v16, tempFilePath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/DiskCache;->getIndexFilePath()Ljava/lang/String;

    move-result-object v10

    .line 331
    .local v10, indexFilePath:Ljava/lang/String;
    :try_start_b
    const-string v17, "DiskCache"

    const/16 v18, 0x0

    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v19}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1b} :catch_ab

    move-result-object v15

    .line 336
    const/4 v7, 0x0

    .line 337
    .local v7, fileOutput:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 338
    .local v2, bufferedOutput:Ljava/io/BufferedOutputStream;
    const/4 v4, 0x0

    .line 340
    .local v4, dataOutput:Ljava/io/DataOutputStream;
    :try_start_1f
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_14f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_166

    .line 341
    .end local v7           #fileOutput:Ljava/io/FileOutputStream;
    .local v8, fileOutput:Ljava/io/FileOutputStream;
    :try_start_24
    new-instance v3, Ljava/io/BufferedOutputStream;

    const/16 v17, 0x400

    move/from16 v0, v17

    invoke-direct {v3, v8, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_15a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_168

    .line 342
    .end local v2           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .local v3, bufferedOutput:Ljava/io/BufferedOutputStream;
    :try_start_2d
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_15d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_16b

    .line 345
    .end local v4           #dataOutput:Ljava/io/DataOutputStream;
    .local v5, dataOutput:Ljava/io/DataOutputStream;
    :try_start_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/cooliris/media/LongSparseArray;->size()I

    move-result v13

    .line 346
    .local v13, numRecords:I
    const v17, 0xcafe

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 347
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 348
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/DiskCache;->mTailChunk:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 349
    invoke-virtual {v5, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 352
    const/4 v9, 0x0

    .local v9, i:I
    :goto_5a
    if-ge v9, v13, :cond_c9

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/cooliris/media/LongSparseArray;->keyAt(I)J

    move-result-wide v11

    .line 354
    .local v11, key:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/DiskCache;->mIndexMap:Lcom/cooliris/media/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/cooliris/media/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/cooliris/media/DiskCache$Record;

    .line 355
    .local v14, record:Lcom/cooliris/media/DiskCache$Record;
    if-eqz v14, :cond_a8

    .line 356
    invoke-virtual {v5, v11, v12}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 357
    iget v0, v14, Lcom/cooliris/media/DiskCache$Record;->chunk:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 358
    iget v0, v14, Lcom/cooliris/media/DiskCache$Record;->offset:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 359
    iget v0, v14, Lcom/cooliris/media/DiskCache$Record;->size:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 360
    iget v0, v14, Lcom/cooliris/media/DiskCache$Record;->sizeOnDisk:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 361
    iget-wide v0, v14, Lcom/cooliris/media/DiskCache$Record;->timestamp:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v5, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_a8
    .catchall {:try_start_32 .. :try_end_a8} :catchall_161
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_a8} :catch_123

    .line 352
    :cond_a8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5a

    .line 332
    .end local v3           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .end local v5           #dataOutput:Ljava/io/DataOutputStream;
    .end local v8           #fileOutput:Ljava/io/FileOutputStream;
    .end local v9           #i:I
    .end local v11           #key:J
    .end local v13           #numRecords:I
    .end local v14           #record:Lcom/cooliris/media/DiskCache$Record;
    :catch_ab
    move-exception v6

    .line 333
    .local v6, e:Ljava/lang/Exception;
    const-string v17, "DiskCache"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to create or tempFile "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v6           #e:Ljava/lang/Exception;
    :goto_c8
    return-void

    .line 368
    .restart local v3       #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v5       #dataOutput:Ljava/io/DataOutputStream;
    .restart local v8       #fileOutput:Ljava/io/FileOutputStream;
    .restart local v9       #i:I
    .restart local v13       #numRecords:I
    :cond_c9
    :try_start_c9
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v17

    if-eqz v17, :cond_ff

    .line 369
    const-string v17, "DiskCache"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "rename to = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f2
    .catchall {:try_start_c9 .. :try_end_f2} :catchall_161
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_f2} :catch_123

    .line 379
    :goto_f2
    invoke-static {v5}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 380
    invoke-static {v3}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 381
    invoke-static {v8}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v4, v5

    .end local v5           #dataOutput:Ljava/io/DataOutputStream;
    .restart local v4       #dataOutput:Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v2       #bufferedOutput:Ljava/io/BufferedOutputStream;
    move-object v7, v8

    .line 382
    .end local v8           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v7       #fileOutput:Ljava/io/FileOutputStream;
    goto :goto_c8

    .line 371
    .end local v2           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .end local v4           #dataOutput:Ljava/io/DataOutputStream;
    .end local v7           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v3       #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v5       #dataOutput:Ljava/io/DataOutputStream;
    .restart local v8       #fileOutput:Ljava/io/FileOutputStream;
    :cond_ff
    :try_start_ff
    const-string v17, "DiskCache"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to rename the index file "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ". delete TEMP"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_122
    .catchall {:try_start_ff .. :try_end_122} :catchall_161
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_122} :catch_123

    goto :goto_f2

    .line 374
    .end local v9           #i:I
    .end local v13           #numRecords:I
    :catch_123
    move-exception v6

    move-object v4, v5

    .end local v5           #dataOutput:Ljava/io/DataOutputStream;
    .restart local v4       #dataOutput:Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v2       #bufferedOutput:Ljava/io/BufferedOutputStream;
    move-object v7, v8

    .line 376
    .end local v8           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v6       #e:Ljava/lang/Exception;
    .restart local v7       #fileOutput:Ljava/io/FileOutputStream;
    :goto_127
    :try_start_127
    const-string v17, "DiskCache"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to write the index file "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_144
    .catchall {:try_start_127 .. :try_end_144} :catchall_14f

    .line 379
    invoke-static {v4}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 380
    invoke-static {v2}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 381
    invoke-static {v7}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_c8

    .line 379
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_14f
    move-exception v17

    :goto_150
    invoke-static {v4}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 380
    invoke-static {v2}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 381
    invoke-static {v7}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v17

    .line 379
    .end local v7           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v8       #fileOutput:Ljava/io/FileOutputStream;
    :catchall_15a
    move-exception v17

    move-object v7, v8

    .end local v8           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v7       #fileOutput:Ljava/io/FileOutputStream;
    goto :goto_150

    .end local v2           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .end local v7           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v3       #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v8       #fileOutput:Ljava/io/FileOutputStream;
    :catchall_15d
    move-exception v17

    move-object v2, v3

    .end local v3           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v2       #bufferedOutput:Ljava/io/BufferedOutputStream;
    move-object v7, v8

    .end local v8           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v7       #fileOutput:Ljava/io/FileOutputStream;
    goto :goto_150

    .end local v2           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .end local v4           #dataOutput:Ljava/io/DataOutputStream;
    .end local v7           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v3       #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v5       #dataOutput:Ljava/io/DataOutputStream;
    .restart local v8       #fileOutput:Ljava/io/FileOutputStream;
    :catchall_161
    move-exception v17

    move-object v4, v5

    .end local v5           #dataOutput:Ljava/io/DataOutputStream;
    .restart local v4       #dataOutput:Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v2       #bufferedOutput:Ljava/io/BufferedOutputStream;
    move-object v7, v8

    .end local v8           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v7       #fileOutput:Ljava/io/FileOutputStream;
    goto :goto_150

    .line 374
    :catch_166
    move-exception v6

    goto :goto_127

    .end local v7           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v8       #fileOutput:Ljava/io/FileOutputStream;
    :catch_168
    move-exception v6

    move-object v7, v8

    .end local v8           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v7       #fileOutput:Ljava/io/FileOutputStream;
    goto :goto_127

    .end local v2           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .end local v7           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v3       #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v8       #fileOutput:Ljava/io/FileOutputStream;
    :catch_16b
    move-exception v6

    move-object v2, v3

    .end local v3           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v2       #bufferedOutput:Ljava/io/BufferedOutputStream;
    move-object v7, v8

    .end local v8           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v7       #fileOutput:Ljava/io/FileOutputStream;
    goto :goto_127
.end method
