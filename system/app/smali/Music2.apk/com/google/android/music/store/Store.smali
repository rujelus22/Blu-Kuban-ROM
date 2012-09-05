.class public Lcom/google/android/music/store/Store;
.super Ljava/lang/Object;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/store/Store$DowngradeException;,
        Lcom/google/android/music/store/Store$DatabaseHelper;
    }
.end annotation


# static fields
.field static final LOGV:Z

.field static final OPERATIONS_PER_TXN_AS_STRING:Ljava/lang/String;

.field private static sDownloadQueueProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/google/android/music/store/Store;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDbOpener:Lcom/google/android/music/store/Store$DatabaseHelper;

.field private final mDowngraded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMediaStoreImporter:Lcom/google/android/music/store/MediaStoreImporter;

.field private mRingtoneManager:Lcom/google/android/music/store/MusicRingtoneManager;

.field private mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 51
    new-instance v0, Lcom/google/android/music/store/Store;

    invoke-direct {v0}, Lcom/google/android/music/store/Store;-><init>()V

    sput-object v0, Lcom/google/android/music/store/Store;->sInstance:Lcom/google/android/music/store/Store;

    .line 60
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/Store;->OPERATIONS_PER_TXN_AS_STRING:Ljava/lang/String;

    .line 71
    const-string v0, "MusicStore"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/store/Store;->LOGV:Z

    .line 2595
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    .line 2597
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "MUSIC.Id"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2599
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "purposes"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2602
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "Album"

    const-string v2, "Album"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2604
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "Artist"

    const-string v2, "Artist"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2606
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "AlbumArtist"

    const-string v2, "AlbumArtist"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "Title"

    const-string v2, "Title"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2610
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "DownloadStatus"

    sget-object v2, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2613
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "Size"

    const-string v2, "Size"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2615
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/music/store/Store;->mDowngraded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    new-instance v0, Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-direct {v0}, Lcom/android/common/content/SyncStateContentProviderHelper;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/store/Store;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    .line 86
    new-instance v0, Lcom/google/android/music/store/MediaStoreImporter;

    invoke-direct {v0}, Lcom/google/android/music/store/MediaStoreImporter;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/store/Store;->mMediaStoreImporter:Lcom/google/android/music/store/MediaStoreImporter;

    .line 87
    new-instance v0, Lcom/google/android/music/store/MusicRingtoneManager;

    invoke-direct {v0, p0}, Lcom/google/android/music/store/MusicRingtoneManager;-><init>(Lcom/google/android/music/store/Store;)V

    iput-object v0, p0, Lcom/google/android/music/store/Store;->mRingtoneManager:Lcom/google/android/music/store/MusicRingtoneManager;

    .line 2208
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/store/Store;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/store/Store;)Lcom/android/common/content/SyncStateContentProviderHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/store/Store;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/store/Store;)Lcom/google/android/music/store/MediaStoreImporter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/store/Store;->mMediaStoreImporter:Lcom/google/android/music/store/MediaStoreImporter;

    return-object v0
.end method

.method static canonicalizeAndGenerateId(Lcom/google/android/music/store/TagNormalizer;Ljava/lang/String;)Landroid/util/Pair;
    .registers 7
    .parameter "normalizer"
    .parameter "originalValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/store/TagNormalizer;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1561
    const-wide/16 v1, 0x0

    .line 1562
    .local v1, id:J
    const/4 v0, 0x0

    .line 1564
    .local v0, canonicalValue:Ljava/lang/String;
    if-eqz p1, :cond_14

    .line 1565
    invoke-virtual {p0, p1}, Lcom/google/android/music/store/TagNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1568
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1569
    move-object v0, p1

    .line 1571
    :cond_10
    invoke-static {v0}, Lcom/google/android/music/store/Store;->generateId(Ljava/lang/String;)J

    move-result-wide v1

    .line 1574
    :cond_14
    new-instance v3, Landroid/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public static computeAccountHash(Landroid/accounts/Account;)I
    .registers 3
    .parameter "account"

    .prologue
    .line 1448
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/music/store/Store;->computeAccountHash(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static computeAccountHash(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1461
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1462
    new-instance v1, Lcom/google/android/music/utils/BobJenkinsLookup3;

    invoke-direct {v1}, Lcom/google/android/music/utils/BobJenkinsLookup3;-><init>()V

    .line 1465
    :try_start_16
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/music/utils/BobJenkinsLookup3;->hashbig([B)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1466
    if-nez v0, :cond_2b

    .line 1467
    const-string v0, "MusicStore"

    const-string v1, "Hash collision with media store value"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_2a} :catch_2c

    .line 1468
    const/4 v0, 0x1

    .line 1470
    :cond_2b
    return v0

    .line 1471
    :catch_2c
    move-exception v0

    .line 1472
    const-string v1, "MusicStore"

    const-string v2, "UTF-8 is not supported?"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to convert to UTF-8"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static countLocalMusic(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 11
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 351
    const/4 v8, 0x0

    .line 352
    .local v8, count:I
    const-string v1, "MUSIC"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(1)"

    aput-object v0, v2, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SourceAccount="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 358
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_3a

    :try_start_2b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 359
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_42

    move-result v8

    .line 364
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 367
    return v8

    .line 361
    :cond_3a
    :try_start_3a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to count local media"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_42

    .line 364
    :catchall_42
    move-exception v0

    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static deleteFromMediaStore(Landroid/content/Context;J)Z
    .registers 15
    .parameter "context"
    .parameter "mediaStoreId"

    .prologue
    .line 1267
    const/4 v11, 0x0

    .line 1268
    .local v11, success:Z
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1273
    .local v1, uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 1274
    .local v9, file:Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1279
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_70

    :try_start_1d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1280
    new-instance v10, Ljava/io/File;

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_97
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_2d} :catch_8a

    .line 1281
    .end local v9           #file:Ljava/io/File;
    .local v10, file:Ljava/io/File;
    :try_start_2d
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_c2
    .catch Ljava/lang/SecurityException; {:try_start_2d .. :try_end_30} :catch_c5

    move-result v0

    if-eqz v0, :cond_65

    .line 1282
    const/4 v11, 0x1

    move-object v9, v10

    .line 1299
    .end local v10           #file:Ljava/io/File;
    .restart local v9       #file:Ljava/io/File;
    :goto_35
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1302
    :goto_38
    if-eqz v11, :cond_64

    .line 1303
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1304
    .local v7, deleted:I
    if-nez v7, :cond_9c

    .line 1308
    const-string v0, "MusicStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio file with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not found in the media store"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    .end local v7           #deleted:I
    :cond_64
    :goto_64
    return v11

    .line 1284
    .end local v9           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    :cond_65
    :try_start_65
    invoke-virtual {v10}, Ljava/io/File;->exists()Z
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_c2
    .catch Ljava/lang/SecurityException; {:try_start_65 .. :try_end_68} :catch_c5

    move-result v0

    if-nez v0, :cond_6e

    const/4 v11, 0x1

    :goto_6c
    move-object v9, v10

    .end local v10           #file:Ljava/io/File;
    .restart local v9       #file:Ljava/io/File;
    goto :goto_35

    .end local v9           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    :cond_6e
    const/4 v11, 0x0

    goto :goto_6c

    .line 1287
    .end local v10           #file:Ljava/io/File;
    .restart local v9       #file:Ljava/io/File;
    :cond_70
    :try_start_70
    const-string v0, "MusicStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to locate audio file in media store. Id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_70 .. :try_end_88} :catchall_97
    .catch Ljava/lang/SecurityException; {:try_start_70 .. :try_end_88} :catch_8a

    .line 1292
    const/4 v11, 0x1

    goto :goto_35

    .line 1294
    :catch_8a
    move-exception v8

    .line 1295
    .local v8, e:Ljava/lang/SecurityException;
    :goto_8b
    :try_start_8b
    const-string v0, "MusicStore"

    const-string v2, "Failed to delete music file due to security exception"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_92
    .catchall {:try_start_8b .. :try_end_92} :catchall_97

    .line 1297
    const/4 v11, 0x0

    .line 1299
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_38

    .end local v8           #e:Ljava/lang/SecurityException;
    :catchall_97
    move-exception v0

    :goto_98
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 1310
    .restart local v7       #deleted:I
    :cond_9c
    const/4 v0, 0x1

    if-eq v7, v0, :cond_64

    .line 1311
    const-string v0, "MusicStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected return value of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when deleting media store audio file + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 1299
    .end local v7           #deleted:I
    .end local v9           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    :catchall_c2
    move-exception v0

    move-object v9, v10

    .end local v10           #file:Ljava/io/File;
    .restart local v9       #file:Ljava/io/File;
    goto :goto_98

    .line 1294
    .end local v9           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    :catch_c5
    move-exception v8

    move-object v9, v10

    .end local v10           #file:Ljava/io/File;
    .restart local v9       #file:Ljava/io/File;
    goto :goto_8b
.end method

.method public static deleteLocalMusic(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 415
    const-string v0, "MUSIC"

    const-string v1, "SourceAccount = 0"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 417
    return-void
.end method

.method public static deleteLocalMusicAndPlaylists(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 1
    .parameter "db"

    .prologue
    .line 429
    invoke-static {p0}, Lcom/google/android/music/store/Store;->deleteLocalMusic(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 430
    invoke-static {p0}, Lcom/google/android/music/store/PlayList;->deleteMediaStorePlaylists(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 431
    return-void
.end method

.method public static deleteRemoteMusicAndPlaylists(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 6
    .parameter "context"
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    .line 442
    const/4 v0, 0x0

    .line 444
    .local v0, count:I
    const-string v1, "MUSIC"

    const-string v2, "SourceAccount != 0"

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 452
    invoke-static {p1}, Lcom/google/android/music/store/PlayList;->deleteSyncedPlaylists(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    add-int/2addr v0, v1

    .line 455
    if-lez v0, :cond_15

    .line 456
    invoke-static {p0, p1}, Lcom/google/android/music/store/RecentItemsManager;->update(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 464
    :cond_15
    const-string v1, "LISTITEMS"

    const-string v2, "MusicSourceAccount != 0"

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 468
    const-string v1, "LIST_TOMBSTONES"

    invoke-virtual {p1, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 469
    const-string v1, "LISTITEM_TOMBSTONES"

    invoke-virtual {p1, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 470
    const-string v1, "_sync_state"

    invoke-virtual {p1, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 472
    const-string v1, "KEEPON"

    invoke-virtual {p1, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 473
    const-string v1, "SHOULDKEEPON"

    invoke-virtual {p1, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 478
    if-lez v0, :cond_45

    const/4 v1, 0x1

    :goto_44
    return v1

    :cond_45
    const/4 v1, 0x0

    goto :goto_44
.end method

.method private downgrade(Ljava/lang/String;Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 8
    .parameter "path"
    .parameter "readable"

    .prologue
    .line 176
    iget-object v2, p0, Lcom/google/android/music/store/Store;->mDowngraded:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 178
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mDowngraded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_39

    .line 179
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mDbOpener:Lcom/google/android/music/store/Store$DatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/music/store/Store$DatabaseHelper;->close()V

    .line 180
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, dbFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 182
    const-string v1, "MusicStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sucessfully deleted old database file at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_33
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mDowngraded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 190
    .end local v0           #dbFile:Ljava/io/File;
    :cond_39
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mDbOpener:Lcom/google/android/music/store/Store$DatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/music/store/Store$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 184
    .restart local v0       #dbFile:Ljava/io/File;
    :cond_41
    const-string v1, "MusicStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete old database file at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 191
    .end local v0           #dbFile:Ljava/io/File;
    :catchall_5a
    move-exception v1

    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public static generateId(Ljava/lang/String;)J
    .registers 4
    .parameter

    .prologue
    .line 2226
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 2227
    :cond_8
    const-wide/16 v0, 0x0

    .line 2231
    :goto_a
    return-wide v0

    .line 2229
    :cond_b
    new-instance v0, Lcom/google/android/music/utils/BobJenkinsLookup3;

    invoke-direct {v0}, Lcom/google/android/music/utils/BobJenkinsLookup3;-><init>()V

    .line 2231
    :try_start_10
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/utils/BobJenkinsLookup3;->hashbig([B)J
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_19} :catch_1b

    move-result-wide v0

    goto :goto_a

    .line 2232
    :catch_1b
    move-exception v0

    .line 2233
    const-string v1, "MusicStore"

    const-string v2, "UTF-8 is not supported?"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to convert to UTF-8"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 5
    .parameter "readable"

    .prologue
    .line 155
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    const-string v2, "db access on main thread"

    invoke-static {v1, v2}, Lcom/google/android/music/MusicUtils;->checkMainThread(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    :try_start_7
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mDbOpener:Lcom/google/android/music/store/Store$DatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/music/store/Store$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_c
    .catch Lcom/google/android/music/store/Store$DowngradeException; {:try_start_7 .. :try_end_c} :catch_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_c} :catch_18

    move-result-object v1

    .line 168
    :goto_d
    return-object v1

    .line 160
    :catch_e
    move-exception v0

    .line 161
    .local v0, e:Lcom/google/android/music/store/Store$DowngradeException;
    invoke-virtual {v0}, Lcom/google/android/music/store/Store$DowngradeException;->getFilepath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/google/android/music/store/Store;->downgrade(Ljava/lang/String;Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    goto :goto_d

    .line 162
    .end local v0           #e:Lcom/google/android/music/store/Store$DowngradeException;
    :catch_18
    move-exception v0

    .line 165
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mDbOpener:Lcom/google/android/music/store/Store$DatabaseHelper;

    #getter for: Lcom/google/android/music/store/Store$DatabaseHelper;->mDBPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/music/store/Store$DatabaseHelper;->access$000(Lcom/google/android/music/store/Store$DatabaseHelper;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 166
    const-string v1, "MusicStore"

    const-string v2, "Error trying to open the DB"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mMediaStoreImporter:Lcom/google/android/music/store/MediaStoreImporter;

    iget-object v2, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/music/store/MediaStoreImporter;->invalidateMediaStoreImport(Landroid/content/Context;)V

    .line 168
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mDbOpener:Lcom/google/android/music/store/Store$DatabaseHelper;

    #getter for: Lcom/google/android/music/store/Store$DatabaseHelper;->mDBPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/music/store/Store$DatabaseHelper;->access$000(Lcom/google/android/music/store/Store$DatabaseHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/google/android/music/store/Store;->downgrade(Ljava/lang/String;Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    goto :goto_d

    .line 170
    :cond_3a
    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;
    .registers 2
    .parameter "context"

    .prologue
    .line 96
    sget-object v0, Lcom/google/android/music/store/Store;->sInstance:Lcom/google/android/music/store/Store;

    invoke-direct {v0, p0}, Lcom/google/android/music/store/Store;->init(Landroid/content/Context;)V

    .line 97
    sget-object v0, Lcom/google/android/music/store/Store;->sInstance:Lcom/google/android/music/store/Store;

    return-object v0
.end method

.method public static getPreferredMusicIdForSongId(Landroid/database/sqlite/SQLiteDatabase;J)J
    .registers 21
    .parameter "db"
    .parameter "songId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 547
    const-wide/16 v15, 0x0

    .line 548
    .local v15, fileId:J
    const/16 v17, -0x1

    .line 549
    .local v17, localCopyType:I
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "MUSIC.Id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "LocalCopyType"

    aput-object v3, v4, v2

    .line 553
    .local v4, projection:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 555
    .local v11, c:Landroid/database/Cursor;
    :try_start_12
    const-string v3, "MUSIC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MUSIC.SongId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "20"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 560
    :cond_35
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 561
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 562
    .local v13, currentFileId:J
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_44
    .catchall {:try_start_12 .. :try_end_44} :catchall_76

    move-result v12

    .line 563
    .local v12, currentCopyType:I
    move/from16 v0, v17

    if-le v12, v0, :cond_35

    .line 565
    move-wide v15, v13

    .line 566
    move/from16 v17, v12

    .line 568
    const/16 v2, 0x12c

    move/from16 v0, v17

    if-ne v0, v2, :cond_35

    .line 576
    .end local v12           #currentCopyType:I
    .end local v13           #currentFileId:J
    :cond_52
    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 579
    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-nez v2, :cond_7b

    .line 580
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find file for song id:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 576
    :catchall_76
    move-exception v2

    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v2

    .line 582
    :cond_7b
    return-wide v15
.end method

.method public static getSongId(Landroid/database/sqlite/SQLiteDatabase;J)J
    .registers 15
    .parameter "db"
    .parameter "musicId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 525
    const-wide/16 v9, 0x0

    .line 526
    .local v9, songId:J
    const/4 v8, 0x0

    .line 528
    .local v8, c:Landroid/database/Cursor;
    :try_start_4
    const-string v1, "MUSIC"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "SongId"

    aput-object v3, v2, v0

    const-string v3, "Id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 533
    if-eqz v8, :cond_2a

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v11, :cond_4e

    .line 534
    :cond_2a
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_49
    .catchall {:try_start_4 .. :try_end_49} :catchall_49

    .line 539
    :catchall_49
    move-exception v0

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 536
    :cond_4e
    :try_start_4e
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 537
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_49

    move-result-wide v9

    .line 539
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 542
    return-wide v9
.end method

.method private static getTotalNewKeeponSize(Landroid/database/Cursor;)J
    .registers 7
    .parameter "c"

    .prologue
    .line 1055
    const-wide/16 v2, 0x0

    .line 1056
    .local v2, total:J
    :cond_2
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1057
    const/4 v4, 0x0

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1058
    const/4 v4, 0x1

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1059
    .local v1, localLocation:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1060
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1061
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1062
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    sub-long/2addr v2, v4

    goto :goto_2

    .line 1066
    .end local v0           #f:Ljava/io/File;
    .end local v1           #localLocation:Ljava/lang/String;
    :cond_26
    return-wide v2
.end method

.method private declared-synchronized init(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 104
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mDbOpener:Lcom/google/android/music/store/Store$DatabaseHelper;

    if-nez v1, :cond_43

    .line 105
    sget-boolean v1, Lcom/google/android/music/DebugUtils;->IS_DEBUG_BUILD:Z

    if-eqz v1, :cond_33

    .line 106
    invoke-static {}, Lcom/google/android/music/MusicUtils;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, processName:Ljava/lang/String;
    if-eqz v0, :cond_17

    const-string v1, "main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 108
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Store being initialized in wrong process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_30

    .line 104
    .end local v0           #processName:Ljava/lang/String;
    :catchall_30
    move-exception v1

    monitor-exit p0

    throw v1

    .line 112
    :cond_33
    :try_start_33
    iput-object p1, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    .line 113
    const-string v1, "MusicStore"

    const-string v2, "Database version: 37"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v1, Lcom/google/android/music/store/Store$DatabaseHelper;

    invoke-direct {v1, p0}, Lcom/google/android/music/store/Store$DatabaseHelper;-><init>(Lcom/google/android/music/store/Store;)V

    iput-object v1, p0, Lcom/google/android/music/store/Store;->mDbOpener:Lcom/google/android/music/store/Store$DatabaseHelper;
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_30

    .line 119
    :cond_43
    monitor-exit p0

    return-void
.end method

.method private lock()V
    .registers 1

    .prologue
    .line 299
    return-void
.end method

.method static resetLocalCopyForOrphanedShouldKeepOnMusic(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1351
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1352
    const-string v1, "LocalCopyPath"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1353
    const-string v1, "LocalCopyType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1354
    const-string v1, "LocalCopySize"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1356
    const-string v1, "MUSIC"

    const-string v2, "LocalCopyType=200 AND Id NOT IN (SELECT DISTINCT MusicId FROM SHOULDKEEPON)"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static safeClose(Landroid/database/Cursor;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 269
    if-eqz p0, :cond_5

    .line 271
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 276
    :cond_5
    :goto_5
    return-void

    .line 272
    :catch_6
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MusicStore"

    const-string v2, "Failed to close cursor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public static safeClose(Landroid/database/sqlite/SQLiteProgram;)V
    .registers 4
    .parameter "program"

    .prologue
    .line 286
    if-eqz p0, :cond_5

    .line 288
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 293
    :cond_5
    :goto_5
    return-void

    .line 289
    :catch_6
    move-exception v0

    .line 290
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MusicStore"

    const-string v2, "Failed to close SQLiteProgram"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private unlock()V
    .registers 1

    .prologue
    .line 304
    return-void
.end method


# virtual methods
.method public appendAlbumToPlaylist(JJ)I
    .registers 9
    .parameter "playlistId"
    .parameter "albumId"

    .prologue
    .line 2340
    const/4 v1, 0x0

    .line 2341
    .local v1, result:I
    const/4 v2, 0x0

    .line 2342
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2347
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_6
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/PlayList;->disconnectFromMediaStore(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2348
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/music/store/PlayList;->appendAlbum(Landroid/database/sqlite/SQLiteDatabase;JJ)I
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_12

    move-result v1

    .line 2349
    const/4 v2, 0x1

    .line 2351
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2354
    return v1

    .line 2351
    :catchall_12
    move-exception v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public appendArtistToPlaylist(JJ)I
    .registers 9
    .parameter "playlistId"
    .parameter "artistId"

    .prologue
    .line 2364
    const/4 v1, 0x0

    .line 2365
    .local v1, result:I
    const/4 v2, 0x0

    .line 2366
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2371
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_6
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/PlayList;->disconnectFromMediaStore(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2372
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/music/store/PlayList;->appendArtist(Landroid/database/sqlite/SQLiteDatabase;JJ)I
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_12

    move-result v1

    .line 2373
    const/4 v2, 0x1

    .line 2375
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2378
    return v1

    .line 2375
    :catchall_12
    move-exception v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public appendGenreToPlaylist(JJ)I
    .registers 9
    .parameter "playlistId"
    .parameter "genreId"

    .prologue
    .line 2388
    const/4 v1, 0x0

    .line 2389
    .local v1, result:I
    const/4 v2, 0x0

    .line 2390
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2395
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_6
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/PlayList;->disconnectFromMediaStore(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2396
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/music/store/PlayList;->appendGenre(Landroid/database/sqlite/SQLiteDatabase;JJ)I
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_12

    move-result v1

    .line 2397
    const/4 v2, 0x1

    .line 2399
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2402
    return v1

    .line 2399
    :catchall_12
    move-exception v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public appendGenreToPlaylist(JJJ)I
    .registers 16
    .parameter "playlistId"
    .parameter "genreId"
    .parameter "albumId"

    .prologue
    .line 2412
    const/4 v7, 0x0

    .line 2413
    .local v7, result:I
    const/4 v8, 0x0

    .line 2414
    .local v8, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2419
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_6
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/PlayList;->disconnectFromMediaStore(Landroid/database/sqlite/SQLiteDatabase;J)V

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .line 2420
    invoke-static/range {v0 .. v6}, Lcom/google/android/music/store/PlayList;->appendGenre(Landroid/database/sqlite/SQLiteDatabase;JJJ)I
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_15

    move-result v7

    .line 2421
    const/4 v8, 0x1

    .line 2423
    invoke-virtual {p0, v0, v8}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2426
    return v7

    .line 2423
    :catchall_15
    move-exception v1

    invoke-virtual {p0, v0, v8}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v1
.end method

.method public appendPlaylistItem(JJ)J
    .registers 11
    .parameter "playlistId"
    .parameter "musicId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 2320
    const-wide/16 v1, 0x0

    .line 2321
    .local v1, newItemId:J
    const/4 v3, 0x0

    .line 2322
    .local v3, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2327
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_7
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/PlayList;->disconnectFromMediaStore(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2328
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/music/store/PlayList;->appendItem(Landroid/database/sqlite/SQLiteDatabase;JJ)J
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_1b

    move-result-wide v1

    .line 2329
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-eqz v4, :cond_19

    const/4 v3, 0x1

    .line 2331
    :goto_15
    invoke-virtual {p0, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2333
    return-wide v1

    .line 2329
    :cond_19
    const/4 v3, 0x0

    goto :goto_15

    .line 2331
    :catchall_1b
    move-exception v4

    invoke-virtual {p0, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v4
.end method

.method public appendPlaylistToPlaylist(JJ)I
    .registers 9
    .parameter "playlistId"
    .parameter "sourcePlaylistId"

    .prologue
    .line 2436
    const/4 v1, 0x0

    .line 2437
    .local v1, result:I
    const/4 v2, 0x0

    .line 2438
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2443
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_6
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/PlayList;->disconnectFromMediaStore(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2444
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/music/store/PlayList;->appendPlaylist(Landroid/database/sqlite/SQLiteDatabase;JJ)I
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_12

    move-result v1

    .line 2445
    const/4 v2, 0x1

    .line 2447
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2450
    return v1

    .line 2447
    :catchall_12
    move-exception v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public beginRead()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->lock()V

    .line 203
    const/4 v1, 0x1

    :try_start_5
    invoke-direct {p0, v1}, Lcom/google/android/music/store/Store;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_f

    move-result-object v0

    .line 205
    if-nez v0, :cond_e

    .line 206
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->unlock()V

    .line 209
    :cond_e
    return-object v0

    .line 205
    :catchall_f
    move-exception v1

    if-nez v0, :cond_15

    .line 206
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->unlock()V

    :cond_15
    throw v1
.end method

.method public beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 230
    .local v1, success:Z
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->lock()V

    .line 232
    const/4 v2, 0x0

    :try_start_6
    invoke-direct {p0, v2}, Lcom/google/android/music/store/Store;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_14

    .line 234
    const/4 v1, 0x1

    .line 236
    if-nez v1, :cond_13

    .line 237
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->unlock()V

    .line 240
    :cond_13
    return-object v0

    .line 236
    :catchall_14
    move-exception v2

    if-nez v1, :cond_1a

    .line 237
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->unlock()V

    :cond_1a
    throw v2
.end method

.method public countLocalMusic()I
    .registers 3

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 344
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_4
    invoke-static {v0}, Lcom/google/android/music/store/Store;->countLocalMusic(Landroid/database/sqlite/SQLiteDatabase;)I
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    move-result v1

    .line 346
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return v1

    :catchall_c
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method createDatabase()V
    .registers 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 144
    return-void
.end method

.method public createPlaylist(Ljava/lang/String;)J
    .registers 7
    .parameter "name"

    .prologue
    .line 2240
    const-wide/16 v1, 0x0

    .line 2241
    .local v1, newPlaylistId:J
    const/4 v3, 0x0

    .line 2242
    .local v3, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2244
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_7
    invoke-static {v0, p1}, Lcom/google/android/music/store/PlayList;->createPlayList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/google/android/music/store/PlayList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/store/PlayList;->getId()J
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    move-result-wide v1

    .line 2245
    const/4 v3, 0x1

    .line 2247
    invoke-virtual {p0, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2249
    return-wide v1

    .line 2247
    :catchall_14
    move-exception v4

    invoke-virtual {p0, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v4
.end method

.method public deleteAllMatchingLocalMusicFiles(Landroid/content/Context;J)I
    .registers 22
    .parameter "context"
    .parameter "musicId"

    .prologue
    .line 1182
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1183
    .local v14, idsToDelete:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v11, 0x0

    .line 1184
    .local v11, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1186
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_a
    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Lcom/google/android/music/store/Store;->getSongId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v16

    .line 1187
    .local v16, songId:J
    const-string v3, "MUSIC"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Id"

    aput-object v6, v4, v5

    const-string v5, "SongId=? AND LocalCopyType=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/16 v8, 0x12c

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1200
    if-eqz v11, :cond_7d

    .line 1201
    :goto_38
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 1202
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catchall {:try_start_a .. :try_end_4a} :catchall_86
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_4a} :catch_4b

    goto :goto_38

    .line 1205
    .end local v16           #songId:J
    :catch_4b
    move-exception v12

    .line 1206
    .local v12, e:Ljava/io/FileNotFoundException;
    :try_start_4c
    const-string v3, "MusicStore"

    const-string v4, "File not found"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_86

    .line 1208
    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1209
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1212
    .end local v12           #e:Ljava/io/FileNotFoundException;
    :goto_5b
    const/4 v10, 0x0

    .line 1213
    .local v10, count:I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_60
    :goto_60
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    .line 1214
    .local v15, localMusicId:Ljava/lang/Long;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/music/store/Store;->deleteLocalMusicFile(Landroid/content/Context;J)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 1215
    add-int/lit8 v10, v10, 0x1

    goto :goto_60

    .line 1208
    .end local v10           #count:I
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #localMusicId:Ljava/lang/Long;
    .restart local v16       #songId:J
    :cond_7d
    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1209
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_5b

    .line 1208
    .end local v16           #songId:J
    :catchall_86
    move-exception v3

    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1209
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3

    .line 1218
    .restart local v10       #count:I
    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_90
    return v10
.end method

.method public deleteLocalMusic()V
    .registers 4

    .prologue
    .line 371
    const/4 v1, 0x0

    .line 372
    .local v1, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 374
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_5
    invoke-static {v0}, Lcom/google/android/music/store/Store;->deleteLocalMusic(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    .line 375
    const/4 v1, 0x1

    .line 377
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 379
    return-void

    .line 377
    :catchall_d
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v2
.end method

.method public deleteLocalMusicFile(Landroid/content/Context;J)Z
    .registers 15
    .parameter "context"
    .parameter "musicId"

    .prologue
    .line 1232
    const/4 v5, 0x0

    .line 1234
    .local v5, success:Z
    const/4 v6, 0x0

    :try_start_2
    invoke-static {p0, v6, p2, p3}, Lcom/google/android/music/store/MusicFile;->getSummaryMusicFile(Lcom/google/android/music/store/Store;Lcom/google/android/music/store/MusicFile;J)Lcom/google/android/music/store/MusicFile;

    move-result-object v4

    .line 1236
    .local v4, music:Lcom/google/android/music/store/MusicFile;
    invoke-virtual {v4}, Lcom/google/android/music/store/MusicFile;->getLocalCopyType()I

    move-result v6

    const/16 v7, 0x12c

    if-ne v6, v7, :cond_43

    .line 1237
    invoke-virtual {v4}, Lcom/google/android/music/store/MusicFile;->getSourceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1238
    .local v2, mediaStoreId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_43

    .line 1239
    invoke-static {p1, v2, v3}, Lcom/google/android/music/store/Store;->deleteFromMediaStore(Landroid/content/Context;J)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 1240
    const/4 v5, 0x0

    .line 1241
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_26
    .catch Lcom/google/android/music/store/DataNotFoundException; {:try_start_2 .. :try_end_26} :catch_49

    move-result-object v0

    .line 1243
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_27
    const-string v6, "MUSIC"

    const-string v7, "Id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1249
    invoke-virtual {v4}, Lcom/google/android/music/store/MusicFile;->getSourceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/google/android/music/store/PlayList;->deleteLocalMusic(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_27 .. :try_end_3f} :catchall_44

    .line 1250
    const/4 v5, 0x1

    .line 1252
    :try_start_40
    invoke-virtual {p0, v0, v5}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1262
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #mediaStoreId:J
    .end local v4           #music:Lcom/google/android/music/store/MusicFile;
    :cond_43
    :goto_43
    return v5

    .line 1252
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #mediaStoreId:J
    .restart local v4       #music:Lcom/google/android/music/store/MusicFile;
    :catchall_44
    move-exception v6

    invoke-virtual {p0, v0, v5}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v6
    :try_end_49
    .catch Lcom/google/android/music/store/DataNotFoundException; {:try_start_40 .. :try_end_49} :catch_49

    .line 1257
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #mediaStoreId:J
    .end local v4           #music:Lcom/google/android/music/store/MusicFile;
    :catch_49
    move-exception v1

    .line 1259
    .local v1, e:Lcom/google/android/music/store/DataNotFoundException;
    const/4 v5, 0x1

    goto :goto_43
.end method

.method public deletePlaylist(Landroid/content/Context;J)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2253
    .line 2256
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2258
    const/4 v1, 0x0

    :try_start_8
    invoke-static {v2, p2, p3, v1}, Lcom/google/android/music/store/PlayList;->readPlayList(Landroid/database/sqlite/SQLiteDatabase;JLcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;

    move-result-object v1

    .line 2259
    if-nez v1, :cond_19

    .line 2260
    const-string v1, "MusicStore"

    const-string v3, "Requested playlist is not found"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_3e

    .line 2267
    invoke-virtual {p0, v2, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2277
    :cond_18
    :goto_18
    return v0

    .line 2263
    :cond_19
    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_1b
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/music/store/PlayList;->delete(Landroid/database/sqlite/SQLiteDatabase;ZZ)Z
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_3e

    move-result v0

    .line 2267
    invoke-virtual {p0, v2, v5}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2270
    invoke-virtual {v1}, Lcom/google/android/music/store/PlayList;->getMediaStoreId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18

    .line 2273
    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/google/android/music/store/PlayList;->getMediaStoreId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2275
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_18

    .line 2267
    :catchall_3e
    move-exception v1

    invoke-virtual {p0, v2, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v1
.end method

.method public deletePlaylistItem(JJ)Z
    .registers 9
    .parameter "playlistId"
    .parameter "itemId"

    .prologue
    .line 2454
    const/4 v2, 0x0

    .line 2455
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2459
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_5
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/PlayList;->disconnectFromMediaStore(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2460
    const/4 v3, 0x0

    invoke-static {v0, p3, p4, v3}, Lcom/google/android/music/store/PlayList$Item;->readItem(Landroid/database/sqlite/SQLiteDatabase;JLcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/store/PlayList$Item;

    move-result-object v1

    .line 2461
    .local v1, item:Lcom/google/android/music/store/PlayList$Item;
    if-eqz v1, :cond_14

    .line 2462
    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/google/android/music/store/PlayList$Item;->delete(Landroid/database/sqlite/SQLiteDatabase;Z)Z
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_18

    move-result v2

    .line 2465
    :cond_14
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2467
    return v2

    .line 2465
    .end local v1           #item:Lcom/google/android/music/store/PlayList$Item;
    :catchall_18
    move-exception v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public deleteRemoteMusicAndPlaylists(Landroid/content/Context;Z)Z
    .registers 9
    .parameter "context"
    .parameter "sync"

    .prologue
    .line 391
    const/4 v1, 0x0

    .line 392
    .local v1, somethingChanged:Z
    const/4 v2, 0x0

    .line 393
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 395
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_6
    invoke-static {p1, v0}, Lcom/google/android/music/store/Store;->deleteRemoteMusicAndPlaylists(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_1e

    .line 396
    const/4 v2, 0x1

    .line 398
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 403
    if-nez v1, :cond_11

    if-eqz p2, :cond_1d

    .line 404
    :cond_11
    iget-object v3, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 407
    :cond_1d
    return v1

    .line 398
    :catchall_1e
    move-exception v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public endRead(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->unlock()V

    .line 219
    return-void
.end method

.method public endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 4
    .parameter "db"
    .parameter "success"

    .prologue
    .line 252
    if-eqz p2, :cond_5

    .line 253
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 255
    :cond_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_c

    .line 257
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->unlock()V

    .line 259
    return-void

    .line 257
    :catchall_c
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/music/store/Store;->unlock()V

    throw v0
.end method

.method public executeQuery(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 22
    .parameter "distinct"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 896
    const/4 v11, 0x0

    .line 897
    .local v11, success:Z
    const/4 v10, 0x0

    .line 898
    .local v10, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 900
    :try_start_15
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 902
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_27

    .line 903
    const/4 v11, 0x1

    .line 905
    if-nez v11, :cond_23

    .line 906
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 907
    const/4 v10, 0x0

    .line 909
    :cond_23
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 912
    return-object v10

    .line 905
    :catchall_27
    move-exception v1

    if-nez v11, :cond_2e

    .line 906
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 907
    const/4 v10, 0x0

    .line 909
    :cond_2e
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 3
    .parameter "query"

    .prologue
    .line 886
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/store/Store;->executeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public executeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7
    .parameter "query"
    .parameter "selectionArgs"

    .prologue
    .line 863
    const/4 v2, 0x0

    .line 864
    .local v2, success:Z
    const/4 v0, 0x0

    .line 865
    .local v0, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 867
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_6
    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 868
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_18

    .line 869
    const/4 v2, 0x1

    .line 871
    if-nez v2, :cond_14

    .line 872
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 873
    const/4 v0, 0x0

    .line 875
    :cond_14
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 878
    return-object v0

    .line 871
    :catchall_18
    move-exception v3

    if-nez v2, :cond_1f

    .line 872
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 873
    const/4 v0, 0x0

    .line 875
    :cond_1f
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
.end method

.method public getAlbumIdsAndAlbumKeepOnIdsForArtist(J)Landroid/database/Cursor;
    .registers 15
    .parameter "artistId"

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 786
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_4
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 790
    .local v10, artistIdStr:Ljava/lang/String;
    const/4 v1, 0x1

    const-string v2, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumId = KEEPON.AlbumId) "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "MUSIC.AlbumId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "KEEPON.KeepOnId"

    aput-object v5, v3, v4

    const-string v4, "MUSIC.AlbumArtistId=? OR MUSIC.ArtistId=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v10, v5, v6

    const/4 v6, 0x1

    aput-object v10, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 796
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_30

    .line 797
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_34

    .line 801
    :cond_30
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v11

    .end local v10           #artistIdStr:Ljava/lang/String;
    .end local v11           #c:Landroid/database/Cursor;
    :catchall_34
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public getAlbumsRequiringArtworkDownload(Ljava/util/Set;)Landroid/database/Cursor;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 1478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1479
    if-eqz p1, :cond_30

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1480
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1481
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 1484
    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1486
    :cond_30
    const-string v0, "MUSIC.AlbumId"

    .line 1487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT DISTINCT MUSIC.AlbumId FROM MUSIC WHERE AlbumArtLocation IS NOT NULL AND SourceAccount <> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "MUSIC.AlbumId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " NOT IN (SELECT "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ARTWORK"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "AlbumId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ARTWORK"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "LocalLocation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " IS NOT NULL)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_b5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND MUSIC.AlbumId IN ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1501
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 1487
    :cond_b5
    const-string v0, " LIMIT 10"

    goto :goto_a8
.end method

.method public getArtLocationForAlbum(J)Ljava/lang/String;
    .registers 13
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1534
    const-string v2, "MUSIC"

    new-array v3, v5, [Ljava/lang/String;

    const-string v0, "AlbumArtLocation"

    aput-object v0, v3, v1

    const-string v4, "AlbumId=? AND AlbumArtLocation IS NOT NULL"

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const-string v8, "LocalCopyType DESC"

    const-string v9, "1"

    move-object v0, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/music/store/Store;->executeQuery(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1543
    if-eqz v1, :cond_30

    :try_start_21
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1544
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_34

    move-result-object v6

    .line 1547
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1549
    :goto_2f
    return-object v6

    .line 1547
    :cond_30
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_2f

    :catchall_34
    move-exception v0

    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getArtistIdsForAlbum(J)Landroid/database/Cursor;
    .registers 9
    .parameter "albumId"

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 815
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_4
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, albumIdStr:Ljava/lang/String;
    const-string v3, "SELECT _artistId FROM ( SELECT DISTINCT AlbumArtistId as _artistId FROM MUSIC WHERE AlbumId=? UNION  SELECT DISTINCT ArtistId as _artistId FROM MUSIC WHERE AlbumId=?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 824
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_1c

    .line 825
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_20

    .line 829
    :cond_1c
    invoke-virtual {p0, v2}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v1

    .end local v0           #albumIdStr:Ljava/lang/String;
    .end local v1           #c:Landroid/database/Cursor;
    :catchall_20
    move-exception v3

    invoke-virtual {p0, v2}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
.end method

.method public getArtwork(J)Ljava/lang/String;
    .registers 12
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 1427
    .line 1428
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1430
    :try_start_5
    const-string v1, "ARTWORK"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "LocalLocation"

    aput-object v4, v2, v3

    const-string v3, "AlbumId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_3d

    move-result-object v2

    .line 1434
    :try_start_22
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1435
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_45

    move-result-object v1

    .line 1439
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1440
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, v1

    :goto_34
    return-object v0

    .line 1439
    :cond_35
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1440
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, v8

    goto :goto_34

    .line 1439
    :catchall_3d
    move-exception v1

    :goto_3e
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1440
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    .line 1439
    :catchall_45
    move-exception v1

    move-object v8, v2

    goto :goto_3e
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDeletableFiles(Ljava/io/File;)Landroid/database/Cursor;
    .registers 7
    .parameter "location"

    .prologue
    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT Id, LocalCopyPath\nFROM MUSIC\nWHERE LocalCopyPath IS NOT NULL\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_67

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AND LocalCopyPath LIKE \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x21

    invoke-static {v3, v4}, Lcom/google/android/music/utils/DbUtils;->escapeForLikeOperator(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%\' ESCAPE \'!\'\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NOT IN (SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MusicId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SHOULDKEEPON"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 996
    .local v0, query:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 984
    .end local v0           #query:Ljava/lang/String;
    :cond_67
    const-string v1, ""

    goto :goto_30
.end method

.method public getKeepOn(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;Z)Landroid/database/Cursor;
    .registers 18
    .parameter "limit"
    .parameter "inColumns"
    .parameter
    .parameter "includeAlreadyKeptOn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 653
    .local p3, doNotIncludeIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 654
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "SHOULDKEEPON JOIN MUSIC ON (SHOULDKEEPON.MusicId = MUSIC.Id)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 657
    sget-object v2, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 659
    const/4 v12, 0x0

    .line 660
    .local v12, excludeIds:Ljava/lang/String;
    if-eqz p3, :cond_59

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_59

    .line 661
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 662
    .local v10, currentMusicIds:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 663
    .local v11, currentMusicIdsCSV:Ljava/lang/StringBuilder;
    :goto_21
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 664
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 667
    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id NOT IN ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 671
    .end local v10           #currentMusicIds:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v11           #currentMusicIdsCSV:Ljava/lang/StringBuilder;
    :cond_59
    const-string v3, ""

    .line 672
    .local v3, where:Ljava/lang/String;
    if-nez p4, :cond_5f

    .line 673
    const-string v3, "LocalCopyPath IS NULL OR LocalCopyType <> 200"

    .line 677
    :cond_5f
    if-eqz v12, :cond_97

    .line 678
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7a

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 681
    :cond_7a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 683
    :cond_97
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9e

    .line 684
    const/4 v3, 0x0

    .line 687
    :cond_9e
    const/4 v9, 0x0

    .line 688
    .local v9, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 690
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    :try_start_a4
    const-string v5, "MusicId"

    const/4 v6, 0x0

    const-string v7, "MUSIC.AlbumArtistId ASC, MUSIC.AlbumId ASC, MUSIC.TrackNumber ASC"

    move-object v2, p2

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 701
    if-eqz v9, :cond_b4

    .line 702
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_b4
    .catchall {:try_start_a4 .. :try_end_b4} :catchall_b8

    .line 707
    :cond_b4
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v9

    :catchall_b8
    move-exception v2

    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
.end method

.method public getLastUsedCacheFiles(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter "directory"

    .prologue
    const/4 v10, 0x0

    .line 1142
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    :cond_9
    move-object v9, v10

    .line 1164
    :goto_a
    return-object v9

    .line 1146
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1150
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_f
    const-string v1, "MUSIC"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "LocalCopyPath"

    aput-object v4, v2, v3

    const-string v3, "LocalCopyPath LIKE ? AND LocalCopyType=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "10"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1157
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_54

    .line 1158
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_50
    .catchall {:try_start_f .. :try_end_50} :catchall_59

    .line 1162
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_a

    :cond_54
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v9, v10

    .line 1164
    goto :goto_a

    .line 1162
    .end local v9           #c:Landroid/database/Cursor;
    :catchall_59
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public getMusicIdForSystemMediaStoreId(JZ)J
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 2498
    .line 2500
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2506
    :try_start_8
    const-string v1, "MUSIC"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Id"

    aput-object v4, v2, v3

    const-string v3, "SourceAccount=? AND SourceId=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_52

    move-result-object v3

    .line 2513
    if-eqz v3, :cond_7d

    :try_start_2f
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 2514
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_7a

    move-result-wide v1

    .line 2517
    :goto_3a
    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 2518
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2521
    cmp-long v0, v1, v8

    if-nez v0, :cond_51

    .line 2524
    if-eqz p3, :cond_5b

    .line 2526
    iget-object v0, p0, Lcom/google/android/music/store/Store;->mMediaStoreImporter:Lcom/google/android/music/store/MediaStoreImporter;

    iget-object v1, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MediaStoreImporter;->doImport(Landroid/content/Context;)Z

    .line 2527
    invoke-virtual {p0, p1, p2, v11}, Lcom/google/android/music/store/Store;->getMusicIdForSystemMediaStoreId(JZ)J

    move-result-wide v1

    .line 2534
    :cond_51
    return-wide v1

    .line 2517
    :catchall_52
    move-exception v1

    move-object v2, v10

    :goto_54
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 2518
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    .line 2529
    :cond_5b
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not found in the media store."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2517
    :catchall_7a
    move-exception v1

    move-object v2, v3

    goto :goto_54

    :cond_7d
    move-wide v1, v8

    goto :goto_3a
.end method

.method public getNeedToKeepOn(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;)Landroid/database/Cursor;
    .registers 5
    .parameter "limit"
    .parameter "inColumns"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 647
    .local p3, doNotIncludeIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/music/store/Store;->getKeepOn(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredMusicId(J)J
    .registers 11
    .parameter "musicId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 512
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_4
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/Store;->getSongId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v3

    .line 513
    .local v3, songId:J
    invoke-static {v0, v3, v4}, Lcom/google/android/music/store/Store;->getPreferredMusicIdForSongId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v1

    .line 514
    .local v1, newMusicId:J
    sget-boolean v5, Lcom/google/android/music/store/Store;->LOGV:Z

    if-eqz v5, :cond_36

    cmp-long v5, v1, p1

    if-eqz v5, :cond_36

    .line 515
    const-string v5, "MusicStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using preferred file id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for file id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_3a

    .line 519
    :cond_36
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return-wide v1

    .end local v1           #newMusicId:J
    .end local v3           #songId:J
    :catchall_3a
    move-exception v5

    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v5
.end method

.method public getRemoteArtLocationForAlbum(J)Ljava/lang/String;
    .registers 13
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1511
    const-string v2, "MUSIC"

    new-array v3, v5, [Ljava/lang/String;

    const-string v0, "AlbumArtLocation"

    aput-object v0, v3, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AlbumId=? AND SourceAccount <> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "AlbumArtLocation"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " IS NOT NULL"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const-string v9, "1"

    move-object v0, p0

    move-object v7, v6

    move-object v8, v6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/music/store/Store;->executeQuery(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1519
    if-eqz v1, :cond_54

    :try_start_45
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1520
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_58

    move-result-object v6

    .line 1523
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1525
    :goto_53
    return-object v6

    .line 1523
    :cond_54
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_53

    :catchall_58
    move-exception v0

    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getRingtoneManager()Lcom/google/android/music/store/MusicRingtoneManager;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/music/store/Store;->mRingtoneManager:Lcom/google/android/music/store/MusicRingtoneManager;

    return-object v0
.end method

.method public getSizeOfUndownloadedKeepOnFiles()J
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1000
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Size"

    aput-object v4, v3, v5

    invoke-virtual {p0, v6, v3, v6}, Lcom/google/android/music/store/Store;->getNeedToKeepOn(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;)Landroid/database/Cursor;

    move-result-object v0

    .line 1001
    .local v0, c:Landroid/database/Cursor;
    const-wide/16 v1, 0x0

    .line 1003
    .local v1, totalSize:J
    :goto_f
    :try_start_f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1004
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_20

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_f

    .line 1008
    :cond_1c
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    return-wide v1

    :catchall_20
    move-exception v3

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v3
.end method

.method public getSizeToDownloadAlbum(J)J
    .registers 14
    .parameter "albumId"

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 1017
    const-string v2, "MUSIC"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "Size"

    aput-object v0, v3, v1

    const-string v0, "LocalCopyPath"

    aput-object v0, v3, v5

    const-string v4, "AlbumId= ? AND LocalCopyType <> 300"

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    move-object v0, p0

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/music/store/Store;->executeQuery(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1025
    .local v10, c:Landroid/database/Cursor;
    :try_start_22
    invoke-static {v10}, Lcom/google/android/music/store/Store;->getTotalNewKeeponSize(Landroid/database/Cursor;)J
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    move-result-wide v0

    .line 1027
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    return-wide v0

    :catchall_2a
    move-exception v0

    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getSizeToDownloadPlaylist(J)J
    .registers 14
    .parameter "playlistId"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 1036
    const-string v2, "LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId) "

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "Size"

    aput-object v0, v3, v1

    const-string v0, "LocalCopyPath"

    aput-object v0, v3, v5

    const-string v4, "LISTITEMS.ListId=? AND LocalCopyType <> 300"

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const-string v6, "MUSIC.Id"

    move-object v0, p0

    move-object v8, v7

    move-object v9, v7

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/music/store/Store;->executeQuery(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1043
    .local v10, c:Landroid/database/Cursor;
    :try_start_23
    invoke-static {v10}, Lcom/google/android/music/store/Store;->getTotalNewKeeponSize(Landroid/database/Cursor;)J
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2b

    move-result-wide v0

    .line 1045
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    return-wide v0

    :catchall_2b
    move-exception v0

    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getSourceAccountAndId(J[I[Ljava/lang/String;)V
    .registers 16
    .parameter "musicId"
    .parameter "outSourceType"
    .parameter "outSourceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 309
    const/4 v10, 0x0

    .line 310
    .local v10, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 312
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    :try_start_6
    const-string v2, "MUSIC"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "SourceAccount"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "SourceId"

    aput-object v5, v3, v4

    const-string v4, "MUSIC.Id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1"

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 327
    if-eqz v10, :cond_49

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 328
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, p3, v1

    .line 329
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p4, v1
    :try_end_42
    .catchall {:try_start_6 .. :try_end_42} :catchall_62

    .line 336
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 337
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 339
    return-void

    .line 332
    :cond_49
    :try_start_49
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find file with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_62
    .catchall {:try_start_49 .. :try_end_62} :catchall_62

    .line 336
    :catchall_62
    move-exception v1

    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 337
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public getTotalCachedSize(I)J
    .registers 13
    .parameter "type"

    .prologue
    .line 838
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 839
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 841
    .local v10, c:Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_6
    const-string v2, "MUSIC"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "sum(LocalCopySize)"

    aput-object v5, v3, v4

    const-string v4, "LocalCopyPath IS NOT NULL AND LocalCopyType=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 847
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 848
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_3f

    move-result-wide v1

    .line 853
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 854
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_35
    return-wide v1

    .line 850
    :cond_36
    const-wide/16 v1, 0x0

    .line 853
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 854
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_35

    .line 853
    :catchall_3f
    move-exception v1

    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 854
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public importMediaStore(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 2586
    iget-object v0, p0, Lcom/google/android/music/store/Store;->mMediaStoreImporter:Lcom/google/android/music/store/MediaStoreImporter;

    invoke-virtual {v0, p1}, Lcom/google/android/music/store/MediaStoreImporter;->doImport(Landroid/content/Context;)Z

    .line 2587
    return-void
.end method

.method public isAlbumSelectedAsKeepOn(JZ)Z
    .registers 15
    .parameter "albumId"
    .parameter "useArtistKeepOn"

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 735
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 737
    .local v10, c:Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_6
    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 739
    .local v5, strAlbumIdArgs:[Ljava/lang/String;
    const/4 v1, 0x1

    const-string v2, "KEEPON"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "KeepOnId"

    aput-object v6, v3, v4

    const-string v4, "AlbumId=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 741
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_5f

    move-result v1

    if-eqz v1, :cond_32

    .line 742
    const/4 v1, 0x1

    .line 756
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 757
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_31
    return v1

    .line 744
    :cond_32
    :try_start_32
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_5f

    .line 746
    if-nez p3, :cond_3f

    .line 747
    const/4 v1, 0x0

    .line 756
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 757
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_31

    .line 750
    :cond_3f
    const/4 v1, 0x1

    :try_start_40
    const-string v2, "MUSIC JOIN KEEPON ON (MUSIC.AlbumArtistId = KEEPON.ArtistId) "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "KEEPON.KeepOnId"

    aput-object v6, v3, v4

    const-string v4, "MUSIC.AlbumId=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 754
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_57
    .catchall {:try_start_40 .. :try_end_57} :catchall_5f

    move-result v1

    .line 756
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 757
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_31

    .line 756
    .end local v5           #strAlbumIdArgs:[Ljava/lang/String;
    :catchall_5f
    move-exception v1

    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 757
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public isArtistSelectedAsKeepOn(J)Z
    .registers 14
    .parameter "artistId"

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 714
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 716
    .local v10, c:Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_6
    const-string v2, "KEEPON"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "KeepOnId"

    aput-object v5, v3, v4

    const-string v4, "ArtistId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 719
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_2f

    move-result v1

    .line 721
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 722
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return v1

    .line 721
    :catchall_2f
    move-exception v1

    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 722
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public isPlaylistSelectedAsKeepOn(J)Z
    .registers 14
    .parameter "playlistId"

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 763
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 765
    .local v10, c:Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_6
    const-string v2, "KEEPON"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "KeepOnId"

    aput-object v5, v3, v4

    const-string v4, "ListId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 768
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_2f

    move-result v1

    .line 770
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 771
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return v1

    .line 770
    :catchall_2f
    move-exception v1

    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 771
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public markSongPlayed(J)V
    .registers 17
    .parameter "xId"

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1115
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 1116
    .local v11, success:Z
    const/4 v8, 0x0

    .line 1118
    .local v8, c:Landroid/database/Cursor;
    :try_start_6
    const-string v13, "Id=?"

    .line 1119
    .local v13, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 1120
    .local v4, whereArgs:[Ljava/lang/String;
    const-string v1, "MUSIC"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "PlayCount"

    aput-object v5, v2, v3

    const-string v3, "Id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1122
    if-eqz v8, :cond_5c

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1123
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1124
    .local v9, playCount:J
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1125
    .local v12, values:Landroid/content/ContentValues;
    const-string v1, "PlayCount"

    const-wide/16 v2, 0x1

    add-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1126
    const-string v1, "LastPlayDate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1127
    const-string v1, "MUSIC"

    const-string v2, "Id=?"

    invoke-virtual {v0, v1, v12, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_6 .. :try_end_57} :catchall_65

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_63

    const/4 v11, 0x1

    .line 1130
    .end local v9           #playCount:J
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_5c
    :goto_5c
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1131
    invoke-virtual {p0, v0, v11}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1133
    return-void

    .line 1127
    .restart local v9       #playCount:J
    .restart local v12       #values:Landroid/content/ContentValues;
    :cond_63
    const/4 v11, 0x0

    goto :goto_5c

    .line 1130
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v9           #playCount:J
    .end local v12           #values:Landroid/content/ContentValues;
    .end local v13           #where:Ljava/lang/String;
    :catchall_65
    move-exception v1

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1131
    invoke-virtual {p0, v0, v11}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v1
.end method

.method public movePlaylistItem(JJJ)V
    .registers 16
    .parameter "playlistId"
    .parameter "itemToMove"
    .parameter "desiredPreviousItem"

    .prologue
    .line 2479
    const/4 v8, 0x0

    .line 2480
    .local v8, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2484
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_5
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/PlayList;->disconnectFromMediaStore(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2485
    const-wide/16 v1, 0x0

    cmp-long v1, p5, v1

    if-nez v1, :cond_19

    .line 2486
    const/4 v5, 0x1

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/store/PlayList;->moveItemToTop(Landroid/database/sqlite/SQLiteDatabase;JJZ)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_22

    move-result v8

    .line 2491
    :goto_15
    invoke-virtual {p0, v0, v8}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2493
    return-void

    .line 2488
    :cond_19
    const/4 v7, 0x1

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    :try_start_1d
    invoke-static/range {v0 .. v7}, Lcom/google/android/music/store/PlayList;->moveItem(Landroid/database/sqlite/SQLiteDatabase;JJJZ)Z
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_22

    move-result v8

    goto :goto_15

    .line 2491
    :catchall_22
    move-exception v1

    invoke-virtual {p0, v0, v8}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v1
.end method

.method public removeFileLocation(J)V
    .registers 12
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1321
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1322
    const-string v1, "LocalCopyPath"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1323
    const-string v1, "LocalCopyType"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1324
    const-string v1, "LocalCopySize"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1327
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1329
    :try_start_23
    const-string v2, "MUSIC"

    const-string v3, "Id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v8, :cond_55

    .line 1331
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Music.Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_50
    .catchall {:try_start_23 .. :try_end_50} :catchall_50

    .line 1335
    :catchall_50
    move-exception v0

    invoke-virtual {p0, v1, v7}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v0

    :cond_55
    invoke-virtual {p0, v1, v8}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1337
    return-void
.end method

.method public renamePlaylist(Landroid/content/Context;JLjava/lang/String;)I
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2281
    .line 2284
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2286
    const/4 v3, 0x0

    :try_start_8
    invoke-static {v2, p2, p3, v3}, Lcom/google/android/music/store/PlayList;->readPlayList(Landroid/database/sqlite/SQLiteDatabase;JLcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;

    move-result-object v3

    .line 2287
    if-nez v3, :cond_19

    .line 2288
    const-string v0, "MusicStore"

    const-string v3, "Requested playlist is not found"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_49

    .line 2295
    invoke-virtual {p0, v2, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2308
    :goto_18
    return v1

    .line 2291
    :cond_19
    :try_start_19
    invoke-static {v2, p2, p3, p4}, Lcom/google/android/music/store/PlayList;->rename(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Z
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_49

    move-result v4

    .line 2295
    invoke-virtual {p0, v2, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2298
    invoke-virtual {v3}, Lcom/google/android/music/store/PlayList;->getMediaStoreId()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_45

    .line 2301
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 2302
    const-string v5, "name"

    invoke-virtual {v2, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/google/android/music/store/PlayList;->getMediaStoreId()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2305
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v2, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2308
    :cond_45
    if-eqz v4, :cond_4e

    :goto_47
    move v1, v0

    goto :goto_18

    .line 2295
    :catchall_49
    move-exception v0

    invoke-virtual {p0, v2, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v0

    :cond_4e
    move v0, v1

    .line 2308
    goto :goto_47
.end method

.method public requiresDownloadManager([J)[J
    .registers 15
    .parameter "ids"

    .prologue
    const/4 v12, 0x0

    .line 594
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 595
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "MUSIC"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 596
    const-string v2, "SourceAccount != 0"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 598
    new-instance v10, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 599
    .local v10, csv:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_19
    array-length v2, p1

    if-ge v11, v2, :cond_2e

    .line 600
    aget-wide v2, p1, v11

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 601
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v11, v2, :cond_2b

    .line 602
    const-string v2, ","

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    :cond_2b
    add-int/lit8 v11, v11, 0x1

    goto :goto_19

    .line 605
    :cond_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND MUSIC.Id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 607
    const/4 v8, 0x0

    .line 608
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 610
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    :try_start_54
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MUSIC.Id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 613
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_67
    .catchall {:try_start_54 .. :try_end_67} :catchall_8b

    move-result v9

    .line 614
    .local v9, count:I
    if-nez v9, :cond_71

    .line 625
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 626
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_70
    return-object v12

    .line 617
    :cond_71
    :try_start_71
    new-array v12, v9, [J

    .line 618
    .local v12, ret:[J
    const/4 v11, 0x0

    .line 619
    :goto_74
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_84

    .line 620
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v12, v11
    :try_end_81
    .catchall {:try_start_71 .. :try_end_81} :catchall_8b

    .line 621
    add-int/lit8 v11, v11, 0x1

    goto :goto_74

    .line 625
    :cond_84
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 626
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_70

    .line 625
    .end local v9           #count:I
    .end local v12           #ret:[J
    :catchall_8b
    move-exception v2

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 626
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
.end method

.method public saveArtwork(JLjava/io/File;)V
    .registers 7
    .parameter "albumId"
    .parameter "location"

    .prologue
    .line 1409
    const/4 v1, 0x0

    .line 1410
    .local v1, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1412
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_5
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, p1, p2, v2}, Lcom/google/android/music/store/Store;->saveArtworkLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_11

    move-result v1

    .line 1414
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1416
    return-void

    .line 1414
    :catchall_11
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v2
.end method

.method protected saveArtworkLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1419
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1420
    const-string v1, "AlbumId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1421
    const-string v1, "LocalLocation"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    const-string v1, "ARTWORK"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1423
    const/4 v0, 0x1

    return v0
.end method

.method public saveFileLocation(JLjava/lang/String;IJ)V
    .registers 16
    .parameter "musicId"
    .parameter "localPath"
    .parameter "localCopyType"
    .parameter "localCopySize"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 1078
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1079
    .local v2, values:Landroid/content/ContentValues;
    if-eqz p3, :cond_7c

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7c

    .line 1080
    const-string v3, "LocalCopyPath"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    const/16 v3, 0x64

    if-eq p4, v3, :cond_35

    const/16 v3, 0xc8

    if-eq p4, v3, :cond_35

    .line 1083
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value for localCopyStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1087
    :cond_35
    const-string v3, "LocalCopyType"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1089
    const-string v3, "LocalCopySize"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1096
    :goto_47
    const/4 v1, 0x0

    .line 1097
    .local v1, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1099
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_4c
    const-string v3, "MUSIC"

    const-string v4, "Id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-eq v3, v8, :cond_94

    .line 1103
    const-string v3, "MusicStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to save music location for unknown Music.Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_4c .. :try_end_78} :catchall_99

    .line 1109
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1111
    :goto_7b
    return-void

    .line 1091
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #success:Z
    :cond_7c
    const-string v3, "LocalCopyPath"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1092
    const-string v3, "LocalCopyType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1093
    const-string v3, "LocalCopySize"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_47

    .line 1106
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1       #success:Z
    :cond_94
    const/4 v1, 0x1

    .line 1109
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_7b

    :catchall_99
    move-exception v3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public updateRating(JI)I
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 2547
    invoke-static {p3}, Lcom/google/android/music/store/MusicFile;->throwIfInvalidRating(I)V

    .line 2552
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2555
    :try_start_9
    invoke-static {v1, p1, p2}, Lcom/google/android/music/store/Store;->getSongId(Landroid/database/sqlite/SQLiteDatabase;J)J
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_47
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_c} :catch_42

    move-result-wide v2

    .line 2561
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2565
    new-instance v1, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 2566
    const-string v4, "Rating"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2567
    const-string v4, "_sync_dirty"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2570
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 2572
    :try_start_2c
    const-string v5, "MUSIC"

    const-string v6, "SongId=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_4c

    move-result v0

    .line 2577
    invoke-virtual {p0, v4, v9}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2579
    :goto_41
    return v0

    .line 2556
    :catch_42
    move-exception v2

    .line 2561
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_41

    :catchall_47
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    .line 2577
    :catchall_4c
    move-exception v1

    invoke-virtual {p0, v4, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v1
.end method
