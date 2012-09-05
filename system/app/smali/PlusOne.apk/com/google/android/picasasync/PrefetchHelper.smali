.class Lcom/google/android/picasasync/PrefetchHelper;
.super Ljava/lang/Object;
.source "PrefetchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;,
        Lcom/google/android/picasasync/PrefetchHelper$PrefetchListener;,
        Lcom/google/android/picasasync/PrefetchHelper$CacheStats;,
        Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;
    }
.end annotation


# static fields
.field private static final ALBUM_TABLE_NAME:Ljava/lang/String;

.field private static final PHOTO_TABLE_NAME:Ljava/lang/String;

.field private static final PROJECTION_ID:[Ljava/lang/String;

.field private static final PROJECTION_ID_ALBUM_ID_SCREENNAIL_URL:[Ljava/lang/String;

.field private static final PROJECTION_ID_CACHE_FLAG_STATUS_THUMBNAIL:[Ljava/lang/String;

.field private static final PROJECTION_ID_CONTENT_URL:[Ljava/lang/String;

.field private static final PROJECTION_ID_THUMBNAIL_URL:[Ljava/lang/String;

.field private static final QUERY_CACHE_STATUS_COUNT:Ljava/lang/String;

.field private static final WHERE_CACHE_STATUS_AND_USER_ID:Ljava/lang/String;

.field private static sInstance:Lcom/google/android/picasasync/PrefetchHelper;


# instance fields
.field private mCacheConfigVersion:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCacheDir:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

.field private mUsingInternalCache:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    sget-object v0, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    .line 85
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID:[Ljava/lang/String;

    .line 86
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "content_url"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID_CONTENT_URL:[Ljava/lang/String;

    .line 87
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "cache_flag"

    aput-object v1, v0, v4

    const-string v1, "cache_status"

    aput-object v1, v0, v5

    const-string v1, "thumbnail_url"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID_CACHE_FLAG_STATUS_THUMBNAIL:[Ljava/lang/String;

    .line 322
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album_id"

    aput-object v1, v0, v4

    const-string v1, "screennail_url"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID_ALBUM_ID_SCREENNAIL_URL:[Ljava/lang/String;

    .line 326
    const-string v0, "%s = ? AND %s = ?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "cache_status"

    aput-object v2, v1, v3

    const-string v2, "user_id"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->WHERE_CACHE_STATUS_AND_USER_ID:Ljava/lang/String;

    .line 375
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thumbnail_url"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID_THUMBNAIL_URL:[Ljava/lang/String;

    .line 637
    const-string v0, "SELECT count(*), %s.%s AS status FROM %s, %s WHERE %s.%s = %s.%s AND %s.%s = ? GROUP BY status"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "cache_status"

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "album_id"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "cache_flag"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->QUERY_CACHE_STATUS_COUNT:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/picasasync/PrefetchHelper;->mCacheConfigVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/PrefetchHelper;->mContext:Landroid/content/Context;

    .line 112
    invoke-static {p1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/picasasync/PrefetchHelper;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/picasasync/PrefetchHelper;->mCacheConfigVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private collectKeepSet(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/HashMap;Ljava/lang/Integer;)V
    .registers 15
    .parameter "db"
    .parameter "albumId"
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, keepSet:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 233
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 234
    .local v4, whereArgs:[Ljava/lang/String;
    sget-object v1, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID:[Ljava/lang/String;

    const-string v3, "album_id=?"

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 237
    .local v8, cursor:Landroid/database/Cursor;
    :goto_18
    :try_start_18
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 238
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_2b

    goto :goto_18

    .line 241
    :catchall_2b
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_30
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 243
    return-void
.end method

.method private deleteUnusedAlbumCovers(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Ljava/util/HashSet;)V
    .registers 14
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p2, coverSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/android/picasasync/PrefetchHelper;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, cacheDir:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v8, "picasa_covers"

    invoke-direct {v2, v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .local v2, folder:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 288
    .local v7, names:[Ljava/lang/String;
    if-nez v7, :cond_12

    .line 297
    :cond_11
    return-void

    .line 289
    :cond_12
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_15
    if-ge v3, v5, :cond_11

    aget-object v6, v0, v3

    .line 290
    .local v6, name:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/picasasync/PrefetchHelper;->getKeyFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, key:Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_46

    .line 292
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_46

    .line 293
    const-string v8, "PrefetchHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cannot delete album cover: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_15
.end method

.method private deleteUnusedCacheFiles(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Ljava/util/HashMap;)V
    .registers 16
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p2, keepSet:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/google/android/picasasync/PrefetchHelper;->getCacheDirectory()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, cacheDir:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v9, v1

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move v8, v7

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .local v8, i$:I
    :goto_10
    if-ge v8, v9, :cond_1a

    aget-object v6, v1, v8

    .line 303
    .local v6, folderName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 320
    .end local v6           #folderName:Ljava/lang/String;
    :cond_1a
    return-void

    .line 304
    .restart local v6       #folderName:Ljava/lang/String;
    :cond_1b
    const-string v12, "picasa-"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_27

    .line 302
    .end local v8           #i$:I
    :cond_23
    :goto_23
    add-int/lit8 v7, v8, 0x1

    .restart local v7       #i$:I
    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto :goto_10

    .line 306
    :cond_27
    :try_start_27
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .local v5, folder:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, allFiles:[Ljava/lang/String;
    if-eqz v0, :cond_23

    .line 309
    move-object v2, v0

    .local v2, arr$:[Ljava/lang/String;
    array-length v10, v2

    .local v10, len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    :goto_35
    if-ge v7, v10, :cond_3f

    aget-object v4, v2, v7

    .line 310
    .local v4, filename:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z

    move-result v12

    if-eqz v12, :cond_51

    .line 315
    .end local v4           #filename:Ljava/lang/String;
    :cond_3f
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v12

    array-length v12, v12

    if-nez v12, :cond_23

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_49} :catch_4a

    goto :goto_23

    .line 316
    .end local v0           #allFiles:[Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #folder:Ljava/io/File;
    .end local v7           #i$:I
    .end local v10           #len$:I
    :catch_4a
    move-exception v11

    .line 317
    .local v11, t:Ljava/lang/Throwable;
    const-string v12, "PrefetchHelper"

    invoke-static {v12, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 311
    .end local v11           #t:Ljava/lang/Throwable;
    .restart local v0       #allFiles:[Ljava/lang/String;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #filename:Ljava/lang/String;
    .restart local v5       #folder:Ljava/io/File;
    .restart local v7       #i$:I
    .restart local v10       #len$:I
    :cond_51
    :try_start_51
    invoke-direct {p0, v4, p2}, Lcom/google/android/picasasync/PrefetchHelper;->matchKeepSet(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v12

    if-nez v12, :cond_5f

    .line 312
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_5f} :catch_4a

    .line 309
    :cond_5f
    add-int/lit8 v7, v7, 0x1

    goto :goto_35
.end method

.method private downloadPhoto(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .parameter "context"
    .parameter "url"
    .parameter "filename"

    .prologue
    const/4 v6, 0x0

    .line 549
    const/4 v3, 0x0

    .line 550
    .local v3, os:Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 552
    .local v2, is:Ljava/io/InputStream;
    :try_start_3
    invoke-static {p2}, Lcom/google/android/picasasync/HttpUtils;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 553
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_4f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_c} :catch_3d

    .line 554
    .end local v3           #os:Ljava/io/OutputStream;
    .local v4, os:Ljava/io/OutputStream;
    const/16 v7, 0x1000

    :try_start_e
    new-array v0, v7, [B

    .line 555
    .local v0, buffer:[B
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v2, v0, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 556
    .local v5, rc:I
    :goto_16
    if-lez v5, :cond_34

    .line 557
    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z

    move-result v7

    if-eqz v7, :cond_29

    .line 558
    invoke-static {v2}, Lcom/google/android/picasasync/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_57
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_21} :catch_5a

    .line 570
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 571
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v3, v4

    .end local v0           #buffer:[B
    .end local v4           #os:Ljava/io/OutputStream;
    .end local v5           #rc:I
    .restart local v3       #os:Ljava/io/OutputStream;
    :goto_28
    return v6

    .line 561
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v5       #rc:I
    :cond_29
    const/4 v7, 0x0

    :try_start_2a
    invoke-virtual {v4, v0, v7, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 562
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v2, v0, v7, v8}, Ljava/io/InputStream;->read([BII)I
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_57
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_32} :catch_5a

    move-result v5

    goto :goto_16

    .line 564
    :cond_34
    const/4 v6, 0x1

    .line 570
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 571
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_28

    .line 565
    .end local v0           #buffer:[B
    .end local v5           #rc:I
    :catch_3d
    move-exception v1

    .line 566
    .local v1, e:Ljava/io/IOException;
    :goto_3e
    :try_start_3e
    invoke-static {v2}, Lcom/google/android/picasasync/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V

    .line 567
    const-string v7, "PrefetchHelper"

    const-string v8, "fail to download"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_4f

    .line 570
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 571
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_28

    .line 570
    .end local v1           #e:Ljava/io/IOException;
    :catchall_4f
    move-exception v6

    :goto_50
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 571
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    .line 570
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    :catchall_57
    move-exception v6

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_50

    .line 565
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    :catch_5a
    move-exception v1

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_3e
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/google/android/picasasync/PrefetchHelper;
    .registers 3
    .parameter "context"

    .prologue
    .line 104
    const-class v1, Lcom/google/android/picasasync/PrefetchHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/picasasync/PrefetchHelper;->sInstance:Lcom/google/android/picasasync/PrefetchHelper;

    if-nez v0, :cond_e

    .line 105
    new-instance v0, Lcom/google/android/picasasync/PrefetchHelper;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/PrefetchHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->sInstance:Lcom/google/android/picasasync/PrefetchHelper;

    .line 107
    :cond_e
    sget-object v0, Lcom/google/android/picasasync/PrefetchHelper;->sInstance:Lcom/google/android/picasasync/PrefetchHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 104
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getAlbumCoverCacheFile(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "albumId"
    .parameter "thumbnailUrl"
    .parameter "ext"

    .prologue
    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/android/picasasync/PrefetchHelper;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "picasa_covers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/google/android/picasasync/PrefetchHelper;->getAlbumCoverKey(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAlbumCoverKey(JLjava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "albumId"
    .parameter "thumbnailUrl"

    .prologue
    .line 723
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

.method private getAvailableStorage()J
    .registers 7

    .prologue
    .line 578
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {p0}, Lcom/google/android/picasasync/PrefetchHelper;->getCacheDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 579
    .local v0, stat:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_15

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 582
    .end local v0           #stat:Landroid/os/StatFs;
    :goto_14
    return-wide v2

    .line 580
    :catch_15
    move-exception v1

    .line 581
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "PrefetchHelper"

    const-string v3, "Fail to getAvailableStorage"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 582
    const-wide/16 v2, 0x0

    goto :goto_14
.end method

.method private getCacheDirName(J)Ljava/lang/String;
    .registers 5
    .parameter "albumId"

    .prologue
    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/android/picasasync/PrefetchHelper;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/picasa-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCacheDirectory()Ljava/lang/String;
    .registers 3

    .prologue
    .line 117
    iget-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mCacheDir:Ljava/lang/String;

    if-nez v1, :cond_15

    .line 118
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mUsingInternalCache:Z

    .line 119
    iget-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 120
    .local v0, cacheDir:Ljava/io/File;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mCacheDir:Ljava/lang/String;

    .line 122
    .end local v0           #cacheDir:Ljava/io/File;
    :cond_15
    iget-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mCacheDir:Ljava/lang/String;

    if-nez v1, :cond_28

    .line 123
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mUsingInternalCache:Z

    .line 124
    iget-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mCacheDir:Ljava/lang/String;

    .line 126
    :cond_28
    iget-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mCacheDir:Ljava/lang/String;

    return-object v1
.end method

.method private getCacheFile(JJLjava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "albumId"
    .parameter "photoId"
    .parameter "ext"

    .prologue
    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/android/picasasync/PrefetchHelper;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/picasa-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getKeyFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 280
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 281
    .local v0, index:I
    if-gez v0, :cond_9

    .end local p0
    :goto_8
    return-object p0

    .restart local p0
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method

.method private matchKeepSet(Ljava/lang/String;Ljava/util/HashMap;)Z
    .registers 13
    .parameter "filename"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, keepSet:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 263
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 264
    .local v0, dotPos:I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_c

    move v6, v7

    .line 276
    :goto_b
    return v6

    .line 265
    :cond_c
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, ext:Ljava/lang/String;
    :try_start_14
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 269
    .local v2, id:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-direct {p0, v6, v1}, Lcom/google/android/picasasync/PrefetchHelper;->matchType(Ljava/lang/Integer;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 270
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_2f} :catch_31

    .line 271
    const/4 v6, 0x1

    goto :goto_b

    .line 273
    .end local v2           #id:J
    :catch_31
    move-exception v5

    .line 274
    .local v5, t:Ljava/lang/Throwable;
    const-string v6, "PrefetchHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot parse id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5           #t:Ljava/lang/Throwable;
    :cond_4a
    move v6, v7

    .line 276
    goto :goto_b
.end method

.method private matchType(Ljava/lang/Integer;Ljava/lang/String;)Z
    .registers 5
    .parameter "type"
    .parameter "extension"

    .prologue
    const/4 v0, 0x0

    .line 251
    if-nez p1, :cond_4

    .line 258
    :goto_3
    return v0

    .line 252
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_1a

    goto :goto_3

    .line 254
    :pswitch_c
    const-string v0, ".screen"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 256
    :pswitch_13
    const-string v0, ".full"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 252
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_13
    .end packed-switch
.end method

.method private setCacheStatus(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V
    .registers 12
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, keepSet:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 198
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 200
    :try_start_5
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 201
    .local v3, values:Landroid/content/ContentValues;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    .line 202
    .local v4, whereArgs:[Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 203
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v6, :cond_4f

    move v2, v6

    .line 206
    .local v2, status:I
    :goto_2e
    const-string v5, "cache_status"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 208
    sget-object v5, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v8, "_id=?"

    invoke-virtual {p1, v5, v3, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_4a

    goto :goto_15

    .line 212
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #status:I
    .end local v3           #values:Landroid/content/ContentValues;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :catchall_4a
    move-exception v5

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #values:Landroid/content/ContentValues;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    :cond_4f
    move v2, v7

    .line 203
    goto :goto_2e

    .line 210
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_51
    :try_start_51
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_4a

    .line 212
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 214
    return-void
.end method

.method private syncFullImagesForAlbum(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;J)V
    .registers 22
    .parameter "context"
    .parameter "albumId"

    .prologue
    .line 451
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v4}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 454
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    .line 458
    .local v7, whereArgs:[Ljava/lang/String;
    sget-object v4, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    sget-object v5, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID_CONTENT_URL:[Ljava/lang/String;

    const-string v6, "album_id=? AND cache_status=?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 462
    .local v16, cursor:Landroid/database/Cursor;
    if-nez v16, :cond_2a

    .line 494
    :goto_29
    return-void

    .line 464
    :cond_2a
    :try_start_2a
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_c2

    move-result v4

    if-nez v4, :cond_34

    .line 492
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_29

    .line 467
    :cond_34
    :try_start_34
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/google/android/picasasync/PrefetchHelper;->getCacheDirName(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 468
    .local v17, folder:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_6f

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_6f

    .line 469
    const-string v4, "PrefetchHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot create cache dir: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_34 .. :try_end_6b} :catchall_c2

    .line 492
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_29

    .line 473
    :cond_6f
    const/4 v4, 0x1

    :try_start_70
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/google/android/picasasync/PrefetchHelper;->updateAlbumCacheStatus(Landroid/database/sqlite/SQLiteDatabase;JI)V

    .line 475
    :cond_77
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 476
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->checkCacheConfigVersion()Z

    move-result v4

    if-nez v4, :cond_8d

    .line 477
    const-string v4, "PrefetchHelper"

    const-string v5, "cache config has changed, stop sync"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->stopSync()V

    .line 480
    :cond_8d
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z
    :try_end_90
    .catchall {:try_start_70 .. :try_end_90} :catchall_c2

    move-result v4

    if-eqz v4, :cond_97

    .line 492
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_29

    .line 481
    :cond_97
    const/4 v4, 0x0

    :try_start_98
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 482
    .local v12, photoId:J
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 483
    .local v14, downloadUrl:Ljava/lang/String;
    const-string v15, ".full"

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    invoke-direct/range {v8 .. v15}, Lcom/google/android/picasasync/PrefetchHelper;->syncOnePhoto(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;JJLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_77

    .line 484
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->getDownloadFailCount()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_77

    .line 485
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "too many fail downloads"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_c2
    .catchall {:try_start_98 .. :try_end_c2} :catchall_c2

    .line 492
    .end local v12           #photoId:J
    .end local v14           #downloadUrl:Ljava/lang/String;
    .end local v17           #folder:Ljava/io/File;
    :catchall_c2
    move-exception v4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v4

    .line 490
    .restart local v17       #folder:Ljava/io/File;
    :cond_c7
    const/4 v4, 0x3

    :try_start_c8
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/google/android/picasasync/PrefetchHelper;->updateAlbumCacheStatus(Landroid/database/sqlite/SQLiteDatabase;JI)V
    :try_end_cf
    .catchall {:try_start_c8 .. :try_end_cf} :catchall_c2

    .line 492
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_29
.end method

.method private syncOneAlbumCover(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;JLjava/lang/String;)Z
    .registers 14
    .parameter "context"
    .parameter "albumId"
    .parameter "thumbnailUrl"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 407
    invoke-direct {p0}, Lcom/google/android/picasasync/PrefetchHelper;->getAvailableStorage()J

    move-result-wide v0

    .line 408
    .local v0, availableStorage:J
    iget-boolean v7, p0, Lcom/google/android/picasasync/PrefetchHelper;->mUsingInternalCache:Z

    if-eqz v7, :cond_30

    const-wide/32 v7, 0x3c00000

    cmp-long v7, v0, v7

    if-gez v7, :cond_37

    .line 411
    :cond_11
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "space not enough: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", stop sync"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 408
    :cond_30
    const-wide/32 v7, 0x40000000

    cmp-long v7, v0, v7

    if-ltz v7, :cond_11

    .line 415
    :cond_37
    const-string v7, ".download"

    invoke-direct {p0, p2, p3, p4, v7}, Lcom/google/android/picasasync/PrefetchHelper;->getAlbumCoverCacheFile(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 416
    .local v4, tempFilepath:Ljava/lang/String;
    const/16 v7, 0xc8

    invoke-static {p4, v7, v6}, Lcom/google/android/picasasync/PicasaApi;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, downloadUrl:Ljava/lang/String;
    invoke-direct {p0, p1, v3, v4}, Lcom/google/android/picasasync/PrefetchHelper;->downloadPhoto(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_52

    .line 419
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 429
    :goto_51
    return v5

    .line 423
    :cond_52
    const-string v7, ".thumb"

    invoke-direct {p0, p2, p3, p4, v7}, Lcom/google/android/picasasync/PrefetchHelper;->getAlbumCoverCacheFile(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, cacheFilepath:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_89

    .line 425
    const-string v6, "PrefetchHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot rename file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_51

    :cond_89
    move v5, v6

    .line 429
    goto :goto_51
.end method

.method private syncOnePhoto(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;JJLjava/lang/String;Ljava/lang/String;)Z
    .registers 21
    .parameter "context"
    .parameter "albumId"
    .parameter "photoId"
    .parameter "url"
    .parameter "extension"

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/google/android/picasasync/PrefetchHelper;->getAvailableStorage()J

    move-result-wide v8

    .line 499
    .local v8, availableStorage:J
    iget-boolean v2, p0, Lcom/google/android/picasasync/PrefetchHelper;->mUsingInternalCache:Z

    if-eqz v2, :cond_2e

    const-wide/32 v2, 0x3c00000

    cmp-long v2, v8, v2

    if-gez v2, :cond_35

    .line 502
    :cond_f
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "space not enough: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", stop sync"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 499
    :cond_2e
    const-wide/32 v2, 0x40000000

    cmp-long v2, v8, v2

    if-ltz v2, :cond_f

    .line 506
    :cond_35
    const-string v7, ".download"

    move-object v2, p0

    move-wide v3, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/android/picasasync/PrefetchHelper;->getCacheFile(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 507
    .local v11, tempFilepath:Ljava/lang/String;
    move-object/from16 v0, p6

    invoke-direct {p0, p1, v0, v11}, Lcom/google/android/picasasync/PrefetchHelper;->downloadPhoto(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 508
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 509
    const/4 v2, 0x0

    move-wide/from16 v0, p4

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->onDownloadFinish(JZ)V

    .line 510
    const/4 v2, 0x0

    .line 530
    :goto_56
    return v2

    :cond_57
    move-object v2, p0

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p7

    .line 513
    invoke-direct/range {v2 .. v7}, Lcom/google/android/picasasync/PrefetchHelper;->getCacheFile(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 514
    .local v10, cacheFilepath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_99

    .line 515
    const-string v2, "PrefetchHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot rename file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 517
    const/4 v2, 0x0

    move-wide/from16 v0, p4

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->onDownloadFinish(JZ)V

    .line 518
    const/4 v2, 0x0

    goto :goto_56

    .line 520
    :cond_99
    const/4 v2, 0x1

    move-wide/from16 v0, p4

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->onDownloadFinish(JZ)V

    .line 526
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 527
    .local v12, values:Landroid/content/ContentValues;
    const-string v2, "cache_status"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 528
    iget-object v2, p0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v12, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 530
    const/4 v2, 0x1

    goto :goto_56
.end method

.method private updateAlbumCacheStatus(Landroid/database/sqlite/SQLiteDatabase;JI)V
    .registers 9
    .parameter "db"
    .parameter "albumId"
    .parameter "status"

    .prologue
    .line 218
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 219
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "cache_status"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 221
    .local v1, whereArgs:[Ljava/lang/String;
    sget-object v2, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id=?"

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0}, Lcom/google/android/picasasync/PrefetchHelper;->notifyAlbumsChange()V

    .line 223
    return-void
.end method


# virtual methods
.method public cleanCache(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;)V
    .registers 20
    .parameter "context"

    .prologue
    .line 131
    const-string v3, "PrefetchHelper.cleanCache"

    invoke-static {v3}, Lcom/google/android/picasasync/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v15

    .line 134
    .local v15, statsId:I
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 137
    .local v14, keepSet:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 139
    .local v10, albumSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 142
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 143
    .local v17, values:Landroid/content/ContentValues;
    const-string v3, "cache_status"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    sget-object v3, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v4, "cache_status <> 0"

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 148
    sget-object v3, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v4, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID_CACHE_FLAG_STATUS_THUMBNAIL:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 151
    .local v13, cursor:Landroid/database/Cursor;
    :cond_40
    :goto_40
    :try_start_40
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_89

    move-result v3

    if-eqz v3, :cond_50

    .line 180
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 193
    :goto_4f
    return-void

    .line 154
    :cond_50
    const/4 v3, 0x0

    :try_start_51
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 155
    .local v5, albumId:J
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 156
    .local v11, cacheFlag:I
    const/4 v3, 0x2

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 157
    .local v12, cacheStatus:I
    const/4 v3, 0x3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 158
    .local v16, thumbnailUrl:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Lcom/google/android/picasasync/PrefetchHelper;->getAlbumCoverKey(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 160
    const/4 v3, 0x2

    if-ne v11, v3, :cond_8e

    .line 161
    const/4 v3, 0x3

    if-eq v12, v3, :cond_7c

    const/4 v3, 0x1

    if-eq v12, v3, :cond_7c

    .line 163
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6, v3}, Lcom/google/android/picasasync/PrefetchHelper;->updateAlbumCacheStatus(Landroid/database/sqlite/SQLiteDatabase;JI)V

    .line 165
    :cond_7c
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v7, v14

    invoke-direct/range {v3 .. v8}, Lcom/google/android/picasasync/PrefetchHelper;->collectKeepSet(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/HashMap;Ljava/lang/Integer;)V
    :try_end_88
    .catchall {:try_start_51 .. :try_end_88} :catchall_89

    goto :goto_40

    .line 180
    .end local v5           #albumId:J
    .end local v11           #cacheFlag:I
    .end local v12           #cacheStatus:I
    .end local v16           #thumbnailUrl:Ljava/lang/String;
    :catchall_89
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 166
    .restart local v5       #albumId:J
    .restart local v11       #cacheFlag:I
    .restart local v12       #cacheStatus:I
    .restart local v16       #thumbnailUrl:Ljava/lang/String;
    :cond_8e
    const/4 v3, 0x1

    if-ne v11, v3, :cond_a6

    .line 168
    if-eqz v12, :cond_99

    .line 169
    const/4 v3, 0x0

    :try_start_94
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6, v3}, Lcom/google/android/picasasync/PrefetchHelper;->updateAlbumCacheStatus(Landroid/database/sqlite/SQLiteDatabase;JI)V

    .line 171
    :cond_99
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v7, v14

    invoke-direct/range {v3 .. v8}, Lcom/google/android/picasasync/PrefetchHelper;->collectKeepSet(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/HashMap;Ljava/lang/Integer;)V

    goto :goto_40

    .line 172
    :cond_a6
    if-nez v11, :cond_40

    .line 174
    if-eqz v12, :cond_40

    .line 175
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6, v3}, Lcom/google/android/picasasync/PrefetchHelper;->updateAlbumCacheStatus(Landroid/database/sqlite/SQLiteDatabase;JI)V
    :try_end_b0
    .catchall {:try_start_94 .. :try_end_b0} :catchall_89

    goto :goto_40

    .line 180
    .end local v5           #albumId:J
    .end local v11           #cacheFlag:I
    .end local v12           #cacheStatus:I
    .end local v16           #thumbnailUrl:Ljava/lang/String;
    :cond_b1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 183
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/google/android/picasasync/PrefetchHelper;->deleteUnusedAlbumCovers(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Ljava/util/HashSet;)V

    .line 187
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/google/android/picasasync/PrefetchHelper;->deleteUnusedCacheFiles(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Ljava/util/HashMap;)V

    .line 190
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/google/android/picasasync/PrefetchHelper;->setCacheStatus(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V

    .line 192
    invoke-static {v15}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    goto :goto_4f
.end method

.method public createPrefetchContext(Landroid/content/SyncResult;Ljava/lang/Thread;)Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;
    .registers 4
    .parameter "syncResult"
    .parameter "thread"

    .prologue
    .line 668
    new-instance v0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;-><init>(Lcom/google/android/picasasync/PrefetchHelper;Landroid/content/SyncResult;Ljava/lang/Thread;)V

    return-object v0
.end method

.method public getAlbumCover(JLjava/lang/String;)Ljava/io/File;
    .registers 6
    .parameter "albumId"
    .parameter "thumbnailUrl"

    .prologue
    .line 731
    new-instance v0, Ljava/io/File;

    const-string v1, ".thumb"

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/android/picasasync/PrefetchHelper;->getAlbumCoverCacheFile(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 732
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_12

    .end local v0           #file:Ljava/io/File;
    :goto_11
    return-object v0

    .restart local v0       #file:Ljava/io/File;
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getCacheStatistics(I)Lcom/google/android/picasasync/PrefetchHelper$CacheStats;
    .registers 11
    .parameter "flag"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 647
    iget-object v6, p0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v6}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 648
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-array v5, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 649
    .local v5, whereArgs:[Ljava/lang/String;
    sget-object v6, Lcom/google/android/picasasync/PrefetchHelper;->QUERY_CACHE_STATUS_COUNT:Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 650
    .local v1, cursor:Landroid/database/Cursor;
    new-instance v3, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;

    invoke-direct {v3}, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;-><init>()V

    .line 651
    .local v3, stats:Lcom/google/android/picasasync/PrefetchHelper$CacheStats;
    if-nez v1, :cond_1e

    .line 663
    :goto_1d
    return-object v3

    .line 653
    :cond_1e
    :goto_1e
    :try_start_1e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 654
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 655
    .local v0, count:I
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 656
    .local v4, status:I
    if-eqz v4, :cond_35

    .line 657
    iget v6, v3, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->pendingCount:I

    add-int/2addr v6, v0

    iput v6, v3, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->pendingCount:I

    .line 659
    :cond_35
    iget v6, v3, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->totalCount:I

    add-int/2addr v6, v0

    iput v6, v3, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->totalCount:I
    :try_end_3a
    .catchall {:try_start_1e .. :try_end_3a} :catchall_3b

    goto :goto_1e

    .line 663
    .end local v0           #count:I
    .end local v4           #status:I
    :catchall_3b
    move-exception v6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6

    :cond_40
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1d
.end method

.method public getPrefetchEntry(JJ)Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;
    .registers 12
    .parameter "albumId"
    .parameter "photoId"

    .prologue
    .line 597
    const-string v5, ".full"

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/picasasync/PrefetchHelper;->getCacheFile(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 598
    .local v6, filename:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 599
    new-instance v0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;

    const/4 v1, 0x2

    invoke-direct {v0, v6, v1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;-><init>(Ljava/lang/String;I)V

    .line 606
    :goto_1a
    return-object v0

    .line 602
    :cond_1b
    const-string v5, ".screen"

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/picasasync/PrefetchHelper;->getCacheFile(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 603
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 604
    new-instance v0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v6, v1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;-><init>(Ljava/lang/String;I)V

    goto :goto_1a

    .line 606
    :cond_36
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public notifyAlbumsChange()V
    .registers 5

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/picasasync/PrefetchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->getAlbumsUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 248
    return-void
.end method

.method public setAlbumCachingFlag(JI)V
    .registers 10
    .parameter "albumId"
    .parameter "cachingFlag"

    .prologue
    .line 610
    packed-switch p3, :pswitch_data_3e

    .line 630
    :cond_3
    :goto_3
    return-void

    .line 619
    :pswitch_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 620
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "cache_flag"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 621
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 622
    .local v2, whereArgs:[Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v4, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    const-string v5, "_id=?"

    invoke-virtual {v3, v4, v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 625
    .local v0, count:I
    if-lez v0, :cond_3

    .line 626
    iget-object v3, p0, Lcom/google/android/picasasync/PrefetchHelper;->mCacheConfigVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 627
    invoke-virtual {p0}, Lcom/google/android/picasasync/PrefetchHelper;->notifyAlbumsChange()V

    .line 628
    iget-object v3, p0, Lcom/google/android/picasasync/PrefetchHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaSyncManager;->requestPrefetchSync()V

    goto :goto_3

    .line 610
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public syncAlbumCoversForUser(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Lcom/google/android/picasasync/UserEntry;)V
    .registers 16
    .parameter "context"
    .parameter "user"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 381
    new-instance v11, Ljava/io/File;

    invoke-direct {p0}, Lcom/google/android/picasasync/PrefetchHelper;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "picasa_covers"

    invoke-direct {v11, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .local v11, folder:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_22

    .line 383
    const-string v1, "PrefetchHelper"

    const-string v2, "cannot create album-cover folder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_21
    return-void

    .line 387
    :cond_22
    iget-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 388
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-array v4, v6, [Ljava/lang/String;

    iget-wide v1, p2, Lcom/google/android/picasasync/UserEntry;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 389
    .local v4, whereArgs:[Ljava/lang/String;
    sget-object v1, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID_THUMBNAIL_URL:[Ljava/lang/String;

    const-string v3, "user_id=?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 393
    .local v10, cursor:Landroid/database/Cursor;
    :cond_3e
    :goto_3e
    :try_start_3e
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 394
    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_62

    move-result v1

    if-eqz v1, :cond_4e

    .line 402
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_21

    .line 395
    :cond_4e
    const/4 v1, 0x0

    :try_start_4f
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 396
    .local v8, albumId:J
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 397
    .local v12, thumbnailUrl:Ljava/lang/String;
    invoke-virtual {p0, v8, v9, v12}, Lcom/google/android/picasasync/PrefetchHelper;->getAlbumCover(JLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_3e

    .line 398
    invoke-direct {p0, p1, v8, v9, v12}, Lcom/google/android/picasasync/PrefetchHelper;->syncOneAlbumCover(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;JLjava/lang/String;)Z
    :try_end_61
    .catchall {:try_start_4f .. :try_end_61} :catchall_62

    goto :goto_3e

    .line 402
    .end local v8           #albumId:J
    .end local v12           #thumbnailUrl:Ljava/lang/String;
    :catchall_62
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_67
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_21
.end method

.method public syncFullImagesForUser(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Lcom/google/android/picasasync/UserEntry;)V
    .registers 12
    .parameter "context"
    .parameter "user"

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 434
    iget-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 435
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-array v4, v6, [Ljava/lang/String;

    iget-wide v1, p2, Lcom/google/android/picasasync/UserEntry;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    const/4 v1, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 437
    .local v4, whereArgs:[Ljava/lang/String;
    sget-object v1, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID:[Ljava/lang/String;

    const-string v3, "user_id=? AND cache_flag=?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 441
    .local v8, cursor:Landroid/database/Cursor;
    :goto_26
    :try_start_26
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 442
    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_3f

    move-result v1

    if-eqz v1, :cond_36

    .line 446
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 448
    :goto_35
    return-void

    .line 443
    :cond_36
    const/4 v1, 0x0

    :try_start_37
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/picasasync/PrefetchHelper;->syncFullImagesForAlbum(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;J)V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3f

    goto :goto_26

    .line 446
    :catchall_3f
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_44
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_35
.end method

.method public syncScreenNailsForUser(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Lcom/google/android/picasasync/UserEntry;)V
    .registers 20
    .parameter "context"
    .parameter "user"

    .prologue
    .line 333
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x1

    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/google/android/picasasync/UserEntry;->id:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    .line 336
    .local v5, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 337
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID_ALBUM_ID_SCREENNAIL_URL:[Ljava/lang/String;

    sget-object v4, Lcom/google/android/picasasync/PrefetchHelper;->WHERE_CACHE_STATUS_AND_USER_ID:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "display_index"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 342
    .local v14, cursor:Landroid/database/Cursor;
    :cond_2c
    :goto_2c
    :try_start_2c
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 343
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->checkCacheConfigVersion()Z

    move-result v2

    if-nez v2, :cond_42

    .line 344
    const-string v2, "PrefetchHelper"

    const-string v3, "cache config has changed, stop sync"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->stopSync()V

    .line 348
    :cond_42
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_8f

    move-result v2

    if-eqz v2, :cond_4c

    .line 371
    invoke-static {v14}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 373
    :goto_4b
    return-void

    .line 350
    :cond_4c
    const/4 v2, 0x0

    :try_start_4d
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 351
    .local v10, photoId:J
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 352
    .local v8, albumId:J
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 355
    .local v16, screennailUrl:Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/google/android/picasasync/PrefetchHelper;->getCacheDirName(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    .local v15, folder:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_94

    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_94

    .line 357
    const-string v2, "PrefetchHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot create cache dir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_4d .. :try_end_8e} :catchall_8f

    goto :goto_2c

    .line 371
    .end local v8           #albumId:J
    .end local v10           #photoId:J
    .end local v15           #folder:Ljava/io/File;
    .end local v16           #screennailUrl:Ljava/lang/String;
    :catchall_8f
    move-exception v2

    invoke-static {v14}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    .line 361
    .restart local v8       #albumId:J
    .restart local v10       #photoId:J
    .restart local v15       #folder:Ljava/io/File;
    .restart local v16       #screennailUrl:Ljava/lang/String;
    :cond_94
    const/16 v2, 0x280

    const/4 v3, 0x0

    :try_start_97
    move-object/from16 v0, v16

    invoke-static {v0, v2, v3}, Lcom/google/android/picasasync/PicasaApi;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v12

    .line 364
    .local v12, downloadUrl:Ljava/lang/String;
    const-string v13, ".screen"

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v13}, Lcom/google/android/picasasync/PrefetchHelper;->syncOnePhoto(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;JJLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 365
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->getDownloadFailCount()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_2c

    .line 366
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "too many fail downloads"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b8
    .catchall {:try_start_97 .. :try_end_b8} :catchall_8f

    .line 371
    .end local v8           #albumId:J
    .end local v10           #photoId:J
    .end local v12           #downloadUrl:Ljava/lang/String;
    .end local v15           #folder:Ljava/io/File;
    .end local v16           #screennailUrl:Ljava/lang/String;
    :cond_b8
    invoke-static {v14}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_4b
.end method
