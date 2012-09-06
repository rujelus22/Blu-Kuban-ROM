.class public Lcom/android/volley/toolbox/DiskBasedCache;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"

# interfaces
.implements Lcom/android/volley/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/DiskBasedCache$1;,
        Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;,
        Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    }
.end annotation


# instance fields
.field private final mEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxCacheSizeInBytes:I

.field private final mRootDirectory:Ljava/io/File;

.field private mTotalSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .registers 7
    .parameter "rootDirectory"
    .parameter "maxCacheSizeInBytes"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 71
    iput-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    .line 72
    iput p2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    .line 73
    return-void
.end method

.method private getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "key"

    .prologue
    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 225
    .local v0, firstHalfLength:I
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, localFilename:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    return-object v1
.end method

.method private pruneIfNeeded(I)V
    .registers 16
    .parameter "neededSpace"

    .prologue
    .line 242
    iget-wide v9, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    int-to-long v11, p1

    add-long/2addr v9, v11

    iget v11, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_c

    .line 276
    :cond_b
    :goto_b
    return-void

    .line 245
    :cond_c
    sget-boolean v9, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v9, :cond_18

    .line 246
    const-string v9, "Pruning old cache entries."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    :cond_18
    iget-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 250
    .local v0, before:J
    const/4 v6, 0x0

    .line 251
    .local v6, prunedFiles:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 253
    .local v7, startTime:J
    iget-object v9, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 254
    .local v5, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;>;>;"
    :cond_29
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_63

    .line 255
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 256
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 257
    .local v3, e:Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    iget-object v9, v3, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v2

    .line 258
    .local v2, deleted:Z
    if-eqz v2, :cond_8e

    .line 259
    iget-wide v9, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v11, v3, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 264
    :goto_4e
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 265
    add-int/lit8 v6, v6, 0x1

    .line 267
    iget-wide v9, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    int-to-long v11, p1

    add-long/2addr v9, v11

    long-to-float v9, v9

    iget v10, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-float v10, v10

    const v11, 0x3f666666

    mul-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_29

    .line 272
    .end local v2           #deleted:Z
    .end local v3           #e:Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;>;"
    :cond_63
    sget-boolean v9, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v9, :cond_b

    .line 273
    const-string v9, "pruned %d files, %d bytes, %d ms"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-wide v12, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    sub-long/2addr v12, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 261
    .restart local v2       #deleted:Z
    .restart local v3       #e:Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .restart local v4       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;>;"
    :cond_8e
    const-string v9, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v3, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v3, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-direct {p0, v12}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4e
.end method

.method private putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    .registers 10
    .parameter "key"
    .parameter "entry"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 285
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v3, p2, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 290
    :goto_f
    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    return-void

    .line 287
    :cond_15
    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 288
    .local v0, oldEntry:Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v3, p2, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    iget-wide v5, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    goto :goto_f
.end method

.method private removeEntry(Ljava/lang/String;)V
    .registers 7
    .parameter "key"

    .prologue
    .line 297
    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 298
    .local v0, entry:Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    if-eqz v0, :cond_16

    .line 299
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v3, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 300
    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_16
    return-void
.end method

.method private static streamToBytes(Ljava/io/InputStream;I)[B
    .registers 8
    .parameter "in"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    new-array v0, p1, [B

    .line 310
    .local v0, bytes:[B
    const/4 v2, 0x0

    .line 311
    .local v2, pos:I
    :goto_3
    if-ge v2, p1, :cond_10

    sub-int v3, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, count:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_10

    .line 312
    add-int/2addr v2, v1

    goto :goto_3

    .line 314
    .end local v1           #count:I
    :cond_10
    if-eq v2, p1, :cond_3b

    .line 315
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes, read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 317
    :cond_3b
    return-object v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 8

    .prologue
    .line 89
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 90
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_16

    .line 91
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_c
    if-ge v3, v4, :cond_16

    aget-object v1, v0, v3

    .line 92
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 95
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_16
    iget-object v5, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 96
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 97
    const-string v5, "Cache cleared."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 98
    monitor-exit p0

    return-void

    .line 89
    .end local v2           #files:[Ljava/io/File;
    :catchall_29
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;
    .registers 14
    .parameter "key"

    .prologue
    const/4 v7, 0x0

    .line 105
    monitor-enter p0

    :try_start_2
    iget-object v8, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_66

    .line 107
    .local v4, entry:Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    if-nez v4, :cond_e

    .line 127
    :cond_c
    :goto_c
    monitor-exit p0

    return-object v7

    .line 111
    :cond_e
    :try_start_e
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_66

    move-result-object v5

    .line 112
    .local v5, file:Ljava/io/File;
    const/4 v0, 0x0

    .line 114
    .local v0, cis:Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    :try_start_13
    new-instance v1, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;-><init>(Ljava/io/InputStream;Lcom/android/volley/toolbox/DiskBasedCache$1;)V
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_5f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1e} :catch_3d

    .line 115
    .end local v0           #cis:Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .local v1, cis:Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    :try_start_1e
    invoke-static {v1}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->readHeader(Ljava/io/InputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 116
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    #getter for: Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I
    invoke-static {v1}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->access$100(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    long-to-int v8, v8

    invoke-static {v1, v8}, Lcom/android/volley/toolbox/DiskBasedCache;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    .line 117
    .local v2, data:[B
    invoke-virtual {v4, v2}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->toCacheEntry([B)Lcom/android/volley/Cache$Entry;
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_6b
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_33} :catch_6e

    move-result-object v8

    .line 123
    if-eqz v1, :cond_39

    .line 125
    :try_start_36
    invoke-virtual {v1}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_66
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3b

    :cond_39
    move-object v7, v8

    .line 127
    goto :goto_c

    .line 126
    :catch_3b
    move-exception v6

    .line 127
    .local v6, ioe:Ljava/io/IOException;
    goto :goto_c

    .line 118
    .end local v1           #cis:Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .end local v2           #data:[B
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v0       #cis:Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    :catch_3d
    move-exception v3

    .line 119
    .local v3, e:Ljava/io/IOException;
    :goto_3e
    :try_start_3e
    const-string v8, "%s: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->remove(Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_3e .. :try_end_57} :catchall_5f

    .line 123
    if-eqz v0, :cond_c

    .line 125
    :try_start_59
    invoke-virtual {v0}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_66
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_c

    .line 126
    :catch_5d
    move-exception v6

    .line 127
    .restart local v6       #ioe:Ljava/io/IOException;
    goto :goto_c

    .line 123
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #ioe:Ljava/io/IOException;
    :catchall_5f
    move-exception v8

    :goto_60
    if-eqz v0, :cond_65

    .line 125
    :try_start_62
    invoke-virtual {v0}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_69

    .line 127
    :cond_65
    :try_start_65
    throw v8
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    .line 105
    .end local v0           #cis:Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .end local v4           #entry:Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v5           #file:Ljava/io/File;
    :catchall_66
    move-exception v7

    monitor-exit p0

    throw v7

    .line 126
    .restart local v0       #cis:Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .restart local v4       #entry:Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .restart local v5       #file:Ljava/io/File;
    :catch_69
    move-exception v6

    .line 127
    .restart local v6       #ioe:Ljava/io/IOException;
    goto :goto_c

    .line 123
    .end local v0           #cis:Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v1       #cis:Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    :catchall_6b
    move-exception v8

    move-object v0, v1

    .end local v1           #cis:Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .restart local v0       #cis:Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    goto :goto_60

    .line 118
    .end local v0           #cis:Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .restart local v1       #cis:Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    :catch_6e
    move-exception v3

    move-object v0, v1

    .end local v1           #cis:Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    .restart local v0       #cis:Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    goto :goto_3e
.end method

.method public getFileForKey(Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .parameter "key"

    .prologue
    .line 234
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized initialize()V
    .registers 12

    .prologue
    .line 139
    monitor-enter p0

    :try_start_1
    iget-object v9, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_48

    move-result-object v4

    .line 140
    .local v4, files:[Ljava/io/File;
    if-nez v4, :cond_b

    .line 162
    :cond_9
    monitor-exit p0

    return-void

    .line 143
    :cond_b
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    :try_start_c
    array-length v8, v0

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_e
    if-ge v7, v8, :cond_9

    aget-object v3, v0, v7
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_48

    .line 144
    .local v3, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 146
    .local v5, fis:Ljava/io/FileInputStream;
    :try_start_13
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_41
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_33

    .line 147
    .end local v5           #fis:Ljava/io/FileInputStream;
    .local v6, fis:Ljava/io/FileInputStream;
    :try_start_18
    invoke-static {v6}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->readHeader(Ljava/io/InputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    move-result-object v2

    .line 148
    .local v2, entry:Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    iput-wide v9, v2, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    .line 149
    iget-object v9, v2, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-direct {p0, v9, v2}, Lcom/android/volley/toolbox/DiskBasedCache;->putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_4d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_27} :catch_50

    .line 156
    if-eqz v6, :cond_2c

    .line 157
    :try_start_29
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_48
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_30

    :cond_2c
    move-object v5, v6

    .line 143
    .end local v2           #entry:Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :cond_2d
    :goto_2d
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 159
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v2       #entry:Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_30
    move-exception v9

    move-object v5, v6

    .line 160
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_2d

    .line 150
    .end local v2           #entry:Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    :catch_33
    move-exception v1

    .line 151
    .local v1, e:Ljava/io/IOException;
    :goto_34
    if-eqz v3, :cond_39

    .line 152
    :try_start_36
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    .line 156
    :cond_39
    if-eqz v5, :cond_2d

    .line 157
    :try_start_3b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_48
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_2d

    .line 159
    :catch_3f
    move-exception v9

    goto :goto_2d

    .line 155
    .end local v1           #e:Ljava/io/IOException;
    :catchall_41
    move-exception v9

    .line 156
    :goto_42
    if-eqz v5, :cond_47

    .line 157
    :try_start_44
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_4b

    .line 159
    :cond_47
    :goto_47
    :try_start_47
    throw v9
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    .line 139
    .end local v0           #arr$:[Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #files:[Ljava/io/File;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :catchall_48
    move-exception v9

    monitor-exit p0

    throw v9

    .line 159
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #files:[Ljava/io/File;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    :catch_4b
    move-exception v10

    goto :goto_47

    .line 155
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catchall_4d
    move-exception v9

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_42

    .line 150
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_50
    move-exception v1

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_34
.end method

.method public declared-synchronized invalidate(Ljava/lang/String;Z)V
    .registers 6
    .parameter "key"
    .parameter "fullExpire"

    .prologue
    .line 171
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    .line 172
    .local v0, entry:Lcom/android/volley/Cache$Entry;
    if-eqz v0, :cond_14

    .line 173
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 174
    if-eqz p2, :cond_11

    .line 175
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 177
    :cond_11
    invoke-virtual {p0, p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 180
    :cond_14
    monitor-exit p0

    return-void

    .line 171
    .end local v0           #entry:Lcom/android/volley/Cache$Entry;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .registers 11
    .parameter "key"
    .parameter "entry"

    .prologue
    .line 187
    monitor-enter p0

    :try_start_1
    iget-object v4, p2, Lcom/android/volley/Cache$Entry;->data:[B

    array-length v4, v4

    invoke-direct {p0, v4}, Lcom/android/volley/toolbox/DiskBasedCache;->pruneIfNeeded(I)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_3c

    move-result-object v2

    .line 190
    .local v2, file:Ljava/io/File;
    :try_start_b
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 191
    .local v3, fos:Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    invoke-direct {v1, p1, p2}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;-><init>(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    .line 192
    .local v1, e:Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    invoke-virtual {v1, v3}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->writeHeader(Ljava/io/OutputStream;)Z

    .line 193
    iget-object v4, p2, Lcom/android/volley/Cache$Entry;->data:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 194
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 195
    invoke-direct {p0, p1, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_3c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_23} :catch_25

    .line 203
    .end local v1           #e:Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    .line 197
    :catch_25
    move-exception v4

    .line 199
    :try_start_26
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 200
    .local v0, deleted:Z
    if-nez v0, :cond_23

    .line 201
    const-string v4, "Could not clean up file %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3b
    .catchall {:try_start_26 .. :try_end_3b} :catchall_3c

    goto :goto_23

    .line 187
    .end local v0           #deleted:Z
    .end local v2           #file:Ljava/io/File;
    :catchall_3c
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .registers 7
    .parameter "key"

    .prologue
    .line 210
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 211
    .local v0, deleted:Z
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->removeEntry(Ljava/lang/String;)V

    .line 212
    if-nez v0, :cond_20

    .line 213
    const-string v1, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 216
    :cond_20
    monitor-exit p0

    return-void

    .line 210
    .end local v0           #deleted:Z
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method
