.class public Lcom/infraware/filemanager/recent/RecentFileManager;
.super Ljava/lang/Object;
.source "RecentFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;
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

.field private static final MAX_KEEPING_FILE_COUNT:I = 0x14

.field private static final MAX_PROVIDING_FILE_COUNT:I = 0xa

.field private static final RFM_LOGTAG:Ljava/lang/String; = "RecentFileMgr"

.field private static mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

.field private static volatile mRecentFileManager:Lcom/infraware/filemanager/recent/RecentFileManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 66
    sput-object v0, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileManager:Lcom/infraware/filemanager/recent/RecentFileManager;

    .line 67
    sput-object v0, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/infraware/filemanager/recent/RecentFileManager;->LIVE_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    .line 72
    sget-object v0, Lcom/infraware/filemanager/recent/RecentFileManager;->LIVE_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/infraware/filemanager/recent/RecentFileManager;->LIVE_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "filename AS name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/infraware/filemanager/recent/RecentFileManager;->LIVE_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "last_modified AS description"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "aCtx"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-direct {v0, p0, p1}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;-><init>(Lcom/infraware/filemanager/recent/RecentFileManager;Landroid/content/Context;)V

    sput-object v0, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    .line 83
    return-void
.end method

.method private checkDuplicateFile(Ljava/io/File;)I
    .registers 9
    .parameter "aTargetFile"

    .prologue
    .line 385
    const/4 v4, 0x0

    .line 386
    .local v4, recentDB:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 389
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_2
    sget-object v5, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v5}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 391
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, path:Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 394
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SELECT * FROM RecentFiles WHERE path=\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 396
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

    .line 394
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 396
    const/4 v6, 0x0

    .line 393
    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 398
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_74

    .line 399
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 400
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5e
    .catchall {:try_start_2 .. :try_end_5e} :catchall_a4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5e} :catch_8a

    move-result v2

    .line 415
    .local v2, pKey:I
    if-eqz v0, :cond_6a

    .line 416
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_6a

    .line 417
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 420
    :cond_6a
    sget-object v5, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v5, :cond_73

    .line 421
    sget-object v5, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v5}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    .line 411
    .end local v2           #pKey:I
    .end local v3           #path:Ljava/lang/String;
    :cond_73
    :goto_73
    return v2

    .line 415
    .restart local v3       #path:Ljava/lang/String;
    :cond_74
    if-eqz v0, :cond_7f

    .line 416
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_7f

    .line 417
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 420
    :cond_7f
    sget-object v5, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v5, :cond_88

    .line 421
    sget-object v5, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v5}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    .line 404
    :cond_88
    const/4 v2, -0x1

    goto :goto_73

    .line 409
    .end local v3           #path:Ljava/lang/String;
    :catch_8a
    move-exception v1

    .line 410
    .local v1, e:Ljava/lang/Exception;
    :try_start_8b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_a4

    .line 415
    if-eqz v0, :cond_99

    .line 416
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_99

    .line 417
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 420
    :cond_99
    sget-object v5, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v5, :cond_a2

    .line 421
    sget-object v5, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v5}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    .line 411
    :cond_a2
    const/4 v2, -0x2

    goto :goto_73

    .line 413
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_a4
    move-exception v5

    .line 415
    if-eqz v0, :cond_b0

    .line 416
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_b0

    .line 417
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 420
    :cond_b0
    sget-object v6, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v6, :cond_b9

    .line 421
    sget-object v6, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v6}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    .line 423
    :cond_b9
    throw v5
.end method

.method private checkDuplicateFile(Ljava/lang/String;)I
    .registers 11
    .parameter "aTargetFileFullPath"

    .prologue
    .line 427
    const/4 v5, 0x0

    .line 428
    .local v5, recentDB:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 431
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_2
    sget-object v7, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v7}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 433
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 435
    .local v6, slashIdx:I
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 436
    .local v4, path:Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, name:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SELECT * FROM RecentFiles WHERE path=\""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 440
    const-string v8, "   AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "filename"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 438
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 440
    const/4 v8, 0x0

    .line 437
    invoke-virtual {v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 442
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_76

    .line 443
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 444
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I
    :try_end_60
    .catchall {:try_start_2 .. :try_end_60} :catchall_a6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_60} :catch_8c

    move-result v3

    .line 457
    .local v3, pKey:I
    if-eqz v0, :cond_6c

    .line 458
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_6c

    .line 459
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 462
    :cond_6c
    sget-object v7, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v7, :cond_75

    .line 463
    sget-object v7, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v7}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    .line 453
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #pKey:I
    .end local v4           #path:Ljava/lang/String;
    .end local v6           #slashIdx:I
    :cond_75
    :goto_75
    return v3

    .line 457
    .restart local v2       #name:Ljava/lang/String;
    .restart local v4       #path:Ljava/lang/String;
    .restart local v6       #slashIdx:I
    :cond_76
    if-eqz v0, :cond_81

    .line 458
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_81

    .line 459
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 462
    :cond_81
    sget-object v7, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v7, :cond_8a

    .line 463
    sget-object v7, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v7}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    .line 448
    :cond_8a
    const/4 v3, -0x1

    goto :goto_75

    .line 451
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #path:Ljava/lang/String;
    .end local v6           #slashIdx:I
    :catch_8c
    move-exception v1

    .line 452
    .local v1, e:Ljava/lang/Exception;
    :try_start_8d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_a6

    .line 457
    if-eqz v0, :cond_9b

    .line 458
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_9b

    .line 459
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 462
    :cond_9b
    sget-object v7, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v7, :cond_a4

    .line 463
    sget-object v7, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v7}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    .line 453
    :cond_a4
    const/4 v3, -0x2

    goto :goto_75

    .line 455
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_a6
    move-exception v7

    .line 457
    if-eqz v0, :cond_b2

    .line 458
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_b2

    .line 459
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 462
    :cond_b2
    sget-object v8, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v8, :cond_bb

    .line 463
    sget-object v8, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v8}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    .line 465
    :cond_bb
    throw v7
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/recent/RecentFileManager;
    .registers 3
    .parameter "aCtx"

    .prologue
    .line 86
    sget-object v0, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileManager:Lcom/infraware/filemanager/recent/RecentFileManager;

    if-nez v0, :cond_13

    .line 87
    const-class v1, Lcom/infraware/filemanager/recent/RecentFileManager;

    monitor-enter v1

    .line 88
    :try_start_7
    sget-object v0, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileManager:Lcom/infraware/filemanager/recent/RecentFileManager;

    if-nez v0, :cond_12

    .line 89
    new-instance v0, Lcom/infraware/filemanager/recent/RecentFileManager;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/recent/RecentFileManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileManager:Lcom/infraware/filemanager/recent/RecentFileManager;

    .line 87
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 93
    :cond_13
    sget-object v0, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileManager:Lcom/infraware/filemanager/recent/RecentFileManager;

    return-object v0

    .line 87
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
    .line 311
    const/4 v8, 0x0

    .line 313
    .local v8, recentDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    sget-object v11, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v11}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, drmType:I
    const-wide/16 v9, 0x0

    .local v9, size:J
    const-wide/16 v5, 0x0

    .local v5, lastModifiedDate:J
    const-wide/16 v3, 0x0

    .line 317
    .local v3, lastAccessedDate:J
    const/4 v2, 0x0

    .local v2, filename:Ljava/lang/String;
    const/4 v7, 0x0

    .line 319
    .local v7, path:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 320
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 321
    const/4 v11, 0x0

    const-string v12, "/"

    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 322
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 323
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 327
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "INSERT INTO RecentFiles VALUES ( null, \""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 330
    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 331
    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 332
    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 333
    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 334
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ");"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 327
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 326
    invoke-virtual {v8, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_1 .. :try_end_7f} :catchall_97
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7f} :catch_89

    .line 342
    sget-object v11, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v11, :cond_88

    .line 343
    sget-object v11, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v11}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    .line 346
    .end local v0           #drmType:I
    .end local v2           #filename:Ljava/lang/String;
    .end local v3           #lastAccessedDate:J
    .end local v5           #lastModifiedDate:J
    .end local v7           #path:Ljava/lang/String;
    .end local v9           #size:J
    :cond_88
    :goto_88
    return-void

    .line 337
    :catch_89
    move-exception v1

    .line 338
    .local v1, e:Ljava/lang/Exception;
    :try_start_8a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_97

    .line 342
    sget-object v11, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v11, :cond_88

    .line 343
    sget-object v11, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v11}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    goto :goto_88

    .line 340
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_97
    move-exception v11

    .line 342
    sget-object v12, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v12, :cond_a1

    .line 343
    sget-object v12, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v12}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    .line 345
    :cond_a1
    throw v11
.end method

.method private makeFileItem(ILjava/lang/String;Ljava/lang/String;JJJI)Lcom/infraware/filemanager/file/FileListItem;
    .registers 15
    .parameter "aPKey"
    .parameter "aFilename"
    .parameter "aPath"
    .parameter "aSize"
    .parameter "aLastModifiedDate"
    .parameter "aLastAccessedDate"
    .parameter "aDrmType"

    .prologue
    const/4 v3, 0x0

    .line 224
    new-instance v0, Lcom/infraware/filemanager/file/FileListItem;

    invoke-direct {v0}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    .line 225
    .local v0, item:Lcom/infraware/filemanager/file/FileListItem;
    iput p1, v0, Lcom/infraware/filemanager/file/FileListItem;->recentPkey:I

    .line 226
    const/4 v2, 0x1

    iput v2, v0, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 227
    iput-boolean v3, v0, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    .line 228
    iput-object p3, v0, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 229
    const-string v2, "."

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 230
    .local v1, prevExtIdx:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_24

    .line 231
    iput-object p2, v0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 232
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    .line 238
    :goto_1d
    iput-wide p4, v0, Lcom/infraware/filemanager/file/FileListItem;->size:J

    .line 239
    iput-wide p6, v0, Lcom/infraware/filemanager/file/FileListItem;->updateTime:J

    .line 240
    iput-wide p8, v0, Lcom/infraware/filemanager/file/FileListItem;->accessTime:J

    .line 242
    return-object v0

    .line 235
    :cond_24
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 236
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    goto :goto_1d
.end method

.method private shrinkRecentDB()V
    .registers 5

    .prologue
    .line 156
    const/4 v1, 0x0

    .line 158
    .local v1, recentDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    sget-object v2, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v2}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 160
    const-string v2, "DELETE FROM RecentFiles  WHERE _id NOT IN (SELECT _id   FROM RecentFiles   ORDER BY last_accessed DESC LIMIT 20)"

    .line 159
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_16

    .line 172
    sget-object v2, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v2, :cond_15

    .line 173
    sget-object v2, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v2}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    .line 176
    :cond_15
    :goto_15
    return-void

    .line 167
    :catch_16
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/Exception;
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_24

    .line 172
    sget-object v2, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v2, :cond_15

    .line 173
    sget-object v2, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v2}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    goto :goto_15

    .line 170
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_24
    move-exception v2

    .line 172
    sget-object v3, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v3, :cond_2e

    .line 173
    sget-object v3, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v3}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    .line 175
    :cond_2e
    throw v2
.end method

.method private updateFile(Ljava/io/File;I)V
    .registers 14
    .parameter "aTargetFile"
    .parameter "aTargetIdx"

    .prologue
    .line 349
    const/4 v6, 0x0

    .line 351
    .local v6, recentDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    sget-object v9, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v9}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, drmType:I
    const-wide/16 v7, 0x0

    .local v7, size:J
    const-wide/16 v4, 0x0

    .local v4, lastModifiedDate:J
    const-wide/16 v2, 0x0

    .line 357
    .local v2, lastAccessedDate:J
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 358
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 362
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "UPDATE RecentFiles   SET size="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 364
    const-string v10, "last_modified"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 365
    const-string v10, "last_accessed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 366
    const-string v10, "drm_type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 367
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

    .line 362
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 361
    invoke-virtual {v6, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_1 .. :try_end_84} :catchall_9c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_84} :catch_8e

    .line 375
    sget-object v9, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v9, :cond_8d

    .line 376
    sget-object v9, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v9}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    .line 379
    .end local v0           #drmType:I
    .end local v2           #lastAccessedDate:J
    .end local v4           #lastModifiedDate:J
    .end local v7           #size:J
    :cond_8d
    :goto_8d
    return-void

    .line 370
    :catch_8e
    move-exception v1

    .line 371
    .local v1, e:Ljava/lang/Exception;
    :try_start_8f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_9c

    .line 375
    sget-object v9, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v9, :cond_8d

    .line 376
    sget-object v9, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v9}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    goto :goto_8d

    .line 373
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_9c
    move-exception v9

    .line 375
    sget-object v10, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v10, :cond_a6

    .line 376
    sget-object v10, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v10}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    .line 378
    :cond_a6
    throw v9
.end method


# virtual methods
.method public InsertFileInfoToDB(Ljava/lang/String;)V
    .registers 6
    .parameter "fileAbsolutePath"

    .prologue
    .line 247
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, targetFile:Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/infraware/filemanager/recent/RecentFileManager;->checkDuplicateFile(Ljava/io/File;)I

    move-result v0

    .line 253
    .local v0, dupIdx:I
    const/4 v2, -0x2

    if-ne v0, v2, :cond_14

    .line 254
    const-string v2, "RecentFileMgr"

    const-string v3, "checkDuplicateFile error"

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_13
    return-void

    .line 256
    :cond_14
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1b

    .line 257
    invoke-direct {p0, v1}, Lcom/infraware/filemanager/recent/RecentFileManager;->insertFile(Ljava/io/File;)V

    goto :goto_13

    .line 260
    :cond_1b
    invoke-direct {p0, v1, v0}, Lcom/infraware/filemanager/recent/RecentFileManager;->updateFile(Ljava/io/File;I)V

    goto :goto_13
.end method

.method public deleteAll()V
    .registers 5

    .prologue
    .line 293
    const/4 v1, 0x0

    .line 296
    .local v1, recentDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    sget-object v2, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v2}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 298
    const-string v2, "DELETE FROM RecentFiles"

    .line 297
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_16

    .line 304
    sget-object v2, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v2, :cond_15

    .line 305
    sget-object v2, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v2}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    .line 308
    :cond_15
    :goto_15
    return-void

    .line 300
    :catch_16
    move-exception v0

    .line 301
    .local v0, e:Ljava/lang/Exception;
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_24

    .line 304
    sget-object v2, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v2, :cond_15

    .line 305
    sget-object v2, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v2}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    goto :goto_15

    .line 303
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_24
    move-exception v2

    .line 304
    sget-object v3, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v3, :cond_2e

    .line 305
    sget-object v3, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v3}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    .line 307
    :cond_2e
    throw v2
.end method

.method public deleteFile(Ljava/lang/String;)V
    .registers 7
    .parameter "aTargetFileFullPath"

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/infraware/filemanager/recent/RecentFileManager;->checkDuplicateFile(Ljava/lang/String;)I

    move-result v0

    .line 269
    .local v0, dupRet:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_a

    const/4 v3, -0x2

    if-ne v0, v3, :cond_b

    .line 290
    :cond_a
    :goto_a
    return-void

    .line 273
    :cond_b
    const/4 v2, 0x0

    .line 276
    .local v2, recentDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_c
    sget-object v3, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v3}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DELETE FROM RecentFiles WHERE _id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 278
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 277
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_24} :catch_2e

    .line 286
    sget-object v3, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v3, :cond_a

    .line 287
    sget-object v3, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v3}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    goto :goto_a

    .line 282
    :catch_2e
    move-exception v1

    .line 283
    .local v1, e:Ljava/lang/Exception;
    :try_start_2f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3c

    .line 286
    sget-object v3, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v3, :cond_a

    .line 287
    sget-object v3, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v3}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    goto :goto_a

    .line 285
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_3c
    move-exception v3

    .line 286
    sget-object v4, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v4, :cond_46

    .line 287
    sget-object v4, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v4}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    .line 289
    :cond_46
    throw v3
.end method

.method public getRecentFile(I)Lcom/infraware/filemanager/file/FileListItem;
    .registers 19
    .parameter "aIdx"

    .prologue
    .line 179
    const/4 v15, 0x0

    .line 180
    .local v15, recentDB:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x0

    .line 182
    .local v12, cursor:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 185
    .local v14, item:Lcom/infraware/filemanager/file/FileListItem;
    :try_start_3
    sget-object v1, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v1}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v16, "SELECT * FROM RecentFiles WHERE _id="

    move-object/from16 v0, v16

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    const/16 v16, 0x0

    .line 186
    move-object/from16 v0, v16

    invoke-virtual {v15, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 190
    const/4 v2, 0x0

    .local v2, pKey:I
    const/4 v11, 0x0

    .line 191
    .local v11, drmType:I
    const-wide/16 v5, 0x0

    .local v5, size:J
    const-wide/16 v7, 0x0

    .local v7, lastModifiedDate:J
    const-wide/16 v9, 0x0

    .line 192
    .local v9, lastAccessedDate:J
    const/4 v3, 0x0

    .local v3, filename:Ljava/lang/String;
    const/4 v4, 0x0

    .line 194
    .local v4, path:Ljava/lang/String;
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5d

    .line 195
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 196
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 197
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 198
    const/4 v1, 0x3

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 199
    const/4 v1, 0x4

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 200
    const/4 v1, 0x5

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 201
    const/4 v1, 0x6

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move-object/from16 v1, p0

    .line 203
    invoke-direct/range {v1 .. v11}, Lcom/infraware/filemanager/recent/RecentFileManager;->makeFileItem(ILjava/lang/String;Ljava/lang/String;JJJI)Lcom/infraware/filemanager/file/FileListItem;
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_8b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5c} :catch_72

    move-result-object v14

    .line 210
    :cond_5d
    if-eqz v12, :cond_68

    .line 211
    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_68

    .line 212
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 215
    :cond_68
    sget-object v1, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v1, :cond_71

    .line 216
    sget-object v1, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v1}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    .line 220
    .end local v2           #pKey:I
    .end local v3           #filename:Ljava/lang/String;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #size:J
    .end local v7           #lastModifiedDate:J
    .end local v9           #lastAccessedDate:J
    .end local v11           #drmType:I
    :cond_71
    :goto_71
    return-object v14

    .line 206
    :catch_72
    move-exception v13

    .line 207
    .local v13, e:Ljava/lang/Exception;
    :try_start_73
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_8b

    .line 210
    if-eqz v12, :cond_81

    .line 211
    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_81

    .line 212
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 215
    :cond_81
    sget-object v1, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v1, :cond_71

    .line 216
    sget-object v1, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v1}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    goto :goto_71

    .line 209
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_8b
    move-exception v1

    .line 210
    if-eqz v12, :cond_97

    .line 211
    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v16

    if-nez v16, :cond_97

    .line 212
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 215
    :cond_97
    sget-object v16, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v16, :cond_a0

    .line 216
    sget-object v16, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual/range {v16 .. v16}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    .line 218
    :cond_a0
    throw v1
.end method

.method public getRecentFiles()Ljava/util/ArrayList;
    .registers 21
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
    .line 97
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v18, recentFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/file/FileListItem;>;"
    const/16 v17, 0x0

    .line 100
    .local v17, recentDB:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v13, 0x0

    .line 104
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/infraware/filemanager/recent/RecentFileManager;->shrinkRecentDB()V

    .line 106
    sget-object v2, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v2}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    .line 108
    const-string v2, "SELECT *   FROM RecentFiles  ORDER BY last_accessed DESC"

    .line 110
    const/16 v19, 0x0

    .line 107
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 112
    const/4 v3, 0x0

    .local v3, pKey:I
    const/4 v12, 0x0

    .line 113
    .local v12, drmType:I
    const-wide/16 v6, 0x0

    .local v6, size:J
    const-wide/16 v8, 0x0

    .local v8, lastModifiedDate:J
    const-wide/16 v10, 0x0

    .line 114
    .local v10, lastAccessedDate:J
    const/4 v4, 0x0

    .local v4, filename:Ljava/lang/String;
    const/4 v5, 0x0

    .line 115
    .local v5, path:Ljava/lang/String;
    const/4 v15, 0x0

    .line 117
    .local v15, fileItem:Lcom/infraware/filemanager/file/FileListItem;
    const/16 v16, 0x0

    .line 118
    .local v16, itemCount:I
    :cond_2a
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_a6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2d} :catch_8d

    move-result v2

    if-nez v2, :cond_45

    .line 142
    :goto_30
    if-eqz v13, :cond_3b

    .line 143
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 144
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_3b
    sget-object v2, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v2, :cond_44

    .line 148
    sget-object v2, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v2}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    .line 152
    .end local v3           #pKey:I
    .end local v4           #filename:Ljava/lang/String;
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #size:J
    .end local v8           #lastModifiedDate:J
    .end local v10           #lastAccessedDate:J
    .end local v12           #drmType:I
    .end local v15           #fileItem:Lcom/infraware/filemanager/file/FileListItem;
    .end local v16           #itemCount:I
    :cond_44
    :goto_44
    return-object v18

    .line 119
    .restart local v3       #pKey:I
    .restart local v4       #filename:Ljava/lang/String;
    .restart local v5       #path:Ljava/lang/String;
    .restart local v6       #size:J
    .restart local v8       #lastModifiedDate:J
    .restart local v10       #lastAccessedDate:J
    .restart local v12       #drmType:I
    .restart local v15       #fileItem:Lcom/infraware/filemanager/file/FileListItem;
    .restart local v16       #itemCount:I
    :cond_45
    const/4 v2, 0x0

    :try_start_46
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 120
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 121
    const/4 v2, 0x2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 122
    const/4 v2, 0x3

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 123
    const/4 v2, 0x4

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 124
    const/4 v2, 0x5

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 125
    const/4 v2, 0x6

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move-object/from16 v2, p0

    .line 127
    invoke-direct/range {v2 .. v12}, Lcom/infraware/filemanager/recent/RecentFileManager;->makeFileItem(ILjava/lang/String;Ljava/lang/String;JJJI)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v15

    .line 129
    new-instance v2, Ljava/io/File;

    invoke-virtual {v15}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_86

    .line 130
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catchall {:try_start_46 .. :try_end_84} :catchall_a6
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_84} :catch_8d

    .line 131
    add-int/lit8 v16, v16, 0x1

    .line 134
    :cond_86
    const/16 v2, 0xa

    move/from16 v0, v16

    if-ne v0, v2, :cond_2a

    goto :goto_30

    .line 138
    .end local v3           #pKey:I
    .end local v4           #filename:Ljava/lang/String;
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #size:J
    .end local v8           #lastModifiedDate:J
    .end local v10           #lastAccessedDate:J
    .end local v12           #drmType:I
    .end local v15           #fileItem:Lcom/infraware/filemanager/file/FileListItem;
    .end local v16           #itemCount:I
    :catch_8d
    move-exception v14

    .line 139
    .local v14, e:Ljava/lang/Exception;
    :try_start_8e
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_a6

    .line 142
    if-eqz v13, :cond_9c

    .line 143
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9c

    .line 144
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_9c
    sget-object v2, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v2, :cond_44

    .line 148
    sget-object v2, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual {v2}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    goto :goto_44

    .line 141
    .end local v14           #e:Ljava/lang/Exception;
    :catchall_a6
    move-exception v2

    .line 142
    if-eqz v13, :cond_b2

    .line 143
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v19

    if-nez v19, :cond_b2

    .line 144
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_b2
    sget-object v19, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    if-eqz v19, :cond_bb

    .line 148
    sget-object v19, Lcom/infraware/filemanager/recent/RecentFileManager;->mRecentFileDBHelper:Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;

    invoke-virtual/range {v19 .. v19}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->close()V

    .line 150
    :cond_bb
    throw v2
.end method
