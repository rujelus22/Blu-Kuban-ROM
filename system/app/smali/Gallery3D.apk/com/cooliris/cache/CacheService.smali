.class public final Lcom/cooliris/cache/CacheService;
.super Landroid/app/IntentService;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/cache/CacheService$4;,
        Lcom/cooliris/cache/CacheService$buildThumbnailsWorkerThread;
    }
.end annotation


# static fields
.field public static final BASE_CONTENT_STRING_IMAGES:Ljava/lang/String;

.field public static final BASE_CONTENT_STRING_VIDEOS:Ljava/lang/String;

.field public static final BUCKET_PROJECTION_IMAGES:[Ljava/lang/String;

.field public static final BUCKET_PROJECTION_VIDEOS:[Ljava/lang/String;

.field public static final PROJECTION_IMAGES:[Ljava/lang/String;

.field public static final PROJECTION_VIDEOS:[Ljava/lang/String;

.field public static final SENSE_PROJECTION:[Ljava/lang/String;

.field public static final THUMBNAIL_PROJECTION:[Ljava/lang/String;

.field private static final THUMBNAIL_THREAD:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private static final mAltDateFormat:Ljava/text/DateFormat;

.field public static final mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final mDateFormat:Ljava/text/DateFormat;

.field public static mDirtyFromView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static mShutDown:Z

.field private static mStorageDirectory:Ljava/lang/String;

.field public static final sAlbumCache:Lcom/cooliris/media/DiskCache;

.field private static final sCacheLock:Ljava/lang/Object;

.field private static final sDummyData:[B

.field private static sList:Lcom/cooliris/cache/ImageList;

.field public static final sMetaAlbumCache:Lcom/cooliris/media/DiskCache;

.field public static final sSkipThumbnailIds:Lcom/cooliris/media/DiskCache;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    new-instance v0, Lcom/cooliris/media/DiskCache;

    const-string v1, "local-album-cache"

    invoke-direct {v0, v1}, Lcom/cooliris/media/DiskCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    .line 87
    new-instance v0, Lcom/cooliris/media/DiskCache;

    const-string v1, "local-meta-cache"

    invoke-direct {v0, v1}, Lcom/cooliris/media/DiskCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cooliris/cache/CacheService;->sMetaAlbumCache:Lcom/cooliris/media/DiskCache;

    .line 89
    new-instance v0, Lcom/cooliris/media/DiskCache;

    const-string v1, "local-skip-cache"

    invoke-direct {v0, v1}, Lcom/cooliris/media/DiskCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cooliris/cache/CacheService;->sSkipThumbnailIds:Lcom/cooliris/media/DiskCache;

    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/cooliris/cache/CacheService;->sList:Lcom/cooliris/cache/ImageList;

    .line 119
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "bucket_id"

    aput-object v1, v0, v3

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/cooliris/cache/CacheService;->BUCKET_PROJECTION_IMAGES:[Ljava/lang/String;

    .line 123
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "bucket_id"

    aput-object v1, v0, v3

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    sput-object v0, Lcom/cooliris/cache/CacheService;->BUCKET_PROJECTION_VIDEOS:[Ljava/lang/String;

    .line 138
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date_modified"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "orientation"

    aput-object v1, v0, v6

    sput-object v0, Lcom/cooliris/cache/CacheService;->THUMBNAIL_PROJECTION:[Ljava/lang/String;

    .line 143
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "bucket_id"

    aput-object v1, v0, v3

    const-string v1, "MAX(date_added), COUNT(*)"

    aput-object v1, v0, v4

    sput-object v0, Lcom/cooliris/cache/CacheService;->SENSE_PROJECTION:[Ljava/lang/String;

    .line 172
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v5

    const-string v1, "latitude"

    aput-object v1, v0, v6

    const-string v1, "longitude"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/cooliris/cache/CacheService;->PROJECTION_IMAGES:[Ljava/lang/String;

    .line 180
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v5

    const-string v1, "latitude"

    aput-object v1, v0, v6

    const-string v1, "longitude"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/cooliris/cache/CacheService;->PROJECTION_VIDEOS:[Ljava/lang/String;

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cooliris/cache/CacheService;->BASE_CONTENT_STRING_IMAGES:Ljava/lang/String;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cooliris/cache/CacheService;->BASE_CONTENT_STRING_VIDEOS:Ljava/lang/String;

    .line 194
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/cooliris/cache/CacheService;->THUMBNAIL_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    .line 205
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cooliris/cache/CacheService;->mDateFormat:Ljava/text/DateFormat;

    .line 207
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cooliris/cache/CacheService;->mAltDateFormat:Ljava/text/DateFormat;

    .line 209
    new-array v0, v4, [B

    aput-byte v4, v0, v3

    sput-object v0, Lcom/cooliris/cache/CacheService;->sDummyData:[B

    .line 213
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cooliris/cache/CacheService;->sCacheLock:Ljava/lang/Object;

    .line 217
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cooliris/cache/CacheService;->mStorageDirectory:Ljava/lang/String;

    .line 222
    sput-boolean v3, Lcom/cooliris/cache/CacheService;->mShutDown:Z

    .line 224
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/cooliris/cache/CacheService;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cooliris/cache/CacheService;->mDirtyFromView:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1597
    const-string v0, "CacheService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 1598
    return-void
.end method

.method static synthetic access$000(J)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/cooliris/cache/CacheService;->isInThumbnailerSkipList(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/cooliris/media/DiskCache;JJZIIJ)[B
    .registers 12
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 82
    invoke-static/range {p0 .. p10}, Lcom/cooliris/cache/CacheService;->buildThumbnailForId(Landroid/content/Context;Lcom/cooliris/media/DiskCache;JJZIIJ)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(J)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/cooliris/cache/CacheService;->addToThumbnailerSkipList(J)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-static {p0}, Lcom/cooliris/cache/CacheService;->refresh(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-static {p0}, Lcom/cooliris/cache/CacheService;->buildThumbnails(Landroid/content/Context;)V

    return-void
.end method

.method private static final addNoDupe(Ljava/util/ArrayList;J)V
    .registers 7
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 2195
    .local p0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2196
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_19

    .line 2197
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_16

    .line 2201
    :goto_15
    return-void

    .line 2196
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2200
    :cond_19
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15
.end method

.method private static addToThumbnailerSkipList(J)V
    .registers 8
    .parameter "thumbnailId"

    .prologue
    .line 1293
    sget-object v0, Lcom/cooliris/cache/CacheService;->sSkipThumbnailIds:Lcom/cooliris/media/DiskCache;

    sget-object v3, Lcom/cooliris/cache/CacheService;->sDummyData:[B

    const-wide/16 v4, 0x0

    move-wide v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/cooliris/media/DiskCache;->put(J[BJ)V

    .line 1294
    sget-object v0, Lcom/cooliris/cache/CacheService;->sSkipThumbnailIds:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->flush()V

    .line 1295
    return-void
.end method

.method private static final buildThumbnailForId(Landroid/content/Context;Lcom/cooliris/media/DiskCache;JJZIIJ)[B
    .registers 35
    .parameter "context"
    .parameter "thumbnailCache"
    .parameter "thumbId"
    .parameter "origId"
    .parameter "isVideo"
    .parameter "thumbnailWidth"
    .parameter "thumbnailHeight"
    .parameter "timestamp"

    .prologue
    .line 1311
    const-wide/16 v6, -0x1

    cmp-long v6, p4, v6

    if-nez v6, :cond_9

    .line 1312
    const/16 v19, 0x0

    .line 1469
    :goto_8
    return-object v19

    .line 1316
    :cond_9
    const/4 v11, 0x0

    .line 1317
    .local v11, bitmap:Landroid/graphics/Bitmap;
    const-wide/16 v6, 0x1

    :try_start_c
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 1318
    if-nez p6, :cond_13e

    .line 1319
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/cooliris/cache/CacheService;->BASE_CONTENT_STRING_IMAGES:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1322
    .local v22, uriString:Ljava/lang/String;
    sget-boolean v6, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v6, :cond_ae

    .line 1323
    invoke-static/range {p2 .. p3}, Lcom/quramsoft/xiv/XIVUtils;->invalidateCache(J)V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_2d} :catch_b7

    .line 1335
    :goto_2d
    const/16 v20, 0x0

    .line 1336
    .local v20, temp:Ljava/lang/String;
    const/16 v17, 0x0

    .line 1338
    .local v17, cursor:Landroid/database/Cursor;
    :try_start_31
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1339
    .local v5, cr:Landroid/content/ContentResolver;
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_data"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1342
    if-eqz v17, :cond_5d

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_5d

    .line 1343
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1344
    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1345
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_5d
    .catchall {:try_start_31 .. :try_end_5d} :catchall_cd
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_5d} :catch_bc

    .line 1351
    :cond_5d
    if-eqz v17, :cond_62

    .line 1352
    :try_start_5f
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1355
    .end local v5           #cr:Landroid/content/ContentResolver;
    :cond_62
    :goto_62
    const/16 v21, 0x0

    .line 1358
    .local v21, thumbnail:[B
    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/cooliris/media/DiskCacheSEC;

    if-eqz v6, :cond_74

    .line 1359
    move-object/from16 v0, p1

    check-cast v0, Lcom/cooliris/media/DiskCacheSEC;

    move-object v6, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/cooliris/media/DiskCacheSEC;->setLastImagePath(Ljava/lang/String;)V

    .line 1363
    :cond_74
    sget-boolean v6, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v6, :cond_1d9

    move-object/from16 v0, p0

    instance-of v6, v0, Lcom/cooliris/media/Gallery;

    if-nez v6, :cond_1d9

    .line 1364
    sget-boolean v6, Lcom/cooliris/media/Utils;->mUse_U1_Chn_Open:Z

    if-nez v6, :cond_d4

    .line 1365
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-wide/from16 v3, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/quramsoft/xiv/XIVUtils;->getMediumnailBitmap(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    :try_end_8b
    .catch Ljava/lang/InterruptedException; {:try_start_5f .. :try_end_8b} :catch_b7

    move-result-object v11

    move-object/from16 v16, v11

    .line 1377
    .end local v11           #bitmap:Landroid/graphics/Bitmap;
    .local v16, bitmap:Landroid/graphics/Bitmap;
    :goto_8e
    if-nez v16, :cond_1d5

    .line 1378
    if-eqz v20, :cond_96

    .line 1379
    :try_start_92
    invoke-static/range {v20 .. v20}, Lcom/cooliris/cache/CacheService;->getExifthumbnail(Ljava/lang/String;)[B
    :try_end_95
    .catch Ljava/lang/InterruptedException; {:try_start_92 .. :try_end_95} :catch_1d0

    move-result-object v21

    .line 1380
    :cond_96
    if-eqz v21, :cond_11d

    .line 1382
    const/4 v6, 0x0

    :try_start_99
    move-object/from16 v0, v21

    array-length v7, v0

    move-object/from16 v0, v21

    invoke-static {v0, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_a1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_99 .. :try_end_a1} :catch_100
    .catch Ljava/lang/InterruptedException; {:try_start_99 .. :try_end_a1} :catch_1d0

    move-result-object v11

    .line 1387
    .end local v16           #bitmap:Landroid/graphics/Bitmap;
    .restart local v11       #bitmap:Landroid/graphics/Bitmap;
    :goto_a2
    if-nez v11, :cond_a8

    .line 1389
    :try_start_a4
    invoke-static/range {v20 .. v20}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1460
    .end local v17           #cursor:Landroid/database/Cursor;
    .end local v20           #temp:Ljava/lang/String;
    .end local v21           #thumbnail:[B
    .end local v22           #uriString:Ljava/lang/String;
    :cond_a8
    :goto_a8
    if-nez v11, :cond_1be

    .line 1462
    const/16 v19, 0x0

    goto/16 :goto_8

    .line 1325
    .restart local v22       #uriString:Ljava/lang/String;
    :cond_ae
    const/16 v6, 0x400

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v6}, Lcom/cooliris/media/UriTexture;->invalidateCache(JI)V
    :try_end_b5
    .catch Ljava/lang/InterruptedException; {:try_start_a4 .. :try_end_b5} :catch_b7

    goto/16 :goto_2d

    .line 1468
    .end local v22           #uriString:Ljava/lang/String;
    :catch_b7
    move-exception v18

    .line 1469
    .local v18, e:Ljava/lang/InterruptedException;
    :goto_b8
    const/16 v19, 0x0

    goto/16 :goto_8

    .line 1347
    .end local v18           #e:Ljava/lang/InterruptedException;
    .restart local v17       #cursor:Landroid/database/Cursor;
    .restart local v20       #temp:Ljava/lang/String;
    .restart local v22       #uriString:Ljava/lang/String;
    :catch_bc
    move-exception v18

    .line 1348
    .local v18, e:Ljava/lang/Exception;
    :try_start_bd
    const-string v6, "CacheService"

    const-string v7, "buildThumbnailForId: query error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c7
    .catchall {:try_start_bd .. :try_end_c7} :catchall_cd

    .line 1351
    if-eqz v17, :cond_62

    .line 1352
    :try_start_c9
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_62

    .line 1351
    .end local v18           #e:Ljava/lang/Exception;
    :catchall_cd
    move-exception v6

    if-eqz v17, :cond_d3

    .line 1352
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_d3
    throw v6
    :try_end_d4
    .catch Ljava/lang/InterruptedException; {:try_start_c9 .. :try_end_d4} :catch_b7

    .line 1368
    .restart local v21       #thumbnail:[B
    :cond_d4
    :try_start_d4
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-wide/from16 v3, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/quramsoft/xiv/XIVUtils;->getMediumnailBitmap(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    :try_end_dd
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d4 .. :try_end_dd} :catch_e1
    .catch Ljava/lang/InterruptedException; {:try_start_d4 .. :try_end_dd} :catch_b7

    move-result-object v11

    move-object/from16 v16, v11

    .line 1372
    .end local v11           #bitmap:Landroid/graphics/Bitmap;
    .restart local v16       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_8e

    .line 1369
    .end local v16           #bitmap:Landroid/graphics/Bitmap;
    .restart local v11       #bitmap:Landroid/graphics/Bitmap;
    :catch_e1
    move-exception v18

    .line 1370
    .local v18, e:Ljava/lang/OutOfMemoryError;
    :try_start_e2
    const-string v6, "CacheService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUseXiv - OutOfMemoryError"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fc
    .catch Ljava/lang/InterruptedException; {:try_start_e2 .. :try_end_fc} :catch_b7

    .line 1371
    const/4 v11, 0x0

    move-object/from16 v16, v11

    .end local v11           #bitmap:Landroid/graphics/Bitmap;
    .restart local v16       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_8e

    .line 1383
    .end local v18           #e:Ljava/lang/OutOfMemoryError;
    :catch_100
    move-exception v18

    .line 1384
    .restart local v18       #e:Ljava/lang/OutOfMemoryError;
    :try_start_101
    const-string v6, "CacheService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OutOfMemoryError"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catch Ljava/lang/InterruptedException; {:try_start_101 .. :try_end_11b} :catch_1d0

    .line 1385
    const/4 v11, 0x0

    .end local v16           #bitmap:Landroid/graphics/Bitmap;
    .restart local v11       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_a2

    .line 1396
    .end local v11           #bitmap:Landroid/graphics/Bitmap;
    .end local v18           #e:Ljava/lang/OutOfMemoryError;
    .restart local v16       #bitmap:Landroid/graphics/Bitmap;
    :cond_11d
    const/16 v8, 0x400

    const/16 v9, 0x400

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, v22

    move-wide/from16 v10, p2

    :try_start_129
    invoke-static/range {v6 .. v13}, Lcom/cooliris/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;Z)Landroid/graphics/Bitmap;
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_12c} :catch_12f
    .catch Ljava/net/URISyntaxException; {:try_start_129 .. :try_end_12c} :catch_134
    .catch Ljava/lang/OutOfMemoryError; {:try_start_129 .. :try_end_12c} :catch_139
    .catch Ljava/lang/InterruptedException; {:try_start_129 .. :try_end_12c} :catch_1d0

    move-result-object v11

    .end local v16           #bitmap:Landroid/graphics/Bitmap;
    .restart local v11       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_a8

    .line 1401
    .end local v11           #bitmap:Landroid/graphics/Bitmap;
    .restart local v16       #bitmap:Landroid/graphics/Bitmap;
    :catch_12f
    move-exception v18

    .line 1402
    .local v18, e:Ljava/io/IOException;
    const/16 v19, 0x0

    goto/16 :goto_8

    .line 1403
    .end local v18           #e:Ljava/io/IOException;
    :catch_134
    move-exception v18

    .line 1404
    .local v18, e:Ljava/net/URISyntaxException;
    const/16 v19, 0x0

    goto/16 :goto_8

    .line 1405
    .end local v18           #e:Ljava/net/URISyntaxException;
    :catch_139
    move-exception v18

    .line 1406
    .local v18, e:Ljava/lang/OutOfMemoryError;
    const/16 v19, 0x0

    goto/16 :goto_8

    .line 1413
    .end local v16           #bitmap:Landroid/graphics/Bitmap;
    .end local v17           #cursor:Landroid/database/Cursor;
    .end local v18           #e:Ljava/lang/OutOfMemoryError;
    .end local v20           #temp:Ljava/lang/String;
    .end local v21           #thumbnail:[B
    .end local v22           #uriString:Ljava/lang/String;
    .restart local v11       #bitmap:Landroid/graphics/Bitmap;
    :cond_13e
    :try_start_13e
    sget-boolean v6, Lcom/cooliris/media/Utils;->mUseDirectVideo:Z

    if-eqz v6, :cond_1a4

    .line 1414
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/cooliris/cache/CacheService;->BASE_CONTENT_STRING_VIDEOS:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_156
    .catch Ljava/lang/InterruptedException; {:try_start_13e .. :try_end_156} :catch_b7

    move-result-object v22

    .line 1415
    .restart local v22       #uriString:Ljava/lang/String;
    const/16 v23, 0x0

    .line 1416
    .local v23, videoPath:Ljava/lang/String;
    const/16 v17, 0x0

    .line 1418
    .restart local v17       #cursor:Landroid/database/Cursor;
    :try_start_15b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1419
    .restart local v5       #cr:Landroid/content/ContentResolver;
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_data"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1422
    if-eqz v17, :cond_18b

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_18b

    .line 1423
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1424
    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1425
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1426
    invoke-static/range {v23 .. v23}, Lcom/cooliris/media/Utils;->getVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_18a
    .catchall {:try_start_15b .. :try_end_18a} :catchall_19d
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_18a} :catch_192

    move-result-object v11

    .line 1431
    :cond_18b
    if-eqz v17, :cond_a8

    .line 1432
    :try_start_18d
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_190
    .catch Ljava/lang/InterruptedException; {:try_start_18d .. :try_end_190} :catch_b7

    goto/16 :goto_a8

    .line 1428
    .end local v5           #cr:Landroid/content/ContentResolver;
    :catch_192
    move-exception v18

    .line 1429
    .local v18, e:Ljava/lang/Exception;
    :try_start_193
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_196
    .catchall {:try_start_193 .. :try_end_196} :catchall_19d

    .line 1431
    if-eqz v17, :cond_a8

    .line 1432
    :try_start_198
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_a8

    .line 1431
    .end local v18           #e:Ljava/lang/Exception;
    :catchall_19d
    move-exception v6

    if-eqz v17, :cond_1a3

    .line 1432
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_1a3
    throw v6

    .line 1436
    .end local v17           #cursor:Landroid/database/Cursor;
    .end local v22           #uriString:Ljava/lang/String;
    .end local v23           #videoPath:Ljava/lang/String;
    :cond_1a4
    new-instance v6, Lcom/cooliris/cache/CacheService$1;

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct {v6, v0, v1, v2}, Lcom/cooliris/cache/CacheService$1;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v6}, Lcom/cooliris/cache/CacheService$1;->start()V

    .line 1456
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-wide/from16 v0, p4

    invoke-static {v6, v0, v1, v7, v8}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    goto/16 :goto_a8

    :cond_1be
    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    move/from16 v12, p7

    move/from16 v13, p8

    move-wide/from16 v14, p9

    .line 1464
    invoke-static/range {v6 .. v15}, Lcom/cooliris/cache/CacheService;->writeBitmapToCache(Lcom/cooliris/media/DiskCache;JJLandroid/graphics/Bitmap;IIJ)[B
    :try_end_1cd
    .catch Ljava/lang/InterruptedException; {:try_start_198 .. :try_end_1cd} :catch_b7

    move-result-object v19

    .line 1467
    .local v19, retVal:[B
    goto/16 :goto_8

    .line 1468
    .end local v11           #bitmap:Landroid/graphics/Bitmap;
    .end local v19           #retVal:[B
    .restart local v16       #bitmap:Landroid/graphics/Bitmap;
    .restart local v17       #cursor:Landroid/database/Cursor;
    .restart local v20       #temp:Ljava/lang/String;
    .restart local v21       #thumbnail:[B
    .restart local v22       #uriString:Ljava/lang/String;
    :catch_1d0
    move-exception v18

    move-object/from16 v11, v16

    .end local v16           #bitmap:Landroid/graphics/Bitmap;
    .restart local v11       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_b8

    .end local v11           #bitmap:Landroid/graphics/Bitmap;
    .restart local v16       #bitmap:Landroid/graphics/Bitmap;
    :cond_1d5
    move-object/from16 v11, v16

    .end local v16           #bitmap:Landroid/graphics/Bitmap;
    .restart local v11       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_a8

    :cond_1d9
    move-object/from16 v16, v11

    .end local v11           #bitmap:Landroid/graphics/Bitmap;
    .restart local v16       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_8e
.end method

.method private static final buildThumbnails(Landroid/content/Context;)V
    .registers 30
    .parameter "context"

    .prologue
    .line 1114
    sget-boolean v3, Lcom/cooliris/media/Utils;->mUseDualCore:Z

    if-eqz v3, :cond_13b

    .line 1117
    const-string v3, "CacheService"

    const-string v9, "Preparing DiskCache for all thumbnails."

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-static/range {p0 .. p0}, Lcom/cooliris/cache/CacheService;->getSortedImageList(Landroid/content/Context;)Lcom/cooliris/cache/ImageList;

    move-result-object v20

    .line 1120
    .local v20, list:Lcom/cooliris/cache/ImageList;
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cooliris/cache/ImageList;->ids:[J

    if-nez v3, :cond_6a

    const/16 v22, 0x0

    .line 1121
    .local v22, size:I
    :goto_17
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cooliris/cache/ImageList;->ids:[J

    move-object/from16 v18, v0

    .line 1122
    .local v18, ids:[J
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cooliris/cache/ImageList;->timestamp:[J

    move-object/from16 v27, v0

    .line 1123
    .local v27, timestamp:[J
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cooliris/cache/ImageList;->thumbids:[J

    move-object/from16 v24, v0

    .line 1124
    .local v24, thumbnailIds:[J
    sget-object v4, Lcom/cooliris/media/LocalDataSource;->sThumbnailCache:Lcom/cooliris/media/DiskCache;

    .line 1131
    .local v4, thumbnailCache:Lcom/cooliris/media/DiskCache;
    const/16 v3, 0xc

    move/from16 v0, v22

    if-le v0, v3, :cond_e6

    .line 1132
    sget-object v3, Lcom/cooliris/cache/CacheService;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1133
    new-instance v28, Lcom/cooliris/cache/CacheService$buildThumbnailsWorkerThread;

    invoke-direct/range {v28 .. v28}, Lcom/cooliris/cache/CacheService$buildThumbnailsWorkerThread;-><init>()V

    .line 1134
    .local v28, worker_thr:Lcom/cooliris/cache/CacheService$buildThumbnailsWorkerThread;
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/cache/CacheService$buildThumbnailsWorkerThread;->setArguments(Landroid/content/Context;Lcom/cooliris/cache/ImageList;)V

    .line 1135
    invoke-virtual/range {v28 .. v28}, Lcom/cooliris/cache/CacheService$buildThumbnailsWorkerThread;->start()V

    .line 1137
    sget-object v3, Lcom/cooliris/cache/CacheService;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v9, -0x4

    invoke-virtual {v3, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v14

    .line 1138
    .local v14, current_count:I
    sub-int v23, v22, v14

    .line 1139
    .local v23, start_position:I
    const/4 v3, 0x4

    if-ge v14, v3, :cond_72

    add-int v16, v14, v23

    .line 1143
    .local v16, end_position:I
    :goto_57
    const/4 v3, 0x1

    if-ge v14, v3, :cond_75

    .line 1193
    :goto_5a
    if-eqz v28, :cond_5f

    .line 1194
    :try_start_5c
    invoke-virtual/range {v28 .. v28}, Lcom/cooliris/cache/CacheService$buildThumbnailsWorkerThread;->join()V
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_5f} :catch_e0

    .line 1239
    .end local v14           #current_count:I
    .end local v16           #end_position:I
    .end local v23           #start_position:I
    .end local v28           #worker_thr:Lcom/cooliris/cache/CacheService$buildThumbnailsWorkerThread;
    :cond_5f
    :goto_5f
    instance-of v3, v4, Lcom/cooliris/media/DiskCacheSEC;

    if-eqz v3, :cond_69

    move-object v3, v4

    .line 1240
    check-cast v3, Lcom/cooliris/media/DiskCacheSEC;

    invoke-virtual {v3}, Lcom/cooliris/media/DiskCacheSEC;->wrapUp()V

    .line 1290
    :cond_69
    :goto_69
    return-void

    .line 1120
    .end local v4           #thumbnailCache:Lcom/cooliris/media/DiskCache;
    .end local v18           #ids:[J
    .end local v22           #size:I
    .end local v24           #thumbnailIds:[J
    .end local v27           #timestamp:[J
    :cond_6a
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cooliris/cache/ImageList;->ids:[J

    array-length v0, v3

    move/from16 v22, v0

    goto :goto_17

    .line 1139
    .restart local v4       #thumbnailCache:Lcom/cooliris/media/DiskCache;
    .restart local v14       #current_count:I
    .restart local v18       #ids:[J
    .restart local v22       #size:I
    .restart local v23       #start_position:I
    .restart local v24       #thumbnailIds:[J
    .restart local v27       #timestamp:[J
    .restart local v28       #worker_thr:Lcom/cooliris/cache/CacheService$buildThumbnailsWorkerThread;
    :cond_72
    add-int/lit8 v16, v23, 0x4

    goto :goto_57

    .line 1146
    .restart local v16       #end_position:I
    :cond_75
    move/from16 v17, v23

    .local v17, i:I
    :goto_77
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_cd

    .line 1147
    :try_start_7d
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_95

    .line 1148
    if-eqz v28, :cond_88

    .line 1149
    invoke-virtual/range {v28 .. v28}, Lcom/cooliris/cache/CacheService$buildThumbnailsWorkerThread;->interrupt()V

    .line 1150
    :cond_88
    const-string v3, "CacheService"

    const-string v9, "buildThumbnailsWorkerThread_1 interrupt"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_8f} :catch_90

    goto :goto_69

    .line 1189
    :catch_90
    move-exception v15

    .line 1190
    .local v15, e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5a

    .line 1153
    .end local v15           #e:Ljava/lang/Exception;
    :cond_95
    :try_start_95
    aget-wide v7, v18, v17

    .line 1154
    .local v7, id:J
    aget-wide v25, v27, v17

    .line 1155
    .local v25, timeModifiedInSec:J
    aget-wide v5, v24, v17

    .line 1156
    .local v5, thumbnailId:J
    invoke-static {}, Lcom/cooliris/cache/CacheService;->checkLowStorageforCacheService()Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 1157
    invoke-static {v5, v6}, Lcom/cooliris/cache/CacheService;->isInThumbnailerSkipList(J)Z

    move-result v3

    if-nez v3, :cond_ca

    .line 1158
    const-wide/16 v9, 0x3e8

    mul-long v9, v9, v25

    invoke-virtual {v4, v5, v6, v9, v10}, Lcom/cooliris/media/DiskCache;->isDataAvailable(JJ)Z

    move-result v3

    if-nez v3, :cond_ca

    .line 1160
    const/4 v9, 0x0

    const/16 v10, 0x80

    const/16 v11, 0x60

    const-wide/16 v12, 0x3e8

    mul-long v12, v12, v25

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v13}, Lcom/cooliris/cache/CacheService;->buildThumbnailForId(Landroid/content/Context;Lcom/cooliris/media/DiskCache;JJZIIJ)[B

    move-result-object v21

    .line 1164
    .local v21, retVal:[B
    if-eqz v21, :cond_c7

    move-object/from16 v0, v21

    array-length v3, v0

    if-nez v3, :cond_ca

    .line 1169
    :cond_c7
    invoke-static {v5, v6}, Lcom/cooliris/cache/CacheService;->addToThumbnailerSkipList(J)V

    .line 1146
    .end local v21           #retVal:[B
    :cond_ca
    add-int/lit8 v17, v17, 0x1

    goto :goto_77

    .line 1184
    .end local v5           #thumbnailId:J
    .end local v7           #id:J
    .end local v25           #timeModifiedInSec:J
    :cond_cd
    sget-object v3, Lcom/cooliris/cache/CacheService;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v9, -0x4

    invoke-virtual {v3, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_d3} :catch_90

    move-result v14

    .line 1185
    sub-int v23, v22, v14

    .line 1186
    const/4 v3, 0x4

    if-ge v14, v3, :cond_dd

    add-int v16, v14, v23

    :goto_db
    goto/16 :goto_57

    :cond_dd
    add-int/lit8 v16, v23, 0x4

    goto :goto_db

    .line 1195
    .end local v17           #i:I
    :catch_e0
    move-exception v19

    .line 1196
    .local v19, ie:Ljava/lang/InterruptedException;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_5f

    .line 1200
    .end local v14           #current_count:I
    .end local v16           #end_position:I
    .end local v19           #ie:Ljava/lang/InterruptedException;
    .end local v23           #start_position:I
    .end local v28           #worker_thr:Lcom/cooliris/cache/CacheService$buildThumbnailsWorkerThread;
    :cond_e6
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_e8
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_5f

    .line 1201
    :try_start_ee
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_103

    .line 1202
    const-string v3, "CacheService"

    const-string v9, "buildThumbnailsWorkerThread_2 interrupt"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_fb} :catch_fd

    goto/16 :goto_69

    .line 1234
    :catch_fd
    move-exception v15

    .line 1235
    .restart local v15       #e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5f

    .line 1205
    .end local v15           #e:Ljava/lang/Exception;
    :cond_103
    :try_start_103
    aget-wide v7, v18, v17

    .line 1206
    .restart local v7       #id:J
    aget-wide v25, v27, v17

    .line 1207
    .restart local v25       #timeModifiedInSec:J
    aget-wide v5, v24, v17

    .line 1208
    .restart local v5       #thumbnailId:J
    invoke-static {}, Lcom/cooliris/cache/CacheService;->checkLowStorageforCacheService()Z

    move-result v3

    if-eqz v3, :cond_138

    .line 1209
    invoke-static {v5, v6}, Lcom/cooliris/cache/CacheService;->isInThumbnailerSkipList(J)Z

    move-result v3

    if-nez v3, :cond_138

    .line 1210
    const-wide/16 v9, 0x3e8

    mul-long v9, v9, v25

    invoke-virtual {v4, v5, v6, v9, v10}, Lcom/cooliris/media/DiskCache;->isDataAvailable(JJ)Z

    move-result v3

    if-nez v3, :cond_138

    .line 1212
    const/4 v9, 0x0

    const/16 v10, 0x80

    const/16 v11, 0x60

    const-wide/16 v12, 0x3e8

    mul-long v12, v12, v25

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v13}, Lcom/cooliris/cache/CacheService;->buildThumbnailForId(Landroid/content/Context;Lcom/cooliris/media/DiskCache;JJZIIJ)[B

    move-result-object v21

    .line 1215
    .restart local v21       #retVal:[B
    if-eqz v21, :cond_135

    move-object/from16 v0, v21

    array-length v3, v0

    if-nez v3, :cond_138

    .line 1219
    :cond_135
    invoke-static {v5, v6}, Lcom/cooliris/cache/CacheService;->addToThumbnailerSkipList(J)V
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_138} :catch_fd

    .line 1200
    .end local v21           #retVal:[B
    :cond_138
    add-int/lit8 v17, v17, 0x1

    goto :goto_e8

    .line 1245
    .end local v4           #thumbnailCache:Lcom/cooliris/media/DiskCache;
    .end local v5           #thumbnailId:J
    .end local v7           #id:J
    .end local v17           #i:I
    .end local v18           #ids:[J
    .end local v20           #list:Lcom/cooliris/cache/ImageList;
    .end local v22           #size:I
    .end local v24           #thumbnailIds:[J
    .end local v25           #timeModifiedInSec:J
    .end local v27           #timestamp:[J
    :cond_13b
    const-string v3, "CacheService"

    const-string v9, "Preparing DiskCache for all thumbnails."

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-static/range {p0 .. p0}, Lcom/cooliris/cache/CacheService;->getImageList(Landroid/content/Context;)Lcom/cooliris/cache/ImageList;

    move-result-object v20

    .line 1247
    .restart local v20       #list:Lcom/cooliris/cache/ImageList;
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cooliris/cache/ImageList;->ids:[J

    if-nez v3, :cond_1a8

    const/16 v22, 0x0

    .line 1248
    .restart local v22       #size:I
    :goto_14e
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cooliris/cache/ImageList;->ids:[J

    move-object/from16 v18, v0

    .line 1249
    .restart local v18       #ids:[J
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cooliris/cache/ImageList;->timestamp:[J

    move-object/from16 v27, v0

    .line 1250
    .restart local v27       #timestamp:[J
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cooliris/cache/ImageList;->thumbids:[J

    move-object/from16 v24, v0

    .line 1251
    .restart local v24       #thumbnailIds:[J
    sget-object v4, Lcom/cooliris/media/LocalDataSource;->sThumbnailCache:Lcom/cooliris/media/DiskCache;

    .line 1259
    .restart local v4       #thumbnailCache:Lcom/cooliris/media/DiskCache;
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_164
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_1b0

    .line 1260
    :try_start_16a
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_69

    .line 1263
    aget-wide v7, v18, v17

    .line 1264
    .restart local v7       #id:J
    aget-wide v25, v27, v17

    .line 1265
    .restart local v25       #timeModifiedInSec:J
    aget-wide v5, v24, v17

    .line 1266
    .restart local v5       #thumbnailId:J
    invoke-static {}, Lcom/cooliris/cache/CacheService;->checkLowStorageforCacheService()Z

    move-result v3

    if-eqz v3, :cond_1a5

    .line 1267
    invoke-static {v5, v6}, Lcom/cooliris/cache/CacheService;->isInThumbnailerSkipList(J)Z

    move-result v3

    if-nez v3, :cond_1a5

    .line 1268
    const-wide/16 v9, 0x3e8

    mul-long v9, v9, v25

    invoke-virtual {v4, v5, v6, v9, v10}, Lcom/cooliris/media/DiskCache;->isDataAvailable(JJ)Z

    move-result v3

    if-nez v3, :cond_1a5

    .line 1270
    const/4 v9, 0x0

    const/16 v10, 0x80

    const/16 v11, 0x60

    const-wide/16 v12, 0x3e8

    mul-long v12, v12, v25

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v13}, Lcom/cooliris/cache/CacheService;->buildThumbnailForId(Landroid/content/Context;Lcom/cooliris/media/DiskCache;JJZIIJ)[B

    move-result-object v21

    .line 1273
    .restart local v21       #retVal:[B
    if-eqz v21, :cond_1a2

    move-object/from16 v0, v21

    array-length v3, v0

    if-nez v3, :cond_1a5

    .line 1277
    :cond_1a2
    invoke-static {v5, v6}, Lcom/cooliris/cache/CacheService;->addToThumbnailerSkipList(J)V
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_1a5} :catch_1bd

    .line 1259
    .end local v21           #retVal:[B
    :cond_1a5
    add-int/lit8 v17, v17, 0x1

    goto :goto_164

    .line 1247
    .end local v4           #thumbnailCache:Lcom/cooliris/media/DiskCache;
    .end local v5           #thumbnailId:J
    .end local v7           #id:J
    .end local v17           #i:I
    .end local v18           #ids:[J
    .end local v22           #size:I
    .end local v24           #thumbnailIds:[J
    .end local v25           #timeModifiedInSec:J
    .end local v27           #timestamp:[J
    :cond_1a8
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cooliris/cache/ImageList;->ids:[J

    array-length v0, v3

    move/from16 v22, v0

    goto :goto_14e

    .line 1283
    .restart local v4       #thumbnailCache:Lcom/cooliris/media/DiskCache;
    .restart local v17       #i:I
    .restart local v18       #ids:[J
    .restart local v22       #size:I
    .restart local v24       #thumbnailIds:[J
    .restart local v27       #timestamp:[J
    :cond_1b0
    :try_start_1b0
    instance-of v3, v4, Lcom/cooliris/media/DiskCacheSEC;

    if-eqz v3, :cond_69

    .line 1284
    move-object v0, v4

    check-cast v0, Lcom/cooliris/media/DiskCacheSEC;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/cooliris/media/DiskCacheSEC;->wrapUp()V
    :try_end_1bb
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_1bb} :catch_1bd

    goto/16 :goto_69

    .line 1286
    :catch_1bd
    move-exception v15

    .line 1287
    .restart local v15       #e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_69
.end method

.method public static checkLowStorageforCacheService()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1578
    invoke-static {}, Lcom/cooliris/media/ImageManager;->hasStorage()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1580
    :try_start_7
    new-instance v1, Landroid/os/StatFs;

    sget-object v2, Lcom/cooliris/cache/CacheService;->mStorageDirectory:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1581
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    mul-long v1, v2, v4

    .line 1582
    const-wide/32 v3, 0x200000

    cmp-long v3, v1, v3

    if-gez v3, :cond_43

    .line 1583
    const-string v3, "CacheService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Low Storage  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x400

    div-long/2addr v1, v5

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "k"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_42} :catch_45

    .line 1593
    :cond_42
    :goto_42
    return v0

    .line 1587
    :cond_43
    const/4 v0, 0x1

    goto :goto_42

    .line 1589
    :catch_45
    move-exception v1

    .line 1590
    const-string v1, "CacheService"

    const-string v2, "checkLowStorageforCacheService() : IllgalArgumentException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method public static checkedCacheSetId(Landroid/content/Context;J)Z
    .registers 5
    .parameter "context"
    .parameter "setId"

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 265
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-static {v1, p1, p2}, Lcom/cooliris/cache/CacheService;->setHasItems(Landroid/content/ContentResolver;J)Z

    move-result v0

    .line 266
    .local v0, bResult:Z
    return v0
.end method

.method public static final computeDirtySets(Landroid/content/Context;)[J
    .registers 24
    .parameter

    .prologue
    .line 1947
    sget-boolean v2, Lcom/cooliris/media/Utils;->mUseDualCore:Z

    if-eqz v2, :cond_1c7

    .line 1950
    sget-object v10, Lcom/cooliris/cache/CacheService;->sCacheLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1951
    :try_start_7
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1952
    sget-object v8, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1953
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1954
    const-string v5, "bucket_id!=0) GROUP BY (bucket_id "

    .line 1956
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_13f

    .line 1958
    :try_start_16
    sget-object v4, Lcom/cooliris/cache/CacheService;->SENSE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1959
    sget-object v4, Lcom/cooliris/cache/CacheService;->SENSE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1960
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    .line 1961
    const/4 v4, 0x0

    aput-object v9, v3, v4

    .line 1962
    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 1963
    new-instance v12, Landroid/database/MergeCursor;

    invoke-direct {v12, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 1964
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1965
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1966
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_44
    .catchall {:try_start_16 .. :try_end_44} :catchall_13f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_44} :catch_13a

    .line 1968
    :try_start_44
    invoke-virtual {v12}, Landroid/database/MergeCursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 1970
    :cond_4a
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/database/MergeCursor;->getLong(I)J

    move-result-wide v2

    .line 1971
    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Landroid/database/MergeCursor;->getLong(I)J

    move-result-wide v4

    .line 1972
    const/4 v6, 0x2

    invoke-virtual {v12, v6}, Landroid/database/MergeCursor;->getInt(I)I

    move-result v6

    .line 1975
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11e

    .line 1976
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1977
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v2, v7, v4

    if-gez v2, :cond_80

    .line 1978
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1980
    :cond_80
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1986
    :goto_92
    invoke-virtual {v12}, Landroid/database/MergeCursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 1988
    :cond_98
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 1989
    const/4 v2, 0x0

    .line 1990
    if-lez v16, :cond_fc

    .line 1991
    const/4 v5, 0x0

    move v9, v2

    .line 1993
    :goto_a1
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1994
    if-eqz v5, :cond_142

    .line 1995
    invoke-static {v11, v3, v4}, Lcom/cooliris/cache/CacheService;->addNoDupe(Ljava/util/ArrayList;J)V

    move v2, v5

    .line 2028
    :goto_b1
    add-int/lit8 v3, v9, 0x1

    .line 2029
    move/from16 v0, v16

    if-lt v3, v0, :cond_397

    .line 2030
    sget-object v2, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/cooliris/media/DiskCache;->get(JJ)[B

    move-result-object v4

    .line 2031
    if-eqz v4, :cond_fc

    array-length v2, v4
    :try_end_c4
    .catchall {:try_start_44 .. :try_end_c4} :catchall_135

    if-lez v2, :cond_fc

    .line 2033
    const/4 v3, 0x0

    .line 2035
    :try_start_c7
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v4, 0x100

    invoke-direct {v5, v6, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d8
    .catchall {:try_start_c7 .. :try_end_d8} :catchall_1bf
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_d8} :catch_1b1

    .line 2037
    :try_start_d8
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 2038
    const/4 v3, 0x0

    :goto_dd
    if-ge v3, v4, :cond_f9

    .line 2039
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    .line 2040
    invoke-static {v2}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 2041
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 2042
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 2043
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1ad

    .line 2048
    invoke-static {}, Lcom/cooliris/cache/CacheService;->markDirty_nolock()V
    :try_end_f9
    .catchall {:try_start_d8 .. :try_end_f9} :catchall_383
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_f9} :catch_38b

    .line 2055
    :cond_f9
    :try_start_f9
    invoke-static {v2}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_fc
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_135

    .line 2060
    :cond_fc
    :goto_fc
    :try_start_fc
    invoke-virtual {v12}, Landroid/database/MergeCursor;->close()V

    .line 2062
    sget-object v2, Lcom/cooliris/cache/CacheService;->sMetaAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v2}, Lcom/cooliris/media/DiskCache;->flush()V
    :try_end_104
    .catchall {:try_start_fc .. :try_end_104} :catchall_13f
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_104} :catch_13a

    .line 2067
    :goto_104
    :try_start_104
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2068
    new-array v3, v5, [J

    .line 2069
    const/4 v2, 0x0

    move v4, v2

    :goto_10c
    if-ge v4, v5, :cond_1c4

    .line 2070
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v3, v4
    :try_end_11a
    .catchall {:try_start_104 .. :try_end_11a} :catchall_13f

    .line 2069
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_10c

    .line 1982
    :cond_11e
    :try_start_11e
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1983
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1984
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_133
    .catchall {:try_start_11e .. :try_end_133} :catchall_135

    goto/16 :goto_92

    .line 2060
    :catchall_135
    move-exception v2

    :try_start_136
    invoke-virtual {v12}, Landroid/database/MergeCursor;->close()V

    throw v2
    :try_end_13a
    .catchall {:try_start_136 .. :try_end_13a} :catchall_13f
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_13a} :catch_13a

    .line 2063
    :catch_13a
    move-exception v2

    .line 2065
    :try_start_13b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_104

    .line 2074
    :catchall_13f
    move-exception v2

    monitor-exit v10
    :try_end_141
    .catchall {:try_start_13b .. :try_end_141} :catchall_13f

    throw v2

    .line 1997
    :cond_142
    :try_start_142
    sget-object v2, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/cooliris/media/DiskCache;->isDataAvailable(JJ)Z

    move-result v2

    .line 1998
    if-nez v2, :cond_39e

    .line 2002
    invoke-static {}, Lcom/cooliris/cache/CacheService;->markDirty_nolock()V

    .line 2003
    invoke-static {v11, v3, v4}, Lcom/cooliris/cache/CacheService;->addNoDupe(Ljava/util/ArrayList;J)V

    .line 2004
    const/4 v8, 0x1

    .line 2006
    :goto_153
    if-nez v8, :cond_1aa

    .line 2007
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2008
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 2009
    sget-object v2, Lcom/cooliris/cache/CacheService;->sMetaAlbumCache:Lcom/cooliris/media/DiskCache;

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/cooliris/media/DiskCache;->get(JJ)[B

    move-result-object v5

    .line 2010
    const/4 v2, 0x2

    new-array v2, v2, [J

    .line 2011
    if-eqz v5, :cond_39b

    .line 2012
    invoke-static {v5}, Lcom/cooliris/cache/CacheService;->toLongArray([B)[J

    move-result-object v2

    move-object v5, v2

    .line 2014
    :goto_17d
    const/4 v2, 0x0

    aget-wide v18, v5, v2

    .line 2015
    const/4 v2, 0x1

    aget-wide v20, v5, v2

    .line 2016
    cmp-long v2, v6, v18

    if-gtz v2, :cond_190

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v2, v20, v18

    if-eqz v2, :cond_1aa

    .line 2019
    :cond_190
    invoke-static {v3, v4}, Lcom/cooliris/cache/CacheService;->markDirty_nolock(J)V

    .line 2020
    invoke-static {v11, v3, v4}, Lcom/cooliris/cache/CacheService;->addNoDupe(Ljava/util/ArrayList;J)V

    .line 2021
    const/4 v2, 0x0

    aput-wide v6, v5, v2

    .line 2022
    const/4 v2, 0x1

    move/from16 v0, v17

    int-to-long v6, v0

    aput-wide v6, v5, v2

    .line 2023
    sget-object v2, Lcom/cooliris/cache/CacheService;->sMetaAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-static {v5}, Lcom/cooliris/cache/CacheService;->longArrayToByteArray([J)[B

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/cooliris/media/DiskCache;->put(J[BJ)V
    :try_end_1aa
    .catchall {:try_start_142 .. :try_end_1aa} :catchall_135

    :cond_1aa
    move v2, v8

    goto/16 :goto_b1

    .line 2038
    :cond_1ad
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_dd

    .line 2052
    :catch_1b1
    move-exception v2

    move-object v2, v3

    .line 2053
    :goto_1b3
    :try_start_1b3
    const-string v3, "CacheService"

    const-string v4, "Dirty Check Error!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ba
    .catchall {:try_start_1b3 .. :try_end_1ba} :catchall_383

    .line 2055
    :try_start_1ba
    invoke-static {v2}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_fc

    :catchall_1bf
    move-exception v2

    :goto_1c0
    invoke-static {v3}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v2
    :try_end_1c4
    .catchall {:try_start_1ba .. :try_end_1c4} :catchall_135

    .line 2073
    :cond_1c4
    :try_start_1c4
    monitor-exit v10
    :try_end_1c5
    .catchall {:try_start_1c4 .. :try_end_1c5} :catchall_13f

    move-object v2, v3

    .line 2190
    :goto_1c6
    return-object v2

    .line 2076
    :cond_1c7
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2077
    sget-object v8, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2078
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2079
    const-string v5, "bucket_id!=0) GROUP BY (bucket_id "

    .line 2081
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2083
    :try_start_1d6
    sget-object v4, Lcom/cooliris/cache/CacheService;->SENSE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2084
    sget-object v4, Lcom/cooliris/cache/CacheService;->SENSE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2085
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    .line 2086
    const/4 v4, 0x0

    aput-object v9, v3, v4

    .line 2087
    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 2088
    new-instance v11, Landroid/database/MergeCursor;

    invoke-direct {v11, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 2089
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2090
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2091
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_204
    .catch Ljava/lang/Exception; {:try_start_1d6 .. :try_end_204} :catch_2f8

    .line 2093
    :try_start_204
    invoke-virtual {v11}, Landroid/database/MergeCursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_258

    .line 2095
    :cond_20a
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/database/MergeCursor;->getLong(I)J

    move-result-wide v2

    .line 2096
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Landroid/database/MergeCursor;->getLong(I)J

    move-result-wide v4

    .line 2097
    const/4 v6, 0x2

    invoke-virtual {v11, v6}, Landroid/database/MergeCursor;->getInt(I)I

    move-result v6

    .line 2099
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2dc

    .line 2100
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 2101
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v2, v7, v4

    if-gez v2, :cond_240

    .line 2102
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2104
    :cond_240
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2110
    :goto_252
    invoke-virtual {v11}, Landroid/database/MergeCursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_20a

    .line 2112
    :cond_258
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 2113
    const/4 v2, 0x0

    .line 2114
    if-lez v15, :cond_2ba

    .line 2115
    const/4 v5, 0x0

    move v9, v2

    .line 2117
    :goto_261
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2118
    if-eqz v5, :cond_2fd

    .line 2119
    invoke-static {v10, v3, v4}, Lcom/cooliris/cache/CacheService;->addNoDupe(Ljava/util/ArrayList;J)V

    move v2, v5

    .line 2148
    :goto_271
    add-int/lit8 v3, v9, 0x1

    .line 2149
    if-lt v3, v15, :cond_38e

    .line 2151
    sget-object v2, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/cooliris/media/DiskCache;->get(JJ)[B

    move-result-object v2

    .line 2152
    if-eqz v2, :cond_2ba

    array-length v3, v2
    :try_end_282
    .catchall {:try_start_204 .. :try_end_282} :catchall_2f3

    if-lez v3, :cond_2ba

    .line 2153
    const/4 v4, 0x0

    .line 2155
    :try_start_285
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v2, 0x100

    invoke-direct {v5, v6, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v3, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_296
    .catchall {:try_start_285 .. :try_end_296} :catchall_376
    .catch Ljava/lang/Exception; {:try_start_285 .. :try_end_296} :catch_36c

    .line 2157
    :try_start_296
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 2158
    const/4 v2, 0x0

    :goto_29b
    if-ge v2, v4, :cond_2b7

    .line 2159
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    .line 2160
    invoke-static {v3}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 2161
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 2162
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 2163
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_368

    .line 2166
    invoke-static {}, Lcom/cooliris/cache/CacheService;->markDirty()V
    :try_end_2b7
    .catchall {:try_start_296 .. :try_end_2b7} :catchall_37f
    .catch Ljava/lang/Exception; {:try_start_296 .. :try_end_2b7} :catch_381

    .line 2173
    :cond_2b7
    :try_start_2b7
    invoke-static {v3}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_2ba
    .catchall {:try_start_2b7 .. :try_end_2ba} :catchall_2f3

    .line 2178
    :cond_2ba
    :goto_2ba
    :try_start_2ba
    invoke-virtual {v11}, Landroid/database/MergeCursor;->close()V

    .line 2180
    sget-object v2, Lcom/cooliris/cache/CacheService;->sMetaAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v2}, Lcom/cooliris/media/DiskCache;->flush()V
    :try_end_2c2
    .catch Ljava/lang/Exception; {:try_start_2ba .. :try_end_2c2} :catch_2f8

    .line 2185
    :goto_2c2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2186
    new-array v3, v5, [J

    .line 2187
    const/4 v2, 0x0

    move v4, v2

    :goto_2ca
    if-ge v4, v5, :cond_37c

    .line 2188
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v3, v4

    .line 2187
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2ca

    .line 2106
    :cond_2dc
    :try_start_2dc
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2107
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2108
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2f1
    .catchall {:try_start_2dc .. :try_end_2f1} :catchall_2f3

    goto/16 :goto_252

    .line 2178
    :catchall_2f3
    move-exception v2

    :try_start_2f4
    invoke-virtual {v11}, Landroid/database/MergeCursor;->close()V

    throw v2
    :try_end_2f8
    .catch Ljava/lang/Exception; {:try_start_2f4 .. :try_end_2f8} :catch_2f8

    .line 2181
    :catch_2f8
    move-exception v2

    .line 2183
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c2

    .line 2121
    :cond_2fd
    :try_start_2fd
    sget-object v2, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/cooliris/media/DiskCache;->isDataAvailable(JJ)Z

    move-result v2

    .line 2122
    if-nez v2, :cond_394

    .line 2124
    invoke-static {}, Lcom/cooliris/cache/CacheService;->markDirty()V

    .line 2125
    invoke-static {v10, v3, v4}, Lcom/cooliris/cache/CacheService;->addNoDupe(Ljava/util/ArrayList;J)V

    .line 2126
    const/4 v8, 0x1

    .line 2128
    :goto_30e
    if-nez v8, :cond_365

    .line 2129
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2130
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 2131
    sget-object v2, Lcom/cooliris/cache/CacheService;->sMetaAlbumCache:Lcom/cooliris/media/DiskCache;

    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/cooliris/media/DiskCache;->get(JJ)[B

    move-result-object v5

    .line 2132
    const/4 v2, 0x2

    new-array v2, v2, [J

    .line 2133
    if-eqz v5, :cond_392

    .line 2134
    invoke-static {v5}, Lcom/cooliris/cache/CacheService;->toLongArray([B)[J

    move-result-object v2

    move-object v5, v2

    .line 2136
    :goto_338
    const/4 v2, 0x0

    aget-wide v17, v5, v2

    .line 2137
    const/4 v2, 0x1

    aget-wide v19, v5, v2

    .line 2138
    cmp-long v2, v6, v17

    if-gtz v2, :cond_34b

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v17, v0

    cmp-long v2, v19, v17

    if-eqz v2, :cond_365

    .line 2139
    :cond_34b
    invoke-static {v3, v4}, Lcom/cooliris/cache/CacheService;->markDirty(J)V

    .line 2140
    invoke-static {v10, v3, v4}, Lcom/cooliris/cache/CacheService;->addNoDupe(Ljava/util/ArrayList;J)V

    .line 2141
    const/4 v2, 0x0

    aput-wide v6, v5, v2

    .line 2142
    const/4 v2, 0x1

    move/from16 v0, v16

    int-to-long v6, v0

    aput-wide v6, v5, v2

    .line 2143
    sget-object v2, Lcom/cooliris/cache/CacheService;->sMetaAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-static {v5}, Lcom/cooliris/cache/CacheService;->longArrayToByteArray([J)[B

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/cooliris/media/DiskCache;->put(J[BJ)V
    :try_end_365
    .catchall {:try_start_2fd .. :try_end_365} :catchall_2f3

    :cond_365
    move v2, v8

    goto/16 :goto_271

    .line 2158
    :cond_368
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_29b

    .line 2170
    :catch_36c
    move-exception v2

    move-object v3, v4

    .line 2171
    :goto_36e
    :try_start_36e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_371
    .catchall {:try_start_36e .. :try_end_371} :catchall_37f

    .line 2173
    :try_start_371
    invoke-static {v3}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_2ba

    :catchall_376
    move-exception v2

    move-object v3, v4

    :goto_378
    invoke-static {v3}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v2
    :try_end_37c
    .catchall {:try_start_371 .. :try_end_37c} :catchall_2f3

    :cond_37c
    move-object v2, v3

    .line 2190
    goto/16 :goto_1c6

    .line 2173
    :catchall_37f
    move-exception v2

    goto :goto_378

    .line 2170
    :catch_381
    move-exception v2

    goto :goto_36e

    .line 2055
    :catchall_383
    move-exception v3

    move-object/from16 v22, v3

    move-object v3, v2

    move-object/from16 v2, v22

    goto/16 :goto_1c0

    .line 2052
    :catch_38b
    move-exception v3

    goto/16 :goto_1b3

    :cond_38e
    move v5, v2

    move v9, v3

    goto/16 :goto_261

    :cond_392
    move-object v5, v2

    goto :goto_338

    :cond_394
    move v8, v5

    goto/16 :goto_30e

    :cond_397
    move v5, v2

    move v9, v3

    goto/16 :goto_a1

    :cond_39b
    move-object v5, v2

    goto/16 :goto_17d

    :cond_39e
    move v8, v5

    goto/16 :goto_153
.end method

.method private static final concat([B[B)[B
    .registers 6
    .parameter "A"
    .parameter "B"

    .prologue
    const/4 v3, 0x0

    .line 1761
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 1762
    .local v0, C:[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1763
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1764
    return-object v0
.end method

.method public static final deleteDirtyThumbnail(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 2415
    invoke-static {p0}, Lcom/cooliris/cache/CacheService;->getSortedImageList(Landroid/content/Context;)Lcom/cooliris/cache/ImageList;

    move-result-object v0

    .line 2416
    iget-object v1, v0, Lcom/cooliris/cache/ImageList;->thumbids:[J

    .line 2417
    sget-object v0, Lcom/cooliris/media/LocalDataSource;->sThumbnailCache:Lcom/cooliris/media/DiskCache;

    .line 2418
    instance-of v2, v0, Lcom/cooliris/media/DiskCacheSEC;

    if-eqz v2, :cond_18

    .line 2419
    const-string v2, "CacheService"

    const-string v3, "removeGarbage"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    check-cast v0, Lcom/cooliris/media/DiskCacheSEC;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/DiskCacheSEC;->removeGarbage([J)V

    .line 2422
    :cond_18
    return-void
.end method

.method public static final deleteThumbId(Landroid/content/Context;JZ)V
    .registers 5
    .parameter "context"
    .parameter "thumbId"
    .parameter "isVideo"

    .prologue
    .line 744
    if-eqz p3, :cond_8

    sget-object v0, Lcom/cooliris/media/LocalDataSource;->sThumbnailCacheVideo:Lcom/cooliris/media/DiskCache;

    .line 746
    .local v0, thumbnailCache:Lcom/cooliris/media/DiskCache;
    :goto_4
    invoke-virtual {v0, p1, p2}, Lcom/cooliris/media/DiskCache;->delete(J)V

    .line 747
    return-void

    .line 744
    .end local v0           #thumbnailCache:Lcom/cooliris/media/DiskCache;
    :cond_8
    sget-object v0, Lcom/cooliris/media/LocalDataSource;->sThumbnailCache:Lcom/cooliris/media/DiskCache;

    goto :goto_4
.end method

.method public static final endCache()V
    .registers 2

    .prologue
    .line 2426
    sget-object v0, Lcom/cooliris/cache/CacheService;->THUMBNAIL_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 2427
    if-eqz v0, :cond_15

    .line 2428
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2429
    const-string v0, "CacheService"

    const-string v1, "CacheService End!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    :goto_14
    return-void

    .line 2432
    :cond_15
    const-string v0, "CacheService"

    const-string v1, "CacheService End! ( existingThread null )"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public static final fetchDateTaken(Lcom/cooliris/media/MediaItem;)J
    .registers 10
    .parameter "item"

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/cooliris/media/MediaItem;->isDateTakenValid()Z

    move-result v6

    if-nez v6, :cond_67

    iget-boolean v6, p0, Lcom/cooliris/media/MediaItem;->mTriedRetrievingExifDateTaken:Z

    if-nez v6, :cond_67

    iget-object v6, p0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1e

    iget-object v6, p0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    const-string v7, ".jpeg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 707
    :cond_1e
    :try_start_1e
    const-string v6, "CacheService"

    const-string v7, "Parsing date taken from exif"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    new-instance v3, Landroid/media/ExifInterface;

    iget-object v6, p0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v6}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 709
    .local v3, exif:Landroid/media/ExifInterface;
    const-string v6, "DateTime"

    invoke-virtual {v3, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_31} :catch_6a

    move-result-object v1

    .line 710
    .local v1, dateTakenStr:Ljava/lang/String;
    if-eqz v1, :cond_64

    .line 712
    :try_start_34
    sget-object v6, Lcom/cooliris/cache/CacheService;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v6, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 713
    .local v0, dateTaken:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_3d
    .catch Ljava/text/ParseException; {:try_start_34 .. :try_end_3d} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_6a

    move-result-wide v6

    .line 732
    .end local v0           #dateTaken:Ljava/util/Date;
    .end local v1           #dateTakenStr:Ljava/lang/String;
    .end local v3           #exif:Landroid/media/ExifInterface;
    :goto_3e
    return-wide v6

    .line 714
    .restart local v1       #dateTakenStr:Ljava/lang/String;
    .restart local v3       #exif:Landroid/media/ExifInterface;
    :catch_3f
    move-exception v4

    .line 716
    .local v4, pe:Ljava/text/ParseException;
    :try_start_40
    sget-object v6, Lcom/cooliris/cache/CacheService;->mAltDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v6, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 717
    .restart local v0       #dateTaken:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_49
    .catch Ljava/text/ParseException; {:try_start_40 .. :try_end_49} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_49} :catch_6a

    move-result-wide v6

    goto :goto_3e

    .line 718
    .end local v0           #dateTaken:Ljava/util/Date;
    :catch_4b
    move-exception v5

    .line 720
    .local v5, pe2:Ljava/text/ParseException;
    :try_start_4c
    const-string v6, "CacheService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to parse date out of string - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_64} :catch_6a

    .line 730
    .end local v1           #dateTakenStr:Ljava/lang/String;
    .end local v3           #exif:Landroid/media/ExifInterface;
    .end local v4           #pe:Ljava/text/ParseException;
    .end local v5           #pe2:Ljava/text/ParseException;
    :cond_64
    :goto_64
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/cooliris/media/MediaItem;->mTriedRetrievingExifDateTaken:Z

    .line 732
    :cond_67
    const-wide/16 v6, -0x1

    goto :goto_3e

    .line 724
    :catch_6a
    move-exception v2

    .line 726
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "CacheService"

    const-string v7, "Error reading Exif information, probably not a jpeg."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64
.end method

.method private static final findSet(JLcom/cooliris/media/LongSparseArray;)Lcom/cooliris/media/MediaSet;
    .registers 4
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/cooliris/media/LongSparseArray",
            "<",
            "Lcom/cooliris/media/MediaSet;",
            ">;)",
            "Lcom/cooliris/media/MediaSet;"
        }
    .end annotation

    .prologue
    .line 2411
    .local p2, acceleratedTable:Lcom/cooliris/media/LongSparseArray;,"Lcom/cooliris/media/LongSparseArray<Lcom/cooliris/media/MediaSet;>;"
    invoke-virtual {p2, p0, p1}, Lcom/cooliris/media/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaSet;

    return-object v0
.end method

.method public static final getBucketDisplayName(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .registers 21
    .parameter "cr"
    .parameter "setId"

    .prologue
    .line 409
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 410
    .local v4, uriImages:Landroid/net/Uri;
    sget-object v16, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 411
    .local v16, uriVideos:Landroid/net/Uri;
    new-instance v17, Ljava/lang/StringBuffer;

    const-string v3, "bucket_id"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 412
    .local v17, whereString:Ljava/lang/StringBuffer;
    const/16 v3, 0x3d

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 413
    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 414
    const/4 v13, 0x0

    .line 415
    .local v13, cursorImages:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 416
    .local v14, cursorVideos:Landroid/database/Cursor;
    const-string v11, ""

    .line 418
    .local v11, bucketDisplayName:Ljava/lang/String;
    :try_start_1f
    sget-object v5, Lcom/cooliris/cache/CacheService;->BUCKET_PROJECTION_IMAGES:[Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 420
    if-eqz v13, :cond_4c

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4c

    .line 421
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 422
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 423
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_40
    .catchall {:try_start_1f .. :try_end_40} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_40} :catch_87

    .line 438
    if-eqz v13, :cond_45

    .line 439
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 441
    :cond_45
    if-eqz v14, :cond_4a

    .line 442
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_4a
    move-object v12, v11

    .line 445
    .end local v11           #bucketDisplayName:Ljava/lang/String;
    .local v12, bucketDisplayName:Ljava/lang/String;
    :goto_4b
    return-object v12

    .line 426
    .end local v12           #bucketDisplayName:Ljava/lang/String;
    .restart local v11       #bucketDisplayName:Ljava/lang/String;
    :cond_4c
    :try_start_4c
    sget-object v7, Lcom/cooliris/cache/CacheService;->BUCKET_PROJECTION_VIDEOS:[Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, v16

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 428
    if-eqz v14, :cond_7b

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_7b

    .line 429
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 430
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 431
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_6f
    .catchall {:try_start_4c .. :try_end_6f} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_6f} :catch_87

    .line 438
    if-eqz v13, :cond_74

    .line 439
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 441
    :cond_74
    if-eqz v14, :cond_79

    .line 442
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_79
    move-object v12, v11

    .end local v11           #bucketDisplayName:Ljava/lang/String;
    .restart local v12       #bucketDisplayName:Ljava/lang/String;
    goto :goto_4b

    .line 438
    .end local v12           #bucketDisplayName:Ljava/lang/String;
    .restart local v11       #bucketDisplayName:Ljava/lang/String;
    :cond_7b
    if-eqz v13, :cond_80

    .line 439
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 441
    :cond_80
    if-eqz v14, :cond_85

    .line 442
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_85
    :goto_85
    move-object v12, v11

    .line 445
    .end local v11           #bucketDisplayName:Ljava/lang/String;
    .restart local v12       #bucketDisplayName:Ljava/lang/String;
    goto :goto_4b

    .line 434
    .end local v12           #bucketDisplayName:Ljava/lang/String;
    .restart local v11       #bucketDisplayName:Ljava/lang/String;
    :catch_87
    move-exception v15

    .line 436
    .local v15, e:Ljava/lang/Exception;
    :try_start_88
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_96

    .line 438
    if-eqz v13, :cond_90

    .line 439
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 441
    :cond_90
    if-eqz v14, :cond_85

    .line 442
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_85

    .line 438
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_96
    move-exception v3

    if-eqz v13, :cond_9c

    .line 439
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 441
    :cond_9c
    if-eqz v14, :cond_a1

    .line 442
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_a1
    throw v3
.end method

.method public static final getCachePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "subFolderName"

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.cooliris.media/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExifthumbnail(Ljava/lang/String;)[B
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1474
    .line 1475
    if-eqz p0, :cond_14

    .line 1477
    :try_start_3
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_15

    .line 1481
    :goto_8
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1482
    invoke-virtual {v1}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v0

    .line 1484
    :cond_14
    return-object v0

    .line 1478
    :catch_15
    move-exception v1

    .line 1479
    const-string v2, "CacheService"

    const-string v3, "cannot read exif"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    goto :goto_8
.end method

.method public static final getImageList(Landroid/content/Context;)Lcom/cooliris/cache/ImageList;
    .registers 16
    .parameter "context"

    .prologue
    .line 750
    sget-object v2, Lcom/cooliris/cache/CacheService;->sList:Lcom/cooliris/cache/ImageList;

    if-eqz v2, :cond_7

    .line 751
    sget-object v10, Lcom/cooliris/cache/CacheService;->sList:Lcom/cooliris/cache/ImageList;

    .line 794
    :cond_6
    :goto_6
    return-object v10

    .line 752
    :cond_7
    new-instance v10, Lcom/cooliris/cache/ImageList;

    invoke-direct {v10}, Lcom/cooliris/cache/ImageList;-><init>()V

    .line 753
    .local v10, list:Lcom/cooliris/cache/ImageList;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 754
    .local v1, uriImages:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 755
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 757
    .local v7, cursorImages:Landroid/database/Cursor;
    :try_start_13
    sget-object v2, Lcom/cooliris/cache/CacheService;->THUMBNAIL_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 758
    if-eqz v7, :cond_49

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 759
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 760
    .local v12, size:I
    new-array v9, v12, [J

    .line 761
    .local v9, ids:[J
    new-array v13, v12, [J

    .line 762
    .local v13, thumbnailIds:[J
    new-array v14, v12, [J

    .line 763
    .local v14, timestamp:[J
    new-array v11, v12, [I

    .line 764
    .local v11, orientation:[I
    const/4 v6, 0x0

    .line 766
    .local v6, ctr:I
    :cond_31
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 767
    const-string v2, "CacheService"

    const-string v3, "getImageList interrupt"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :goto_3e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 778
    iput-object v9, v10, Lcom/cooliris/cache/ImageList;->ids:[J

    .line 779
    iput-object v13, v10, Lcom/cooliris/cache/ImageList;->thumbids:[J

    .line 780
    iput-object v14, v10, Lcom/cooliris/cache/ImageList;->timestamp:[J

    .line 781
    iput-object v11, v10, Lcom/cooliris/cache/ImageList;->orientation:[I
    :try_end_49
    .catchall {:try_start_13 .. :try_end_49} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_49} :catch_7e

    .line 787
    .end local v6           #ctr:I
    .end local v9           #ids:[J
    .end local v11           #orientation:[I
    .end local v12           #size:I
    .end local v13           #thumbnailIds:[J
    .end local v14           #timestamp:[J
    :cond_49
    if-eqz v7, :cond_4e

    .line 788
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 791
    :cond_4e
    :goto_4e
    sget-object v2, Lcom/cooliris/cache/CacheService;->sList:Lcom/cooliris/cache/ImageList;

    if-nez v2, :cond_6

    .line 792
    sput-object v10, Lcom/cooliris/cache/CacheService;->sList:Lcom/cooliris/cache/ImageList;

    goto :goto_6

    .line 770
    .restart local v6       #ctr:I
    .restart local v9       #ids:[J
    .restart local v11       #orientation:[I
    .restart local v12       #size:I
    .restart local v13       #thumbnailIds:[J
    .restart local v14       #timestamp:[J
    :cond_55
    const/4 v2, 0x0

    :try_start_56
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v9, v6

    .line 771
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v14, v6

    .line 772
    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v13, v6

    .line 774
    const/4 v2, 0x3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v11, v6

    .line 775
    add-int/lit8 v6, v6, 0x1

    .line 776
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7a
    .catchall {:try_start_56 .. :try_end_7a} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_7a} :catch_7e

    move-result v2

    if-nez v2, :cond_31

    goto :goto_3e

    .line 783
    .end local v6           #ctr:I
    .end local v9           #ids:[J
    .end local v11           #orientation:[I
    .end local v12           #size:I
    .end local v13           #thumbnailIds:[J
    .end local v14           #timestamp:[J
    :catch_7e
    move-exception v8

    .line 785
    .local v8, e:Ljava/lang/Exception;
    :try_start_7f
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_88

    .line 787
    if-eqz v7, :cond_4e

    .line 788
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_4e

    .line 787
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_88
    move-exception v2

    if-eqz v7, :cond_8e

    .line 788
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8e
    throw v2
.end method

.method private static final getLocaleForAlbumCache()Ljava/util/Locale;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1681
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    const-wide/16 v2, -0x5

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/cooliris/media/DiskCache;->get(JJ)[B

    move-result-object v0

    .line 1682
    if-eqz v0, :cond_59

    array-length v2, v0

    if-lez v2, :cond_59

    .line 1683
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1684
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1686
    :try_start_1a
    invoke-static {v6}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 1687
    if-nez v0, :cond_5f

    .line 1688
    const-string v0, ""

    move-object v4, v0

    .line 1689
    :goto_23
    invoke-static {v6}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 1690
    if-nez v0, :cond_5d

    .line 1691
    const-string v0, ""

    move-object v3, v0

    .line 1692
    :goto_2c
    invoke-static {v6}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 1693
    if-nez v0, :cond_5b

    .line 1694
    const-string v0, ""

    move-object v2, v0

    .line 1695
    :goto_35
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v3, v4, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_51
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_3a} :catch_41

    .line 1703
    invoke-static {v6}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1704
    invoke-static {v5}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1707
    :goto_40
    return-object v0

    .line 1697
    :catch_41
    move-exception v0

    .line 1700
    :try_start_42
    const-string v0, "CacheService"

    const-string v2, "Error reading locale from cache."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_51

    .line 1703
    invoke-static {v6}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1704
    invoke-static {v5}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_40

    .line 1703
    :catchall_51
    move-exception v0

    invoke-static {v6}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1704
    invoke-static {v5}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :cond_59
    move-object v0, v1

    .line 1707
    goto :goto_40

    :cond_5b
    move-object v2, v0

    goto :goto_35

    :cond_5d
    move-object v3, v0

    goto :goto_2c

    :cond_5f
    move-object v4, v0

    goto :goto_23
.end method

.method public static final getSortedImageList(Landroid/content/Context;)Lcom/cooliris/cache/ImageList;
    .registers 43
    .parameter "context"

    .prologue
    .line 821
    sget-object v5, Lcom/cooliris/cache/CacheService;->sList:Lcom/cooliris/cache/ImageList;

    if-eqz v5, :cond_7

    .line 822
    sget-object v24, Lcom/cooliris/cache/CacheService;->sList:Lcom/cooliris/cache/ImageList;

    .line 1025
    :cond_6
    :goto_6
    return-object v24

    .line 823
    :cond_7
    new-instance v24, Lcom/cooliris/cache/ImageList;

    invoke-direct/range {v24 .. v24}, Lcom/cooliris/cache/ImageList;-><init>()V

    .line 824
    .local v24, list:Lcom/cooliris/cache/ImageList;
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 825
    .local v3, uriImages:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 826
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v14, 0x0

    .line 829
    .local v14, cursorImages:Landroid/database/Cursor;
    :try_start_13
    const-string v7, "bucket_id ASC, date_modified ASC, _id ASC"

    .line 833
    .local v7, IMAGE_SORT_ORDER:Ljava/lang/String;
    const/4 v5, 0x5

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "date_modified"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "_data"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "orientation"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "bucket_id"

    aput-object v6, v4, v5

    .line 839
    .local v4, THUMBNAIL_PROJECTION_FOR_SORT:[Ljava/lang/String;
    const/16 v28, 0x0

    .line 840
    .local v28, local_THUMBNAIL_ID_INDEX:I
    const/16 v27, 0x1

    .line 841
    .local v27, local_THUMBNAIL_DATE_MODIFIED_INDEX:I
    const/16 v26, 0x2

    .line 842
    .local v26, local_THUMBNAIL_DATA_INDEX:I
    const/16 v29, 0x3

    .line 843
    .local v29, local_THUMBNAIL_ORIENTATION_INDEX:I
    const/16 v25, 0x4

    .line 845
    .local v25, local_THUMBNAIL_BUCKET_ID_INDEX:I
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 848
    const-wide/16 v12, 0x0

    .line 849
    .local v12, current_bucket_id:J
    const-wide/16 v37, 0x0

    .line 850
    .local v37, tmp_bucket_id:J
    const/4 v11, -0x1

    .line 852
    .local v11, current_bucket_count:I
    if-eqz v14, :cond_111

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_111

    .line 853
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v32

    .line 855
    .local v32, size:I
    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v17, v0

    .line 856
    .local v17, ids:[J
    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v33, v0

    .line 857
    .local v33, thumbnailIds:[J
    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v35, v0

    .line 858
    .local v35, timestamp:[J
    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v30, v0

    .line 860
    .local v30, orientation:[I
    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v18, v0

    .line 861
    .local v18, ids_tmp:[J
    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v34, v0

    .line 862
    .local v34, thumbnailIds_tmp:[J
    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v36, v0

    .line 863
    .local v36, timestamp_tmp:[J
    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v31, v0

    .line 865
    .local v31, orientation_tmp:[I
    const/4 v5, 0x2

    const/4 v6, 0x4

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [[J

    .line 866
    .local v20, last_ids:[[J
    const/4 v5, 0x2

    const/4 v6, 0x4

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [[J

    .line 867
    .local v22, last_thumbnailIds:[[J
    const/4 v5, 0x2

    const/4 v6, 0x4

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [[J

    .line 868
    .local v23, last_timestamp:[[J
    const/4 v5, 0x2

    const/4 v6, 0x4

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [[I

    .line 869
    .local v21, last_orientation:[[I
    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v19, v0

    .line 870
    .local v19, last_count:[I
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v19, v5

    .line 871
    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v19, v5

    .line 873
    const/4 v9, 0x0

    .line 874
    .local v9, ctr1:I
    const/4 v10, 0x0

    .line 877
    .local v10, ctr2:I
    :cond_c9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_11e

    .line 878
    const-string v5, "CacheService"

    const-string v6, "getSortedImageList interrupt"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :goto_d6
    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v5, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1003
    const/4 v5, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-static {v0, v5, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1004
    const/4 v5, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v5, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1005
    const/4 v5, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v5, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1007
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1008
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/cooliris/cache/ImageList;->ids:[J

    .line 1009
    move-object/from16 v0, v33

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/cooliris/cache/ImageList;->thumbids:[J

    .line 1010
    move-object/from16 v0, v35

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/cooliris/cache/ImageList;->timestamp:[J

    .line 1011
    move-object/from16 v0, v30

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/cooliris/cache/ImageList;->orientation:[I
    :try_end_111
    .catchall {:try_start_13 .. :try_end_111} :catchall_2d5
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_111} :catch_2ca

    .line 1017
    .end local v9           #ctr1:I
    .end local v10           #ctr2:I
    .end local v17           #ids:[J
    .end local v18           #ids_tmp:[J
    .end local v19           #last_count:[I
    .end local v20           #last_ids:[[J
    .end local v21           #last_orientation:[[I
    .end local v22           #last_thumbnailIds:[[J
    .end local v23           #last_timestamp:[[J
    .end local v30           #orientation:[I
    .end local v31           #orientation_tmp:[I
    .end local v32           #size:I
    .end local v33           #thumbnailIds:[J
    .end local v34           #thumbnailIds_tmp:[J
    .end local v35           #timestamp:[J
    .end local v36           #timestamp_tmp:[J
    :cond_111
    if-eqz v14, :cond_116

    .line 1018
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1022
    .end local v4           #THUMBNAIL_PROJECTION_FOR_SORT:[Ljava/lang/String;
    .end local v7           #IMAGE_SORT_ORDER:Ljava/lang/String;
    .end local v11           #current_bucket_count:I
    .end local v12           #current_bucket_id:J
    .end local v25           #local_THUMBNAIL_BUCKET_ID_INDEX:I
    .end local v26           #local_THUMBNAIL_DATA_INDEX:I
    .end local v27           #local_THUMBNAIL_DATE_MODIFIED_INDEX:I
    .end local v28           #local_THUMBNAIL_ID_INDEX:I
    .end local v29           #local_THUMBNAIL_ORIENTATION_INDEX:I
    .end local v37           #tmp_bucket_id:J
    :cond_116
    :goto_116
    sget-object v5, Lcom/cooliris/cache/CacheService;->sList:Lcom/cooliris/cache/ImageList;

    if-nez v5, :cond_6

    .line 1023
    sput-object v24, Lcom/cooliris/cache/CacheService;->sList:Lcom/cooliris/cache/ImageList;

    goto/16 :goto_6

    .line 882
    .restart local v4       #THUMBNAIL_PROJECTION_FOR_SORT:[Ljava/lang/String;
    .restart local v7       #IMAGE_SORT_ORDER:Ljava/lang/String;
    .restart local v9       #ctr1:I
    .restart local v10       #ctr2:I
    .restart local v11       #current_bucket_count:I
    .restart local v12       #current_bucket_id:J
    .restart local v17       #ids:[J
    .restart local v18       #ids_tmp:[J
    .restart local v19       #last_count:[I
    .restart local v20       #last_ids:[[J
    .restart local v21       #last_orientation:[[I
    .restart local v22       #last_thumbnailIds:[[J
    .restart local v23       #last_timestamp:[[J
    .restart local v25       #local_THUMBNAIL_BUCKET_ID_INDEX:I
    .restart local v26       #local_THUMBNAIL_DATA_INDEX:I
    .restart local v27       #local_THUMBNAIL_DATE_MODIFIED_INDEX:I
    .restart local v28       #local_THUMBNAIL_ID_INDEX:I
    .restart local v29       #local_THUMBNAIL_ORIENTATION_INDEX:I
    .restart local v30       #orientation:[I
    .restart local v31       #orientation_tmp:[I
    .restart local v32       #size:I
    .restart local v33       #thumbnailIds:[J
    .restart local v34       #thumbnailIds_tmp:[J
    .restart local v35       #timestamp:[J
    .restart local v36       #timestamp_tmp:[J
    .restart local v37       #tmp_bucket_id:J
    :cond_11e
    :try_start_11e
    move/from16 v0, v25

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    .line 884
    const/4 v5, -0x1

    if-ne v11, v5, :cond_12a

    .line 885
    move-wide/from16 v12, v37

    .line 886
    const/4 v11, 0x0

    .line 889
    :cond_12a
    const/4 v5, 0x4

    if-ge v11, v5, :cond_16f

    cmp-long v5, v12, v37

    if-nez v5, :cond_16f

    sget v5, Lcom/cooliris/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v5, v5

    cmp-long v5, v12, v5

    if-eqz v5, :cond_16f

    sget v5, Lcom/cooliris/media/LocalDataSource;->DOWNLOAD_BUCKET_ID:I

    int-to-long v5, v5

    cmp-long v5, v12, v5

    if-eqz v5, :cond_16f

    .line 895
    add-int/lit8 v11, v11, 0x1

    .line 897
    move/from16 v0, v28

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v17, v9

    .line 898
    move/from16 v0, v27

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v35, v9

    .line 899
    move/from16 v0, v26

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v33, v9

    .line 901
    move/from16 v0, v29

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v30, v9

    .line 903
    add-int/lit8 v9, v9, 0x1

    .line 1000
    :goto_167
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_c9

    goto/16 :goto_d6

    .line 905
    :cond_16f
    cmp-long v5, v12, v37

    if-eqz v5, :cond_258

    .line 908
    sget v5, Lcom/cooliris/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v5, v5

    cmp-long v5, v12, v5

    if-eqz v5, :cond_181

    sget v5, Lcom/cooliris/media/LocalDataSource;->DOWNLOAD_BUCKET_ID:I

    int-to-long v5, v5

    cmp-long v5, v12, v5

    if-nez v5, :cond_1ba

    .line 911
    :cond_181
    sget v5, Lcom/cooliris/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v5, v5

    cmp-long v5, v12, v5

    if-nez v5, :cond_1b4

    .line 912
    const/16 v39, 0x0

    .line 916
    .local v39, type:I
    :goto_18a
    aget v5, v19, v39

    const/4 v6, 0x4

    if-ge v5, v6, :cond_1b7

    aget v8, v19, v39

    .line 918
    .local v8, count:I
    :goto_191
    const/16 v16, 0x0

    .local v16, i:I
    :goto_193
    move/from16 v0, v16

    if-ge v0, v8, :cond_1b9

    .line 919
    aget-object v5, v20, v39

    aget-wide v5, v5, v16

    aput-wide v5, v17, v9

    .line 920
    aget-object v5, v23, v39

    aget-wide v5, v5, v16

    aput-wide v5, v35, v9

    .line 921
    aget-object v5, v22, v39

    aget-wide v5, v5, v16

    aput-wide v5, v33, v9

    .line 922
    aget-object v5, v21, v39

    aget v5, v5, v16

    aput v5, v30, v9

    .line 923
    add-int/lit8 v9, v9, 0x1

    .line 918
    add-int/lit8 v16, v16, 0x1

    goto :goto_193

    .line 914
    .end local v8           #count:I
    .end local v16           #i:I
    .end local v39           #type:I
    :cond_1b4
    const/16 v39, 0x1

    .restart local v39       #type:I
    goto :goto_18a

    .line 916
    :cond_1b7
    const/4 v8, 0x4

    goto :goto_191

    .line 925
    .restart local v8       #count:I
    .restart local v16       #i:I
    :cond_1b9
    sub-int/2addr v10, v8

    .line 929
    .end local v8           #count:I
    .end local v16           #i:I
    .end local v39           #type:I
    :cond_1ba
    sget v5, Lcom/cooliris/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v5, v5

    cmp-long v5, v37, v5

    if-eqz v5, :cond_1c8

    sget v5, Lcom/cooliris/media/LocalDataSource;->DOWNLOAD_BUCKET_ID:I

    int-to-long v5, v5

    cmp-long v5, v37, v5

    if-nez v5, :cond_22d

    .line 932
    :cond_1c8
    sget v5, Lcom/cooliris/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v5, v5

    cmp-long v5, v37, v5

    if-nez v5, :cond_22a

    .line 933
    const/16 v39, 0x0

    .line 937
    .restart local v39       #type:I
    :goto_1d1
    move-wide/from16 v12, v37

    .line 938
    const/4 v11, 0x1

    .line 940
    move/from16 v0, v28

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v18, v10

    .line 941
    move/from16 v0, v27

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v36, v10

    .line 943
    move/from16 v0, v26

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v34, v10

    .line 945
    move/from16 v0, v29

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v31, v10

    .line 948
    aget-object v5, v20, v39

    aget v6, v19, v39

    rem-int/lit8 v6, v6, 0x4

    aget-wide v40, v18, v10

    aput-wide v40, v5, v6

    .line 949
    aget-object v5, v23, v39

    aget v6, v19, v39

    rem-int/lit8 v6, v6, 0x4

    aget-wide v40, v36, v10

    aput-wide v40, v5, v6

    .line 950
    aget-object v5, v22, v39

    aget v6, v19, v39

    rem-int/lit8 v6, v6, 0x4

    aget-wide v40, v34, v10

    aput-wide v40, v5, v6

    .line 951
    aget-object v5, v21, v39

    aget v6, v19, v39

    rem-int/lit8 v6, v6, 0x4

    aget v40, v31, v10

    aput v40, v5, v6

    .line 952
    aget v5, v19, v39

    add-int/lit8 v5, v5, 0x1

    aput v5, v19, v39

    .line 954
    add-int/lit8 v10, v10, 0x1

    .line 956
    goto/16 :goto_167

    .line 935
    .end local v39           #type:I
    :cond_22a
    const/16 v39, 0x1

    .restart local v39       #type:I
    goto :goto_1d1

    .line 958
    .end local v39           #type:I
    :cond_22d
    move-wide/from16 v12, v37

    .line 959
    const/4 v11, 0x1

    .line 961
    move/from16 v0, v28

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v17, v9

    .line 962
    move/from16 v0, v27

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v35, v9

    .line 964
    move/from16 v0, v26

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v33, v9

    .line 966
    move/from16 v0, v29

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v30, v9

    .line 969
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_167

    .line 973
    :cond_258
    add-int/lit8 v11, v11, 0x1

    .line 975
    move/from16 v0, v28

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v18, v10

    .line 976
    move/from16 v0, v27

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v36, v10

    .line 978
    move/from16 v0, v26

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v34, v10

    .line 980
    move/from16 v0, v29

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v31, v10

    .line 983
    sget v5, Lcom/cooliris/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v5, v5

    cmp-long v5, v12, v5

    if-eqz v5, :cond_28c

    sget v5, Lcom/cooliris/media/LocalDataSource;->DOWNLOAD_BUCKET_ID:I

    int-to-long v5, v5

    cmp-long v5, v12, v5

    if-nez v5, :cond_2c3

    .line 986
    :cond_28c
    sget v5, Lcom/cooliris/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v5, v5

    cmp-long v5, v12, v5

    if-nez v5, :cond_2c7

    .line 987
    const/16 v39, 0x0

    .line 991
    .restart local v39       #type:I
    :goto_295
    aget-object v5, v20, v39

    aget v6, v19, v39

    rem-int/lit8 v6, v6, 0x4

    aget-wide v40, v18, v10

    aput-wide v40, v5, v6

    .line 992
    aget-object v5, v23, v39

    aget v6, v19, v39

    rem-int/lit8 v6, v6, 0x4

    aget-wide v40, v36, v10

    aput-wide v40, v5, v6

    .line 993
    aget-object v5, v22, v39

    aget v6, v19, v39

    rem-int/lit8 v6, v6, 0x4

    aget-wide v40, v34, v10

    aput-wide v40, v5, v6

    .line 994
    aget-object v5, v21, v39

    aget v6, v19, v39

    rem-int/lit8 v6, v6, 0x4

    aget v40, v31, v10

    aput v40, v5, v6

    .line 995
    aget v5, v19, v39

    add-int/lit8 v5, v5, 0x1

    aput v5, v19, v39
    :try_end_2c3
    .catchall {:try_start_11e .. :try_end_2c3} :catchall_2d5
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_2c3} :catch_2ca

    .line 998
    .end local v39           #type:I
    :cond_2c3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_167

    .line 989
    :cond_2c7
    const/16 v39, 0x1

    .restart local v39       #type:I
    goto :goto_295

    .line 1013
    .end local v4           #THUMBNAIL_PROJECTION_FOR_SORT:[Ljava/lang/String;
    .end local v7           #IMAGE_SORT_ORDER:Ljava/lang/String;
    .end local v9           #ctr1:I
    .end local v10           #ctr2:I
    .end local v11           #current_bucket_count:I
    .end local v12           #current_bucket_id:J
    .end local v17           #ids:[J
    .end local v18           #ids_tmp:[J
    .end local v19           #last_count:[I
    .end local v20           #last_ids:[[J
    .end local v21           #last_orientation:[[I
    .end local v22           #last_thumbnailIds:[[J
    .end local v23           #last_timestamp:[[J
    .end local v25           #local_THUMBNAIL_BUCKET_ID_INDEX:I
    .end local v26           #local_THUMBNAIL_DATA_INDEX:I
    .end local v27           #local_THUMBNAIL_DATE_MODIFIED_INDEX:I
    .end local v28           #local_THUMBNAIL_ID_INDEX:I
    .end local v29           #local_THUMBNAIL_ORIENTATION_INDEX:I
    .end local v30           #orientation:[I
    .end local v31           #orientation_tmp:[I
    .end local v32           #size:I
    .end local v33           #thumbnailIds:[J
    .end local v34           #thumbnailIds_tmp:[J
    .end local v35           #timestamp:[J
    .end local v36           #timestamp_tmp:[J
    .end local v37           #tmp_bucket_id:J
    .end local v39           #type:I
    :catch_2ca
    move-exception v15

    .line 1015
    .local v15, e:Ljava/lang/Exception;
    :try_start_2cb
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2ce
    .catchall {:try_start_2cb .. :try_end_2ce} :catchall_2d5

    .line 1017
    if-eqz v14, :cond_116

    .line 1018
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_116

    .line 1017
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_2d5
    move-exception v5

    if-eqz v14, :cond_2db

    .line 1018
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_2db
    throw v5
.end method

.method public static final isCacheReady(Z)Z
    .registers 10
    .parameter "onlyMediaSets"

    .prologue
    const-wide/16 v7, -0x1

    const-wide/16 v3, -0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    .line 252
    if-eqz p0, :cond_1d

    .line 253
    sget-object v2, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v2, v7, v8, v5, v6}, Lcom/cooliris/media/DiskCache;->get(JJ)[B

    move-result-object v2

    if-eqz v2, :cond_1b

    sget-object v2, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/cooliris/media/DiskCache;->get(JJ)[B

    move-result-object v2

    if-nez v2, :cond_1b

    .line 256
    :cond_1a
    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    .line 253
    goto :goto_1a

    .line 256
    :cond_1d
    sget-object v2, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v2, v7, v8, v5, v6}, Lcom/cooliris/media/DiskCache;->get(JJ)[B

    move-result-object v2

    if-eqz v2, :cond_37

    sget-object v2, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/cooliris/media/DiskCache;->get(JJ)[B

    move-result-object v2

    if-nez v2, :cond_37

    sget-object v2, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    const-wide/16 v3, -0x4

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/cooliris/media/DiskCache;->get(JJ)[B

    move-result-object v2

    if-eqz v2, :cond_1a

    :cond_37
    move v0, v1

    goto :goto_1a
.end method

.method private static isInThumbnailerSkipList(J)Z
    .registers 6
    .parameter "thumbnailId"

    .prologue
    const-wide/16 v2, 0x0

    .line 1298
    sget-object v1, Lcom/cooliris/cache/CacheService;->sSkipThumbnailIds:Lcom/cooliris/media/DiskCache;

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/cooliris/cache/CacheService;->sSkipThumbnailIds:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/cooliris/media/DiskCache;->isDataAvailable(JJ)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1299
    sget-object v1, Lcom/cooliris/cache/CacheService;->sSkipThumbnailIds:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/cooliris/media/DiskCache;->get(JJ)[B

    move-result-object v0

    .line 1300
    .local v0, data:[B
    if-eqz v0, :cond_1b

    array-length v1, v0

    if-lez v1, :cond_1b

    .line 1301
    const/4 v1, 0x1

    .line 1304
    .end local v0           #data:[B
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method private static isMimeTypeFilter(Lcom/cooliris/media/LocalDataSource$MimeFilterType;Ljava/lang/String;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2439
    if-nez p1, :cond_5

    .line 2458
    :cond_4
    :goto_4
    return v0

    .line 2442
    :cond_5
    sget-object v2, Lcom/cooliris/cache/CacheService$4;->$SwitchMap$com$cooliris$media$LocalDataSource$MimeFilterType:[I

    invoke-virtual {p0}, Lcom/cooliris/media/LocalDataSource$MimeFilterType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_6a

    goto :goto_4

    .line 2444
    :pswitch_11
    const-string v2, ".3gp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2445
    const-string v0, "CacheService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Find 3gp filter! file name ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2446
    goto :goto_4

    .line 2450
    :pswitch_39
    const-string v2, ".jpg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, ".jpeg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2451
    :cond_49
    const-string v0, "CacheService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Find jpg filter! file name ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2452
    goto :goto_4

    .line 2442
    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_39
    .end packed-switch
.end method

.method public static final isPresentInCache(J)Z
    .registers 5
    .parameter "setId"

    .prologue
    .line 270
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/cooliris/media/DiskCache;->get(JJ)[B

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static final loadMediaItemsIntoMediaFeed(Landroid/content/Context;Lcom/cooliris/media/MediaFeed;Lcom/cooliris/media/MediaSet;IIZZLcom/cooliris/media/LocalDataSource$MimeFilterType;)V
    .registers 26
    .parameter "context"
    .parameter "feed"
    .parameter "set"
    .parameter "rangeStart"
    .parameter "rangeEnd"
    .parameter "includeImages"
    .parameter "includeVideos"
    .parameter "mMimeFilter"

    .prologue
    .line 561
    const-string v13, "CacheService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loadMediaItemsIntoMediaFeed :: includeImages ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p5

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] includeVideos ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p6

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] mMimeFilter ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p7

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-static/range {p0 .. p0}, Lcom/cooliris/cache/CacheService;->syncCache(Landroid/content/Context;)V

    .line 564
    sget-object v13, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/cooliris/media/MediaSet;->mId:J

    const-wide/16 v16, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/cooliris/media/DiskCache;->get(JJ)[B

    move-result-object v2

    .line 565
    .local v2, albumData:[B
    if-eqz v2, :cond_1e5

    move-object/from16 v0, p2

    iget v13, v0, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/MediaSet;->getNumExpectedItems()I

    move-result v14

    if-ge v13, v14, :cond_1e5

    .line 567
    const/4 v4, 0x0

    .line 569
    .local v4, dis:Ljava/io/DataInputStream;
    :try_start_54
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v13, Ljava/io/BufferedInputStream;

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v15, 0x100

    invoke-direct {v13, v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v5, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_65
    .catchall {:try_start_54 .. :try_end_65} :catchall_202
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_65} :catch_204

    .line 571
    .end local v4           #dis:Ljava/io/DataInputStream;
    .local v5, dis:Ljava/io/DataInputStream;
    :try_start_65
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 572
    .local v10, numItems:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/cooliris/media/MediaSet;->setNumExpectedItems(I)V

    .line 573
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v13

    move-object/from16 v0, p2

    iput-wide v13, v0, Lcom/cooliris/media/MediaSet;->mMinTimestamp:J

    .line 574
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v13

    move-object/from16 v0, p2

    iput-wide v13, v0, Lcom/cooliris/media/MediaSet;->mMaxTimestamp:J

    .line 575
    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/cooliris/media/MediaSet;->mId:J

    sget v15, Lcom/cooliris/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v15, v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_13c

    .line 576
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f06000c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    iput-object v13, v0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    .line 580
    :cond_98
    :goto_98
    const/4 v11, 0x0

    .line 581
    .local v11, reuseItem:Lcom/cooliris/media/MediaItem;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_9a
    if-ge v7, v10, :cond_1a7

    .line 582
    if-nez v11, :cond_18f

    new-instance v8, Lcom/cooliris/media/MediaItem;

    invoke-direct {v8}, Lcom/cooliris/media/MediaItem;-><init>()V

    .line 584
    .local v8, item:Lcom/cooliris/media/MediaItem;
    :goto_a3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v13

    iput-wide v13, v8, Lcom/cooliris/media/MediaItem;->mId:J

    .line 585
    invoke-static {v5}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/cooliris/media/MediaItem;->mCaption:Ljava/lang/String;

    .line 586
    invoke-static {v5}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    .line 587
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/cooliris/media/MediaItem;->setMediaType(I)V

    .line 588
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v13

    iput-wide v13, v8, Lcom/cooliris/media/MediaItem;->mLatitude:D

    .line 589
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v13

    iput-wide v13, v8, Lcom/cooliris/media/MediaItem;->mLongitude:D

    .line 590
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v13

    iput-wide v13, v8, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    .line 591
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v13

    iput-boolean v13, v8, Lcom/cooliris/media/MediaItem;->mTriedRetrievingExifDateTaken:Z

    .line 592
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v13

    iput-wide v13, v8, Lcom/cooliris/media/MediaItem;->mDateAddedInSec:J

    .line 593
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v13

    iput-wide v13, v8, Lcom/cooliris/media/MediaItem;->mDateModifiedInSec:J

    .line 594
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    iput v13, v8, Lcom/cooliris/media/MediaItem;->mDurationInSec:I

    .line 595
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    int-to-float v13, v13

    iput v13, v8, Lcom/cooliris/media/MediaItem;->mRotation:F

    .line 596
    invoke-static {v5}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    .line 600
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/cooliris/media/MediaSet;->lookupContainsItem(Lcom/cooliris/media/MediaItem;)Z

    move-result v12

    .line 601
    .local v12, setLookupContainsItem:Z
    if-eqz v12, :cond_192

    .line 602
    move-object v11, v8

    .line 606
    :goto_fc
    invoke-virtual {v8}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v9

    .line 607
    .local v9, itemMediaType:I
    if-nez v9, :cond_104

    if-nez p5, :cond_109

    :cond_104
    const/4 v13, 0x1

    if-ne v9, v13, :cond_135

    if-eqz p6, :cond_135

    .line 609
    :cond_109
    if-nez v9, :cond_195

    sget-object v3, Lcom/cooliris/cache/CacheService;->BASE_CONTENT_STRING_IMAGES:Ljava/lang/String;

    .line 611
    .local v3, baseUri:Ljava/lang/String;
    :goto_10d
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-wide v14, v8, Lcom/cooliris/media/MediaItem;->mId:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    .line 612
    sget-object v13, Lcom/cooliris/media/LocalDataSource$MimeFilterType;->MIME_FILTER_NONE:Lcom/cooliris/media/LocalDataSource$MimeFilterType;

    move-object/from16 v0, p7

    if-eq v0, v13, :cond_199

    .line 613
    iget-object v13, v8, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-static {v0, v13}, Lcom/cooliris/cache/CacheService;->isMimeTypeFilter(Lcom/cooliris/media/LocalDataSource$MimeFilterType;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_135

    .line 614
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1}, Lcom/cooliris/media/MediaFeed;->addItemToMediaSet(Lcom/cooliris/media/MediaItem;Lcom/cooliris/media/MediaSet;)V

    .line 621
    .end local v3           #baseUri:Ljava/lang/String;
    :cond_135
    :goto_135
    invoke-virtual {v8}, Lcom/cooliris/media/MediaItem;->drmInfoUpdate()V

    .line 581
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_9a

    .line 577
    .end local v7           #i:I
    .end local v8           #item:Lcom/cooliris/media/MediaItem;
    .end local v9           #itemMediaType:I
    .end local v11           #reuseItem:Lcom/cooliris/media/MediaItem;
    .end local v12           #setLookupContainsItem:Z
    :cond_13c
    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/cooliris/media/MediaSet;->mId:J

    sget v15, Lcom/cooliris/media/LocalDataSource;->CAMERA_EXT_BUCKET_ID:I

    int-to-long v15, v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_98

    .line 578
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f06000c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    iput-object v13, v0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;
    :try_end_156
    .catchall {:try_start_65 .. :try_end_156} :catchall_1a1
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_156} :catch_158

    goto/16 :goto_98

    .line 633
    .end local v10           #numItems:I
    :catch_158
    move-exception v6

    move-object v4, v5

    .line 634
    .end local v5           #dis:Ljava/io/DataInputStream;
    .restart local v4       #dis:Ljava/io/DataInputStream;
    .local v6, e:Ljava/io/IOException;
    :goto_15a
    :try_start_15a
    const-string v13, "CacheService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error loading items for album "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    sget-object v13, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v13}, Lcom/cooliris/media/DiskCache;->deleteAll()V

    .line 636
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-static {v13}, Lcom/cooliris/cache/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V
    :try_end_182
    .catchall {:try_start_15a .. :try_end_182} :catchall_202

    .line 638
    invoke-static {v4}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 644
    .end local v4           #dis:Ljava/io/DataInputStream;
    .end local v6           #e:Ljava/io/IOException;
    :goto_185
    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/MediaSet;->updateNumExpectedItems()V

    .line 645
    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/cooliris/media/MediaSet;->generateTitle(Z)V

    .line 646
    return-void

    .restart local v5       #dis:Ljava/io/DataInputStream;
    .restart local v7       #i:I
    .restart local v10       #numItems:I
    .restart local v11       #reuseItem:Lcom/cooliris/media/MediaItem;
    :cond_18f
    move-object v8, v11

    .line 582
    goto/16 :goto_a3

    .line 604
    .restart local v8       #item:Lcom/cooliris/media/MediaItem;
    .restart local v12       #setLookupContainsItem:Z
    :cond_192
    const/4 v11, 0x0

    goto/16 :goto_fc

    .line 609
    .restart local v9       #itemMediaType:I
    :cond_195
    :try_start_195
    sget-object v3, Lcom/cooliris/cache/CacheService;->BASE_CONTENT_STRING_VIDEOS:Ljava/lang/String;

    goto/16 :goto_10d

    .line 617
    .restart local v3       #baseUri:Ljava/lang/String;
    :cond_199
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1}, Lcom/cooliris/media/MediaFeed;->addItemToMediaSet(Lcom/cooliris/media/MediaItem;Lcom/cooliris/media/MediaSet;)V
    :try_end_1a0
    .catchall {:try_start_195 .. :try_end_1a0} :catchall_1a1
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_1a0} :catch_158

    goto :goto_135

    .line 638
    .end local v3           #baseUri:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #item:Lcom/cooliris/media/MediaItem;
    .end local v9           #itemMediaType:I
    .end local v10           #numItems:I
    .end local v11           #reuseItem:Lcom/cooliris/media/MediaItem;
    .end local v12           #setLookupContainsItem:Z
    :catchall_1a1
    move-exception v13

    move-object v4, v5

    .end local v5           #dis:Ljava/io/DataInputStream;
    .restart local v4       #dis:Ljava/io/DataInputStream;
    :goto_1a3
    invoke-static {v4}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v13

    .line 623
    .end local v4           #dis:Ljava/io/DataInputStream;
    .restart local v5       #dis:Ljava/io/DataInputStream;
    .restart local v7       #i:I
    .restart local v10       #numItems:I
    .restart local v11       #reuseItem:Lcom/cooliris/media/MediaItem;
    :cond_1a7
    :try_start_1a7
    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/MediaSet;->checkForDeletedItems()V

    .line 624
    const-string v13, "CacheService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " loadMediaItemsIntoMediaFeed : set.getNumExpectedItems()="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/MediaSet;->getNumExpectedItems()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " set.getNumItems()="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v13

    if-nez v13, :cond_1dd

    .line 630
    invoke-virtual/range {p1 .. p2}, Lcom/cooliris/media/MediaFeed;->removeMediaSet(Lcom/cooliris/media/MediaSet;)V

    .line 632
    :cond_1dd
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/MediaFeed;->setMediaFeedNeedsToRunFlag()V
    :try_end_1e0
    .catchall {:try_start_1a7 .. :try_end_1e0} :catchall_1a1
    .catch Ljava/io/IOException; {:try_start_1a7 .. :try_end_1e0} :catch_158

    .line 638
    invoke-static {v5}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v4, v5

    .line 639
    .end local v5           #dis:Ljava/io/DataInputStream;
    .restart local v4       #dis:Ljava/io/DataInputStream;
    goto :goto_185

    .line 642
    .end local v4           #dis:Ljava/io/DataInputStream;
    .end local v7           #i:I
    .end local v10           #numItems:I
    .end local v11           #reuseItem:Lcom/cooliris/media/MediaItem;
    :cond_1e5
    const-string v13, "CacheService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No items found for album "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_185

    .line 638
    .restart local v4       #dis:Ljava/io/DataInputStream;
    :catchall_202
    move-exception v13

    goto :goto_1a3

    .line 633
    :catch_204
    move-exception v6

    goto/16 :goto_15a
.end method

.method public static final loadMediaSet(Landroid/content/Context;Lcom/cooliris/media/MediaFeed;Lcom/cooliris/media/DataSource;J)V
    .registers 21
    .parameter "context"
    .parameter "feed"
    .parameter "source"
    .parameter "bucketId"

    .prologue
    .line 514
    const-string v11, "CacheService"

    const-string v12, "loadMediaSet"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-static/range {p0 .. p0}, Lcom/cooliris/cache/CacheService;->syncCache(Landroid/content/Context;)V

    .line 516
    sget-object v11, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    const-wide/16 v12, -0x1

    const-wide/16 v14, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/cooliris/media/DiskCache;->get(JJ)[B

    move-result-object v2

    .line 517
    .local v2, albumData:[B
    if-eqz v2, :cond_a5

    array-length v11, v2

    if-lez v11, :cond_a5

    .line 519
    const/4 v3, 0x0

    .line 521
    .local v3, dis:Ljava/io/DataInputStream;
    :try_start_1a
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v11, Ljava/io/BufferedInputStream;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v13, 0x100

    invoke-direct {v11, v12, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v4, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_a0
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_2b} :catch_75

    .line 523
    .end local v3           #dis:Ljava/io/DataInputStream;
    .local v4, dis:Ljava/io/DataInputStream;
    :try_start_2b
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 524
    .local v8, numAlbums:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_30
    if-ge v6, v8, :cond_6d

    .line 525
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    .line 526
    .local v9, setId:J
    const/4 v7, 0x0

    .line 527
    .local v7, mediaSet:Lcom/cooliris/media/MediaSet;
    cmp-long v11, v9, p3

    if-nez v11, :cond_64

    .line 528
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Lcom/cooliris/media/MediaFeed;->getMediaSet(J)Lcom/cooliris/media/MediaSet;

    move-result-object v7

    .line 529
    if-nez v7, :cond_4b

    .line 530
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v9, v10, v1}, Lcom/cooliris/media/MediaFeed;->addMediaSet(JLcom/cooliris/media/DataSource;)Lcom/cooliris/media/MediaSet;

    move-result-object v7

    .line 535
    :cond_4b
    :goto_4b
    invoke-static {v4}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    .line 536
    cmp-long v11, v9, p3

    if-nez v11, :cond_6a

    .line 537
    const-wide/16 v11, -0x1

    iput-wide v11, v7, Lcom/cooliris/media/MediaSet;->mPicasaAlbumId:J

    .line 538
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/cooliris/media/MediaSet;->generateTitle(Z)V

    .line 539
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_60
    .catchall {:try_start_2b .. :try_end_60} :catchall_c0
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_60} :catch_c3

    .line 549
    invoke-static {v4}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 555
    .end local v4           #dis:Ljava/io/DataInputStream;
    .end local v6           #i:I
    .end local v7           #mediaSet:Lcom/cooliris/media/MediaSet;
    .end local v8           #numAlbums:I
    .end local v9           #setId:J
    :goto_63
    return-void

    .line 533
    .restart local v4       #dis:Ljava/io/DataInputStream;
    .restart local v6       #i:I
    .restart local v7       #mediaSet:Lcom/cooliris/media/MediaSet;
    .restart local v8       #numAlbums:I
    .restart local v9       #setId:J
    :cond_64
    :try_start_64
    new-instance v7, Lcom/cooliris/media/MediaSet;

    .end local v7           #mediaSet:Lcom/cooliris/media/MediaSet;
    invoke-direct {v7}, Lcom/cooliris/media/MediaSet;-><init>()V

    .restart local v7       #mediaSet:Lcom/cooliris/media/MediaSet;
    goto :goto_4b

    .line 524
    :cond_6a
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 543
    .end local v7           #mediaSet:Lcom/cooliris/media/MediaSet;
    .end local v9           #setId:J
    :cond_6d
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_70
    .catchall {:try_start_64 .. :try_end_70} :catchall_c0
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_70} :catch_c3

    .line 549
    invoke-static {v4}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 550
    .end local v4           #dis:Ljava/io/DataInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    goto :goto_63

    .line 544
    .end local v6           #i:I
    .end local v8           #numAlbums:I
    :catch_75
    move-exception v5

    .line 545
    .local v5, e:Ljava/io/IOException;
    :goto_76
    :try_start_76
    const-string v11, "CacheService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error finding album "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p3

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    sget-object v11, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v11}, Lcom/cooliris/media/DiskCache;->deleteAll()V

    .line 547
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-static {v11}, Lcom/cooliris/cache/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V
    :try_end_9c
    .catchall {:try_start_76 .. :try_end_9c} :catchall_a0

    .line 549
    invoke-static {v3}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_63

    .end local v5           #e:Ljava/io/IOException;
    :catchall_a0
    move-exception v11

    :goto_a1
    invoke-static {v3}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v11

    .line 553
    .end local v3           #dis:Ljava/io/DataInputStream;
    :cond_a5
    const-string v11, "CacheService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No album found for album id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p3

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 549
    .restart local v4       #dis:Ljava/io/DataInputStream;
    :catchall_c0
    move-exception v11

    move-object v3, v4

    .end local v4           #dis:Ljava/io/DataInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    goto :goto_a1

    .line 544
    .end local v3           #dis:Ljava/io/DataInputStream;
    .restart local v4       #dis:Ljava/io/DataInputStream;
    :catch_c3
    move-exception v5

    move-object v3, v4

    .end local v4           #dis:Ljava/io/DataInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    goto :goto_76
.end method

.method public static final loadMediaSets(Landroid/content/Context;Lcom/cooliris/media/MediaFeed;Lcom/cooliris/media/DataSource;ZZZ)V
    .registers 25
    .parameter "context"
    .parameter "feed"
    .parameter "source"
    .parameter "includeImages"
    .parameter "includeVideos"
    .parameter "moveCameraToFront"

    .prologue
    .line 452
    const-string v14, "CacheService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "loadMediaSets::includeImages = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " includeVideos = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static/range {p0 .. p0}, Lcom/cooliris/cache/CacheService;->syncCache(Landroid/content/Context;)V

    .line 455
    sget-object v14, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    const-wide/16 v15, -0x1

    const-wide/16 v17, 0x0

    invoke-virtual/range {v14 .. v18}, Lcom/cooliris/media/DiskCache;->get(JJ)[B

    move-result-object v2

    .line 456
    .local v2, albumData:[B
    if-eqz v2, :cond_fb

    array-length v14, v2

    if-lez v14, :cond_fb

    .line 457
    const/4 v3, 0x0

    .line 459
    .local v3, dis:Ljava/io/DataInputStream;
    :try_start_39
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v14, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct {v15, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v16, 0x100

    invoke-direct/range {v14 .. v16}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v4, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4a
    .catchall {:try_start_39 .. :try_end_4a} :catchall_10f
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_4a} :catch_111

    .line 461
    .end local v3           #dis:Ljava/io/DataInputStream;
    .local v4, dis:Ljava/io/DataInputStream;
    :try_start_4a
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 462
    .local v11, numAlbums:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_4f
    if-ge v8, v11, :cond_f1

    .line 463
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    .line 464
    .local v12, setId:J
    invoke-static {v4}, Lcom/cooliris/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v10

    .line 465
    .local v10, name:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v6

    .line 466
    .local v6, hasImages:Z
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v7

    .line 467
    .local v7, hasVideos:Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/cooliris/media/MediaFeed;->getMediaSet(J)Lcom/cooliris/media/MediaSet;

    move-result-object v9

    .line 468
    .local v9, mediaSet:Lcom/cooliris/media/MediaSet;
    if-nez v9, :cond_b6

    .line 469
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v13, v1}, Lcom/cooliris/media/MediaFeed;->addMediaSet(JLcom/cooliris/media/DataSource;)Lcom/cooliris/media/MediaSet;

    move-result-object v9

    .line 473
    :goto_71
    if-eqz p5, :cond_87

    if-eqz v9, :cond_87

    iget-wide v14, v9, Lcom/cooliris/media/MediaSet;->mId:J

    sget v16, Lcom/cooliris/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_87

    .line 475
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/cooliris/media/MediaFeed;->moveSetToFront(Lcom/cooliris/media/MediaSet;)V

    .line 477
    :cond_87
    if-eqz p3, :cond_8b

    if-nez v6, :cond_8f

    :cond_8b
    if-eqz p4, :cond_b3

    if-eqz v7, :cond_b3

    .line 478
    :cond_8f
    if-eqz v9, :cond_b3

    .line 479
    iput-object v10, v9, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    .line 480
    sget v14, Lcom/cooliris/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v14, v14

    cmp-long v14, v12, v14

    if-nez v14, :cond_d6

    .line 481
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f06000c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    .line 485
    :cond_a7
    :goto_a7
    iput-boolean v6, v9, Lcom/cooliris/media/MediaSet;->mHasImages:Z

    .line 486
    iput-boolean v7, v9, Lcom/cooliris/media/MediaSet;->mHasVideos:Z

    .line 487
    const-wide/16 v14, -0x1

    iput-wide v14, v9, Lcom/cooliris/media/MediaSet;->mPicasaAlbumId:J

    .line 488
    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Lcom/cooliris/media/MediaSet;->generateTitle(Z)V

    .line 462
    :cond_b3
    add-int/lit8 v8, v8, 0x1

    goto :goto_4f

    .line 471
    :cond_b6
    invoke-virtual {v9}, Lcom/cooliris/media/MediaSet;->refresh()V
    :try_end_b9
    .catchall {:try_start_4a .. :try_end_b9} :catchall_eb
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_b9} :catch_ba

    goto :goto_71

    .line 495
    .end local v6           #hasImages:Z
    .end local v7           #hasVideos:Z
    .end local v8           #i:I
    .end local v9           #mediaSet:Lcom/cooliris/media/MediaSet;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #numAlbums:I
    .end local v12           #setId:J
    :catch_ba
    move-exception v5

    move-object v3, v4

    .line 496
    .end local v4           #dis:Ljava/io/DataInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    .local v5, e:Ljava/io/IOException;
    :goto_bc
    :try_start_bc
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 497
    const-string v14, "CacheService"

    const-string v15, "Error loading albums."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    sget-object v14, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v14}, Lcom/cooliris/media/DiskCache;->deleteAll()V

    .line 499
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-static {v14}, Lcom/cooliris/cache/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V
    :try_end_d2
    .catchall {:try_start_bc .. :try_end_d2} :catchall_10f

    .line 501
    invoke-static {v3}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 510
    .end local v3           #dis:Ljava/io/DataInputStream;
    .end local v5           #e:Ljava/io/IOException;
    :goto_d5
    return-void

    .line 482
    .restart local v4       #dis:Ljava/io/DataInputStream;
    .restart local v6       #hasImages:Z
    .restart local v7       #hasVideos:Z
    .restart local v8       #i:I
    .restart local v9       #mediaSet:Lcom/cooliris/media/MediaSet;
    .restart local v10       #name:Ljava/lang/String;
    .restart local v11       #numAlbums:I
    .restart local v12       #setId:J
    :cond_d6
    :try_start_d6
    sget v14, Lcom/cooliris/media/LocalDataSource;->CAMERA_EXT_BUCKET_ID:I

    int-to-long v14, v14

    cmp-long v14, v12, v14

    if-nez v14, :cond_a7

    .line 483
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f06000c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;
    :try_end_ea
    .catchall {:try_start_d6 .. :try_end_ea} :catchall_eb
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_ea} :catch_ba

    goto :goto_a7

    .line 501
    .end local v6           #hasImages:Z
    .end local v7           #hasVideos:Z
    .end local v8           #i:I
    .end local v9           #mediaSet:Lcom/cooliris/media/MediaSet;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #numAlbums:I
    .end local v12           #setId:J
    :catchall_eb
    move-exception v14

    move-object v3, v4

    .end local v4           #dis:Ljava/io/DataInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    :goto_ed
    invoke-static {v3}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v14

    .line 492
    .end local v3           #dis:Ljava/io/DataInputStream;
    .restart local v4       #dis:Ljava/io/DataInputStream;
    .restart local v8       #i:I
    .restart local v11       #numAlbums:I
    :cond_f1
    if-eqz p5, :cond_f6

    .line 493
    :try_start_f3
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/MediaFeed;->sortMediaSets()V
    :try_end_f6
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_eb
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_f6} :catch_ba

    .line 501
    :cond_f6
    invoke-static {v4}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 502
    .end local v4           #dis:Ljava/io/DataInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    goto :goto_d5

    .line 505
    .end local v3           #dis:Ljava/io/DataInputStream;
    .end local v8           #i:I
    .end local v11           #numAlbums:I
    :cond_fb
    const-string v14, "CacheService"

    const-string v15, "No albums found."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    sget-object v14, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v14}, Lcom/cooliris/media/DiskCache;->deleteAll()V

    .line 508
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-static {v14}, Lcom/cooliris/cache/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V

    goto :goto_d5

    .line 501
    .restart local v3       #dis:Ljava/io/DataInputStream;
    :catchall_10f
    move-exception v14

    goto :goto_ed

    .line 495
    :catch_111
    move-exception v5

    goto :goto_bc
.end method

.method private static final longArrayToByteArray([J)[B
    .registers 8
    .parameter "l"

    .prologue
    .line 1787
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x8

    new-array v0, v5, [B

    .line 1788
    .local v0, bArray:[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1789
    .local v1, bBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    .line 1790
    .local v3, lBuffer:Ljava/nio/LongBuffer;
    array-length v4, p0

    .line 1791
    .local v4, numLongs:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v4, :cond_19

    .line 1792
    aget-wide v5, p0, v2

    invoke-virtual {v3, v2, v5, v6}, Ljava/nio/LongBuffer;->put(IJ)Ljava/nio/LongBuffer;

    .line 1791
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1794
    :cond_19
    return-object v0
.end method

.method private static final longToByteArray(J)[B
    .registers 6
    .parameter "l"

    .prologue
    .line 1779
    const/16 v3, 0x8

    new-array v0, v3, [B

    .line 1780
    .local v0, bArray:[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1781
    .local v1, bBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v2

    .line 1782
    .local v2, lBuffer:Ljava/nio/LongBuffer;
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0, p1}, Ljava/nio/LongBuffer;->put(IJ)Ljava/nio/LongBuffer;

    .line 1783
    return-object v0
.end method

.method public static final markDirty()V
    .registers 7

    .prologue
    .line 274
    const/4 v0, 0x0

    sput-object v0, Lcom/cooliris/cache/CacheService;->sList:Lcom/cooliris/cache/ImageList;

    .line 275
    sget-object v6, Lcom/cooliris/cache/CacheService;->sCacheLock:Ljava/lang/Object;

    monitor-enter v6

    .line 277
    :try_start_6
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    const-wide/16 v1, -0x2

    sget-object v3, Lcom/cooliris/cache/CacheService;->sDummyData:[B

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/cooliris/media/DiskCache;->put(J[BJ)V

    .line 279
    monitor-exit v6

    .line 280
    return-void

    .line 279
    :catchall_13
    move-exception v0

    monitor-exit v6
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public static final markDirty(J)V
    .registers 13
    .parameter "id"

    .prologue
    .line 283
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_7

    .line 304
    :goto_6
    return-void

    .line 286
    :cond_7
    const/4 v0, 0x0

    sput-object v0, Lcom/cooliris/cache/CacheService;->sList:Lcom/cooliris/cache/ImageList;

    .line 287
    sget-object v10, Lcom/cooliris/cache/CacheService;->sCacheLock:Ljava/lang/Object;

    monitor-enter v10

    .line 288
    :try_start_d
    invoke-static {p0, p1}, Lcom/cooliris/cache/CacheService;->longToByteArray(J)[B

    move-result-object v3

    .line 289
    .local v3, data:[B
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    const-wide/16 v1, -0x4

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/cooliris/media/DiskCache;->get(JJ)[B

    move-result-object v6

    .line 290
    .local v6, existingData:[B
    if-eqz v6, :cond_3a

    array-length v0, v6

    if-lez v0, :cond_3a

    .line 291
    invoke-static {v6}, Lcom/cooliris/cache/CacheService;->toLongArray([B)[J

    move-result-object v8

    .line 292
    .local v8, ids:[J
    array-length v9, v8

    .line 293
    .local v9, numIds:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_26
    if-ge v7, v9, :cond_36

    .line 294
    aget-wide v0, v8, v7

    cmp-long v0, v0, p0

    if-nez v0, :cond_33

    .line 295
    monitor-exit v10

    goto :goto_6

    .line 303
    .end local v3           #data:[B
    .end local v6           #existingData:[B
    .end local v7           #i:I
    .end local v8           #ids:[J
    .end local v9           #numIds:I
    :catchall_30
    move-exception v0

    monitor-exit v10
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_30

    throw v0

    .line 293
    .restart local v3       #data:[B
    .restart local v6       #existingData:[B
    .restart local v7       #i:I
    .restart local v8       #ids:[J
    .restart local v9       #numIds:I
    :cond_33
    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    .line 300
    :cond_36
    :try_start_36
    invoke-static {v3, v6}, Lcom/cooliris/cache/CacheService;->concat([B[B)[B

    move-result-object v3

    .line 302
    .end local v7           #i:I
    .end local v8           #ids:[J
    .end local v9           #numIds:I
    :cond_3a
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    const-wide/16 v1, -0x4

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/cooliris/media/DiskCache;->put(J[BJ)V

    .line 303
    monitor-exit v10
    :try_end_44
    .catchall {:try_start_36 .. :try_end_44} :catchall_30

    goto :goto_6
.end method

.method public static final markDirty_nolock()V
    .registers 6

    .prologue
    .line 308
    const/4 v0, 0x0

    sput-object v0, Lcom/cooliris/cache/CacheService;->sList:Lcom/cooliris/cache/ImageList;

    .line 309
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    const-wide/16 v1, -0x2

    sget-object v3, Lcom/cooliris/cache/CacheService;->sDummyData:[B

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/cooliris/media/DiskCache;->put(J[BJ)V

    .line 310
    return-void
.end method

.method public static final markDirty_nolock(J)V
    .registers 14
    .parameter "id"

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v1, -0x4

    .line 313
    const-wide/16 v10, -0x1

    cmp-long v0, p0, v10

    if-nez v0, :cond_b

    .line 333
    :cond_a
    :goto_a
    return-void

    .line 316
    :cond_b
    const/4 v0, 0x0

    sput-object v0, Lcom/cooliris/cache/CacheService;->sList:Lcom/cooliris/cache/ImageList;

    .line 318
    invoke-static {p0, p1}, Lcom/cooliris/cache/CacheService;->longToByteArray(J)[B

    move-result-object v3

    .line 319
    .local v3, data:[B
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/cooliris/media/DiskCache;->get(JJ)[B

    move-result-object v6

    .line 320
    .local v6, existingData:[B
    if-eqz v6, :cond_32

    array-length v0, v6

    if-lez v0, :cond_32

    .line 321
    invoke-static {v6}, Lcom/cooliris/cache/CacheService;->toLongArray([B)[J

    move-result-object v8

    .line 322
    .local v8, ids:[J
    array-length v9, v8

    .line 323
    .local v9, numIds:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_23
    if-ge v7, v9, :cond_2e

    .line 324
    aget-wide v10, v8, v7

    cmp-long v0, v10, p0

    if-eqz v0, :cond_a

    .line 323
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    .line 330
    :cond_2e
    invoke-static {v3, v6}, Lcom/cooliris/cache/CacheService;->concat([B[B)[B

    move-result-object v3

    .line 332
    .end local v7           #i:I
    .end local v8           #ids:[J
    .end local v9           #numIds:I
    :cond_32
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual/range {v0 .. v5}, Lcom/cooliris/media/DiskCache;->put(J[BJ)V

    goto :goto_a
.end method

.method public static final populateMediaItemFromCursor(Lcom/cooliris/media/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V
    .registers 10
    .parameter "item"
    .parameter "cr"
    .parameter "cursor"
    .parameter "baseUri"

    .prologue
    .line 676
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cooliris/media/MediaItem;->mId:J

    .line 677
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cooliris/media/MediaItem;->mCaption:Ljava/lang/String;

    .line 678
    const/4 v2, 0x2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    .line 679
    const/4 v2, 0x3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/cooliris/media/MediaItem;->mLatitude:D

    .line 680
    const/4 v2, 0x4

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/cooliris/media/MediaItem;->mLongitude:D

    .line 681
    const/4 v2, 0x5

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    .line 682
    const/4 v2, 0x6

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cooliris/media/MediaItem;->mDateAddedInSec:J

    .line 683
    const/4 v2, 0x7

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cooliris/media/MediaItem;->mDateModifiedInSec:J

    .line 684
    iget-wide v2, p0, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    iget-wide v4, p0, Lcom/cooliris/media/MediaItem;->mDateModifiedInSec:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_47

    .line 685
    iget-wide v2, p0, Lcom/cooliris/media/MediaItem;->mDateModifiedInSec:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    .line 687
    :cond_47
    const/16 v2, 0x8

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    .line 688
    if-eqz p3, :cond_66

    .line 689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/cooliris/media/MediaItem;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    .line 690
    :cond_66
    invoke-virtual {p0}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v0

    .line 691
    .local v0, itemMediaType:I
    const/16 v2, 0x9

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 693
    .local v1, orientationDurationValue:I
    if-nez v0, :cond_76

    .line 694
    int-to-float v2, v1

    iput v2, p0, Lcom/cooliris/media/MediaItem;->mRotation:F

    .line 698
    :goto_75
    return-void

    .line 696
    :cond_76
    iput v1, p0, Lcom/cooliris/media/MediaItem;->mDurationInSec:I

    goto :goto_75
.end method

.method private static final populateMediaItemsForSets(Landroid/content/Context;Ljava/util/ArrayList;Lcom/cooliris/media/LongSparseArray;Z)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaSet;",
            ">;",
            "Lcom/cooliris/media/LongSparseArray",
            "<",
            "Lcom/cooliris/media/MediaSet;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2206
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2297
    :cond_11
    :goto_11
    return-void

    .line 2210
    :cond_12
    const-string v0, "CacheService"

    const-string v1, "Building items."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2213
    sget-object v8, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2214
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2217
    if-eqz p3, :cond_6f

    .line 2218
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2219
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v2, "bucket_id"

    invoke-direct {v5, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2220
    const-string v2, " in ("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v7

    .line 2221
    :goto_34
    if-ge v3, v4, :cond_4e

    .line 2222
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/MediaSet;

    iget-wide v9, v2, Lcom/cooliris/media/MediaSet;->mId:J

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 2223
    add-int/lit8 v2, v4, -0x1

    if-eq v3, v2, :cond_4a

    .line 2224
    const/16 v2, 0x2c

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2221
    :cond_4a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_34

    .line 2227
    :cond_4e
    const/16 v2, 0x29

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2228
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2230
    const-string v2, "CacheService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating dirty albums where "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    :cond_6f
    :try_start_6f
    sget-object v2, Lcom/cooliris/cache/CacheService;->PROJECTION_IMAGES:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "datetaken ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2235
    sget-object v2, Lcom/cooliris/cache/CacheService;->PROJECTION_VIDEOS:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "datetaken ASC"

    move-object v1, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2237
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    .line 2238
    const/4 v3, 0x0

    aput-object v9, v2, v3

    .line 2239
    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 2240
    new-instance v3, Lcom/cooliris/media/SortCursor;

    const-string v1, "datetaken"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v2, v1, v4, v5}, Lcom/cooliris/media/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;IZ)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_94} :catch_ca

    .line 2247
    if-eqz v3, :cond_108

    :try_start_96
    invoke-virtual {v3}, Lcom/cooliris/media/SortCursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_108

    .line 2248
    invoke-virtual {v3}, Lcom/cooliris/media/SortCursor;->getCount()I

    move-result v1

    .line 2249
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2250
    div-int v5, v1, v4

    move v2, v7

    .line 2251
    :goto_a7
    if-ge v2, v4, :cond_b6

    .line 2252
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/MediaSet;

    .line 2253
    invoke-virtual {v1, v5}, Lcom/cooliris/media/MediaSet;->setNumExpectedItems(I)V

    .line 2251
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_a7

    .line 2256
    :cond_b6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 2257
    const-string v0, "CacheService"

    const-string v1, "populateMediaItemsForSets_2 interrupt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catchall {:try_start_96 .. :try_end_c3} :catchall_116

    .line 2282
    if-eqz v3, :cond_11

    .line 2283
    :try_start_c5
    invoke-virtual {v3}, Lcom/cooliris/media/SortCursor;->close()V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c8} :catch_ca

    goto/16 :goto_11

    .line 2285
    :catch_ca
    move-exception v0

    .line 2287
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2289
    :cond_ce
    :goto_ce
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11d

    .line 2290
    invoke-static {p1}, Lcom/cooliris/cache/CacheService;->writeItemsToCache(Ljava/util/ArrayList;)V

    .line 2292
    const-string v0, "CacheService"

    const-string v1, "Done building items."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 2261
    :cond_e0
    :try_start_e0
    new-instance v2, Lcom/cooliris/media/MediaItem;

    invoke-direct {v2}, Lcom/cooliris/media/MediaItem;-><init>()V

    .line 2262
    invoke-virtual {v3}, Lcom/cooliris/media/SortCursor;->getCurrentCursorIndex()I

    move-result v1

    if-ne v1, v6, :cond_10e

    move v1, v6

    .line 2263
    :goto_ec
    if-eqz v1, :cond_110

    .line 2264
    sget-object v1, Lcom/cooliris/cache/CacheService;->BASE_CONTENT_STRING_VIDEOS:Ljava/lang/String;

    invoke-static {v2, v0, v3, v1}, Lcom/cooliris/cache/CacheService;->populateVideoItemFromCursor(Lcom/cooliris/media/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 2270
    :goto_f3
    const/16 v1, 0xa

    invoke-virtual {v3, v1}, Lcom/cooliris/media/SortCursor;->getLong(I)J

    move-result-wide v4

    .line 2271
    invoke-static {v4, v5, p2}, Lcom/cooliris/cache/CacheService;->findSet(JLcom/cooliris/media/LongSparseArray;)Lcom/cooliris/media/MediaSet;

    move-result-object v1

    .line 2272
    if-eqz v1, :cond_102

    .line 2273
    invoke-virtual {v1, v2}, Lcom/cooliris/media/MediaSet;->addItem(Lcom/cooliris/media/MediaItem;)V

    .line 2279
    :cond_102
    invoke-virtual {v3}, Lcom/cooliris/media/SortCursor;->moveToNext()Z
    :try_end_105
    .catchall {:try_start_e0 .. :try_end_105} :catchall_116

    move-result v1

    if-nez v1, :cond_b6

    .line 2282
    :cond_108
    if-eqz v3, :cond_ce

    .line 2283
    :try_start_10a
    invoke-virtual {v3}, Lcom/cooliris/media/SortCursor;->close()V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_10d} :catch_ca

    goto :goto_ce

    :cond_10e
    move v1, v7

    .line 2262
    goto :goto_ec

    .line 2267
    :cond_110
    :try_start_110
    sget-object v1, Lcom/cooliris/cache/CacheService;->BASE_CONTENT_STRING_IMAGES:Ljava/lang/String;

    invoke-static {v2, v0, v3, v1}, Lcom/cooliris/cache/CacheService;->populateMediaItemFromCursor(Lcom/cooliris/media/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_115
    .catchall {:try_start_110 .. :try_end_115} :catchall_116

    goto :goto_f3

    .line 2282
    :catchall_116
    move-exception v0

    if-eqz v3, :cond_11c

    .line 2283
    :try_start_119
    invoke-virtual {v3}, Lcom/cooliris/media/SortCursor;->close()V

    :cond_11c
    throw v0
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_11d} :catch_ca

    .line 2294
    :cond_11d
    const-string v0, "CacheService"

    const-string v1, "DB Items is not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11
.end method

.method public static final populateVideoItemFromCursor(Lcom/cooliris/media/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V
    .registers 5
    .parameter "item"
    .parameter "cr"
    .parameter "cursor"
    .parameter "baseUri"

    .prologue
    .line 670
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cooliris/media/MediaItem;->setMediaType(I)V

    .line 671
    invoke-static {p0, p1, p2, p3}, Lcom/cooliris/cache/CacheService;->populateMediaItemFromCursor(Lcom/cooliris/media/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method private static final putLocaleForAlbumCache(Ljava/util/Locale;)V
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1649
    .line 1652
    :try_start_1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_69
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_4c

    .line 1653
    :try_start_6
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_81
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_8c

    .line 1654
    :try_start_b
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/cooliris/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 1655
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/cooliris/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 1656
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/cooliris/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 1657
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 1658
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1659
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1660
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    const-wide/16 v1, -0x5

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/cooliris/media/DiskCache;->put(J[BJ)V

    .line 1661
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->flush()V
    :try_end_38
    .catchall {:try_start_b .. :try_end_38} :catchall_85
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_38} :catch_8f

    .line 1669
    if-eqz v6, :cond_3d

    .line 1670
    :try_start_3a
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 1671
    :cond_3d
    if-eqz v7, :cond_42

    .line 1672
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_42} :catch_43

    .line 1678
    :cond_42
    :goto_42
    return-void

    .line 1673
    :catch_43
    move-exception v0

    .line 1674
    const-string v0, "CacheService"

    const-string v1, "Error stream closed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 1662
    :catch_4c
    move-exception v1

    move-object v1, v0

    .line 1665
    :goto_4e
    :try_start_4e
    const-string v2, "CacheService"

    const-string v3, "Error writing locale to cache."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_87

    .line 1669
    if-eqz v0, :cond_5a

    .line 1670
    :try_start_57
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 1671
    :cond_5a
    if-eqz v1, :cond_42

    .line 1672
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5f} :catch_60

    goto :goto_42

    .line 1673
    :catch_60
    move-exception v0

    .line 1674
    const-string v0, "CacheService"

    const-string v1, "Error stream closed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 1668
    :catchall_69
    move-exception v1

    move-object v6, v0

    move-object v7, v0

    move-object v0, v1

    .line 1669
    :goto_6d
    if-eqz v6, :cond_72

    .line 1670
    :try_start_6f
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 1671
    :cond_72
    if-eqz v7, :cond_77

    .line 1672
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_77} :catch_78

    .line 1675
    :cond_77
    :goto_77
    throw v0

    .line 1673
    :catch_78
    move-exception v1

    .line 1674
    const-string v1, "CacheService"

    const-string v2, "Error stream closed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 1668
    :catchall_81
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_6d

    :catchall_85
    move-exception v0

    goto :goto_6d

    :catchall_87
    move-exception v2

    move-object v6, v0

    move-object v7, v1

    move-object v0, v2

    goto :goto_6d

    .line 1662
    :catch_8c
    move-exception v1

    move-object v1, v7

    goto :goto_4e

    :catch_8f
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    goto :goto_4e
.end method

.method public static final queryThumbnail(Landroid/content/Context;JJZJ)[B
    .registers 17
    .parameter "context"
    .parameter "thumbId"
    .parameter "origId"
    .parameter "isVideo"
    .parameter "timestamp"

    .prologue
    .line 737
    if-eqz p5, :cond_e

    sget-object v6, Lcom/cooliris/media/LocalDataSource;->sThumbnailCacheVideo:Lcom/cooliris/media/DiskCache;

    .local v6, thumbnailCache:Lcom/cooliris/media/DiskCache;
    :goto_4
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-wide v7, p6

    .line 739
    invoke-static/range {v0 .. v8}, Lcom/cooliris/cache/CacheService;->queryThumbnail(Landroid/content/Context;JJZLcom/cooliris/media/DiskCache;J)[B

    move-result-object v0

    return-object v0

    .line 737
    .end local v6           #thumbnailCache:Lcom/cooliris/media/DiskCache;
    :cond_e
    sget-object v6, Lcom/cooliris/media/LocalDataSource;->sThumbnailCache:Lcom/cooliris/media/DiskCache;

    goto :goto_4
.end method

.method private static final queryThumbnail(Landroid/content/Context;JJZLcom/cooliris/media/DiskCache;J)[B
    .registers 29
    .parameter "context"
    .parameter "thumbId"
    .parameter "origId"
    .parameter "isVideo"
    .parameter "thumbnailCache"
    .parameter "timestamp"

    .prologue
    .line 800
    invoke-static/range {p0 .. p0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v5

    if-eqz v5, :cond_1e

    invoke-static/range {p0 .. p0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cooliris/app/App;->isPaused()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 801
    sget-object v5, Lcom/cooliris/cache/CacheService;->THUMBNAIL_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Thread;

    .line 802
    .local v17, thumbnailThread:Ljava/lang/Thread;
    if-eqz v17, :cond_1e

    .line 803
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->interrupt()V

    .line 806
    .end local v17           #thumbnailThread:Ljava/lang/Thread;
    :cond_1e
    move-object/from16 v0, p6

    move-wide/from16 v1, p1

    move-wide/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cooliris/media/DiskCache;->get(JJ)[B

    move-result-object v16

    .line 807
    .local v16, bitmap:[B
    if-nez v16, :cond_6c

    .line 808
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 809
    .local v18, time:J
    const/16 v12, 0x80

    const/16 v13, 0x60

    move-object/from16 v5, p0

    move-object/from16 v6, p6

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move/from16 v11, p5

    move-wide/from16 v14, p7

    invoke-static/range {v5 .. v15}, Lcom/cooliris/cache/CacheService;->buildThumbnailForId(Landroid/content/Context;Lcom/cooliris/media/DiskCache;JJZIIJ)[B

    move-result-object v16

    .line 812
    const-string v5, "CacheService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Built thumbnail and screennail for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v18

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    .end local v18           #time:J
    :cond_6c
    return-object v16
.end method

.method private static final refresh(Landroid/content/Context;)V
    .registers 14
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1820
    const-string v0, "CacheService"

    const-string v1, "Refreshing cache."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    sget-object v9, Lcom/cooliris/cache/CacheService;->sCacheLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1822
    :try_start_c
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->deleteAll()V

    .line 1823
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/cooliris/cache/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V

    .line 1825
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1826
    new-instance v6, Lcom/cooliris/media/LongSparseArray;

    invoke-direct {v6}, Lcom/cooliris/media/LongSparseArray;-><init>()V

    .line 1828
    const-string v0, "CacheService"

    const-string v1, "Building albums."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "distinct"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1831
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "distinct"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 1833
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_50
    .catchall {:try_start_c .. :try_end_50} :catchall_174

    move-result-object v0

    .line 1836
    :try_start_51
    sget-object v2, Lcom/cooliris/cache/CacheService;->BUCKET_PROJECTION_IMAGES:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "upper(bucket_display_name) ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1838
    sget-object v2, Lcom/cooliris/cache/CacheService;->BUCKET_PROJECTION_VIDEOS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "upper(bucket_display_name) ASC"

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1841
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    .line 1842
    const/4 v2, 0x0

    aput-object v12, v1, v2

    .line 1843
    const/4 v2, 0x1

    aput-object v3, v1, v2

    .line 1844
    new-instance v4, Lcom/cooliris/media/SortCursor;

    const-string v2, "bucket_display_name"

    const/4 v5, 0x0

    const/4 v11, 0x1

    invoke-direct {v4, v1, v2, v5, v11}, Lcom/cooliris/media/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;IZ)V
    :try_end_78
    .catchall {:try_start_51 .. :try_end_78} :catchall_199
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_78} :catch_1a7

    .line 1847
    if-eqz v4, :cond_148

    :try_start_7a
    invoke-virtual {v4}, Lcom/cooliris/media/SortCursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_148

    .line 1848
    invoke-virtual {v4}, Lcom/cooliris/media/SortCursor;->getCount()I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1849
    new-instance v1, Lcom/cooliris/media/LongSparseArray;

    invoke-virtual {v4}, Lcom/cooliris/media/SortCursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/cooliris/media/LongSparseArray;-><init>(I)V
    :try_end_90
    .catchall {:try_start_7a .. :try_end_90} :catchall_17b

    .line 1850
    :try_start_90
    sget v2, Lcom/cooliris/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v5, v2

    invoke-static {v0, v5, v6}, Lcom/cooliris/cache/CacheService;->setHasItems(Landroid/content/ContentResolver;J)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 1851
    new-instance v2, Lcom/cooliris/media/MediaSet;

    invoke-direct {v2}, Lcom/cooliris/media/MediaSet;-><init>()V

    .line 1852
    sget v5, Lcom/cooliris/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v5, v5

    iput-wide v5, v2, Lcom/cooliris/media/MediaSet;->mId:J

    .line 1853
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v6, 0x7f06000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    .line 1854
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1855
    iget-wide v5, v2, Lcom/cooliris/media/MediaSet;->mId:J

    invoke-virtual {v1, v5, v6, v2}, Lcom/cooliris/media/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1858
    :cond_ba
    sget v2, Lcom/cooliris/media/LocalDataSource;->CAMERA_EXT_BUCKET_ID:I

    int-to-long v5, v2

    invoke-static {v0, v5, v6}, Lcom/cooliris/cache/CacheService;->setHasItems(Landroid/content/ContentResolver;J)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 1859
    new-instance v0, Lcom/cooliris/media/MediaSet;

    invoke-direct {v0}, Lcom/cooliris/media/MediaSet;-><init>()V

    .line 1860
    sget v2, Lcom/cooliris/media/LocalDataSource;->CAMERA_EXT_BUCKET_ID:I

    int-to-long v5, v2

    iput-wide v5, v0, Lcom/cooliris/media/MediaSet;->mId:J

    .line 1861
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f06000c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    .line 1862
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1863
    iget-wide v5, v0, Lcom/cooliris/media/MediaSet;->mId:J

    invoke-virtual {v1, v5, v6, v0}, Lcom/cooliris/media/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1866
    :cond_e2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_106

    .line 1868
    const-string v0, "CacheService"

    const-string v2, "refresh interrupt"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ef
    .catchall {:try_start_90 .. :try_end_ef} :catchall_1ac

    .line 1886
    if-eqz v12, :cond_f4

    .line 1887
    :try_start_f1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1889
    :cond_f4
    if-eqz v3, :cond_f9

    .line 1890
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1892
    :cond_f9
    if-eqz v4, :cond_fe

    .line 1893
    invoke-virtual {v4}, Lcom/cooliris/media/SortCursor;->close()V
    :try_end_fe
    .catchall {:try_start_f1 .. :try_end_fe} :catchall_1a1
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_fe} :catch_1a9

    .line 1911
    :cond_fe
    :try_start_fe
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1912
    invoke-virtual {v1}, Lcom/cooliris/media/LongSparseArray;->clear()V

    monitor-exit v9
    :try_end_105
    .catchall {:try_start_fe .. :try_end_105} :catchall_174

    .line 1916
    :goto_105
    return-void

    .line 1871
    :cond_106
    const/4 v0, 0x0

    :try_start_107
    invoke-virtual {v4, v0}, Lcom/cooliris/media/SortCursor;->getLong(I)J

    move-result-wide v5

    .line 1872
    invoke-static {v5, v6, v1}, Lcom/cooliris/cache/CacheService;->findSet(JLcom/cooliris/media/LongSparseArray;)Lcom/cooliris/media/MediaSet;

    move-result-object v0

    .line 1873
    if-nez v0, :cond_1ae

    .line 1874
    new-instance v0, Lcom/cooliris/media/MediaSet;

    invoke-direct {v0}, Lcom/cooliris/media/MediaSet;-><init>()V

    .line 1875
    iput-wide v5, v0, Lcom/cooliris/media/MediaSet;->mId:J

    .line 1876
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/cooliris/media/SortCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    .line 1877
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1878
    invoke-virtual {v1, v5, v6, v0}, Lcom/cooliris/media/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v2, v0

    .line 1880
    :goto_126
    iget-boolean v5, v2, Lcom/cooliris/media/MediaSet;->mHasImages:Z

    invoke-virtual {v4}, Lcom/cooliris/media/SortCursor;->getCurrentCursorIndex()I

    move-result v0

    if-nez v0, :cond_177

    move v0, v7

    :goto_12f
    or-int/2addr v0, v5

    iput-boolean v0, v2, Lcom/cooliris/media/MediaSet;->mHasImages:Z

    .line 1881
    iget-boolean v5, v2, Lcom/cooliris/media/MediaSet;->mHasVideos:Z

    invoke-virtual {v4}, Lcom/cooliris/media/SortCursor;->getCurrentCursorIndex()I

    move-result v0

    if-ne v0, v7, :cond_179

    move v0, v7

    :goto_13b
    or-int/2addr v0, v5

    iput-boolean v0, v2, Lcom/cooliris/media/MediaSet;->mHasVideos:Z

    .line 1882
    invoke-virtual {v4}, Lcom/cooliris/media/SortCursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_e2

    .line 1883
    invoke-virtual {v4}, Lcom/cooliris/media/SortCursor;->close()V
    :try_end_147
    .catchall {:try_start_107 .. :try_end_147} :catchall_1ac

    move-object v6, v1

    .line 1886
    :cond_148
    if-eqz v12, :cond_14d

    .line 1887
    :try_start_14a
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1889
    :cond_14d
    if-eqz v3, :cond_152

    .line 1890
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1892
    :cond_152
    if-eqz v4, :cond_157

    .line 1893
    invoke-virtual {v4}, Lcom/cooliris/media/SortCursor;->close()V

    .line 1896
    :cond_157
    invoke-static {v10}, Lcom/cooliris/cache/CacheService;->writeSetsToCache(Ljava/util/ArrayList;)V

    .line 1899
    const-string v0, "CacheService"

    const-string v1, "Done building albums."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    const/4 v0, 0x0

    invoke-static {p0, v10, v6, v0}, Lcom/cooliris/cache/CacheService;->populateMediaItemsForSets(Landroid/content/Context;Ljava/util/ArrayList;Lcom/cooliris/media/LongSparseArray;Z)V

    .line 1903
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUseDualCore:Z

    if-eqz v0, :cond_16c

    .line 1905
    invoke-static {v10}, Lcom/cooliris/cache/CacheService;->refreshMetaAlbumCache(Ljava/util/ArrayList;)V
    :try_end_16c
    .catchall {:try_start_14a .. :try_end_16c} :catchall_199
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_16c} :catch_1a7

    .line 1911
    :cond_16c
    :try_start_16c
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1912
    invoke-virtual {v6}, Lcom/cooliris/media/LongSparseArray;->clear()V

    .line 1914
    :goto_172
    monitor-exit v9

    goto :goto_105

    :catchall_174
    move-exception v0

    monitor-exit v9
    :try_end_176
    .catchall {:try_start_16c .. :try_end_176} :catchall_174

    throw v0

    :cond_177
    move v0, v8

    .line 1880
    goto :goto_12f

    :cond_179
    move v0, v8

    .line 1881
    goto :goto_13b

    .line 1886
    :catchall_17b
    move-exception v0

    move-object v1, v6

    :goto_17d
    if-eqz v12, :cond_182

    .line 1887
    :try_start_17f
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1889
    :cond_182
    if-eqz v3, :cond_187

    .line 1890
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1892
    :cond_187
    if-eqz v4, :cond_18c

    .line 1893
    invoke-virtual {v4}, Lcom/cooliris/media/SortCursor;->close()V

    :cond_18c
    throw v0
    :try_end_18d
    .catchall {:try_start_17f .. :try_end_18d} :catchall_1a4
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_18d} :catch_18d

    .line 1907
    :catch_18d
    move-exception v0

    move-object v6, v1

    .line 1909
    :goto_18f
    :try_start_18f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_192
    .catchall {:try_start_18f .. :try_end_192} :catchall_199

    .line 1911
    :try_start_192
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1912
    invoke-virtual {v6}, Lcom/cooliris/media/LongSparseArray;->clear()V

    goto :goto_172

    .line 1911
    :catchall_199
    move-exception v0

    :goto_19a
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1912
    invoke-virtual {v6}, Lcom/cooliris/media/LongSparseArray;->clear()V

    throw v0
    :try_end_1a1
    .catchall {:try_start_192 .. :try_end_1a1} :catchall_174

    .line 1911
    :catchall_1a1
    move-exception v0

    move-object v6, v1

    goto :goto_19a

    :catchall_1a4
    move-exception v0

    move-object v6, v1

    goto :goto_19a

    .line 1907
    :catch_1a7
    move-exception v0

    goto :goto_18f

    :catch_1a9
    move-exception v0

    move-object v6, v1

    goto :goto_18f

    .line 1886
    :catchall_1ac
    move-exception v0

    goto :goto_17d

    :cond_1ae
    move-object v2, v0

    goto/16 :goto_126
.end method

.method private static final refreshDirtySets(Landroid/content/Context;)V
    .registers 10
    .parameter

    .prologue
    .line 1919
    sget-object v1, Lcom/cooliris/cache/CacheService;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1921
    :try_start_3
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    const-wide/16 v2, -0x4

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/cooliris/media/DiskCache;->get(JJ)[B

    move-result-object v0

    .line 1922
    if-eqz v0, :cond_45

    array-length v2, v0

    if-lez v2, :cond_45

    .line 1923
    invoke-static {v0}, Lcom/cooliris/cache/CacheService;->toLongArray([B)[J

    move-result-object v2

    .line 1924
    array-length v3, v2

    .line 1925
    if-lez v3, :cond_45

    .line 1926
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1927
    new-instance v5, Lcom/cooliris/media/LongSparseArray;

    invoke-direct {v5, v3}, Lcom/cooliris/media/LongSparseArray;-><init>(I)V

    .line 1929
    const/4 v0, 0x0

    :goto_24
    if-ge v0, v3, :cond_3a

    .line 1930
    new-instance v6, Lcom/cooliris/media/MediaSet;

    invoke-direct {v6}, Lcom/cooliris/media/MediaSet;-><init>()V

    .line 1931
    aget-wide v7, v2, v0

    iput-wide v7, v6, Lcom/cooliris/media/MediaSet;->mId:J

    .line 1932
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1933
    iget-wide v7, v6, Lcom/cooliris/media/MediaSet;->mId:J

    invoke-virtual {v5, v7, v8, v6}, Lcom/cooliris/media/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1929
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 1936
    :cond_3a
    const-string v0, "CacheService"

    const-string v2, "Refreshing dirty albums"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    const/4 v0, 0x1

    invoke-static {p0, v4, v5, v0}, Lcom/cooliris/cache/CacheService;->populateMediaItemsForSets(Landroid/content/Context;Ljava/util/ArrayList;Lcom/cooliris/media/LongSparseArray;Z)V

    .line 1940
    :cond_45
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    const-wide/16 v2, -0x4

    invoke-virtual {v0, v2, v3}, Lcom/cooliris/media/DiskCache;->delete(J)V

    .line 1942
    monitor-exit v1

    .line 1943
    return-void

    .line 1942
    :catchall_4e
    move-exception v0

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v0
.end method

.method private static final refreshMetaAlbumCache(Ljava/util/ArrayList;)V
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, sets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    const-wide/16 v4, 0x0

    .line 1799
    sget-object v0, Lcom/cooliris/cache/CacheService;->sMetaAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->deleteAll()V

    .line 1801
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1802
    .local v8, numSets:I
    const/4 v0, 0x2

    new-array v6, v0, [J

    .line 1803
    .local v6, dataLong:[J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_f
    if-ge v7, v8, :cond_3b

    .line 1804
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cooliris/media/MediaSet;

    .line 1805
    .local v9, set:Lcom/cooliris/media/MediaSet;
    iget-wide v0, v9, Lcom/cooliris/media/MediaSet;->mMaxAddedTimestamp:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_38

    .line 1806
    const/4 v0, 0x0

    iget-wide v1, v9, Lcom/cooliris/media/MediaSet;->mMaxAddedTimestamp:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v1, v10

    aput-wide v1, v6, v0

    .line 1807
    const/4 v0, 0x1

    invoke-virtual {v9}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v1

    int-to-long v1, v1

    aput-wide v1, v6, v0

    .line 1808
    sget-object v0, Lcom/cooliris/cache/CacheService;->sMetaAlbumCache:Lcom/cooliris/media/DiskCache;

    iget-wide v1, v9, Lcom/cooliris/media/MediaSet;->mId:J

    invoke-static {v6}, Lcom/cooliris/cache/CacheService;->longArrayToByteArray([J)[B

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lcom/cooliris/media/DiskCache;->put(J[BJ)V

    .line 1803
    :cond_38
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 1811
    .end local v9           #set:Lcom/cooliris/media/MediaSet;
    :cond_3b
    sget-object v0, Lcom/cooliris/cache/CacheService;->sMetaAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->flush()V

    .line 1812
    return-void
.end method

.method private static final restartThread(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5
    .parameter
    .parameter "name"
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Thread;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1713
    .local p0, threadRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Thread;>;"
    new-instance v1, Lcom/cooliris/cache/CacheService$2;

    invoke-direct {v1, p2, p0}, Lcom/cooliris/cache/CacheService$2;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 1723
    .local v1, newThread:Ljava/lang/Thread;
    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1724
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1727
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 1728
    .local v0, existingThread:Ljava/lang/Thread;
    if-eqz v0, :cond_16

    .line 1729
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1731
    :cond_16
    return-void
.end method

.method public static final setHasItems(Landroid/content/ContentResolver;J)Z
    .registers 16
    .parameter "cr"
    .parameter "setId"

    .prologue
    .line 338
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 339
    .local v1, uriImages:Landroid/net/Uri;
    sget-object v11, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 340
    .local v11, uriVideos:Landroid/net/Uri;
    new-instance v12, Ljava/lang/StringBuffer;

    const-string v0, "bucket_id"

    invoke-direct {v12, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 341
    .local v12, whereString:Ljava/lang/StringBuffer;
    const/16 v0, 0x3d

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 342
    invoke-virtual {v12, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 343
    const/4 v8, 0x0

    .line 344
    .local v8, cursorImages:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 346
    .local v9, cursorVideos:Landroid/database/Cursor;
    :try_start_15
    sget-object v2, Lcom/cooliris/cache/CacheService;->BUCKET_PROJECTION_IMAGES:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 348
    if-eqz v8, :cond_39

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_39

    .line 349
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_79
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2d} :catch_6a

    .line 350
    const/4 v0, 0x1

    .line 362
    if-eqz v8, :cond_33

    .line 363
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 365
    :cond_33
    if-eqz v9, :cond_38

    .line 366
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 369
    :cond_38
    :goto_38
    return v0

    .line 352
    :cond_39
    :try_start_39
    sget-object v4, Lcom/cooliris/cache/CacheService;->BUCKET_PROJECTION_VIDEOS:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v11

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 354
    if-eqz v9, :cond_5e

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5e

    .line 355
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_52
    .catchall {:try_start_39 .. :try_end_52} :catchall_79
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_52} :catch_6a

    .line 356
    const/4 v0, 0x1

    .line 362
    if-eqz v8, :cond_58

    .line 363
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 365
    :cond_58
    if-eqz v9, :cond_38

    .line 366
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_38

    .line 362
    :cond_5e
    if-eqz v8, :cond_63

    .line 363
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 365
    :cond_63
    if-eqz v9, :cond_68

    .line 366
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 369
    :cond_68
    :goto_68
    const/4 v0, 0x0

    goto :goto_38

    .line 358
    :catch_6a
    move-exception v10

    .line 360
    .local v10, e:Ljava/lang/Exception;
    :try_start_6b
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_79

    .line 362
    if-eqz v8, :cond_73

    .line 363
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 365
    :cond_73
    if-eqz v9, :cond_68

    .line 366
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_68

    .line 362
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_79
    move-exception v0

    if-eqz v8, :cond_7f

    .line 363
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 365
    :cond_7f
    if-eqz v9, :cond_84

    .line 366
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_84
    throw v0
.end method

.method public static final setHasItemsSize(Landroid/content/ContentResolver;J)I
    .registers 19
    .parameter "cr"
    .parameter "setId"

    .prologue
    .line 373
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 374
    .local v3, uriImages:Landroid/net/Uri;
    sget-object v14, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 375
    .local v14, uriVideos:Landroid/net/Uri;
    new-instance v15, Ljava/lang/StringBuffer;

    const-string v2, "bucket_id"

    invoke-direct {v15, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 376
    .local v15, whereString:Ljava/lang/StringBuffer;
    const/16 v2, 0x3d

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 377
    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 378
    const/4 v10, 0x0

    .line 379
    .local v10, cursorImages:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 380
    .local v11, cursorVideos:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 382
    .local v13, mTotalCount:I
    :try_start_18
    sget-object v4, Lcom/cooliris/cache/CacheService;->BUCKET_PROJECTION_IMAGES:[Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 384
    if-eqz v10, :cond_36

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_36

    .line 385
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/2addr v13, v2

    .line 386
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 388
    :cond_36
    sget-object v6, Lcom/cooliris/cache/CacheService;->BUCKET_PROJECTION_VIDEOS:[Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v14

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 390
    if-eqz v11, :cond_55

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_55

    .line 391
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/2addr v13, v2

    .line 392
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_55
    .catchall {:try_start_18 .. :try_end_55} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_55} :catch_60

    .line 398
    :cond_55
    if-eqz v10, :cond_5a

    .line 399
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 401
    :cond_5a
    if-eqz v11, :cond_5f

    .line 402
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 405
    :cond_5f
    :goto_5f
    return v13

    .line 394
    :catch_60
    move-exception v12

    .line 396
    .local v12, e:Ljava/lang/Exception;
    :try_start_61
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_6f

    .line 398
    if-eqz v10, :cond_69

    .line 399
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 401
    :cond_69
    if-eqz v11, :cond_5f

    .line 402
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_5f

    .line 398
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_6f
    move-exception v2

    if-eqz v10, :cond_75

    .line 399
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 401
    :cond_75
    if-eqz v11, :cond_7a

    .line 402
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7a
    throw v2
.end method

.method public static final startCache(Landroid/content/Context;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 234
    sget-boolean v0, Lcom/cooliris/cache/CacheService;->mShutDown:Z

    if-eqz v0, :cond_c

    .line 235
    const-string v0, "CacheService"

    const-string v1, "Cache service startCache ShutDown!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_b
    return-void

    .line 239
    :cond_c
    invoke-static {}, Lcom/cooliris/cache/CacheService;->getLocaleForAlbumCache()Ljava/util/Locale;

    move-result-object v0

    .line 240
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 241
    if-eqz v0, :cond_1c

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 242
    :cond_1c
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->deleteAll()V

    .line 243
    invoke-static {v1}, Lcom/cooliris/cache/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V

    .line 245
    :cond_24
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cooliris.cache.action.CACHE"

    const/4 v2, 0x0

    const-class v3, Lcom/cooliris/cache/CacheService;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    const-string v1, "checkthumbnails"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    invoke-static {p0}, Lcom/cooliris/media/Gallery;->setStorageVolume(Landroid/content/Context;)V

    .line 248
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_b
.end method

.method public static final startNewThumbnailThread(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 1734
    sget-object v0, Lcom/cooliris/cache/CacheService;->THUMBNAIL_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "ThumbnailRefresh"

    new-instance v2, Lcom/cooliris/cache/CacheService$3;

    invoke-direct {v2, p0}, Lcom/cooliris/cache/CacheService$3;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/cooliris/cache/CacheService;->restartThread(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1758
    return-void
.end method

.method private static syncCache(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const-wide/16 v3, -0x4

    .line 649
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cooliris/cache/CacheService;->isCacheReady(Z)Z

    move-result v0

    if-nez v0, :cond_20

    .line 656
    const-string v0, "CacheService"

    const-string v1, "Refreshing Cache for all items"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-static {p0}, Lcom/cooliris/cache/CacheService;->refresh(Landroid/content/Context;)V

    .line 658
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    const-wide/16 v1, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/DiskCache;->delete(J)V

    .line 659
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0, v3, v4}, Lcom/cooliris/media/DiskCache;->delete(J)V

    .line 666
    :cond_1f
    :goto_1f
    return-void

    .line 660
    :cond_20
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cooliris/cache/CacheService;->isCacheReady(Z)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 662
    const-string v0, "CacheService"

    const-string v1, "Refreshing Cache for dirty items"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-static {p0}, Lcom/cooliris/cache/CacheService;->refreshDirtySets(Landroid/content/Context;)V

    .line 664
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0, v3, v4}, Lcom/cooliris/media/DiskCache;->delete(J)V

    goto :goto_1f
.end method

.method private static final toLongArray([B)[J
    .registers 8
    .parameter "data"

    .prologue
    .line 1768
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1769
    .local v0, bBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v2

    .line 1770
    .local v2, lBuffer:Ljava/nio/LongBuffer;
    invoke-virtual {v2}, Ljava/nio/LongBuffer;->capacity()I

    move-result v3

    .line 1771
    .local v3, numLongs:I
    new-array v4, v3, [J

    .line 1772
    .local v4, retVal:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v3, :cond_1a

    .line 1773
    invoke-virtual {v2, v1}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v5

    aput-wide v5, v4, v1

    .line 1772
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1775
    :cond_1a
    return-object v4
.end method

.method public static final writeBitmapToCache(Lcom/cooliris/media/DiskCache;JJLandroid/graphics/Bitmap;IIJ)[B
    .registers 33
    .parameter "thumbnailCache"
    .parameter "thumbId"
    .parameter "origId"
    .parameter "bitmap"
    .parameter "thumbnailWidth"
    .parameter "thumbnailHeight"
    .parameter "timestamp"

    .prologue
    .line 1490
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    .line 1491
    .local v22, width:I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    .line 1494
    .local v19, height:I
    div-int/lit8 v17, v22, 0x2

    .line 1495
    .local v17, focusX:I
    div-int/lit8 v18, v19, 0x2

    .line 1516
    .local v18, focusY:I
    mul-int v2, p6, v19

    mul-int v3, p7, v22

    if-ge v2, v3, :cond_c3

    .line 1518
    mul-int v2, p6, v19

    div-int v11, v2, p7

    .line 1519
    .local v11, cropWidth:I
    const/4 v2, 0x0

    div-int/lit8 v3, v11, 0x2

    sub-int v3, v17, v3

    sub-int v4, v22, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1520
    .local v12, cropX:I
    const/4 v13, 0x0

    .line 1521
    .local v13, cropY:I
    move/from16 v10, v19

    .line 1522
    .local v10, cropHeight:I
    move/from16 v0, p7

    int-to-float v2, v0

    move/from16 v0, v19

    int-to-float v3, v0

    div-float v21, v2, v3

    .line 1533
    .local v21, scaleFactor:F
    :goto_30
    const/16 v16, 0x0

    .line 1534
    .local v16, finalBitmap:Landroid/graphics/Bitmap;
    sget-boolean v2, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v2, :cond_e3

    .line 1535
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 1544
    :goto_40
    new-instance v9, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1545
    .local v9, canvas:Landroid/graphics/Canvas;
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    .line 1546
    .local v20, paint:Landroid/graphics/Paint;
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1547
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1548
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1549
    new-instance v2, Landroid/graphics/Rect;

    add-int v3, v12, v11

    add-int v4, v13, v10

    invoke-direct {v2, v12, v13, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-direct {v3, v4, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1551
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->recycle()V

    .line 1554
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x4000

    invoke-direct {v8, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1555
    .local v8, cacheOutput:Ljava/io/ByteArrayOutputStream;
    new-instance v14, Ljava/io/DataOutputStream;

    invoke-direct {v14, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1556
    .local v14, dataOutput:Ljava/io/DataOutputStream;
    const/4 v5, 0x0

    .line 1558
    .local v5, retVal:[B
    :try_start_87
    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1559
    sub-int v2, v17, v12

    int-to-float v2, v2

    mul-float v2, v2, v21

    float-to-int v2, v2

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1560
    sub-int v2, v18, v13

    int-to-float v2, v2

    mul-float v2, v2, v21

    float-to-int v2, v2

    invoke-virtual {v14, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1561
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->flush()V

    .line 1562
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1563
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 1564
    monitor-enter p0
    :try_end_af
    .catchall {:try_start_87 .. :try_end_af} :catchall_100
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_af} :catch_f2

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v6, p8

    .line 1565
    :try_start_b5
    invoke-virtual/range {v2 .. v7}, Lcom/cooliris/media/DiskCache;->put(J[BJ)V

    .line 1566
    monitor-exit p0
    :try_end_b9
    .catchall {:try_start_b5 .. :try_end_b9} :catchall_ef

    .line 1570
    invoke-static {v14}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1571
    invoke-static {v8}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1572
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 1574
    :goto_c2
    return-object v5

    .line 1525
    .end local v5           #retVal:[B
    .end local v8           #cacheOutput:Ljava/io/ByteArrayOutputStream;
    .end local v9           #canvas:Landroid/graphics/Canvas;
    .end local v10           #cropHeight:I
    .end local v11           #cropWidth:I
    .end local v12           #cropX:I
    .end local v13           #cropY:I
    .end local v14           #dataOutput:Ljava/io/DataOutputStream;
    .end local v16           #finalBitmap:Landroid/graphics/Bitmap;
    .end local v20           #paint:Landroid/graphics/Paint;
    .end local v21           #scaleFactor:F
    :cond_c3
    mul-int v2, p7, v22

    div-int v10, v2, p6

    .line 1526
    .restart local v10       #cropHeight:I
    const/4 v2, 0x0

    div-int/lit8 v3, v10, 0x2

    sub-int v3, v18, v3

    sub-int v4, v19, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1527
    .restart local v13       #cropY:I
    const/4 v12, 0x0

    .line 1528
    .restart local v12       #cropX:I
    move/from16 v11, v22

    .line 1529
    .restart local v11       #cropWidth:I
    move/from16 v0, p6

    int-to-float v2, v0

    move/from16 v0, v22

    int-to-float v3, v0

    div-float v21, v2, v3

    .restart local v21       #scaleFactor:F
    goto/16 :goto_30

    .line 1538
    .restart local v16       #finalBitmap:Landroid/graphics/Bitmap;
    :cond_e3
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    goto/16 :goto_40

    .line 1566
    .restart local v5       #retVal:[B
    .restart local v8       #cacheOutput:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #canvas:Landroid/graphics/Canvas;
    .restart local v14       #dataOutput:Ljava/io/DataOutputStream;
    .restart local v20       #paint:Landroid/graphics/Paint;
    :catchall_ef
    move-exception v2

    :try_start_f0
    monitor-exit p0
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    :try_start_f1
    throw v2
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_100
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f2} :catch_f2

    .line 1567
    :catch_f2
    move-exception v15

    .line 1568
    .local v15, e:Ljava/lang/Exception;
    :try_start_f3
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f6
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_100

    .line 1570
    invoke-static {v14}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1571
    invoke-static {v8}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1572
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_c2

    .line 1570
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_100
    move-exception v2

    invoke-static {v14}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1571
    invoke-static {v8}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1572
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    throw v2
.end method

.method private static final writeItemsForASet(Lcom/cooliris/media/MediaSet;)V
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2355
    .line 2358
    :try_start_1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_d6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_a1

    .line 2359
    :try_start_6
    new-instance v6, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v2, 0x100

    invoke-direct {v1, v7, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v6, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_e7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_f2

    .line 2360
    :try_start_12
    invoke-virtual {p0}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 2361
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2362
    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2363
    iget-wide v0, p0, Lcom/cooliris/media/MediaSet;->mMinTimestamp:J

    invoke-virtual {v6, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2364
    iget-wide v0, p0, Lcom/cooliris/media/MediaSet;->mMaxTimestamp:J

    invoke-virtual {v6, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2365
    const/4 v0, 0x0

    move v1, v0

    :goto_29
    if-ge v1, v3, :cond_83

    .line 2366
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaItem;

    .line 2368
    sub-int v0, v3, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaItem;

    .line 2369
    iget-wide v4, v0, Lcom/cooliris/media/MediaItem;->mId:J

    invoke-virtual {v6, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2370
    iget-object v4, v0, Lcom/cooliris/media/MediaItem;->mCaption:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/cooliris/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 2371
    iget-object v4, v0, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/cooliris/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 2372
    invoke-virtual {v0}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2373
    iget-wide v4, v0, Lcom/cooliris/media/MediaItem;->mLatitude:D

    invoke-virtual {v6, v4, v5}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 2374
    iget-wide v4, v0, Lcom/cooliris/media/MediaItem;->mLongitude:D

    invoke-virtual {v6, v4, v5}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 2375
    iget-wide v4, v0, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    invoke-virtual {v6, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2376
    iget-boolean v4, v0, Lcom/cooliris/media/MediaItem;->mTriedRetrievingExifDateTaken:Z

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2377
    iget-wide v4, v0, Lcom/cooliris/media/MediaItem;->mDateAddedInSec:J

    invoke-virtual {v6, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2378
    iget-wide v4, v0, Lcom/cooliris/media/MediaItem;->mDateModifiedInSec:J

    invoke-virtual {v6, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2379
    iget v4, v0, Lcom/cooliris/media/MediaItem;->mDurationInSec:I

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2380
    iget v4, v0, Lcom/cooliris/media/MediaItem;->mRotation:F

    float-to-int v4, v4

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2381
    iget-object v0, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/cooliris/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 2365
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_29

    .line 2383
    :cond_83
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 2384
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    iget-wide v1, p0, Lcom/cooliris/media/MediaSet;->mId:J

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/cooliris/media/DiskCache;->put(J[BJ)V

    .line 2385
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_96
    .catchall {:try_start_12 .. :try_end_96} :catchall_eb
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_96} :catch_f5

    .line 2393
    if-eqz v6, :cond_9b

    .line 2394
    :try_start_98
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 2397
    :cond_9b
    if-eqz v7, :cond_a0

    .line 2398
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a0} :catch_f9

    .line 2405
    :cond_a0
    :goto_a0
    return-void

    .line 2387
    :catch_a1
    move-exception v1

    move-object v1, v0

    .line 2388
    :goto_a3
    :try_start_a3
    const-string v2, "CacheService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing to diskcache for set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    sget-object v2, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v2}, Lcom/cooliris/media/DiskCache;->deleteAll()V

    .line 2390
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/cooliris/cache/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V
    :try_end_c9
    .catchall {:try_start_a3 .. :try_end_c9} :catchall_ed

    .line 2393
    if-eqz v0, :cond_ce

    .line 2394
    :try_start_cb
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 2397
    :cond_ce
    if-eqz v1, :cond_a0

    .line 2398
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_d3} :catch_d4

    goto :goto_a0

    .line 2401
    :catch_d4
    move-exception v0

    goto :goto_a0

    .line 2392
    :catchall_d6
    move-exception v1

    move-object v6, v0

    move-object v7, v0

    move-object v0, v1

    .line 2393
    :goto_da
    if-eqz v6, :cond_df

    .line 2394
    :try_start_dc
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 2397
    :cond_df
    if-eqz v7, :cond_e4

    .line 2398
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_e4} :catch_e5

    .line 2403
    :cond_e4
    :goto_e4
    throw v0

    .line 2401
    :catch_e5
    move-exception v1

    goto :goto_e4

    .line 2392
    :catchall_e7
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_da

    :catchall_eb
    move-exception v0

    goto :goto_da

    :catchall_ed
    move-exception v2

    move-object v6, v0

    move-object v7, v1

    move-object v0, v2

    goto :goto_da

    .line 2387
    :catch_f2
    move-exception v1

    move-object v1, v7

    goto :goto_a3

    :catch_f5
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    goto :goto_a3

    .line 2401
    :catch_f9
    move-exception v0

    goto :goto_a0
.end method

.method private static final writeItemsToCache(Ljava/util/ArrayList;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2342
    .local p0, sets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2343
    .local v1, numSets:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_1f

    .line 2344
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2345
    sget-object v2, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v2}, Lcom/cooliris/media/DiskCache;->flush()V

    .line 2351
    :goto_12
    return-void

    .line 2348
    :cond_13
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/MediaSet;

    invoke-static {v2}, Lcom/cooliris/cache/CacheService;->writeItemsForASet(Lcom/cooliris/media/MediaSet;)V

    .line 2343
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2350
    :cond_1f
    sget-object v2, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v2}, Lcom/cooliris/media/DiskCache;->flush()V

    goto :goto_12
.end method

.method private static final writeSetsToCache(Ljava/util/ArrayList;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2300
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2301
    const/4 v0, 0x0

    .line 2302
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2304
    :try_start_a
    new-instance v6, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v2, 0x100

    invoke-direct {v1, v7, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v6, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_97
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_16} :catch_7c

    .line 2305
    :try_start_16
    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2306
    const/4 v0, 0x0

    move v1, v0

    :goto_1b
    if-ge v1, v8, :cond_4b

    .line 2307
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2308
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_a1
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_26} :catch_a7

    .line 2336
    invoke-static {v7}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2337
    invoke-static {v6}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2339
    :goto_2c
    return-void

    .line 2311
    :cond_2d
    :try_start_2d
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaSet;

    .line 2312
    iget-wide v2, v0, Lcom/cooliris/media/MediaSet;->mId:J

    invoke-virtual {v6, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2313
    iget-object v2, v0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    invoke-static {v6, v2}, Lcom/cooliris/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 2314
    iget-boolean v2, v0, Lcom/cooliris/media/MediaSet;->mHasImages:Z

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2315
    iget-boolean v0, v0, Lcom/cooliris/media/MediaSet;->mHasVideos:Z

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2306
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b

    .line 2323
    :cond_4b
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 2324
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    const-wide/16 v1, -0x1

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/cooliris/media/DiskCache;->put(J[BJ)V

    .line 2325
    if-nez v8, :cond_70

    .line 2326
    const-string v0, "CacheService"

    const-string v1, "Album Cache delete all"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->deleteAll()V

    .line 2328
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/cooliris/cache/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V

    .line 2330
    :cond_70
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->flush()V
    :try_end_75
    .catchall {:try_start_2d .. :try_end_75} :catchall_a1
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_75} :catch_a7

    .line 2336
    invoke-static {v7}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2337
    invoke-static {v6}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2c

    .line 2331
    :catch_7c
    move-exception v1

    .line 2332
    :goto_7d
    :try_start_7d
    const-string v1, "CacheService"

    const-string v2, "Error writing albums to diskcache."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    sget-object v1, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v1}, Lcom/cooliris/media/DiskCache;->deleteAll()V

    .line 2334
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/cooliris/cache/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V
    :try_end_90
    .catchall {:try_start_7d .. :try_end_90} :catchall_a3

    .line 2336
    invoke-static {v7}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2337
    invoke-static {v0}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2c

    .line 2336
    :catchall_97
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    :goto_9a
    invoke-static {v7}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2337
    invoke-static {v6}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 2336
    :catchall_a1
    move-exception v0

    goto :goto_9a

    :catchall_a3
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_9a

    .line 2331
    :catch_a7
    move-exception v0

    move-object v0, v6

    goto :goto_7d
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter

    .prologue
    .line 1604
    const-string v0, "CacheService"

    const-string v1, "Starting CacheService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bad_removal"

    if-ne v0, v1, :cond_1b

    .line 1613
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->deleteAll()V

    .line 1614
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/cooliris/cache/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V

    .line 1617
    :cond_1b
    invoke-static {}, Lcom/cooliris/cache/CacheService;->checkLowStorageforCacheService()Z

    move-result v0

    if-nez v0, :cond_40

    .line 1620
    sget-object v0, Lcom/cooliris/media/LocalDataSource;->sThumbnailCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->close()V

    .line 1621
    sget-object v0, Lcom/cooliris/media/LocalDataSource;->sThumbnailCacheVideo:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->close()V

    .line 1622
    sget-object v0, Lcom/cooliris/media/PicasaDataSource;->sThumbnailCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->close()V

    .line 1623
    sget-object v0, Lcom/cooliris/cache/CacheService;->sAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->close()V

    .line 1624
    sget-object v0, Lcom/cooliris/cache/CacheService;->sMetaAlbumCache:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->close()V

    .line 1625
    sget-object v0, Lcom/cooliris/cache/CacheService;->sSkipThumbnailIds:Lcom/cooliris/media/DiskCache;

    invoke-virtual {v0}, Lcom/cooliris/media/DiskCache;->flush()V

    .line 1645
    :cond_3f
    :goto_3f
    return-void

    .line 1629
    :cond_40
    invoke-static {}, Lcom/cooliris/cache/CacheService;->getLocaleForAlbumCache()Ljava/util/Locale;

    move-result-object v0

    .line 1630
    if-eqz v0, :cond_7b

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 1631
    const-string v1, "CacheService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Locale ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :goto_6e
    const-string v0, "checkthumbnails"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 1637
    invoke-static {p0}, Lcom/cooliris/cache/CacheService;->startNewThumbnailThread(Landroid/content/Context;)V

    goto :goto_3f

    .line 1634
    :cond_7b
    invoke-static {}, Lcom/cooliris/cache/CacheService;->markDirty()V

    goto :goto_6e

    .line 1639
    :cond_7f
    sget-object v0, Lcom/cooliris/cache/CacheService;->THUMBNAIL_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 1640
    if-eqz v0, :cond_3f

    .line 1641
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3f
.end method
