.class public Lcom/vlingo/client/core/tts/TTSAssetCache;
.super Ljava/lang/Object;
.source "TTSAssetCache.java"

# interfaces
.implements Lcom/vlingo/client/core/tts/TTSCache;


# static fields
.field private static final ASSET_FOLDER:Ljava/lang/String; = "tts_cache"


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private final cachedFilenames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    iput-object v6, p0, Lcom/vlingo/client/core/tts/TTSAssetCache;->assetManager:Landroid/content/res/AssetManager;

    .line 36
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/vlingo/client/core/tts/TTSAssetCache;->cachedFilenames:Ljava/util/HashSet;

    .line 39
    :try_start_10
    iget-object v6, p0, Lcom/vlingo/client/core/tts/TTSAssetCache;->assetManager:Landroid/content/res/AssetManager;

    const-string v7, "tts_cache"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, files:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1b
    if-ge v4, v5, :cond_2b

    aget-object v2, v0, v4

    .line 41
    .local v2, filename:Ljava/lang/String;
    iget-object v6, p0, Lcom/vlingo/client/core/tts/TTSAssetCache;->cachedFilenames:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_24} :catch_27

    .line 40
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 43
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #filename:Ljava/lang/String;
    .end local v3           #files:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :catch_27
    move-exception v1

    .line 44
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 46
    .end local v1           #e:Ljava/io/IOException;
    :cond_2b
    return-void
.end method

.method public static persistentCacheManager(Landroid/content/Context;)Lcom/vlingo/client/core/tts/TTSAssetCache;
    .registers 2
    .parameter "context"

    .prologue
    .line 31
    new-instance v0, Lcom/vlingo/client/core/tts/TTSAssetCache;

    invoke-direct {v0, p0}, Lcom/vlingo/client/core/tts/TTSAssetCache;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public addToCache(Lcom/vlingo/client/core/tts/TTSRequest2;[B)Z
    .registers 4
    .parameter "mutableRequest"
    .parameter "data"

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public cleanup()V
    .registers 1

    .prologue
    .line 103
    return-void
.end method

.method public containsKey(Lcom/vlingo/client/core/tts/TTSRequest2;)Z
    .registers 6
    .parameter "immutableRequest"

    .prologue
    .line 49
    invoke-static {p1}, Lcom/vlingo/client/core/tts/TTSFileCache;->getKeyForRequest(Lcom/vlingo/client/core/tts/TTSRequest2;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, key:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mp3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, cacheFileName:Ljava/lang/String;
    iget-object v2, p0, Lcom/vlingo/client/core/tts/TTSAssetCache;->cachedFilenames:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public delete()V
    .registers 1

    .prologue
    .line 106
    return-void
.end method

.method public getCache(Lcom/vlingo/client/core/tts/TTSRequest2;)[B
    .registers 13
    .parameter "immutableRequest"

    .prologue
    .line 57
    invoke-static {p1}, Lcom/vlingo/client/core/tts/TTSFileCache;->getKeyForRequest(Lcom/vlingo/client/core/tts/TTSRequest2;)Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, key:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".mp3"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, cacheFileName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 64
    .local v4, is:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 65
    .local v2, data:[B
    :try_start_19
    iget-object v8, p0, Lcom/vlingo/client/core/tts/TTSAssetCache;->assetManager:Landroid/content/res/AssetManager;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tts_cache/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 66
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x400

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 67
    .local v7, os:Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 69
    .local v0, buffer:[B
    :goto_3d
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, len:I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_52

    .line 70
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_48
    .catchall {:try_start_19 .. :try_end_48} :catchall_7e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_48} :catch_49

    goto :goto_3d

    .line 79
    .end local v0           #buffer:[B
    .end local v6           #len:I
    .end local v7           #os:Ljava/io/ByteArrayOutputStream;
    :catch_49
    move-exception v8

    .line 83
    if-eqz v4, :cond_50

    .line 85
    :try_start_4c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_73

    .line 89
    :goto_4f
    const/4 v4, 0x0

    .line 92
    :cond_50
    const/4 v2, 0x0

    .end local v2           #data:[B
    :cond_51
    :goto_51
    return-object v2

    .line 72
    .restart local v0       #buffer:[B
    .restart local v2       #data:[B
    .restart local v6       #len:I
    .restart local v7       #os:Ljava/io/ByteArrayOutputStream;
    :cond_52
    :try_start_52
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    if-lez v8, :cond_5c

    .line 73
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 75
    :cond_5c
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5f
    .catchall {:try_start_52 .. :try_end_5f} :catchall_7e
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5f} :catch_49

    .line 76
    const/4 v7, 0x0

    .line 77
    const/4 v0, 0x0

    .line 83
    if-eqz v4, :cond_51

    .line 85
    :try_start_63
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_68

    .line 89
    :goto_66
    const/4 v4, 0x0

    goto :goto_51

    .line 86
    :catch_68
    move-exception v3

    .line 87
    .local v3, e:Ljava/io/IOException;
    const-string v8, "VLG_EXCEPTION"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 86
    .end local v0           #buffer:[B
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #len:I
    .end local v7           #os:Ljava/io/ByteArrayOutputStream;
    :catch_73
    move-exception v3

    .line 87
    .restart local v3       #e:Ljava/io/IOException;
    const-string v8, "VLG_EXCEPTION"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 83
    .end local v3           #e:Ljava/io/IOException;
    :catchall_7e
    move-exception v8

    if-eqz v4, :cond_85

    .line 85
    :try_start_81
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_86

    .line 89
    :goto_84
    const/4 v4, 0x0

    :cond_85
    throw v8

    .line 86
    :catch_86
    move-exception v3

    .line 87
    .restart local v3       #e:Ljava/io/IOException;
    const-string v9, "VLG_EXCEPTION"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84
.end method

.method public updateRequest(Lcom/vlingo/client/core/tts/TTSRequest2;)V
    .registers 2
    .parameter "immutableRequest"

    .prologue
    .line 96
    return-void
.end method
