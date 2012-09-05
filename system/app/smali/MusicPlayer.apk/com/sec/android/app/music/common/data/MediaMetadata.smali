.class public Lcom/sec/android/app/music/common/data/MediaMetadata;
.super Ljava/lang/Object;
.source "MediaMetadata.java"


# instance fields
.field public album:Ljava/lang/String;

.field public albumImagePath:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public currentAlbumId:I

.field public currentMediaId:J

.field public date:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public filetype:Ljava/lang/String;

.field public genre:Ljava/lang/String;

.field public isParsed:Z

.field private musicDB:Lcom/sec/android/app/music/common/data/MusicDB;

.field public size:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public track:Ljava/lang/String;

.field public year:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/common/data/MusicDB;)V
    .registers 5
    .parameter "musicDB"

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v2, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->currentAlbumId:I

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->currentMediaId:J

    .line 52
    iput-boolean v2, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->isParsed:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->musicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    .line 60
    iput-object p1, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->musicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    .line 61
    return-void
.end method

.method public static getTimeString(IZ)Ljava/lang/String;
    .registers 11
    .parameter "millisecond"
    .parameter "isElapsed"

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 379
    if-nez p0, :cond_22

    .line 380
    const/4 v2, 0x0

    .line 381
    .local v2, sec:I
    const/4 v1, 0x0

    .line 382
    .local v1, min:I
    const/4 v0, 0x0

    .line 400
    .local v0, hr:I
    :goto_9
    if-nez v0, :cond_47

    .line 401
    if-eqz p1, :cond_32

    .line 402
    const-string v3, "%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 409
    :goto_21
    return-object v3

    .line 384
    .end local v0           #hr:I
    .end local v1           #min:I
    .end local v2           #sec:I
    :cond_22
    div-int/lit16 v2, p0, 0x3e8

    .line 389
    .restart local v2       #sec:I
    if-nez v2, :cond_2f

    .line 390
    const/4 v1, 0x0

    .line 391
    .restart local v1       #min:I
    const/4 v0, 0x0

    .line 395
    :goto_28
    rem-int/lit8 v2, v2, 0x3c

    .line 396
    div-int/lit8 v0, v1, 0x3c

    .line 397
    .restart local v0       #hr:I
    rem-int/lit8 v1, v1, 0x3c

    goto :goto_9

    .line 393
    .end local v0           #hr:I
    .end local v1           #min:I
    :cond_2f
    div-int/lit8 v1, v2, 0x3c

    .restart local v1       #min:I
    goto :goto_28

    .line 404
    .restart local v0       #hr:I
    :cond_32
    const-string v3, "-%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    .line 406
    :cond_47
    if-eqz p1, :cond_64

    .line 407
    const-string v3, "%d:%02d:%02d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    .line 409
    :cond_64
    const-string v3, "-%d:%02d:%02d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_21
.end method

.method private parseInternal(Landroid/database/Cursor;)Z
    .registers 14
    .parameter "cursor"

    .prologue
    .line 167
    if-nez p1, :cond_4

    .line 168
    const/4 v8, 0x0

    .line 315
    :goto_3
    return v8

    .line 170
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_f

    .line 171
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 172
    const/4 v8, 0x0

    goto :goto_3

    .line 174
    :cond_f
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 177
    :try_start_12
    sget-object v8, Lcom/sec/android/app/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 186
    .local v5, index:I
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    .line 188
    sget-object v8, Lcom/sec/android/app/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/4 v9, 0x6

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 197
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    .line 199
    sget-object v8, Lcom/sec/android/app/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 208
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    .line 210
    sget-object v8, Lcom/sec/android/app/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/4 v9, 0x7

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 219
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 220
    .local v6, millisecond:I
    int-to-long v8, v6

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/sec/android/app/music/MusicUtils;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->duration:Ljava/lang/String;

    .line 222
    sget-object v8, Lcom/sec/android/app/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 231
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->size:Ljava/lang/String;

    .line 233
    sget-object v8, Lcom/sec/android/app/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 242
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 244
    .local v1, dateLong:J
    sget-object v8, Lcom/sec/android/app/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/16 v9, 0x9

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 253
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->track:Ljava/lang/String;

    .line 255
    sget-object v8, Lcom/sec/android/app/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/16 v9, 0xa

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 264
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->year:Ljava/lang/String;

    .line 266
    sget-object v8, Lcom/sec/android/app/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/16 v9, 0xb

    aget-object v8, v8, v9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 275
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->filetype:Ljava/lang/String;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_a0} :catch_13b

    .line 280
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 281
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 282
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 283
    .local v3, date_:Ljava/util/Date;
    const-string v8, "%04d/%02d/%02d %02d:%02d:%02d"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3}, Ljava/util/Date;->getMonth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v3}, Ljava/util/Date;->getDay()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-virtual {v3}, Ljava/util/Date;->getSeconds()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->date:Ljava/lang/String;

    .line 299
    const-string v8, "album_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->currentAlbumId:I

    .line 300
    iget-object v8, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->musicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    iget v9, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->currentAlbumId:I

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/app/music/common/data/MusicDB;->getAlbumArt(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->albumImagePath:Ljava/lang/String;

    .line 302
    const-string v8, "genre_name"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->genre:Ljava/lang/String;

    .line 304
    const-string v7, "<unknown>"

    .line 305
    .local v7, unknown:Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_128

    .line 306
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    .line 307
    :cond_128
    iget-object v8, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_133

    .line 308
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    .line 310
    :cond_133
    if-eqz p1, :cond_138

    .line 311
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 315
    :cond_138
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 276
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v1           #dateLong:J
    .end local v3           #date_:Ljava/util/Date;
    .end local v5           #index:I
    .end local v6           #millisecond:I
    .end local v7           #unknown:Ljava/lang/String;
    :catch_13b
    move-exception v4

    .line 277
    .local v4, e:Ljava/lang/Exception;
    const/4 v8, 0x0

    goto/16 :goto_3
.end method


# virtual methods
.method public parse(Landroid/net/Uri;)Z
    .registers 8
    .parameter "uri"

    .prologue
    .line 90
    iget-object v2, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->musicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    if-nez v2, :cond_a

    .line 91
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->isParsed:Z

    .line 110
    :goto_7
    iget-boolean v2, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->isParsed:Z

    :goto_9
    return v2

    .line 94
    :cond_a
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 99
    .local v0, audioId:I
    int-to-long v2, v0

    iget-wide v4, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->currentMediaId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1c

    .line 100
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->isParsed:Z

    .line 101
    iget-boolean v2, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->isParsed:Z

    goto :goto_9

    .line 104
    :cond_1c
    iget-object v2, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->musicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    sget-object v3, Lcom/sec/android/app/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/app/music/common/data/MusicDB;->getFileDetails(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 105
    .local v1, c:Landroid/database/Cursor;
    int-to-long v2, v0

    iput-wide v2, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->currentMediaId:J

    .line 107
    invoke-direct {p0, v1}, Lcom/sec/android/app/music/common/data/MediaMetadata;->parseInternal(Landroid/database/Cursor;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/music/common/data/MediaMetadata;->isParsed:Z

    goto :goto_7
.end method

.method public parseForAudioPreview(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 14
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 115
    if-nez p2, :cond_b

    .line 116
    const-string v2, "MediaMetadata"

    const-string v3, "parse() uri==null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_a
    return v0

    .line 120
    :cond_b
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 122
    .local v9, uriPath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 124
    .local v6, c:Landroid/database/Cursor;
    :try_start_10
    const-string v2, "content://media/"

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_10 .. :try_end_25} :catch_7a
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_10 .. :try_end_25} :catch_9b

    move-result-object v6

    .line 158
    :cond_26
    :goto_26
    invoke-direct {p0, v6}, Lcom/sec/android/app/music/common/data/MediaMetadata;->parseInternal(Landroid/database/Cursor;)Z

    move-result v0

    goto :goto_a

    .line 127
    :cond_2b
    :try_start_2b
    const-string v2, "file://"

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 129
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, filePath:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v2, "_data = ?"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v2, "/system/media"

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 136
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 144
    .local v1, tmpUri:Landroid/net/Uri;
    :goto_4b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/music/common/data/MusicDB;->DEFAULT_FILE_DETAIL_COLS:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_26

    .line 137
    .end local v1           #tmpUri:Landroid/net/Uri;
    :cond_61
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 139
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .restart local v1       #tmpUri:Landroid/net/Uri;
    goto :goto_4b

    .line 141
    .end local v1           #tmpUri:Landroid/net/Uri;
    :cond_72
    const-string v2, "MediaMetadata"

    const-string v3, "file:// but not internal or external"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2b .. :try_end_79} :catch_7a
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2b .. :try_end_79} :catch_9b

    goto :goto_a

    .line 149
    .end local v8           #filePath:Ljava/lang/String;
    .end local v10           #where:Ljava/lang/StringBuilder;
    :catch_7a
    move-exception v7

    .line 150
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v0, "MediaMetadata"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException getMusicMainListCursor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {p1}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    goto :goto_26

    .line 153
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_9b
    move-exception v7

    .line 154
    .local v7, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v0, "MediaMetadata"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteDiskIOException getMusicMainListCursor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {p1}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    goto/16 :goto_26
.end method
