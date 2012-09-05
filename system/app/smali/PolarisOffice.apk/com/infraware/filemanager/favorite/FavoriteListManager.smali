.class public Lcom/infraware/filemanager/favorite/FavoriteListManager;
.super Ljava/lang/Object;
.source "FavoriteListManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;
    }
.end annotation


# static fields
.field private static final DUPLICATE_CHECK_ERROR:I = -0x2

.field private static final DUPLICATE_CHECK_NOTDUP:I = -0x1

.field private static final LIVE_FOLDER_PROJECTION_MAP:Ljava/util/HashMap; = null
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

.field private static final MAX_KEEPING_FILE_COUNT:I = 0xff

.field private static final RFM_LOGTAG:Ljava/lang/String; = "FavoriteFileMgr"

.field private static mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

.field private static volatile mFavoriteFileManager:Lcom/infraware/filemanager/favorite/FavoriteListManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileManager:Lcom/infraware/filemanager/favorite/FavoriteListManager;

    .line 66
    sput-object v0, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/infraware/filemanager/favorite/FavoriteListManager;->LIVE_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    .line 71
    sget-object v0, Lcom/infraware/filemanager/favorite/FavoriteListManager;->LIVE_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/infraware/filemanager/favorite/FavoriteListManager;->LIVE_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "filename AS name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/infraware/filemanager/favorite/FavoriteListManager;->LIVE_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "last_modified AS description"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "aCtx"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-direct {v0, p0, p1}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;-><init>(Lcom/infraware/filemanager/favorite/FavoriteListManager;Landroid/content/Context;)V

    sput-object v0, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    .line 82
    return-void
.end method

.method private checkDuplicateFile(Ljava/io/File;)I
    .registers 9
    .parameter "aTargetFile"

    .prologue
    .line 389
    const/4 v2, 0x0

    .line 390
    .local v2, favoriteDB:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 393
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_2
    sget-object v5, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v5}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 395
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, path:Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 398
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SELECT * FROM FavoriteFiles WHERE path=\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 400
    const-string v6, "   AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "filename"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 398
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 400
    const/4 v6, 0x0

    .line 397
    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 402
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_74

    .line 403
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 404
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5e
    .catchall {:try_start_2 .. :try_end_5e} :catchall_a4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5e} :catch_8a

    move-result v3

    .line 419
    .local v3, pKey:I
    if-eqz v0, :cond_6a

    .line 420
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_6a

    .line 421
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 424
    :cond_6a
    sget-object v5, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v5, :cond_73

    .line 425
    sget-object v5, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v5}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    .line 415
    .end local v3           #pKey:I
    .end local v4           #path:Ljava/lang/String;
    :cond_73
    :goto_73
    return v3

    .line 419
    .restart local v4       #path:Ljava/lang/String;
    :cond_74
    if-eqz v0, :cond_7f

    .line 420
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_7f

    .line 421
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 424
    :cond_7f
    sget-object v5, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v5, :cond_88

    .line 425
    sget-object v5, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v5}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    .line 408
    :cond_88
    const/4 v3, -0x1

    goto :goto_73

    .line 413
    .end local v4           #path:Ljava/lang/String;
    :catch_8a
    move-exception v1

    .line 414
    .local v1, e:Ljava/lang/Exception;
    :try_start_8b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_a4

    .line 419
    if-eqz v0, :cond_99

    .line 420
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_99

    .line 421
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 424
    :cond_99
    sget-object v5, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v5, :cond_a2

    .line 425
    sget-object v5, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v5}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    .line 415
    :cond_a2
    const/4 v3, -0x2

    goto :goto_73

    .line 417
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_a4
    move-exception v5

    .line 419
    if-eqz v0, :cond_b0

    .line 420
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_b0

    .line 421
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 424
    :cond_b0
    sget-object v6, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v6, :cond_b9

    .line 425
    sget-object v6, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v6}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    .line 427
    :cond_b9
    throw v5
.end method

.method private checkDuplicateFile(Ljava/lang/String;)I
    .registers 11
    .parameter "aTargetFileFullPath"

    .prologue
    .line 431
    const/4 v2, 0x0

    .line 432
    .local v2, favoriteDB:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 435
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_2
    sget-object v7, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v7}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 437
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 439
    .local v6, slashIdx:I
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 440
    .local v5, path:Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 442
    .local v3, name:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SELECT * FROM FavoriteFiles WHERE path=\""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 444
    const-string v8, "   AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "filename"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 442
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 444
    const/4 v8, 0x0

    .line 441
    invoke-virtual {v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 446
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_76

    .line 447
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 448
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I
    :try_end_60
    .catchall {:try_start_2 .. :try_end_60} :catchall_a6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_60} :catch_8c

    move-result v4

    .line 461
    .local v4, pKey:I
    if-eqz v0, :cond_6c

    .line 462
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_6c

    .line 463
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 466
    :cond_6c
    sget-object v7, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v7, :cond_75

    .line 467
    sget-object v7, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v7}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    .line 457
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #pKey:I
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #slashIdx:I
    :cond_75
    :goto_75
    return v4

    .line 461
    .restart local v3       #name:Ljava/lang/String;
    .restart local v5       #path:Ljava/lang/String;
    .restart local v6       #slashIdx:I
    :cond_76
    if-eqz v0, :cond_81

    .line 462
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_81

    .line 463
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 466
    :cond_81
    sget-object v7, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v7, :cond_8a

    .line 467
    sget-object v7, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v7}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    .line 452
    :cond_8a
    const/4 v4, -0x1

    goto :goto_75

    .line 455
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #slashIdx:I
    :catch_8c
    move-exception v1

    .line 456
    .local v1, e:Ljava/lang/Exception;
    :try_start_8d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_a6

    .line 461
    if-eqz v0, :cond_9b

    .line 462
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_9b

    .line 463
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 466
    :cond_9b
    sget-object v7, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v7, :cond_a4

    .line 467
    sget-object v7, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v7}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    .line 457
    :cond_a4
    const/4 v4, -0x2

    goto :goto_75

    .line 459
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_a6
    move-exception v7

    .line 461
    if-eqz v0, :cond_b2

    .line 462
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_b2

    .line 463
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 466
    :cond_b2
    sget-object v8, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v8, :cond_bb

    .line 467
    sget-object v8, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v8}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    .line 469
    :cond_bb
    throw v7
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/favorite/FavoriteListManager;
    .registers 3
    .parameter "aCtx"

    .prologue
    .line 85
    sget-object v0, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileManager:Lcom/infraware/filemanager/favorite/FavoriteListManager;

    if-nez v0, :cond_13

    .line 86
    const-class v1, Lcom/infraware/filemanager/favorite/FavoriteListManager;

    monitor-enter v1

    .line 87
    :try_start_7
    sget-object v0, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileManager:Lcom/infraware/filemanager/favorite/FavoriteListManager;

    if-nez v0, :cond_12

    .line 88
    new-instance v0, Lcom/infraware/filemanager/favorite/FavoriteListManager;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/favorite/FavoriteListManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileManager:Lcom/infraware/filemanager/favorite/FavoriteListManager;

    .line 86
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 92
    :cond_13
    sget-object v0, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileManager:Lcom/infraware/filemanager/favorite/FavoriteListManager;

    return-object v0

    .line 86
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private insertFile(Ljava/io/File;)V
    .registers 15
    .parameter "targetFile"

    .prologue
    .line 315
    const/4 v2, 0x0

    .line 317
    .local v2, favoriteDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    sget-object v11, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v11}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, drmType:I
    const-wide/16 v9, 0x0

    .local v9, size:J
    const-wide/16 v6, 0x0

    .local v6, lastModifiedDate:J
    const-wide/16 v4, 0x0

    .line 321
    .local v4, lastAccessedDate:J
    const/4 v3, 0x0

    .local v3, filename:Ljava/lang/String;
    const/4 v8, 0x0

    .line 323
    .local v8, path:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 324
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 325
    const/4 v11, 0x0

    const-string v12, "/"

    invoke-virtual {v8, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 326
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 327
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 331
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "INSERT INTO FavoriteFiles VALUES ( null, \""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 334
    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 335
    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 336
    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 337
    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 338
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ");"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 331
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 330
    invoke-virtual {v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_1 .. :try_end_7f} :catchall_97
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7f} :catch_89

    .line 346
    sget-object v11, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v11, :cond_88

    .line 347
    sget-object v11, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v11}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    .line 350
    .end local v0           #drmType:I
    .end local v3           #filename:Ljava/lang/String;
    .end local v4           #lastAccessedDate:J
    .end local v6           #lastModifiedDate:J
    .end local v8           #path:Ljava/lang/String;
    .end local v9           #size:J
    :cond_88
    :goto_88
    return-void

    .line 341
    :catch_89
    move-exception v1

    .line 342
    .local v1, e:Ljava/lang/Exception;
    :try_start_8a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_97

    .line 346
    sget-object v11, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v11, :cond_88

    .line 347
    sget-object v11, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v11}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    goto :goto_88

    .line 344
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_97
    move-exception v11

    .line 346
    sget-object v12, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v12, :cond_a1

    .line 347
    sget-object v12, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v12}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    .line 349
    :cond_a1
    throw v11
.end method

.method private makeFileItem(ILjava/lang/String;Ljava/lang/String;JJJI)Lcom/infraware/filemanager/file/FileListItem;
    .registers 16
    .parameter "aPKey"
    .parameter "aFilename"
    .parameter "aPath"
    .parameter "aSize"
    .parameter "aLastModifiedDate"
    .parameter "aLastAccessedDate"
    .parameter "aDrmType"

    .prologue
    .line 220
    new-instance v1, Lcom/infraware/filemanager/file/FileListItem;

    invoke-direct {v1}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    .line 221
    .local v1, item:Lcom/infraware/filemanager/file/FileListItem;
    iput p1, v1, Lcom/infraware/filemanager/file/FileListItem;->favoritePkey:I

    .line 222
    const/4 v3, 0x1

    iput v3, v1, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 224
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 226
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    .line 230
    :goto_2f
    iput-object p3, v1, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 231
    const-string v3, "."

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 232
    .local v2, prevExtIdx:I
    iget-boolean v3, v1, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-nez v3, :cond_3e

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4f

    .line 234
    :cond_3e
    iput-object p2, v1, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 235
    const-string v3, ""

    iput-object v3, v1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    .line 243
    :goto_44
    iput-wide p4, v1, Lcom/infraware/filemanager/file/FileListItem;->size:J

    .line 244
    iput-wide p6, v1, Lcom/infraware/filemanager/file/FileListItem;->updateTime:J

    .line 245
    iput-wide p8, v1, Lcom/infraware/filemanager/file/FileListItem;->accessTime:J

    .line 247
    return-object v1

    .line 228
    .end local v2           #prevExtIdx:I
    :cond_4b
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    goto :goto_2f

    .line 239
    .restart local v2       #prevExtIdx:I
    :cond_4f
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 240
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    goto :goto_44
.end method

.method private shrinkFavoriteDB()V
    .registers 5

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 154
    .local v1, favoriteDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    sget-object v2, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v2}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 156
    const-string v2, "DELETE FROM FavoriteFiles  WHERE _id NOT IN (SELECT _id   FROM FavoriteFiles   ORDER BY last_accessed DESC LIMIT 255)"

    .line 155
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_16

    .line 168
    sget-object v2, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v2, :cond_15

    .line 169
    sget-object v2, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v2}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    .line 172
    :cond_15
    :goto_15
    return-void

    .line 163
    :catch_16
    move-exception v0

    .line 164
    .local v0, e:Ljava/lang/Exception;
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_24

    .line 168
    sget-object v2, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v2, :cond_15

    .line 169
    sget-object v2, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v2}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    goto :goto_15

    .line 166
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_24
    move-exception v2

    .line 168
    sget-object v3, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v3, :cond_2e

    .line 169
    sget-object v3, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v3}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    .line 171
    :cond_2e
    throw v2
.end method

.method private updateFile(Ljava/io/File;I)V
    .registers 14
    .parameter "aTargetFile"
    .parameter "aTargetIdx"

    .prologue
    .line 353
    const/4 v2, 0x0

    .line 355
    .local v2, favoriteDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    sget-object v9, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v9}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, drmType:I
    const-wide/16 v7, 0x0

    .local v7, size:J
    const-wide/16 v5, 0x0

    .local v5, lastModifiedDate:J
    const-wide/16 v3, 0x0

    .line 361
    .local v3, lastAccessedDate:J
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 362
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 366
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "UPDATE FavoriteFiles   SET size="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 368
    const-string v10, "last_modified"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 369
    const-string v10, "last_accessed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 370
    const-string v10, "drm_type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 371
    const-string v10, " WHERE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_id"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 366
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 365
    invoke-virtual {v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_1 .. :try_end_84} :catchall_9c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_84} :catch_8e

    .line 379
    sget-object v9, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v9, :cond_8d

    .line 380
    sget-object v9, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v9}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    .line 383
    .end local v0           #drmType:I
    .end local v3           #lastAccessedDate:J
    .end local v5           #lastModifiedDate:J
    .end local v7           #size:J
    :cond_8d
    :goto_8d
    return-void

    .line 374
    :catch_8e
    move-exception v1

    .line 375
    .local v1, e:Ljava/lang/Exception;
    :try_start_8f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_9c

    .line 379
    sget-object v9, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v9, :cond_8d

    .line 380
    sget-object v9, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v9}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    goto :goto_8d

    .line 377
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_9c
    move-exception v9

    .line 379
    sget-object v10, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v10, :cond_a6

    .line 380
    sget-object v10, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v10}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    .line 382
    :cond_a6
    throw v9
.end method


# virtual methods
.method public InsertFileInfoToDB(Ljava/lang/String;)V
    .registers 6
    .parameter "fileAbsolutePath"

    .prologue
    .line 251
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v1, targetFile:Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/infraware/filemanager/favorite/FavoriteListManager;->checkDuplicateFile(Ljava/io/File;)I

    move-result v0

    .line 257
    .local v0, dupIdx:I
    const/4 v2, -0x2

    if-ne v0, v2, :cond_14

    .line 258
    const-string v2, "FavoriteFileMgr"

    const-string v3, "checkDuplicateFile error"

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :goto_13
    return-void

    .line 260
    :cond_14
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1b

    .line 261
    invoke-direct {p0, v1}, Lcom/infraware/filemanager/favorite/FavoriteListManager;->insertFile(Ljava/io/File;)V

    goto :goto_13

    .line 264
    :cond_1b
    invoke-direct {p0, v1, v0}, Lcom/infraware/filemanager/favorite/FavoriteListManager;->updateFile(Ljava/io/File;I)V

    goto :goto_13
.end method

.method public deleteAll()V
    .registers 5

    .prologue
    .line 297
    const/4 v1, 0x0

    .line 300
    .local v1, favoriteDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    sget-object v2, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v2}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 302
    const-string v2, "DELETE FROM FavoriteFiles"

    .line 301
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_16

    .line 308
    sget-object v2, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v2, :cond_15

    .line 309
    sget-object v2, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v2}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    .line 312
    :cond_15
    :goto_15
    return-void

    .line 304
    :catch_16
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Exception;
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_24

    .line 308
    sget-object v2, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v2, :cond_15

    .line 309
    sget-object v2, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v2}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    goto :goto_15

    .line 307
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_24
    move-exception v2

    .line 308
    sget-object v3, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v3, :cond_2e

    .line 309
    sget-object v3, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v3}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    .line 311
    :cond_2e
    throw v2
.end method

.method public deleteFile(Ljava/lang/String;)V
    .registers 7
    .parameter "aTargetFileFullPath"

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/infraware/filemanager/favorite/FavoriteListManager;->checkDuplicateFile(Ljava/lang/String;)I

    move-result v0

    .line 273
    .local v0, dupRet:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_a

    const/4 v3, -0x2

    if-ne v0, v3, :cond_b

    .line 294
    :cond_a
    :goto_a
    return-void

    .line 277
    :cond_b
    const/4 v2, 0x0

    .line 280
    .local v2, favoriteDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_c
    sget-object v3, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v3}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DELETE FROM FavoriteFiles WHERE _id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 282
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 281
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_24} :catch_2e

    .line 290
    sget-object v3, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v3, :cond_a

    .line 291
    sget-object v3, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v3}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    goto :goto_a

    .line 286
    :catch_2e
    move-exception v1

    .line 287
    .local v1, e:Ljava/lang/Exception;
    :try_start_2f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3c

    .line 290
    sget-object v3, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v3, :cond_a

    .line 291
    sget-object v3, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v3}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    goto :goto_a

    .line 289
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_3c
    move-exception v3

    .line 290
    sget-object v4, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v4, :cond_46

    .line 291
    sget-object v4, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v4}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    .line 293
    :cond_46
    throw v3
.end method

.method public getFavoriteFile(I)Lcom/infraware/filemanager/file/FileListItem;
    .registers 19
    .parameter "aIdx"

    .prologue
    .line 175
    const/4 v14, 0x0

    .line 176
    .local v14, favoriteDB:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x0

    .line 178
    .local v12, cursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 181
    .local v15, item:Lcom/infraware/filemanager/file/FileListItem;
    :try_start_3
    sget-object v1, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v1}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v16, "SELECT * FROM FavoriteFiles WHERE _id="

    move-object/from16 v0, v16

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    const/16 v16, 0x0

    .line 182
    move-object/from16 v0, v16

    invoke-virtual {v14, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 186
    const/4 v2, 0x0

    .local v2, pKey:I
    const/4 v11, 0x0

    .line 187
    .local v11, drmType:I
    const-wide/16 v5, 0x0

    .local v5, size:J
    const-wide/16 v7, 0x0

    .local v7, lastModifiedDate:J
    const-wide/16 v9, 0x0

    .line 188
    .local v9, lastAccessedDate:J
    const/4 v3, 0x0

    .local v3, filename:Ljava/lang/String;
    const/4 v4, 0x0

    .line 190
    .local v4, path:Ljava/lang/String;
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5d

    .line 191
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 192
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 193
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 194
    const/4 v1, 0x3

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 195
    const/4 v1, 0x4

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 196
    const/4 v1, 0x5

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 197
    const/4 v1, 0x6

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move-object/from16 v1, p0

    .line 199
    invoke-direct/range {v1 .. v11}, Lcom/infraware/filemanager/favorite/FavoriteListManager;->makeFileItem(ILjava/lang/String;Ljava/lang/String;JJJI)Lcom/infraware/filemanager/file/FileListItem;
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_8b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5c} :catch_72

    move-result-object v15

    .line 206
    :cond_5d
    if-eqz v12, :cond_68

    .line 207
    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_68

    .line 208
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_68
    sget-object v1, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v1, :cond_71

    .line 212
    sget-object v1, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v1}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    .line 216
    .end local v2           #pKey:I
    .end local v3           #filename:Ljava/lang/String;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #size:J
    .end local v7           #lastModifiedDate:J
    .end local v9           #lastAccessedDate:J
    .end local v11           #drmType:I
    :cond_71
    :goto_71
    return-object v15

    .line 202
    :catch_72
    move-exception v13

    .line 203
    .local v13, e:Ljava/lang/Exception;
    :try_start_73
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_8b

    .line 206
    if-eqz v12, :cond_81

    .line 207
    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_81

    .line 208
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_81
    sget-object v1, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v1, :cond_71

    .line 212
    sget-object v1, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v1}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    goto :goto_71

    .line 205
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_8b
    move-exception v1

    .line 206
    if-eqz v12, :cond_97

    .line 207
    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v16

    if-nez v16, :cond_97

    .line 208
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_97
    sget-object v16, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v16, :cond_a0

    .line 212
    sget-object v16, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual/range {v16 .. v16}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    .line 214
    :cond_a0
    throw v1
.end method

.method public getFavoriteFiles()Ljava/util/ArrayList;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/filemanager/file/FileListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v15, favoriteFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/file/FileListItem;>;"
    const/4 v14, 0x0

    .line 99
    .local v14, favoriteDB:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x0

    .line 103
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/infraware/filemanager/favorite/FavoriteListManager;->shrinkFavoriteDB()V

    .line 105
    sget-object v1, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v1}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    .line 107
    const-string v1, "SELECT *   FROM FavoriteFiles  ORDER BY last_accessed DESC"

    .line 109
    const/16 v18, 0x0

    .line 106
    move-object/from16 v0, v18

    invoke-virtual {v14, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 111
    const/4 v2, 0x0

    .local v2, pKey:I
    const/4 v11, 0x0

    .line 112
    .local v11, drmType:I
    const-wide/16 v5, 0x0

    .local v5, size:J
    const-wide/16 v7, 0x0

    .local v7, lastModifiedDate:J
    const-wide/16 v9, 0x0

    .line 113
    .local v9, lastAccessedDate:J
    const/4 v3, 0x0

    .local v3, filename:Ljava/lang/String;
    const/4 v4, 0x0

    .line 114
    .local v4, path:Ljava/lang/String;
    const/16 v16, 0x0

    .line 116
    .local v16, fileItem:Lcom/infraware/filemanager/file/FileListItem;
    const/16 v17, 0x0

    .line 117
    .local v17, itemCount:I
    :cond_28
    :goto_28
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_9c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2b} :catch_83

    move-result v1

    if-nez v1, :cond_43

    .line 138
    if-eqz v12, :cond_39

    .line 139
    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_39

    .line 140
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_39
    sget-object v1, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v1, :cond_42

    .line 144
    sget-object v1, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v1}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    .line 148
    .end local v2           #pKey:I
    .end local v3           #filename:Ljava/lang/String;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #size:J
    .end local v7           #lastModifiedDate:J
    .end local v9           #lastAccessedDate:J
    .end local v11           #drmType:I
    .end local v16           #fileItem:Lcom/infraware/filemanager/file/FileListItem;
    .end local v17           #itemCount:I
    :cond_42
    :goto_42
    return-object v15

    .line 118
    .restart local v2       #pKey:I
    .restart local v3       #filename:Ljava/lang/String;
    .restart local v4       #path:Ljava/lang/String;
    .restart local v5       #size:J
    .restart local v7       #lastModifiedDate:J
    .restart local v9       #lastAccessedDate:J
    .restart local v11       #drmType:I
    .restart local v16       #fileItem:Lcom/infraware/filemanager/file/FileListItem;
    .restart local v17       #itemCount:I
    :cond_43
    const/4 v1, 0x0

    :try_start_44
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 119
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 120
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 121
    const/4 v1, 0x3

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 122
    const/4 v1, 0x4

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 123
    const/4 v1, 0x5

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 124
    const/4 v1, 0x6

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move-object/from16 v1, p0

    .line 126
    invoke-direct/range {v1 .. v11}, Lcom/infraware/filemanager/favorite/FavoriteListManager;->makeFileItem(ILjava/lang/String;Ljava/lang/String;JJJI)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v16

    .line 128
    new-instance v1, Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 129
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catchall {:try_start_44 .. :try_end_80} :catchall_9c
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_80} :catch_83

    .line 130
    add-int/lit8 v17, v17, 0x1

    goto :goto_28

    .line 134
    .end local v2           #pKey:I
    .end local v3           #filename:Ljava/lang/String;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #size:J
    .end local v7           #lastModifiedDate:J
    .end local v9           #lastAccessedDate:J
    .end local v11           #drmType:I
    .end local v16           #fileItem:Lcom/infraware/filemanager/file/FileListItem;
    .end local v17           #itemCount:I
    :catch_83
    move-exception v13

    .line 135
    .local v13, e:Ljava/lang/Exception;
    :try_start_84
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_9c

    .line 138
    if-eqz v12, :cond_92

    .line 139
    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_92

    .line 140
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_92
    sget-object v1, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v1, :cond_42

    .line 144
    sget-object v1, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual {v1}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    goto :goto_42

    .line 137
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_9c
    move-exception v1

    .line 138
    if-eqz v12, :cond_a8

    .line 139
    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v18

    if-nez v18, :cond_a8

    .line 140
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_a8
    sget-object v18, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    if-eqz v18, :cond_b1

    .line 144
    sget-object v18, Lcom/infraware/filemanager/favorite/FavoriteListManager;->mFavoriteFileDBHelper:Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;

    invoke-virtual/range {v18 .. v18}, Lcom/infraware/filemanager/favorite/FavoriteListManager$FavoriteFileDBHelper;->close()V

    .line 146
    :cond_b1
    throw v1
.end method
