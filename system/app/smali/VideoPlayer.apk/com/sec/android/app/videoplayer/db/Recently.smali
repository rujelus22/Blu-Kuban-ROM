.class public Lcom/sec/android/app/videoplayer/db/Recently;
.super Ljava/lang/Object;
.source "Recently.java"

# interfaces
.implements Lcom/sec/android/app/videoplayer/db/IVideoSubList;


# static fields
.field public static final RECENTLY_ID:Ljava/lang/String; = "_id"

.field static final RECENTLY_TABLE:Ljava/lang/String; = "recently"

.field public static final RECENTLY_TABLE_SCHEMA:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS recently(_id integer primary key autoincrement, video_uri text );"

.field public static final RECENTLY_VIDEO_URI:Ljava/lang/String; = "video_uri"

.field private static mInstance:Lcom/sec/android/app/videoplayer/db/Recently;


# instance fields
.field private mExedb:Lcom/sec/android/app/videoplayer/db/DbExec;

.field mSelectCols:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "video_uri"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mSelectCols:[Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-direct {v0, p1}, Lcom/sec/android/app/videoplayer/db/DbExec;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mExedb:Lcom/sec/android/app/videoplayer/db/DbExec;

    .line 28
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mExedb:Lcom/sec/android/app/videoplayer/db/DbExec;

    const-string v1, "recently"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/db/DbExec;->setTable(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mExedb:Lcom/sec/android/app/videoplayer/db/DbExec;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/db/DbExec;->setIdColumn(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/sec/android/app/videoplayer/db/Recently;
    .registers 3
    .parameter "db"

    .prologue
    .line 33
    const-class v1, Lcom/sec/android/app/videoplayer/db/Recently;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/videoplayer/db/Recently;->mInstance:Lcom/sec/android/app/videoplayer/db/Recently;

    if-nez v0, :cond_10

    .line 34
    new-instance v0, Lcom/sec/android/app/videoplayer/db/Recently;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/db/Recently;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v0, Lcom/sec/android/app/videoplayer/db/Recently;->mInstance:Lcom/sec/android/app/videoplayer/db/Recently;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_13

    .line 36
    :goto_e
    monitor-exit v1

    return-object v0

    :cond_10
    :try_start_10
    sget-object v0, Lcom/sec/android/app/videoplayer/db/Recently;->mInstance:Lcom/sec/android/app/videoplayer/db/Recently;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_13

    goto :goto_e

    .line 33
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
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mExedb:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/db/DbExec;->add(Landroid/content/ContentValues;)V

    .line 41
    return-void
.end method

.method public addBookmark(Ljava/lang/String;JJ)I
    .registers 7
    .parameter "uri"
    .parameter "videoId"
    .parameter "curTime"

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public delete(J)I
    .registers 4
    .parameter "id"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mExedb:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/videoplayer/db/DbExec;->delete(J)I

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;)I
    .registers 3
    .parameter "string"

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public deleteAll()I
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mExedb:Lcom/sec/android/app/videoplayer/db/DbExec;

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
    .line 113
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public deleteByKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "data"
    .parameter "size"
    .parameter "bucketId"

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public deleteByVideoId(J)I
    .registers 4
    .parameter "video_id"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mExedb:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/videoplayer/db/DbExec;->deleteByVideoId(J)I

    move-result v0

    return v0
.end method

.method public deleteByVideoUri(Ljava/lang/String;)I
    .registers 3
    .parameter "string"

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public deleteGarbages()I
    .registers 2

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public deleteGarbagesWith(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "videoData"
    .parameter "videoSize"
    .parameter "videoBucketId"

    .prologue
    .line 139
    const/4 v0, 0x0

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
    .line 99
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mExedb:Lcom/sec/android/app/videoplayer/db/DbExec;

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
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnData(JLjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "id"
    .parameter "column"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mExedb:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/videoplayer/db/DbExec;->getColumnData(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetail(J)Landroid/database/Cursor;
    .registers 6
    .parameter "id"

    .prologue
    .line 56
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "video_uri"

    aput-object v2, v0, v1

    .line 59
    .local v0, cols:[Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mExedb:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v1, p1, p2, v0}, Lcom/sec/android/app/videoplayer/db/DbExec;->getDetail(J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public getFavoriteList()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIdByName(Ljava/lang/String;)J
    .registers 4
    .parameter "name"

    .prologue
    .line 87
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getInfoByDate()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getList()Landroid/database/Cursor;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mExedb:Lcom/sec/android/app/videoplayer/db/DbExec;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mSelectCols:[Ljava/lang/String;

    const-string v2, "video_uri"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/sec/android/app/videoplayer/db/DbExec;->getList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getList(J)Landroid/database/Cursor;
    .registers 10
    .parameter "id"

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v0, where:Ljava/lang/StringBuilder;
    const-string v1, "video_uri = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mExedb:Lcom/sec/android/app/videoplayer/db/DbExec;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mSelectCols:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "video_uri"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/videoplayer/db/DbExec;->getList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public getList(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7
    .parameter "id"
    .parameter "data"
    .parameter "size"
    .parameter "bucketId"

    .prologue
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method public getList(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 3
    .parameter "string"

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListToCheck([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMostRecentVideoId()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNameById(J)Ljava/lang/String;
    .registers 4
    .parameter "videoId"

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTotalCnt(J)I
    .registers 4
    .parameter "videoId"

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public isExistProfileName(Ljava/lang/String;)Z
    .registers 3
    .parameter "name"

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public refreshBookmarkInfo(J)V
    .registers 3
    .parameter "videoId"

    .prologue
    .line 118
    return-void
.end method

.method public update(JLandroid/content/ContentValues;)I
    .registers 5
    .parameter "id"
    .parameter "values"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mExedb:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/videoplayer/db/DbExec;->update(JLandroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;)I
    .registers 4
    .parameter "videoUri"
    .parameter "contentValues"

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public updateFavorite(JI)I
    .registers 5
    .parameter "videoId"
    .parameter "isFavorite"

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public updateIdAndUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter "videoId"
    .parameter "videoData"
    .parameter "videoSize"
    .parameter "videoBucketId"

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method
