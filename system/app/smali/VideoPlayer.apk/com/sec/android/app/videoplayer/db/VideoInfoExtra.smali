.class public Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;
.super Ljava/lang/Object;
.source "VideoInfoExtra.java"

# interfaces
.implements Lcom/sec/android/app/videoplayer/db/IVideoSubList;


# static fields
.field private static final AND_IN_WHERE_CLAUSE:Ljava/lang/String; = " AND "

.field private static final EQUALS:Ljava/lang/String; = " = "

.field public static final FAVORITE:I = 0x1

.field public static final INFO_EXTRA_CREATE_INDEX:Ljava/lang/String; = "CREATE INDEX InfoExtra_id ON InfoExtra(_id)"

.field public static final INFO_EXTRA_CREATE_INDEX_ON_KEYS:Ljava/lang/String; = "CREATE INDEX InfoExtra_multikey ON InfoExtra(_id, _data, _size, bucket_id)"

.field public static final INFO_EXTRA_DIRTY_BIT:Ljava/lang/String; = "dirtybit"

.field public static final INFO_EXTRA_IS_FAVORITE:Ljava/lang/String; = "IsFavorite"

.field public static final INFO_EXTRA_PLAYED_WHEN:Ljava/lang/String; = "PlayedWhen"

.field public static final INFO_EXTRA_RESUME_POSITION:Ljava/lang/String; = "ResumePosition"

.field static final INFO_EXTRA_TABLE:Ljava/lang/String; = "InfoExtra"

.field public static final INFO_EXTRA_TABLE_SCHEMA:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS InfoExtra (_id INTEGER, video_uri TEXT, _data TEXT, _size LONG, bucket_id TEXT, PlayedWhen LONG, ResumePosition LONG, IsFavorite INTEGER, dirtybit INTEGER);"

.field public static final INFO_EXTRA_VIDEO_BUCKET_ID:Ljava/lang/String; = "bucket_id"

.field public static final INFO_EXTRA_VIDEO_DATA:Ljava/lang/String; = "_data"

.field public static final INFO_EXTRA_VIDEO_ID:Ljava/lang/String; = "_id"

.field public static final INFO_EXTRA_VIDEO_SIZE:Ljava/lang/String; = "_size"

.field public static final INFO_EXTRA_VIDEO_URI:Ljava/lang/String; = "video_uri"

.field public static final IS_FAVORITE_DEFAULT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "VideoInfoExtra"

.field public static final UNFAVORITE:I

.field private static mInstance:Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;


# instance fields
.field mSelectCols:[Ljava/lang/String;

.field private mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;


# direct methods
.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "video_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "IsFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PlayedWhen"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ResumePosition"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mSelectCols:[Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-direct {v0, p1}, Lcom/sec/android/app/videoplayer/db/DbExec;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    const-string v1, "InfoExtra"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/db/DbExec;->setTable(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/db/DbExec;->setIdColumn(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    const-string v1, "video_uri"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/db/DbExec;->setVideoUriColumn(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;
    .registers 3
    .parameter "db"

    .prologue
    .line 83
    const-class v1, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mInstance:Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;

    if-nez v0, :cond_10

    .line 84
    new-instance v0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mInstance:Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_13

    .line 86
    :goto_e
    monitor-exit v1

    return-object v0

    :cond_10
    :try_start_10
    sget-object v0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mInstance:Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_13

    goto :goto_e

    .line 83
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public add(Landroid/content/ContentValues;)V
    .registers 3
    .parameter "values"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/db/DbExec;->add(Landroid/content/ContentValues;)V

    .line 91
    return-void
.end method

.method public addBookmark(Ljava/lang/String;JJ)I
    .registers 7
    .parameter "uri"
    .parameter "videoId"
    .parameter "curTime"

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public delete(J)I
    .registers 4
    .parameter "id"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/videoplayer/db/DbExec;->delete(J)I

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;)I
    .registers 3
    .parameter "uri"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/db/DbExec;->delete(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteAll()I
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/db/DbExec;->deleteAll()I

    move-result v0

    return v0
.end method

.method public deleteBookmark(JLjava/util/ArrayList;)I
    .registers 5
    .parameter "videoId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 244
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public deleteByKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "data"
    .parameter "size"
    .parameter "bucketId"

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v0, where:Ljava/lang/StringBuilder;
    const-string v1, "_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, "_size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string v1, "bucket_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/videoplayer/db/DbExec;->deleteByKeys(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public deleteByVideoId(J)I
    .registers 4
    .parameter "videoId"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/videoplayer/db/DbExec;->deleteByVideoId(J)I

    move-result v0

    return v0
.end method

.method public deleteByVideoUri(Ljava/lang/String;)I
    .registers 3
    .parameter "uri"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/db/DbExec;->deleteByVideoId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteGarbages()I
    .registers 7

    .prologue
    .line 373
    const/4 v0, 0x0

    .line 375
    .local v0, returnValue:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .local v1, where:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/db/DbExec;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "InfoExtra"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 379
    return v0
.end method

.method public deleteGarbagesWith(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .parameter "videoData"
    .parameter "videoSize"
    .parameter "videoBucketId"

    .prologue
    .line 358
    const/4 v0, 0x0

    .line 360
    .local v0, returnValue:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .local v1, where:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_size = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bucket_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/db/DbExec;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "InfoExtra"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 369
    return v0
.end method

.method public deleteList(Ljava/util/ArrayList;)I
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/db/DbExec;->deleteList(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public getBookmarkList(Ljava/lang/String;J)Ljava/util/ArrayList;
    .registers 5
    .parameter "uri"
    .parameter "videoId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnData(JLjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "id"
    .parameter "column"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/videoplayer/db/DbExec;->getColumnData(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetail(J)Landroid/database/Cursor;
    .registers 6
    .parameter "id"

    .prologue
    .line 144
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "video_uri"

    aput-object v2, v0, v1

    .line 145
    .local v0, cols:[Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v1, p1, p2, v0}, Lcom/sec/android/app/videoplayer/db/DbExec;->getDetail(J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public getFavoriteList()Landroid/database/Cursor;
    .registers 6

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mSelectCols:[Ljava/lang/String;

    const-string v2, "IsFavorite = 1 AND _id > 0"

    const/4 v3, 0x0

    const-string v4, "PlayedWhen DESC"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/videoplayer/db/DbExec;->getList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getIdByName(Ljava/lang/String;)J
    .registers 4
    .parameter "name"

    .prologue
    .line 220
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getInfoByDate()Landroid/database/Cursor;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local v0, sql:Ljava/lang/StringBuilder;
    const-string v1, " SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v1, " \t(strftime(\'%s\', date(PlayedWhen, \'unixepoch\')) * 1) AS RecentDate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v1, "\t, count(*) AS NumOfRecentDate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string v1, " FROM InfoExtra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string v1, " WHERE PlayedWhen is not null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v1, " \tAND _id > 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v1, "\tAND (_data NOT LIKE \'%video-%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string v1, "\t\tOR _data NOT LIKE \'%.3gp\' )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v1, " GROUP BY (strftime(\'%s\', date(PlayedWhen, \'unixepoch\')) * 1) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v1, " ORDER BY (strftime(\'%s\', date(PlayedWhen, \'unixepoch\')) * 1) DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/db/DbExec;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public getList()Landroid/database/Cursor;
    .registers 6

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mSelectCols:[Ljava/lang/String;

    const-string v2, "PlayedWhen is not null AND _id > 0"

    const/4 v3, 0x0

    const-string v4, "(PlayedWhen * 1) DESC"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/videoplayer/db/DbExec;->getList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getList(J)Landroid/database/Cursor;
    .registers 15
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    .line 154
    const/4 v7, 0x0

    .line 156
    .local v7, resultCursor:Landroid/database/Cursor;
    const-string v3, ""

    .line 157
    .local v3, data:Ljava/lang/String;
    const-string v4, ""

    .line 158
    .local v4, size:Ljava/lang/String;
    const-string v5, ""

    .line 160
    .local v5, bucket_id:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getInstance()Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoDetails(J)Landroid/database/Cursor;

    move-result-object v6

    .line 162
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_49

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_49

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 163
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 164
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 165
    const-string v0, "bucket_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    .line 167
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->getList(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 176
    :goto_42
    if-eqz v6, :cond_48

    .line 177
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 178
    const/4 v6, 0x0

    .line 181
    :cond_48
    return-object v7

    .line 170
    :cond_49
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v8, where:Ljava/lang/StringBuilder;
    const-string v0, "_id = ?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mSelectCols:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const-string v10, "video_uri"

    invoke-virtual {v0, v1, v2, v9, v10}, Lcom/sec/android/app/videoplayer/db/DbExec;->getList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_42
.end method

.method public getList(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "id"
    .parameter "data"
    .parameter "size"
    .parameter "bucket_id"

    .prologue
    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v1, where:Ljava/lang/StringBuilder;
    const-string v2, "_id = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v2, "_data = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v2, "_size = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v2, "bucket_id = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, cur:Landroid/database/Cursor;
    :try_start_29
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mSelectCols:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    const/4 v6, 0x2

    aput-object p4, v5, v6

    const/4 v6, 0x3

    aput-object p5, v5, v6

    const-string v6, "video_uri"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/videoplayer/db/DbExec;->getList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_49} :catch_4b

    move-result-object v0

    .line 201
    :goto_4a
    return-object v0

    .line 198
    :catch_4b
    move-exception v2

    goto :goto_4a
.end method

.method public getList(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "uri"

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v0, where:Ljava/lang/StringBuilder;
    const-string v1, "video_uri = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mSelectCols:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v5, "video_uri"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/videoplayer/db/DbExec;->getList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public getListToCheck([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 314
    if-eqz p1, :cond_7

    if-nez p2, :cond_8

    .line 335
    :cond_7
    :goto_7
    return-object v2

    .line 319
    :cond_8
    array-length v3, p1

    array-length v4, p2

    if-ne v3, v4, :cond_7

    .line 323
    if-eqz p2, :cond_62

    array-length v3, p2

    if-lez v3, :cond_62

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .local v1, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    array-length v3, p1

    if-ge v0, v3, :cond_51

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4e

    .line 329
    const-string v3, "AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 332
    :cond_51
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "*"

    aput-object v5, v4, v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2, v2}, Lcom/sec/android/app/videoplayer/db/DbExec;->getList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_7

    .line 335
    .end local v0           #i:I
    .end local v1           #where:Ljava/lang/StringBuilder;
    :cond_62
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "*"

    aput-object v5, v4, v6

    invoke-virtual {v3, v4, v2, v2, v2}, Lcom/sec/android/app/videoplayer/db/DbExec;->getList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_7
.end method

.method public getMostRecentVideoId()Landroid/database/Cursor;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    const-string v1, "(PlayedWhen * 1) DESC"

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/sec/android/app/videoplayer/db/DbExec;->getList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getNameById(J)Ljava/lang/String;
    .registers 4
    .parameter "videoId"

    .prologue
    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTotalCnt(J)I
    .registers 4
    .parameter "videoId"

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public isExistProfileName(Ljava/lang/String;)Z
    .registers 3
    .parameter "name"

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public refreshBookmarkInfo(J)V
    .registers 3
    .parameter "videoId"

    .prologue
    .line 248
    return-void
.end method

.method public update(JLandroid/content/ContentValues;)I
    .registers 9
    .parameter "id"
    .parameter "values"

    .prologue
    const/4 v1, 0x0

    .line 103
    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-gez v2, :cond_8

    .line 119
    :cond_7
    :goto_7
    return v1

    .line 107
    :cond_8
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_7

    .line 111
    const/4 v1, 0x0

    .line 114
    .local v1, returnValue:I
    :try_start_12
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v2, p1, p2, p3}, Lcom/sec/android/app/videoplayer/db/DbExec;->update(JLandroid/content/ContentValues;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_7

    .line 115
    :catch_19
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VideoInfoExtra"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;)I
    .registers 8
    .parameter "video_uri"
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 124
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_f

    .line 140
    :cond_e
    :goto_e
    return v1

    .line 128
    :cond_f
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lt v2, v3, :cond_e

    .line 132
    const/4 v1, 0x0

    .line 135
    .local v1, returnValue:I
    :try_start_18
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/videoplayer/db/DbExec;->update(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1f

    move-result v1

    goto :goto_e

    .line 136
    :catch_1f
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VideoInfoExtra"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public updateFavorite(JI)I
    .registers 7
    .parameter "videoId"
    .parameter "isFavoriteFlag"

    .prologue
    .line 275
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 276
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "IsFavorite"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v1, p1, p2, v0}, Lcom/sec/android/app/videoplayer/db/DbExec;->update(JLandroid/content/ContentValues;)I

    move-result v1

    return v1
.end method

.method public updateIdAndUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 12
    .parameter "videoId"
    .parameter "videoData"
    .parameter "videoSize"
    .parameter "videoBucketId"

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 341
    .local v0, returnValue:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 342
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v3, "video_uri"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://media/external/video/media/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .local v2, where:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_size = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->mVideoDB:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/db/DbExec;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "InfoExtra"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 354
    return v0
.end method
