.class public final Landroid/webkit/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/CacheManager$CacheResult;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field static CACHE_MAX_SIZE:J = 0x0L

.field private static CACHE_THRESHOLD:J = 0x0L

.field private static CACHE_TRIM_AMOUNT:J = 0x0L

.field static final HEADER_KEY_IFMODIFIEDSINCE:Ljava/lang/String; = "if-modified-since"

.field static final HEADER_KEY_IFNONEMATCH:Ljava/lang/String; = "if-none-match"

.field private static final LOGTAG:Ljava/lang/String; = "cache"

.field private static final MANIFEST_MIME:Ljava/lang/String; = "text/cache-manifest"

.field private static final MAX_AGE:Ljava/lang/String; = "max-age"

.field private static final NO_CACHE:Ljava/lang/String; = "no-cache"

.field private static final NO_STORE:Ljava/lang/String; = "no-store"

.field private static final TRIM_CACHE_INTERVAL:I = 0x5

.field private static mBaseDir:Ljava/io/File;

.field private static mClearCacheOnInit:Z

.field private static mDataBase:Landroid/webkit/WebViewDatabase;

.field private static mDisabled:Z

.field private static mRefCount:I

.field private static mTrimCacheCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 52
    const-class v0, Landroid/webkit/CacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    .line 65
    const-wide/32 v2, 0x600000

    sput-wide v2, Landroid/webkit/CacheManager;->CACHE_THRESHOLD:J

    .line 66
    const-wide/32 v2, 0x200000

    sput-wide v2, Landroid/webkit/CacheManager;->CACHE_TRIM_AMOUNT:J

    .line 69
    sget-wide v2, Landroid/webkit/CacheManager;->CACHE_THRESHOLD:J

    sget-wide v4, Landroid/webkit/CacheManager;->CACHE_TRIM_AMOUNT:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    sput-wide v2, Landroid/webkit/CacheManager;->CACHE_MAX_SIZE:J

    .line 80
    sput v1, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    .line 87
    sput-boolean v1, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    return-void

    :cond_25
    move v0, v1

    .line 52
    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method static synthetic access$000()Ljava/io/File;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    return-object v0
.end method

.method private static appendAsHex(ILjava/lang/StringBuffer;)V
    .registers 4
    .parameter "i"
    .parameter "ret"

    .prologue
    .line 781
    sget-boolean v1, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v1, :cond_10

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 783
    :cond_10
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, hex:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_4a

    .line 807
    :goto_1b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 808
    return-void

    .line 786
    :pswitch_1f
    const-string v1, "0000000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    .line 789
    :pswitch_25
    const-string v1, "000000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    .line 792
    :pswitch_2b
    const-string v1, "00000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    .line 795
    :pswitch_31
    const-string v1, "0000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    .line 798
    :pswitch_37
    const-string v1, "000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    .line 801
    :pswitch_3d
    const-string v1, "00"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    .line 804
    :pswitch_43
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    .line 784
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_25
        :pswitch_2b
        :pswitch_31
        :pswitch_37
        :pswitch_3d
        :pswitch_43
    .end packed-switch
.end method

.method public static cacheDisabled()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 285
    sget-boolean v0, Landroid/webkit/CacheManager;->mDisabled:Z

    return v0
.end method

.method static cleanupCacheFile(Landroid/webkit/CacheManager$CacheResult;)Z
    .registers 3
    .parameter "cacheRet"

    .prologue
    .line 592
    sget-boolean v1, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v1, :cond_10

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 595
    :cond_10
    :try_start_10
    iget-object v1, p0, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_1c

    .line 599
    iget-object v1, p0, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    :goto_1b
    return v1

    .line 596
    :catch_1c
    move-exception v0

    .line 597
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method static clearCache()V
    .registers 1

    .prologue
    .line 689
    sget-boolean v0, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 692
    :cond_10
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearCache()V

    .line 693
    return-void
.end method

.method private static createCacheDirectory()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 219
    sget-boolean v1, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v1, :cond_12

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 221
    :cond_12
    sget-object v1, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_29

    .line 222
    sget-object v1, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 223
    const-string v1, "cache"

    const-string v2, "Unable to create webviewCache directory"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_29
    :goto_29
    return v0

    .line 226
    :cond_2a
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f8

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 235
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    .line 237
    const/4 v0, 0x1

    goto :goto_29
.end method

.method static createCacheFile(Ljava/lang/String;ILandroid/net/http/Headers;Ljava/lang/String;JZ)Landroid/webkit/CacheManager$CacheResult;
    .registers 14
    .parameter "url"
    .parameter "statusCode"
    .parameter "headers"
    .parameter "mimeType"
    .parameter "postIdentifier"
    .parameter "forceCache"

    .prologue
    const/4 v4, 0x0

    .line 477
    sget-boolean v5, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v5, :cond_11

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v5

    if-eqz v5, :cond_11

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 479
    :cond_11
    if-nez p6, :cond_19

    sget-boolean v5, Landroid/webkit/CacheManager;->mDisabled:Z

    if-eqz v5, :cond_19

    move-object v3, v4

    .line 528
    :goto_18
    return-object v3

    .line 483
    :cond_19
    invoke-static {p0, p4, p5}, Landroid/webkit/CacheManager;->getDatabaseKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, databaseKey:Ljava/lang/String;
    const/16 v5, 0x12f

    if-ne p1, v5, :cond_28

    .line 488
    sget-object v5, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v5, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    move-object v3, v4

    .line 489
    goto :goto_18

    .line 494
    :cond_28
    invoke-static {p1}, Landroid/webkit/CacheManager;->isCachableRedirect(I)Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-virtual {p2}, Landroid/net/http/Headers;->getSetCookie()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3f

    .line 496
    sget-object v5, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v5, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    move-object v3, v4

    .line 497
    goto :goto_18

    .line 500
    :cond_3f
    invoke-static {p1, p2, p3}, Landroid/webkit/CacheManager;->parseHeaders(ILandroid/net/http/Headers;Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v3

    .line 501
    .local v3, ret:Landroid/webkit/CacheManager$CacheResult;
    if-nez v3, :cond_4b

    .line 504
    sget-object v4, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    goto :goto_18

    .line 506
    :cond_4b
    invoke-static {v0, v3}, Landroid/webkit/CacheManager;->setupFiles(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V

    .line 508
    :try_start_4e
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, v3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v5, v3, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_57} :catch_5a

    .line 525
    :goto_57
    iput-object p3, v3, Landroid/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    goto :goto_18

    .line 509
    :catch_5a
    move-exception v1

    .line 512
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-static {}, Landroid/webkit/CacheManager;->createCacheDirectory()Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 514
    :try_start_61
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, v3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v5, v3, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;
    :try_end_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_61 .. :try_end_6a} :catch_6b

    goto :goto_57

    .line 515
    :catch_6b
    move-exception v2

    .local v2, e2:Ljava/io/FileNotFoundException;
    move-object v3, v4

    .line 518
    goto :goto_18

    .end local v2           #e2:Ljava/io/FileNotFoundException;
    :cond_6e
    move-object v3, v4

    .line 522
    goto :goto_18
.end method

.method public static createCacheFile(Ljava/lang/String;ILandroid/net/http/Headers;Ljava/lang/String;Z)Landroid/webkit/CacheManager$CacheResult;
    .registers 12
    .parameter "url"
    .parameter "statusCode"
    .parameter "headers"
    .parameter "mimeType"
    .parameter "forceCache"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 465
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 467
    const/4 v0, 0x0

    .line 470
    :goto_7
    return-object v0

    :cond_8
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/webkit/CacheManager;->createCacheFile(Ljava/lang/String;ILandroid/net/http/Headers;Ljava/lang/String;JZ)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v0

    goto :goto_7
.end method

.method static disableTransaction()Z
    .registers 1

    .prologue
    .line 303
    sget-boolean v0, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 305
    :cond_10
    sget v0, Landroid/webkit/CacheManager;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/CacheManager;->mRefCount:I

    if-nez v0, :cond_1f

    .line 306
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->endCacheTransaction()Z

    .line 307
    const/4 v0, 0x1

    .line 309
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method static enableTransaction()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 291
    sget-boolean v1, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v1, :cond_11

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 293
    :cond_11
    sget v1, Landroid/webkit/CacheManager;->mRefCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/CacheManager;->mRefCount:I

    if-ne v1, v0, :cond_1f

    .line 294
    sget-object v1, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v1}, Landroid/webkit/WebViewDatabase;->startCacheTransaction()Z

    .line 297
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public static endCacheTransaction()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method static endTransaction()Z
    .registers 3

    .prologue
    .line 323
    sget-boolean v1, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v1, :cond_10

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 325
    :cond_10
    sget-object v1, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v1}, Landroid/webkit/WebViewDatabase;->endCacheTransaction()Z

    move-result v0

    .line 326
    .local v0, ret:Z
    sget v1, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_25

    .line 327
    const/4 v1, 0x0

    sput v1, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    .line 328
    invoke-static {}, Landroid/webkit/CacheManager;->trimCacheIfNeeded()V

    .line 330
    :cond_25
    return v0
.end method

.method static getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    .registers 13
    .parameter "url"
    .parameter "postIdentifier"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/CacheManager$CacheResult;"
        }
    .end annotation

    .prologue
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    .line 373
    sget-boolean v5, Landroid/webkit/CacheManager;->mDisabled:Z

    if-eqz v5, :cond_9

    move-object v2, v4

    .line 445
    :cond_8
    :goto_8
    return-object v2

    .line 377
    :cond_9
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 378
    invoke-static {p0}, Landroid/webkit/CacheManager;->nativeGetCacheResult(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v2

    .line 379
    .local v2, result:Landroid/webkit/CacheManager$CacheResult;
    if-nez v2, :cond_17

    move-object v2, v4

    .line 380
    goto :goto_8

    .line 384
    :cond_17
    new-instance v3, Ljava/io/File;

    sget-object v5, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    iget-object v6, v2, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 388
    .local v3, src:Ljava/io/File;
    :try_start_20
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v5, v2, Landroid/webkit/CacheManager$CacheResult;->inStream:Ljava/io/InputStream;
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_27} :catch_28

    goto :goto_8

    .line 389
    :catch_28
    move-exception v1

    .line 390
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v5, "cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCacheFile(): Failed to open file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 393
    goto :goto_8

    .line 398
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v2           #result:Landroid/webkit/CacheManager$CacheResult;
    .end local v3           #src:Ljava/io/File;
    :cond_43
    invoke-static {p0, p1, p2}, Landroid/webkit/CacheManager;->getDatabaseKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, databaseKey:Ljava/lang/String;
    sget-object v5, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v5, v0}, Landroid/webkit/WebViewDatabase;->getCache(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v2

    .line 400
    .restart local v2       #result:Landroid/webkit/CacheManager$CacheResult;
    if-nez v2, :cond_51

    move-object v2, v4

    .line 401
    goto :goto_8

    .line 403
    :cond_51
    iget-wide v5, v2, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_66

    .line 404
    iget v5, v2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    invoke-static {v5}, Landroid/webkit/CacheManager;->isCachableRedirect(I)Z

    move-result v5

    if-nez v5, :cond_76

    .line 406
    sget-object v5, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v5, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    move-object v2, v4

    .line 407
    goto :goto_8

    .line 410
    :cond_66
    new-instance v3, Ljava/io/File;

    sget-object v5, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    iget-object v6, v2, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 414
    .restart local v3       #src:Ljava/io/File;
    :try_start_6f
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v5, v2, Landroid/webkit/CacheManager$CacheResult;->inStream:Ljava/io/InputStream;
    :try_end_76
    .catch Ljava/io/FileNotFoundException; {:try_start_6f .. :try_end_76} :catch_93

    .line 426
    .end local v3           #src:Ljava/io/File;
    :cond_76
    if-eqz p3, :cond_8

    iget-wide v5, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_8

    iget-wide v5, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gtz v5, :cond_8

    .line 428
    iget-object v5, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    if-nez v5, :cond_9c

    iget-object v5, v2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    if-nez v5, :cond_9c

    move-object v2, v4

    .line 429
    goto/16 :goto_8

    .line 415
    .restart local v3       #src:Ljava/io/File;
    :catch_93
    move-exception v1

    .line 418
    .restart local v1       #e:Ljava/io/FileNotFoundException;
    sget-object v5, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v5, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    move-object v2, v4

    .line 419
    goto/16 :goto_8

    .line 433
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v3           #src:Ljava/io/File;
    :cond_9c
    iget-object v4, v2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    if-eqz v4, :cond_a7

    .line 434
    const-string v4, "if-none-match"

    iget-object v5, v2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_a7
    iget-object v4, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 437
    const-string v4, "if-modified-since"

    iget-object v5, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8
.end method

.method public static getCacheFile(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    .registers 4
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/CacheManager$CacheResult;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 368
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheFileBaseDir()Ljava/io/File;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 256
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    return-object v0
.end method

.method private static getDatabaseKey(Ljava/lang/String;J)Ljava/lang/String;
    .registers 5
    .parameter "url"
    .parameter "postIdentifier"

    .prologue
    .line 705
    sget-boolean v0, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 707
    :cond_10
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_17

    .line 708
    .end local p0
    :goto_16
    return-object p0

    .restart local p0
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_16
.end method

.method static init(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 195
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 198
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "webviewCacheChromiumStaging"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    .line 199
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_21

    .line 200
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 211
    :cond_21
    :goto_21
    return-void

    .line 205
    :cond_22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    sput-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    .line 206
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "webviewCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    .line 207
    invoke-static {}, Landroid/webkit/CacheManager;->createCacheDirectory()Z

    move-result v0

    if-eqz v0, :cond_21

    sget-boolean v0, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    if-eqz v0, :cond_21

    .line 208
    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    .line 209
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    goto :goto_21
.end method

.method private static isCachableRedirect(I)Z
    .registers 2
    .parameter "statusCode"

    .prologue
    .line 696
    const/16 v0, 0x12d

    if-eq p0, v0, :cond_c

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_c

    const/16 v0, 0x133

    if-ne p0, v0, :cond_e

    .line 698
    :cond_c
    const/4 v0, 0x1

    .line 700
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static native nativeGetCacheResult(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;
.end method

.method private static parseHeaders(ILandroid/net/http/Headers;Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;
    .registers 25
    .parameter "statusCode"
    .parameter "headers"
    .parameter "mimeType"

    .prologue
    .line 812
    sget-boolean v18, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v18, :cond_10

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v18

    if-eqz v18, :cond_10

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 815
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getContentLength()J

    move-result-wide v18

    sget-wide v20, Landroid/webkit/CacheManager;->CACHE_MAX_SIZE:J

    cmp-long v18, v18, v20

    if-lez v18, :cond_1c

    const/4 v13, 0x0

    .line 968
    :cond_1b
    :goto_1b
    return-object v13

    .line 824
    :cond_1c
    const-string/jumbo v18, "text/cache-manifest"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2b

    const/4 v13, 0x0

    goto :goto_1b

    .line 827
    :cond_2b
    new-instance v13, Landroid/webkit/CacheManager$CacheResult;

    invoke-direct {v13}, Landroid/webkit/CacheManager$CacheResult;-><init>()V

    .line 828
    .local v13, ret:Landroid/webkit/CacheManager$CacheResult;
    move/from16 v0, p0

    iput v0, v13, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    .line 830
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    .line 832
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    .line 833
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getExpires()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    .line 834
    iget-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5c

    .line 836
    :try_start_50
    iget-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/net/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J
    :try_end_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_5c} :catch_af

    .line 849
    :cond_5c
    :goto_5c
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    .line 851
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getXPermittedCrossDomainPolicies()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;

    .line 855
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getLastModified()Ljava/lang/String;

    move-result-object v9

    .line 856
    .local v9, lastModified:Ljava/lang/String;
    if-eqz v9, :cond_7a

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_7a

    .line 857
    iput-object v9, v13, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    .line 860
    :cond_7a
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getEtag()Ljava/lang/String;

    move-result-object v6

    .line 861
    .local v6, etag:Ljava/lang/String;
    if-eqz v6, :cond_88

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_88

    .line 862
    iput-object v6, v13, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    .line 865
    :cond_88
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getCacheControl()Ljava/lang/String;

    move-result-object v2

    .line 866
    .local v2, cacheControl:Ljava/lang/String;
    if-eqz v2, :cond_185

    .line 867
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string v19, "[ ,;]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 868
    .local v3, controls:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 869
    .local v12, noCache:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_9a
    array-length v0, v3

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_185

    .line 870
    const-string/jumbo v18, "no-store"

    aget-object v19, v3, v8

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_ed

    .line 871
    const/4 v13, 0x0

    goto/16 :goto_1b

    .line 837
    .end local v2           #cacheControl:Ljava/lang/String;
    .end local v3           #controls:[Ljava/lang/String;
    .end local v6           #etag:Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #lastModified:Ljava/lang/String;
    .end local v12           #noCache:Z
    :catch_af
    move-exception v7

    .line 839
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v18, "-1"

    iget-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c8

    const-string v18, "0"

    iget-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_cf

    .line 842
    :cond_c8
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_5c

    .line 844
    :cond_cf
    const-string v18, "cache"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "illegal expires: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c

    .line 877
    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v2       #cacheControl:Ljava/lang/String;
    .restart local v3       #controls:[Ljava/lang/String;
    .restart local v6       #etag:Ljava/lang/String;
    .restart local v8       #i:I
    .restart local v9       #lastModified:Ljava/lang/String;
    .restart local v12       #noCache:Z
    :cond_ed
    const-string/jumbo v18, "no-cache"

    aget-object v19, v3, v8

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_102

    .line 878
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    .line 879
    const/4 v12, 0x1

    .line 869
    :cond_ff
    :goto_ff
    add-int/lit8 v8, v8, 0x1

    goto :goto_9a

    .line 884
    :cond_102
    aget-object v18, v3, v8

    const-string/jumbo v19, "max-age"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_ff

    if-nez v12, :cond_ff

    .line 885
    aget-object v18, v3, v8

    const/16 v19, 0x3d

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .line 886
    .local v17, separator:I
    if-gez v17, :cond_121

    .line 887
    aget-object v18, v3, v8

    const/16 v19, 0x3a

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .line 889
    :cond_121
    if-lez v17, :cond_ff

    .line 890
    aget-object v18, v3, v8

    add-int/lit8 v19, v17, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 892
    .local v14, s:Ljava/lang/String;
    :try_start_12b
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 893
    .local v15, sec:J
    const-wide/16 v18, 0x0

    cmp-long v18, v15, v18

    if-ltz v18, :cond_ff

    .line 894
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v20, v20, v15

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J
    :try_end_143
    .catch Ljava/lang/NumberFormatException; {:try_start_12b .. :try_end_143} :catch_144

    goto :goto_ff

    .line 897
    .end local v15           #sec:J
    :catch_144
    move-exception v7

    .line 898
    .local v7, ex:Ljava/lang/NumberFormatException;
    const-string v18, "1d"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15d

    .line 900
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/32 v20, 0x5265c00

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_ff

    .line 902
    :cond_15d
    const-string v18, "cache"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "exception in parseHeaders for max-age:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v3, v8

    add-int/lit8 v21, v17, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto/16 :goto_ff

    .line 916
    .end local v3           #controls:[Ljava/lang/String;
    .end local v7           #ex:Ljava/lang/NumberFormatException;
    .end local v8           #i:I
    .end local v12           #noCache:Z
    .end local v14           #s:Ljava/lang/String;
    .end local v17           #separator:I
    :cond_185
    const-string/jumbo v18, "no-cache"

    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getPragma()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_198

    .line 917
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    .line 922
    :cond_198
    iget-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-nez v18, :cond_1b

    .line 923
    iget v0, v13, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    move/from16 v18, v0

    const/16 v19, 0x12d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1b9

    .line 926
    const-wide v18, 0x7fffffffffffffffL

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto/16 :goto_1b

    .line 927
    :cond_1b9
    iget v0, v13, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    move/from16 v18, v0

    const/16 v19, 0x12e

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1d1

    iget v0, v13, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    move/from16 v18, v0

    const/16 v19, 0x133

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d9

    .line 929
    :cond_1d1
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto/16 :goto_1b

    .line 930
    :cond_1d9
    iget-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_203

    .line 937
    const-string/jumbo v18, "text/html"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1fb

    .line 938
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/32 v20, 0x5265c00

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto/16 :goto_1b

    .line 942
    :cond_1fb
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto/16 :goto_1b

    .line 951
    :cond_203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/32 v20, 0x5265c00

    add-long v10, v18, v20

    .line 953
    .local v10, lastmod:J
    :try_start_20c
    iget-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/net/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J
    :try_end_213
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20c .. :try_end_213} :catch_230

    move-result-wide v10

    .line 957
    :goto_214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v4, v18, v10

    .line 958
    .local v4, difference:J
    const-wide/16 v18, 0x0

    cmp-long v18, v4, v18

    if-lez v18, :cond_24e

    .line 959
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x5

    div-long v20, v4, v20

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto/16 :goto_1b

    .line 954
    .end local v4           #difference:J
    :catch_230
    move-exception v7

    .line 955
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v18, "cache"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "illegal lastModified: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v13, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_214

    .line 963
    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v4       #difference:J
    :cond_24e
    iput-wide v10, v13, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto/16 :goto_1b
.end method

.method static removeAllCacheFiles()Z
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 610
    sget-object v1, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    if-nez v1, :cond_18

    .line 613
    sget-boolean v1, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v1, :cond_15

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 616
    :cond_15
    sput-boolean v3, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    .line 646
    .local v0, clearCache:Ljava/lang/Runnable;
    :goto_17
    return v3

    .line 620
    .end local v0           #clearCache:Ljava/lang/Runnable;
    :cond_18
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-nez v1, :cond_27

    .line 621
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    .line 624
    :cond_27
    new-instance v0, Landroid/webkit/CacheManager$1;

    invoke-direct {v0}, Landroid/webkit/CacheManager$1;-><init>()V

    .line 645
    .restart local v0       #clearCache:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_17
.end method

.method static saveCacheFile(Ljava/lang/String;JLandroid/webkit/CacheManager$CacheResult;)V
    .registers 10
    .parameter "url"
    .parameter "postIdentifier"
    .parameter "cacheRet"

    .prologue
    const-wide/16 v4, 0x0

    .line 545
    :try_start_2
    iget-object v2, p3, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_17

    .line 550
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 560
    sget-boolean v2, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v2, :cond_19

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 546
    :catch_17
    move-exception v0

    .line 589
    :cond_18
    :goto_18
    return-void

    .line 563
    :cond_19
    iget-object v2, p3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 568
    iget v2, p3, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    invoke-static {v2}, Landroid/webkit/CacheManager;->isCachableRedirect(I)Z

    move-result v1

    .line 569
    .local v1, redirect:Z
    if-eqz v1, :cond_2f

    .line 571
    iput-wide v4, p3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    .line 572
    const-string v2, ""

    iput-object v2, p3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 574
    :cond_2f
    if-nez v1, :cond_37

    iget-wide v2, p3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3f

    :cond_37
    iget-object v2, p3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 580
    :cond_3f
    iget-wide v2, p3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18

    .line 584
    sget-object v2, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-static {p0, p1, p2}, Landroid/webkit/CacheManager;->getDatabaseKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Landroid/webkit/WebViewDatabase;->addCache(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V

    goto :goto_18
.end method

.method public static saveCacheFile(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V
    .registers 4
    .parameter "url"
    .parameter "cacheRet"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 539
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/webkit/CacheManager;->saveCacheFile(Ljava/lang/String;JLandroid/webkit/CacheManager$CacheResult;)V

    .line 540
    return-void
.end method

.method static setCacheDisabled(Z)V
    .registers 2
    .parameter "disabled"

    .prologue
    .line 265
    sget-boolean v0, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 267
    :cond_10
    sget-boolean v0, Landroid/webkit/CacheManager;->mDisabled:Z

    if-ne p0, v0, :cond_15

    .line 274
    :cond_14
    :goto_14
    return-void

    .line 270
    :cond_15
    sput-boolean p0, Landroid/webkit/CacheManager;->mDisabled:Z

    .line 271
    sget-boolean v0, Landroid/webkit/CacheManager;->mDisabled:Z

    if-eqz v0, :cond_14

    .line 272
    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    goto :goto_14
.end method

.method private static setupFiles(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V
    .registers 13
    .parameter "url"
    .parameter "cacheRet"

    .prologue
    const/16 v10, 0x8

    .line 713
    sget-boolean v6, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v6, :cond_12

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v6

    if-eqz v6, :cond_12

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 723
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 724
    .local v2, hashCode:I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 725
    .local v5, ret:Ljava/lang/StringBuffer;
    invoke-static {v2, v5}, Landroid/webkit/CacheManager;->appendAsHex(ILjava/lang/StringBuffer;)V

    .line 726
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 727
    .local v4, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-direct {v1, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 729
    .local v1, file:Ljava/io/File;
    const/4 v0, 0x1

    .line 736
    .local v0, checkOldPath:Z
    :goto_2a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 737
    if-eqz v0, :cond_5c

    .line 738
    sget-object v6, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v6, p0}, Landroid/webkit/WebViewDatabase;->getCache(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v3

    .line 739
    .local v3, oldResult:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v3, :cond_5b

    iget-wide v6, v3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_5b

    .line 740
    iget-object v6, v3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 741
    iget-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 756
    .end local v3           #oldResult:Landroid/webkit/CacheManager$CacheResult;
    :cond_4c
    :goto_4c
    iput-object v4, p1, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 757
    iput-object v1, p1, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    .line 778
    return-void

    .line 743
    .restart local v3       #oldResult:Landroid/webkit/CacheManager$CacheResult;
    :cond_51
    iget-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 744
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-direct {v1, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 746
    .restart local v1       #file:Ljava/io/File;
    goto :goto_4c

    .line 748
    :cond_5b
    const/4 v0, 0x0

    .line 750
    .end local v3           #oldResult:Landroid/webkit/CacheManager$CacheResult;
    :cond_5c
    new-instance v5, Ljava/lang/StringBuffer;

    .end local v5           #ret:Ljava/lang/StringBuffer;
    invoke-direct {v5, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 751
    .restart local v5       #ret:Ljava/lang/StringBuffer;
    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v5}, Landroid/webkit/CacheManager;->appendAsHex(ILjava/lang/StringBuffer;)V

    .line 752
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 753
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-direct {v1, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1       #file:Ljava/io/File;
    goto :goto_2a
.end method

.method public static startCacheTransaction()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method static startTransaction()Z
    .registers 1

    .prologue
    .line 315
    sget-boolean v0, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 317
    :cond_10
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->startCacheTransaction()Z

    move-result v0

    return v0
.end method

.method static trimCacheIfNeeded()V
    .registers 10

    .prologue
    .line 650
    sget-boolean v6, Landroid/webkit/CacheManager;->$assertionsDisabled:Z

    if-nez v6, :cond_10

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v6

    if-eqz v6, :cond_10

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 652
    :cond_10
    sget-object v6, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v6}, Landroid/webkit/WebViewDatabase;->getCacheTotalSize()J

    move-result-wide v6

    sget-wide v8, Landroid/webkit/CacheManager;->CACHE_THRESHOLD:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_49

    .line 653
    sget-object v6, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    sget-wide v7, Landroid/webkit/CacheManager;->CACHE_TRIM_AMOUNT:J

    invoke-virtual {v6, v7, v8}, Landroid/webkit/WebViewDatabase;->trimCache(J)Ljava/util/List;

    move-result-object v3

    .line 654
    .local v3, pathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 655
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_29
    if-ge v2, v4, :cond_41

    .line 656
    new-instance v0, Ljava/io/File;

    sget-object v7, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v0, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 657
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_3e

    .line 655
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 664
    .end local v0           #f:Ljava/io/File;
    :cond_41
    sget-object v6, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v6}, Landroid/webkit/WebViewDatabase;->getAllCacheFileNames()Ljava/util/List;

    move-result-object v1

    .line 665
    .local v1, fileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_4a

    .line 686
    :cond_49
    return-void

    .line 666
    :cond_4a
    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    new-instance v7, Landroid/webkit/CacheManager$2;

    invoke-direct {v7, v1}, Landroid/webkit/CacheManager$2;-><init>(Ljava/util/List;)V

    invoke-virtual {v6, v7}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v5

    .line 675
    .local v5, toDelete:[Ljava/lang/String;
    if-eqz v5, :cond_49

    .line 676
    array-length v4, v5

    .line 677
    const/4 v2, 0x0

    :goto_59
    if-ge v2, v4, :cond_49

    .line 678
    new-instance v0, Ljava/io/File;

    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    aget-object v7, v5, v2

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 679
    .restart local v0       #f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_6a

    .line 677
    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_59
.end method
