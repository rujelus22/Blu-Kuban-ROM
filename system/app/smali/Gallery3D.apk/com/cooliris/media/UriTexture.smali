.class public Lcom/cooliris/media/UriTexture;
.super Lcom/cooliris/media/Texture;
.source "UriTexture.java"


# static fields
.field public static final HTTP_PARAMS:Lorg/apache/http/params/HttpParams;

.field public static final SCHEME_REGISTRY:Lorg/apache/http/conn/scheme/SchemeRegistry;

.field public static final URI_CACHE:Ljava/lang/String;

.field private static mSuccessDecode:Z


# instance fields
.field protected mCacheId:J

.field private mConnectionManager:Lorg/apache/http/impl/conn/SingleClientConnManager;

.field private mNeedToZoom:Z

.field protected mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v4, 0x4e20

    const/4 v3, 0x0

    .line 80
    const-string v2, "hires-image-cache"

    invoke-static {v2}, Lcom/cooliris/cache/CacheService;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/cooliris/media/UriTexture;->URI_CACHE:Ljava/lang/String;

    .line 86
    sput-boolean v3, Lcom/cooliris/media/UriTexture;->mSuccessDecode:Z

    .line 98
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 99
    .local v0, params:Lorg/apache/http/params/HttpParams;
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 100
    invoke-static {v0, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 101
    invoke-static {v0, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 102
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 103
    const-string v2, "Cooliris-ImageDownload"

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 104
    sput-object v0, Lcom/cooliris/media/UriTexture;->HTTP_PARAMS:Lorg/apache/http/params/HttpParams;

    .line 107
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    sput-object v2, Lcom/cooliris/media/UriTexture;->SCHEME_REGISTRY:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 108
    sget-object v2, Lcom/cooliris/media/UriTexture;->SCHEME_REGISTRY:Lorg/apache/http/conn/scheme/SchemeRegistry;

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 114
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/cooliris/media/UriTexture;->URI_CACHE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, uri_cache:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "imageUri"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/cooliris/media/Texture;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/media/UriTexture;->mNeedToZoom:Z

    .line 119
    iput-object p1, p0, Lcom/cooliris/media/UriTexture;->mUri:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .parameter "imageUri"
    .parameter "NeedToZoom"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/cooliris/media/Texture;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/media/UriTexture;->mNeedToZoom:Z

    .line 126
    iput-object p1, p0, Lcom/cooliris/media/UriTexture;->mUri:Ljava/lang/String;

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/UriTexture;->mNeedToZoom:Z

    .line 128
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/cooliris/media/UriTexture;->mSuccessDecode:Z

    return v0
.end method

.method public static final createFilePathFromCrc64(JI)Ljava/lang/String;
    .registers 5
    .parameter "crc64"
    .parameter "maxResolution"

    .prologue
    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/cooliris/media/UriTexture;->URI_CACHE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createFromCache(JI)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "crc64"
    .parameter "maxResolution"

    .prologue
    const/4 v5, 0x0

    .line 588
    const/4 v3, 0x0

    .line 589
    .local v3, file:Ljava/lang/String;
    const/4 v0, 0x0

    .line 590
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_3
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 591
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 594
    sget-boolean v6, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v6, :cond_33

    .line 596
    invoke-static {p2}, Lcom/quramsoft/xiv/XIVUtils;->getPreferedConfig(I)Landroid/graphics/Bitmap$Config;

    move-result-object v6

    iput-object v6, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 597
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 604
    :goto_18
    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-eqz v6, :cond_32

    .line 605
    invoke-static {p0, p1, p2}, Lcom/cooliris/media/UriTexture;->createFilePathFromCrc64(JI)Ljava/lang/String;

    move-result-object v3

    .line 607
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 608
    .local v1, cfile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 610
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v5, v0

    .line 619
    .end local v1           #cfile:Ljava/io/File;
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_32
    :goto_32
    return-object v5

    .line 599
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_33
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 600
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3a} :catch_3b

    goto :goto_18

    .line 618
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_3b
    move-exception v2

    .line 619
    .local v2, e:Ljava/lang/Exception;
    goto :goto_32
.end method

.method public static final createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "context"
    .parameter "uri"
    .parameter "maxResolutionX"
    .parameter "maxResolutionY"
    .parameter "cacheId"
    .parameter "connectionManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/cooliris/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static final createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;Z)Landroid/graphics/Bitmap;
    .registers 49
    .parameter "context"
    .parameter "uri"
    .parameter "maxResolutionX"
    .parameter "maxResolutionY"
    .parameter "cacheId"
    .parameter "connectionManager"
    .parameter "isPreview"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v30, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 157
    .local v30, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    sput-boolean v3, Lcom/cooliris/media/UriTexture;->mSuccessDecode:Z

    .line 158
    const/4 v3, 0x0

    move-object/from16 v0, v30

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 159
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v36

    .line 162
    .local v36, saveHigeResCache:Ljava/lang/Boolean;
    sget-boolean v3, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v3, :cond_a6

    .line 164
    invoke-static/range {p2 .. p2}, Lcom/quramsoft/xiv/XIVUtils;->getPreferedConfig(I)Landroid/graphics/Bitmap$Config;

    move-result-object v3

    move-object/from16 v0, v30

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 171
    :goto_1e
    const-wide/16 v17, 0x0

    .line 172
    .local v17, crc64:J
    const/4 v9, 0x0

    .line 173
    .local v9, bitmap:Landroid/graphics/Bitmap;
    const/16 v37, 0x0

    .line 174
    .local v37, strPath:Ljava/lang/String;
    const/16 v25, 0x0

    .line 176
    .local v25, isDRM:Z
    const/16 v22, 0x1

    .line 178
    .local v22, hasValidRights:Z
    const-string v3, "content"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 180
    move-wide/from16 v17, p4

    .line 185
    :goto_33
    const-string v3, "content"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_47

    const-string v3, "file://"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b9

    :cond_47
    const/16 v26, 0x1

    .line 186
    .local v26, local:Z
    :goto_49
    if-eqz v26, :cond_92

    .line 187
    const-string v3, "content"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 188
    const/16 v19, 0x0

    .line 191
    .local v19, cursor:Landroid/database/Cursor;
    :try_start_57
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_data"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 194
    if-eqz v19, :cond_81

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_81

    .line 195
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 196
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_80
    .catchall {:try_start_57 .. :try_end_80} :catchall_cc
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_80} :catch_bc

    move-result-object v37

    .line 201
    :cond_81
    if-eqz v19, :cond_86

    .line 202
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 210
    .end local v19           #cursor:Landroid/database/Cursor;
    :cond_86
    :goto_86
    invoke-static/range {v37 .. v37}, Lcom/cooliris/drm/DrmChecker;->isDrm(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 211
    const/16 v25, 0x1

    .line 212
    invoke-static/range {v37 .. v37}, Lcom/cooliris/drm/DrmChecker;->hasDisplayRights(Ljava/lang/String;)Z

    move-result v22

    .line 218
    :cond_92
    sget-boolean v3, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v3, :cond_98

    if-nez v26, :cond_db

    .line 219
    :cond_98
    if-nez v25, :cond_db

    .line 220
    move-wide/from16 v0, v17

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/cooliris/media/UriTexture;->createFromCache(JI)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 221
    if-eqz v9, :cond_db

    move-object v10, v9

    .line 451
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .end local p0
    .local v10, bitmap:Landroid/graphics/Bitmap;
    :goto_a5
    return-object v10

    .line 166
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v17           #crc64:J
    .end local v22           #hasValidRights:Z
    .end local v25           #isDRM:Z
    .end local v26           #local:Z
    .end local v37           #strPath:Ljava/lang/String;
    .restart local p0
    :cond_a6
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v30

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 167
    const/4 v3, 0x0

    move-object/from16 v0, v30

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    goto/16 :goto_1e

    .line 182
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    .restart local v17       #crc64:J
    .restart local v22       #hasValidRights:Z
    .restart local v25       #isDRM:Z
    .restart local v37       #strPath:Ljava/lang/String;
    :cond_b3
    invoke-static/range {p1 .. p1}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v17

    goto/16 :goto_33

    .line 185
    :cond_b9
    const/16 v26, 0x0

    goto :goto_49

    .line 198
    .restart local v19       #cursor:Landroid/database/Cursor;
    .restart local v26       #local:Z
    :catch_bc
    move-exception v20

    .line 199
    .local v20, e:Ljava/lang/Exception;
    :try_start_bd
    const-string v3, "UriTexture"

    const-string v4, "createFromUri: Exception"

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c6
    .catchall {:try_start_bd .. :try_end_c6} :catchall_cc

    .line 201
    if-eqz v19, :cond_86

    .line 202
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_86

    .line 201
    .end local v20           #e:Ljava/lang/Exception;
    :catchall_cc
    move-exception v3

    if-eqz v19, :cond_d2

    .line 202
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_d2
    throw v3

    .line 206
    .end local v19           #cursor:Landroid/database/Cursor;
    :cond_d3
    const/4 v3, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v37

    goto :goto_86

    .line 227
    :cond_db
    sget-boolean v3, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v3, :cond_11b

    if-nez v25, :cond_11b

    const-string v3, "content"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f5

    const-string v3, "file://"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 229
    :cond_f5
    invoke-static {}, Lcom/quramsoft/xiv/XIVErrorInfo;->createXIVErrorInfo()Lcom/quramsoft/xiv/XIVErrorInfo;

    move-result-object v8

    .local v8, errInfo:Lcom/quramsoft/xiv/XIVErrorInfo;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v30

    move/from16 v6, p2

    move/from16 v7, p3

    .line 230
    invoke-static/range {v3 .. v8}, Lcom/quramsoft/xiv/XIVUtils;->decodeFromUri(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;IILcom/quramsoft/xiv/XIVErrorInfo;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 234
    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->isUseCancelDecoding()Z

    move-result v3

    if-eqz v3, :cond_117

    .line 235
    invoke-virtual {v8}, Lcom/quramsoft/xiv/XIVErrorInfo;->getResult()Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;

    move-result-object v3

    sget-object v4, Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;->RESULT_SUCCESS:Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;

    if-ne v3, v4, :cond_11b

    move-object v10, v9

    .line 236
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_a5

    .line 238
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    :cond_117
    if-eqz v9, :cond_11b

    move-object v10, v9

    .line 239
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_a5

    .line 245
    .end local v8           #errInfo:Lcom/quramsoft/xiv/XIVErrorInfo;
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    :cond_11b
    const/16 v35, 0x1

    .line 246
    .local v35, sampleSize:I
    if-eqz v26, :cond_2d0

    .line 247
    const/4 v11, 0x0

    .line 249
    .local v11, bufferedInput:Ljava/io/BufferedInputStream;
    const/4 v3, 0x1

    move-object/from16 v0, v30

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 252
    if-nez v25, :cond_147

    .line 253
    new-instance v11, Ljava/io/BufferedInputStream;

    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x4000

    invoke-direct {v11, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 255
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    const v3, 0x7fffffff

    invoke-virtual {v11, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 256
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-static {v11, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 262
    :cond_147
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v40, v0

    .line 263
    .local v40, width:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v23, v0

    .line 266
    .local v23, height:I
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v28, v0

    .line 267
    .local v28, maxResX:F
    move/from16 v0, v40

    move/from16 v1, v23

    if-le v0, v1, :cond_163

    .line 268
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v28, v0

    .line 270
    :cond_163
    move/from16 v0, p2

    int-to-float v3, v0

    cmpl-float v3, v28, v3

    if-nez v3, :cond_258

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v29, v0

    .line 271
    .local v29, maxResY:F
    :goto_16f
    move/from16 v0, v40

    int-to-float v3, v0

    div-float v3, v3, v28

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    move/from16 v32, v0

    .line 272
    .local v32, ratioX:I
    move/from16 v0, v23

    int-to-float v3, v0

    div-float v3, v3, v29

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    move/from16 v33, v0

    .line 273
    .local v33, ratioY:I
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v31

    .line 274
    .local v31, ratio:I
    invoke-static/range {v31 .. v31}, Lcom/cooliris/media/Shared;->nextPowerOf2(I)I

    move-result v31

    .line 275
    move/from16 v35, v31

    .line 279
    invoke-static {}, Lcom/quramsoft/xiv/XIVUtils;->getInstance()Lcom/quramsoft/xiv/XIVUtils;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/quramsoft/xiv/XIVUtils;->needDither(I)Z

    move-result v3

    move-object/from16 v0, v30

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 282
    const/4 v3, 0x0

    move-object/from16 v0, v30

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 283
    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 284
    new-instance v38, Lcom/cooliris/media/UriTexture$1;

    const-string v3, "BitmapTimeoutThread"

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-direct {v0, v3, v1}, Lcom/cooliris/media/UriTexture$1;-><init>(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V

    .line 302
    .local v38, timeoutThread:Ljava/lang/Thread;
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Thread;->start()V

    .line 303
    if-eqz v25, :cond_289

    .line 306
    if-eqz v22, :cond_26c

    .line 307
    if-nez p7, :cond_25f

    const/16 v3, 0x400

    move/from16 v0, p2

    if-ne v0, v3, :cond_25f

    invoke-static/range {p0 .. p0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cooliris/app/App;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v3

    if-eqz v3, :cond_25f

    invoke-static/range {p0 .. p0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cooliris/app/App;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v3

    iget-boolean v3, v3, Lcom/cooliris/media/GridLayer;->mbFirstDecode:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_25f

    .line 310
    const-string v3, "UriTexture"

    const-string v4, "UriTexture::createFromUri: real decode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v3, 0x0

    move-object/from16 v0, v30

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->isPreview:Z

    .line 312
    invoke-static/range {p0 .. p0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cooliris/app/App;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/cooliris/media/GridLayer;->mbFirstDecode:Z

    .line 317
    :goto_1f4
    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 433
    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v23           #height:I
    .end local v28           #maxResX:F
    .end local v29           #maxResY:F
    .end local v31           #ratio:I
    .end local v32           #ratioX:I
    .end local v33           #ratioY:I
    .end local v38           #timeoutThread:Ljava/lang/Thread;
    .end local v40           #width:I
    .end local p0
    :cond_1fc
    :goto_1fc
    sget-boolean v3, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v3, :cond_206

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_233

    .line 434
    :cond_206
    const/4 v3, 0x1

    move/from16 v0, v35

    if-gt v0, v3, :cond_20d

    if-nez v26, :cond_22e

    :cond_20d
    if-eqz v9, :cond_22e

    .line 435
    invoke-static {}, Lcom/cooliris/cache/CacheService;->checkLowStorageforCacheService()Z

    move-result v3

    if-eqz v3, :cond_430

    .line 436
    if-nez v25, :cond_22e

    const/16 v3, 0x400

    move/from16 v0, p2

    if-ne v0, v3, :cond_22e

    const-string v3, "android.resource://"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_22e

    .line 438
    move-wide/from16 v0, v17

    move/from16 v2, p2

    invoke-static {v0, v1, v9, v2}, Lcom/cooliris/media/UriTexture;->writeToCache(JLandroid/graphics/Bitmap;I)V

    .line 444
    :cond_22e
    :goto_22e
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v36

    .line 448
    :cond_233
    if-nez v9, :cond_255

    .line 449
    const-string v3, "UriTexture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bitmap is null! ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_255
    move-object v10, v9

    .line 451
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_a5

    .line 270
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v23       #height:I
    .restart local v28       #maxResX:F
    .restart local v40       #width:I
    .restart local p0
    :cond_258
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v29, v0

    goto/16 :goto_16f

    .line 314
    .restart local v29       #maxResY:F
    .restart local v31       #ratio:I
    .restart local v32       #ratioX:I
    .restart local v33       #ratioY:I
    .restart local v38       #timeoutThread:Ljava/lang/Thread;
    :cond_25f
    const-string v3, "UriTexture"

    const-string v4, "UriTexture::createFromUri: decode for thumbnail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v3, 0x1

    move-object/from16 v0, v30

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->isPreview:Z

    goto :goto_1f4

    .line 319
    :cond_26c
    const-string v3, "UriTexture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v9, 0x0

    goto/16 :goto_1fc

    .line 323
    :cond_289
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    .line 324
    new-instance v11, Ljava/io/BufferedInputStream;

    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x4000

    invoke-direct {v11, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 327
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-static {v11, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 328
    if-eqz v9, :cond_2b0

    .line 329
    const/4 v3, 0x1

    sput-boolean v3, Lcom/cooliris/media/UriTexture;->mSuccessDecode:Z

    .line 338
    :cond_2ab
    :goto_2ab
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    goto/16 :goto_1fc

    .line 331
    :cond_2b0
    const-string v3, "content://media"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2ab

    const-string v3, "file://"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2ab

    .line 334
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02006b

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_2ab

    .line 340
    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v23           #height:I
    .end local v28           #maxResX:F
    .end local v29           #maxResY:F
    .end local v31           #ratio:I
    .end local v32           #ratioX:I
    .end local v33           #ratioY:I
    .end local v38           #timeoutThread:Ljava/lang/Thread;
    .end local v40           #width:I
    :cond_2d0
    const-string v3, "android.resource://"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f7

    .line 341
    const-string v3, "android.resource://com.sec.android.app.twwallpaperchooser"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2ea

    .line 342
    invoke-static/range {p0 .. p1}, Lcom/cooliris/media/UriTexture;->getBitmapFromOtherApp(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    goto/16 :goto_1fc

    .line 344
    :cond_2ea
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020060

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    goto/16 :goto_1fc

    .line 349
    :cond_2f7
    const/4 v11, 0x0

    .line 350
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    const/16 v16, 0x0

    .line 352
    .local v16, contentInput:Ljava/io/InputStream;
    if-nez p6, :cond_3a9

    .line 354
    :try_start_2fc
    new-instance v27, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v3, Lcom/cooliris/media/UriTexture;->HTTP_PARAMS:Lorg/apache/http/params/HttpParams;

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 355
    .local v27, mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v34, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_30e
    .catchall {:try_start_2fc .. :try_end_30e} :catchall_39d
    .catch Ljava/io/IOException; {:try_start_2fc .. :try_end_30e} :catch_39b
    .catch Ljava/lang/Exception; {:try_start_2fc .. :try_end_30e} :catch_3d5

    .line 357
    .local v34, request:Lorg/apache/http/client/methods/HttpUriRequest;
    const/16 v24, 0x0

    .line 359
    .local v24, httpResponse:Lorg/apache/http/HttpResponse;
    :try_start_310
    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_317
    .catchall {:try_start_310 .. :try_end_317} :catchall_39d
    .catch Ljava/io/IOException; {:try_start_310 .. :try_end_317} :catch_399
    .catch Ljava/lang/Exception; {:try_start_310 .. :try_end_317} :catch_3d5

    move-result-object v24

    .line 364
    :try_start_318
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v21

    .line 365
    .local v21, entity:Lorg/apache/http/HttpEntity;
    if-eqz v21, :cond_322

    .line 368
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v16

    .line 390
    :cond_322
    :goto_322
    if-eqz v16, :cond_424

    .line 391
    const-string v3, "UriTexture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createFromUri: before decodeStream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance v12, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_347
    .catchall {:try_start_318 .. :try_end_347} :catchall_39d
    .catch Ljava/io/IOException; {:try_start_318 .. :try_end_347} :catch_39b
    .catch Ljava/lang/Exception; {:try_start_318 .. :try_end_347} :catch_3d5

    .line 394
    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .local v12, bufferedInput:Ljava/io/BufferedInputStream;
    const/4 v3, 0x0

    :try_start_348
    move-object/from16 v0, v30

    invoke-static {v12, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 396
    const/4 v13, 0x0

    .local v13, cnt:I
    move v14, v13

    .line 397
    .end local v13           #cnt:I
    .local v14, cnt:I
    :goto_350
    if-nez v9, :cond_3ff

    add-int/lit8 v13, v14, 0x1

    .end local v14           #cnt:I
    .restart local v13       #cnt:I
    const/16 v3, 0xa

    if-ge v14, v3, :cond_400

    .line 398
    const-string v3, "UriTexture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "5.17     Picasa decodeStream fail cnt = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v3, Ljava/net/URI;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v39

    .line 400
    .local v39, url:Ljava/net/URL;
    invoke-virtual/range {v39 .. v39}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    .line 401
    .local v15, conn:Ljava/net/URLConnection;
    invoke-virtual {v15}, Ljava/net/URLConnection;->connect()V

    .line 402
    invoke-virtual {v15}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    .line 404
    if-eqz v16, :cond_446

    .line 405
    new-instance v11, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_38f
    .catchall {:try_start_348 .. :try_end_38f} :catchall_439
    .catch Ljava/io/IOException; {:try_start_348 .. :try_end_38f} :catch_440
    .catch Ljava/lang/Exception; {:try_start_348 .. :try_end_38f} :catch_43d

    .line 406
    .end local v12           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    const/4 v3, 0x0

    :try_start_390
    move-object/from16 v0, v30

    invoke-static {v11, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    :goto_396
    move v14, v13

    .end local v13           #cnt:I
    .restart local v14       #cnt:I
    move-object v12, v11

    .line 409
    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v12       #bufferedInput:Ljava/io/BufferedInputStream;
    goto :goto_350

    .line 360
    .end local v12           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v14           #cnt:I
    .end local v15           #conn:Ljava/net/URLConnection;
    .end local v21           #entity:Lorg/apache/http/HttpEntity;
    .end local v39           #url:Ljava/net/URL;
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    :catch_399
    move-exception v20

    .line 362
    .local v20, e:Ljava/io/IOException;
    throw v20
    :try_end_39b
    .catchall {:try_start_390 .. :try_end_39b} :catchall_39d
    .catch Ljava/io/IOException; {:try_start_390 .. :try_end_39b} :catch_39b
    .catch Ljava/lang/Exception; {:try_start_390 .. :try_end_39b} :catch_3d5

    .line 419
    .end local v20           #e:Ljava/io/IOException;
    .end local v24           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v27           #mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v34           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_39b
    move-exception v20

    .line 420
    .end local p0
    .restart local v20       #e:Ljava/io/IOException;
    :goto_39c
    :try_start_39c
    throw v20
    :try_end_39d
    .catchall {:try_start_39c .. :try_end_39d} :catchall_39d

    .line 425
    .end local v20           #e:Ljava/io/IOException;
    :catchall_39d
    move-exception v3

    :goto_39e
    invoke-static {v11}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 426
    if-eqz v9, :cond_3a8

    .line 427
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v36

    :cond_3a8
    throw v3

    .line 372
    .restart local p0
    :cond_3a9
    :try_start_3a9
    new-instance v27, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v3, Lcom/cooliris/media/UriTexture;->HTTP_PARAMS:Lorg/apache/http/params/HttpParams;

    move-object/from16 v0, v27

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 374
    .restart local v27       #mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v34, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_3bd
    .catchall {:try_start_3a9 .. :try_end_3bd} :catchall_39d
    .catch Ljava/io/IOException; {:try_start_3a9 .. :try_end_3bd} :catch_39b
    .catch Ljava/lang/Exception; {:try_start_3a9 .. :try_end_3bd} :catch_3d5

    .line 376
    .restart local v34       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    const/16 v24, 0x0

    .line 378
    .restart local v24       #httpResponse:Lorg/apache/http/HttpResponse;
    :try_start_3bf
    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_3c6
    .catchall {:try_start_3bf .. :try_end_3c6} :catchall_39d
    .catch Ljava/io/IOException; {:try_start_3bf .. :try_end_3c6} :catch_3d3
    .catch Ljava/lang/Exception; {:try_start_3bf .. :try_end_3c6} :catch_3d5

    move-result-object v24

    .line 383
    :try_start_3c7
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v21

    .line 384
    .restart local v21       #entity:Lorg/apache/http/HttpEntity;
    if-eqz v21, :cond_322

    .line 387
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v16

    goto/16 :goto_322

    .line 379
    .end local v21           #entity:Lorg/apache/http/HttpEntity;
    :catch_3d3
    move-exception v20

    .line 381
    .restart local v20       #e:Ljava/io/IOException;
    throw v20
    :try_end_3d5
    .catchall {:try_start_3c7 .. :try_end_3d5} :catchall_39d
    .catch Ljava/io/IOException; {:try_start_3c7 .. :try_end_3d5} :catch_39b
    .catch Ljava/lang/Exception; {:try_start_3c7 .. :try_end_3d5} :catch_3d5

    .line 421
    .end local v20           #e:Ljava/io/IOException;
    .end local v24           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v27           #mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v34           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_3d5
    move-exception v20

    .line 422
    .end local p0
    .local v20, e:Ljava/lang/Exception;
    :goto_3d6
    :try_start_3d6
    const-string v3, "UriTexture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading image from uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3f3
    .catchall {:try_start_3d6 .. :try_end_3f3} :catchall_39d

    .line 425
    invoke-static {v11}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 426
    if-eqz v9, :cond_1fc

    .line 427
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v36

    goto/16 :goto_1fc

    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v20           #e:Ljava/lang/Exception;
    .restart local v12       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v14       #cnt:I
    .restart local v21       #entity:Lorg/apache/http/HttpEntity;
    .restart local v24       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v27       #mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v34       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local p0
    :cond_3ff
    move v13, v14

    .line 411
    .end local v14           #cnt:I
    .restart local v13       #cnt:I
    :cond_400
    :try_start_400
    move-object/from16 v0, p0

    instance-of v3, v0, Lcom/cooliris/media/Gallery;

    if-eqz v3, :cond_444

    .line 412
    move-object/from16 v0, p0

    check-cast v0, Lcom/cooliris/media/Gallery;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/cooliris/media/Gallery;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v3

    if-eqz v3, :cond_444

    check-cast p0, Lcom/cooliris/media/Gallery;

    .end local p0
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/Gallery;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v3

    if-eqz v3, :cond_444

    .line 415
    const/16 v3, 0x200

    invoke-static {v9, v3}, Lcom/cooliris/media/Utils;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_422
    .catchall {:try_start_400 .. :try_end_422} :catchall_439
    .catch Ljava/io/IOException; {:try_start_400 .. :try_end_422} :catch_440
    .catch Ljava/lang/Exception; {:try_start_400 .. :try_end_422} :catch_43d

    move-result-object v9

    move-object v11, v12

    .line 425
    .end local v12           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v13           #cnt:I
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    :cond_424
    :goto_424
    invoke-static {v11}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 426
    if-eqz v9, :cond_1fc

    .line 427
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v36

    goto/16 :goto_1fc

    .line 440
    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v16           #contentInput:Ljava/io/InputStream;
    .end local v21           #entity:Lorg/apache/http/HttpEntity;
    .end local v24           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v27           #mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v34           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_430
    const-string v3, "UriTexture"

    const-string v4, "do not save hi-res-cache as low Storage"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22e

    .line 425
    .restart local v12       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v16       #contentInput:Ljava/io/InputStream;
    .restart local v21       #entity:Lorg/apache/http/HttpEntity;
    .restart local v24       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v27       #mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v34       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    :catchall_439
    move-exception v3

    move-object v11, v12

    .end local v12           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    goto/16 :goto_39e

    .line 421
    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v12       #bufferedInput:Ljava/io/BufferedInputStream;
    :catch_43d
    move-exception v20

    move-object v11, v12

    .end local v12           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    goto :goto_3d6

    .line 419
    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v12       #bufferedInput:Ljava/io/BufferedInputStream;
    :catch_440
    move-exception v20

    move-object v11, v12

    .end local v12           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    goto/16 :goto_39c

    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v12       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v13       #cnt:I
    :cond_444
    move-object v11, v12

    .end local v12           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    goto :goto_424

    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v12       #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v15       #conn:Ljava/net/URLConnection;
    .restart local v39       #url:Ljava/net/URL;
    .restart local p0
    :cond_446
    move-object v11, v12

    .end local v12           #bufferedInput:Ljava/io/BufferedInputStream;
    .restart local v11       #bufferedInput:Ljava/io/BufferedInputStream;
    goto/16 :goto_396
.end method

.method private static getBitmapFromOtherApp(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 455
    const/4 v0, 0x0

    .line 458
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/16 v6, 0x2f

    :try_start_3
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 459
    .local v4, resName:Ljava/lang/String;
    const-string v6, "drawable"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 460
    .local v5, type:Ljava/lang/String;
    const-string v6, "android.resource://"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, pkgName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 466
    .local v2, otherAppContext:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_71
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_71} :catch_73

    move-result-object v0

    .line 472
    .end local v2           #otherAppContext:Landroid/content/Context;
    .end local v3           #pkgName:Ljava/lang/String;
    .end local v4           #resName:Ljava/lang/String;
    .end local v5           #type:Ljava/lang/String;
    :goto_72
    return-object v0

    .line 468
    :catch_73
    move-exception v1

    .line 469
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_72
.end method

.method public static invalidateCache(JI)V
    .registers 9
    .parameter "crc64"
    .parameter "maxResolution"

    .prologue
    .line 689
    invoke-static {p0, p1, p2}, Lcom/cooliris/media/UriTexture;->createFilePathFromCrc64(JI)Ljava/lang/String;

    move-result-object v1

    .line 690
    .local v1, file:Ljava/lang/String;
    if-eqz v1, :cond_38

    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-eqz v3, :cond_38

    .line 692
    :try_start_c
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 693
    .local v2, fileC:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 694
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 695
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v3

    if-nez v3, :cond_38

    .line 696
    const-string v3, "UriTexture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalidateCache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_38} :catch_39

    .line 703
    .end local v2           #fileC:Ljava/io/File;
    :cond_38
    :goto_38
    return-void

    .line 699
    :catch_39
    move-exception v0

    .line 700
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "UriTexture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot invalidateCache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method

.method public static isCached(JI)Z
    .registers 11
    .parameter "crc64"
    .parameter "maxResolution"

    .prologue
    const/4 v5, 0x0

    .line 561
    const/4 v1, 0x0

    .line 562
    .local v1, file:Ljava/lang/String;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 563
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 564
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 565
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 566
    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-eqz v6, :cond_25

    .line 567
    invoke-static {p0, p1, p2}, Lcom/cooliris/media/UriTexture;->createFilePathFromCrc64(JI)Ljava/lang/String;

    move-result-object v1

    .line 568
    const/4 v2, 0x0

    .line 570
    .local v2, is:Ljava/io/FileInputStream;
    :try_start_1a
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1f} :catch_2f

    .line 571
    .end local v2           #is:Ljava/io/FileInputStream;
    .local v3, is:Ljava/io/FileInputStream;
    const/4 v5, 0x1

    .line 576
    if-eqz v3, :cond_25

    .line 577
    :try_start_22
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    .line 583
    .end local v3           #is:Ljava/io/FileInputStream;
    :cond_25
    :goto_25
    return v5

    .line 578
    .restart local v3       #is:Ljava/io/FileInputStream;
    :catch_26
    move-exception v0

    .line 579
    .local v0, e:Ljava/io/IOException;
    const-string v6, "UriTexture"

    const-string v7, "Unable to close chunk file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 572
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_2f
    move-exception v0

    .line 576
    .local v0, e:Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_25

    .line 577
    :try_start_32
    throw v2
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_33} :catch_34

    goto :goto_25

    .line 578
    :catch_34
    move-exception v0

    .line 579
    .local v0, e:Ljava/io/IOException;
    const-string v6, "UriTexture"

    const-string v7, "Unable to close chunk file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 575
    .end local v0           #e:Ljava/io/IOException;
    :catchall_3d
    move-exception v5

    .line 576
    if-eqz v2, :cond_41

    .line 577
    :try_start_40
    throw v2
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_41} :catch_42

    .line 580
    :cond_41
    :goto_41
    throw v5

    .line 578
    :catch_42
    move-exception v0

    .line 579
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "UriTexture"

    const-string v7, "Unable to close chunk file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method

.method public static writeHttpDataInDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "context"
    .parameter "uri"
    .parameter "path"

    .prologue
    .line 624
    invoke-static {p1}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v4

    .line 625
    .local v4, crc64:J
    const/16 v0, 0x400

    invoke-static {v4, v5, v0}, Lcom/cooliris/media/UriTexture;->isCached(JI)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 628
    const/16 v2, 0x400

    const/16 v3, 0x400

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_13
    invoke-static/range {v0 .. v6}, Lcom/cooliris/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
    :try_end_16
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_16} :catch_68
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_6b
    .catch Ljava/net/URISyntaxException; {:try_start_13 .. :try_end_16} :catch_6e

    move-result-object v7

    .line 637
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_1c

    .line 638
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 641
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :cond_1c
    const/16 v0, 0x400

    invoke-static {v4, v5, v0}, Lcom/cooliris/media/UriTexture;->createFilePathFromCrc64(JI)Ljava/lang/String;

    move-result-object v10

    .line 643
    .local v10, fileString:Ljava/lang/String;
    :try_start_22
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 644
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    const-string v0, ""

    :goto_40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 647
    .local v12, newPath:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 648
    .local v11, newFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 649
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 650
    :cond_64
    invoke-static {v9, v11}, Lcom/cooliris/media/Utils;->Copy(Ljava/io/File;Ljava/io/File;)V

    .line 655
    .end local v9           #file:Ljava/io/File;
    .end local v10           #fileString:Ljava/lang/String;
    .end local v11           #newFile:Ljava/io/File;
    .end local v12           #newPath:Ljava/lang/String;
    :goto_67
    return-object v12

    .line 630
    :catch_68
    move-exception v8

    .line 631
    .local v8, e:Ljava/lang/OutOfMemoryError;
    const/4 v12, 0x0

    goto :goto_67

    .line 632
    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    :catch_6b
    move-exception v8

    .line 633
    .local v8, e:Ljava/io/IOException;
    const/4 v12, 0x0

    goto :goto_67

    .line 634
    .end local v8           #e:Ljava/io/IOException;
    :catch_6e
    move-exception v8

    .line 635
    .local v8, e:Ljava/net/URISyntaxException;
    const/4 v12, 0x0

    goto :goto_67

    .line 646
    .end local v8           #e:Ljava/net/URISyntaxException;
    .restart local v9       #file:Ljava/io/File;
    .restart local v10       #fileString:Ljava/lang/String;
    :cond_71
    const-string v0, "/"
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_73} :catch_76

    goto :goto_40

    .line 653
    :cond_74
    const/4 v12, 0x0

    goto :goto_67

    .line 654
    .end local v9           #file:Ljava/io/File;
    :catch_76
    move-exception v8

    .line 655
    .local v8, e:Ljava/lang/Exception;
    const/4 v12, 0x0

    goto :goto_67
.end method

.method public static writeToCache(JLandroid/graphics/Bitmap;I)V
    .registers 15
    .parameter "crc64"
    .parameter "bitmap"
    .parameter "maxResolution"

    .prologue
    .line 660
    invoke-static {p0, p1, p3}, Lcom/cooliris/media/UriTexture;->createFilePathFromCrc64(JI)Ljava/lang/String;

    move-result-object v3

    .line 661
    .local v3, file:Ljava/lang/String;
    if-eqz p2, :cond_43

    if-eqz v3, :cond_43

    const-wide/16 v8, 0x0

    cmp-long v8, p0, v8

    if-eqz v8, :cond_43

    .line 663
    const/4 v5, 0x0

    .line 664
    .local v5, fos:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 666
    .local v0, bos:Ljava/io/BufferedOutputStream;
    :try_start_10
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 668
    .local v4, fileC:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 669
    .local v7, parent:Ljava/io/File;
    if-eqz v7, :cond_24

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_24

    .line 670
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 673
    :cond_24
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 674
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_67
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2c} :catch_44

    .line 675
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    :try_start_2c
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v8, 0x4000

    invoke-direct {v1, v6, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_76

    .line 676
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .local v1, bos:Ljava/io/BufferedOutputStream;
    :try_start_33
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x50

    invoke-virtual {p2, v8, v9, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 677
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_72
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3d} :catch_79

    .line 682
    invoke-static {v1}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 683
    invoke-static {v6}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 686
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v4           #fileC:Ljava/io/File;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .end local v7           #parent:Ljava/io/File;
    :cond_43
    :goto_43
    return-void

    .line 678
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_44
    move-exception v2

    .line 679
    .local v2, e:Ljava/lang/Exception;
    :goto_45
    :try_start_45
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 680
    const-string v8, "UriTexture"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cannot writeToCache "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_45 .. :try_end_60} :catchall_67

    .line 682
    invoke-static {v0}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 683
    invoke-static {v5}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_43

    .line 682
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_67
    move-exception v8

    :goto_68
    invoke-static {v0}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 683
    invoke-static {v5}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v8

    .line 682
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fileC:Ljava/io/File;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v7       #parent:Ljava/io/File;
    :catchall_6f
    move-exception v8

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_68

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catchall_72
    move-exception v8

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_68

    .line 678
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_76
    move-exception v2

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_45

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_79
    move-exception v2

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_45
.end method


# virtual methods
.method protected finalize()V
    .registers 3

    .prologue
    .line 708
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_d

    .line 713
    :goto_3
    iget-object v1, p0, Lcom/cooliris/media/UriTexture;->mConnectionManager:Lorg/apache/http/impl/conn/SingleClientConnManager;

    if-eqz v1, :cond_c

    .line 714
    iget-object v1, p0, Lcom/cooliris/media/UriTexture;->mConnectionManager:Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/SingleClientConnManager;->shutdown()V

    .line 716
    :cond_c
    return-void

    .line 709
    :catch_d
    move-exception v0

    .line 711
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method protected load(Lcom/cooliris/media/RenderView;)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "view"

    .prologue
    .line 519
    const/4 v8, 0x0

    .line 520
    .local v8, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/cooliris/media/UriTexture;->mUri:Ljava/lang/String;

    if-nez v0, :cond_7

    move-object v9, v8

    .line 553
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .local v9, bitmap:Landroid/graphics/Bitmap;
    :goto_6
    return-object v9

    .line 523
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/cooliris/media/UriTexture;->mUri:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 524
    iget-object v0, p0, Lcom/cooliris/media/UriTexture;->mUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v0

    const/16 v2, 0x400

    invoke-static {v0, v1, v2}, Lcom/cooliris/media/UriTexture;->isCached(JI)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 525
    new-instance v0, Lorg/apache/http/impl/conn/SingleClientConnManager;

    sget-object v1, Lcom/cooliris/media/UriTexture;->HTTP_PARAMS:Lorg/apache/http/params/HttpParams;

    sget-object v2, Lcom/cooliris/media/UriTexture;->SCHEME_REGISTRY:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v0, p0, Lcom/cooliris/media/UriTexture;->mConnectionManager:Lorg/apache/http/impl/conn/SingleClientConnManager;

    .line 532
    :cond_2a
    const/4 v11, 0x0

    .line 533
    .local v11, local:Z
    iget-object v0, p0, Lcom/cooliris/media/UriTexture;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/cooliris/media/UriTexture;->mUri:Ljava/lang/String;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/cooliris/media/UriTexture;->mUri:Ljava/lang/String;

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 536
    :cond_43
    const/4 v11, 0x1

    .line 539
    :cond_44
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v0, :cond_61

    iget-boolean v0, p0, Lcom/cooliris/media/UriTexture;->mNeedToZoom:Z

    if-eqz v0, :cond_61

    if-eqz v11, :cond_61

    .line 540
    invoke-virtual {p1}, Lcom/cooliris/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/cooliris/media/UriTexture;->mUri:Ljava/lang/String;

    iget-wide v3, p0, Lcom/cooliris/media/UriTexture;->mCacheId:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;->ZOOM_IMAGE:Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/quramsoft/xiv/XIVUtils;->createFromUriEx(Landroid/content/Context;Lcom/cooliris/media/Texture;Ljava/lang/String;JLorg/apache/http/conn/ClientConnectionManager;Lcom/cooliris/media/MediaItem;Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;)Landroid/graphics/Bitmap;

    move-result-object v8

    .end local v11           #local:Z
    :goto_5f
    move-object v9, v8

    .line 553
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_6

    .line 543
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    .restart local v11       #local:Z
    :cond_61
    invoke-virtual {p1}, Lcom/cooliris/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/UriTexture;->mUri:Ljava/lang/String;

    const/16 v2, 0x400

    const/16 v3, 0x400

    iget-wide v4, p0, Lcom/cooliris/media/UriTexture;->mCacheId:J

    iget-object v6, p0, Lcom/cooliris/media/UriTexture;->mConnectionManager:Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-static/range {v0 .. v6}, Lcom/cooliris/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_72} :catch_74

    move-result-object v8

    goto :goto_5f

    .line 549
    .end local v11           #local:Z
    :catch_74
    move-exception v10

    .line 550
    .local v10, e2:Ljava/lang/Exception;
    const-string v0, "UriTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load image from URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/UriTexture;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5f
.end method

.method public setCacheId(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 133
    iput-wide p1, p0, Lcom/cooliris/media/UriTexture;->mCacheId:J

    .line 134
    return-void
.end method
