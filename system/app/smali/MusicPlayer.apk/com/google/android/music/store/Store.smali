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

.field private mTracker:Lcom/google/android/music/MusicEventLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 61
    new-instance v0, Lcom/google/android/music/store/Store;

    invoke-direct {v0}, Lcom/google/android/music/store/Store;-><init>()V

    sput-object v0, Lcom/google/android/music/store/Store;->sInstance:Lcom/google/android/music/store/Store;

    .line 70
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/Store;->OPERATIONS_PER_TXN_AS_STRING:Ljava/lang/String;

    .line 81
    const-string v0, "MusicStore"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/store/Store;->LOGV:Z

    .line 3563
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    .line 3565
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "MUSIC.Id"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 3567
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "purposes"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 3570
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "Album"

    const-string v2, "Album"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 3572
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "Artist"

    const-string v2, "Artist"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 3574
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "AlbumArtist"

    const-string v2, "AlbumArtist"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 3576
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "Title"

    const-string v2, "Title"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 3578
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "DownloadStatus"

    sget-object v2, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 3581
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "Size"

    const-string v2, "Size"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 3583
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/music/store/Store;->mDowngraded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    new-instance v0, Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-direct {v0}, Lcom/android/common/content/SyncStateContentProviderHelper;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/store/Store;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    .line 96
    new-instance v0, Lcom/google/android/music/store/MediaStoreImporter;

    invoke-direct {v0}, Lcom/google/android/music/store/MediaStoreImporter;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/store/Store;->mMediaStoreImporter:Lcom/google/android/music/store/MediaStoreImporter;

    .line 97
    new-instance v0, Lcom/google/android/music/store/MusicRingtoneManager;

    invoke-direct {v0, p0}, Lcom/google/android/music/store/MusicRingtoneManager;-><init>(Lcom/google/android/music/store/Store;)V

    iput-object v0, p0, Lcom/google/android/music/store/Store;->mRingtoneManager:Lcom/google/android/music/store/MusicRingtoneManager;

    .line 2895
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/store/Store;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/store/Store;)Lcom/android/common/content/SyncStateContentProviderHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/music/store/Store;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/store/Store;)Lcom/google/android/music/store/MediaStoreImporter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/music/store/Store;->mMediaStoreImporter:Lcom/google/android/music/store/MediaStoreImporter;

    return-object v0
.end method

.method static synthetic access$400(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-static {p0}, Lcom/google/android/music/store/Store;->deleteLocalMusicAndPlaylists(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/google/android/music/store/Store;->deleteRemoteMusicAndPlaylists(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    return v0
.end method

.method private addSongsToPlay(Landroid/database/Cursor;ZIZZJ)Lcom/google/android/music/store/PlayQueueInsertResult;
    .registers 20
    .parameter "musicCursor"
    .parameter "songSelected"
    .parameter "selectedSongPosition"
    .parameter "addMax"
    .parameter "shuffle"
    .parameter "replacementGroupId"

    .prologue
    .line 1964
    const/4 v11, 0x0

    .line 1966
    .local v11, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/music/store/Filters;->getMusicFilterIndex(Landroid/content/Context;)I

    move-result v9

    .line 1967
    .local v9, filterIndex:I
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1969
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_d
    invoke-static {}, Lcom/google/android/music/store/PlayQueue;->getInstance()Lcom/google/android/music/store/PlayQueue;

    move-result-object v2

    .line 1970
    .local v2, q:Lcom/google/android/music/store/PlayQueue;
    const-wide/16 v4, -0x1

    cmp-long v4, p6, v4

    if-eqz v4, :cond_1c

    .line 1971
    move-wide/from16 v0, p6

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/music/store/PlayQueue;->removeGroup(Landroid/database/sqlite/SQLiteDatabase;J)I

    :cond_1c
    move-object v4, p1

    move/from16 v5, p4

    move v6, p2

    move v7, p3

    move/from16 v8, p5

    .line 1973
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/music/store/PlayQueue;->queueAndMovePlayPosition(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;ZZIZI)Lcom/google/android/music/store/PlayQueueInsertResult;
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_35

    move-result-object v10

    .line 1975
    .local v10, result:Lcom/google/android/music/store/PlayQueueInsertResult;
    const/4 v11, 0x1

    .line 1977
    invoke-virtual {p0, v3, v11}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1980
    iget-object v4, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/music/store/PlayQueue;->notifyChange(Landroid/content/ContentResolver;)V

    .line 1982
    return-object v10

    .line 1977
    .end local v2           #q:Lcom/google/android/music/store/PlayQueue;
    .end local v10           #result:Lcom/google/android/music/store/PlayQueueInsertResult;
    :catchall_35
    move-exception v4

    invoke-virtual {p0, v3, v11}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v4
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
    .line 1834
    const-wide/16 v1, 0x0

    .line 1835
    .local v1, id:J
    const/4 v0, 0x0

    .line 1837
    .local v0, canonicalValue:Ljava/lang/String;
    if-eqz p1, :cond_14

    .line 1838
    invoke-virtual {p0, p1}, Lcom/google/android/music/store/TagNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1841
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1842
    move-object v0, p1

    .line 1844
    :cond_10
    invoke-static {v0}, Lcom/google/android/music/store/Store;->generateId(Ljava/lang/String;)J

    move-result-wide v1

    .line 1847
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
    .line 1705
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
    .line 1718
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1719
    new-instance v1, Lcom/google/android/music/utils/BobJenkinsLookup3;

    invoke-direct {v1}, Lcom/google/android/music/utils/BobJenkinsLookup3;-><init>()V

    .line 1722
    :try_start_16
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/music/utils/BobJenkinsLookup3;->hashbig([B)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1723
    if-nez v0, :cond_2b

    .line 1724
    const-string v0, "MusicStore"

    const-string v1, "Hash collision with media store value"

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_2a} :catch_2c

    .line 1725
    const/4 v0, 0x1

    .line 1727
    :cond_2b
    return v0

    .line 1728
    :catch_2c
    move-exception v0

    .line 1729
    const-string v1, "MusicStore"

    const-string v2, "UTF-8 is not supported?"

    invoke-static {v1, v2}, Lcom/google/android/music/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
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

    .line 366
    const/4 v8, 0x0

    .line 367
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

    .line 373
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_3a

    :try_start_2b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 374
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_42

    move-result v8

    .line 379
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 382
    return v8

    .line 376
    :cond_3a
    :try_start_3a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to count local media"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_42

    .line 379
    :catchall_42
    move-exception v0

    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static deleteFromMediaStore(Landroid/content/Context;J)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 1502
    .line 1503
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1509
    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v7

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1514
    if-eqz v2, :cond_67

    :try_start_18
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1515
    new-instance v0, Ljava/io/File;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1516
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_8e
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_2b} :catch_81

    move-result v4

    if-eqz v4, :cond_5d

    move v0, v6

    .line 1534
    :goto_2f
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1537
    :goto_32
    if-eqz v0, :cond_5c

    .line 1538
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1539
    if-nez v1, :cond_93

    .line 1543
    const-string v1, "MusicStore"

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

    invoke-static {v1, v2}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    :cond_5c
    :goto_5c
    return v0

    .line 1519
    :cond_5d
    :try_start_5d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_65

    move v0, v6

    goto :goto_2f

    :cond_65
    move v0, v7

    goto :goto_2f

    .line 1522
    :cond_67
    const-string v0, "MusicStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to locate audio file in media store. Id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_5d .. :try_end_7f} :catchall_8e
    .catch Ljava/lang/SecurityException; {:try_start_5d .. :try_end_7f} :catch_81

    move v0, v6

    .line 1527
    goto :goto_2f

    .line 1529
    :catch_81
    move-exception v0

    .line 1530
    :try_start_82
    const-string v4, "MusicStore"

    const-string v5, "Failed to delete music file due to security exception"

    invoke-static {v4, v5, v0}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_8e

    .line 1534
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move v0, v7

    .line 1535
    goto :goto_32

    .line 1534
    :catchall_8e
    move-exception v0

    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 1545
    :cond_93
    if-eq v1, v6, :cond_5c

    .line 1546
    const-string v2, "MusicStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected return value of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " when deleting media store audio file + "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c
.end method

.method private static deleteLocalMusic(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 432
    const-string v0, "MUSIC"

    const-string v1, "SourceAccount = 0"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 434
    return-void
.end method

.method private static deleteLocalMusicAndPlaylists(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 1
    .parameter "db"

    .prologue
    .line 446
    invoke-static {p0}, Lcom/google/android/music/store/Store;->deleteLocalMusic(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 447
    invoke-static {p0}, Lcom/google/android/music/store/PlayList;->deleteMediaStorePlaylists(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 448
    return-void
.end method

.method private static deleteRemoteMusicAndPlaylists(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 6
    .parameter "context"
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    .line 459
    const/4 v0, 0x0

    .line 461
    .local v0, count:I
    const-string v1, "MUSIC"

    const-string v2, "SourceAccount != 0"

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 469
    invoke-static {p1}, Lcom/google/android/music/store/PlayList;->deleteSyncedPlaylists(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    add-int/2addr v0, v1

    .line 472
    if-lez v0, :cond_15

    .line 473
    invoke-static {p0, p1}, Lcom/google/android/music/store/RecentItemsManager;->update(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 481
    :cond_15
    const-string v1, "LISTITEMS"

    const-string v2, "MusicSourceAccount != 0"

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 485
    const-string v1, "LIST_TOMBSTONES"

    invoke-virtual {p1, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 486
    const-string v1, "LISTITEM_TOMBSTONES"

    invoke-virtual {p1, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 487
    const-string v1, "_sync_state"

    invoke-virtual {p1, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 489
    const-string v1, "KEEPON"

    invoke-virtual {p1, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 490
    const-string v1, "SHOULDKEEPON"

    invoke-virtual {p1, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 492
    const-string v1, "SUGGESTED_SEEDS"

    invoke-virtual {p1, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 493
    const-wide/16 v1, 0x0

    invoke-static {p1, v1, v2}, Lcom/google/android/music/store/Store;->removeOrphanedSuggestedMixes(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v1

    add-int/2addr v0, v1

    .line 496
    if-lez v0, :cond_53

    const/4 v1, 0x1

    :goto_52
    return v1

    :cond_53
    const/4 v1, 0x0

    goto :goto_52
.end method

.method private downgrade(Ljava/lang/String;Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 8
    .parameter "path"
    .parameter "readable"

    .prologue
    .line 191
    iget-object v2, p0, Lcom/google/android/music/store/Store;->mDowngraded:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 193
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mDowngraded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_39

    .line 194
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mDbOpener:Lcom/google/android/music/store/Store$DatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/music/store/Store$DatabaseHelper;->close()V

    .line 195
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, dbFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 197
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

    invoke-static {v1, v3}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_33
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mDowngraded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 205
    .end local v0           #dbFile:Ljava/io/File;
    :cond_39
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mDbOpener:Lcom/google/android/music/store/Store$DatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/music/store/Store$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 199
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

    invoke-static {v1, v3}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 206
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
    .line 2913
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 2914
    :cond_8
    const-wide/16 v0, 0x0

    .line 2918
    :goto_a
    return-wide v0

    .line 2916
    :cond_b
    new-instance v0, Lcom/google/android/music/utils/BobJenkinsLookup3;

    invoke-direct {v0}, Lcom/google/android/music/utils/BobJenkinsLookup3;-><init>()V

    .line 2918
    :try_start_10
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/utils/BobJenkinsLookup3;->hashbig([B)J
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_19} :catch_1b

    move-result-wide v0

    goto :goto_a

    .line 2919
    :catch_1b
    move-exception v0

    .line 2920
    const-string v1, "MusicStore"

    const-string v2, "UTF-8 is not supported?"

    invoke-static {v1, v2}, Lcom/google/android/music/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 2921
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to convert to UTF-8"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 8
    .parameter "readable"

    .prologue
    .line 167
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    const-string v2, "db access on main thread"

    invoke-static {v1, v2}, Lcom/google/android/music/MusicUtils;->checkMainThread(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    :try_start_7
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mDbOpener:Lcom/google/android/music/store/Store$DatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/music/store/Store$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_c
    .catch Lcom/google/android/music/store/Store$DowngradeException; {:try_start_7 .. :try_end_c} :catch_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_c} :catch_18

    move-result-object v1

    .line 183
    :goto_d
    return-object v1

    .line 172
    :catch_e
    move-exception v0

    .line 173
    .local v0, e:Lcom/google/android/music/store/Store$DowngradeException;
    invoke-virtual {v0}, Lcom/google/android/music/store/Store$DowngradeException;->getFilepath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/google/android/music/store/Store;->downgrade(Ljava/lang/String;Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    goto :goto_d

    .line 174
    .end local v0           #e:Lcom/google/android/music/store/Store$DowngradeException;
    :catch_18
    move-exception v0

    .line 177
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v2, "wtf"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "failureReason"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "getDatabaseError"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "failureMsg"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mDbOpener:Lcom/google/android/music/store/Store$DatabaseHelper;

    #getter for: Lcom/google/android/music/store/Store$DatabaseHelper;->mDBPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/music/store/Store$DatabaseHelper;->access$000(Lcom/google/android/music/store/Store$DatabaseHelper;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 181
    const-string v1, "MusicStore"

    const-string v2, "Error trying to open the DB"

    invoke-static {v1, v2, v0}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mMediaStoreImporter:Lcom/google/android/music/store/MediaStoreImporter;

    iget-object v2, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/music/store/MediaStoreImporter;->invalidateMediaStoreImport(Landroid/content/Context;)V

    .line 183
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mDbOpener:Lcom/google/android/music/store/Store$DatabaseHelper;

    #getter for: Lcom/google/android/music/store/Store$DatabaseHelper;->mDBPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/music/store/Store$DatabaseHelper;->access$000(Lcom/google/android/music/store/Store$DatabaseHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/google/android/music/store/Store;->downgrade(Ljava/lang/String;Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    goto :goto_d

    .line 185
    :cond_5a
    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;
    .registers 2
    .parameter "context"

    .prologue
    .line 108
    sget-object v0, Lcom/google/android/music/store/Store;->sInstance:Lcom/google/android/music/store/Store;

    invoke-direct {v0, p0}, Lcom/google/android/music/store/Store;->init(Landroid/content/Context;)V

    .line 109
    sget-object v0, Lcom/google/android/music/store/Store;->sInstance:Lcom/google/android/music/store/Store;

    return-object v0
.end method

.method private static getPreferredMusicIdForSongId(Landroid/database/sqlite/SQLiteDatabase;J)J
    .registers 15
    .parameter "db"
    .parameter "songId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 575
    const-wide/16 v10, 0x0

    .line 576
    .local v10, fileId:J
    const/4 v9, 0x0

    .line 578
    .local v9, c:Landroid/database/Cursor;
    :try_start_3
    const-string v1, "MUSIC"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "MUSIC.Id"

    aput-object v3, v2, v0

    const-string v3, "MUSIC.SongId=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "LocalCopyType DESC, MUSIC.Id DESC"

    const-string v8, "1"

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 590
    if-eqz v9, :cond_31

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 591
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_53

    move-result-wide v10

    .line 595
    :cond_31
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 598
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-nez v0, :cond_58

    .line 599
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find file for song id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :catchall_53
    move-exception v0

    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 601
    :cond_58
    return-wide v10
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

    .line 544
    const-wide/16 v9, 0x0

    .line 545
    .local v9, songId:J
    const/4 v8, 0x0

    .line 547
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

    .line 552
    if-eqz v8, :cond_2a

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v11, :cond_4e

    .line 553
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

    .line 558
    :catchall_49
    move-exception v0

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 555
    :cond_4e
    :try_start_4e
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 556
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_49

    move-result-wide v9

    .line 558
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 561
    return-wide v9
.end method

.method private getTotalNewKeeponSize(Landroid/database/Cursor;)J
    .registers 8
    .parameter "c"

    .prologue
    .line 1089
    const-wide/16 v2, 0x0

    .line 1090
    .local v2, total:J
    :cond_2
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1091
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1092
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1093
    .local v1, localLocation:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1094
    iget-object v4, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v4, v1, v5}, Lcom/google/android/music/dl/cache/CacheUtils;->resolveMusicPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1095
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1096
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    sub-long/2addr v2, v4

    goto :goto_2

    .line 1100
    .end local v0           #f:Ljava/io/File;
    .end local v1           #localLocation:Ljava/lang/String;
    :cond_2c
    return-wide v2
.end method

.method private declared-synchronized init(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mDbOpener:Lcom/google/android/music/store/Store$DatabaseHelper;

    if-nez v1, :cond_49

    .line 117
    sget-boolean v1, Lcom/google/android/music/DebugUtils;->IS_DEBUG_BUILD:Z

    if-eqz v1, :cond_33

    .line 118
    invoke-static {}, Lcom/google/android/music/MusicUtils;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, processName:Ljava/lang/String;
    if-eqz v0, :cond_17

    const-string v1, "main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 120
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

    .line 116
    .end local v0           #processName:Ljava/lang/String;
    :catchall_30
    move-exception v1

    monitor-exit p0

    throw v1

    .line 124
    :cond_33
    :try_start_33
    iput-object p1, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    .line 125
    const-string v1, "MusicStore"

    const-string v2, "Database version: 44"

    invoke-static {v1, v2}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v1, Lcom/google/android/music/store/Store$DatabaseHelper;

    invoke-direct {v1, p0}, Lcom/google/android/music/store/Store$DatabaseHelper;-><init>(Lcom/google/android/music/store/Store;)V

    iput-object v1, p0, Lcom/google/android/music/store/Store;->mDbOpener:Lcom/google/android/music/store/Store$DatabaseHelper;

    .line 127
    invoke-static {p1}, Lcom/google/android/music/MusicEventLogger;->getInstance(Landroid/content/Context;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/store/Store;->mTracker:Lcom/google/android/music/MusicEventLogger;
    :try_end_49
    .catchall {:try_start_33 .. :try_end_49} :catchall_30

    .line 131
    :cond_49
    monitor-exit p0

    return-void
.end method

.method private lock()V
    .registers 1

    .prologue
    .line 314
    return-void
.end method

.method private static preparePlaylistForModification(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .registers 8
    .parameter "db"
    .parameter "playlistId"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3199
    invoke-static {}, Lcom/google/android/music/store/PlayQueue;->getInstance()Lcom/google/android/music/store/PlayQueue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/store/PlayQueue;->getListId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_12

    move v0, v2

    .line 3200
    .local v0, playQueue:Z
    :goto_f
    if-eqz v0, :cond_14

    .line 3207
    :goto_11
    return v1

    .end local v0           #playQueue:Z
    :cond_12
    move v0, v1

    .line 3199
    goto :goto_f

    .line 3206
    .restart local v0       #playQueue:Z
    :cond_14
    invoke-static {p0, p1, p2}, Lcom/google/android/music/store/PlayList;->disconnectFromMediaStore(Landroid/database/sqlite/SQLiteDatabase;J)V

    move v1, v2

    .line 3207
    goto :goto_11
.end method

.method private static removeOrphanPlayQueueItemsAndGroups(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 4
    .parameter "db"

    .prologue
    .line 2084
    invoke-static {}, Lcom/google/android/music/store/PlayQueue;->getInstance()Lcom/google/android/music/store/PlayQueue;

    move-result-object v1

    .line 2085
    .local v1, q:Lcom/google/android/music/store/PlayQueue;
    invoke-virtual {v1, p0}, Lcom/google/android/music/store/PlayQueue;->removeOrphanItems(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    .line 2086
    .local v0, deleted:I
    invoke-virtual {v1, p0}, Lcom/google/android/music/store/PlayQueue;->removeOrphanGroups(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2087
    return v0
.end method

.method private static removeOrphanedSuggestedMixes(Landroid/database/sqlite/SQLiteDatabase;J)I
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 3489
    .line 3490
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3491
    const-string v1, "ListType=50"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3492
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3493
    const-string v1, "Id NOT IN (SELECT SeedListId FROM SUGGESTED_SEEDS WHERE SeedListId NOT NULL)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3497
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_ad

    .line 3498
    const-string v1, " AND Id <> ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3499
    new-array v4, v9, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    .line 3503
    :goto_2a
    const-string v1, "LISTS"

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v8

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3506
    if-eqz v2, :cond_5d

    :try_start_3f
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5d

    .line 3507
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v5, v0, [J

    move v0, v8

    .line 3509
    :goto_4c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 3510
    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v5, v0
    :try_end_5b
    .catchall {:try_start_3f .. :try_end_5b} :catchall_81

    move v0, v1

    goto :goto_4c

    .line 3514
    :cond_5d
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 3517
    if-eqz v5, :cond_ab

    .line 3518
    new-array v1, v9, [Ljava/lang/String;

    .line 3519
    array-length v2, v5

    move v0, v8

    :goto_66
    if-ge v0, v2, :cond_86

    aget-wide v3, v5, v0

    .line 3520
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    .line 3521
    const-string v3, "LISTITEMS"

    const-string v4, "ListId=?"

    invoke-virtual {p0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3522
    const-string v3, "LISTS"

    const-string v4, "Id=?"

    invoke-virtual {p0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3519
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 3514
    :catchall_81
    move-exception v0

    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 3524
    :cond_86
    sget-boolean v0, Lcom/google/android/music/store/Store;->LOGV:Z

    if-eqz v0, :cond_a9

    const-string v0, "MusicStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " orphaned suggested mixes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3525
    :cond_a9
    array-length v0, v5

    .line 3527
    :goto_aa
    return v0

    :cond_ab
    move v0, v8

    goto :goto_aa

    :cond_ad
    move-object v4, v5

    goto/16 :goto_2a
.end method

.method static resetLocalCopyForOrphanedShouldKeepOnMusic(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1591
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1592
    const-string v1, "LocalCopyPath"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1593
    const-string v1, "LocalCopyType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1594
    const-string v1, "LocalCopyStorageType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1595
    const-string v1, "LocalCopySize"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1597
    const-string v1, "com.google.android.music.pin"

    invoke-static {v1}, Lcom/google/android/music/log/Log;->getLogFile(Ljava/lang/String;)Lcom/google/android/music/log/LogFile;

    move-result-object v1

    .line 1598
    if-eqz v1, :cond_36

    .line 1599
    const-string v2, "MusicStore"

    const-string v3, "resetLocalCopyForOrphanedShouldKeepOnMusic()"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/log/LogFile;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    :cond_36
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
    .line 284
    if-eqz p0, :cond_5

    .line 286
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 291
    :cond_5
    :goto_5
    return-void

    .line 287
    :catch_6
    move-exception v0

    .line 288
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MusicStore"

    const-string v2, "Failed to close cursor"

    invoke-static {v1, v2, v0}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public static safeClose(Landroid/database/sqlite/SQLiteProgram;)V
    .registers 4
    .parameter "program"

    .prologue
    .line 301
    if-eqz p0, :cond_5

    .line 303
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 308
    :cond_5
    :goto_5
    return-void

    .line 304
    :catch_6
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MusicStore"

    const-string v2, "Failed to close SQLiteProgram"

    invoke-static {v1, v2, v0}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private static throwIfPlayQueue(J)V
    .registers 4
    .parameter

    .prologue
    .line 3212
    invoke-static {}, Lcom/google/android/music/store/PlayQueue;->getInstance()Lcom/google/android/music/store/PlayQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/store/PlayQueue;->getListId()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-nez v0, :cond_14

    .line 3213
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The operation cannot be performed on a play queue"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3215
    :cond_14
    return-void
.end method

.method private unlock()V
    .registers 1

    .prologue
    .line 319
    return-void
.end method


# virtual methods
.method public addSongsToPlay(Landroid/database/Cursor;ZZIJ)Lcom/google/android/music/store/PlayQueueInsertResult;
    .registers 15
    .parameter "musicCursor"
    .parameter "addMax"
    .parameter "shuffle"
    .parameter "selectedSongPosition"
    .parameter "replacementGroupId"

    .prologue
    .line 1911
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p2

    move v5, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/store/Store;->addSongsToPlay(Landroid/database/Cursor;ZIZZJ)Lcom/google/android/music/store/PlayQueueInsertResult;

    move-result-object v0

    return-object v0
.end method

.method public addSongsToPlay(Landroid/database/Cursor;ZZJ)Lcom/google/android/music/store/PlayQueueInsertResult;
    .registers 14
    .parameter "musicCursor"
    .parameter "addMax"
    .parameter "shuffle"
    .parameter "replacementGroupId"

    .prologue
    const/4 v2, 0x0

    .line 1924
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/store/Store;->addSongsToPlay(Landroid/database/Cursor;ZIZZJ)Lcom/google/android/music/store/PlayQueueInsertResult;

    move-result-object v0

    return-object v0
.end method

.method public addToPlayQueue(Landroid/database/Cursor;JZ)Lcom/google/android/music/store/PlayQueueAddResult;
    .registers 13
    .parameter "musicCursor"
    .parameter "currentSongListItemId"
    .parameter "shuffle"

    .prologue
    .line 2007
    const/4 v7, 0x0

    .line 2009
    .local v7, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2011
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_5
    invoke-static {}, Lcom/google/android/music/store/PlayQueue;->getInstance()Lcom/google/android/music/store/PlayQueue;

    move-result-object v0

    .local v0, q:Lcom/google/android/music/store/PlayQueue;
    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    .line 2012
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/store/PlayQueue;->queue(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;JZ)Lcom/google/android/music/store/PlayQueueAddResult;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_1e

    move-result-object v6

    .line 2013
    .local v6, result:Lcom/google/android/music/store/PlayQueueAddResult;
    const/4 v7, 0x1

    .line 2015
    invoke-virtual {p0, v1, v7}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2018
    iget-object v2, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/music/store/PlayQueue;->notifyChange(Landroid/content/ContentResolver;)V

    .line 2020
    return-object v6

    .line 2015
    .end local v0           #q:Lcom/google/android/music/store/PlayQueue;
    .end local v6           #result:Lcom/google/android/music/store/PlayQueueAddResult;
    :catchall_1e
    move-exception v2

    invoke-virtual {p0, v1, v7}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v2
.end method

.method public appendAlbumToPlaylist(JJ)I
    .registers 9
    .parameter "playlistId"
    .parameter "albumId"

    .prologue
    .line 3035
    invoke-static {p1, p2}, Lcom/google/android/music/store/Store;->throwIfPlayQueue(J)V

    .line 3037
    const/4 v1, 0x0

    .line 3038
    .local v1, result:I
    const/4 v2, 0x0

    .line 3039
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3042
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_9
    invoke-static {p1, p2}, Lcom/google/android/music/store/Store;->throwIfPlayQueue(J)V

    .line 3043
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/Store;->preparePlaylistForModification(Landroid/database/sqlite/SQLiteDatabase;J)Z

    .line 3044
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/music/store/PlayList;->appendAlbum(Landroid/database/sqlite/SQLiteDatabase;JJ)I
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_18

    move-result v1

    .line 3045
    const/4 v2, 0x1

    .line 3047
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 3050
    return v1

    .line 3047
    :catchall_18
    move-exception v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public appendArtistToPlaylist(JJ)I
    .registers 9
    .parameter "playlistId"
    .parameter "artistId"

    .prologue
    .line 3061
    invoke-static {p1, p2}, Lcom/google/android/music/store/Store;->throwIfPlayQueue(J)V

    .line 3063
    const/4 v1, 0x0

    .line 3064
    .local v1, result:I
    const/4 v2, 0x0

    .line 3065
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3068
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_9
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/Store;->preparePlaylistForModification(Landroid/database/sqlite/SQLiteDatabase;J)Z

    .line 3069
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/music/store/PlayList;->appendArtist(Landroid/database/sqlite/SQLiteDatabase;JJ)I
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_15

    move-result v1

    .line 3070
    const/4 v2, 0x1

    .line 3072
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 3075
    return v1

    .line 3072
    :catchall_15
    move-exception v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public appendGenreToPlaylist(JJ)I
    .registers 9
    .parameter "playlistId"
    .parameter "genreId"

    .prologue
    .line 3085
    const/4 v1, 0x0

    .line 3086
    .local v1, result:I
    const/4 v2, 0x0

    .line 3087
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3090
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_6
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/Store;->preparePlaylistForModification(Landroid/database/sqlite/SQLiteDatabase;J)Z

    .line 3091
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/music/store/PlayList;->appendGenre(Landroid/database/sqlite/SQLiteDatabase;JJ)I
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_12

    move-result v1

    .line 3092
    const/4 v2, 0x1

    .line 3094
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 3097
    return v1

    .line 3094
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
    .line 3108
    invoke-static {p1, p2}, Lcom/google/android/music/store/Store;->throwIfPlayQueue(J)V

    .line 3110
    const/4 v7, 0x0

    .line 3111
    .local v7, result:I
    const/4 v8, 0x0

    .line 3112
    .local v8, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3115
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_9
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/Store;->preparePlaylistForModification(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .line 3116
    invoke-static/range {v0 .. v6}, Lcom/google/android/music/store/PlayList;->appendGenre(Landroid/database/sqlite/SQLiteDatabase;JJJ)I
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_18

    move-result v7

    .line 3117
    const/4 v8, 0x1

    .line 3119
    invoke-virtual {p0, v0, v8}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 3122
    return v7

    .line 3119
    :catchall_18
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
    .line 3014
    invoke-static {p1, p2}, Lcom/google/android/music/store/Store;->throwIfPlayQueue(J)V

    .line 3016
    const-wide/16 v1, 0x0

    .line 3017
    .local v1, newItemId:J
    const/4 v3, 0x0

    .line 3018
    .local v3, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3021
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_a
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/Store;->preparePlaylistForModification(Landroid/database/sqlite/SQLiteDatabase;J)Z

    .line 3022
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/music/store/PlayList;->appendItem(Landroid/database/sqlite/SQLiteDatabase;JJ)J
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_1e

    move-result-wide v1

    .line 3023
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-eqz v4, :cond_1c

    const/4 v3, 0x1

    .line 3025
    :goto_18
    invoke-virtual {p0, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 3027
    return-wide v1

    .line 3023
    :cond_1c
    const/4 v3, 0x0

    goto :goto_18

    .line 3025
    :catchall_1e
    move-exception v4

    invoke-virtual {p0, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v4
.end method

.method public appendPlaylistToPlaylist(JJ)I
    .registers 9
    .parameter "playlistId"
    .parameter "sourcePlaylistId"

    .prologue
    .line 3133
    invoke-static {p1, p2}, Lcom/google/android/music/store/Store;->throwIfPlayQueue(J)V

    .line 3135
    const/4 v1, 0x0

    .line 3136
    .local v1, result:I
    const/4 v2, 0x0

    .line 3137
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3140
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_9
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/Store;->preparePlaylistForModification(Landroid/database/sqlite/SQLiteDatabase;J)Z

    .line 3141
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/music/store/PlayList;->appendPlaylist(Landroid/database/sqlite/SQLiteDatabase;JJ)I
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_15

    move-result v1

    .line 3142
    const/4 v2, 0x1

    .line 3144
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 3147
    return v1

    .line 3144
    :catchall_15
    move-exception v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public beginRead()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->lock()V

    .line 218
    const/4 v1, 0x1

    :try_start_5
    invoke-direct {p0, v1}, Lcom/google/android/music/store/Store;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_f

    move-result-object v0

    .line 220
    if-nez v0, :cond_e

    .line 221
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->unlock()V

    .line 224
    :cond_e
    return-object v0

    .line 220
    :catchall_f
    move-exception v1

    if-nez v0, :cond_15

    .line 221
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->unlock()V

    :cond_15
    throw v1
.end method

.method public beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 245
    .local v1, success:Z
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->lock()V

    .line 247
    const/4 v2, 0x0

    :try_start_6
    invoke-direct {p0, v2}, Lcom/google/android/music/store/Store;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_14

    .line 249
    const/4 v1, 0x1

    .line 251
    if-nez v1, :cond_13

    .line 252
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->unlock()V

    .line 255
    :cond_13
    return-object v0

    .line 251
    :catchall_14
    move-exception v2

    if-nez v1, :cond_1a

    .line 252
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->unlock()V

    :cond_1a
    throw v2
.end method

.method public clearPlayQueue()V
    .registers 5

    .prologue
    .line 2027
    const/4 v2, 0x0

    .line 2029
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2031
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_5
    invoke-static {}, Lcom/google/android/music/store/PlayQueue;->getInstance()Lcom/google/android/music/store/PlayQueue;

    move-result-object v1

    .line 2032
    .local v1, q:Lcom/google/android/music/store/PlayQueue;
    invoke-virtual {v1, v0}, Lcom/google/android/music/store/PlayQueue;->clear(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    .line 2033
    const/4 v2, 0x1

    .line 2035
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2038
    iget-object v3, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/music/store/PlayQueue;->notifyChange(Landroid/content/ContentResolver;)V

    .line 2039
    return-void

    .line 2035
    .end local v1           #q:Lcom/google/android/music/store/PlayQueue;
    :catchall_1a
    move-exception v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public clearReferencesInDatabase(Ljava/util/Set;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 1465
    iget-object v0, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v2

    .line 1468
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1472
    invoke-static {v0, p1}, Lcom/google/android/music/utils/DbUtils;->appendIN(Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 1473
    sget-boolean v3, Lcom/google/android/music/store/Store;->LOGV:Z

    if-eqz v3, :cond_32

    .line 1474
    const-string v3, "MusicStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "These don\'t have files on the file system anymore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    :cond_32
    :try_start_32
    invoke-virtual {v2}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1480
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1481
    const-string v4, "LocalCopyType"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1483
    const-string v4, "LocalCopyPath"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1484
    const-string v4, "LocalCopySize"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1485
    const-string v4, "LocalCopyStorageType"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1487
    const-string v4, "MUSIC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v3, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_32 .. :try_end_77} :catchall_7e

    .line 1490
    const/4 v0, 0x1

    .line 1492
    if-eqz v1, :cond_7d

    .line 1493
    invoke-virtual {v2, v1, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1498
    :cond_7d
    return-void

    .line 1492
    :catchall_7e
    move-exception v0

    if-eqz v1, :cond_84

    .line 1493
    invoke-virtual {v2, v1, v7}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1494
    :cond_84
    throw v0
.end method

.method public countLocalMusic()I
    .registers 3

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 359
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_4
    invoke-static {v0}, Lcom/google/android/music/store/Store;->countLocalMusic(Landroid/database/sqlite/SQLiteDatabase;)I
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    move-result v1

    .line 361
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
    .line 155
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 156
    return-void
.end method

.method public createPlaylist(Ljava/lang/String;)J
    .registers 7
    .parameter "name"

    .prologue
    .line 2927
    const-wide/16 v1, 0x0

    .line 2928
    .local v1, newPlaylistId:J
    const/4 v3, 0x0

    .line 2929
    .local v3, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2931
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_7
    invoke-static {v0, p1}, Lcom/google/android/music/store/PlayList;->createPlayList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/google/android/music/store/PlayList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/store/PlayList;->getId()J
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    move-result-wide v1

    .line 2932
    const/4 v3, 0x1

    .line 2934
    invoke-virtual {p0, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2936
    return-wide v1

    .line 2934
    :catchall_14
    move-exception v4

    invoke-virtual {p0, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v4
.end method

.method public deleteAllMatchingLocalMusicFiles(Landroid/content/Context;J)I
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1339
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1341
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1343
    :try_start_b
    invoke-static {v0, p2, p3}, Lcom/google/android/music/store/Store;->getSongId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v5

    .line 1344
    const-string v1, "MUSIC"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Id"

    aput-object v4, v2, v3

    const-string v3, "SongId=? AND LocalCopyType=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const/16 v6, 0x12c

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_34} :catch_8a

    move-result-object v2

    .line 1357
    if-eqz v2, :cond_77

    .line 1358
    :goto_37
    :try_start_37
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1359
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catchall {:try_start_37 .. :try_end_49} :catchall_87
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_49} :catch_4a

    goto :goto_37

    .line 1362
    :catch_4a
    move-exception v1

    .line 1363
    :goto_4b
    :try_start_4b
    const-string v3, "MusicStore"

    const-string v4, "File not found"

    invoke-static {v3, v4, v1}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_87

    .line 1365
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1366
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1370
    :goto_58
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v8

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1371
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, p1, v3, v4}, Lcom/google/android/music/store/Store;->deleteLocalMusicFile(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1372
    add-int/lit8 v0, v1, 0x1

    :goto_75
    move v1, v0

    goto :goto_5d

    .line 1365
    :cond_77
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1366
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_58

    .line 1365
    :catchall_7e
    move-exception v1

    :goto_7f
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1366
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    .line 1375
    :cond_86
    return v1

    .line 1365
    :catchall_87
    move-exception v1

    move-object v9, v2

    goto :goto_7f

    .line 1362
    :catch_8a
    move-exception v1

    move-object v2, v9

    goto :goto_4b

    :cond_8d
    move v0, v1

    goto :goto_75
.end method

.method public deleteAllMatchingMusicFiles(Landroid/content/Context;JZ)I
    .registers 21
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1231
    invoke-virtual/range {p0 .. p3}, Lcom/google/android/music/store/Store;->deleteAllMatchingLocalMusicFiles(Landroid/content/Context;J)I

    move-result v10

    .line 1232
    sget-boolean v2, Lcom/google/android/music/store/Store;->LOGV:Z

    if-eqz v2, :cond_24

    .line 1233
    const-string v2, "MusicStore"

    const-string v3, "%d local files deleted for musicId %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/music/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    :cond_24
    const/4 v12, 0x0

    .line 1239
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 1240
    const/4 v11, 0x0

    .line 1241
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1243
    :try_start_2e
    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Lcom/google/android/music/store/Store;->getSongId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v7

    .line 1244
    const-string v3, "MUSIC"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "SourceAccount"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "SourceId"

    aput-object v6, v4, v5

    const-string v5, "SongId=? AND LocalCopyType!=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    const/16 v8, 0x12c

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5e
    .catchall {:try_start_2e .. :try_end_5e} :catchall_134
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_5e} :catch_136

    move-result-object v3

    .line 1259
    if-eqz v3, :cond_ec

    .line 1260
    :goto_61
    :try_start_61
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 1261
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_75

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 1262
    :cond_75
    const-string v4, "MusicStore"

    const-string v5, "Trying to delete a remote music file id that has no source id or no source account.  Ignoring."

    invoke-static {v4, v5}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_61 .. :try_end_7c} :catchall_e0
    .catch Ljava/io/FileNotFoundException; {:try_start_61 .. :try_end_7c} :catch_7d

    goto :goto_61

    .line 1270
    :catch_7d
    move-exception v4

    .line 1271
    :goto_7e
    :try_start_7e
    const-string v5, "MusicStore"

    const-string v6, "File not found"

    invoke-static {v5, v6, v4}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_85
    .catchall {:try_start_7e .. :try_end_85} :catchall_e0

    .line 1273
    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1274
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v4, v3

    .line 1277
    :goto_8e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 1278
    const/4 v7, 0x0

    .line 1279
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v8

    .line 1281
    :try_start_97
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v5, v12

    :goto_9c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1282
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1283
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1284
    move-object/from16 v0, p1

    invoke-static {v0, v6, v3, v2}, Lcom/google/android/music/store/MusicFile;->deleteAndGetLocalCacheFilepath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1286
    int-to-long v12, v5

    int-to-long v14, v3

    invoke-static {v6, v2, v14, v15}, Lcom/google/android/music/store/MusicFileTombstone;->insertMusicTombstone(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)J

    move-result-wide v2

    add-long/2addr v2, v12

    long-to-int v2, v2

    .line 1288
    if-eqz v11, :cond_c7

    .line 1289
    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_c7
    .catchall {:try_start_97 .. :try_end_c7} :catchall_12a

    :cond_c7
    move v5, v2

    .line 1291
    goto :goto_9c

    .line 1266
    :cond_c9
    :try_start_c9
    new-instance v4, Landroid/util/Pair;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_df
    .catchall {:try_start_c9 .. :try_end_df} :catchall_e0
    .catch Ljava/io/FileNotFoundException; {:try_start_c9 .. :try_end_df} :catch_7d

    goto :goto_61

    .line 1273
    :catchall_e0
    move-exception v4

    move-object v11, v3

    move-object v3, v4

    :goto_e3
    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1274
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3

    .line 1273
    :cond_ec
    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1274
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v4, v3

    .line 1275
    goto :goto_8e

    .line 1292
    :cond_f6
    const/4 v2, 0x1

    .line 1294
    invoke-static {v4}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1295
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1303
    const-string v2, "MusicStore"

    const-string v3, "%d remote files deleted for musicId %d.  Removing cached remote files."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/music/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    sget-object v2, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v3, Lcom/google/android/music/store/Store$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Lcom/google/android/music/store/Store$1;-><init>(Lcom/google/android/music/store/Store;Ljava/util/Set;)V

    invoke-static {v2, v3}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 1319
    add-int v2, v10, v5

    .line 1321
    return v2

    .line 1294
    :catchall_12a
    move-exception v2

    invoke-static {v4}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1295
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v2

    .line 1273
    :catchall_134
    move-exception v3

    goto :goto_e3

    .line 1270
    :catch_136
    move-exception v3

    move-object v4, v3

    move-object v3, v11

    goto/16 :goto_7e
.end method

.method public deleteLocalMusic()V
    .registers 4

    .prologue
    .line 386
    const/4 v1, 0x0

    .line 387
    .local v1, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 389
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_5
    invoke-static {v0}, Lcom/google/android/music/store/Store;->deleteLocalMusic(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    .line 390
    const/4 v1, 0x1

    .line 392
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 394
    return-void

    .line 392
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
    .line 1389
    const/4 v5, 0x0

    .line 1391
    .local v5, success:Z
    const/4 v6, 0x0

    :try_start_2
    invoke-static {p0, v6, p2, p3}, Lcom/google/android/music/store/MusicFile;->getSummaryMusicFile(Lcom/google/android/music/store/Store;Lcom/google/android/music/store/MusicFile;J)Lcom/google/android/music/store/MusicFile;

    move-result-object v4

    .line 1393
    .local v4, music:Lcom/google/android/music/store/MusicFile;
    invoke-virtual {v4}, Lcom/google/android/music/store/MusicFile;->getLocalCopyType()I

    move-result v6

    const/16 v7, 0x12c

    if-ne v6, v7, :cond_43

    .line 1394
    invoke-virtual {v4}, Lcom/google/android/music/store/MusicFile;->getSourceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1395
    .local v2, mediaStoreId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_43

    .line 1396
    invoke-static {p1, v2, v3}, Lcom/google/android/music/store/Store;->deleteFromMediaStore(Landroid/content/Context;J)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 1397
    const/4 v5, 0x0

    .line 1398
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_26
    .catch Lcom/google/android/music/store/DataNotFoundException; {:try_start_2 .. :try_end_26} :catch_49

    move-result-object v0

    .line 1400
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

    .line 1406
    invoke-virtual {v4}, Lcom/google/android/music/store/MusicFile;->getSourceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/google/android/music/store/PlayList;->deleteLocalMusic(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_27 .. :try_end_3f} :catchall_44

    .line 1407
    const/4 v5, 0x1

    .line 1409
    :try_start_40
    invoke-virtual {p0, v0, v5}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1419
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #mediaStoreId:J
    .end local v4           #music:Lcom/google/android/music/store/MusicFile;
    :cond_43
    :goto_43
    return v5

    .line 1409
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #mediaStoreId:J
    .restart local v4       #music:Lcom/google/android/music/store/MusicFile;
    :catchall_44
    move-exception v6

    invoke-virtual {p0, v0, v5}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v6
    :try_end_49
    .catch Lcom/google/android/music/store/DataNotFoundException; {:try_start_40 .. :try_end_49} :catch_49

    .line 1414
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #mediaStoreId:J
    .end local v4           #music:Lcom/google/android/music/store/MusicFile;
    :catch_49
    move-exception v1

    .line 1416
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

    .line 2941
    invoke-static {p2, p3}, Lcom/google/android/music/store/Store;->throwIfPlayQueue(J)V

    .line 2946
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2948
    const/4 v1, 0x0

    :try_start_b
    invoke-static {v2, p2, p3, v1}, Lcom/google/android/music/store/PlayList;->readPlayList(Landroid/database/sqlite/SQLiteDatabase;JLcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;

    move-result-object v1

    .line 2949
    if-nez v1, :cond_1c

    .line 2950
    const-string v1, "MusicStore"

    const-string v3, "Requested playlist is not found"

    invoke-static {v1, v3}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_41

    .line 2957
    invoke-virtual {p0, v2, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2967
    :cond_1b
    :goto_1b
    return v0

    .line 2953
    :cond_1c
    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_1e
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/music/store/PlayList;->delete(Landroid/database/sqlite/SQLiteDatabase;ZZ)Z
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_41

    move-result v0

    .line 2957
    invoke-virtual {p0, v2, v5}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2960
    invoke-virtual {v1}, Lcom/google/android/music/store/PlayList;->getMediaStoreId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1b

    .line 2963
    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/google/android/music/store/PlayList;->getMediaStoreId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2965
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1b

    .line 2957
    :catchall_41
    move-exception v1

    invoke-virtual {p0, v2, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v1
.end method

.method public deletePlaylistItem(JJ)Z
    .registers 10
    .parameter "playlistId"
    .parameter "itemId"

    .prologue
    .line 3151
    const/4 v2, 0x0

    .line 3152
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3154
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_5
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/Store;->preparePlaylistForModification(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v3

    .line 3155
    .local v3, sync:Z
    const/4 v4, 0x0

    invoke-static {v0, p3, p4, v4}, Lcom/google/android/music/store/PlayList$Item;->readItem(Landroid/database/sqlite/SQLiteDatabase;JLcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/store/PlayList$Item;

    move-result-object v1

    .line 3156
    .local v1, item:Lcom/google/android/music/store/PlayList$Item;
    if-eqz v1, :cond_14

    .line 3157
    invoke-virtual {v1, v0, v3}, Lcom/google/android/music/store/PlayList$Item;->delete(Landroid/database/sqlite/SQLiteDatabase;Z)Z
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_18

    move-result v2

    .line 3160
    :cond_14
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 3162
    return v2

    .line 3160
    .end local v1           #item:Lcom/google/android/music/store/PlayList$Item;
    .end local v3           #sync:Z
    :catchall_18
    move-exception v4

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v4
.end method

.method public deleteRemoteMusicAndPlaylists(Landroid/content/Context;Z)Z
    .registers 9
    .parameter "context"
    .parameter "sync"

    .prologue
    .line 406
    const/4 v1, 0x0

    .line 407
    .local v1, somethingChanged:Z
    const/4 v2, 0x0

    .line 408
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 410
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_6
    invoke-static {p1, v0}, Lcom/google/android/music/store/Store;->deleteRemoteMusicAndPlaylists(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    .line 411
    invoke-static {v0}, Lcom/google/android/music/store/Store;->removeOrphanPlayQueueItemsAndGroups(Landroid/database/sqlite/SQLiteDatabase;)I
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_45

    move-result v3

    if-lez v3, :cond_43

    const/4 v3, 0x1

    :goto_11
    or-int/2addr v1, v3

    .line 412
    const/4 v2, 0x1

    .line 414
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 417
    sget-boolean v3, Lcom/google/android/music/store/Store;->LOGV:Z

    if-eqz v3, :cond_32

    const-string v3, "MusicStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteRemoteMusicAndPlaylists somethingChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_32
    if-nez v1, :cond_36

    if-eqz p2, :cond_42

    .line 421
    :cond_36
    iget-object v3, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 424
    :cond_42
    return v1

    .line 411
    :cond_43
    const/4 v3, 0x0

    goto :goto_11

    .line 414
    :catchall_45
    move-exception v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public endRead(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->unlock()V

    .line 234
    return-void
.end method

.method public endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 4
    .parameter "db"
    .parameter "success"

    .prologue
    .line 267
    if-eqz p2, :cond_5

    .line 268
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 270
    :cond_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_c

    .line 272
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->unlock()V

    .line 274
    return-void

    .line 272
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
    .line 915
    const/4 v11, 0x0

    .line 916
    .local v11, success:Z
    const/4 v10, 0x0

    .line 917
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

    .line 919
    :try_start_15
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 921
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_27

    .line 922
    const/4 v11, 0x1

    .line 924
    if-nez v11, :cond_23

    .line 925
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 926
    const/4 v10, 0x0

    .line 928
    :cond_23
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 931
    return-object v10

    .line 924
    :catchall_27
    move-exception v1

    if-nez v11, :cond_2e

    .line 925
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 926
    const/4 v10, 0x0

    .line 928
    :cond_2e
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 3
    .parameter "query"

    .prologue
    .line 905
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
    .line 882
    const/4 v2, 0x0

    .line 883
    .local v2, success:Z
    const/4 v0, 0x0

    .line 884
    .local v0, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 886
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_6
    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 887
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_18

    .line 888
    const/4 v2, 0x1

    .line 890
    if-nez v2, :cond_14

    .line 891
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 892
    const/4 v0, 0x0

    .line 894
    :cond_14
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 897
    return-object v0

    .line 890
    :catchall_18
    move-exception v3

    if-nez v2, :cond_1f

    .line 891
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 892
    const/4 v0, 0x0

    .line 894
    :cond_1f
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
.end method

.method public fixLocalPathSize(Ljava/util/Map;)V
    .registers 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1430
    .line 1431
    iget-object v0, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v5

    .line 1432
    const/4 v1, 0x0

    .line 1434
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_95

    .line 1435
    const-string v0, "MusicStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fixing cached file sizes for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " files."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    const/4 v6, 0x0

    .line 1438
    :try_start_30
    invoke-virtual {v5}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_96

    move-result-object v2

    .line 1439
    const-wide/16 v0, 0x0

    .line 1440
    :try_start_36
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v3, v0

    :goto_3f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1441
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1442
    const-string v9, "LocalCopySize"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v8, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1443
    const-string v1, "MUSIC"

    const-string v9, "Id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    invoke-virtual {v2, v1, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1444
    const-wide/16 v0, 0x1

    add-long/2addr v0, v3

    const-wide/16 v3, 0xfa

    cmp-long v3, v0, v3

    if-ltz v3, :cond_86

    .line 1445
    const-wide/16 v0, 0x0

    .line 1446
    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z
    :try_end_86
    .catchall {:try_start_36 .. :try_end_86} :catchall_a4

    :cond_86
    move-wide v3, v0

    .line 1448
    goto :goto_3f

    .line 1449
    :cond_88
    const/4 v0, 0x1

    .line 1451
    if-eqz v2, :cond_95

    .line 1452
    invoke-virtual {v5, v2, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1454
    const-string v0, "MusicStore"

    const-string v1, "Successfully fixed the cached file sizes"

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    :cond_95
    return-void

    .line 1451
    :catchall_96
    move-exception v0

    :goto_97
    if-eqz v1, :cond_a3

    .line 1452
    invoke-virtual {v5, v1, v6}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1454
    const-string v1, "MusicStore"

    const-string v2, "Successfully fixed the cached file sizes"

    invoke-static {v1, v2}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a3
    throw v0

    .line 1451
    :catchall_a4
    move-exception v0

    move-object v1, v2

    goto :goto_97
.end method

.method public getAlbumIdsAndAlbumKeepOnIdsForArtist(J)Landroid/database/Cursor;
    .registers 15
    .parameter "artistId"

    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 805
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_4
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 809
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

    .line 815
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_30

    .line 816
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_34

    .line 820
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
    .line 1735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1736
    if-eqz p1, :cond_30

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1737
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1738
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 1741
    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1743
    :cond_30
    const-string v0, "MUSIC.AlbumId"

    .line 1744
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

    .line 1758
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 1744
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

    .line 1790
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

    .line 1799
    if-eqz v1, :cond_30

    :try_start_21
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1800
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_34

    move-result-object v6

    .line 1803
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1805
    :goto_2f
    return-object v6

    .line 1803
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
    .line 832
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 834
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_4
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 835
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

    .line 843
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_1c

    .line 844
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_20

    .line 848
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

.method public getArtwork(J)Landroid/util/Pair;
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1681
    .line 1682
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1684
    :try_start_5
    const-string v1, "ARTWORK"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "LocalLocation"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "LocalLocationStorageType"

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
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_50

    move-result-object v2

    .line 1690
    :try_start_27
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1691
    new-instance v1, Landroid/util/Pair;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_40
    .catchall {:try_start_27 .. :try_end_40} :catchall_58

    .line 1696
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1697
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, v1

    :goto_47
    return-object v0

    .line 1696
    :cond_48
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1697
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, v8

    goto :goto_47

    .line 1696
    :catchall_50
    move-exception v1

    :goto_51
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1697
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    .line 1696
    :catchall_58
    move-exception v1

    move-object v8, v2

    goto :goto_51
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDeletableFiles(I)Landroid/database/Cursor;
    .registers 12
    .parameter "storageType"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1010
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1011
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v9, "LocalCopyPath IS NOT NULL  AND LocalCopyStorageType =? AND Id NOT IN (SELECT MusicId FROM SHOULDKEEPON)"

    .line 1017
    .local v9, selection:Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    .line 1021
    .local v4, selectionArgs:[Ljava/lang/String;
    :try_start_10
    const-string v1, "MUSIC"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "Id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "LocalCopyPath"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "LocalCopyStorageType"

    aput-object v5, v2, v3

    const-string v3, "LocalCopyPath IS NOT NULL  AND LocalCopyStorageType =? AND Id NOT IN (SELECT MusicId FROM SHOULDKEEPON)"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_31

    move-result-object v8

    .line 1027
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v8

    .end local v8           #c:Landroid/database/Cursor;
    :catchall_31
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
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
    .line 672
    .local p3, doNotIncludeIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 673
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "SHOULDKEEPON JOIN MUSIC ON (SHOULDKEEPON.MusicId = MUSIC.Id)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 676
    sget-object v2, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 678
    const/4 v12, 0x0

    .line 679
    .local v12, excludeIds:Ljava/lang/String;
    if-eqz p3, :cond_59

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_59

    .line 680
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 681
    .local v10, currentMusicIds:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 682
    .local v11, currentMusicIdsCSV:Ljava/lang/StringBuilder;
    :goto_21
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 683
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 686
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

    .line 690
    .end local v10           #currentMusicIds:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v11           #currentMusicIdsCSV:Ljava/lang/StringBuilder;
    :cond_59
    const-string v3, ""

    .line 691
    .local v3, where:Ljava/lang/String;
    if-nez p4, :cond_5f

    .line 692
    const-string v3, "LocalCopyPath IS NULL OR LocalCopyType <> 200"

    .line 696
    :cond_5f
    if-eqz v12, :cond_97

    .line 697
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7a

    .line 698
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 700
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

    .line 702
    :cond_97
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9e

    .line 703
    const/4 v3, 0x0

    .line 706
    :cond_9e
    const/4 v9, 0x0

    .line 707
    .local v9, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 709
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

    .line 720
    if-eqz v9, :cond_b4

    .line 721
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_b4
    .catchall {:try_start_a4 .. :try_end_b4} :catchall_b8

    .line 726
    :cond_b4
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v9

    :catchall_b8
    move-exception v2

    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
.end method

.method public getLeastRecentlyUsedCacheFiles(I)Landroid/database/Cursor;
    .registers 13
    .parameter "storageType"

    .prologue
    const/4 v10, 0x0

    .line 1193
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1196
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_5
    const-string v1, "MUSIC"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "LocalCopyPath"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "LocalCopyStorageType"

    aput-object v4, v2, v3

    const-string v3, "LocalCopyType=? AND LocalCopyStorageType=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "LastPlayDate"

    const-string v8, "10"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1205
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_41

    .line 1206
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_46

    .line 1210
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1212
    .end local v9           #c:Landroid/database/Cursor;
    :goto_40
    return-object v9

    .line 1210
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_41
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v9, v10

    .line 1212
    goto :goto_40

    .line 1210
    .end local v9           #c:Landroid/database/Cursor;
    :catchall_46
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

    .line 3220
    .line 3222
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3228
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

    .line 3235
    if-eqz v3, :cond_7d

    :try_start_2f
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 3236
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_7a

    move-result-wide v1

    .line 3239
    :goto_3a
    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 3240
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3243
    cmp-long v0, v1, v8

    if-nez v0, :cond_51

    .line 3246
    if-eqz p3, :cond_5b

    .line 3248
    iget-object v0, p0, Lcom/google/android/music/store/Store;->mMediaStoreImporter:Lcom/google/android/music/store/MediaStoreImporter;

    iget-object v1, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MediaStoreImporter;->doImport(Landroid/content/Context;)Z

    .line 3249
    invoke-virtual {p0, p1, p2, v11}, Lcom/google/android/music/store/Store;->getMusicIdForSystemMediaStoreId(JZ)J

    move-result-wide v1

    .line 3256
    :cond_51
    return-wide v1

    .line 3239
    :catchall_52
    move-exception v1

    move-object v2, v10

    :goto_54
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 3240
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    .line 3251
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

    .line 3239
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
    .line 666
    .local p3, doNotIncludeIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/music/store/Store;->getKeepOn(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getPlayQueueLastGroupInfo()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2069
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/music/store/Filters;->getMusicFilterIndex(Landroid/content/Context;)I

    move-result v1

    .line 2070
    .local v1, filterIndex:I
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2072
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_c
    invoke-static {}, Lcom/google/android/music/store/PlayQueue;->getInstance()Lcom/google/android/music/store/PlayQueue;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/music/store/PlayQueue;->getLastGroupInfo(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/util/Pair;
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_18

    move-result-object v2

    .line 2074
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v2

    :catchall_18
    move-exception v2

    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
.end method

.method public getPlayQueuePlaylist()Lcom/google/android/music/store/PlayList;
    .registers 7

    .prologue
    .line 1854
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1856
    :try_start_4
    invoke-static {}, Lcom/google/android/music/store/PlayQueue;->getInstance()Lcom/google/android/music/store/PlayQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/store/PlayQueue;->getListId()J

    move-result-wide v2

    .line 1857
    const/4 v0, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/music/store/PlayList;->readPlayList(Landroid/database/sqlite/SQLiteDatabase;JLcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;

    move-result-object v0

    .line 1858
    if-nez v0, :cond_31

    .line 1859
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PlayQueue playlist is not found. Id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_2c

    .line 1863
    :catchall_2c
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :cond_31
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method

.method public getPlayQueuePlaylistId()J
    .registers 4

    .prologue
    .line 1874
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1876
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_4
    invoke-static {}, Lcom/google/android/music/store/PlayQueue;->getInstance()Lcom/google/android/music/store/PlayQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/store/PlayQueue;->getListId()J
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    move-result-wide v1

    .line 1878
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return-wide v1

    :catchall_10
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
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
    .line 529
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 531
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_4
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/Store;->getSongId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v3

    .line 532
    .local v3, songId:J
    invoke-static {v0, v3, v4}, Lcom/google/android/music/store/Store;->getPreferredMusicIdForSongId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v1

    .line 533
    .local v1, newMusicId:J
    sget-boolean v5, Lcom/google/android/music/store/Store;->LOGV:Z

    if-eqz v5, :cond_36

    cmp-long v5, v1, p1

    if-eqz v5, :cond_36

    .line 534
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

    invoke-static {v5, v6}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_3a

    .line 538
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

.method public getRating(J)I
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 3309
    .line 3310
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3312
    :try_start_5
    const-string v1, "MUSIC"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Rating"

    aput-object v4, v2, v3

    const-string v3, "MUSIC.Id=?"

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
    .catchall {:try_start_5 .. :try_end_21} :catchall_5d

    move-result-object v2

    .line 3315
    if-eqz v2, :cond_36

    :try_start_24
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 3316
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_55

    move-result v1

    .line 3322
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 3323
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return v1

    .line 3318
    :cond_36
    :try_start_36
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Song with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was not found in the store."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_55
    .catchall {:try_start_36 .. :try_end_55} :catchall_55

    .line 3322
    :catchall_55
    move-exception v1

    :goto_56
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 3323
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    .line 3322
    :catchall_5d
    move-exception v1

    move-object v2, v8

    goto :goto_56
.end method

.method public getRecentsJoinedWithArtwork([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter

    .prologue
    .line 1810
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1811
    const-string v1, "RECENT LEFT JOIN MUSIC ON (RecentAlbumId=MUSIC.AlbumId)  LEFT JOIN LISTS ON (RecentListId=LISTS.Id)  LEFT JOIN ARTWORK ON (RECENT.RecentAlbumId = ARTWORK.AlbumId)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1816
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1818
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_10
    const-string v5, "RecentId"

    const/4 v6, 0x0

    const-string v7, "ItemDate DESC"

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1e

    move-result-object v0

    .line 1821
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0

    :catchall_1e
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method

.method public getRemoteArtLocationForAlbum(J)Ljava/lang/String;
    .registers 13
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1768
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

    .line 1776
    if-eqz v1, :cond_54

    :try_start_45
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1777
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_58

    move-result-object v6

    .line 1780
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1782
    :goto_53
    return-object v6

    .line 1780
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
    .line 163
    iget-object v0, p0, Lcom/google/android/music/store/Store;->mRingtoneManager:Lcom/google/android/music/store/MusicRingtoneManager;

    return-object v0
.end method

.method public getSizeOfUndownloadedKeepOnFiles()J
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1032
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Size"

    aput-object v4, v3, v5

    invoke-virtual {p0, v6, v3, v6}, Lcom/google/android/music/store/Store;->getNeedToKeepOn(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;)Landroid/database/Cursor;

    move-result-object v0

    .line 1033
    .local v0, c:Landroid/database/Cursor;
    const-wide/16 v1, 0x0

    .line 1035
    .local v1, totalSize:J
    :goto_f
    :try_start_f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1036
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_20

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_f

    .line 1040
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

    .line 1049
    const-string v2, "MUSIC"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "Size"

    aput-object v0, v3, v1

    const-string v0, "LocalCopyPath"

    aput-object v0, v3, v5

    const/4 v0, 0x2

    const-string v4, "LocalCopyStorageType"

    aput-object v4, v3, v0

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

    .line 1058
    .local v10, c:Landroid/database/Cursor;
    :try_start_27
    invoke-direct {p0, v10}, Lcom/google/android/music/store/Store;->getTotalNewKeeponSize(Landroid/database/Cursor;)J
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2f

    move-result-wide v0

    .line 1060
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    return-wide v0

    :catchall_2f
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

    .line 1069
    const-string v2, "LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId) "

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "Size"

    aput-object v0, v3, v1

    const-string v0, "LocalCopyPath"

    aput-object v0, v3, v5

    const/4 v0, 0x2

    const-string v4, "LocalCopyStorageType"

    aput-object v4, v3, v0

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

    .line 1077
    .local v10, c:Landroid/database/Cursor;
    :try_start_28
    invoke-direct {p0, v10}, Lcom/google/android/music/store/Store;->getTotalNewKeeponSize(Landroid/database/Cursor;)J
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_30

    move-result-wide v0

    .line 1079
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    return-wide v0

    :catchall_30
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
    .line 324
    const/4 v10, 0x0

    .line 325
    .local v10, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 327
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

    .line 342
    if-eqz v10, :cond_49

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 343
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, p3, v1

    .line 344
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p4, v1
    :try_end_42
    .catchall {:try_start_6 .. :try_end_42} :catchall_62

    .line 351
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 352
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 354
    return-void

    .line 347
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

    .line 351
    :catchall_62
    move-exception v1

    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 352
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public getTotalCachedSize(I)J
    .registers 13
    .parameter "type"

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 858
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 860
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

    .line 866
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 867
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_3f

    move-result-wide v1

    .line 872
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 873
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_35
    return-wide v1

    .line 869
    :cond_36
    const-wide/16 v1, 0x0

    .line 872
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 873
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_35

    .line 872
    :catchall_3f
    move-exception v1

    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 873
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public importMediaStore(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 3554
    iget-object v0, p0, Lcom/google/android/music/store/Store;->mMediaStoreImporter:Lcom/google/android/music/store/MediaStoreImporter;

    invoke-virtual {v0, p1}, Lcom/google/android/music/store/MediaStoreImporter;->doImport(Landroid/content/Context;)Z

    .line 3555
    return-void
.end method

.method public isAlbumSelectedAsKeepOn(JZ)Z
    .registers 15
    .parameter "albumId"
    .parameter "useArtistKeepOn"

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 754
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 756
    .local v10, c:Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_6
    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 758
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

    .line 760
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_5f

    move-result v1

    if-eqz v1, :cond_32

    .line 761
    const/4 v1, 0x1

    .line 775
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 776
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_31
    return v1

    .line 763
    :cond_32
    :try_start_32
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_5f

    .line 765
    if-nez p3, :cond_3f

    .line 766
    const/4 v1, 0x0

    .line 775
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 776
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_31

    .line 769
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

    .line 773
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_57
    .catchall {:try_start_40 .. :try_end_57} :catchall_5f

    move-result v1

    .line 775
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 776
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_31

    .line 775
    .end local v5           #strAlbumIdArgs:[Ljava/lang/String;
    :catchall_5f
    move-exception v1

    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 776
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public isArtistSelectedAsKeepOn(J)Z
    .registers 14
    .parameter "artistId"

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 733
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 735
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

    .line 738
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_2f

    move-result v1

    .line 740
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 741
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return v1

    .line 740
    :catchall_2f
    move-exception v1

    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 741
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public isPlaylistSelectedAsKeepOn(J)Z
    .registers 14
    .parameter "playlistId"

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 782
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 784
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

    .line 787
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_2f

    move-result v1

    .line 789
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 790
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return v1

    .line 789
    :catchall_2f
    move-exception v1

    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 790
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public markSongPlayed(J)V
    .registers 17
    .parameter "xId"

    .prologue
    .line 1166
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1167
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 1168
    .local v11, success:Z
    const/4 v8, 0x0

    .line 1170
    .local v8, c:Landroid/database/Cursor;
    :try_start_6
    const-string v13, "Id=?"

    .line 1171
    .local v13, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 1172
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

    .line 1174
    if-eqz v8, :cond_5c

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1175
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1176
    .local v9, playCount:J
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1177
    .local v12, values:Landroid/content/ContentValues;
    const-string v1, "PlayCount"

    const-wide/16 v2, 0x1

    add-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1178
    const-string v1, "LastPlayDate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1179
    const-string v1, "MUSIC"

    const-string v2, "Id=?"

    invoke-virtual {v0, v1, v12, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_6 .. :try_end_57} :catchall_65

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_63

    const/4 v11, 0x1

    .line 1182
    .end local v9           #playCount:J
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_5c
    :goto_5c
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1183
    invoke-virtual {p0, v0, v11}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1185
    return-void

    .line 1179
    .restart local v9       #playCount:J
    .restart local v12       #values:Landroid/content/ContentValues;
    :cond_63
    const/4 v11, 0x0

    goto :goto_5c

    .line 1182
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v9           #playCount:J
    .end local v12           #values:Landroid/content/ContentValues;
    .end local v13           #where:Ljava/lang/String;
    :catchall_65
    move-exception v1

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1183
    invoke-virtual {p0, v0, v11}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v1
.end method

.method public movePlaylistItem(JJJ)V
    .registers 26
    .parameter "playlistId"
    .parameter "itemToMove"
    .parameter "desiredPreviousItem"

    .prologue
    .line 3174
    const/16 v18, 0x0

    .line 3175
    .local v18, success:Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 3177
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_6
    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Lcom/google/android/music/store/Store;->preparePlaylistForModification(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v8

    .line 3178
    .local v8, sync:Z
    const-wide/16 v3, 0x0

    cmp-long v3, p5, v3

    if-nez v3, :cond_23

    .line 3179
    const/4 v7, 0x1

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    invoke-static/range {v2 .. v8}, Lcom/google/android/music/store/PlayList;->moveItemToTop(Landroid/database/sqlite/SQLiteDatabase;JJZZ)Z
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_33

    move-result v18

    .line 3185
    :goto_1b
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 3187
    return-void

    .line 3181
    :cond_23
    const/16 v16, 0x1

    move-object v9, v2

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    move/from16 v17, v8

    :try_start_2e
    invoke-static/range {v9 .. v17}, Lcom/google/android/music/store/PlayList;->moveItem(Landroid/database/sqlite/SQLiteDatabase;JJJZZ)Z
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_33

    move-result v18

    goto :goto_1b

    .line 3185
    .end local v8           #sync:Z
    :catchall_33
    move-exception v3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public removeFileLocation(J)V
    .registers 12
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1556
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1557
    const-string v1, "LocalCopyPath"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1558
    const-string v1, "LocalCopyType"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1559
    const-string v1, "LocalCopyStorageType"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1560
    const-string v1, "LocalCopySize"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1561
    const-string v1, "com.google.android.music.pin"

    invoke-static {v1}, Lcom/google/android/music/log/Log;->getLogFile(Ljava/lang/String;)Lcom/google/android/music/log/LogFile;

    move-result-object v1

    .line 1562
    if-eqz v1, :cond_43

    .line 1563
    const-string v2, "MusicStore"

    const-string v3, "removeFileLocation: %d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/log/LogFile;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1569
    :try_start_47
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

    if-eq v0, v8, :cond_79

    .line 1571
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
    :try_end_74
    .catchall {:try_start_47 .. :try_end_74} :catchall_74

    .line 1575
    :catchall_74
    move-exception v0

    invoke-virtual {p0, v1, v7}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v0

    :cond_79
    invoke-virtual {p0, v1, v8}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1577
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

    .line 2972
    invoke-static {p2, p3}, Lcom/google/android/music/store/Store;->throwIfPlayQueue(J)V

    .line 2977
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2979
    const/4 v3, 0x0

    :try_start_b
    invoke-static {v2, p2, p3, v3}, Lcom/google/android/music/store/PlayList;->readPlayList(Landroid/database/sqlite/SQLiteDatabase;JLcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;

    move-result-object v3

    .line 2980
    if-nez v3, :cond_1c

    .line 2981
    const-string v0, "MusicStore"

    const-string v3, "Requested playlist is not found"

    invoke-static {v0, v3}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_4c

    .line 2988
    invoke-virtual {p0, v2, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 3001
    :goto_1b
    return v1

    .line 2984
    :cond_1c
    :try_start_1c
    invoke-static {v2, p2, p3, p4}, Lcom/google/android/music/store/PlayList;->rename(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Z
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_4c

    move-result v4

    .line 2988
    invoke-virtual {p0, v2, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2991
    invoke-virtual {v3}, Lcom/google/android/music/store/PlayList;->getMediaStoreId()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_48

    .line 2994
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 2995
    const-string v5, "name"

    invoke-virtual {v2, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2996
    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/google/android/music/store/PlayList;->getMediaStoreId()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2998
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v2, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3001
    :cond_48
    if-eqz v4, :cond_51

    :goto_4a
    move v1, v0

    goto :goto_1b

    .line 2988
    :catchall_4c
    move-exception v0

    invoke-virtual {p0, v2, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v0

    :cond_51
    move v0, v1

    .line 3001
    goto :goto_4a
.end method

.method public requiresDownloadManager([J)[J
    .registers 15
    .parameter "ids"

    .prologue
    const/4 v12, 0x0

    .line 613
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 614
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "MUSIC"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 615
    const-string v2, "SourceAccount != 0"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 617
    new-instance v10, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 618
    .local v10, csv:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_19
    array-length v2, p1

    if-ge v11, v2, :cond_2e

    .line 619
    aget-wide v2, p1, v11

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 620
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v11, v2, :cond_2b

    .line 621
    const-string v2, ","

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    :cond_2b
    add-int/lit8 v11, v11, 0x1

    goto :goto_19

    .line 624
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

    .line 626
    const/4 v8, 0x0

    .line 627
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 629
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

    .line 632
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_67
    .catchall {:try_start_54 .. :try_end_67} :catchall_8b

    move-result v9

    .line 633
    .local v9, count:I
    if-nez v9, :cond_71

    .line 644
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 645
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_70
    return-object v12

    .line 636
    :cond_71
    :try_start_71
    new-array v12, v9, [J

    .line 637
    .local v12, ret:[J
    const/4 v11, 0x0

    .line 638
    :goto_74
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_84

    .line 639
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v12, v11
    :try_end_81
    .catchall {:try_start_71 .. :try_end_81} :catchall_8b

    .line 640
    add-int/lit8 v11, v11, 0x1

    goto :goto_74

    .line 644
    :cond_84
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 645
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_70

    .line 644
    .end local v9           #count:I
    .end local v12           #ret:[J
    :catchall_8b
    move-exception v2

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 645
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
.end method

.method public saveArtwork(JLjava/lang/String;I)V
    .registers 12
    .parameter "albumId"
    .parameter "location"
    .parameter "storageType"

    .prologue
    .line 1659
    const/4 v6, 0x0

    .line 1660
    .local v6, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    .line 1662
    :try_start_9
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/store/Store;->saveArtworkLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;I)Z
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_11

    move-result v6

    .line 1664
    invoke-virtual {p0, v1, v6}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1666
    return-void

    .line 1664
    :catchall_11
    move-exception v0

    invoke-virtual {p0, v1, v6}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v0
.end method

.method protected saveArtworkLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;I)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1669
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1670
    const-string v1, "AlbumId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1671
    const-string v1, "LocalLocation"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    const-string v1, "LocalLocationStorageType"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1673
    const-string v1, "ARTWORK"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1674
    const/4 v0, 0x1

    return v0
.end method

.method public shufflePlayQueue(I)V
    .registers 6
    .parameter "startPosition"

    .prologue
    .line 2048
    const/4 v2, 0x0

    .line 2050
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2052
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_5
    invoke-static {}, Lcom/google/android/music/store/PlayQueue;->getInstance()Lcom/google/android/music/store/PlayQueue;

    move-result-object v1

    .line 2053
    .local v1, q:Lcom/google/android/music/store/PlayQueue;
    invoke-virtual {v1, v0, p1}, Lcom/google/android/music/store/PlayQueue;->shuffle(Landroid/database/sqlite/SQLiteDatabase;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    .line 2054
    const/4 v2, 0x1

    .line 2056
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2059
    iget-object v3, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/music/store/PlayQueue;->notifyChange(Landroid/content/ContentResolver;)V

    .line 2060
    return-void

    .line 2056
    .end local v1           #q:Lcom/google/android/music/store/PlayQueue;
    :catchall_1a
    move-exception v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public updateCachedFileLocation(JLjava/lang/String;IJI)V
    .registers 17
    .parameter "musicId"
    .parameter "localPath"
    .parameter "localCopyType"
    .parameter "localCopySize"
    .parameter "localCopyStorageType"

    .prologue
    .line 1115
    const-string v4, "com.google.android.music.pin"

    invoke-static {v4}, Lcom/google/android/music/log/Log;->getLogFile(Ljava/lang/String;)Lcom/google/android/music/log/LogFile;

    move-result-object v1

    .line 1116
    .local v1, logFile:Lcom/google/android/music/log/LogFile;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1117
    .local v3, values:Landroid/content/ContentValues;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a9

    .line 1118
    const-string v4, "LocalCopyPath"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    const/16 v4, 0x64

    if-eq p4, v4, :cond_37

    const/16 v4, 0xc8

    if-eq p4, v4, :cond_37

    .line 1121
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid value for localCopyStatus: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1125
    :cond_37
    const-string v4, "LocalCopyType"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1127
    const-string v4, "LocalCopySize"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1128
    const-string v4, "LocalCopyStorageType"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1129
    if-eqz v1, :cond_73

    .line 1130
    const-string v4, "MusicStore"

    const-string v5, "saveFileLocation: saving reference for id=%d localPath=%s localCopyType=%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    const/4 v7, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/android/music/log/LogFile;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    :cond_73
    :goto_73
    const/4 v2, 0x0

    .line 1149
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1151
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_78
    const-string v4, "MUSIC"

    const-string v5, "Id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_f6

    .line 1155
    const-string v4, "MusicStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to save music location for unknown Music.Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_78 .. :try_end_a5} :catchall_fb

    .line 1161
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1163
    :goto_a8
    return-void

    .line 1135
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #success:Z
    :cond_a9
    const-string v4, "LocalCopyPath"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1136
    const-string v4, "LocalCopyType"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1137
    const-string v4, "LocalCopyType"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1138
    const-string v4, "LocalCopySize"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1139
    if-eqz v1, :cond_73

    .line 1140
    const-string v4, "MusicStore"

    const-string v5, "updateCachedFileLocation: clear database reference for id=%d localPath=%s localCopyType=%d localCopyStorageType=%d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    const/4 v7, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/android/music/log/LogFile;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_73

    .line 1158
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #success:Z
    :cond_f6
    const/4 v2, 0x1

    .line 1161
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_a8

    :catchall_fb
    move-exception v4

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v4
.end method

.method public updateRating(JI)I
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 3269
    invoke-static {p3}, Lcom/google/android/music/store/MusicFile;->throwIfInvalidRating(I)V

    .line 3274
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3277
    :try_start_9
    invoke-static {v1, p1, p2}, Lcom/google/android/music/store/Store;->getSongId(Landroid/database/sqlite/SQLiteDatabase;J)J
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_47
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_c} :catch_42

    move-result-wide v2

    .line 3283
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3287
    new-instance v1, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 3288
    const-string v4, "Rating"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3289
    const-string v4, "_sync_dirty"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3292
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 3294
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

    .line 3299
    invoke-virtual {p0, v4, v9}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 3301
    :goto_41
    return v0

    .line 3278
    :catch_42
    move-exception v2

    .line 3283
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_41

    :catchall_47
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    .line 3299
    :catchall_4c
    move-exception v1

    invoke-virtual {p0, v4, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v1
.end method
