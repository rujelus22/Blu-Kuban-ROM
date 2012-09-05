.class public Lcom/vlingo/client/core/tts/TTSFileCache;
.super Ljava/lang/Object;
.source "TTSFileCache.java"

# interfaces
.implements Lcom/vlingo/client/core/tts/TTSCache;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final absCacheDir:Ljava/lang/String;

.field private final absCacheDirSpecified:Ljava/lang/String;

.field private final domain:Ljava/lang/String;

.field private enabled:Z

.field private final highWaterMark:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .registers 8
    .parameter "context"
    .parameter "domain"
    .parameter "highWaterMark"
    .parameter "useExternalStorage"

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->enabled:Z

    .line 74
    iput-object p2, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->domain:Ljava/lang/String;

    .line 75
    iput p3, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->highWaterMark:I

    .line 76
    if-eqz p4, :cond_1b

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 78
    .local v0, cacheDirFile:Ljava/io/File;
    :goto_11
    if-nez v0, :cond_20

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->enabled:Z

    .line 80
    iput-object v2, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->absCacheDir:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->absCacheDirSpecified:Ljava/lang/String;

    .line 92
    :goto_1a
    return-void

    .line 76
    .end local v0           #cacheDirFile:Ljava/io/File;
    :cond_1b
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_11

    .line 83
    .restart local v0       #cacheDirFile:Ljava/io/File;
    :cond_20
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->absCacheDir:Ljava/lang/String;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->absCacheDirSpecified:Ljava/lang/String;

    goto :goto_1a
.end method

.method public static genericCacheManager(Landroid/content/Context;)Lcom/vlingo/client/core/tts/TTSFileCache;
    .registers 5
    .parameter "context"

    .prologue
    .line 46
    new-instance v0, Lcom/vlingo/client/core/tts/TTSFileCache;

    const-string v1, "GenericTTS3"

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/vlingo/client/core/tts/TTSFileCache;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-object v0
.end method

.method public static getKeyForRequest(Lcom/vlingo/client/core/tts/TTSRequest2;)Ljava/lang/String;
    .registers 2
    .parameter "req"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/vlingo/client/core/tts/TTSRequest2;->getXML()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/core/tts/TTSFileCache;->getKeyForRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKeyForRequest(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "reqXML"

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static persistentCacheManager(Landroid/content/Context;)Lcom/vlingo/client/core/tts/TTSFileCache;
    .registers 2
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vlingo/client/core/tts/TTSFileCache;->persistentCacheManager(Landroid/content/Context;Z)Lcom/vlingo/client/core/tts/TTSFileCache;

    move-result-object v0

    return-object v0
.end method

.method public static persistentCacheManager(Landroid/content/Context;Z)Lcom/vlingo/client/core/tts/TTSFileCache;
    .registers 5
    .parameter "context"
    .parameter "useExternalStorage"

    .prologue
    .line 54
    new-instance v0, Lcom/vlingo/client/core/tts/TTSFileCache;

    const-string v1, "PersistentTTS3"

    const v2, 0x7fffffff

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/vlingo/client/core/tts/TTSFileCache;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addToCache(Lcom/vlingo/client/core/tts/TTSRequest2;[B)Z
    .registers 6
    .parameter "mutableRequest"
    .parameter "data"

    .prologue
    .line 263
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/vlingo/client/core/tts/TTSFileCache;->getKeyForRequest(Lcom/vlingo/client/core/tts/TTSRequest2;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lcom/vlingo/client/core/tts/TTSFileCache;->cacheDataForKey(Ljava/lang/String;[B)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result v0

    .line 271
    .local v0, isNew:Z
    monitor-exit p0

    return v0

    .line 263
    .end local v0           #isNew:Z
    .end local v1           #key:Ljava/lang/String;
    :catchall_b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized cacheDataForKey(Ljava/lang/String;[B)Z
    .registers 13
    .parameter "key"
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    .line 148
    monitor-enter p0

    :try_start_2
    iget-boolean v8, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->enabled:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_7b

    if-nez v8, :cond_8

    .line 202
    :goto_6
    monitor-exit p0

    return v7

    .line 151
    :cond_8
    if-eqz p2, :cond_8a

    :try_start_a
    array-length v8, p2

    if-lez v8, :cond_8a

    if-eqz p1, :cond_8a

    .line 152
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".mp3"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, cacheFileName:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->absCacheDir:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v3, folder:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_32

    .line 159
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 161
    :cond_32
    new-instance v3, Ljava/io/File;

    .end local v3           #folder:Ljava/io/File;
    iget-object v8, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->absCacheDirSpecified:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .restart local v3       #folder:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_42

    .line 165
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 168
    :cond_42
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->absCacheDirSpecified:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_5d
    .catchall {:try_start_a .. :try_end_5d} :catchall_7b

    move-result v8

    if-nez v8, :cond_74

    const/4 v6, 0x1

    .line 170
    .local v6, isNewFile:Z
    :goto_61
    const/4 v4, 0x0

    .line 174
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_62
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_a3
    .catch Ljava/io/FileNotFoundException; {:try_start_62 .. :try_end_67} :catch_7e
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_67} :catch_94

    .line 175
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_67
    invoke-virtual {v5, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 176
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_af
    .catch Ljava/io/FileNotFoundException; {:try_start_67 .. :try_end_6d} :catch_b5
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6d} :catch_b2

    .line 189
    if-eqz v5, :cond_72

    .line 191
    :try_start_6f
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_7b
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_76

    :cond_72
    :goto_72
    move v7, v6

    .line 196
    goto :goto_6

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #isNewFile:Z
    :cond_74
    move v6, v7

    .line 169
    goto :goto_61

    .line 192
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #isNewFile:Z
    :catch_76
    move-exception v1

    .line 195
    .local v1, e:Ljava/io/IOException;
    :try_start_77
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b

    goto :goto_72

    .line 148
    .end local v0           #cacheFileName:Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #folder:Ljava/io/File;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #isNewFile:Z
    :catchall_7b
    move-exception v7

    monitor-exit p0

    throw v7

    .line 178
    .restart local v0       #cacheFileName:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #folder:Ljava/io/File;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #isNewFile:Z
    :catch_7e
    move-exception v1

    .line 179
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_7f
    :try_start_7f
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 182
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->enabled:Z
    :try_end_85
    .catchall {:try_start_7f .. :try_end_85} :catchall_a3

    .line 189
    if-eqz v4, :cond_8a

    .line 191
    :try_start_87
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_7b
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8f

    .line 201
    .end local v0           #cacheFileName:Ljava/lang/String;
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #folder:Ljava/io/File;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v6           #isNewFile:Z
    :cond_8a
    :goto_8a
    :try_start_8a
    invoke-virtual {p0}, Lcom/vlingo/client/core/tts/TTSFileCache;->cleanup()V

    goto/16 :goto_6

    .line 192
    .restart local v0       #cacheFileName:Ljava/lang/String;
    .restart local v1       #e:Ljava/io/FileNotFoundException;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #folder:Ljava/io/File;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #isNewFile:Z
    :catch_8f
    move-exception v1

    .line 195
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_7b

    goto :goto_8a

    .line 183
    .end local v1           #e:Ljava/io/IOException;
    :catch_94
    move-exception v1

    .line 187
    .restart local v1       #e:Ljava/io/IOException;
    :goto_95
    :try_start_95
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_a3

    .line 189
    if-eqz v4, :cond_8a

    .line 191
    :try_start_9a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_7b
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    goto :goto_8a

    .line 192
    :catch_9e
    move-exception v1

    .line 195
    :try_start_9f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_7b

    goto :goto_8a

    .line 189
    .end local v1           #e:Ljava/io/IOException;
    :catchall_a3
    move-exception v7

    :goto_a4
    if-eqz v4, :cond_a9

    .line 191
    :try_start_a6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_7b
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_aa

    .line 196
    :cond_a9
    :goto_a9
    :try_start_a9
    throw v7

    .line 192
    :catch_aa
    move-exception v1

    .line 195
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ae
    .catchall {:try_start_a9 .. :try_end_ae} :catchall_7b

    goto :goto_a9

    .line 189
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catchall_af
    move-exception v7

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_a4

    .line 183
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_b2
    move-exception v1

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_95

    .line 178
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_b5
    move-exception v1

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_7f
.end method

.method public declared-synchronized cleanup()V
    .registers 8

    .prologue
    .line 226
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->absCacheDirSpecified:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 228
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, fileNames:[Ljava/lang/String;
    array-length v5, v1

    iget v6, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->highWaterMark:I

    if-le v5, v6, :cond_49

    .line 233
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 234
    .local v2, fsCacheFiles:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/io/File;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1d
    array-length v5, v1

    if-ge v3, v5, :cond_2d

    .line 235
    new-instance v5, Ljava/io/File;

    aget-object v6, v1, v3

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 238
    :cond_2d
    new-instance v5, Lcom/vlingo/client/core/tts/TTSFileCache$1;

    invoke-direct {v5, p0}, Lcom/vlingo/client/core/tts/TTSFileCache$1;-><init>(Lcom/vlingo/client/core/tts/TTSFileCache;)V

    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 248
    iget v5, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->highWaterMark:I

    array-length v6, v1

    sub-int v4, v5, v6

    .line 249
    .local v4, numToDelete:I
    const/4 v3, 0x0

    :goto_3b
    if-ge v3, v4, :cond_49

    .line 250
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_4b

    .line 249
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 255
    .end local v1           #fileNames:[Ljava/lang/String;
    .end local v2           #fsCacheFiles:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/io/File;>;"
    .end local v3           #i:I
    .end local v4           #numToDelete:I
    :cond_49
    monitor-exit p0

    return-void

    .line 226
    .end local v0           #dir:Ljava/io/File;
    :catchall_4b
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized containsKey(Lcom/vlingo/client/core/tts/TTSRequest2;)Z
    .registers 4
    .parameter "immutableRequest"

    .prologue
    .line 294
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/vlingo/client/core/tts/TTSFileCache;->getKeyForRequest(Lcom/vlingo/client/core/tts/TTSRequest2;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/tts/TTSFileCache;->containsKey(Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result v1

    monitor-exit p0

    return v1

    .line 294
    .end local v0           #key:Ljava/lang/String;
    :catchall_b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized containsKey(Ljava/lang/String;)Z
    .registers 6
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 209
    monitor-enter p0

    :try_start_2
    iget-boolean v3, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->enabled:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_3a

    if-nez v3, :cond_8

    .line 219
    :cond_6
    :goto_6
    monitor-exit p0

    return v2

    .line 212
    :cond_8
    if-eqz p1, :cond_6

    .line 213
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mp3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, cacheFileName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->absCacheDirSpecified:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_38
    .catchall {:try_start_a .. :try_end_38} :catchall_3a

    move-result v2

    goto :goto_6

    .line 209
    .end local v0           #cacheFileName:Ljava/lang/String;
    .end local v1           #file:Ljava/io/File;
    :catchall_3a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized delete()V
    .registers 12

    .prologue
    .line 301
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v9, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->absCacheDirSpecified:Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_42

    .line 303
    const/4 v6, 0x0

    .line 304
    .local v6, fileNum:I
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 305
    .local v5, fileNames:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v8, v0

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_16
    if-ge v7, v8, :cond_3f

    aget-object v4, v0, v7

    .line 306
    .local v4, file:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_3c

    .line 308
    add-int/lit8 v6, v6, 0x1

    .line 309
    const/16 v9, 0xa

    if-le v6, v9, :cond_2e

    .line 310
    const/4 v6, 0x0

    .line 311
    const-wide/16 v9, 0x1e

    :try_start_2b
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_31

    .line 305
    :cond_2e
    :goto_2e
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 311
    :catch_31
    move-exception v2

    .local v2, ex:Ljava/lang/Exception;
    :try_start_32
    const-string v9, "VLG_EXCEPTION"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_3c

    goto :goto_2e

    .line 301
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dir:Ljava/io/File;
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #f:Ljava/io/File;
    .end local v4           #file:Ljava/lang/String;
    .end local v5           #fileNames:[Ljava/lang/String;
    .end local v6           #fileNum:I
    .end local v7           #i$:I
    .end local v8           #len$:I
    :catchall_3c
    move-exception v9

    monitor-exit p0

    throw v9

    .line 314
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #dir:Ljava/io/File;
    .restart local v5       #fileNames:[Ljava/lang/String;
    .restart local v6       #fileNum:I
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    :cond_3f
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_3c

    .line 316
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v5           #fileNames:[Ljava/lang/String;
    .end local v6           #fileNum:I
    .end local v7           #i$:I
    .end local v8           #len$:I
    :cond_42
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getCache(Lcom/vlingo/client/core/tts/TTSRequest2;)[B
    .registers 4
    .parameter "immutableRequest"

    .prologue
    .line 319
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/vlingo/client/core/tts/TTSFileCache;->getKeyForRequest(Lcom/vlingo/client/core/tts/TTSRequest2;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/tts/TTSFileCache;->getCachedTTSDataForKey(Ljava/lang/String;)[B
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 319
    .end local v0           #key:Ljava/lang/String;
    :catchall_b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getCachedTTSDataForKey(Ljava/lang/String;)[B
    .registers 13
    .parameter "key"

    .prologue
    .line 98
    monitor-enter p0

    :try_start_1
    iget-boolean v9, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->enabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_70

    if-nez v9, :cond_8

    .line 99
    const/4 v3, 0x0

    .line 141
    :cond_6
    :goto_6
    monitor-exit p0

    return-object v3

    .line 101
    :cond_8
    const/4 v3, 0x0

    .line 102
    .local v3, data:[B
    if-eqz p1, :cond_6

    .line 103
    :try_start_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".mp3"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, cacheFileName:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->absCacheDirSpecified:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_70

    move-result v9

    if-eqz v9, :cond_6

    .line 108
    const/4 v6, 0x0

    .line 110
    .local v6, fis:Ljava/io/FileInputStream;
    :try_start_3d
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x1f4

    invoke-direct {v0, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 111
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_9e
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_49} :catch_b0
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_49} :catch_8a

    .line 112
    .end local v6           #fis:Ljava/io/FileInputStream;
    .local v7, fis:Ljava/io/FileInputStream;
    const/16 v9, 0x1f4

    :try_start_4b
    new-array v1, v9, [B

    .line 113
    .local v1, buffer:[B
    const/4 v8, 0x0

    .line 114
    .local v8, read:I
    :goto_4e
    invoke-virtual {v7, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_73

    .line 115
    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_59
    .catchall {:try_start_4b .. :try_end_59} :catchall_aa
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_59} :catch_5a
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_59} :catch_ad

    goto :goto_4e

    .line 119
    .end local v1           #buffer:[B
    .end local v8           #read:I
    :catch_5a
    move-exception v4

    move-object v6, v7

    .line 120
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #fis:Ljava/io/FileInputStream;
    .local v4, e:Ljava/io/FileNotFoundException;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :goto_5c
    :try_start_5c
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 123
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 124
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->enabled:Z
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_9e

    .line 131
    if-eqz v6, :cond_6

    .line 133
    :try_start_67
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_70
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_6

    .line 134
    :catch_6b
    move-exception v4

    .line 135
    .local v4, e:Ljava/io/IOException;
    :try_start_6c
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    goto :goto_6

    .line 98
    .end local v2           #cacheFileName:Ljava/lang/String;
    .end local v3           #data:[B
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #fis:Ljava/io/FileInputStream;
    :catchall_70
    move-exception v9

    monitor-exit p0

    throw v9

    .line 117
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #buffer:[B
    .restart local v2       #cacheFileName:Ljava/lang/String;
    .restart local v3       #data:[B
    .restart local v5       #file:Ljava/io/File;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    .restart local v8       #read:I
    :cond_73
    :try_start_73
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/io/File;->setLastModified(J)Z
    :try_end_7e
    .catchall {:try_start_73 .. :try_end_7e} :catchall_aa
    .catch Ljava/io/FileNotFoundException; {:try_start_73 .. :try_end_7e} :catch_5a
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_7e} :catch_ad

    .line 131
    if-eqz v7, :cond_6

    .line 133
    :try_start_80
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_70
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_6

    .line 134
    :catch_84
    move-exception v4

    .line 135
    .restart local v4       #e:Ljava/io/IOException;
    :try_start_85
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_70

    goto/16 :goto_6

    .line 125
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #buffer:[B
    .end local v4           #e:Ljava/io/IOException;
    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v8           #read:I
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_8a
    move-exception v4

    .line 126
    .restart local v4       #e:Ljava/io/IOException;
    :goto_8b
    :try_start_8b
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 129
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_91
    .catchall {:try_start_8b .. :try_end_91} :catchall_9e

    .line 131
    if-eqz v6, :cond_6

    .line 133
    :try_start_93
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_70
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_98

    goto/16 :goto_6

    .line 134
    :catch_98
    move-exception v4

    .line 135
    :try_start_99
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_70

    goto/16 :goto_6

    .line 131
    .end local v4           #e:Ljava/io/IOException;
    :catchall_9e
    move-exception v9

    :goto_9f
    if-eqz v6, :cond_a4

    .line 133
    :try_start_a1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_70
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    .line 136
    :cond_a4
    :goto_a4
    :try_start_a4
    throw v9

    .line 134
    :catch_a5
    move-exception v4

    .line 135
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a9
    .catchall {:try_start_a4 .. :try_end_a9} :catchall_70

    goto :goto_a4

    .line 131
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catchall_aa
    move-exception v9

    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_9f

    .line 125
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_ad
    move-exception v4

    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_8b

    .line 119
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    :catch_b0
    move-exception v4

    goto :goto_5c
.end method

.method public getDebugBytesForFilename(Ljava/lang/String;)[B
    .registers 3
    .parameter "filename"

    .prologue
    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDebugXMLForFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "filename"

    .prologue
    .line 282
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFiles()[Ljava/io/File;
    .registers 3

    .prologue
    .line 60
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->absCacheDirSpecified:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 70
    :goto_11
    return-object v1

    .line 66
    :cond_12
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSFileCache;->absCacheDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    goto :goto_11

    .line 70
    :cond_24
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public declared-synchronized updateRequest(Lcom/vlingo/client/core/tts/TTSRequest2;)V
    .registers 2
    .parameter "immutableRequest"

    .prologue
    .line 324
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
