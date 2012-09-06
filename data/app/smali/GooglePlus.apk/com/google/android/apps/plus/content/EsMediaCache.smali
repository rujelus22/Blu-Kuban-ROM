.class public Lcom/google/android/apps/plus/content/EsMediaCache;
.super Ljava/lang/Object;
.source "EsMediaCache.java"


# static fields
.field private static sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

.field private static sMediaCacheDir:Ljava/io/File;


# direct methods
.method public static getMedia(Landroid/content/Context;Lcom/google/android/apps/plus/content/MediaImageRequest;)[B
    .registers 15
    .parameter "context"
    .parameter "request"

    .prologue
    const/4 v9, 0x0

    .line 85
    new-instance v4, Ljava/io/File;

    new-instance v10, Ljava/io/File;

    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsMediaCache;->getMediaCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/MediaImageRequest;->getCacheDir()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/MediaImageRequest;->getCacheFileName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    .local v4, file:Ljava/io/File;
    const/4 v7, 0x0

    .line 89
    .local v7, stream:Ljava/io/FileInputStream;
    :try_start_18
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_75
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1d} :catch_8a
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_47

    .line 90
    .end local v7           #stream:Ljava/io/FileInputStream;
    .local v8, stream:Ljava/io/FileInputStream;
    :try_start_1d
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v6, v10

    .line 91
    .local v6, size:I
    new-array v1, v6, [B

    .line 92
    .local v1, bytes:[B
    const/4 v5, 0x0

    .line 93
    .local v5, offset:I
    move v0, v6

    .line 94
    .local v0, byteCount:I
    :goto_26
    if-lez v0, :cond_40

    .line 95
    invoke-virtual {v8, v1, v5, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    .line 96
    .local v2, bytesRead:I
    if-gez v2, :cond_3d

    .line 97
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10}, Ljava/io/IOException;-><init>()V

    throw v10
    :try_end_34
    .catchall {:try_start_1d .. :try_end_34} :catchall_84
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_34} :catch_34
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_34} :catch_87

    .line 103
    .end local v0           #byteCount:I
    .end local v1           #bytes:[B
    .end local v2           #bytesRead:I
    .end local v5           #offset:I
    .end local v6           #size:I
    :catch_34
    move-exception v3

    move-object v7, v8

    .line 109
    .end local v8           #stream:Ljava/io/FileInputStream;
    .local v3, e:Ljava/io/FileNotFoundException;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :goto_36
    if-eqz v7, :cond_3b

    .line 111
    :try_start_38
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_7e

    :cond_3b
    :goto_3b
    move-object v1, v9

    .line 118
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :goto_3c
    return-object v1

    .line 99
    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v0       #byteCount:I
    .restart local v1       #bytes:[B
    .restart local v2       #bytesRead:I
    .restart local v5       #offset:I
    .restart local v6       #size:I
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :cond_3d
    add-int/2addr v5, v2

    .line 100
    sub-int/2addr v0, v2

    .line 101
    goto :goto_26

    .line 109
    .end local v2           #bytesRead:I
    :cond_40
    if-eqz v8, :cond_45

    .line 111
    :try_start_42
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_7c

    :cond_45
    :goto_45
    move-object v7, v8

    .line 114
    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    goto :goto_3c

    .line 106
    .end local v0           #byteCount:I
    .end local v1           #bytes:[B
    .end local v5           #offset:I
    .end local v6           #size:I
    :catch_47
    move-exception v3

    .line 107
    .local v3, e:Ljava/io/IOException;
    :goto_48
    :try_start_48
    const-string v10, "EsMediaCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot read media file from cache: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_48 .. :try_end_6e} :catchall_75

    .line 109
    if-eqz v7, :cond_73

    .line 111
    :try_start_70
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_80

    :cond_73
    :goto_73
    move-object v1, v9

    .line 118
    goto :goto_3c

    .line 109
    .end local v3           #e:Ljava/io/IOException;
    :catchall_75
    move-exception v9

    :goto_76
    if-eqz v7, :cond_7b

    .line 111
    :try_start_78
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_82

    .line 114
    :cond_7b
    :goto_7b
    throw v9

    .line 112
    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v0       #byteCount:I
    .restart local v1       #bytes:[B
    .restart local v5       #offset:I
    .restart local v6       #size:I
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :catch_7c
    move-exception v9

    goto :goto_45

    .end local v0           #byteCount:I
    .end local v1           #bytes:[B
    .end local v5           #offset:I
    .end local v6           #size:I
    .end local v8           #stream:Ljava/io/FileInputStream;
    .local v3, e:Ljava/io/FileNotFoundException;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :catch_7e
    move-exception v10

    goto :goto_3b

    .local v3, e:Ljava/io/IOException;
    :catch_80
    move-exception v10

    goto :goto_73

    .end local v3           #e:Ljava/io/IOException;
    :catch_82
    move-exception v10

    goto :goto_7b

    .line 109
    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :catchall_84
    move-exception v9

    move-object v7, v8

    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    goto :goto_76

    .line 106
    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :catch_87
    move-exception v3

    move-object v7, v8

    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    goto :goto_48

    .line 103
    :catch_8a
    move-exception v3

    goto :goto_36
.end method

.method private static getMediaCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 5
    .parameter "context"

    .prologue
    .line 148
    sget-object v1, Lcom/google/android/apps/plus/content/EsMediaCache;->sMediaCacheDir:Ljava/io/File;

    if-nez v1, :cond_11

    .line 149
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "media"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/apps/plus/content/EsMediaCache;->sMediaCacheDir:Ljava/io/File;

    .line 152
    :cond_11
    sget-object v1, Lcom/google/android/apps/plus/content/EsMediaCache;->sMediaCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 154
    :try_start_19
    sget-object v1, Lcom/google/android/apps/plus/content/EsMediaCache;->sMediaCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_21

    .line 160
    :cond_1e
    :goto_1e
    sget-object v1, Lcom/google/android/apps/plus/content/EsMediaCache;->sMediaCacheDir:Ljava/io/File;

    return-object v1

    .line 155
    :catch_21
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EsMediaCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create cache media directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsMediaCache;->sMediaCacheDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

.method public static insertMedia(Landroid/content/Context;Lcom/google/android/apps/plus/content/MediaImageRequest;[B)V
    .registers 10
    .parameter "context"
    .parameter "request"
    .parameter "bytes"

    .prologue
    .line 46
    sget-object v4, Lcom/google/android/apps/plus/content/EsMediaCache;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    if-nez v4, :cond_a

    .line 47
    invoke-static {p0}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v4

    sput-object v4, Lcom/google/android/apps/plus/content/EsMediaCache;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 51
    :cond_a
    sget-object v4, Lcom/google/android/apps/plus/content/EsMediaCache;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/apps/plus/service/ImageCache;->notifyMediaImageChange(Lcom/google/android/apps/plus/content/MediaImageRequest;[B)V

    .line 53
    if-nez p2, :cond_12

    .line 74
    :goto_11
    return-void

    .line 57
    :cond_12
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsMediaCache;->getMediaCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/MediaImageRequest;->getCacheDir()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_28

    .line 60
    :try_start_25
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_65

    .line 66
    :cond_28
    :goto_28
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/MediaImageRequest;->getCacheFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .local v2, file:Ljava/io/File;
    :try_start_31
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 69
    .local v3, stream:Ljava/io/FileOutputStream;
    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 70
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3c} :catch_3d

    goto :goto_11

    .line 71
    .end local v3           #stream:Ljava/io/FileOutputStream;
    :catch_3d
    move-exception v1

    .line 72
    .local v1, e:Ljava/io/IOException;
    const-string v4, "EsMediaCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot write media file to cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 61
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    :catch_65
    move-exception v1

    .line 62
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "EsMediaCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot create cache media directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28
.end method

.method public static loadMedia(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/Map;
    .registers 8
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/content/MediaImageRequest;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/plus/content/MediaImageRequest;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/MediaImageRequest;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/apps/plus/content/MediaImageRequest;[B>;"
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 128
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v0, :cond_c

    .line 141
    :cond_b
    return-object v3

    .line 132
    :cond_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/content/MediaImageRequest;

    .line 133
    .local v4, request:Lcom/google/android/apps/plus/content/MediaImageRequest;
    invoke-static {p0, v4}, Lcom/google/android/apps/plus/content/EsMediaCache;->getMedia(Landroid/content/Context;Lcom/google/android/apps/plus/content/MediaImageRequest;)[B

    move-result-object v1

    .line 134
    .local v1, bytes:[B
    if-eqz v1, :cond_26

    .line 135
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 137
    :cond_26
    invoke-static {p0, v0, v4}, Lcom/google/android/apps/plus/service/ImageDownloader;->downloadImage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/content/MediaImageRequest;)V

    goto :goto_10
.end method
