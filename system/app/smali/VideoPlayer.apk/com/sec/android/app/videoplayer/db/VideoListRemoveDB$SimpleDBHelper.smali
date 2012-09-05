.class Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB$SimpleDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "VideoListRemoveDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleDBHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB$SimpleDBHelper;->this$0:Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;

    .line 55
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 56
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 16
    .parameter "_db"

    .prologue
    .line 59
    const-string v1, "create table remove (_id integer primary key autoincrement, videoId integer, remove boolean, title text not null, duration long, _data text not null);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    .line 62
    .local v2, cols:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    .line 63
    const/4 v1, 0x1

    const-string v3, "title"

    aput-object v3, v2, v1

    .line 64
    const/4 v1, 0x2

    const-string v3, "duration"

    aput-object v3, v2, v1

    .line 65
    const/4 v1, 0x3

    const-string v3, "_data"

    aput-object v3, v2, v1

    .line 67
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB$SimpleDBHelper;->this$0:Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;

    #getter for: Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;->access$000(Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 69
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "title"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 72
    .local v13, result:Landroid/database/Cursor;
    const-string v1, "VideoRemoveList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cursor count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 76
    :cond_52
    const/4 v1, 0x3

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 77
    .local v9, filepath:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, filename:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 79
    .local v10, id:J
    const/4 v1, 0x2

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 81
    .local v6, duration:J
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 82
    .local v12, newTaskValues:Landroid/content/ContentValues;
    const-string v1, "_data"

    invoke-virtual {v12, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "remove"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 84
    const-string v1, "title"

    invoke-virtual {v12, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "duration"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    const-string v1, "videoId"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB$SimpleDBHelper;->this$0:Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;

    #getter for: Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;->mRemoveVideoDB:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;->access$100(Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_a5

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB$SimpleDBHelper;->this$0:Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;

    #getter for: Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;->mRemoveVideoDB:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;->access$100(Lcom/sec/android/app/videoplayer/db/VideoListRemoveDB;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "remove"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 90
    :cond_a5
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_52

    .line 91
    .end local v6           #duration:J
    .end local v8           #filename:Ljava/lang/String;
    .end local v9           #filepath:Ljava/lang/String;
    .end local v10           #id:J
    .end local v12           #newTaskValues:Landroid/content/ContentValues;
    :cond_ab
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .parameter "_db"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 94
    return-void
.end method
