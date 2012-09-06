.class Lcom/google/android/picasasync/PrefetchHelper;
.super Ljava/lang/Object;
.source "PrefetchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;,
        Lcom/google/android/picasasync/PrefetchHelper$PrefetchListener;,
        Lcom/google/android/picasasync/PrefetchHelper$CacheStats;
    }
.end annotation


# static fields
.field private static final ALBUM_TABLE_NAME:Ljava/lang/String;

.field private static final PHOTO_TABLE_NAME:Ljava/lang/String;

.field private static final PROJECTION_ID:[Ljava/lang/String;

.field private static final PROJECTION_ID_CACHE_FLAG_STATUS_THUMBNAIL:[Ljava/lang/String;

.field private static final PROJECTION_ID_ROTATION_CONTENT_URL_CONTENT_TYPE_SCREENNAIL_URL:[Ljava/lang/String;

.field private static final PROJECTION_ID_SCREENNAIL_URL:[Ljava/lang/String;

.field private static final PROJECTION_ID_THUMBNAIL_URL:[Ljava/lang/String;

.field private static final QUERY_CACHE_STATUS_COUNT:Ljava/lang/String;

.field private static final WHERE_ALBUM_ID_AND_CACHE_STATUS:Ljava/lang/String;

.field private static final WHERE_CACHE_STATUS_AND_USER_ID:Ljava/lang/String;

.field private static final WHERE_USER_ID_AND_CACHE_FLAG:Ljava/lang/String;

.field private static sInstance:Lcom/google/android/picasasync/PrefetchHelper;


# instance fields
.field private mCacheConfigVersion:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCacheDir:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    sget-object v0, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    .line 94
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID:[Ljava/lang/String;

    .line 95
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "rotation"

    aput-object v1, v0, v4

    const-string v1, "content_url"

    aput-object v1, v0, v5

    const-string v1, "content_type"

    aput-object v1, v0, v6

    const-string v1, "screennail_url"

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID_ROTATION_CONTENT_URL_CONTENT_TYPE_SCREENNAIL_URL:[Ljava/lang/String;

    .line 101
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

    .line 106
    const-string v0, "%s=? AND %s=?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "user_id"

    aput-object v2, v1, v3

    const-string v2, "cache_flag"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->WHERE_USER_ID_AND_CACHE_FLAG:Ljava/lang/String;

    .line 108
    const-string v0, "%s=? AND %s=?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "album_id"

    aput-object v2, v1, v3

    const-string v2, "cache_status"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->WHERE_ALBUM_ID_AND_CACHE_STATUS:Ljava/lang/String;

    .line 339
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "screennail_url"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID_SCREENNAIL_URL:[Ljava/lang/String;

    .line 342
    const-string v0, "%s = ? AND %s = ?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "cache_status"

    aput-object v2, v1, v3

    const-string v2, "user_id"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->WHERE_CACHE_STATUS_AND_USER_ID:Ljava/lang/String;

    .line 383
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thumbnail_url"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID_THUMBNAIL_URL:[Ljava/lang/String;

    .line 674
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
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/picasasync/PrefetchHelper;->mCacheConfigVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/PrefetchHelper;->mContext:Landroid/content/Context;

    .line 127
    invoke-static {p1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/picasasync/PrefetchHelper;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
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

    .line 243
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 244
    .local v4, whereArgs:[Ljava/lang/String;
    sget-object v1, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID:[Ljava/lang/String;

    const-string v3, "album_id=?"

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 247
    .local v8, cursor:Landroid/database/Cursor;
    :goto_18
    :try_start_18
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 248
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_2b

    goto :goto_18

    .line 251
    :catchall_2b
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_30
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 253
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    .local p2, coverSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/android/picasasync/PrefetchHelper;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, cacheDir:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v8, "picasa_covers"

    invoke-direct {v2, v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .local v2, folder:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 305
    .local v7, names:[Ljava/lang/String;
    if-nez v7, :cond_12

    .line 314
    :cond_11
    return-void

    .line 306
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

    .line 307
    .local v6, name:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/picasasync/PrefetchHelper;->getKeyFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, key:Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_46

    .line 309
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_46

    .line 310
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

    .line 306
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    .local p2, keepSet:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/google/android/picasasync/PrefetchHelper;->getCacheDirectory()Ljava/lang/String;

    move-result-object v3

    .line 319
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

    .line 320
    .local v6, folderName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 337
    .end local v6           #folderName:Ljava/lang/String;
    :cond_1a
    return-void

    .line 321
    .restart local v6       #folderName:Ljava/lang/String;
    :cond_1b
    const-string v12, "picasa-"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_27

    .line 319
    .end local v8           #i$:I
    :cond_23
    :goto_23
    add-int/lit8 v7, v8, 0x1

    .restart local v7       #i$:I
    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto :goto_10

    .line 323
    :cond_27
    :try_start_27
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .local v5, folder:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, allFiles:[Ljava/lang/String;
    if-eqz v0, :cond_23

    .line 326
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

    .line 327
    .local v4, filename:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z

    move-result v12

    if-eqz v12, :cond_51

    .line 332
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

    .line 333
    .end local v0           #allFiles:[Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #folder:Ljava/io/File;
    .end local v7           #i$:I
    .end local v10           #len$:I
    :catch_4a
    move-exception v11

    .line 334
    .local v11, t:Ljava/lang/Throwable;
    const-string v12, "PrefetchHelper"

    invoke-static {v12, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 328
    .end local v11           #t:Ljava/lang/Throwable;
    .restart local v0       #allFiles:[Ljava/lang/String;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #filename:Ljava/lang/String;
    .restart local v5       #folder:Ljava/io/File;
    .restart local v7       #i$:I
    .restart local v10       #len$:I
    :cond_51
    :try_start_51
    invoke-direct {p0, v5, v4, p2}, Lcom/google/android/picasasync/PrefetchHelper;->keepCacheFile(Ljava/io/File;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v12

    if-nez v12, :cond_5f

    .line 329
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_5f} :catch_4a

    .line 326
    :cond_5f
    add-int/lit8 v7, v7, 0x1

    goto :goto_35
.end method

.method private downloadPhoto(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Ljava/lang/String;Ljava/io/File;)Z
    .registers 16
    .parameter "context"
    .parameter "url"
    .parameter "file"

    .prologue
    const/4 v8, 0x0

    .line 597
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 598
    .local v6, startTime:J
    const/4 v3, 0x0

    .line 599
    .local v3, os:Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 601
    .local v2, is:Ljava/io/InputStream;
    :try_start_7
    invoke-static {p2}, Lcom/google/android/picasastore/HttpUtils;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 602
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_80
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_51

    .line 603
    .end local v3           #os:Ljava/io/OutputStream;
    .local v4, os:Ljava/io/OutputStream;
    const/16 v9, 0x1000

    :try_start_12
    new-array v0, v9, [B

    .line 604
    .local v0, buffer:[B
    const/4 v9, 0x0

    array-length v10, v0

    invoke-virtual {v2, v0, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 605
    .local v5, rc:I
    :goto_1a
    if-lez v5, :cond_40

    .line 606
    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z

    move-result v9

    if-eqz v9, :cond_35

    .line 607
    invoke-static {v2}, Lcom/google/android/picasastore/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_90
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_25} :catch_93

    .line 619
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 620
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 621
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v6

    invoke-static {v9, v10}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDurationAndCount(J)V

    move-object v3, v4

    .end local v0           #buffer:[B
    .end local v4           #os:Ljava/io/OutputStream;
    .end local v5           #rc:I
    .restart local v3       #os:Ljava/io/OutputStream;
    :goto_34
    return v8

    .line 610
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v5       #rc:I
    :cond_35
    const/4 v9, 0x0

    :try_start_36
    invoke-virtual {v4, v0, v9, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 611
    const/4 v9, 0x0

    array-length v10, v0

    invoke-virtual {v2, v0, v9, v10}, Ljava/io/InputStream;->read([BII)I
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_90
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3e} :catch_93

    move-result v5

    goto :goto_1a

    .line 613
    :cond_40
    const/4 v8, 0x1

    .line 619
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 620
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 621
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v6

    invoke-static {v9, v10}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDurationAndCount(J)V

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_34

    .line 614
    .end local v0           #buffer:[B
    .end local v5           #rc:I
    :catch_51
    move-exception v1

    .line 615
    .local v1, e:Ljava/io/IOException;
    :goto_52
    :try_start_52
    invoke-static {v2}, Lcom/google/android/picasastore/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V

    .line 616
    const-string v9, "PrefetchHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail to download: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_52 .. :try_end_71} :catchall_80

    .line 619
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 620
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 621
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v6

    invoke-static {v9, v10}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDurationAndCount(J)V

    goto :goto_34

    .line 619
    .end local v1           #e:Ljava/io/IOException;
    :catchall_80
    move-exception v8

    :goto_81
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 620
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 621
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v6

    invoke-static {v9, v10}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDurationAndCount(J)V

    throw v8

    .line 619
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    :catchall_90
    move-exception v8

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_81

    .line 614
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    :catch_93
    move-exception v1

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_52
.end method

.method private generateScreennail(JI)V
    .registers 20
    .parameter "photoId"
    .parameter "rotation"

    .prologue
    .line 514
    invoke-direct/range {p0 .. p0}, Lcom/google/android/picasasync/PrefetchHelper;->getAvailableStorage()J

    move-result-wide v2

    .line 515
    .local v2, availableStorage:J
    const-wide/32 v13, 0x40000000

    cmp-long v13, v2, v13

    if-gez v13, :cond_2a

    .line 516
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "space not enough: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", stop sync"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 519
    :cond_2a
    const/4 v8, 0x0

    .line 521
    .local v8, fos:Ljava/io/FileOutputStream;
    :try_start_2b
    const-string v13, ".full"

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v13}, Lcom/google/android/picasastore/PicasaStoreFacade;->getCacheFile(JLjava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 522
    .local v5, cacheFile:Ljava/io/File;
    const-string v13, ".screen"

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v13}, Lcom/google/android/picasastore/PicasaStoreFacade;->createCacheFile(JLjava/lang/String;)Ljava/io/File;
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_ab
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_3a} :catch_8e

    move-result-object v11

    .line 524
    .local v11, screennailCacheFile:Ljava/io/File;
    if-eqz v5, :cond_3f

    if-nez v11, :cond_43

    .line 545
    :cond_3f
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 547
    .end local v5           #cacheFile:Ljava/io/File;
    .end local v11           #screennailCacheFile:Ljava/io/File;
    :goto_42
    return-void

    .line 525
    .restart local v5       #cacheFile:Ljava/io/File;
    .restart local v11       #screennailCacheFile:Ljava/io/File;
    :cond_43
    :try_start_43
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 527
    .local v6, cacheFilePath:Ljava/lang/String;
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 528
    .local v10, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput-boolean v13, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 529
    invoke-static {v6, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 530
    iget v13, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v14, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v15, 0x280

    invoke-static {v13, v14, v15}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result v13

    iput v13, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 532
    const/4 v13, 0x0

    iput-boolean v13, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 533
    invoke-static {v6, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_64
    .catchall {:try_start_43 .. :try_end_64} :catchall_ab
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_64} :catch_8e

    move-result-object v4

    .line 534
    .local v4, bitmap:Landroid/graphics/Bitmap;
    if-nez v4, :cond_6b

    .line 545
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_42

    .line 536
    :cond_6b
    const/16 v13, 0x280

    const/4 v14, 0x1

    :try_start_6e
    invoke-static {v4, v13, v14}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 538
    const/4 v13, 0x1

    move/from16 v0, p3

    invoke-static {v4, v0, v13}, Lcom/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 539
    const/16 v13, 0x5f

    invoke-static {v4, v13}, Lcom/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v7

    .line 540
    .local v7, content:[B
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_84
    .catchall {:try_start_6e .. :try_end_84} :catchall_ab
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_84} :catch_8e

    .line 541
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .local v9, fos:Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    :try_start_85
    array-length v14, v7

    invoke-virtual {v9, v7, v13, v14}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_b0
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_89} :catch_b3

    .line 545
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v8, v9

    .line 546
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    goto :goto_42

    .line 542
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #cacheFile:Ljava/io/File;
    .end local v6           #cacheFilePath:Ljava/lang/String;
    .end local v7           #content:[B
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v11           #screennailCacheFile:Ljava/io/File;
    :catch_8e
    move-exception v12

    .line 543
    .local v12, t:Ljava/lang/Throwable;
    :goto_8f
    :try_start_8f
    const-string v13, "PrefetchHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "cannot generate screennail: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_8f .. :try_end_a7} :catchall_ab

    .line 545
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_42

    .end local v12           #t:Ljava/lang/Throwable;
    :catchall_ab
    move-exception v13

    :goto_ac
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v13

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #cacheFile:Ljava/io/File;
    .restart local v6       #cacheFilePath:Ljava/lang/String;
    .restart local v7       #content:[B
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    .restart local v10       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v11       #screennailCacheFile:Ljava/io/File;
    :catchall_b0
    move-exception v13

    move-object v8, v9

    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    goto :goto_ac

    .line 542
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :catch_b3
    move-exception v12

    move-object v8, v9

    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    goto :goto_8f
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/google/android/picasasync/PrefetchHelper;
    .registers 3
    .parameter "context"

    .prologue
    .line 119
    const-class v1, Lcom/google/android/picasasync/PrefetchHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/picasasync/PrefetchHelper;->sInstance:Lcom/google/android/picasasync/PrefetchHelper;

    if-nez v0, :cond_e

    .line 120
    new-instance v0, Lcom/google/android/picasasync/PrefetchHelper;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/PrefetchHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->sInstance:Lcom/google/android/picasasync/PrefetchHelper;

    .line 122
    :cond_e
    sget-object v0, Lcom/google/android/picasasync/PrefetchHelper;->sInstance:Lcom/google/android/picasasync/PrefetchHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 119
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getAlbumCoverCacheFile(JLjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .parameter "albumId"
    .parameter "thumbnailUrl"
    .parameter "ext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/picasastore/PicasaStoreFacade;->getAlbumCoverCacheFile(JLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 592
    .local v0, file:Ljava/io/File;
    if-nez v0, :cond_e

    new-instance v1, Ljava/io/IOException;

    const-string v2, "external storage not present"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 593
    :cond_e
    return-object v0
.end method

.method private getAvailableStorage()J
    .registers 7

    .prologue
    .line 629
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {p0}, Lcom/google/android/picasasync/PrefetchHelper;->getCacheDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 630
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

    .line 633
    .end local v0           #stat:Landroid/os/StatFs;
    :goto_14
    return-wide v2

    .line 631
    :catch_15
    move-exception v1

    .line 632
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "PrefetchHelper"

    const-string v3, "Fail to getAvailableStorage"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    const-wide/16 v2, 0x0

    goto :goto_14
.end method

.method private getCacheDirectory()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mCacheDir:Ljava/lang/String;

    if-nez v1, :cond_18

    .line 132
    invoke-static {}, Lcom/google/android/picasastore/PicasaStoreFacade;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 133
    .local v0, cacheDir:Ljava/io/File;
    if-nez v0, :cond_12

    new-instance v1, Ljava/io/IOException;

    const-string v2, "external storage is not present"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_12
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mCacheDir:Ljava/lang/String;

    .line 136
    .end local v0           #cacheDir:Ljava/io/File;
    :cond_18
    iget-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mCacheDir:Ljava/lang/String;

    return-object v1
.end method

.method private static getKeyFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 296
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 297
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

.method private keepCacheFile(Ljava/io/File;Ljava/lang/String;Ljava/util/HashMap;)Z
    .registers 15
    .parameter "folder"
    .parameter "filename"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 263
    .local p3, keepSet:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/16 v7, 0x2e

    invoke-virtual {p2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 264
    .local v0, dotPos:I
    const/4 v7, -0x1

    if-ne v0, v7, :cond_b

    const/4 v7, 0x0

    .line 292
    :goto_a
    return v7

    .line 265
    :cond_b
    const/4 v7, 0x0

    invoke-virtual {p2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, ext:Ljava/lang/String;
    :try_start_14
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 269
    .local v2, id:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 270
    .local v6, type:Ljava/lang/Integer;
    if-nez v6, :cond_26

    .line 272
    const/4 v7, 0x0

    goto :goto_a

    .line 273
    :cond_26
    const/4 v7, 0x2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_60

    .line 274
    const-string v7, ".full"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5e

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".screen"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_5e

    .line 276
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_5e
    const/4 v7, 0x1

    goto :goto_a

    .line 280
    :cond_60
    const/4 v7, 0x1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_78

    .line 281
    const-string v7, ".screen"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ac

    .line 282
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const/4 v7, 0x1

    goto :goto_a

    .line 286
    :cond_78
    const-string v7, "PrefetchHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remove unknown cache file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_90} :catch_93

    .line 287
    const/4 v7, 0x0

    goto/16 :goto_a

    .line 289
    .end local v2           #id:J
    .end local v6           #type:Ljava/lang/Integer;
    :catch_93
    move-exception v5

    .line 290
    .local v5, t:Ljava/lang/Throwable;
    const-string v7, "PrefetchHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot parse id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .end local v5           #t:Ljava/lang/Throwable;
    :cond_ac
    const/4 v7, 0x0

    goto/16 :goto_a
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

    .line 208
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 210
    :try_start_5
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 211
    .local v3, values:Landroid/content/ContentValues;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    .line 212
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

    .line 213
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v6, :cond_4f

    move v2, v6

    .line 216
    .local v2, status:I
    :goto_2e
    const-string v5, "cache_status"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 218
    sget-object v5, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v8, "_id=?"

    invoke-virtual {p1, v5, v3, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_4a

    goto :goto_15

    .line 222
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

    .line 213
    goto :goto_2e

    .line 220
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_51
    :try_start_51
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_4a

    .line 222
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 224
    return-void
.end method

.method private syncFullImagesForAlbum(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;J)V
    .registers 26
    .parameter "context"
    .parameter "albumId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v4}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 461
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

    .line 465
    .local v7, whereArgs:[Ljava/lang/String;
    sget-object v4, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    sget-object v5, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID_ROTATION_CONTENT_URL_CONTENT_TYPE_SCREENNAIL_URL:[Ljava/lang/String;

    sget-object v6, Lcom/google/android/picasasync/PrefetchHelper;->WHERE_ALBUM_ID_AND_CACHE_STATUS:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 469
    .local v20, cursor:Landroid/database/Cursor;
    if-nez v20, :cond_2a

    .line 511
    :goto_29
    return-void

    .line 471
    :cond_2a
    :try_start_2a
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_bc

    move-result v4

    if-nez v4, :cond_34

    .line 509
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_29

    .line 475
    :cond_34
    const/4 v4, 0x1

    :try_start_35
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/google/android/picasasync/PrefetchHelper;->updateAlbumCacheStatus(Landroid/database/sqlite/SQLiteDatabase;JI)V

    .line 477
    :cond_3c
    :goto_3c
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_109

    .line 478
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->checkCacheConfigVersion()Z

    move-result v4

    if-nez v4, :cond_52

    .line 479
    const-string v4, "PrefetchHelper"

    const-string v5, "cache config has changed, stop sync"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->stopSync()V

    .line 482
    :cond_52
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z
    :try_end_55
    .catchall {:try_start_35 .. :try_end_55} :catchall_bc

    move-result v4

    if-eqz v4, :cond_5c

    .line 509
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_29

    .line 483
    :cond_5c
    const/4 v4, 0x0

    :try_start_5d
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 484
    .local v10, photoId:J
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 485
    .local v21, rotation:I
    const/4 v4, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 486
    .local v12, downloadUrl:Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 487
    .local v19, contentType:Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 488
    .local v17, screennailUrl:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".full"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_c1

    .line 490
    const-string v13, ".full"

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v13}, Lcom/google/android/picasasync/PrefetchHelper;->syncOnePhoto(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c1

    .line 491
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->getDownloadFailCount()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_c1

    .line 492
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "too many fail downloads"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_bc
    .catchall {:try_start_5d .. :try_end_bc} :catchall_bc

    .line 509
    .end local v10           #photoId:J
    .end local v12           #downloadUrl:Ljava/lang/String;
    .end local v17           #screennailUrl:Ljava/lang/String;
    .end local v19           #contentType:Ljava/lang/String;
    .end local v21           #rotation:I
    :catchall_bc
    move-exception v4

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    throw v4

    .line 496
    .restart local v10       #photoId:J
    .restart local v12       #downloadUrl:Ljava/lang/String;
    .restart local v17       #screennailUrl:Ljava/lang/String;
    .restart local v19       #contentType:Ljava/lang/String;
    .restart local v21       #rotation:I
    :cond_c1
    :try_start_c1
    const-string v4, "image/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d4

    .line 497
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v10, v11, v1}, Lcom/google/android/picasasync/PrefetchHelper;->generateScreennail(JI)V

    goto/16 :goto_3c

    .line 498
    :cond_d4
    const-string v4, "video/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 500
    const-string v18, ".screen"

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-wide v15, v10

    invoke-direct/range {v13 .. v18}, Lcom/google/android/picasasync/PrefetchHelper;->syncOnePhoto(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 501
    const-string v4, "PrefetchHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to fetch video screennail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 507
    .end local v10           #photoId:J
    .end local v12           #downloadUrl:Ljava/lang/String;
    .end local v17           #screennailUrl:Ljava/lang/String;
    .end local v19           #contentType:Ljava/lang/String;
    .end local v21           #rotation:I
    :cond_109
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/google/android/picasasync/PrefetchHelper;->updateAlbumCacheStatus(Landroid/database/sqlite/SQLiteDatabase;JI)V
    :try_end_111
    .catchall {:try_start_c1 .. :try_end_111} :catchall_bc

    .line 509
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_29
.end method

.method private syncOneAlbumCover(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;JLjava/lang/String;)Z
    .registers 14
    .parameter "context"
    .parameter "albumId"
    .parameter "thumbnailUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 416
    invoke-direct {p0}, Lcom/google/android/picasasync/PrefetchHelper;->getAvailableStorage()J

    move-result-wide v0

    .line 417
    .local v0, availableStorage:J
    const-wide/32 v7, 0x40000000

    cmp-long v7, v0, v7

    if-gez v7, :cond_2c

    .line 418
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

    .line 422
    :cond_2c
    const-string v7, ".download"

    invoke-direct {p0, p2, p3, p4, v7}, Lcom/google/android/picasasync/PrefetchHelper;->getAlbumCoverCacheFile(JLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 423
    .local v4, tempFile:Ljava/io/File;
    const/16 v7, 0xc8

    invoke-static {p4, v7, v6}, Lcom/google/android/picasasync/PicasaApi;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    .line 425
    .local v3, downloadUrl:Ljava/lang/String;
    invoke-direct {p0, p1, v3, v4}, Lcom/google/android/picasasync/PrefetchHelper;->downloadPhoto(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Ljava/lang/String;Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_42

    .line 426
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 436
    :goto_41
    return v5

    .line 430
    :cond_42
    const-string v7, ".thumb"

    invoke-direct {p0, p2, p3, p4, v7}, Lcom/google/android/picasasync/PrefetchHelper;->getAlbumCoverCacheFile(JLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 431
    .local v2, cacheFile:Ljava/io/File;
    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_6a

    .line 432
    const-string v6, "PrefetchHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot rename file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_41

    :cond_6a
    move v5, v6

    .line 436
    goto :goto_41
.end method

.method private syncOnePhoto(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;JLjava/lang/String;Ljava/lang/String;)Z
    .registers 18
    .parameter "context"
    .parameter "photoId"
    .parameter "url"
    .parameter "extension"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/google/android/picasasync/PrefetchHelper;->getAvailableStorage()J

    move-result-wide v1

    .line 553
    .local v1, availableStorage:J
    const-wide/32 v6, 0x40000000

    cmp-long v6, v1, v6

    if-gez v6, :cond_2a

    .line 554
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "space not enough: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", stop sync"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 558
    :cond_2a
    const-string v6, ".download"

    invoke-static {p2, p3, v6}, Lcom/google/android/picasastore/PicasaStoreFacade;->createCacheFile(JLjava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 559
    .local v4, tempFile:Ljava/io/File;
    if-nez v4, :cond_3a

    new-instance v6, Ljava/io/IOException;

    const-string v7, "external storage absent?"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 560
    :cond_3a
    const-string v6, "PrefetchHelper"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6f

    const-string v6, ".full"

    move-object/from16 v0, p5

    if-ne v0, v6, :cond_6f

    .line 561
    const-string v6, "PrefetchHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download full image for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p4 .. p4}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_6f
    move-object/from16 v0, p4

    invoke-direct {p0, p1, v0, v4}, Lcom/google/android/picasasync/PrefetchHelper;->downloadPhoto(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Ljava/lang/String;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_80

    .line 564
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 565
    const/4 v6, 0x0

    invoke-virtual {p1, p2, p3, v6}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->onDownloadFinish(JZ)V

    .line 566
    const/4 v6, 0x0

    .line 586
    :goto_7f
    return v6

    .line 569
    :cond_80
    move-object/from16 v0, p5

    invoke-static {p2, p3, v0}, Lcom/google/android/picasastore/PicasaStoreFacade;->createCacheFile(JLjava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 570
    .local v3, cacheFile:Ljava/io/File;
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_ad

    .line 571
    const-string v6, "PrefetchHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot rename file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 573
    const/4 v6, 0x0

    invoke-virtual {p1, p2, p3, v6}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->onDownloadFinish(JZ)V

    .line 574
    const/4 v6, 0x0

    goto :goto_7f

    .line 576
    :cond_ad
    const/4 v6, 0x1

    invoke-virtual {p1, p2, p3, v6}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->onDownloadFinish(JZ)V

    .line 582
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 583
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "cache_status"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 584
    iget-object v6, p0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v6}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    sget-object v7, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 586
    const/4 v6, 0x1

    goto :goto_7f
.end method

.method private updateAlbumCacheStatus(Landroid/database/sqlite/SQLiteDatabase;JI)V
    .registers 9
    .parameter "db"
    .parameter "albumId"
    .parameter "status"

    .prologue
    .line 228
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 229
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "cache_status"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 231
    .local v1, whereArgs:[Ljava/lang/String;
    sget-object v2, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id=?"

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 232
    invoke-virtual {p0}, Lcom/google/android/picasasync/PrefetchHelper;->notifyAlbumsChange()V

    .line 233
    return-void
.end method


# virtual methods
.method public cleanCache(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;)V
    .registers 20
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    const-string v3, "PrefetchHelper.cleanCache"

    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v15

    .line 144
    .local v15, statsId:I
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v14, keepSet:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 149
    .local v10, albumSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 152
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 153
    .local v17, values:Landroid/content/ContentValues;
    const-string v3, "cache_status"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    sget-object v3, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v4, "cache_status <> 0"

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    sget-object v3, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v4, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID_CACHE_FLAG_STATUS_THUMBNAIL:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 161
    .local v13, cursor:Landroid/database/Cursor;
    :cond_40
    :goto_40
    :try_start_40
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_89

    move-result v3

    if-eqz v3, :cond_50

    .line 190
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 203
    :goto_4f
    return-void

    .line 164
    :cond_50
    const/4 v3, 0x0

    :try_start_51
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 165
    .local v5, albumId:J
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 166
    .local v11, cacheFlag:I
    const/4 v3, 0x2

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 167
    .local v12, cacheStatus:I
    const/4 v3, 0x3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 168
    .local v16, thumbnailUrl:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Lcom/google/android/picasastore/PicasaStoreFacade;->getAlbumCoverKey(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    const/4 v3, 0x2

    if-ne v11, v3, :cond_8e

    .line 171
    const/4 v3, 0x3

    if-eq v12, v3, :cond_7c

    const/4 v3, 0x1

    if-eq v12, v3, :cond_7c

    .line 173
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6, v3}, Lcom/google/android/picasasync/PrefetchHelper;->updateAlbumCacheStatus(Landroid/database/sqlite/SQLiteDatabase;JI)V

    .line 175
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

    .line 190
    .end local v5           #albumId:J
    .end local v11           #cacheFlag:I
    .end local v12           #cacheStatus:I
    .end local v16           #thumbnailUrl:Ljava/lang/String;
    :catchall_89
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 176
    .restart local v5       #albumId:J
    .restart local v11       #cacheFlag:I
    .restart local v12       #cacheStatus:I
    .restart local v16       #thumbnailUrl:Ljava/lang/String;
    :cond_8e
    const/4 v3, 0x1

    if-ne v11, v3, :cond_a6

    .line 178
    if-eqz v12, :cond_99

    .line 179
    const/4 v3, 0x0

    :try_start_94
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6, v3}, Lcom/google/android/picasasync/PrefetchHelper;->updateAlbumCacheStatus(Landroid/database/sqlite/SQLiteDatabase;JI)V

    .line 181
    :cond_99
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v7, v14

    invoke-direct/range {v3 .. v8}, Lcom/google/android/picasasync/PrefetchHelper;->collectKeepSet(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/HashMap;Ljava/lang/Integer;)V

    goto :goto_40

    .line 182
    :cond_a6
    if-nez v11, :cond_40

    .line 184
    if-eqz v12, :cond_40

    .line 185
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6, v3}, Lcom/google/android/picasasync/PrefetchHelper;->updateAlbumCacheStatus(Landroid/database/sqlite/SQLiteDatabase;JI)V
    :try_end_b0
    .catchall {:try_start_94 .. :try_end_b0} :catchall_89

    goto :goto_40

    .line 190
    .end local v5           #albumId:J
    .end local v11           #cacheFlag:I
    .end local v12           #cacheStatus:I
    .end local v16           #thumbnailUrl:Ljava/lang/String;
    :cond_b1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 193
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/google/android/picasasync/PrefetchHelper;->deleteUnusedAlbumCovers(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Ljava/util/HashSet;)V

    .line 197
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/google/android/picasasync/PrefetchHelper;->deleteUnusedCacheFiles(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Ljava/util/HashMap;)V

    .line 200
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/google/android/picasasync/PrefetchHelper;->setCacheStatus(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V

    .line 202
    invoke-static {v15}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto :goto_4f
.end method

.method public createPrefetchContext(Landroid/content/SyncResult;Ljava/lang/Thread;)Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;
    .registers 4
    .parameter "syncResult"
    .parameter "thread"

    .prologue
    .line 705
    new-instance v0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;-><init>(Lcom/google/android/picasasync/PrefetchHelper;Landroid/content/SyncResult;Ljava/lang/Thread;)V

    return-object v0
.end method

.method public getAlbumCover(JLjava/lang/String;)Ljava/io/File;
    .registers 6
    .parameter "albumId"
    .parameter "thumbnailUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 760
    const-string v1, ".thumb"

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/android/picasasync/PrefetchHelper;->getAlbumCoverCacheFile(JLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 761
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_d

    .end local v0           #file:Ljava/io/File;
    :goto_c
    return-object v0

    .restart local v0       #file:Ljava/io/File;
    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getCacheStatistics(I)Lcom/google/android/picasasync/PrefetchHelper$CacheStats;
    .registers 11
    .parameter "flag"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 684
    iget-object v6, p0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v6}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 685
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-array v5, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 686
    .local v5, whereArgs:[Ljava/lang/String;
    sget-object v6, Lcom/google/android/picasasync/PrefetchHelper;->QUERY_CACHE_STATUS_COUNT:Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 687
    .local v1, cursor:Landroid/database/Cursor;
    new-instance v3, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;

    invoke-direct {v3}, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;-><init>()V

    .line 688
    .local v3, stats:Lcom/google/android/picasasync/PrefetchHelper$CacheStats;
    if-nez v1, :cond_1e

    .line 700
    :goto_1d
    return-object v3

    .line 690
    :cond_1e
    :goto_1e
    :try_start_1e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 691
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 692
    .local v0, count:I
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 693
    .local v4, status:I
    if-eqz v4, :cond_35

    .line 694
    iget v6, v3, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->pendingCount:I

    add-int/2addr v6, v0

    iput v6, v3, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->pendingCount:I

    .line 696
    :cond_35
    iget v6, v3, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->totalCount:I

    add-int/2addr v6, v0

    iput v6, v3, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->totalCount:I
    :try_end_3a
    .catchall {:try_start_1e .. :try_end_3a} :catchall_3b

    goto :goto_1e

    .line 700
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

.method public notifyAlbumsChange()V
    .registers 5

    .prologue
    .line 256
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

    .line 258
    return-void
.end method

.method public setAlbumCachingFlag(JI)V
    .registers 10
    .parameter "albumId"
    .parameter "cachingFlag"

    .prologue
    .line 648
    packed-switch p3, :pswitch_data_3e

    .line 667
    :cond_3
    :goto_3
    return-void

    .line 657
    :pswitch_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 658
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "cache_flag"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 659
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 660
    .local v2, whereArgs:[Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v4, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    const-string v5, "_id=?"

    invoke-virtual {v3, v4, v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 662
    .local v0, count:I
    if-lez v0, :cond_3

    .line 663
    iget-object v3, p0, Lcom/google/android/picasasync/PrefetchHelper;->mCacheConfigVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 664
    invoke-virtual {p0}, Lcom/google/android/picasasync/PrefetchHelper;->notifyAlbumsChange()V

    .line 665
    iget-object v3, p0, Lcom/google/android/picasasync/PrefetchHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaSyncManager;->requestPrefetchSync()V

    goto :goto_3

    .line 648
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 389
    new-instance v11, Ljava/io/File;

    invoke-direct {p0}, Lcom/google/android/picasasync/PrefetchHelper;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "picasa_covers"

    invoke-direct {v11, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .local v11, folder:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_22

    .line 391
    const-string v1, "PrefetchHelper"

    const-string v2, "cannot create album-cover folder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :goto_21
    return-void

    .line 395
    :cond_22
    iget-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 396
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-array v4, v6, [Ljava/lang/String;

    iget-wide v1, p2, Lcom/google/android/picasasync/UserEntry;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 397
    .local v4, whereArgs:[Ljava/lang/String;
    sget-object v1, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID_THUMBNAIL_URL:[Ljava/lang/String;

    const-string v3, "user_id=?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 401
    .local v10, cursor:Landroid/database/Cursor;
    :cond_3e
    :goto_3e
    :try_start_3e
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 402
    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_62

    move-result v1

    if-eqz v1, :cond_4e

    .line 410
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_21

    .line 403
    :cond_4e
    const/4 v1, 0x0

    :try_start_4f
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 404
    .local v8, albumId:J
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 405
    .local v12, thumbnailUrl:Ljava/lang/String;
    invoke-virtual {p0, v8, v9, v12}, Lcom/google/android/picasasync/PrefetchHelper;->getAlbumCover(JLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_3e

    .line 406
    invoke-direct {p0, p1, v8, v9, v12}, Lcom/google/android/picasasync/PrefetchHelper;->syncOneAlbumCover(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;JLjava/lang/String;)Z
    :try_end_61
    .catchall {:try_start_4f .. :try_end_61} :catchall_62

    goto :goto_3e

    .line 410
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 441
    iget-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 442
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

    .line 444
    .local v4, whereArgs:[Ljava/lang/String;
    sget-object v1, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID:[Ljava/lang/String;

    sget-object v3, Lcom/google/android/picasasync/PrefetchHelper;->WHERE_USER_ID_AND_CACHE_FLAG:Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 448
    .local v8, cursor:Landroid/database/Cursor;
    :goto_26
    :try_start_26
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 449
    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_3f

    move-result v1

    if-eqz v1, :cond_36

    .line 453
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 455
    :goto_35
    return-void

    .line 450
    :cond_36
    const/4 v1, 0x0

    :try_start_37
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/picasasync/PrefetchHelper;->syncFullImagesForAlbum(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;J)V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3f

    goto :goto_26

    .line 453
    :catchall_3f
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_44
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_35
.end method

.method public syncScreenNailsForUser(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Lcom/google/android/picasasync/UserEntry;)V
    .registers 16
    .parameter "context"
    .parameter "user"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 349
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    iget-wide v1, p2, Lcom/google/android/picasasync/UserEntry;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 352
    .local v4, whereArgs:[Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 353
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID_SCREENNAIL_URL:[Ljava/lang/String;

    sget-object v3, Lcom/google/android/picasasync/PrefetchHelper;->WHERE_CACHE_STATUS_AND_USER_ID:Ljava/lang/String;

    const-string v7, "display_index"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 358
    .local v11, cursor:Landroid/database/Cursor;
    :cond_27
    :try_start_27
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 359
    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->checkCacheConfigVersion()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 360
    const-string v1, "PrefetchHelper"

    const-string v2, "cache config has changed, stop sync"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->stopSync()V

    .line 364
    :cond_3d
    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z
    :try_end_40
    .catchall {:try_start_27 .. :try_end_40} :catchall_71

    move-result v1

    if-eqz v1, :cond_47

    .line 379
    invoke-static {v11}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 381
    :goto_46
    return-void

    .line 366
    :cond_47
    const/4 v1, 0x0

    :try_start_48
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 367
    .local v7, photoId:J
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 369
    .local v12, screennailUrl:Ljava/lang/String;
    const/16 v1, 0x280

    const/4 v2, 0x0

    invoke-static {v12, v1, v2}, Lcom/google/android/picasasync/PicasaApi;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v9

    .line 372
    .local v9, downloadUrl:Ljava/lang/String;
    const-string v10, ".screen"

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/android/picasasync/PrefetchHelper;->syncOnePhoto(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 373
    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->getDownloadFailCount()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_27

    .line 374
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "too many fail downloads"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_71
    .catchall {:try_start_48 .. :try_end_71} :catchall_71

    .line 379
    .end local v7           #photoId:J
    .end local v9           #downloadUrl:Ljava/lang/String;
    .end local v12           #screennailUrl:Ljava/lang/String;
    :catchall_71
    move-exception v1

    invoke-static {v11}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1

    :cond_76
    invoke-static {v11}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_46
.end method
