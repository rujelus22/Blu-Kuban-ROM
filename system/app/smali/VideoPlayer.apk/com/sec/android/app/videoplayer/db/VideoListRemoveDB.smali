.class public Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;
.super Ljava/lang/Object;
.source "VideoListRemoveDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB$SimpleDBHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table remove (_id integer primary key autoincrement, videoId integer, remove boolean, title text not null, duration long, _data text not null);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "RemoveVideo.db"

.field private static final DATABASE_TABLE:Ljava/lang/String; = "remove"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final DURAION_COLUMN:I = 0x6

.field public static final FILENAME_COLUMN:I = 0x5

.field public static final FILEPATH_COLUMN:I = 0x3

.field public static final KEYREFID_COLUMN:I = 0x1

.field public static final KEY_DURATION:Ljava/lang/String; = "duration"

.field public static final KEY_FILENAME:Ljava/lang/String; = "title"

.field public static final KEY_FILEPATH:Ljava/lang/String; = "_data"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_REMOVE:Ljava/lang/String; = "remove"

.field public static final KEY_VIDEOID:Ljava/lang/String; = "videoId"

.field public static final REMOVE_COLUMN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "VideoRemoveList"

.field public static final VIDEO_ID_COLUMN:I = 0x2


# instance fields
.field private dbHelper:Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB$SimpleDBHelper;

.field private mContext:Landroid/content/Context;

.field private mRemoveVideoDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 19
    .parameter "context"

    .prologue
    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;->mRemoveVideoDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 48
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;->dbHelper:Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB$SimpleDBHelper;

    .line 50
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;->mContext:Landroid/content/Context;

    .line 99
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;->mContext:Landroid/content/Context;

    .line 101
    new-instance v2, Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB$SimpleDBHelper;

    const-string v5, "RemoveVideo.db"

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB$SimpleDBHelper;-><init>(Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;->dbHelper:Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB$SimpleDBHelper;

    .line 103
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;->dbHelper:Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB$SimpleDBHelper;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB$SimpleDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 105
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v8, :cond_38

    .line 106
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;->mRemoveVideoDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 141
    :cond_37
    :goto_37
    return-void

    .line 110
    :cond_38
    const-string v3, "VideoRemoveList"

    const-string v5, "new DB create"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    .line 113
    .local v4, cols:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v3

    .line 114
    const/4 v3, 0x1

    const-string v5, "title"

    aput-object v5, v4, v3

    .line 115
    const/4 v3, 0x2

    const-string v5, "duration"

    aput-object v5, v4, v3

    .line 116
    const/4 v3, 0x3

    const-string v5, "_data"

    aput-object v5, v4, v3

    .line 118
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 120
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "title"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 123
    .local v16, result:Landroid/database/Cursor;
    const-string v3, "VideoRemoveList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cursor count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 127
    :cond_8a
    const/4 v3, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 128
    .local v12, filepath:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 129
    .local v11, filename:Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 130
    .local v13, id:J
    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 132
    .local v9, duration:J
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 133
    .local v15, newTaskValues:Landroid/content/ContentValues;
    const-string v3, "_data"

    invoke-virtual {v15, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v3, "remove"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v15, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 135
    const-string v3, "title"

    invoke-virtual {v15, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v3, "duration"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v15, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    const-string v3, "videoId"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v15, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;->mRemoveVideoDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "remove"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 140
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_8a

    goto/16 :goto_37
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;->mRemoveVideoDB:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method


# virtual methods
.method public deleteVideoFile(J)I
    .registers 4
    .parameter "id"

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, updatecnt:I
    return v0
.end method

.method public getRemoveDBCursor(I)Landroid/database/Cursor;
    .registers 12
    .parameter "list"

    .prologue
    const/4 v2, 0x0

    .line 148
    const/4 v8, 0x0

    .line 149
    .local v8, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 150
    .local v3, where:Ljava/lang/String;
    const/4 v9, 0x0

    .line 152
    .local v9, removed:I
    if-nez p1, :cond_30

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;->mRemoveVideoDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "remove"

    const-string v7, "title"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 160
    if-nez v8, :cond_2f

    .line 161
    const-string v0, "VideoRemoveList"

    const-string v1, "getRemoveDBCursor : cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_2f
    return-object v8

    .line 154
    :cond_30
    const/16 v0, 0x8

    if-ne p1, v0, :cond_19

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_19
.end method

.method public getRemoveDBHandle()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;->mRemoveVideoDB:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public updateRemoveDB(Ljava/util/ArrayList;Z)I
    .registers 4
    .parameter
    .parameter "remove"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 168
    .local v0, updatecnt:I
    return v0
.end method
