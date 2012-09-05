.class public Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CityDBHelper.java"


# static fields
.field private static DB_NAME:Ljava/lang/String;

.field private static mStrDBPath:Ljava/lang/String;

.field private static mVersion:I


# instance fields
.field private final mCTContext:Landroid/content/Context;

.field private mForceCopy:Z

.field private mResultType:I

.field private mSQLDBCityDataBase:Landroid/database/sqlite/SQLiteDatabase;

.field myInput:Ljava/io/InputStream;

.field myOutput:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-string v0, ""

    sput-object v0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mStrDBPath:Ljava/lang/String;

    .line 27
    const-string v0, "worldcity.db"

    sput-object v0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->DB_NAME:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 38
    sget-object v5, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->DB_NAME:Ljava/lang/String;

    const/4 v6, 0x0

    sget v7, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mVersion:I

    invoke-direct {p0, p1, v5, v6, v7}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 29
    iput v8, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mResultType:I

    .line 31
    iput-boolean v8, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mForceCopy:Z

    .line 39
    iput-object p1, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mCTContext:Landroid/content/Context;

    .line 43
    :try_start_10
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 44
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->close()V

    .line 47
    const/4 v5, 0x0

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mStrDBPath:Ljava/lang/String;

    .line 48
    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mResultType:I
    :try_end_2d
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_10 .. :try_end_2d} :catch_2e
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_10 .. :try_end_2d} :catch_48
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2d} :catch_62

    .line 64
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #path:Ljava/lang/String;
    :goto_2d
    return-void

    .line 50
    :catch_2e
    move-exception v2

    .line 52
    .local v2, fe:Landroid/database/sqlite/SQLiteFullException;
    iput v9, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mResultType:I

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CityDBHelper()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V

    goto :goto_2d

    .line 55
    .end local v2           #fe:Landroid/database/sqlite/SQLiteFullException;
    :catch_48
    move-exception v3

    .line 57
    .local v3, ioe:Landroid/database/sqlite/SQLiteDiskIOException;
    iput v9, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mResultType:I

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CityDBHelper()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V

    goto :goto_2d

    .line 60
    .end local v3           #ioe:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_62
    move-exception v1

    .line 62
    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CityDBHelper()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V

    goto :goto_2d
.end method

.method private checkDataBase()Z
    .registers 6

    .prologue
    .line 106
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->getDBFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, dbFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0xc350

    cmp-long v1, v1, v3

    if-gez v1, :cond_16

    const/4 v1, 0x0

    .line 110
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x1

    goto :goto_15
.end method

.method private copyDataBase()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v3, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mCTContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    sget-object v4, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mStrDBPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, outFileName:Ljava/lang/String;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;

    .line 120
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 122
    .local v0, buffer:[B
    :goto_2e
    iget-object v3, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, length:I
    if-lez v1, :cond_3d

    .line 124
    iget-object v3, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2e

    .line 127
    :cond_3d
    iget-object v3, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 128
    iget-object v3, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 129
    iget-object v3, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 130
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 193
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mSQLDBCityDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mSQLDBCityDataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 195
    :cond_a
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 196
    monitor-exit p0

    return-void

    .line 193
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createDataBase()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->checkDataBase()Z

    move-result v1

    .line 80
    .local v1, dbExist:Z
    if-eqz v1, :cond_b

    iget-boolean v3, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mForceCopy:Z

    if-nez v3, :cond_b

    .line 102
    :goto_a
    return-void

    .line 86
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 87
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 91
    :try_start_12
    invoke-direct {p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->copyDataBase()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_31
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_a

    .line 93
    :catch_16
    move-exception v2

    .line 95
    .local v2, e:Ljava/io/IOException;
    const/4 v3, -0x1

    :try_start_18
    iput v3, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mResultType:I

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CityDBHelper()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_31

    goto :goto_a

    .line 99
    .end local v2           #e:Ljava/io/IOException;
    :catchall_31
    move-exception v3

    throw v3
.end method

.method public getAllLocCode()Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    const/4 v10, 0x0

    .line 356
    .local v10, cursor:Landroid/database/Cursor;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v13, loclist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_6
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->createDataBase()V

    .line 360
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->openDataBase()V

    .line 361
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mSQLDBCityDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    const-string v2, "INFOALARM_WEATHER_CITY"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "LOCCODE"

    aput-object v5, v3, v4

    const-string v4, "ZOOMLV BETWEEN 5 AND 9"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 372
    if-eqz v10, :cond_4b

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 376
    :cond_2c
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 379
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catchall {:try_start_6 .. :try_end_42} :catchall_a9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_42} :catch_54

    .line 411
    if-eqz v10, :cond_47

    .line 412
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 413
    :cond_47
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->close()V

    .line 415
    :goto_4a
    return-object v13

    .line 411
    :cond_4b
    if-eqz v10, :cond_50

    .line 412
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 413
    :cond_50
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->close()V

    goto :goto_4a

    .line 386
    :catch_54
    move-exception v11

    .line 388
    .local v11, e:Ljava/lang/Exception;
    if-eqz v10, :cond_5a

    .line 389
    :try_start_57
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 391
    :cond_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CityDBHelper.searchCity()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_57 .. :try_end_70} :catchall_a9

    .line 394
    :try_start_70
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    if-eqz v0, :cond_7c

    .line 396
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    .line 399
    :cond_7c
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;

    if-eqz v0, :cond_88

    .line 401
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;
    :try_end_88
    .catchall {:try_start_70 .. :try_end_88} :catchall_a9
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_88} :catch_91

    .line 411
    :cond_88
    :goto_88
    if-eqz v10, :cond_8d

    .line 412
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 413
    :cond_8d
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->close()V

    goto :goto_4a

    .line 405
    :catch_91
    move-exception v12

    .line 406
    .local v12, e1:Ljava/io/IOException;
    :try_start_92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CityDBHelper.searchCity() FileStream close Exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_a8
    .catchall {:try_start_92 .. :try_end_a8} :catchall_a9

    goto :goto_88

    .line 411
    .end local v11           #e:Ljava/lang/Exception;
    .end local v12           #e1:Ljava/io/IOException;
    :catchall_a9
    move-exception v0

    if-eqz v10, :cond_af

    .line 412
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 413
    :cond_af
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->close()V

    throw v0
.end method

.method public getDBFilePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mStrDBPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegionByMCC(Ljava/lang/String;)I
    .registers 19
    .parameter "mcc"

    .prologue
    .line 274
    const/16 v16, 0x7

    .line 275
    .local v16, region:I
    const/4 v12, 0x0

    .local v12, cursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 276
    .local v13, cursor2:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 279
    .local v11, country:Ljava/lang/String;
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->createDataBase()V

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->openDataBase()V

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mSQLDBCityDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const-string v3, "mcc_code"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "COUNTRYNAME"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MCC1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "1"

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 292
    if-eqz v12, :cond_64

    .line 294
    if-eqz v12, :cond_60

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 296
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 297
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found country "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_60
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 300
    const/4 v12, 0x0

    .line 302
    :cond_64
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mSQLDBCityDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const-string v3, "INFOALARM_WEATHER_CITY"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "REGION_id"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "COUNTRYNAME=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "1"

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 313
    if-eqz v13, :cond_bd

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 315
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 316
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found region code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_5 .. :try_end_bd} :catchall_130
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_bd} :catch_cd

    .line 341
    :cond_bd
    if-eqz v12, :cond_c2

    .line 342
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 343
    :cond_c2
    if-eqz v13, :cond_c7

    .line 344
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_c7
    const/4 v12, 0x0

    .line 346
    const/4 v13, 0x0

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->close()V

    .line 349
    :goto_cc
    return v16

    .line 319
    :catch_cd
    move-exception v14

    .line 321
    .local v14, e:Ljava/lang/Exception;
    :try_start_ce
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CityDBHelper.searchCity()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_e4
    .catchall {:try_start_ce .. :try_end_e4} :catchall_130

    .line 324
    :try_start_e4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    if-eqz v1, :cond_f6

    .line 326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 327
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    .line 329
    :cond_f6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;

    if-eqz v1, :cond_108

    .line 331
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 332
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;
    :try_end_108
    .catchall {:try_start_e4 .. :try_end_108} :catchall_130
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_108} :catch_118

    .line 341
    :cond_108
    :goto_108
    if-eqz v12, :cond_10d

    .line 342
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 343
    :cond_10d
    if-eqz v13, :cond_112

    .line 344
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_112
    const/4 v12, 0x0

    .line 346
    const/4 v13, 0x0

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->close()V

    goto :goto_cc

    .line 335
    :catch_118
    move-exception v15

    .line 336
    .local v15, e1:Ljava/io/IOException;
    :try_start_119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CityDBHelper.searchCity() FileStream close Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_12f
    .catchall {:try_start_119 .. :try_end_12f} :catchall_130

    goto :goto_108

    .line 341
    .end local v14           #e:Ljava/lang/Exception;
    .end local v15           #e1:Ljava/io/IOException;
    :catchall_130
    move-exception v1

    if-eqz v12, :cond_136

    .line 342
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 343
    :cond_136
    if-eqz v13, :cond_13b

    .line 344
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_13b
    const/4 v12, 0x0

    .line 346
    const/4 v13, 0x0

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->close()V

    throw v1
.end method

.method public getRegionCities(I)Ljava/util/ArrayList;
    .registers 16
    .parameter "regioncode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/daemonapp/info/CityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v13, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/daemonapp/info/CityInfo;>;"
    const/4 v10, 0x0

    .line 216
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_6
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->createDataBase()V

    .line 217
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->openDataBase()V

    .line 218
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mSQLDBCityDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    const-string v2, "INFOALARM_WEATHER_CITY"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "LOCCODE"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "CITYNAME"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "STATE"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "COUNTRYNAME"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "ZOOMLV"

    aput-object v5, v3, v4

    const-string v4, "ZOOMLV between 5 and 9"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 229
    if-eqz v10, :cond_8a

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 233
    :cond_40
    new-instance v0, Lcom/sec/android/daemonapp/info/CityInfo;

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/daemonapp/info/CityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7e
    .catchall {:try_start_6 .. :try_end_7e} :catchall_e4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_7e} :catch_94

    move-result v0

    if-nez v0, :cond_40

    .line 264
    if-eqz v10, :cond_86

    .line 265
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_86
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->close()V

    .line 268
    .end local v13           #info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/daemonapp/info/CityInfo;>;"
    :goto_89
    return-object v13

    .line 239
    .restart local v13       #info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/daemonapp/info/CityInfo;>;"
    :cond_8a
    const/4 v13, 0x0

    .line 264
    .end local v13           #info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/daemonapp/info/CityInfo;>;"
    if-eqz v10, :cond_90

    .line 265
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_90
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->close()V

    goto :goto_89

    .line 242
    .restart local v13       #info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/daemonapp/info/CityInfo;>;"
    :catch_94
    move-exception v11

    .line 244
    .local v11, e:Ljava/lang/Exception;
    :try_start_95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CityDBHelper.searchCity()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_ab
    .catchall {:try_start_95 .. :try_end_ab} :catchall_e4

    .line 247
    :try_start_ab
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    if-eqz v0, :cond_b7

    .line 249
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    .line 252
    :cond_b7
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;

    if-eqz v0, :cond_c3

    .line 254
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;
    :try_end_c3
    .catchall {:try_start_ab .. :try_end_c3} :catchall_e4
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_c3} :catch_cc

    .line 264
    :cond_c3
    :goto_c3
    if-eqz v10, :cond_c8

    .line 265
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_c8
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->close()V

    goto :goto_89

    .line 258
    :catch_cc
    move-exception v12

    .line 259
    .local v12, e1:Ljava/io/IOException;
    :try_start_cd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CityDBHelper.searchCity() FileStream close Exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_e3
    .catchall {:try_start_cd .. :try_end_e3} :catchall_e4

    goto :goto_c3

    .line 264
    .end local v11           #e:Ljava/lang/Exception;
    .end local v12           #e1:Ljava/io/IOException;
    :catchall_e4
    move-exception v0

    if-eqz v10, :cond_ea

    .line 265
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_ea
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->close()V

    throw v0
.end method

.method public getResultType()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mResultType:I

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 200
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mForceCopy:Z

    .line 207
    return-void
.end method

.method public openDataBase()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mStrDBPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, myPath:Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mSQLDBCityDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 136
    return-void
.end method

.method public searchCity(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 16
    .parameter "city"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/daemonapp/info/CityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v13, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/daemonapp/info/CityInfo;>;"
    const/4 v10, 0x0

    .line 144
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_6
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->createDataBase()V

    .line 145
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->openDataBase()V

    .line 146
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->mSQLDBCityDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    const-string v2, "INFOALARM_WEATHER_CITY"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "CITYNAME"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "COUNTRYNAME"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "STATE"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "LOCCODE"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id ASC"

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 149
    if-eqz v10, :cond_c9

    .line 151
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 153
    :goto_3d
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_c9

    .line 155
    new-instance v0, Lcom/sec/android/daemonapp/info/CityInfo;

    const-string v1, "CITYNAME"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "COUNTRYNAME"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LOCCODE"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/daemonapp/info/CityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_90
    .catchall {:try_start_6 .. :try_end_90} :catchall_ea
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_90} :catch_91

    goto :goto_3d

    .line 162
    :catch_91
    move-exception v11

    .line 164
    .local v11, e:Ljava/lang/Exception;
    :try_start_92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CityDBHelper.searchCity()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_a8
    .catchall {:try_start_92 .. :try_end_a8} :catchall_ea

    .line 167
    :try_start_a8
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    if-eqz v0, :cond_b4

    .line 169
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    .line 172
    :cond_b4
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;

    if-eqz v0, :cond_c0

    .line 174
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;
    :try_end_c0
    .catchall {:try_start_a8 .. :try_end_c0} :catchall_ea
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_c0} :catch_d2

    .line 184
    :cond_c0
    :goto_c0
    if-eqz v10, :cond_c5

    .line 185
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_c5
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->close()V

    .line 188
    .end local v11           #e:Ljava/lang/Exception;
    :goto_c8
    return-object v13

    .line 184
    :cond_c9
    if-eqz v10, :cond_ce

    .line 185
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_ce
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->close()V

    goto :goto_c8

    .line 178
    .restart local v11       #e:Ljava/lang/Exception;
    :catch_d2
    move-exception v12

    .line 179
    .local v12, e1:Ljava/io/IOException;
    :try_start_d3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CityDBHelper.searchCity() FileStream close Exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_e9
    .catchall {:try_start_d3 .. :try_end_e9} :catchall_ea

    goto :goto_c0

    .line 184
    .end local v11           #e:Ljava/lang/Exception;
    .end local v12           #e1:Ljava/io/IOException;
    :catchall_ea
    move-exception v0

    if-eqz v10, :cond_f0

    .line 185
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_f0
    invoke-virtual {p0}, Lcom/sec/android/daemonapp/accuweather/db/CityDBHelper;->close()V

    throw v0
.end method
