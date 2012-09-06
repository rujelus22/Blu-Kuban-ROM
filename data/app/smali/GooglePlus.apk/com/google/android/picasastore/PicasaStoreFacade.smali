.class public Lcom/google/android/picasastore/PicasaStoreFacade;
.super Ljava/lang/Object;
.source "PicasaStoreFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasastore/PicasaStoreFacade$DummyService;,
        Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;
    }
.end annotation


# static fields
.field private static sCacheDir:Ljava/io/File;

.field private static sInstance:Lcom/google/android/picasastore/PicasaStoreFacade;

.field private static sNetworkReceiver:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mAlbumCoversUri:Landroid/net/Uri;

.field private mAuthority:Ljava/lang/String;

.field private mCachedFingerprintUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private mFingerprintUri:Landroid/net/Uri;

.field private mLocalInfo:Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;

.field private mMasterInfo:Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;

.field private mPhotosUri:Landroid/net/Uri;

.field private mRecalculateFingerprintUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mContext:Landroid/content/Context;

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/picasastore/PicasaStoreFacade;->updatePicasaSyncInfo(Z)V

    .line 127
    return-void
.end method

.method public static broadcastOperationReport(Ljava/lang/String;JJIJJ)V
    .registers 13
    .parameter "name"
    .parameter "totalTime"
    .parameter "netTime"
    .parameter "transactionCount"
    .parameter "bytesSent"
    .parameter "bytesReceived"

    .prologue
    .line 276
    sget-object v2, Lcom/google/android/picasastore/PicasaStoreFacade;->sInstance:Lcom/google/android/picasastore/PicasaStoreFacade;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/google/android/picasastore/PicasaStoreFacade;->sNetworkReceiver:Ljava/lang/Class;

    if-nez v2, :cond_9

    .line 288
    :cond_8
    :goto_8
    return-void

    .line 278
    :cond_9
    sget-object v2, Lcom/google/android/picasastore/PicasaStoreFacade;->sInstance:Lcom/google/android/picasastore/PicasaStoreFacade;

    iget-object v0, v2, Lcom/google/android/picasastore/PicasaStoreFacade;->mContext:Landroid/content/Context;

    .line 279
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/google/android/picasastore/PicasaStoreFacade;->sNetworkReceiver:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.google.android.picasastore.op_report"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v2, "op_name"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v2, "total_time"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 283
    const-string v2, "net_duration"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 284
    const-string v2, "transaction_count"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    const-string v2, "sent_bytes"

    invoke-virtual {v1, v2, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 286
    const-string v2, "received_bytes"

    invoke-virtual {v1, v2, p8, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 287
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_8
.end method

.method public static convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 7
    .parameter "imageUrl"
    .parameter "maxSide"
    .parameter "centerCropped"

    .prologue
    .line 391
    invoke-static {p0}, Lcom/google/android/picasastore/FIFEUtil;->isFifeHostedUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 392
    invoke-static {p0}, Lcom/google/android/picasastore/FIFEUtil;->getImageUrlOptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "I"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 393
    .local v1, hasI:Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v2, 0x73

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    if-eqz p2, :cond_25

    const-string v2, "-c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_25
    if-eqz v1, :cond_2c

    const-string v2, "-I"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/google/android/picasastore/FIFEUtil;->setImageUrlOptions(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #hasI:Z
    :goto_38
    return-object v2

    .line 399
    :cond_39
    if-eqz p2, :cond_42

    .line 400
    const-string v2, "PicasaStore"

    const-string v3, "not a FIFE url, ignore the crop option"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_42
    invoke-static {p1, p0}, Lcom/google/android/picasastore/ImageProxyUtil;->setImageUrlSize(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_38
.end method

.method public static createCacheFile(JLjava/lang/String;)Ljava/io/File;
    .registers 15
    .parameter "photoId"
    .parameter "ext"

    .prologue
    const/4 v8, 0x0

    .line 319
    invoke-static {}, Lcom/google/android/picasastore/PicasaStoreFacade;->getCacheDirectory()Ljava/io/File;

    move-result-object v7

    .line 320
    .local v7, root:Ljava/io/File;
    if-nez v7, :cond_9

    move-object v0, v8

    .line 348
    :cond_8
    :goto_8
    return-object v0

    .line 324
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, cacheFileName:Ljava/lang/String;
    const-wide/16 v9, 0xa

    rem-long v9, p0, v9

    long-to-int v2, v9

    .line 326
    .local v2, dirIndex:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "picasa--"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 334
    .local v5, folderName:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_33
    const/4 v9, 0x5

    if-ge v6, v9, :cond_89

    .line 335
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 336
    .local v4, folder:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_47

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-eqz v9, :cond_55

    .line 337
    :cond_47
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 339
    .local v0, cacheFile:Ljava/io/File;
    :try_start_4c
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 340
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_52} :catch_6b

    move-result v9

    if-nez v9, :cond_8

    .line 345
    .end local v0           #cacheFile:Ljava/io/File;
    :cond_55
    :goto_55
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "e"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 334
    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    .line 341
    .restart local v0       #cacheFile:Ljava/io/File;
    :catch_6b
    move-exception v3

    .line 342
    .local v3, e:Ljava/io/IOException;
    const-string v9, "PicasaStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is full: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .end local v0           #cacheFile:Ljava/io/File;
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #folder:Ljava/io/File;
    :cond_89
    move-object v0, v8

    .line 348
    goto/16 :goto_8
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/google/android/picasastore/PicasaStoreFacade;
    .registers 3
    .parameter "context"

    .prologue
    .line 114
    const-class v1, Lcom/google/android/picasastore/PicasaStoreFacade;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/picasastore/PicasaStoreFacade;->sInstance:Lcom/google/android/picasastore/PicasaStoreFacade;

    if-nez v0, :cond_e

    .line 115
    new-instance v0, Lcom/google/android/picasastore/PicasaStoreFacade;

    invoke-direct {v0, p0}, Lcom/google/android/picasastore/PicasaStoreFacade;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/picasastore/PicasaStoreFacade;->sInstance:Lcom/google/android/picasastore/PicasaStoreFacade;

    .line 117
    :cond_e
    sget-object v0, Lcom/google/android/picasastore/PicasaStoreFacade;->sInstance:Lcom/google/android/picasastore/PicasaStoreFacade;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 114
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getAlbumCoverCacheFile(JLjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .parameter "albumId"
    .parameter "thumbnailUrl"
    .parameter "ext"

    .prologue
    .line 376
    invoke-static {}, Lcom/google/android/picasastore/PicasaStoreFacade;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 377
    .local v0, root:Ljava/io/File;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 378
    :goto_7
    return-object v1

    :cond_8
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "picasa_covers/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1, p2}, Lcom/google/android/picasastore/PicasaStoreFacade;->getAlbumCoverKey(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static getAlbumCoverKey(JLjava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "albumId"
    .parameter "thumbnailUrl"

    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getCacheDirectory()Ljava/io/File;
    .registers 7

    .prologue
    .line 298
    const-class v4, Lcom/google/android/picasastore/PicasaStoreFacade;

    monitor-enter v4

    :try_start_3
    sget-object v3, Lcom/google/android/picasastore/PicasaStoreFacade;->sCacheDir:Ljava/io/File;

    if-nez v3, :cond_38

    .line 299
    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 301
    .local v2, root:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v5, "cache/com.google.android.googlephotos"

    invoke-direct {v3, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/picasastore/PicasaStoreFacade;->sCacheDir:Ljava/io/File;

    .line 302
    sget-object v3, Lcom/google/android/picasastore/PicasaStoreFacade;->sCacheDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_26

    sget-object v3, Lcom/google/android/picasastore/PicasaStoreFacade;->sCacheDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_5b

    move-result v3

    if-eqz v3, :cond_5e

    .line 304
    :cond_26
    :try_start_26
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/google/android/picasastore/PicasaStoreFacade;->sCacheDir:Ljava/io/File;

    const-string v5, ".nomedia"

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 305
    .local v1, nomedia:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_38

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_5b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_38} :catch_3c

    .line 315
    .end local v1           #nomedia:Ljava/io/File;
    :cond_38
    :goto_38
    :try_start_38
    sget-object v3, Lcom/google/android/picasastore/PicasaStoreFacade;->sCacheDir:Ljava/io/File;
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_5b

    monitor-exit v4

    return-object v3

    .line 306
    :catch_3c
    move-exception v0

    .line 307
    .local v0, e:Ljava/io/IOException;
    :try_start_3d
    const-string v3, "PicasaStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to create \'.nomedia\' in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/google/android/picasastore/PicasaStoreFacade;->sCacheDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v3, 0x0

    sput-object v3, Lcom/google/android/picasastore/PicasaStoreFacade;->sCacheDir:Ljava/io/File;
    :try_end_5a
    .catchall {:try_start_3d .. :try_end_5a} :catchall_5b

    goto :goto_38

    .line 298
    .end local v0           #e:Ljava/io/IOException;
    :catchall_5b
    move-exception v3

    monitor-exit v4

    throw v3

    .line 311
    :cond_5e
    :try_start_5e
    const-string v3, "PicasaStore"

    const-string v5, "fail to create cache dir in external storage"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v3, 0x0

    sput-object v3, Lcom/google/android/picasastore/PicasaStoreFacade;->sCacheDir:Ljava/io/File;
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_5b

    goto :goto_38
.end method

.method public static getCacheFile(JLjava/lang/String;)Ljava/io/File;
    .registers 13
    .parameter "photoId"
    .parameter "ext"

    .prologue
    const/4 v7, 0x0

    .line 352
    invoke-static {}, Lcom/google/android/picasastore/PicasaStoreFacade;->getCacheDirectory()Ljava/io/File;

    move-result-object v6

    .line 353
    .local v6, root:Ljava/io/File;
    if-nez v6, :cond_9

    move-object v0, v7

    .line 372
    :cond_8
    :goto_8
    return-object v0

    .line 356
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, cacheFileName:Ljava/lang/String;
    const-wide/16 v8, 0xa

    rem-long v8, p0, v8

    long-to-int v2, v8

    .line 358
    .local v2, dirIndex:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "picasa--"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 360
    .local v4, folderName:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_33
    const/4 v8, 0x5

    if-ge v5, v8, :cond_6a

    .line 361
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 362
    .local v3, folder:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_43

    move-object v0, v7

    goto :goto_8

    .line 363
    :cond_43
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_54

    .line 364
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 365
    .local v0, cacheFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_8

    .line 369
    .end local v0           #cacheFile:Ljava/io/File;
    :cond_54
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "e"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 360
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .end local v3           #folder:Ljava/io/File;
    :cond_6a
    move-object v0, v7

    .line 372
    goto :goto_8
.end method

.method private getPicasaStoreInfo(Landroid/content/pm/ServiceInfo;)Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;
    .registers 9
    .parameter "serviceInfo"

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 167
    iget-boolean v4, p1, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz v4, :cond_c

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_25

    .line 168
    :cond_c
    const-string v4, "PicasaStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ignore disabled picasa sync adapter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_24
    return-object v3

    .line 172
    :cond_25
    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 173
    .local v1, metadata:Landroid/os/Bundle;
    if-nez v1, :cond_42

    .line 174
    const-string v4, "PicasaStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing metadata: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 178
    :cond_42
    const-string v4, "com.google.android.picasastore.priority"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 179
    .local v2, priority:I
    const-string v4, "com.google.android.picasastore.authority"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, authority:Ljava/lang/String;
    if-eq v2, v5, :cond_56

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 182
    :cond_56
    const-string v4, "PicasaStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing required metadata info: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 185
    :cond_6f
    new-instance v3, Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v3, v4, v0, v2}, Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_24
.end method

.method public static setNetworkReceiver(Ljava/lang/Class;)V
    .registers 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, networkReceiver:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sput-object p0, Lcom/google/android/picasastore/PicasaStoreFacade;->sNetworkReceiver:Ljava/lang/Class;

    .line 122
    return-void
.end method

.method private updateAuthority(Ljava/lang/String;Z)V
    .registers 7
    .parameter "authority"
    .parameter "initialize"

    .prologue
    .line 230
    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mAuthority:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 244
    :goto_8
    return-void

    .line 232
    :cond_9
    iput-object p1, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mAuthority:Ljava/lang/String;

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 234
    .local v0, baseUri:Landroid/net/Uri;
    const-string v1, "photos"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mPhotosUri:Landroid/net/Uri;

    .line 236
    const-string v1, "fingerprint"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mFingerprintUri:Landroid/net/Uri;

    .line 238
    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mFingerprintUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "force_recalculate"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mRecalculateFingerprintUri:Landroid/net/Uri;

    .line 240
    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mFingerprintUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "cache_only"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mCachedFingerprintUri:Landroid/net/Uri;

    .line 242
    const-string v1, "albumcovers"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mAlbumCoversUri:Landroid/net/Uri;

    goto :goto_8
.end method


# virtual methods
.method public getAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getFingerprintUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mFingerprintUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getFingerprintUri(ZZ)Landroid/net/Uri;
    .registers 4
    .parameter "recalculate"
    .parameter "cacheOnly"

    .prologue
    .line 223
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mRecalculateFingerprintUri:Landroid/net/Uri;

    :goto_4
    return-object v0

    :cond_5
    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mCachedFingerprintUri:Landroid/net/Uri;

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mFingerprintUri:Landroid/net/Uri;

    goto :goto_4
.end method

.method public isMaster()Z
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mMasterInfo:Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;

    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mLocalInfo:Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/picasastore/PicasaStoreFacade;->updatePicasaSyncInfo(Z)V

    .line 248
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/picasastore/PicasaStoreFacade;->updatePicasaSyncInfo(Z)V

    .line 252
    return-void
.end method

.method declared-synchronized updatePicasaSyncInfo(Z)V
    .registers 11
    .parameter "initialize"

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    iget-object v7, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 140
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.google.android.picasastore.PACKAGE_METADATA_LOOKUP"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x84

    invoke-virtual {v2, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 144
    .local v4, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v7, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, localPackageName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 146
    .local v5, result:Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 147
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {p0, v7}, Lcom/google/android/picasastore/PicasaStoreFacade;->getPicasaStoreInfo(Landroid/content/pm/ServiceInfo;)Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;

    move-result-object v6

    .line 148
    .local v6, storeInfo:Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;
    if-eqz v6, :cond_1f

    .line 149
    if-eqz v5, :cond_3b

    iget v7, v5, Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;->priority:I

    iget v8, v6, Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;->priority:I

    if-ge v7, v8, :cond_3c

    .line 150
    :cond_3b
    move-object v5, v6

    .line 152
    :cond_3c
    iget-object v7, v6, Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 153
    iput-object v6, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mLocalInfo:Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_47

    goto :goto_1f

    .line 138
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #localPackageName:Ljava/lang/String;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v4           #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #result:Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;
    .end local v6           #storeInfo:Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;
    :catchall_47
    move-exception v7

    monitor-exit p0

    throw v7

    .line 158
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #localPackageName:Ljava/lang/String;
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    .restart local v4       #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5       #result:Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;
    :cond_4a
    :try_start_4a
    iput-object v5, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mMasterInfo:Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;

    .line 160
    iget-object v7, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mLocalInfo:Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;

    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v7, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mMasterInfo:Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;

    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v7, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mMasterInfo:Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;

    iget-object v7, v7, Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;->authority:Ljava/lang/String;

    invoke-direct {p0, v7, p1}, Lcom/google/android/picasastore/PicasaStoreFacade;->updateAuthority(Ljava/lang/String;Z)V
    :try_end_5d
    .catchall {:try_start_4a .. :try_end_5d} :catchall_47

    .line 164
    monitor-exit p0

    return-void
.end method
