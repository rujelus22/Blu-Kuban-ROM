.class public Lcom/sec/android/app/music/common/data/MusicDB;
.super Ljava/lang/Object;
.source "MusicDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;
    }
.end annotation


# static fields
.field public static final DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/sec/android/app/music/common/data/MusicDB;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 22
    const-class v0, Lcom/sec/android/app/music/common/data/MusicDB;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/music/common/data/MusicDB;->mInstance:Lcom/sec/android/app/music/common/data/MusicDB;

    .line 56
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "track"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "year"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "genre_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    .line 68
    iput-object p1, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    .line 70
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/sec/android/app/music/common/data/MusicDB;
    .registers 3
    .parameter "context"

    .prologue
    .line 98
    const-class v1, Lcom/sec/android/app/music/common/data/MusicDB;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/music/common/data/MusicDB;->mInstance:Lcom/sec/android/app/music/common/data/MusicDB;

    if-nez v0, :cond_12

    .line 99
    new-instance v0, Lcom/sec/android/app/music/common/data/MusicDB;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/data/MusicDB;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/music/common/data/MusicDB;->mInstance:Lcom/sec/android/app/music/common/data/MusicDB;

    .line 104
    :cond_e
    :goto_e
    sget-object v0, Lcom/sec/android/app/music/common/data/MusicDB;->mInstance:Lcom/sec/android/app/music/common/data/MusicDB;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_22

    monitor-exit v1

    return-object v0

    .line 100
    :cond_12
    :try_start_12
    sget-object v0, Lcom/sec/android/app/music/common/data/MusicDB;->mInstance:Lcom/sec/android/app/music/common/data/MusicDB;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/data/MusicDB;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eq v0, p0, :cond_e

    .line 101
    new-instance v0, Lcom/sec/android/app/music/common/data/MusicDB;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/data/MusicDB;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/music/common/data/MusicDB;->mInstance:Lcom/sec/android/app/music/common/data/MusicDB;
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_22

    goto :goto_e

    .line 98
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getUriType(Landroid/content/Context;Landroid/net/Uri;)Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;
    .registers 8
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 368
    new-instance v0, Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;

    invoke-direct {v0}, Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;-><init>()V

    .line 370
    .local v0, fl:Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;
    if-nez p1, :cond_c

    .line 371
    iput v4, v0, Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;->type:I

    .line 393
    :goto_b
    return-object v0

    .line 375
    :cond_c
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, uriPath:Ljava/lang/String;
    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 377
    iput v5, v0, Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;->type:I

    .line 378
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;->path:Ljava/lang/String;

    .line 379
    iget-object v2, v0, Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;->path:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/music/common/data/MusicDB;->isInternalFile(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;->isInternal:I

    goto :goto_b

    .line 380
    :cond_29
    const-string v2, "content://media"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 381
    const/4 v2, 0x2

    iput v2, v0, Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;->type:I

    .line 382
    iput-object p1, v0, Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;->uri:Landroid/net/Uri;

    .line 383
    const-string v2, "content://media"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "internal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 384
    iput v5, v0, Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;->isInternal:I

    goto :goto_b

    .line 385
    :cond_4b
    const-string v2, "content://media"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "external"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 386
    const/4 v2, 0x1

    iput v2, v0, Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;->isInternal:I

    goto :goto_b

    .line 388
    :cond_61
    iput v4, v0, Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;->isInternal:I

    goto :goto_b

    .line 391
    :cond_64
    iput v4, v0, Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;->type:I

    goto :goto_b
.end method

.method private static isInternalFile(Ljava/lang/String;)I
    .registers 2
    .parameter "path"

    .prologue
    .line 397
    const-string v0, "/system/media"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 398
    const/4 v0, 0x0

    .line 402
    :goto_9
    return v0

    .line 399
    :cond_a
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 400
    const/4 v0, 0x1

    goto :goto_9

    .line 402
    :cond_1a
    const/4 v0, -0x1

    goto :goto_9
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v8, 0x0

    .line 74
    const/4 v6, 0x0

    .line 77
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_c} :catch_f
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_c} :catch_37
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_c} :catch_7e

    move-result-object v6

    :goto_d
    move-object v0, v6

    .line 94
    :goto_e
    return-object v0

    .line 78
    :catch_f
    move-exception v7

    .line 79
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    sget-object v0, Lcom/sec/android/app/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteFullException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    goto :goto_d

    .line 82
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_37
    move-exception v7

    .line 83
    .local v7, e:Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v0, Lcom/sec/android/app/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteDiskIOException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    goto :goto_d

    .line 86
    .end local v7           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_5f
    move-exception v7

    .line 87
    .local v7, e:Ljava/lang/NullPointerException;
    sget-object v0, Lcom/sec/android/app/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteDiskIOException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 88
    goto :goto_e

    .line 89
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_7e
    move-exception v7

    .line 90
    .local v7, e:Ljava/lang/IllegalArgumentException;
    sget-object v0, Lcom/sec/android/app/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteIllegalArgumentException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 91
    goto/16 :goto_e
.end method


# virtual methods
.method public getAlbumArt(J)Ljava/lang/String;
    .registers 13
    .parameter "albumId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 417
    const/4 v6, 0x0

    .line 418
    .local v6, albumArt:Ljava/lang/String;
    const/4 v3, 0x0

    .line 420
    .local v3, where:Ljava/lang/String;
    const/4 v7, 0x0

    .line 422
    .local v7, c:Landroid/database/Cursor;
    const-string v0, "%s = %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "_id"

    aput-object v2, v1, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 425
    :try_start_19
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "album_art"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_b6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_19 .. :try_end_2e} :catch_5c
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_19 .. :try_end_2e} :catch_89

    move-result-object v7

    .line 430
    if-nez v7, :cond_38

    .line 449
    if-eqz v7, :cond_36

    .line 450
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_36
    move-object v0, v9

    .line 453
    :goto_37
    return-object v0

    .line 432
    :cond_38
    :try_start_38
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_48

    .line 433
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_b6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_38 .. :try_end_41} :catch_5c
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_38 .. :try_end_41} :catch_89

    .line 449
    if-eqz v7, :cond_46

    .line 450
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_46
    move-object v0, v9

    goto :goto_37

    .line 437
    :cond_48
    :try_start_48
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 438
    const-string v0, "album_art"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_b6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_48 .. :try_end_54} :catch_5c
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_48 .. :try_end_54} :catch_89

    move-result-object v6

    .line 449
    if-eqz v7, :cond_5a

    .line 450
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5a
    :goto_5a
    move-object v0, v6

    .line 453
    goto :goto_37

    .line 440
    :catch_5c
    move-exception v8

    .line 441
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_5d
    sget-object v0, Lcom/sec/android/app/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteFullException getAlbumArt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V
    :try_end_83
    .catchall {:try_start_5d .. :try_end_83} :catchall_b6

    .line 449
    if-eqz v7, :cond_5a

    .line 450
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_5a

    .line 444
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_89
    move-exception v8

    .line 445
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_8a
    sget-object v0, Lcom/sec/android/app/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteDiskIOException getAlbumArt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V
    :try_end_b0
    .catchall {:try_start_8a .. :try_end_b0} :catchall_b6

    .line 449
    if-eqz v7, :cond_5a

    .line 450
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_5a

    .line 449
    .end local v8           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_b6
    move-exception v0

    if-eqz v7, :cond_bc

    .line 450
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_bc
    throw v0
.end method

.method public getAlbumInfo(Landroid/net/Uri;)Lcom/sec/android/app/music/common/data/MusicAlbumInfo;
    .registers 10
    .parameter "audioUri"

    .prologue
    .line 116
    new-instance v6, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    invoke-direct {v6}, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;-><init>()V

    .line 118
    .local v6, albumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;
    const/4 v7, 0x0

    .line 119
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "artist"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "album_id"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "duration"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "mime_type"

    aput-object v1, v2, v0

    .line 127
    .local v2, cols:[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_31
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/music/common/data/MusicDB;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 128
    if-eqz v7, :cond_b2

    .line 129
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 130
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    .line 132
    const-string v0, "album"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    .line 134
    const-string v0, "artist"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    .line 136
    const-string v0, "album_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbumID:I

    .line 138
    const-string v0, "duration"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mDuration:J

    .line 140
    const-string v0, "mime_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mMimeType:Ljava/lang/String;

    .line 142
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mFilePath:Ljava/lang/String;

    .line 144
    iget-object v0, v6, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_9d

    .line 145
    iget-object v0, v6, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/music/common/util/ListUtil;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;
    :try_end_9d
    .catchall {:try_start_31 .. :try_end_9d} :catchall_ab

    .line 154
    :cond_9d
    :goto_9d
    if-eqz v7, :cond_a2

    .line 155
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_a2
    return-object v6

    .line 148
    :cond_a3
    :try_start_a3
    sget-object v0, Lcom/sec/android/app/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v1, "getAlbumInfo: cursor.moveToFirst() FAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_ab

    goto :goto_9d

    .line 154
    :catchall_ab
    move-exception v0

    if-eqz v7, :cond_b1

    .line 155
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_b1
    throw v0

    .line 151
    :cond_b2
    :try_start_b2
    sget-object v0, Lcom/sec/android/app/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    const-string v1, "getAlbumInfo: cursor==null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catchall {:try_start_b2 .. :try_end_b9} :catchall_ab

    goto :goto_9d
.end method

.method public getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 13
    .parameter "uri"

    .prologue
    const/4 v10, 0x1

    .line 170
    const/4 v8, 0x0

    .line 172
    .local v8, str:Ljava/lang/String;
    if-nez p1, :cond_6

    move-object v9, v8

    .line 206
    .end local v8           #str:Ljava/lang/String;
    .local v9, str:Ljava/lang/String;
    :goto_5
    return-object v9

    .line 174
    .end local v9           #str:Ljava/lang/String;
    .restart local v8       #str:Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 175
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 176
    const/4 v0, 0x7

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 177
    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .line 179
    .end local v8           #str:Ljava/lang/String;
    .restart local v9       #str:Ljava/lang/String;
    goto :goto_5

    .line 180
    .end local v9           #str:Ljava/lang/String;
    .restart local v8       #str:Ljava/lang/String;
    :cond_21
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    move-object v9, v8

    .line 181
    .end local v8           #str:Ljava/lang/String;
    .restart local v9       #str:Ljava/lang/String;
    goto :goto_5

    .line 184
    .end local v9           #str:Ljava/lang/String;
    .restart local v8       #str:Ljava/lang/String;
    :cond_2f
    const/4 v6, 0x0

    .line 186
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_30
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 189
    if-eqz v6, :cond_5b

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_5b

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 191
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5a
    .catchall {:try_start_30 .. :try_end_5a} :catchall_bc
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_30 .. :try_end_5a} :catch_62
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_30 .. :try_end_5a} :catch_8f

    move-result-object v8

    .line 202
    :cond_5b
    if-eqz v6, :cond_60

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_60
    :goto_60
    move-object v9, v8

    .line 206
    .end local v8           #str:Ljava/lang/String;
    .restart local v9       #str:Ljava/lang/String;
    goto :goto_5

    .line 193
    .end local v9           #str:Ljava/lang/String;
    .restart local v8       #str:Ljava/lang/String;
    :catch_62
    move-exception v7

    .line 194
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_63
    sget-object v0, Lcom/sec/android/app/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteFullException getAudioFilePath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V
    :try_end_89
    .catchall {:try_start_63 .. :try_end_89} :catchall_bc

    .line 202
    if-eqz v6, :cond_60

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_60

    .line 197
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_8f
    move-exception v7

    .line 198
    .local v7, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_90
    sget-object v0, Lcom/sec/android/app/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteDiskIOException getAudioFilePath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V
    :try_end_b6
    .catchall {:try_start_90 .. :try_end_b6} :catchall_bc

    .line 202
    if-eqz v6, :cond_60

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_60

    .line 202
    .end local v7           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_bc
    move-exception v0

    if-eqz v6, :cond_c2

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c2
    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 112
    sget-object v0, Lcom/sec/android/app/music/common/data/MusicDB;->mInstance:Lcom/sec/android/app/music/common/data/MusicDB;

    iget-object v0, v0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFileDetails(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter "uri"
    .parameter "cols"

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 328
    iget-object v2, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/sec/android/app/music/common/data/MusicDB;->getUriType(Landroid/content/Context;Landroid/net/Uri;)Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;

    move-result-object v8

    .line 329
    .local v8, fl:Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;
    const/4 v6, 0x0

    .line 331
    .local v6, c:Landroid/database/Cursor;
    :try_start_9
    iget v2, v8, Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1f

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :cond_1d
    :goto_1d
    move-object v0, v6

    .line 364
    :cond_1e
    return-object v0

    .line 333
    :cond_1f
    iget v2, v8, Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;->type:I

    if-ne v2, v4, :cond_33

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1d

    .line 335
    :cond_33
    iget v2, v8, Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;->type:I

    if-nez v2, :cond_1d

    .line 336
    iget-object v2, v8, Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;->path:Ljava/lang/String;

    if-eqz v2, :cond_1e

    .line 339
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v2, "_data = ?"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    iget v2, v8, Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;->isInternal:I

    if-nez v2, :cond_64

    .line 343
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 349
    .local v1, tmpUri:Landroid/net/Uri;
    :goto_4b
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v5, v8, Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;->path:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1d

    .line 344
    .end local v1           #tmpUri:Landroid/net/Uri;
    :cond_64
    iget v2, v8, Lcom/sec/android/app/music/common/data/MusicDB$FileLocationInfo;->isInternal:I

    if-ne v2, v4, :cond_1e

    .line 345
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
    :try_end_6a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_9 .. :try_end_6a} :catch_6b
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_9 .. :try_end_6a} :catch_93

    .restart local v1       #tmpUri:Landroid/net/Uri;
    goto :goto_4b

    .line 354
    .end local v1           #tmpUri:Landroid/net/Uri;
    .end local v9           #where:Ljava/lang/StringBuilder;
    :catch_6b
    move-exception v7

    .line 355
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    sget-object v0, Lcom/sec/android/app/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException getFileDetails"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    goto :goto_1d

    .line 358
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_93
    move-exception v7

    .line 359
    .local v7, e:Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v0, Lcom/sec/android/app/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteDiskIOException getFileDetails"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    goto/16 :goto_1d
.end method

.method public getFileId(Ljava/lang/String;)J
    .registers 13
    .parameter "filePath"

    .prologue
    .line 295
    const-wide/16 v8, -0x1

    .line 296
    .local v8, id:J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "_data = ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const/4 v6, 0x0

    .line 301
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_d
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 307
    if-eqz v6, :cond_3c

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3c

    .line 308
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 309
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_9c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d .. :try_end_3b} :catch_42
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_d .. :try_end_3b} :catch_6f

    move-result-wide v8

    .line 320
    :cond_3c
    if-eqz v6, :cond_41

    .line 321
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 324
    :cond_41
    :goto_41
    return-wide v8

    .line 311
    :catch_42
    move-exception v7

    .line 312
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_43
    sget-object v0, Lcom/sec/android/app/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteFullException getFileId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V
    :try_end_69
    .catchall {:try_start_43 .. :try_end_69} :catchall_9c

    .line 320
    if-eqz v6, :cond_41

    .line 321
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_41

    .line 315
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_6f
    move-exception v7

    .line 316
    .local v7, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_70
    sget-object v0, Lcom/sec/android/app/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteDiskIOException getFileId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V
    :try_end_96
    .catchall {:try_start_70 .. :try_end_96} :catchall_9c

    .line 320
    if-eqz v6, :cond_41

    .line 321
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_41

    .line 320
    .end local v7           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_9c
    move-exception v0

    if-eqz v6, :cond_a2

    .line 321
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a2
    throw v0
.end method

.method public updatePlayedCount(J)Z
    .registers 20
    .parameter "audio_id"

    .prologue
    .line 210
    const/4 v8, 0x1

    .line 212
    .local v8, bResult:Z
    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-gez v2, :cond_9

    .line 213
    const/4 v2, 0x0

    .line 258
    :goto_8
    return v2

    .line 215
    :cond_9
    sget-object v14, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 217
    .local v14, uri:Landroid/net/Uri;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 219
    .local v3, mediaUri:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 222
    .local v11, mediaCursor:Landroid/database/Cursor;
    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "most_played"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 225
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 226
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 228
    .local v12, playedCount:I
    new-instance v15, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v15, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 229
    .local v15, values:Landroid/content/ContentValues;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 230
    .local v16, where:Ljava/lang/String;
    const/4 v13, 0x0

    .line 232
    .local v13, selectionArgs:[Ljava/lang/String;
    const-string v2, "most_played"

    add-int/lit8 v4, v12, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const/4 v10, -0x1

    .line 236
    .local v10, iResult:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v16

    invoke-virtual {v2, v14, v15, v0, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_14 .. :try_end_60} :catchall_fc
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_14 .. :try_end_60} :catch_6c
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_14 .. :try_end_60} :catch_9d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_14 .. :try_end_60} :catch_ce
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_14 .. :try_end_60} :catch_d8

    move-result v10

    .line 238
    const/4 v2, 0x1

    if-eq v10, v2, :cond_65

    .line 239
    const/4 v8, 0x0

    .line 254
    :cond_65
    if-eqz v11, :cond_6a

    .line 255
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .end local v10           #iResult:I
    .end local v12           #playedCount:I
    .end local v13           #selectionArgs:[Ljava/lang/String;
    .end local v15           #values:Landroid/content/ContentValues;
    .end local v16           #where:Ljava/lang/String;
    :cond_6a
    :goto_6a
    move v2, v8

    .line 258
    goto :goto_8

    .line 241
    :catch_6c
    move-exception v9

    .line 242
    .local v9, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_6d
    sget-object v2, Lcom/sec/android/app/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteFullException updatePlayedCount"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/music/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V
    :try_end_97
    .catchall {:try_start_6d .. :try_end_97} :catchall_fc

    .line 254
    if-eqz v11, :cond_6a

    .line 255
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_6a

    .line 245
    .end local v9           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_9d
    move-exception v9

    .line 246
    .local v9, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_9e
    sget-object v2, Lcom/sec/android/app/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteDiskIOException updatePlayedCount"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/music/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V
    :try_end_c8
    .catchall {:try_start_9e .. :try_end_c8} :catchall_fc

    .line 254
    if-eqz v11, :cond_6a

    .line 255
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_6a

    .line 249
    .end local v9           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_ce
    move-exception v9

    .line 250
    .local v9, e:Ljava/lang/UnsupportedOperationException;
    :try_start_cf
    invoke-virtual {v9}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_fc

    .line 254
    if-eqz v11, :cond_6a

    .line 255
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_6a

    .line 251
    .end local v9           #e:Ljava/lang/UnsupportedOperationException;
    :catch_d8
    move-exception v9

    .line 252
    .local v9, e:Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_d9
    sget-object v2, Lcom/sec/android/app/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CursorIndexOutOfBoundsException updatePlayedCount"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Landroid/database/CursorIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f5
    .catchall {:try_start_d9 .. :try_end_f5} :catchall_fc

    .line 254
    if-eqz v11, :cond_6a

    .line 255
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6a

    .line 254
    .end local v9           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_fc
    move-exception v2

    if-eqz v11, :cond_102

    .line 255
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_102
    throw v2
.end method

.method public updatePlayedTime(J)Z
    .registers 16
    .parameter "audio_id"

    .prologue
    const/4 v12, 0x1

    .line 262
    const/4 v0, 0x1

    .line 264
    .local v0, bResult:Z
    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-gez v7, :cond_a

    .line 265
    const/4 v7, 0x0

    .line 291
    :goto_9
    return v7

    .line 267
    :cond_a
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 268
    .local v4, uri:Landroid/net/Uri;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v12}, Landroid/content/ContentValues;-><init>(I)V

    .line 269
    .local v5, values:Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 270
    .local v6, where:Ljava/lang/String;
    const/4 v3, 0x0

    .line 272
    .local v3, selectionArgs:[Ljava/lang/String;
    const-string v7, "recently_played"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 273
    const/4 v2, -0x1

    .line 275
    .local v2, iResult:I
    :try_start_36
    iget-object v7, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v4, v5, v6, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_36 .. :try_end_3b} :catch_41
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_36 .. :try_end_3b} :catch_69
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_36 .. :try_end_3b} :catch_91

    move-result v2

    .line 288
    :goto_3c
    if-eq v2, v12, :cond_3f

    .line 289
    const/4 v0, 0x0

    :cond_3f
    move v7, v0

    .line 291
    goto :goto_9

    .line 276
    :catch_41
    move-exception v1

    .line 277
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    sget-object v7, Lcom/sec/android/app/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SQLiteFullException updatePlayedTime"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v7, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/app/music/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 279
    iget-object v7, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    goto :goto_3c

    .line 280
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_69
    move-exception v1

    .line 281
    .local v1, e:Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v7, Lcom/sec/android/app/music/common/data/MusicDB;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SQLiteDiskIOException updatePlayedTime"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v7, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/app/music/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 283
    iget-object v7, p0, Lcom/sec/android/app/music/common/data/MusicDB;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    goto :goto_3c

    .line 284
    .end local v1           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_91
    move-exception v1

    .line 285
    .local v1, e:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_3c
.end method
