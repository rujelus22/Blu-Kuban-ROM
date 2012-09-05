.class public Lcom/sec/android/app/videoplayer/db/VideoDB;
.super Ljava/lang/Object;
.source "VideoDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/db/VideoDB$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final AND_IN_WHERE_CLAUSE:Ljava/lang/String; = " AND "

.field public static final ASCENDING_ORDER:Ljava/lang/String; = " ASC"

.field public static final BRACKET_LEFT:Ljava/lang/String; = "("

.field public static final BRACKET_RIGHT:Ljava/lang/String; = ")"

.field public static final COLUMN_FLAG_BLANK:Ljava/lang/String; = "-103"

.field public static final COLUMN_FLAG_DATE:Ljava/lang/String; = "-101"

.field public static final COLUMN_FLAG_FAVORITE:Ljava/lang/String; = "-104"

.field public static final COLUMN_FLAG_FOLDER:Ljava/lang/String; = "-102"

.field public static final COLUMN_FLAG_TITLE_DUPLICATE:Ljava/lang/String; = "-105"

.field public static final COMMA_AND_SINGLE_SPACE:Ljava/lang/String; = ", "

.field private static final DATABASEVERISON:I = 0x9

.field private static final DATABASE_NAME:Ljava/lang/String; = "tp_video.db"

.field public static final DEFAULT_WHERE_CLAUSE_FOLDER_VIEW:Ljava/lang/String; = "length(trim(_data)) > 0"

.field public static final DESCENDING_ORDER:Ljava/lang/String; = " DESC"

.field public static final DROP_TABLE_IF_EXISTS:Ljava/lang/String; = "DROP TABLE IF EXISTS "

.field public static final EQUALS_QUESTION_MARK:Ljava/lang/String; = " = ?"

.field public static final HISTORY:I = 0x3

.field public static IS_DATA_ONLY:Z = false

.field public static final MULTIPLY_BY_ONE:Ljava/lang/String; = " * 1"

.field public static final NOT_REMOVED:I = 0x0

.field public static final NULL_STRING_VALUE:Ljava/lang/String; = "null"

.field public static final OR_IN_WHERE_CLAUSE:Ljava/lang/String; = " OR "

.field public static final PROFILE:I = 0x4

.field public static final RECENTLY:I = 0x5

.field public static final REMOVED:I = 0x1

.field public static final SELECT_LIST:Ljava/lang/String; = "SELECT_LIST"

.field public static final TAG:Ljava/lang/String; = "VideoDB"

.field private static mInstance:Lcom/sec/android/app/videoplayer/db/VideoDB;


# instance fields
.field private data:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private isFavorite:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mimeType:Ljava/lang/String;

.field private miniThumbMagic:Ljava/lang/String;

.field private playedWhen:Ljava/lang/String;

.field private resumePosition:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private videoId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mInstance:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 408
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->IS_DATA_ONLY:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    .line 63
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    .line 64
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    .line 109
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->openDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/db/VideoDB;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->updateDatabases(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/VideoDB;
    .registers 3
    .parameter "context"

    .prologue
    .line 123
    const-class v1, Lcom/sec/android/app/videoplayer/db/VideoDB;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mInstance:Lcom/sec/android/app/videoplayer/db/VideoDB;

    if-nez v0, :cond_10

    .line 124
    new-instance v0, Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mInstance:Lcom/sec/android/app/videoplayer/db/VideoDB;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_13

    .line 126
    :goto_e
    monitor-exit v1

    return-object v0

    :cond_10
    :try_start_10
    sget-object v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mInstance:Lcom/sec/android/app/videoplayer/db/VideoDB;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_13

    goto :goto_e

    .line 123
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private excludeDRMFiles(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .registers 13
    .parameter "cursor"
    .parameter "mListType"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 358
    if-eqz p1, :cond_13

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lt v2, v5, :cond_13

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 359
    :cond_13
    if-eqz p1, :cond_19

    .line 360
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 361
    const/4 p1, 0x0

    .line 363
    :cond_19
    const/4 v1, 0x0

    .line 405
    :cond_1a
    :goto_1a
    return-object v1

    .line 366
    :cond_1b
    invoke-static {p2}, Lcom/sec/android/app/videoplayer/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, cols:[Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 370
    .local v1, cursorToReturn:Landroid/database/MatrixCursor;
    :cond_24
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    .line 371
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    .line 372
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    .line 373
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    .line 374
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    .line 375
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    .line 376
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 377
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 378
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    .line 380
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->updateOMADRMInfo(Ljava/lang/String;)Z

    .line 382
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsDrm(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b2

    .line 383
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    aput-object v3, v2, v9

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 395
    :cond_b2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_24

    .line 397
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroid/database/MatrixCursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 398
    if-eqz v1, :cond_c6

    .line 399
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->close()V

    .line 400
    const/4 v1, 0x0

    .line 402
    :cond_c6
    const/4 v1, 0x0

    goto/16 :goto_1a
.end method

.method private getAllVideoCursorToSelect(I)Landroid/database/Cursor;
    .registers 21
    .parameter "mListType"

    .prologue
    .line 412
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/videoplayer/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v13

    .line 413
    .local v13, cols:[Ljava/lang/String;
    new-instance v15, Landroid/database/MatrixCursor;

    invoke-direct {v15, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 414
    .local v15, cursorToReturn:Landroid/database/MatrixCursor;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getSortOrderString()Ljava/lang/String;

    move-result-object v6

    .line 415
    .local v6, orderByClause:Ljava/lang/String;
    const/16 v16, 0x0

    .line 416
    .local v16, cursorVideo:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 417
    .local v14, cursorInfoExtra:Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 422
    .local v8, tempVideoId:J
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .local v18, stringBuilder:Ljava/lang/StringBuilder;
    const-string v1, "length(trim(_data)) > 0"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/ListType;->getDefaultVideoColumns()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 432
    if-eqz v16, :cond_3e

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_54

    .line 433
    :cond_3e
    if-eqz v16, :cond_45

    .line 434
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_43
    .catchall {:try_start_1e .. :try_end_43} :catchall_284
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_43} :catch_253

    .line 435
    const/16 v16, 0x0

    .line 437
    :cond_45
    const/4 v1, 0x0

    .line 505
    if-eqz v16, :cond_4d

    .line 506
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 507
    const/16 v16, 0x0

    .line 510
    :cond_4d
    if-eqz v14, :cond_53

    .line 511
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 512
    const/4 v14, 0x0

    .line 520
    :cond_53
    :goto_53
    return-object v1

    .line 440
    :cond_54
    :try_start_54
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_20f

    .line 443
    :cond_5a
    const-string v1, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 444
    const-string v1, "_data"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 445
    .local v10, videoFilePath:Ljava/lang/String;
    const-string v1, "_size"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 446
    .local v11, size:Ljava/lang/String;
    const-string v1, "bucket_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 447
    .local v12, bucket_id:Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v7

    invoke-interface/range {v7 .. v12}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->getList(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 449
    const-string v1, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    .line 450
    const-string v1, "mini_thumb_magic"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    .line 451
    const-string v1, "title"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    .line 452
    const-string v1, "duration"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    .line 453
    const-string v1, "_data"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    .line 454
    const-string v1, "mime_type"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    .line 456
    if-eqz v14, :cond_11a

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_224

    .line 457
    :cond_11a
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 458
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 459
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    .line 467
    :goto_12c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    if-eqz v1, :cond_14a

    const-string v1, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14a

    const-string v1, "null"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_150

    .line 468
    :cond_14a
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    .line 470
    :cond_150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    if-eqz v1, :cond_16e

    const-string v1, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    const-string v1, "null"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_174

    .line 471
    :cond_16e
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 473
    :cond_174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    if-eqz v1, :cond_192

    const-string v1, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_192

    const-string v1, "null"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_198

    .line 474
    :cond_192
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 476
    :cond_198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    if-eqz v1, :cond_1b6

    const-string v1, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b6

    const-string v1, "null"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1bc

    .line 477
    :cond_1b6
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    .line 480
    :cond_1bc
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v15, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 492
    if-eqz v14, :cond_209

    .line 493
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 494
    const/4 v14, 0x0

    .line 496
    :cond_209
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_20c
    .catchall {:try_start_54 .. :try_end_20c} :catchall_284
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_20c} :catch_253

    move-result v1

    if-nez v1, :cond_5a

    .line 505
    .end local v10           #videoFilePath:Ljava/lang/String;
    .end local v11           #size:Ljava/lang/String;
    .end local v12           #bucket_id:Ljava/lang/String;
    :cond_20f
    if-eqz v16, :cond_216

    .line 506
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 507
    const/16 v16, 0x0

    .line 510
    :cond_216
    if-eqz v14, :cond_21c

    .line 511
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 512
    const/4 v14, 0x0

    .line 516
    :cond_21c
    :goto_21c
    if-eqz v15, :cond_221

    .line 517
    invoke-virtual {v15}, Landroid/database/MatrixCursor;->moveToFirst()Z

    :cond_221
    move-object v1, v15

    .line 520
    goto/16 :goto_53

    .line 461
    .restart local v10       #videoFilePath:Ljava/lang/String;
    .restart local v11       #size:Ljava/lang/String;
    .restart local v12       #bucket_id:Ljava/lang/String;
    :cond_224
    :try_start_224
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 462
    const-string v1, "IsFavorite"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 463
    const-string v1, "PlayedWhen"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 464
    const-string v1, "ResumePosition"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;
    :try_end_251
    .catchall {:try_start_224 .. :try_end_251} :catchall_284
    .catch Ljava/lang/Exception; {:try_start_224 .. :try_end_251} :catch_253

    goto/16 :goto_12c

    .line 498
    .end local v10           #videoFilePath:Ljava/lang/String;
    .end local v11           #size:Ljava/lang/String;
    .end local v12           #bucket_id:Ljava/lang/String;
    :catch_253
    move-exception v17

    .line 499
    .local v17, e:Ljava/lang/Exception;
    :try_start_254
    const-string v1, "VideoDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllVideoCursorToSelect() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    if-eqz v15, :cond_276

    .line 501
    invoke-virtual {v15}, Landroid/database/MatrixCursor;->close()V
    :try_end_275
    .catchall {:try_start_254 .. :try_end_275} :catchall_284

    .line 502
    const/4 v15, 0x0

    .line 505
    :cond_276
    if-eqz v16, :cond_27d

    .line 506
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 507
    const/16 v16, 0x0

    .line 510
    :cond_27d
    if-eqz v14, :cond_21c

    .line 511
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 512
    const/4 v14, 0x0

    goto :goto_21c

    .line 505
    .end local v17           #e:Ljava/lang/Exception;
    :catchall_284
    move-exception v1

    if-eqz v16, :cond_28c

    .line 506
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 507
    const/16 v16, 0x0

    .line 510
    :cond_28c
    if-eqz v14, :cond_292

    .line 511
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 512
    const/4 v14, 0x0

    :cond_292
    throw v1
.end method

.method private getDefaultWhereClause()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1584
    .local v0, stringBuilder:Ljava/lang/StringBuilder;
    const-string v1, "length(trim(_data)) > 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getFolderListVideoCursorToSelect(II)Landroid/database/Cursor;
    .registers 22
    .parameter "mListType"
    .parameter "bucket_id"

    .prologue
    .line 524
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/videoplayer/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v13

    .line 525
    .local v13, cols:[Ljava/lang/String;
    new-instance v15, Landroid/database/MatrixCursor;

    invoke-direct {v15, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 526
    .local v15, cursorToReturn:Landroid/database/MatrixCursor;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getSortOrderString()Ljava/lang/String;

    move-result-object v6

    .line 527
    .local v6, orderByClause:Ljava/lang/String;
    const/16 v16, 0x0

    .line 528
    .local v16, cursorVideo:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 529
    .local v14, cursorInfoExtra:Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 534
    .local v8, tempVideoId:J
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    .local v18, stringBuilder:Ljava/lang/StringBuilder;
    const-string v1, "length(trim(_data)) > 0"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND bucket_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :try_start_38
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/ListType;->getDefaultVideoColumns()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 545
    if-eqz v16, :cond_58

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_6e

    .line 546
    :cond_58
    if-eqz v16, :cond_5f

    .line 547
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_5d
    .catchall {:try_start_38 .. :try_end_5d} :catchall_29e
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_5d} :catch_26d

    .line 548
    const/16 v16, 0x0

    .line 550
    :cond_5f
    const/4 v1, 0x0

    .line 618
    if-eqz v16, :cond_67

    .line 619
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 620
    const/16 v16, 0x0

    .line 623
    :cond_67
    if-eqz v14, :cond_6d

    .line 624
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 625
    const/4 v14, 0x0

    .line 633
    :cond_6d
    :goto_6d
    return-object v1

    .line 553
    :cond_6e
    :try_start_6e
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_229

    .line 556
    :cond_74
    const-string v1, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 557
    const-string v1, "_data"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 558
    .local v10, videoFilePath:Ljava/lang/String;
    const-string v1, "_size"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 559
    .local v11, size:Ljava/lang/String;
    const-string v1, "bucket_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 560
    .local v12, mbucket_id:Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v7

    invoke-interface/range {v7 .. v12}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->getList(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 562
    const-string v1, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    .line 563
    const-string v1, "mini_thumb_magic"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    .line 564
    const-string v1, "title"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    .line 565
    const-string v1, "duration"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    .line 566
    const-string v1, "_data"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    .line 567
    const-string v1, "mime_type"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    .line 569
    if-eqz v14, :cond_134

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_23e

    .line 570
    :cond_134
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 571
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 572
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    .line 580
    :goto_146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    if-eqz v1, :cond_164

    const-string v1, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_164

    const-string v1, "null"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16a

    .line 581
    :cond_164
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    .line 583
    :cond_16a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    if-eqz v1, :cond_188

    const-string v1, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_188

    const-string v1, "null"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 584
    :cond_188
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 586
    :cond_18e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    if-eqz v1, :cond_1ac

    const-string v1, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1ac

    const-string v1, "null"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 587
    :cond_1ac
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 589
    :cond_1b2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    if-eqz v1, :cond_1d0

    const-string v1, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d0

    const-string v1, "null"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d6

    .line 590
    :cond_1d0
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    .line 593
    :cond_1d6
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v15, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 605
    if-eqz v14, :cond_223

    .line 606
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 607
    const/4 v14, 0x0

    .line 609
    :cond_223
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_226
    .catchall {:try_start_6e .. :try_end_226} :catchall_29e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_226} :catch_26d

    move-result v1

    if-nez v1, :cond_74

    .line 618
    .end local v10           #videoFilePath:Ljava/lang/String;
    .end local v11           #size:Ljava/lang/String;
    .end local v12           #mbucket_id:Ljava/lang/String;
    :cond_229
    if-eqz v16, :cond_230

    .line 619
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 620
    const/16 v16, 0x0

    .line 623
    :cond_230
    if-eqz v14, :cond_236

    .line 624
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 625
    const/4 v14, 0x0

    .line 629
    :cond_236
    :goto_236
    if-eqz v15, :cond_23b

    .line 630
    invoke-virtual {v15}, Landroid/database/MatrixCursor;->moveToFirst()Z

    :cond_23b
    move-object v1, v15

    .line 633
    goto/16 :goto_6d

    .line 574
    .restart local v10       #videoFilePath:Ljava/lang/String;
    .restart local v11       #size:Ljava/lang/String;
    .restart local v12       #mbucket_id:Ljava/lang/String;
    :cond_23e
    :try_start_23e
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 575
    const-string v1, "IsFavorite"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 576
    const-string v1, "PlayedWhen"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 577
    const-string v1, "ResumePosition"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;
    :try_end_26b
    .catchall {:try_start_23e .. :try_end_26b} :catchall_29e
    .catch Ljava/lang/Exception; {:try_start_23e .. :try_end_26b} :catch_26d

    goto/16 :goto_146

    .line 611
    .end local v10           #videoFilePath:Ljava/lang/String;
    .end local v11           #size:Ljava/lang/String;
    .end local v12           #mbucket_id:Ljava/lang/String;
    :catch_26d
    move-exception v17

    .line 612
    .local v17, e:Ljava/lang/Exception;
    :try_start_26e
    const-string v1, "VideoDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllVideoCursorToSelect() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    if-eqz v15, :cond_290

    .line 614
    invoke-virtual {v15}, Landroid/database/MatrixCursor;->close()V
    :try_end_28f
    .catchall {:try_start_26e .. :try_end_28f} :catchall_29e

    .line 615
    const/4 v15, 0x0

    .line 618
    :cond_290
    if-eqz v16, :cond_297

    .line 619
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 620
    const/16 v16, 0x0

    .line 623
    :cond_297
    if-eqz v14, :cond_236

    .line 624
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 625
    const/4 v14, 0x0

    goto :goto_236

    .line 618
    .end local v17           #e:Ljava/lang/Exception;
    :catchall_29e
    move-exception v1

    if-eqz v16, :cond_2a6

    .line 619
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 620
    const/16 v16, 0x0

    .line 623
    :cond_2a6
    if-eqz v14, :cond_2ac

    .line 624
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 625
    const/4 v14, 0x0

    :cond_2ac
    throw v1
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/videoplayer/db/VideoDB;
    .registers 2

    .prologue
    .line 131
    const-class v0, Lcom/sec/android/app/videoplayer/db/VideoDB;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/sec/android/app/videoplayer/db/VideoDB;->mInstance:Lcom/sec/android/app/videoplayer/db/VideoDB;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSortOrderString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 164
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    move-result-object v1

    .line 165
    .local v1, sharedPeferenceManager:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;
    const-string v3, "sortorder"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->loadIntKey(Ljava/lang/String;I)I

    move-result v2

    .line 167
    .local v2, sortOrder:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v0, sb:Ljava/lang/StringBuilder;
    if-nez v2, :cond_1e

    .line 170
    const-string v3, "title ASC"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :goto_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 171
    :cond_1e
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b

    .line 172
    const-string v3, "(date_added * 1) DESC"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v3, "(date_modified * 1) DESC"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v3, "(datetaken * 1) DESC"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 177
    :cond_3b
    const/4 v3, 0x2

    if-ne v2, v3, :cond_44

    .line 178
    const-string v3, "(_size * 1) DESC"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 179
    :cond_44
    const/4 v3, 0x3

    if-ne v2, v3, :cond_4d

    .line 180
    const-string v3, "mime_type ASC"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 182
    :cond_4d
    const-string v3, "title ASC"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19
.end method

.method private getVideoCursorByFavorite(II)Landroid/database/Cursor;
    .registers 15
    .parameter "mListType"
    .parameter "columnCnt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x1

    .line 989
    invoke-static {p1}, Lcom/sec/android/app/videoplayer/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v6

    .line 990
    .local v6, cols:[Ljava/lang/String;
    new-instance v8, Landroid/database/MatrixCursor;

    invoke-direct {v8, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 992
    .local v8, cursorToReturn:Landroid/database/MatrixCursor;
    const/4 v9, 0x0

    .line 993
    .local v9, cursorVideo:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 996
    .local v7, cursorRecently:Landroid/database/Cursor;
    const/4 v1, 0x5

    :try_start_e
    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->getFavoriteList()Landroid/database/Cursor;

    move-result-object v7

    .line 998
    if-eqz v7, :cond_1e

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, v11, :cond_37

    .line 999
    :cond_1e
    if-eqz v7, :cond_24

    .line 1000
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1001
    const/4 v7, 0x0

    .line 1003
    :cond_24
    if-eqz v8, :cond_2a

    .line 1004
    invoke-virtual {v8}, Landroid/database/MatrixCursor;->close()V
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_1e3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_29} :catch_1b3

    .line 1005
    const/4 v8, 0x0

    .line 1071
    :cond_2a
    if-eqz v9, :cond_30

    .line 1072
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1073
    const/4 v9, 0x0

    .line 1075
    :cond_30
    if-eqz v7, :cond_36

    .line 1076
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1077
    const/4 v7, 0x0

    .line 1085
    :cond_36
    :goto_36
    return-object v0

    .line 1011
    :cond_37
    if-eqz v7, :cond_19f

    :try_start_39
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_19f

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_19f

    .line 1013
    :cond_45
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/ListType;->getDefaultVideoColumns()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1020
    if-eqz v9, :cond_199

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v11, :cond_199

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_199

    .line 1021
    const-string v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    .line 1022
    const-string v0, "mini_thumb_magic"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    .line 1023
    const-string v0, "title"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    .line 1024
    const-string v0, "duration"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    .line 1025
    const-string v0, "_data"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    .line 1026
    const-string v0, "mime_type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    .line 1028
    const-string v0, "IsFavorite"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 1029
    const-string v0, "PlayedWhen"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 1030
    const-string v0, "ResumePosition"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    .line 1032
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    if-eqz v0, :cond_106

    const-string v0, ""

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    const-string v0, "null"

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 1033
    :cond_106
    const-string v0, "0"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    .line 1035
    :cond_10a
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    if-eqz v0, :cond_122

    const-string v0, ""

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_122

    const-string v0, "null"

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 1036
    :cond_122
    const-string v0, "0"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 1038
    :cond_126
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    if-eqz v0, :cond_13e

    const-string v0, ""

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13e

    const-string v0, "null"

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_142

    .line 1039
    :cond_13e
    const-string v0, "0"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 1041
    :cond_142
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    if-eqz v0, :cond_15a

    const-string v0, ""

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15a

    const-string v0, "null"

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 1042
    :cond_15a
    const-string v0, "0"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    .line 1045
    :cond_15e
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1057
    if-eqz v9, :cond_199

    .line 1058
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1059
    const/4 v9, 0x0

    .line 1062
    :cond_199
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_19c
    .catchall {:try_start_39 .. :try_end_19c} :catchall_1e3
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_19c} :catch_1b3

    move-result v0

    if-nez v0, :cond_45

    .line 1071
    :cond_19f
    if-eqz v9, :cond_1a5

    .line 1072
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1073
    const/4 v9, 0x0

    .line 1075
    :cond_1a5
    if-eqz v7, :cond_1ab

    .line 1076
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1077
    const/4 v7, 0x0

    .line 1081
    :cond_1ab
    :goto_1ab
    if-eqz v8, :cond_1b0

    .line 1082
    invoke-virtual {v8}, Landroid/database/MatrixCursor;->moveToFirst()Z

    :cond_1b0
    move-object v0, v8

    .line 1085
    goto/16 :goto_36

    .line 1064
    :catch_1b3
    move-exception v10

    .line 1065
    .local v10, e:Ljava/lang/Exception;
    :try_start_1b4
    const-string v0, "VideoDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoCursorByRecent() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    if-eqz v8, :cond_1d6

    .line 1067
    invoke-virtual {v8}, Landroid/database/MatrixCursor;->close()V
    :try_end_1d5
    .catchall {:try_start_1b4 .. :try_end_1d5} :catchall_1e3

    .line 1068
    const/4 v8, 0x0

    .line 1071
    :cond_1d6
    if-eqz v9, :cond_1dc

    .line 1072
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1073
    const/4 v9, 0x0

    .line 1075
    :cond_1dc
    if-eqz v7, :cond_1ab

    .line 1076
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1077
    const/4 v7, 0x0

    goto :goto_1ab

    .line 1071
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_1e3
    move-exception v0

    if-eqz v9, :cond_1ea

    .line 1072
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1073
    const/4 v9, 0x0

    .line 1075
    :cond_1ea
    if-eqz v7, :cond_1f0

    .line 1076
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1077
    const/4 v7, 0x0

    :cond_1f0
    throw v0
.end method

.method private getVideoCursorByFolder(I)Landroid/database/Cursor;
    .registers 27
    .parameter "mListType"

    .prologue
    .line 1089
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/videoplayer/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v14

    .line 1090
    .local v14, cols:[Ljava/lang/String;
    new-instance v18, Landroid/database/MatrixCursor;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1092
    .local v18, cursorToReturnPre:Landroid/database/MatrixCursor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bucket_display_name ASC, bucket_id ASC, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getSortOrderString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1099
    .local v7, orderByClause:Ljava/lang/String;
    const/16 v19, 0x0

    .line 1102
    .local v19, cursorVideo:Landroid/database/Cursor;
    :try_start_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/ListType;->getDefaultVideoColumns()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "length(trim(_data)) > 0"

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_38} :catch_4c

    move-result-object v19

    .line 1115
    :cond_39
    :goto_39
    if-eqz v19, :cond_42

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_71

    .line 1116
    :cond_42
    if-eqz v19, :cond_49

    .line 1117
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1118
    const/16 v19, 0x0

    .line 1120
    :cond_49
    const/16 v17, 0x0

    .line 1279
    :goto_4b
    return-object v17

    .line 1107
    :catch_4c
    move-exception v20

    .line 1108
    .local v20, e:Ljava/lang/Exception;
    const-string v2, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursorVideo retrieval failed. - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    if-eqz v19, :cond_39

    .line 1110
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1111
    const/16 v19, 0x0

    goto :goto_39

    .line 1123
    .end local v20           #e:Ljava/lang/Exception;
    :cond_71
    const/16 v16, 0x0

    .line 1124
    .local v16, cursorInfoExtra:Landroid/database/Cursor;
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1131
    :cond_76
    :try_start_76
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 1132
    .local v9, tempVideoId:J
    const-string v2, "_data"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1133
    .local v11, videoFilePath:Ljava/lang/String;
    const-string v2, "_size"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1134
    .local v12, size:Ljava/lang/String;
    const-string v2, "bucket_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1135
    .local v13, bucket_id:Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v8

    invoke-interface/range {v8 .. v13}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->getList(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1137
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    .line 1138
    const-string v2, "mini_thumb_magic"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    .line 1139
    const-string v2, "title"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    .line 1140
    const-string v2, "duration"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    .line 1141
    const-string v2, "_data"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    .line 1142
    const-string v2, "mime_type"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    .line 1144
    if-eqz v16, :cond_136

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_265

    .line 1145
    :cond_136
    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 1146
    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 1147
    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    .line 1156
    :goto_148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    if-eqz v2, :cond_166

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_166

    const-string v2, "null"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16c

    .line 1157
    :cond_166
    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    .line 1159
    :cond_16c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    if-eqz v2, :cond_18a

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18a

    const-string v2, "null"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_190

    .line 1160
    :cond_18a
    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 1162
    :cond_190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    if-eqz v2, :cond_1ae

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ae

    const-string v2, "null"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b4

    .line 1163
    :cond_1ae
    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 1165
    :cond_1b4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    if-eqz v2, :cond_1d2

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d2

    const-string v2, "null"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d8

    .line 1166
    :cond_1d2
    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    .line 1169
    :cond_1d8
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    aput-object v4, v2, v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1181
    if-eqz v16, :cond_228

    .line 1182
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1183
    const/16 v16, 0x0

    .line 1185
    :cond_228
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_22b
    .catchall {:try_start_76 .. :try_end_22b} :catchall_2fa
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_22b} :catch_2a0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_76 .. :try_end_22b} :catch_2cd

    move-result v2

    if-nez v2, :cond_76

    .line 1191
    if-eqz v19, :cond_235

    .line 1192
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1193
    const/16 v19, 0x0

    .line 1196
    :cond_235
    if-eqz v16, :cond_23c

    .line 1197
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1198
    const/16 v16, 0x0

    .line 1202
    .end local v9           #tempVideoId:J
    .end local v11           #videoFilePath:Ljava/lang/String;
    .end local v12           #size:Ljava/lang/String;
    .end local v13           #bucket_id:Ljava/lang/String;
    :cond_23c
    :goto_23c
    new-instance v17, Landroid/database/MatrixCursor;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1203
    .local v17, cursorToReturn:Landroid/database/MatrixCursor;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->infoByFolder()Landroid/database/Cursor;

    move-result-object v15

    .line 1204
    .local v15, cursorInfoByFolder:Landroid/database/Cursor;
    const-string v21, ""

    .line 1205
    .local v21, folderName:Ljava/lang/String;
    const/16 v23, 0x0

    .line 1207
    .local v23, numOfFiles:I
    if-eqz v15, :cond_254

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_30a

    .line 1208
    :cond_254
    if-eqz v15, :cond_25a

    .line 1209
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1210
    const/4 v15, 0x0

    .line 1212
    :cond_25a
    if-eqz v17, :cond_261

    .line 1213
    invoke-virtual/range {v17 .. v17}, Landroid/database/MatrixCursor;->close()V

    .line 1214
    const/16 v17, 0x0

    :cond_261
    move-object/from16 v17, v18

    .line 1217
    goto/16 :goto_4b

    .line 1149
    .end local v15           #cursorInfoByFolder:Landroid/database/Cursor;
    .end local v17           #cursorToReturn:Landroid/database/MatrixCursor;
    .end local v21           #folderName:Ljava/lang/String;
    .end local v23           #numOfFiles:I
    .restart local v9       #tempVideoId:J
    .restart local v11       #videoFilePath:Ljava/lang/String;
    .restart local v12       #size:Ljava/lang/String;
    .restart local v13       #bucket_id:Ljava/lang/String;
    :cond_265
    :try_start_265
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1151
    const-string v2, "IsFavorite"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 1152
    const-string v2, "PlayedWhen"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 1153
    const-string v2, "ResumePosition"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;
    :try_end_29e
    .catchall {:try_start_265 .. :try_end_29e} :catchall_2fa
    .catch Ljava/lang/Exception; {:try_start_265 .. :try_end_29e} :catch_2a0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_265 .. :try_end_29e} :catch_2cd

    goto/16 :goto_148

    .line 1186
    .end local v9           #tempVideoId:J
    .end local v11           #videoFilePath:Ljava/lang/String;
    .end local v12           #size:Ljava/lang/String;
    .end local v13           #bucket_id:Ljava/lang/String;
    :catch_2a0
    move-exception v20

    .line 1187
    .restart local v20       #e:Ljava/lang/Exception;
    :try_start_2a1
    const-string v2, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoCursorByFolder() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2bd
    .catchall {:try_start_2a1 .. :try_end_2bd} :catchall_2fa

    .line 1191
    if-eqz v19, :cond_2c4

    .line 1192
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1193
    const/16 v19, 0x0

    .line 1196
    :cond_2c4
    if-eqz v16, :cond_23c

    .line 1197
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1198
    const/16 v16, 0x0

    goto/16 :goto_23c

    .line 1188
    .end local v20           #e:Ljava/lang/Exception;
    :catch_2cd
    move-exception v24

    .line 1189
    .local v24, oome:Ljava/lang/OutOfMemoryError;
    :try_start_2ce
    const-string v2, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoCursorByFolder() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ea
    .catchall {:try_start_2ce .. :try_end_2ea} :catchall_2fa

    .line 1191
    if-eqz v19, :cond_2f1

    .line 1192
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1193
    const/16 v19, 0x0

    .line 1196
    :cond_2f1
    if-eqz v16, :cond_23c

    .line 1197
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1198
    const/16 v16, 0x0

    goto/16 :goto_23c

    .line 1191
    .end local v24           #oome:Ljava/lang/OutOfMemoryError;
    :catchall_2fa
    move-exception v2

    if-eqz v19, :cond_302

    .line 1192
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1193
    const/16 v19, 0x0

    .line 1196
    :cond_302
    if-eqz v16, :cond_309

    .line 1197
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1198
    const/16 v16, 0x0

    :cond_309
    throw v2

    .line 1222
    .restart local v15       #cursorInfoByFolder:Landroid/database/Cursor;
    .restart local v17       #cursorToReturn:Landroid/database/MatrixCursor;
    .restart local v21       #folderName:Ljava/lang/String;
    .restart local v23       #numOfFiles:I
    :cond_30a
    :try_start_30a
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1223
    invoke-virtual/range {v18 .. v18}, Landroid/database/MatrixCursor;->moveToFirst()Z

    .line 1227
    :cond_310
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1228
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 1230
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "-102"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v4, v2, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1232
    const/16 v22, 0x0

    .local v22, i:I
    :goto_37c
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_436

    .line 1234
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    .line 1235
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    .line 1236
    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    .line 1237
    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    .line 1238
    const/4 v2, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    .line 1239
    const/4 v2, 0x5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    .line 1240
    const/4 v2, 0x6

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 1241
    const/4 v2, 0x7

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 1242
    const/16 v2, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    .line 1244
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    aput-object v4, v2, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1255
    invoke-virtual/range {v18 .. v18}, Landroid/database/MatrixCursor;->moveToNext()Z

    .line 1232
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_37c

    .line 1257
    :cond_436
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_439
    .catchall {:try_start_30a .. :try_end_439} :catchall_482
    .catch Ljava/lang/Exception; {:try_start_30a .. :try_end_439} :catch_44e

    move-result v2

    if-nez v2, :cond_310

    .line 1267
    if-eqz v15, :cond_442

    .line 1268
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1269
    const/4 v15, 0x0

    .line 1272
    :cond_442
    if-eqz v18, :cond_449

    .line 1273
    invoke-virtual/range {v18 .. v18}, Landroid/database/MatrixCursor;->close()V

    .line 1274
    const/16 v18, 0x0

    .line 1278
    .end local v22           #i:I
    :cond_449
    :goto_449
    invoke-virtual/range {v17 .. v17}, Landroid/database/MatrixCursor;->moveToFirst()Z

    goto/16 :goto_4b

    .line 1258
    :catch_44e
    move-exception v20

    .line 1259
    .restart local v20       #e:Ljava/lang/Exception;
    :try_start_44f
    const-string v2, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoCursorByFolder() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    if-eqz v17, :cond_472

    .line 1262
    invoke-virtual/range {v17 .. v17}, Landroid/database/MatrixCursor;->close()V
    :try_end_470
    .catchall {:try_start_44f .. :try_end_470} :catchall_482

    .line 1263
    const/16 v17, 0x0

    .line 1265
    :cond_472
    move-object/from16 v17, v18

    .line 1267
    if-eqz v15, :cond_47a

    .line 1268
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1269
    const/4 v15, 0x0

    .line 1272
    :cond_47a
    if-eqz v18, :cond_449

    .line 1273
    invoke-virtual/range {v18 .. v18}, Landroid/database/MatrixCursor;->close()V

    .line 1274
    const/16 v18, 0x0

    goto :goto_449

    .line 1267
    .end local v20           #e:Ljava/lang/Exception;
    :catchall_482
    move-exception v2

    if-eqz v15, :cond_489

    .line 1268
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1269
    const/4 v15, 0x0

    .line 1272
    :cond_489
    if-eqz v18, :cond_490

    .line 1273
    invoke-virtual/range {v18 .. v18}, Landroid/database/MatrixCursor;->close()V

    .line 1274
    const/16 v18, 0x0

    :cond_490
    throw v2
.end method

.method private getVideoCursorByFolderList(I)Landroid/database/Cursor;
    .registers 11
    .parameter "mListType"

    .prologue
    const/4 v8, 0x0

    .line 1283
    const-string v5, "bucket_display_name ASC, bucket_id ASC"

    .line 1284
    .local v5, orderByClause:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1287
    .local v6, cursorVideo:Landroid/database/Cursor;
    :try_start_4
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/ListType;->getFolderColumns()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "length(trim(_data)) > 0"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1292
    const-string v0, "VideoDB"

    const-string v1, "length(trim(_data)) > 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_2f

    .line 1301
    :cond_1e
    :goto_1e
    if-eqz v6, :cond_27

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_53

    .line 1302
    :cond_27
    if-eqz v6, :cond_2d

    .line 1303
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1304
    const/4 v6, 0x0

    :cond_2d
    move-object v0, v8

    .line 1310
    :goto_2e
    return-object v0

    .line 1293
    :catch_2f
    move-exception v7

    .line 1294
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "VideoDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursorVideo retrieval failed. - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    if-eqz v6, :cond_1e

    .line 1296
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1297
    const/4 v6, 0x0

    goto :goto_1e

    .line 1308
    .end local v7           #e:Ljava/lang/Exception;
    :cond_53
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-object v0, v6

    .line 1310
    goto :goto_2e
.end method

.method private getVideoCursorExceptMyVideo(I)Landroid/database/Cursor;
    .registers 20
    .parameter "mListType"

    .prologue
    .line 637
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/videoplayer/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v13

    .line 638
    .local v13, cols:[Ljava/lang/String;
    new-instance v15, Landroid/database/MatrixCursor;

    invoke-direct {v15, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 639
    .local v15, cursorToReturn:Landroid/database/MatrixCursor;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getSortOrderString()Ljava/lang/String;

    move-result-object v6

    .line 640
    .local v6, orderByClause:Ljava/lang/String;
    const/16 v16, 0x0

    .line 641
    .local v16, cursorVideo:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 642
    .local v14, cursorInfoExtra:Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 649
    .local v8, tempVideoId:J
    :try_start_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/ListType;->getDefaultVideoColumns()[Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getDefaultWhereClause()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 655
    if-eqz v16, :cond_32

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_4e

    .line 656
    :cond_32
    if-eqz v16, :cond_39

    .line 657
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 658
    const/16 v16, 0x0

    .line 660
    :cond_39
    if-eqz v15, :cond_3f

    .line 661
    invoke-virtual {v15}, Landroid/database/MatrixCursor;->close()V
    :try_end_3e
    .catchall {:try_start_12 .. :try_end_3e} :catchall_281
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3e} :catch_24d

    .line 662
    const/4 v15, 0x0

    .line 664
    :cond_3f
    const/4 v1, 0x0

    .line 733
    if-eqz v16, :cond_47

    .line 734
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 735
    const/16 v16, 0x0

    .line 738
    :cond_47
    if-eqz v14, :cond_4d

    .line 739
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 740
    const/4 v14, 0x0

    .line 748
    :cond_4d
    :goto_4d
    return-object v1

    .line 667
    :cond_4e
    :try_start_4e
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_209

    .line 670
    :cond_54
    const-string v1, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 671
    const-string v1, "_data"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 672
    .local v10, videoFilePath:Ljava/lang/String;
    const-string v1, "_size"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 673
    .local v11, size:Ljava/lang/String;
    const-string v1, "bucket_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 674
    .local v12, bucket_id:Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v7

    invoke-interface/range {v7 .. v12}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->getList(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 676
    const-string v1, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    .line 677
    const-string v1, "mini_thumb_magic"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    .line 678
    const-string v1, "title"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    .line 679
    const-string v1, "duration"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    .line 680
    const-string v1, "_data"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    .line 681
    const-string v1, "mime_type"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    .line 683
    if-eqz v14, :cond_114

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_21e

    .line 684
    :cond_114
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 685
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 686
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    .line 694
    :goto_126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    if-eqz v1, :cond_144

    const-string v1, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_144

    const-string v1, "null"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14a

    .line 695
    :cond_144
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    .line 697
    :cond_14a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    if-eqz v1, :cond_168

    const-string v1, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_168

    const-string v1, "null"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16e

    .line 698
    :cond_168
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 700
    :cond_16e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    if-eqz v1, :cond_18c

    const-string v1, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18c

    const-string v1, "null"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_192

    .line 701
    :cond_18c
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 703
    :cond_192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    if-eqz v1, :cond_1b0

    const-string v1, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b0

    const-string v1, "null"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b6

    .line 704
    :cond_1b0
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    .line 707
    :cond_1b6
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v15, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 719
    if-eqz v14, :cond_203

    .line 720
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 721
    const/4 v14, 0x0

    .line 723
    :cond_203
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_206
    .catchall {:try_start_4e .. :try_end_206} :catchall_281
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_206} :catch_24d

    move-result v1

    if-nez v1, :cond_54

    .line 733
    .end local v10           #videoFilePath:Ljava/lang/String;
    .end local v11           #size:Ljava/lang/String;
    .end local v12           #bucket_id:Ljava/lang/String;
    :cond_209
    if-eqz v16, :cond_210

    .line 734
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 735
    const/16 v16, 0x0

    .line 738
    :cond_210
    if-eqz v14, :cond_216

    .line 739
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 740
    const/4 v14, 0x0

    .line 744
    :cond_216
    :goto_216
    if-eqz v15, :cond_21b

    .line 745
    invoke-virtual {v15}, Landroid/database/MatrixCursor;->moveToFirst()Z

    :cond_21b
    move-object v1, v15

    .line 748
    goto/16 :goto_4d

    .line 688
    .restart local v10       #videoFilePath:Ljava/lang/String;
    .restart local v11       #size:Ljava/lang/String;
    .restart local v12       #bucket_id:Ljava/lang/String;
    :cond_21e
    :try_start_21e
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 689
    const-string v1, "IsFavorite"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 690
    const-string v1, "PlayedWhen"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 691
    const-string v1, "ResumePosition"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;
    :try_end_24b
    .catchall {:try_start_21e .. :try_end_24b} :catchall_281
    .catch Ljava/lang/Exception; {:try_start_21e .. :try_end_24b} :catch_24d

    goto/16 :goto_126

    .line 725
    .end local v10           #videoFilePath:Ljava/lang/String;
    .end local v11           #size:Ljava/lang/String;
    .end local v12           #bucket_id:Ljava/lang/String;
    :catch_24d
    move-exception v17

    .line 726
    .local v17, e:Ljava/lang/Exception;
    :try_start_24e
    const-string v1, "VideoDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoCursorExceptMyVideo() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 728
    if-eqz v15, :cond_273

    .line 729
    invoke-virtual {v15}, Landroid/database/MatrixCursor;->close()V
    :try_end_272
    .catchall {:try_start_24e .. :try_end_272} :catchall_281

    .line 730
    const/4 v15, 0x0

    .line 733
    :cond_273
    if-eqz v16, :cond_27a

    .line 734
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 735
    const/16 v16, 0x0

    .line 738
    :cond_27a
    if-eqz v14, :cond_216

    .line 739
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 740
    const/4 v14, 0x0

    goto :goto_216

    .line 733
    .end local v17           #e:Ljava/lang/Exception;
    :catchall_281
    move-exception v1

    if-eqz v16, :cond_289

    .line 734
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 735
    const/16 v16, 0x0

    .line 738
    :cond_289
    if-eqz v14, :cond_28f

    .line 739
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 740
    const/4 v14, 0x0

    :cond_28f
    throw v1
.end method

.method private getVideoCursorOfMyVideos(I)Landroid/database/Cursor;
    .registers 20
    .parameter "mListType"

    .prologue
    .line 866
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/videoplayer/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v13

    .line 867
    .local v13, cols:[Ljava/lang/String;
    new-instance v15, Landroid/database/MatrixCursor;

    invoke-direct {v15, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 869
    .local v15, cursorToReturn:Landroid/database/MatrixCursor;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getSortOrderString()Ljava/lang/String;

    move-result-object v6

    .line 870
    .local v6, orderByClause:Ljava/lang/String;
    const/16 v16, 0x0

    .line 871
    .local v16, cursorVideo:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 872
    .local v14, cursorInfoExtra:Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 879
    .local v8, tempVideoId:J
    :try_start_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/ListType;->getDefaultVideoColumns()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data LIKE \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/DCIM/Camera/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' || \'%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "length(trim(_data)) > 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 886
    if-eqz v16, :cond_61

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_7d

    .line 887
    :cond_61
    if-eqz v16, :cond_68

    .line 888
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 889
    const/16 v16, 0x0

    .line 891
    :cond_68
    if-eqz v15, :cond_6e

    .line 892
    invoke-virtual {v15}, Landroid/database/MatrixCursor;->close()V
    :try_end_6d
    .catchall {:try_start_12 .. :try_end_6d} :catchall_2ad
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_6d} :catch_27c

    .line 893
    const/4 v15, 0x0

    .line 895
    :cond_6e
    const/4 v1, 0x0

    .line 963
    if-eqz v16, :cond_76

    .line 964
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 965
    const/16 v16, 0x0

    .line 968
    :cond_76
    if-eqz v14, :cond_7c

    .line 969
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 970
    const/4 v14, 0x0

    .line 978
    :cond_7c
    :goto_7c
    return-object v1

    .line 898
    :cond_7d
    :try_start_7d
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_238

    .line 901
    :cond_83
    const-string v1, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 902
    const-string v1, "_data"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 903
    .local v10, videoFilePath:Ljava/lang/String;
    const-string v1, "_size"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 904
    .local v11, size:Ljava/lang/String;
    const-string v1, "bucket_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 905
    .local v12, bucket_id:Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v7

    invoke-interface/range {v7 .. v12}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->getList(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 907
    const-string v1, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    .line 908
    const-string v1, "mini_thumb_magic"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    .line 909
    const-string v1, "title"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    .line 910
    const-string v1, "duration"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    .line 911
    const-string v1, "_data"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    .line 912
    const-string v1, "mime_type"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    .line 914
    if-eqz v14, :cond_143

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_24d

    .line 915
    :cond_143
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 916
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 917
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    .line 925
    :goto_155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    if-eqz v1, :cond_173

    const-string v1, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_173

    const-string v1, "null"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_179

    .line 926
    :cond_173
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    .line 928
    :cond_179
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    if-eqz v1, :cond_197

    const-string v1, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_197

    const-string v1, "null"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19d

    .line 929
    :cond_197
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 931
    :cond_19d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    if-eqz v1, :cond_1bb

    const-string v1, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1bb

    const-string v1, "null"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c1

    .line 932
    :cond_1bb
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 934
    :cond_1c1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    if-eqz v1, :cond_1df

    const-string v1, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1df

    const-string v1, "null"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e5

    .line 935
    :cond_1df
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    .line 938
    :cond_1e5
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v15, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 950
    if-eqz v14, :cond_232

    .line 951
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 952
    const/4 v14, 0x0

    .line 954
    :cond_232
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_235
    .catchall {:try_start_7d .. :try_end_235} :catchall_2ad
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_235} :catch_27c

    move-result v1

    if-nez v1, :cond_83

    .line 963
    .end local v10           #videoFilePath:Ljava/lang/String;
    .end local v11           #size:Ljava/lang/String;
    .end local v12           #bucket_id:Ljava/lang/String;
    :cond_238
    if-eqz v16, :cond_23f

    .line 964
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 965
    const/16 v16, 0x0

    .line 968
    :cond_23f
    if-eqz v14, :cond_245

    .line 969
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 970
    const/4 v14, 0x0

    .line 974
    :cond_245
    :goto_245
    if-eqz v15, :cond_24a

    .line 975
    invoke-virtual {v15}, Landroid/database/MatrixCursor;->moveToFirst()Z

    :cond_24a
    move-object v1, v15

    .line 978
    goto/16 :goto_7c

    .line 919
    .restart local v10       #videoFilePath:Ljava/lang/String;
    .restart local v11       #size:Ljava/lang/String;
    .restart local v12       #bucket_id:Ljava/lang/String;
    :cond_24d
    :try_start_24d
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 920
    const-string v1, "IsFavorite"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 921
    const-string v1, "PlayedWhen"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 922
    const-string v1, "ResumePosition"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;
    :try_end_27a
    .catchall {:try_start_24d .. :try_end_27a} :catchall_2ad
    .catch Ljava/lang/Exception; {:try_start_24d .. :try_end_27a} :catch_27c

    goto/16 :goto_155

    .line 956
    .end local v10           #videoFilePath:Ljava/lang/String;
    .end local v11           #size:Ljava/lang/String;
    .end local v12           #bucket_id:Ljava/lang/String;
    :catch_27c
    move-exception v17

    .line 957
    .local v17, e:Ljava/lang/Exception;
    :try_start_27d
    const-string v1, "VideoDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoCursorOfMyVideos() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    if-eqz v15, :cond_29f

    .line 959
    invoke-virtual {v15}, Landroid/database/MatrixCursor;->close()V
    :try_end_29e
    .catchall {:try_start_27d .. :try_end_29e} :catchall_2ad

    .line 960
    const/4 v15, 0x0

    .line 963
    :cond_29f
    if-eqz v16, :cond_2a6

    .line 964
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 965
    const/16 v16, 0x0

    .line 968
    :cond_2a6
    if-eqz v14, :cond_245

    .line 969
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 970
    const/4 v14, 0x0

    goto :goto_245

    .line 963
    .end local v17           #e:Ljava/lang/Exception;
    :catchall_2ad
    move-exception v1

    if-eqz v16, :cond_2b5

    .line 964
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 965
    const/16 v16, 0x0

    .line 968
    :cond_2b5
    if-eqz v14, :cond_2bb

    .line 969
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 970
    const/4 v14, 0x0

    :cond_2bb
    throw v1
.end method

.method private infoByFolder()Landroid/database/Cursor;
    .registers 10

    .prologue
    .line 1589
    const/4 v6, 0x0

    .line 1592
    .local v6, cursorToReturn:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "bucket_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const-string v3, "length(trim(_data)) > 0) GROUP BY ( bucket_display_name"

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bucket_display_name ASC, bucket_id ASC, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getSortOrderString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_3a

    move-result-object v6

    .line 1611
    :cond_34
    :goto_34
    if-eqz v6, :cond_39

    .line 1612
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1615
    :cond_39
    return-object v6

    .line 1604
    :catch_3a
    move-exception v7

    .line 1605
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_34

    .line 1606
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1607
    const/4 v6, 0x0

    goto :goto_34
.end method

.method private initializeTables()V
    .registers 3

    .prologue
    .line 2299
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS InfoExtra"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2300
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS InfoExtra (_id INTEGER, video_uri TEXT, _data TEXT, _size LONG, bucket_id TEXT, PlayedWhen LONG, ResumePosition LONG, IsFavorite INTEGER, dirtybit INTEGER);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2301
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX InfoExtra_id ON InfoExtra(_id)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2302
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX InfoExtra_multikey ON InfoExtra(_id, _data, _size, bucket_id)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2303
    return-void
.end method

.method private openDb()Landroid/database/sqlite/SQLiteDatabase;
    .registers 8

    .prologue
    .line 117
    new-instance v0, Lcom/sec/android/app/videoplayer/db/VideoDB$DatabaseHelper;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    const-string v3, "tp_video.db"

    const/4 v4, 0x0

    const/16 v5, 0x9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/videoplayer/db/VideoDB$DatabaseHelper;-><init>(Lcom/sec/android/app/videoplayer/db/VideoDB;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 118
    .local v0, helper:Lcom/sec/android/app/videoplayer/db/VideoDB$DatabaseHelper;
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/db/VideoDB$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 119
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    return-object v6
.end method

.method private updateDatabases(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 2291
    const-string v0, "DROP TABLE IF EXISTS recently"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2292
    const-string v0, "DROP TABLE IF EXISTS InfoExtra"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2293
    const-string v0, "CREATE TABLE IF NOT EXISTS InfoExtra (_id INTEGER, video_uri TEXT, _data TEXT, _size LONG, bucket_id TEXT, PlayedWhen LONG, ResumePosition LONG, IsFavorite INTEGER, dirtybit INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2294
    const-string v0, "CREATE INDEX InfoExtra_id ON InfoExtra(_id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2295
    const-string v0, "CREATE INDEX InfoExtra_multikey ON InfoExtra(_id, _data, _size, bucket_id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2296
    return-void
.end method


# virtual methods
.method public deleteVideo(J)I
    .registers 10
    .parameter "id"

    .prologue
    .line 1929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1930
    .local v0, where:Ljava/lang/StringBuilder;
    const-string v1, "_id = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1931
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public deleteVideo(Ljava/util/ArrayList;)I
    .registers 7
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
    .line 1914
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 1915
    .local v1, delCnt:I
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1917
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    :try_start_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1f

    .line 1918
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->deleteVideo(J)I

    move-result v0

    .line 1919
    .local v0, cnt:I
    add-int/2addr v1, v0

    .line 1917
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1921
    .end local v0           #cnt:I
    :cond_1f
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_2a

    .line 1923
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1925
    return v1

    .line 1923
    :catchall_2a
    move-exception v3

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public getAllVideoThumbnails(I)Landroid/database/Cursor;
    .registers 13
    .parameter "mListType"

    .prologue
    const/4 v0, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2625
    const/4 v6, 0x0

    .line 2627
    .local v6, cursorVideo:Landroid/database/Cursor;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2629
    .local v8, orderBy:Ljava/lang/StringBuilder;
    if-ne p1, v0, :cond_5f

    .line 2630
    const-string v0, "bucket_display_name"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2631
    const-string v0, ", "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2633
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getSortOrderString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2641
    :goto_1c
    :try_start_1c
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "mini_thumb_magic"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "duration"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "mime_type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2653
    if-eqz v6, :cond_57

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v10, :cond_8a

    .line 2654
    :cond_57
    if-eqz v6, :cond_5d

    .line 2655
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5c
    .catchall {:try_start_1c .. :try_end_5c} :catchall_8c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_5c} :catch_67

    .line 2656
    const/4 v6, 0x0

    :cond_5d
    move-object v0, v9

    .line 2670
    :goto_5e
    return-object v0

    .line 2636
    :cond_5f
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getSortOrderString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 2661
    :catch_67
    move-exception v7

    .line 2662
    .local v7, e:Ljava/lang/Exception;
    :try_start_68
    const-string v0, "VideoDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllVideoThumbnails() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    if-eqz v6, :cond_8a

    .line 2664
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_89
    .catchall {:try_start_68 .. :try_end_89} :catchall_8c

    .line 2665
    const/4 v6, 0x0

    .end local v7           #e:Ljava/lang/Exception;
    :cond_8a
    move-object v0, v6

    .line 2670
    goto :goto_5e

    .line 2667
    :catchall_8c
    move-exception v0

    throw v0
.end method

.method public getDateTaken(J)J
    .registers 16
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    const-wide/16 v11, 0x0

    .line 2084
    const-wide/16 v3, -0x1

    cmp-long v0, p1, v3

    if-nez v0, :cond_12

    .line 2085
    const-string v0, "VideoDB"

    const-string v3, "getDateTaken() - id is invalid."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v7, v11

    .line 2114
    :cond_11
    :goto_11
    return-wide v7

    .line 2089
    :cond_12
    const-wide/16 v7, 0x0

    .line 2090
    .local v7, datetTaken:J
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "datetaken"

    aput-object v0, v2, v5

    .line 2093
    .local v2, projection:[Ljava/lang/String;
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2094
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 2097
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_22
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2099
    if-eqz v6, :cond_42

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_42

    .line 2100
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2101
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_41
    .catchall {:try_start_22 .. :try_end_41} :catchall_88
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_22 .. :try_end_41} :catch_48
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_22 .. :try_end_41} :catch_68

    move-result-wide v7

    .line 2110
    :cond_42
    if-eqz v6, :cond_11

    .line 2111
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_11

    .line 2103
    :catch_48
    move-exception v9

    .line 2104
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    :try_start_49
    const-string v0, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDateTaken - SQLiteException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_49 .. :try_end_61} :catchall_88

    .line 2110
    if-eqz v6, :cond_66

    .line 2111
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_66
    move-wide v7, v11

    goto :goto_11

    .line 2106
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :catch_68
    move-exception v10

    .line 2107
    .local v10, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_69
    const-string v0, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDateTaken - UnsupportedOperationException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_69 .. :try_end_81} :catchall_88

    .line 2110
    if-eqz v6, :cond_86

    .line 2111
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_86
    move-wide v7, v11

    goto :goto_11

    .line 2110
    .end local v10           #ex:Ljava/lang/UnsupportedOperationException;
    :catchall_88
    move-exception v0

    if-eqz v6, :cond_8e

    .line 2111
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8e
    throw v0
.end method

.method public getDeletedVideoCursor()Landroid/database/Cursor;
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1621
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v2

    .line 1623
    .local v2, cols:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1624
    .local v3, where:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1625
    .local v6, stringBuilder:Ljava/lang/StringBuilder;
    const-string v0, "_data NOT LIKE \'%video-%\' "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    const-string v0, " AND "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    const-string v0, "_data NOT LIKE \'%.mp4\' "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1628
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1630
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "title"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    .line 1636
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDurationTimeById(J)J
    .registers 14
    .parameter "videoId"

    .prologue
    .line 1845
    const-wide/16 v7, -0x1

    .line 1847
    .local v7, durationTime:J
    const/4 v6, 0x0

    .line 1850
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "duration"

    aput-object v4, v2, v3

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1855
    if-eqz v6, :cond_3c

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3c

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1856
    const-string v0, "duration"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_67
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3b} :catch_43

    move-result-wide v7

    .line 1861
    :cond_3c
    if-eqz v6, :cond_42

    .line 1862
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1863
    const/4 v6, 0x0

    .line 1867
    :cond_42
    :goto_42
    return-wide v7

    .line 1858
    :catch_43
    move-exception v9

    .line 1859
    .local v9, e:Ljava/lang/Exception;
    :try_start_44
    const-string v0, "VideoDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDurationTimeById() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_44 .. :try_end_60} :catchall_67

    .line 1861
    if-eqz v6, :cond_42

    .line 1862
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1863
    const/4 v6, 0x0

    goto :goto_42

    .line 1861
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_67
    move-exception v0

    if-eqz v6, :cond_6e

    .line 1862
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1863
    const/4 v6, 0x0

    :cond_6e
    throw v0
.end method

.method public getFavoriteValue(J)I
    .registers 9
    .parameter "videoId"

    .prologue
    .line 2029
    const/4 v2, 0x0

    .line 2031
    .local v2, favoriteValue:I
    const/4 v0, 0x0

    .line 2034
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v3, 0x5

    :try_start_3
    invoke-virtual {p0, v3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->getList(J)Landroid/database/Cursor;

    move-result-object v0

    .line 2036
    if-eqz v0, :cond_23

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_23

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2037
    const-string v3, "IsFavorite"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_4e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_2a

    move-result v2

    .line 2042
    :cond_23
    if-eqz v0, :cond_29

    .line 2043
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2044
    const/4 v0, 0x0

    .line 2048
    :cond_29
    :goto_29
    return v2

    .line 2039
    :catch_2a
    move-exception v1

    .line 2040
    .local v1, e:Ljava/lang/Exception;
    :try_start_2b
    const-string v3, "VideoDB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFavoriteValue - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_2b .. :try_end_47} :catchall_4e

    .line 2042
    if-eqz v0, :cond_29

    .line 2043
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2044
    const/4 v0, 0x0

    goto :goto_29

    .line 2042
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_4e
    move-exception v3

    if-eqz v0, :cond_55

    .line 2043
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2044
    const/4 v0, 0x0

    :cond_55
    throw v3
.end method

.method public getFileIdbyPath_External(Ljava/lang/String;)J
    .registers 12
    .parameter "filePath"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1725
    const-wide/16 v7, -0x1

    .line 1726
    .local v7, id:J
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 1727
    .local v2, cols:[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1728
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "_data LIKE \'%\' || ? || \'%\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1729
    const/4 v6, 0x0

    .line 1732
    .local v6, c:Landroid/database/Cursor;
    :try_start_15
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1734
    if-eqz v6, :cond_3c

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3c

    .line 1735
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1736
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3b
    .catchall {:try_start_15 .. :try_end_3b} :catchall_42

    move-result-wide v7

    .line 1739
    :cond_3c
    if-eqz v6, :cond_41

    .line 1740
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1744
    :cond_41
    return-wide v7

    .line 1739
    :catchall_42
    move-exception v0

    if-eqz v6, :cond_48

    .line 1740
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_48
    throw v0
.end method

.method public getFileIdbyPath_Internal(Ljava/lang/String;)J
    .registers 12
    .parameter "filePath"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1748
    const-wide/16 v7, -0x1

    .line 1749
    .local v7, id:J
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 1750
    .local v2, cols:[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1751
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "_data LIKE \'%\' || ? || \'%\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1752
    const/4 v6, 0x0

    .line 1755
    .local v6, c:Landroid/database/Cursor;
    :try_start_15
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1757
    if-eqz v6, :cond_3c

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3c

    .line 1758
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1759
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3b
    .catchall {:try_start_15 .. :try_end_3b} :catchall_42

    move-result-wide v7

    .line 1762
    :cond_3c
    if-eqz v6, :cond_41

    .line 1763
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1767
    :cond_41
    return-wide v7

    .line 1762
    :catchall_42
    move-exception v0

    if-eqz v6, :cond_48

    .line 1763
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_48
    throw v0
.end method

.method public getFileIdbyUri(Landroid/net/Uri;)J
    .registers 11
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 1771
    const-wide/16 v7, 0x0

    .line 1772
    .local v7, id:J
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 1773
    .local v2, cols:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1775
    .local v6, c:Landroid/database/Cursor;
    :try_start_b
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1776
    if-eqz v6, :cond_29

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_29

    .line 1777
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1778
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_2f

    move-result-wide v7

    .line 1781
    :cond_29
    if-eqz v6, :cond_2e

    .line 1782
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1785
    :cond_2e
    return-wide v7

    .line 1781
    :catchall_2f
    move-exception v0

    if-eqz v6, :cond_35

    .line 1782
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_35
    throw v0
.end method

.method public getFilePathByUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 11
    .parameter "uri"

    .prologue
    .line 1822
    const-string v8, ""

    .line 1824
    .local v8, resultValue:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1827
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

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

    .line 1829
    if-eqz v6, :cond_31

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_31

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1830
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_6a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_30} :catch_38

    move-result-object v8

    .line 1835
    :cond_31
    if-eqz v6, :cond_37

    .line 1836
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1837
    const/4 v6, 0x0

    .line 1841
    :cond_37
    :goto_37
    return-object v8

    .line 1832
    :catch_38
    move-exception v7

    .line 1833
    .local v7, e:Ljava/lang/Exception;
    :try_start_39
    const-string v0, "VideoDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePathByUri() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_39 .. :try_end_63} :catchall_6a

    .line 1835
    if-eqz v6, :cond_37

    .line 1836
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1837
    const/4 v6, 0x0

    goto :goto_37

    .line 1835
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_6a
    move-exception v0

    if-eqz v6, :cond_71

    .line 1836
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1837
    const/4 v6, 0x0

    :cond_71
    throw v0
.end method

.method public getFilePathbyId(J)Ljava/lang/String;
    .registers 12
    .parameter "video_id"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1790
    const-string v0, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFilePathbyId() - id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    const-wide/16 v3, 0x1

    cmp-long v0, p1, v3

    if-gez v0, :cond_28

    .line 1793
    const-string v0, "VideoDB"

    const-string v3, "getFilePathbyId() - id is invalid."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    :cond_27
    :goto_27
    return-object v8

    .line 1797
    :cond_28
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1798
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v5

    .line 1799
    .local v2, cols:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1800
    .local v8, path:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1803
    .local v6, c:Landroid/database/Cursor;
    :try_start_37
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1804
    if-eqz v6, :cond_54

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_54

    .line 1805
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1806
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_53
    .catchall {:try_start_37 .. :try_end_53} :catchall_7d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_53} :catch_5a

    move-result-object v8

    .line 1812
    :cond_54
    if-eqz v6, :cond_27

    .line 1813
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_27

    .line 1808
    :catch_5a
    move-exception v7

    .line 1809
    .local v7, e:Ljava/lang/Exception;
    :try_start_5b
    const-string v0, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFilePathbyId() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_5b .. :try_end_77} :catchall_7d

    .line 1812
    if-eqz v6, :cond_27

    .line 1813
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_27

    .line 1812
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_7d
    move-exception v0

    if-eqz v6, :cond_83

    .line 1813
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_83
    throw v0
.end method

.method public getFolderNameByBucketId(I)Ljava/lang/String;
    .registers 13
    .parameter "bucketid"

    .prologue
    .line 2440
    const/4 v6, 0x0

    .line 2441
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 2442
    .local v9, folderName:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "bucket_display_name"

    aput-object v1, v2, v0

    .line 2443
    .local v2, cols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bucket_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2446
    .local v3, selection:Ljava/lang/String;
    :try_start_2c
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2448
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2449
    const-string v0, "bucket_display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_46
    .catchall {:try_start_2c .. :try_end_46} :catchall_ae
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_46} :catch_4e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2c .. :try_end_46} :catch_6e
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2c .. :try_end_46} :catch_8e

    move-result-object v9

    .line 2461
    if-eqz v6, :cond_4c

    .line 2462
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4c
    move-object v10, v9

    .line 2465
    .end local v9           #folderName:Ljava/lang/String;
    .local v10, folderName:Ljava/lang/String;
    :goto_4d
    return-object v10

    .line 2451
    .end local v10           #folderName:Ljava/lang/String;
    .restart local v9       #folderName:Ljava/lang/String;
    :catch_4e
    move-exception v7

    .line 2452
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_4f
    const-string v0, "VideoDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTotalCntinSameBucketId - SQLiteException :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_4f .. :try_end_67} :catchall_ae

    .line 2461
    if-eqz v6, :cond_6c

    .line 2462
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6c
    move-object v10, v9

    .end local v9           #folderName:Ljava/lang/String;
    .restart local v10       #folderName:Ljava/lang/String;
    goto :goto_4d

    .line 2454
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    .end local v10           #folderName:Ljava/lang/String;
    .restart local v9       #folderName:Ljava/lang/String;
    :catch_6e
    move-exception v8

    .line 2455
    .local v8, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_6f
    const-string v0, "VideoDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFolderNameByBucketId - UnsupportedOperationException :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_6f .. :try_end_87} :catchall_ae

    .line 2461
    if-eqz v6, :cond_8c

    .line 2462
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8c
    move-object v10, v9

    .end local v9           #folderName:Ljava/lang/String;
    .restart local v10       #folderName:Ljava/lang/String;
    goto :goto_4d

    .line 2457
    .end local v8           #ex:Ljava/lang/UnsupportedOperationException;
    .end local v10           #folderName:Ljava/lang/String;
    .restart local v9       #folderName:Ljava/lang/String;
    :catch_8e
    move-exception v8

    .line 2458
    .local v8, ex:Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_8f
    const-string v0, "VideoDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFolderNameByBucketId - CursorIndexOutOfBoundsException :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_8f .. :try_end_a7} :catchall_ae

    .line 2461
    if-eqz v6, :cond_ac

    .line 2462
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_ac
    move-object v10, v9

    .end local v9           #folderName:Ljava/lang/String;
    .restart local v10       #folderName:Ljava/lang/String;
    goto :goto_4d

    .line 2461
    .end local v8           #ex:Landroid/database/CursorIndexOutOfBoundsException;
    .end local v10           #folderName:Ljava/lang/String;
    .restart local v9       #folderName:Ljava/lang/String;
    :catchall_ae
    move-exception v0

    if-eqz v6, :cond_b4

    .line 2462
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b4
    throw v0
.end method

.method public getMimeTypebyId(J)Ljava/lang/String;
    .registers 14
    .parameter "videoId"

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 1671
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1672
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "mime_type"

    aput-object v0, v2, v3

    .line 1673
    .local v2, cols:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1674
    .local v9, mimeType:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1677
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_11
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1679
    if-eqz v6, :cond_2e

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2e

    .line 1680
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1681
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_75
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_2d} :catch_35
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_11 .. :try_end_2d} :catch_55

    move-result-object v9

    .line 1690
    :cond_2e
    if-eqz v6, :cond_33

    .line 1691
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_33
    move-object v0, v9

    .line 1694
    :goto_34
    return-object v0

    .line 1683
    :catch_35
    move-exception v7

    .line 1684
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_36
    const-string v0, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMimeType - SQLiteException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_36 .. :try_end_4e} :catchall_75

    .line 1690
    if-eqz v6, :cond_53

    .line 1691
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_53
    move-object v0, v10

    goto :goto_34

    .line 1686
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catch_55
    move-exception v8

    .line 1687
    .local v8, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_56
    const-string v0, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMimeType - UnsupportedOperationException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_56 .. :try_end_6e} :catchall_75

    .line 1690
    if-eqz v6, :cond_73

    .line 1691
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_73
    move-object v0, v10

    goto :goto_34

    .line 1690
    .end local v8           #ex:Ljava/lang/UnsupportedOperationException;
    :catchall_75
    move-exception v0

    if-eqz v6, :cond_7b

    .line 1691
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7b
    throw v0
.end method

.method public getMostRecentVideoId()J
    .registers 16

    .prologue
    .line 2119
    const-wide/16 v10, -0x1

    .line 2120
    .local v10, returnValue:J
    const/4 v9, 0x0

    .line 2122
    .local v9, recentVideoIdFound:Z
    const/4 v7, 0x0

    .line 2123
    .local v7, cursorVideoInfoExtra:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 2125
    .local v6, cursorVideo:Landroid/database/Cursor;
    const-string v13, ""

    .line 2126
    .local v13, videoData:Ljava/lang/String;
    const-string v12, ""

    .line 2127
    .local v12, videoBucketId:Ljava/lang/String;
    const-string v14, ""

    .line 2130
    .local v14, videoSize:Ljava/lang/String;
    const/4 v0, 0x5

    :try_start_c
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->getMostRecentVideoId()Landroid/database/Cursor;

    move-result-object v7

    .line 2131
    if-eqz v7, :cond_92

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_92

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 2133
    :cond_22
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2134
    const-string v0, "bucket_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2135
    const-string v0, "_size"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2137
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const-string v3, "_data = ? AND bucket_id = ? AND _size = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v13, v4, v5

    const/4 v5, 0x1

    aput-object v12, v4, v5

    const/4 v5, 0x2

    aput-object v14, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2145
    if-eqz v6, :cond_84

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_84

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_84

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_84

    .line 2146
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2147
    const/4 v9, 0x1

    .line 2150
    :cond_84
    if-eqz v6, :cond_8a

    .line 2151
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2152
    const/4 v6, 0x0

    .line 2155
    :cond_8a
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8d
    .catchall {:try_start_c .. :try_end_8d} :catchall_cd
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_8d} :catch_a3

    move-result v0

    if-eqz v0, :cond_92

    if-eqz v9, :cond_22

    .line 2160
    :cond_92
    if-eqz v7, :cond_98

    .line 2161
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2162
    const/4 v7, 0x0

    .line 2164
    :cond_98
    if-eqz v6, :cond_9e

    .line 2165
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2166
    const/4 v6, 0x0

    .line 2170
    :cond_9e
    :goto_9e
    if-nez v9, :cond_a2

    .line 2171
    const-wide/16 v10, -0x1

    .line 2174
    :cond_a2
    return-wide v10

    .line 2157
    :catch_a3
    move-exception v8

    .line 2158
    .local v8, e:Ljava/lang/Exception;
    :try_start_a4
    const-string v0, "VideoDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMostRecentVideoId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catchall {:try_start_a4 .. :try_end_c0} :catchall_cd

    .line 2160
    if-eqz v7, :cond_c6

    .line 2161
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2162
    const/4 v7, 0x0

    .line 2164
    :cond_c6
    if-eqz v6, :cond_9e

    .line 2165
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2166
    const/4 v6, 0x0

    goto :goto_9e

    .line 2160
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_cd
    move-exception v0

    if-eqz v7, :cond_d4

    .line 2161
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2162
    const/4 v7, 0x0

    .line 2164
    :cond_d4
    if-eqz v6, :cond_da

    .line 2165
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2166
    const/4 v6, 0x0

    :cond_da
    throw v0
.end method

.method public getResolutionById(J)Ljava/lang/String;
    .registers 14
    .parameter "videoId"

    .prologue
    const/4 v3, 0x0

    .line 2052
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2054
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "resolution"

    aput-object v0, v2, v3

    .line 2056
    .local v2, cols:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 2058
    .local v10, resolution:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2061
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_10
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2063
    if-eqz v6, :cond_2d

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2d

    .line 2064
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2065
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_90
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_2c} :catch_33
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_10 .. :try_end_2c} :catch_52
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2c} :catch_71

    move-result-object v10

    .line 2075
    :cond_2d
    if-eqz v6, :cond_32

    .line 2076
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2080
    :cond_32
    :goto_32
    return-object v10

    .line 2068
    :catch_33
    move-exception v7

    .line 2069
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_34
    const-string v0, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMimeType - SQLiteException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_34 .. :try_end_4c} :catchall_90

    .line 2075
    if-eqz v6, :cond_32

    .line 2076
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_32

    .line 2070
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catch_52
    move-exception v9

    .line 2071
    .local v9, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_53
    const-string v0, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMimeType - UnsupportedOperationException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_53 .. :try_end_6b} :catchall_90

    .line 2075
    if-eqz v6, :cond_32

    .line 2076
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_32

    .line 2072
    .end local v9           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_71
    move-exception v8

    .line 2073
    .local v8, ee:Ljava/lang/Exception;
    :try_start_72
    const-string v0, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMimeType - Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_72 .. :try_end_8a} :catchall_90

    .line 2075
    if-eqz v6, :cond_32

    .line 2076
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_32

    .line 2075
    .end local v8           #ee:Ljava/lang/Exception;
    :catchall_90
    move-exception v0

    if-eqz v6, :cond_96

    .line 2076
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_96
    throw v0
.end method

.method public getResumePosition(J)J
    .registers 13
    .parameter "id"

    .prologue
    const-wide/16 v5, 0x0

    .line 1989
    const-wide/16 v3, 0x0

    .line 1990
    .local v3, resumePos:J
    const/4 v0, 0x0

    .line 1993
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_5
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v7

    invoke-interface {v7, p1, p2}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->getList(J)Landroid/database/Cursor;

    move-result-object v0

    .line 1994
    if-eqz v0, :cond_3c

    .line 1995
    const-string v7, "VideoDB"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getResumePosition - cursor.getCount() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cursor : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    :cond_3c
    if-eqz v0, :cond_51

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_51

    .line 1998
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1999
    const-string v7, "ResumePosition"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J
    :try_end_50
    .catchall {:try_start_5 .. :try_end_50} :catchall_96
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_50} :catch_58
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_50} :catch_77

    move-result-wide v3

    .line 2009
    :cond_51
    if-eqz v0, :cond_56

    .line 2010
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_56
    move-wide v5, v3

    .line 2013
    :cond_57
    :goto_57
    return-wide v5

    .line 2001
    :catch_58
    move-exception v1

    .line 2002
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_59
    const-string v7, "VideoDB"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getResumePosition - SQLiteException :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_59 .. :try_end_71} :catchall_96

    .line 2009
    if-eqz v0, :cond_57

    .line 2010
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_57

    .line 2004
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catch_77
    move-exception v2

    .line 2005
    .local v2, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_78
    const-string v7, "VideoDB"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getResumePosition - UnsupportedOperationException :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_78 .. :try_end_90} :catchall_96

    .line 2009
    if-eqz v0, :cond_57

    .line 2010
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_57

    .line 2009
    .end local v2           #ex:Ljava/lang/UnsupportedOperationException;
    :catchall_96
    move-exception v5

    if-eqz v0, :cond_9c

    .line 2010
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9c
    throw v5
.end method

.method public getSearchResult(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter "searchString"

    .prologue
    const/4 v10, 0x1

    .line 1640
    const/4 v6, 0x0

    .line 1641
    .local v6, cursorToReturn:Landroid/database/Cursor;
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getSortOrderString()Ljava/lang/String;

    move-result-object v5

    .line 1644
    .local v5, orderByClause:Ljava/lang/String;
    :try_start_6
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(lower(title) LIKE \'%\' || ? || \'%\' OR lower(_display_name) LIKE \'%\' || ? || \'%\')  AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getDefaultWhereClause()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_44
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_44} :catch_4f

    move-result-object v6

    .line 1661
    :cond_45
    :goto_45
    if-eqz v6, :cond_4d

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v10, :cond_7d

    .line 1662
    :cond_4d
    const/4 v6, 0x0

    .line 1667
    :goto_4e
    return-object v6

    .line 1653
    :catch_4f
    move-exception v7

    .line 1654
    .local v7, e:Ljava/lang/IllegalStateException;
    const-string v0, "VideoDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSearchResult() - \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    if-eqz v6, :cond_45

    .line 1656
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1657
    const/4 v6, 0x0

    goto :goto_45

    .line 1664
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :cond_7d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_4e
.end method

.method public getSizebyId(J)J
    .registers 14
    .parameter "video_id"

    .prologue
    const/4 v3, 0x0

    .line 1698
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1699
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_size"

    aput-object v0, v2, v3

    .line 1702
    .local v2, cols:[Ljava/lang/String;
    const-wide/16 v9, 0x0

    .line 1703
    .local v9, fileSize:J
    const/4 v6, 0x0

    .line 1706
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_11
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1708
    if-eqz v6, :cond_2e

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2e

    .line 1709
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1710
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_72
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_2d} :catch_34
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_11 .. :try_end_2d} :catch_53

    move-result-wide v9

    .line 1717
    :cond_2e
    if-eqz v6, :cond_33

    .line 1718
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1721
    :cond_33
    :goto_33
    return-wide v9

    .line 1712
    :catch_34
    move-exception v7

    .line 1713
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_35
    const-string v0, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMimeType - SQLiteException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_35 .. :try_end_4d} :catchall_72

    .line 1717
    if-eqz v6, :cond_33

    .line 1718
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_33

    .line 1714
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catch_53
    move-exception v8

    .line 1715
    .local v8, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_54
    const-string v0, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMimeType - UnsupportedOperationException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_54 .. :try_end_6c} :catchall_72

    .line 1717
    if-eqz v6, :cond_33

    .line 1718
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_33

    .line 1717
    .end local v8           #ex:Ljava/lang/UnsupportedOperationException;
    :catchall_72
    move-exception v0

    if-eqz v6, :cond_78

    .line 1718
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_78
    throw v0
.end method

.method public getSubTitleLanguage(J)Ljava/lang/String;
    .registers 14
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 2247
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2248
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "subtitle_lan"

    aput-object v0, v2, v3

    .line 2251
    .local v2, cols:[Ljava/lang/String;
    const-string v9, ""

    .line 2252
    .local v9, lang:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2255
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_12
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2257
    if-eqz v6, :cond_2f

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2f

    .line 2258
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2259
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_8e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_2e} :catch_4e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_12 .. :try_end_2e} :catch_6e

    move-result-object v9

    .line 2268
    :cond_2f
    if-eqz v6, :cond_34

    .line 2269
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2272
    :cond_34
    const-string v0, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubTitleLanguage() - lang : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 2273
    :goto_4d
    return-object v0

    .line 2261
    :catch_4e
    move-exception v7

    .line 2262
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_4f
    const-string v0, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubTitleLanguage - SQLiteException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_4f .. :try_end_67} :catchall_8e

    .line 2268
    if-eqz v6, :cond_6c

    .line 2269
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6c
    move-object v0, v10

    goto :goto_4d

    .line 2264
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catch_6e
    move-exception v8

    .line 2265
    .local v8, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_6f
    const-string v0, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubTitleLanguage - UnsupportedOperationException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_6f .. :try_end_87} :catchall_8e

    .line 2268
    if-eqz v6, :cond_8c

    .line 2269
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8c
    move-object v0, v10

    goto :goto_4d

    .line 2268
    .end local v8           #ex:Ljava/lang/UnsupportedOperationException;
    :catchall_8e
    move-exception v0

    if-eqz v6, :cond_94

    .line 2269
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_94
    throw v0
.end method

.method public getSyncTime(J)J
    .registers 16
    .parameter "id"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v3, 0x0

    .line 2200
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2201
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "sync_time"

    aput-object v0, v2, v3

    .line 2204
    .local v2, cols:[Ljava/lang/String;
    const-wide/16 v9, 0x0

    .line 2205
    .local v9, sync:J
    const/4 v6, 0x0

    .line 2208
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_13
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2210
    if-eqz v6, :cond_30

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_30

    .line 2211
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2212
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2f
    .catchall {:try_start_13 .. :try_end_2f} :catchall_77
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_2f} :catch_37
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_13 .. :try_end_2f} :catch_57

    move-result-wide v9

    .line 2221
    :cond_30
    if-eqz v6, :cond_35

    .line 2222
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_35
    move-wide v3, v9

    .line 2225
    :goto_36
    return-wide v3

    .line 2214
    :catch_37
    move-exception v7

    .line 2215
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_38
    const-string v0, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubTitleLanguage - SQLiteException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_38 .. :try_end_50} :catchall_77

    .line 2221
    if-eqz v6, :cond_55

    .line 2222
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_55
    move-wide v3, v11

    goto :goto_36

    .line 2217
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catch_57
    move-exception v8

    .line 2218
    .local v8, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_58
    const-string v0, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubTitleLanguage - UnsupportedOperationException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_58 .. :try_end_70} :catchall_77

    .line 2221
    if-eqz v6, :cond_75

    .line 2222
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_75
    move-wide v3, v11

    goto :goto_36

    .line 2221
    .end local v8           #ex:Ljava/lang/UnsupportedOperationException;
    :catchall_77
    move-exception v0

    if-eqz v6, :cond_7d

    .line 2222
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7d
    throw v0
.end method

.method public getTotalCntinSameBucketId(I)I
    .registers 13
    .parameter "bucketid"

    .prologue
    const/4 v10, 0x0

    .line 2406
    const/4 v6, 0x0

    .line 2407
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 2408
    .local v9, totalcnt:I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(_id)"

    aput-object v0, v2, v10

    .line 2409
    .local v2, cols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bucket_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2411
    .local v3, selection:Ljava/lang/String;
    const-string v0, "VideoDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTotalCntinSameBucketId() - selection : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    :try_start_3f
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2417
    if-eqz v6, :cond_8d

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8d

    .line 2418
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2420
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 2422
    const-string v0, "VideoDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBucketId() - id : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    const-string v0, "VideoDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBucketId() - totalcnt : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catchall {:try_start_3f .. :try_end_8d} :catchall_d4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3f .. :try_end_8d} :catch_94
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3f .. :try_end_8d} :catch_b4

    .line 2432
    :cond_8d
    if-eqz v6, :cond_92

    .line 2433
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_92
    move v0, v9

    .line 2436
    :goto_93
    return v0

    .line 2425
    :catch_94
    move-exception v7

    .line 2426
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_95
    const-string v0, "VideoDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTotalCntinSameBucketId - SQLiteException :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_95 .. :try_end_ad} :catchall_d4

    .line 2432
    if-eqz v6, :cond_b2

    .line 2433
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b2
    move v0, v10

    goto :goto_93

    .line 2428
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catch_b4
    move-exception v8

    .line 2429
    .local v8, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_b5
    const-string v0, "VideoDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTotalCntinSameBucketId - UnsupportedOperationException :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catchall {:try_start_b5 .. :try_end_cd} :catchall_d4

    .line 2432
    if-eqz v6, :cond_d2

    .line 2433
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d2
    move v0, v10

    goto :goto_93

    .line 2432
    .end local v8           #ex:Ljava/lang/UnsupportedOperationException;
    :catchall_d4
    move-exception v0

    if-eqz v6, :cond_da

    .line 2433
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_da
    throw v0
.end method

.method public getVideoCursor(ILjava/lang/String;I)Landroid/database/Cursor;
    .registers 7
    .parameter "mListType"
    .parameter "strOrder"
    .parameter "columnCnt"

    .prologue
    const/4 v2, 0x5

    .line 192
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_d

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 194
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    .line 197
    :cond_d
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getSortOrderString()Ljava/lang/String;

    .line 199
    const/4 v0, 0x0

    .line 201
    .local v0, tempCursor:Landroid/database/Cursor;
    const-string v1, "SELECT_LIST"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 202
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getAllVideoCursorToSelect(I)Landroid/database/Cursor;

    move-result-object v0

    .line 221
    :cond_1d
    :goto_1d
    if-eqz v0, :cond_88

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_88

    .line 223
    if-ne p1, v2, :cond_2b

    .line 224
    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->excludeDRMFiles(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v0

    .line 227
    :cond_2b
    const-string v1, "_data"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 228
    const/4 v1, 0x4

    if-ne v1, p1, :cond_7e

    .line 229
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    .line 242
    :cond_38
    :goto_38
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    return-object v1

    .line 203
    :cond_3b
    const-string v1, "title"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 204
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursorExceptMyVideo(I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1d

    .line 205
    :cond_48
    const-string v1, "date_added"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 206
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursorExceptMyVideo(I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1d

    .line 207
    :cond_55
    const-string v1, "IsFavorite"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 208
    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursorByFavorite(II)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1d

    .line 209
    :cond_62
    const-string v1, "_data"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 210
    const/4 v1, 0x6

    if-eq p1, v1, :cond_79

    .line 211
    if-eq p1, v2, :cond_74

    .line 212
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursorByFolder(I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1d

    .line 214
    :cond_74
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursorExceptMyVideo(I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1d

    .line 217
    :cond_79
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursorFolderClosed()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1d

    .line 231
    :cond_7e
    invoke-virtual {p0, v0, p1, p3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->reviseVideoCursor(Landroid/database/Cursor;II)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    goto :goto_38

    .line 235
    :cond_85
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    goto :goto_38

    .line 237
    :cond_88
    if-eqz v0, :cond_38

    .line 238
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 239
    const/4 v0, 0x0

    goto :goto_38
.end method

.method public getVideoCursorFolderClosed()Landroid/database/Cursor;
    .registers 9

    .prologue
    const/4 v5, 0x6

    .line 1546
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->infoByFolder()Landroid/database/Cursor;

    move-result-object v4

    .line 1547
    .local v4, tempCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-static {v5}, Lcom/sec/android/app/videoplayer/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1548
    .local v0, cursor:Landroid/database/MatrixCursor;
    const-string v2, ""

    .line 1549
    .local v2, folderName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1552
    .local v3, numOfFiles:I
    if-eqz v4, :cond_72

    :try_start_13
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_72

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 1554
    :cond_1f
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1555
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1556
    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "-102"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, ""

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, ""

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, ""

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, ""

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, ""

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, ""

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1558
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 1560
    if-eqz v4, :cond_72

    .line 1561
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_71
    .catchall {:try_start_13 .. :try_end_71} :catchall_a3
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_71} :catch_79

    .line 1562
    const/4 v4, 0x0

    .line 1573
    :cond_72
    if-eqz v4, :cond_78

    .line 1574
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1575
    const/4 v4, 0x0

    .line 1579
    :cond_78
    :goto_78
    return-object v0

    .line 1565
    :catch_79
    move-exception v1

    .line 1566
    .local v1, e:Ljava/lang/Exception;
    :try_start_7a
    const-string v5, "VideoDB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVideoCursorFolderClosed(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    if-eqz v0, :cond_9c

    .line 1569
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->close()V
    :try_end_9b
    .catchall {:try_start_7a .. :try_end_9b} :catchall_a3

    .line 1570
    const/4 v0, 0x0

    .line 1573
    :cond_9c
    if-eqz v4, :cond_78

    .line 1574
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1575
    const/4 v4, 0x0

    goto :goto_78

    .line 1573
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_a3
    move-exception v5

    if-eqz v4, :cond_aa

    .line 1574
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1575
    const/4 v4, 0x0

    :cond_aa
    throw v5
.end method

.method public getVideoDB()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getVideoDetails(J)Landroid/database/Cursor;
    .registers 9
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 1900
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "*"

    aput-object v4, v2, v0

    .line 1902
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_14

    .line 1903
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1904
    iput-object v3, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    .line 1907
    :cond_14
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1908
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    .line 1910
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getVideoDetails(Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 8
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 1887
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "*"

    aput-object v1, v2, v0

    .line 1889
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_14

    .line 1890
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1891
    iput-object v3, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    .line 1894
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    .line 1896
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getVideoDetails(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter "filePath"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 1871
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "*"

    aput-object v0, v2, v7

    .line 1872
    .local v2, cols:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1873
    .local v6, where:Ljava/lang/StringBuilder;
    const-string v0, "_data = ?"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1875
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1e

    .line 1876
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1877
    iput-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    .line 1880
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    .line 1883
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getVideoFolderCursor(ILjava/lang/String;I)Landroid/database/Cursor;
    .registers 7
    .parameter "mListType"
    .parameter "strOrder"
    .parameter "columnCnt"

    .prologue
    const/4 v2, 0x5

    .line 247
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_d

    .line 248
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 249
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    .line 252
    :cond_d
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getSortOrderString()Ljava/lang/String;

    .line 254
    const/4 v0, 0x0

    .line 256
    .local v0, tempCursor:Landroid/database/Cursor;
    const-string v1, "SELECT_LIST"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 257
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getAllVideoCursorToSelect(I)Landroid/database/Cursor;

    move-result-object v0

    .line 277
    :cond_1d
    :goto_1d
    if-eqz v0, :cond_88

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_88

    .line 279
    if-ne p1, v2, :cond_2b

    .line 280
    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->excludeDRMFiles(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v0

    .line 283
    :cond_2b
    const-string v1, "_data"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 284
    const/4 v1, 0x4

    if-ne v1, p1, :cond_7e

    .line 286
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    .line 300
    :cond_38
    :goto_38
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    return-object v1

    .line 258
    :cond_3b
    const-string v1, "title"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 259
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursorExceptMyVideo(I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1d

    .line 260
    :cond_48
    const-string v1, "date_added"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 261
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursorExceptMyVideo(I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1d

    .line 262
    :cond_55
    const-string v1, "IsFavorite"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 263
    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursorByFavorite(II)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1d

    .line 264
    :cond_62
    const-string v1, "_data"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 265
    const/4 v1, 0x6

    if-eq p1, v1, :cond_79

    .line 266
    if-eq p1, v2, :cond_74

    .line 267
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursorByFolderList(I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1d

    .line 269
    :cond_74
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursorExceptMyVideo(I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1d

    .line 272
    :cond_79
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursorFolderClosed()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1d

    .line 288
    :cond_7e
    invoke-virtual {p0, v0, p1, p3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->reviseVideoCursor(Landroid/database/Cursor;II)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    goto :goto_38

    .line 292
    :cond_85
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    goto :goto_38

    .line 295
    :cond_88
    if-eqz v0, :cond_38

    .line 296
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 297
    const/4 v0, 0x0

    goto :goto_38
.end method

.method public getVideoFolderListCursor(ILjava/lang/String;II)Landroid/database/Cursor;
    .registers 8
    .parameter "mListType"
    .parameter "strOrder"
    .parameter "columnCnt"
    .parameter "bucket_id"

    .prologue
    const/4 v2, 0x5

    .line 305
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getSortOrderString()Ljava/lang/String;

    .line 307
    const/4 v0, 0x0

    .line 309
    .local v0, tempCursor:Landroid/database/Cursor;
    const-string v1, "SELECT_LIST"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 310
    invoke-direct {p0, p1, p4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFolderListVideoCursorToSelect(II)Landroid/database/Cursor;

    move-result-object v0

    .line 330
    :cond_11
    :goto_11
    if-eqz v0, :cond_7c

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7c

    .line 332
    if-ne p1, v2, :cond_1f

    .line 333
    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->excludeDRMFiles(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v0

    .line 336
    :cond_1f
    const-string v1, "_data"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 337
    const/4 v1, 0x4

    if-ne v1, p1, :cond_72

    .line 338
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    .line 354
    :cond_2c
    :goto_2c
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    return-object v1

    .line 311
    :cond_2f
    const-string v1, "title"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 312
    invoke-virtual {p0, p1, p4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoFolderListCursorExceptMyVideo(II)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_11

    .line 313
    :cond_3c
    const-string v1, "date_added"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 314
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursorOfMyVideos(I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_11

    .line 315
    :cond_49
    const-string v1, "IsFavorite"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 316
    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursorByFavorite(II)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_11

    .line 317
    :cond_56
    const-string v1, "_data"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 318
    const/4 v1, 0x6

    if-eq p1, v1, :cond_6d

    .line 319
    if-eq p1, v2, :cond_68

    .line 320
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursorByFolderList(I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_11

    .line 322
    :cond_68
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursorExceptMyVideo(I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_11

    .line 325
    :cond_6d
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursorFolderClosed()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_11

    .line 340
    :cond_72
    invoke-virtual {p0, v0, p1, p3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->reviseVideoCursor(Landroid/database/Cursor;II)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    goto :goto_2c

    .line 342
    :cond_79
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    goto :goto_2c

    .line 346
    :cond_7c
    const/4 v1, 0x3

    if-ne p1, v1, :cond_82

    .line 347
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mCursor:Landroid/database/Cursor;

    goto :goto_2c

    .line 348
    :cond_82
    if-eqz v0, :cond_2c

    .line 349
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 350
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public getVideoFolderListCursorExceptMyVideo(II)Landroid/database/Cursor;
    .registers 21
    .parameter "mListType"
    .parameter "bucket_id"

    .prologue
    .line 752
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/videoplayer/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v13

    .line 753
    .local v13, cols:[Ljava/lang/String;
    new-instance v15, Landroid/database/MatrixCursor;

    invoke-direct {v15, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 754
    .local v15, cursorToReturn:Landroid/database/MatrixCursor;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getSortOrderString()Ljava/lang/String;

    move-result-object v6

    .line 755
    .local v6, orderByClause:Ljava/lang/String;
    const/16 v16, 0x0

    .line 756
    .local v16, cursorVideo:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 757
    .local v14, cursorInfoExtra:Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 763
    .local v8, tempVideoId:J
    :try_start_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/ListType;->getDefaultVideoColumns()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getDefaultWhereClause()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bucket_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 769
    if-eqz v16, :cond_57

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_73

    .line 770
    :cond_57
    if-eqz v16, :cond_5e

    .line 771
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 772
    const/16 v16, 0x0

    .line 774
    :cond_5e
    if-eqz v15, :cond_64

    .line 775
    invoke-virtual {v15}, Landroid/database/MatrixCursor;->close()V
    :try_end_63
    .catchall {:try_start_12 .. :try_end_63} :catchall_2a6
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_63} :catch_272

    .line 776
    const/4 v15, 0x0

    .line 778
    :cond_64
    const/4 v1, 0x0

    .line 847
    if-eqz v16, :cond_6c

    .line 848
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 849
    const/16 v16, 0x0

    .line 852
    :cond_6c
    if-eqz v14, :cond_72

    .line 853
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 854
    const/4 v14, 0x0

    .line 862
    :cond_72
    :goto_72
    return-object v1

    .line 781
    :cond_73
    :try_start_73
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_22e

    .line 784
    :cond_79
    const-string v1, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 785
    const-string v1, "_data"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 786
    .local v10, videoFilePath:Ljava/lang/String;
    const-string v1, "_size"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 787
    .local v11, size:Ljava/lang/String;
    const-string v1, "bucket_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 788
    .local v12, mbucket_id:Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v7

    invoke-interface/range {v7 .. v12}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->getList(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 790
    const-string v1, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    .line 791
    const-string v1, "mini_thumb_magic"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    .line 792
    const-string v1, "title"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    .line 793
    const-string v1, "duration"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    .line 794
    const-string v1, "_data"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    .line 795
    const-string v1, "mime_type"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    .line 797
    if-eqz v14, :cond_139

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_243

    .line 798
    :cond_139
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 799
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 800
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    .line 808
    :goto_14b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    if-eqz v1, :cond_169

    const-string v1, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_169

    const-string v1, "null"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 809
    :cond_169
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    .line 811
    :cond_16f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    if-eqz v1, :cond_18d

    const-string v1, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18d

    const-string v1, "null"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_193

    .line 812
    :cond_18d
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 814
    :cond_193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    if-eqz v1, :cond_1b1

    const-string v1, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b1

    const-string v1, "null"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b7

    .line 815
    :cond_1b1
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 817
    :cond_1b7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    if-eqz v1, :cond_1d5

    const-string v1, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d5

    const-string v1, "null"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1db

    .line 818
    :cond_1d5
    const-string v1, "0"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    .line 821
    :cond_1db
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v15, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 833
    if-eqz v14, :cond_228

    .line 834
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 835
    const/4 v14, 0x0

    .line 837
    :cond_228
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_22b
    .catchall {:try_start_73 .. :try_end_22b} :catchall_2a6
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_22b} :catch_272

    move-result v1

    if-nez v1, :cond_79

    .line 847
    .end local v10           #videoFilePath:Ljava/lang/String;
    .end local v11           #size:Ljava/lang/String;
    .end local v12           #mbucket_id:Ljava/lang/String;
    :cond_22e
    if-eqz v16, :cond_235

    .line 848
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 849
    const/16 v16, 0x0

    .line 852
    :cond_235
    if-eqz v14, :cond_23b

    .line 853
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 854
    const/4 v14, 0x0

    .line 858
    :cond_23b
    :goto_23b
    if-eqz v15, :cond_240

    .line 859
    invoke-virtual {v15}, Landroid/database/MatrixCursor;->moveToFirst()Z

    :cond_240
    move-object v1, v15

    .line 862
    goto/16 :goto_72

    .line 802
    .restart local v10       #videoFilePath:Ljava/lang/String;
    .restart local v11       #size:Ljava/lang/String;
    .restart local v12       #mbucket_id:Ljava/lang/String;
    :cond_243
    :try_start_243
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 803
    const-string v1, "IsFavorite"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 804
    const-string v1, "PlayedWhen"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 805
    const-string v1, "ResumePosition"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;
    :try_end_270
    .catchall {:try_start_243 .. :try_end_270} :catchall_2a6
    .catch Ljava/lang/Exception; {:try_start_243 .. :try_end_270} :catch_272

    goto/16 :goto_14b

    .line 839
    .end local v10           #videoFilePath:Ljava/lang/String;
    .end local v11           #size:Ljava/lang/String;
    .end local v12           #mbucket_id:Ljava/lang/String;
    :catch_272
    move-exception v17

    .line 840
    .local v17, e:Ljava/lang/Exception;
    :try_start_273
    const-string v1, "VideoDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoCursorExceptMyVideo() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 842
    if-eqz v15, :cond_298

    .line 843
    invoke-virtual {v15}, Landroid/database/MatrixCursor;->close()V
    :try_end_297
    .catchall {:try_start_273 .. :try_end_297} :catchall_2a6

    .line 844
    const/4 v15, 0x0

    .line 847
    :cond_298
    if-eqz v16, :cond_29f

    .line 848
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 849
    const/16 v16, 0x0

    .line 852
    :cond_29f
    if-eqz v14, :cond_23b

    .line 853
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 854
    const/4 v14, 0x0

    goto :goto_23b

    .line 847
    .end local v17           #e:Ljava/lang/Exception;
    :catchall_2a6
    move-exception v1

    if-eqz v16, :cond_2ae

    .line 848
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 849
    const/16 v16, 0x0

    .line 852
    :cond_2ae
    if-eqz v14, :cond_2b4

    .line 853
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 854
    const/4 v14, 0x0

    :cond_2b4
    throw v1
.end method

.method public getVideoIdByBucketId(ZJ)J
    .registers 32
    .parameter "gonext"
    .parameter "curID"

    .prologue
    .line 2469
    const-string v2, "VideoDB"

    const-string v3, "getVideoIdByBucketId() - Start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    const/16 v24, 0x0

    .line 2472
    .local v24, position:I
    const/16 v27, 0x0

    .line 2473
    .local v27, totalCnt:I
    const-wide/16 v18, -0x1

    .line 2475
    .local v18, id:J
    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    .line 2476
    .local v25, selection:Ljava/lang/StringBuffer;
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    .line 2478
    .local v26, selection2:Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "count(_id)"

    aput-object v3, v4, v2

    .line 2479
    .local v4, cols:[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v10, v2

    .line 2481
    .local v10, cols2:[Ljava/lang/String;
    const/4 v14, 0x0

    .line 2482
    .local v14, c:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 2484
    .local v15, cursor:Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 2485
    .local v21, orderByKeywrod:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2486
    .local v7, sortOrder:Ljava/lang/String;
    const/16 v23, 0x0

    .line 2488
    .local v23, path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getPreviewFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v22

    .line 2490
    .local v22, parentFile:Ljava/io/File;
    if-eqz v22, :cond_59

    .line 2491
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    .line 2493
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->hashCode()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getTotalCntinSameBucketId(I)I

    move-result v27

    .line 2500
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getPreviewSortType()I

    move-result v2

    packed-switch v2, :pswitch_data_434

    .line 2550
    const-wide/16 v2, -0x1

    .line 2620
    :cond_58
    :goto_58
    return-wide v2

    .line 2496
    :cond_59
    const-string v2, "VideoDB"

    const-string v3, "getVideoIdByBucketId() - parentFile is null. return!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    const-wide/16 v2, -0x1

    goto :goto_58

    .line 2502
    :pswitch_63
    const-string v21, "date_modified"

    .line 2503
    const-string v7, "date_modified ASC"

    .line 2504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < ( select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from video where _id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2553
    :goto_99
    const-string v2, " AND "

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bucket_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2556
    const-string v2, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoIdByBucketId() - selection : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    const-string v2, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoIdByBucketId() - sortOrder : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    :try_start_f8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2565
    if-eqz v14, :cond_15e

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_15e

    .line 2566
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2567
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 2569
    .local v20, index:I
    const-string v2, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoIdByBucketId() - current index : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_38d

    .line 2572
    add-int/lit8 v24, v20, 0x1

    .line 2574
    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_144

    .line 2575
    const/16 v24, 0x0

    .line 2583
    :cond_144
    :goto_144
    const-string v2, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoIdByBucketId() - next index : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15e
    .catchall {:try_start_f8 .. :try_end_15e} :catchall_3dd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f8 .. :try_end_15e} :catch_395
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_f8 .. :try_end_15e} :catch_3b9

    .line 2592
    .end local v20           #index:I
    :cond_15e
    if-eqz v14, :cond_163

    .line 2593
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2598
    :cond_163
    :try_start_163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?&limit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 2599
    .local v9, uri2:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bucket_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2601
    const-string v2, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoIdByBucketId() - selection2 : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 2606
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2607
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 2608
    const-string v2, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " test - id : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1fc
    .catchall {:try_start_163 .. :try_end_1fc} :catchall_42c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_163 .. :try_end_1fc} :catch_3e4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_163 .. :try_end_1fc} :catch_408

    .line 2616
    if-eqz v15, :cond_201

    .line 2617
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_201
    move-wide/from16 v2, v18

    .line 2620
    goto/16 :goto_58

    .line 2508
    .end local v9           #uri2:Landroid/net/Uri;
    :pswitch_205
    const-string v21, "date_modified"

    .line 2509
    const-string v7, "date_modified DESC"

    .line 2510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > ( select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from video where _id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_99

    .line 2514
    :pswitch_23d
    const-string v21, "_display_name"

    .line 2515
    const-string v7, "_display_name ASC"

    .line 2516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < ( select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from video where _id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_99

    .line 2520
    :pswitch_275
    const-string v21, "_display_name"

    .line 2521
    const-string v7, "_display_name DESC"

    .line 2522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > ( select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from video where _id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_99

    .line 2526
    :pswitch_2ad
    const-string v21, "_size"

    .line 2527
    const-string v7, "_size ASC"

    .line 2528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < ( select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from video where _id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_99

    .line 2532
    :pswitch_2e5
    const-string v21, "_size"

    .line 2533
    const-string v7, "_size DESC"

    .line 2534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > ( select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from video where _id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_99

    .line 2538
    :pswitch_31d
    const-string v21, "mime_type"

    .line 2539
    const-string v7, "mime_type ASC"

    .line 2540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < ( select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from video where _id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_99

    .line 2544
    :pswitch_355
    const-string v21, "mime_type"

    .line 2545
    const-string v7, "mime_type DESC"

    .line 2546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > ( select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from video where _id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_99

    .line 2577
    .restart local v20       #index:I
    :cond_38d
    add-int/lit8 v24, v20, -0x1

    .line 2579
    if-gez v24, :cond_144

    .line 2580
    add-int/lit8 v24, v27, -0x1

    goto/16 :goto_144

    .line 2585
    .end local v20           #index:I
    :catch_395
    move-exception v16

    .line 2586
    .local v16, e:Landroid/database/sqlite/SQLiteException;
    :try_start_396
    const-string v2, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoIdByBucketId - SQLiteException :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b0
    .catchall {:try_start_396 .. :try_end_3b0} :catchall_3dd

    .line 2587
    const-wide/16 v2, 0x0

    .line 2592
    if-eqz v14, :cond_58

    .line 2593
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_58

    .line 2588
    .end local v16           #e:Landroid/database/sqlite/SQLiteException;
    :catch_3b9
    move-exception v17

    .line 2589
    .local v17, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_3ba
    const-string v2, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoIdByBucketId - UnsupportedOperationException :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d4
    .catchall {:try_start_3ba .. :try_end_3d4} :catchall_3dd

    .line 2590
    const-wide/16 v2, 0x0

    .line 2592
    if-eqz v14, :cond_58

    .line 2593
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_58

    .line 2592
    .end local v17           #ex:Ljava/lang/UnsupportedOperationException;
    :catchall_3dd
    move-exception v2

    if-eqz v14, :cond_3e3

    .line 2593
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3e3
    throw v2

    .line 2609
    :catch_3e4
    move-exception v16

    .line 2610
    .restart local v16       #e:Landroid/database/sqlite/SQLiteException;
    :try_start_3e5
    const-string v2, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoIdByBucketId2 - SQLiteException :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3ff
    .catchall {:try_start_3e5 .. :try_end_3ff} :catchall_42c

    .line 2611
    const-wide/16 v2, 0x0

    .line 2616
    if-eqz v15, :cond_58

    .line 2617
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_58

    .line 2612
    .end local v16           #e:Landroid/database/sqlite/SQLiteException;
    :catch_408
    move-exception v17

    .line 2613
    .restart local v17       #ex:Ljava/lang/UnsupportedOperationException;
    :try_start_409
    const-string v2, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoIdByBucketId2 - UnsupportedOperationException :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_423
    .catchall {:try_start_409 .. :try_end_423} :catchall_42c

    .line 2614
    const-wide/16 v2, 0x0

    .line 2616
    if-eqz v15, :cond_58

    .line 2617
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_58

    .line 2616
    .end local v17           #ex:Ljava/lang/UnsupportedOperationException;
    :catchall_42c
    move-exception v2

    if-eqz v15, :cond_432

    .line 2617
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_432
    throw v2

    .line 2500
    nop

    :pswitch_data_434
    .packed-switch 0xa
        :pswitch_63
        :pswitch_31d
        :pswitch_23d
        :pswitch_2ad
        :pswitch_205
        :pswitch_355
        :pswitch_275
        :pswitch_2e5
    .end packed-switch
.end method

.method public getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;
    .registers 4
    .parameter "dist"

    .prologue
    .line 2277
    const/4 v0, 0x0

    .line 2279
    .local v0, subList:Lcom/sec/android/app/videoplayer/db/IVideoSubList;
    packed-switch p1, :pswitch_data_c

    .line 2287
    :goto_4
    return-object v0

    .line 2281
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;->getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/sec/android/app/videoplayer/db/VideoInfoExtra;

    move-result-object v0

    .line 2282
    goto :goto_4

    .line 2279
    :pswitch_data_c
    .packed-switch 0x5
        :pswitch_5
    .end packed-switch
.end method

.method public isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .registers 13
    .parameter "contentResolver"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 135
    const/4 v8, 0x0

    .line 136
    .local v8, result:Z
    const/4 v6, 0x0

    .line 139
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_4
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "volume"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 140
    if-eqz v6, :cond_48

    .line 141
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_48

    .line 142
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 143
    const-string v0, "external"

    const-string v1, "volume"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "internal"

    const-string v1, "volume"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_47
    move v8, v10

    .line 148
    :cond_48
    :goto_48
    if-eqz v6, :cond_4e

    .line 149
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4d} :catch_51

    .line 150
    const/4 v6, 0x0

    .line 160
    :cond_4e
    :goto_4e
    return v8

    :cond_4f
    move v8, v9

    .line 143
    goto :goto_48

    .line 152
    :catch_51
    move-exception v7

    .line 154
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "VideoDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMediaScannerScanning() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-eqz v6, :cond_4e

    .line 156
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 157
    const/4 v6, 0x0

    goto :goto_4e
.end method

.method public resetTables()V
    .registers 27

    .prologue
    .line 2306
    const/4 v4, 0x4

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "_data"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "_size"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    const-string v5, "bucket_id"

    aput-object v5, v6, v4

    .line 2313
    .local v6, selectionVideo:[Ljava/lang/String;
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v20, v4

    const/4 v4, 0x1

    const-string v5, "_size"

    aput-object v5, v20, v4

    const/4 v4, 0x2

    const-string v5, "bucket_id"

    aput-object v5, v20, v4

    .line 2319
    .local v20, selectionRecently:[Ljava/lang/String;
    const/16 v18, 0x0

    .line 2321
    .local v18, selectionArgs:[Ljava/lang/String;
    const/16 v22, 0x0

    .line 2322
    .local v22, videoCursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 2324
    .local v10, appCursor:Landroid/database/Cursor;
    const-string v24, ""

    .line 2325
    .local v24, videoId:Ljava/lang/String;
    const-string v23, ""

    .line 2326
    .local v23, videoFilePath:Ljava/lang/String;
    const-string v25, ""

    .line 2327
    .local v25, videoSize:Ljava/lang/String;
    const-string v21, ""

    .line 2329
    .local v21, videoBucketId:Ljava/lang/String;
    const-string v12, ""

    .line 2330
    .local v12, appVideoData:Ljava/lang/String;
    const-string v13, ""

    .line 2331
    .local v13, appVideoSize:Ljava/lang/String;
    const-string v11, ""

    .line 2333
    .local v11, appVideoBucketId:Ljava/lang/String;
    const-string v14, "dbTest"

    .line 2337
    .local v14, cursorTest:Ljava/lang/String;
    :try_start_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 2339
    if-eqz v22, :cond_5a

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_72

    .line 2341
    :cond_5a
    const-string v4, "VideoDB"

    const-string v5, "truncate tables"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->initializeTables()V
    :try_end_64
    .catchall {:try_start_40 .. :try_end_64} :catchall_1f5
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_64} :catch_80

    .line 2391
    :goto_64
    if-eqz v22, :cond_6b

    .line 2392
    :try_start_66
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 2393
    const/16 v22, 0x0

    .line 2395
    :cond_6b
    if-eqz v10, :cond_71

    .line 2396
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_70} :catch_1b5

    .line 2397
    const/4 v10, 0x0

    .line 2403
    :cond_71
    :goto_71
    return-void

    .line 2344
    :cond_72
    :try_start_72
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_b5

    .line 2345
    new-instance v4, Ljava/lang/Exception;

    const-string v5, " - videoCursor.moveToFirst() failed. - is this possible?"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_80
    .catchall {:try_start_72 .. :try_end_80} :catchall_1f5
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_80} :catch_80

    .line 2379
    :catch_80
    move-exception v15

    .line 2380
    .local v15, e:Ljava/lang/Exception;
    :goto_81
    :try_start_81
    const-string v4, "VideoDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - resetTables() - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_81 .. :try_end_9d} :catchall_1f5

    .line 2382
    :try_start_9d
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->initializeTables()V

    .line 2383
    const-string v4, "VideoDB"

    const-string v5, " - call initializeTables() - "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_9d .. :try_end_a7} :catchall_1f3
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a7} :catch_1d4

    .line 2391
    :goto_a7
    if-eqz v22, :cond_ae

    .line 2392
    :try_start_a9
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 2393
    const/16 v22, 0x0

    .line 2395
    :cond_ae
    if-eqz v10, :cond_71

    .line 2396
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b3} :catch_204

    .line 2397
    const/4 v10, 0x0

    goto :goto_71

    .end local v15           #e:Ljava/lang/Exception;
    :cond_b5
    move-object/from16 v19, v18

    .line 2349
    .end local v18           #selectionArgs:[Ljava/lang/String;
    .local v19, selectionArgs:[Ljava/lang/String;
    :try_start_b7
    const-string v4, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 2350
    const-string v4, "_data"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 2351
    const-string v4, "_size"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 2352
    const-string v4, "bucket_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2354
    if-eqz v10, :cond_f5

    .line 2355
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2356
    const/4 v10, 0x0

    .line 2358
    :cond_f5
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v4, 0x0

    aput-object v24, v18, v4

    const/4 v4, 0x1

    aput-object v23, v18, v4

    const/4 v4, 0x2

    aput-object v25, v18, v4

    const/4 v4, 0x3

    aput-object v21, v18, v4
    :try_end_106
    .catchall {:try_start_b7 .. :try_end_106} :catchall_241
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_106} :catch_245

    .line 2359
    .end local v19           #selectionArgs:[Ljava/lang/String;
    .restart local v18       #selectionArgs:[Ljava/lang/String;
    const/4 v4, 0x5

    :try_start_107
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v4

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v1}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->getListToCheck([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2361
    if-eqz v10, :cond_1a7

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1a7

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1a7

    .line 2363
    const-string v4, "_data"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2364
    const-string v4, "_size"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2365
    const-string v4, "bucket_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2367
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a7

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a7

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a7

    .line 2368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InfoExtra - updateIdAndUri w/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v21

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->updateIdAndUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    :cond_1a7
    if-eqz v10, :cond_1ad

    .line 2374
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2375
    const/4 v10, 0x0

    .line 2377
    :cond_1ad
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1b0
    .catchall {:try_start_107 .. :try_end_1b0} :catchall_1f5
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_1b0} :catch_80

    move-result v4

    if-nez v4, :cond_b5

    goto/16 :goto_64

    .line 2399
    :catch_1b5
    move-exception v17

    .line 2400
    .local v17, exc:Ljava/lang/Exception;
    const-string v4, "VideoDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - resetTables() - finally - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_71

    .line 2384
    .end local v17           #exc:Ljava/lang/Exception;
    .restart local v15       #e:Ljava/lang/Exception;
    :catch_1d4
    move-exception v16

    .line 2385
    .local v16, ex:Ljava/lang/Exception;
    :try_start_1d5
    const-string v4, "VideoDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - resetTables() - inner - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f1
    .catchall {:try_start_1d5 .. :try_end_1f1} :catchall_1f3

    goto/16 :goto_a7

    .line 2386
    .end local v16           #ex:Ljava/lang/Exception;
    :catchall_1f3
    move-exception v4

    :try_start_1f4
    throw v4
    :try_end_1f5
    .catchall {:try_start_1f4 .. :try_end_1f5} :catchall_1f5

    .line 2390
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_1f5
    move-exception v4

    .line 2391
    :goto_1f6
    if-eqz v22, :cond_1fd

    .line 2392
    :try_start_1f8
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 2393
    const/16 v22, 0x0

    .line 2395
    :cond_1fd
    if-eqz v10, :cond_203

    .line 2396
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_202
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_202} :catch_223

    .line 2397
    const/4 v10, 0x0

    .line 2401
    :cond_203
    :goto_203
    throw v4

    .line 2399
    .restart local v15       #e:Ljava/lang/Exception;
    :catch_204
    move-exception v17

    .line 2400
    .restart local v17       #exc:Ljava/lang/Exception;
    const-string v4, "VideoDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - resetTables() - finally - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_71

    .line 2399
    .end local v15           #e:Ljava/lang/Exception;
    .end local v17           #exc:Ljava/lang/Exception;
    :catch_223
    move-exception v17

    .line 2400
    .restart local v17       #exc:Ljava/lang/Exception;
    const-string v5, "VideoDB"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " - resetTables() - finally - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_203

    .line 2390
    .end local v17           #exc:Ljava/lang/Exception;
    .end local v18           #selectionArgs:[Ljava/lang/String;
    .restart local v19       #selectionArgs:[Ljava/lang/String;
    :catchall_241
    move-exception v4

    move-object/from16 v18, v19

    .end local v19           #selectionArgs:[Ljava/lang/String;
    .restart local v18       #selectionArgs:[Ljava/lang/String;
    goto :goto_1f6

    .line 2379
    .end local v18           #selectionArgs:[Ljava/lang/String;
    .restart local v19       #selectionArgs:[Ljava/lang/String;
    :catch_245
    move-exception v15

    move-object/from16 v18, v19

    .end local v19           #selectionArgs:[Ljava/lang/String;
    .restart local v18       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_81
.end method

.method public reviseVideoCursor(Landroid/database/Cursor;II)Landroid/database/Cursor;
    .registers 16
    .parameter "cursor"
    .parameter "mListType"
    .parameter "columnCnt"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1314
    sget-boolean v4, Lcom/sec/android/app/videoplayer/db/VideoDB;->IS_DATA_ONLY:Z

    if-ne v4, v7, :cond_b

    move-object v1, p1

    .line 1443
    :cond_a
    :goto_a
    return-object v1

    .line 1318
    :cond_b
    if-eqz p1, :cond_13

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ge v4, v7, :cond_1b

    .line 1319
    :cond_13
    if-eqz p1, :cond_19

    .line 1320
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1321
    const/4 p1, 0x0

    .line 1323
    :cond_19
    const/4 v1, 0x0

    goto :goto_a

    .line 1326
    :cond_1b
    invoke-static {p2}, Lcom/sec/android/app/videoplayer/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v0

    .line 1327
    .local v0, cols:[Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1328
    .local v1, cursorToReturn:Landroid/database/MatrixCursor;
    const/4 v3, 0x0

    .line 1330
    .local v3, loopCount:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-ne v4, v7, :cond_21e

    .line 1332
    :cond_2b
    const-string v4, "-101"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    const-string v4, "-102"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ad

    .line 1335
    :cond_43
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    .line 1336
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    .line 1337
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    .line 1338
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    .line 1339
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    .line 1340
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    .line 1341
    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 1342
    const/4 v4, 0x7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 1343
    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    .line 1345
    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    aput-object v5, v4, v11

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    aput-object v5, v4, v10

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1357
    if-eq p3, v8, :cond_b2

    if-ne p3, v10, :cond_ea

    .line 1359
    :cond_b2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b3
    add-int/lit8 v4, p3, -0x1

    if-ge v2, v4, :cond_ea

    .line 1360
    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    aput-object v5, v4, v9

    const-string v5, " "

    aput-object v5, v4, v7

    const-string v5, " "

    aput-object v5, v4, v8

    const-string v5, " "

    aput-object v5, v4, v11

    const-string v5, " "

    aput-object v5, v4, v10

    const/4 v5, 0x5

    const-string v6, " "

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, " "

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, " "

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, " "

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1359
    add-int/lit8 v2, v2, 0x1

    goto :goto_b3

    .line 1374
    .end local v2           #i:I
    :cond_ea
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1376
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_f7
    if-ge v2, v3, :cond_16a

    .line 1377
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1378
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    .line 1379
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    .line 1380
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    .line 1381
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    .line 1382
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    .line 1383
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    .line 1384
    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 1385
    const/4 v4, 0x7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 1386
    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    .line 1388
    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    aput-object v5, v4, v11

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    aput-object v5, v4, v10

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1376
    add-int/lit8 v2, v2, 0x1

    goto :goto_f7

    .line 1400
    :cond_16a
    if-eq p3, v8, :cond_16e

    if-ne p3, v10, :cond_218

    .line 1402
    :cond_16e
    rem-int v4, v3, p3

    sub-int v3, p3, v4

    .line 1403
    if-ne v3, p3, :cond_175

    .line 1404
    const/4 v3, 0x0

    .line 1406
    :cond_175
    if-eqz v3, :cond_218

    .line 1407
    const/4 v2, 0x0

    :goto_178
    if-ge v2, v3, :cond_218

    .line 1408
    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "-103"

    aput-object v5, v4, v9

    const-string v5, ""

    aput-object v5, v4, v7

    const-string v5, ""

    aput-object v5, v4, v8

    const-string v5, ""

    aput-object v5, v4, v11

    const-string v5, ""

    aput-object v5, v4, v10

    const/4 v5, 0x5

    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, ""

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1407
    add-int/lit8 v2, v2, 0x1

    goto :goto_178

    .line 1413
    .end local v2           #i:I
    :cond_1ad
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    .line 1414
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    .line 1415
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    .line 1416
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    .line 1417
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    .line 1418
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    .line 1419
    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 1420
    const/4 v4, 0x7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 1421
    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    .line 1423
    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    aput-object v5, v4, v11

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    aput-object v5, v4, v10

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1436
    :cond_218
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 1439
    :cond_21e
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/database/MatrixCursor;->getCount()I

    move-result v4

    if-lez v4, :cond_a

    .line 1440
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->moveToFirst()Z

    goto/16 :goto_a
.end method

.method public reviseVideoCursorFavorite(Landroid/database/Cursor;II)Landroid/database/Cursor;
    .registers 12
    .parameter "cursor"
    .parameter "mListType"
    .parameter "columnCnt"

    .prologue
    .line 1448
    sget-boolean v5, Lcom/sec/android/app/videoplayer/db/VideoDB;->IS_DATA_ONLY:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 1542
    .end local p1
    :goto_5
    return-object p1

    .line 1452
    .restart local p1
    :cond_6
    if-eqz p1, :cond_f

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_11

    .line 1453
    :cond_f
    const/4 p1, 0x0

    goto :goto_5

    .line 1456
    :cond_11
    invoke-static {p2}, Lcom/sec/android/app/videoplayer/util/ListType;->getColumns(I)[Ljava/lang/String;

    move-result-object v0

    .line 1457
    .local v0, cols:[Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1458
    .local v1, cursorToReturn:Landroid/database/MatrixCursor;
    const/4 v4, 0x0

    .line 1459
    .local v4, loopCount:I
    const/4 v3, 0x0

    .line 1461
    .local v3, isFavoriteList:Z
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_199

    .line 1463
    :cond_23
    const-string v5, "-104"

    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11e

    .line 1465
    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1467
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_cc

    .line 1468
    const/4 v3, 0x1

    .line 1473
    :goto_4e
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4f
    if-ge v2, v4, :cond_ce

    .line 1474
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1475
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    .line 1476
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    .line 1477
    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    .line 1478
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    .line 1479
    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    .line 1480
    const/4 v5, 0x5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    .line 1481
    const/4 v5, 0x6

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 1482
    const/4 v5, 0x7

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 1483
    const/16 v5, 0x8

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    .line 1485
    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    aput-object v7, v5, v6

    const/16 v6, 0x8

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1473
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 1470
    .end local v2           #i:I
    :cond_cc
    const/4 v3, 0x0

    goto :goto_4e

    .line 1498
    .restart local v2       #i:I
    :cond_ce
    const/4 v5, 0x2

    if-eq p3, v5, :cond_d7

    const/4 v5, 0x4

    if-eq p3, v5, :cond_d7

    const/4 v5, 0x1

    if-ne p3, v5, :cond_193

    .line 1502
    :cond_d7
    const/4 v5, 0x1

    if-ne v3, v5, :cond_193

    .line 1503
    rem-int v5, v4, p3

    sub-int v4, p3, v5

    .line 1504
    if-ne v4, p3, :cond_e1

    .line 1505
    const/4 v4, 0x0

    .line 1508
    :cond_e1
    if-eqz v4, :cond_193

    .line 1509
    const/4 v2, 0x0

    :goto_e4
    if-ge v2, v4, :cond_193

    .line 1510
    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "-103"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, ""

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, ""

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, ""

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, ""

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, ""

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, ""

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, ""

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, ""

    aput-object v7, v5, v6

    invoke-virtual {v1, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1509
    add-int/lit8 v2, v2, 0x1

    goto :goto_e4

    .line 1516
    .end local v2           #i:I
    :cond_11e
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    .line 1517
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    .line 1518
    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    .line 1519
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    .line 1520
    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    .line 1521
    const/4 v5, 0x5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    .line 1522
    const/4 v5, 0x6

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    .line 1523
    const/4 v5, 0x7

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    .line 1524
    const/16 v5, 0x8

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    .line 1526
    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->videoId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->miniThumbMagic:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->title:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->duration:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->data:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mimeType:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->isFavorite:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->playedWhen:Ljava/lang/String;

    aput-object v7, v5, v6

    const/16 v6, 0x8

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->resumePosition:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1539
    :cond_193
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_23

    :cond_199
    move-object p1, v1

    .line 1542
    goto/16 :goto_5
.end method

.method public setRemoveFlag(JI)I
    .registers 13
    .parameter "id"
    .parameter "flag"

    .prologue
    const/4 v2, 0x0

    .line 1952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1953
    .local v1, where:Ljava/lang/StringBuilder;
    const-string v3, "_id = ?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    :try_start_b
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b .. :try_end_24} :catch_26

    move-result v2

    .line 1960
    :goto_25
    return v2

    .line 1958
    :catch_26
    move-exception v0

    .line 1959
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    const-string v3, "VideoDB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRemoveFlag - UnsupportedOperationException :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method public setRemoveFlag(Ljava/util/ArrayList;I)I
    .registers 8
    .parameter
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1936
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 1937
    .local v0, count:I
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1939
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    :try_start_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1f

    .line 1940
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, p2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->setRemoveFlag(JI)I

    move-result v2

    .line 1941
    .local v2, tempCount:I
    add-int/2addr v0, v2

    .line 1939
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1943
    .end local v2           #tempCount:I
    :cond_1f
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_2a

    .line 1946
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1948
    return v0

    .line 1946
    :catchall_2a
    move-exception v3

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public updateFavorite(JI)I
    .registers 9
    .parameter "videoId"
    .parameter "isFavoriteFlag"

    .prologue
    .line 2017
    const/4 v1, 0x0

    .line 2020
    .local v1, updatedCount:I
    const/4 v2, 0x5

    :try_start_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->updateFavorite(JI)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_b

    move-result v1

    .line 2025
    :goto_a
    return v1

    .line 2021
    :catch_b
    move-exception v0

    .line 2022
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VideoDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFavorite - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public updateResumePosition(JJ)I
    .registers 13
    .parameter "id"
    .parameter "pos"

    .prologue
    .line 1966
    const/4 v0, 0x0

    .line 1968
    .local v0, UpdateCnt:I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1969
    .local v2, newValues:Landroid/content/ContentValues;
    const-string v5, "resumePos"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1970
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1971
    .local v3, stringBuilder:Ljava/lang/StringBuilder;
    const-string v5, "_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1972
    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1973
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1974
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1977
    .local v4, where:Ljava/lang/String;
    :try_start_25
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_31} :catch_34

    move-result v0

    move v5, v0

    .line 1985
    :goto_33
    return v5

    .line 1980
    :catch_34
    move-exception v1

    .line 1981
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "VideoDB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateResumePosition - Exception occured:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    const/4 v5, 0x0

    goto :goto_33
.end method

.method public updateSubTitleLanguage(JLjava/lang/String;)I
    .registers 11
    .parameter "id"
    .parameter "lang"

    .prologue
    .line 2229
    const-string v4, "VideoDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSubTitleLanguage() - lang : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    const/4 v0, 0x0

    .line 2233
    .local v0, UpdateCnt:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2234
    .local v1, newValues:Landroid/content/ContentValues;
    const-string v4, "subtitle_lan"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2236
    .local v2, stringBuilder:Ljava/lang/StringBuilder;
    const-string v4, "_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2237
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2238
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2241
    .local v3, where:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2243
    return v0
.end method

.method public updateSyncTime(JJ)I
    .registers 13
    .parameter "id"
    .parameter "sync"

    .prologue
    .line 2178
    const/4 v0, 0x0

    .line 2180
    .local v0, UpdateCnt:I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2181
    .local v2, newValues:Landroid/content/ContentValues;
    const-string v5, "sync_time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2183
    .local v3, stringBuilder:Ljava/lang/StringBuilder;
    const-string v5, "_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2184
    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2185
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2186
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2189
    .local v4, where:Ljava/lang/String;
    :try_start_25
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/db/VideoDB;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_31} :catch_34

    move-result v0

    move v5, v0

    .line 2196
    :goto_33
    return v5

    .line 2191
    :catch_34
    move-exception v1

    .line 2192
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "VideoDB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSyncTime - Exception occured:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    const/4 v5, 0x0

    goto :goto_33
.end method
