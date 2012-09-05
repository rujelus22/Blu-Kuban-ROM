.class public Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;
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

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mStrDBPath:Ljava/lang/String;

    .line 27
    const-string v0, "worldcity.db"

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->DB_NAME:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 38
    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->DB_NAME:Ljava/lang/String;

    const/4 v6, 0x0

    sget v7, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mVersion:I

    invoke-direct {p0, p1, v5, v6, v7}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 29
    iput v8, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mResultType:I

    .line 31
    iput-boolean v8, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mForceCopy:Z

    .line 39
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mCTContext:Landroid/content/Context;

    .line 43
    :try_start_10
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 44
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->close()V

    .line 47
    const/4 v5, 0x0

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mStrDBPath:Ljava/lang/String;

    .line 48
    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mResultType:I
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
    iput v9, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mResultType:I

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

    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    goto :goto_2d

    .line 55
    .end local v2           #fe:Landroid/database/sqlite/SQLiteFullException;
    :catch_48
    move-exception v3

    .line 57
    .local v3, ioe:Landroid/database/sqlite/SQLiteDiskIOException;
    iput v9, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mResultType:I

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

    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

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

    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    goto :goto_2d
.end method

.method private checkDataBase()Z
    .registers 6

    .prologue
    .line 106
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->getDBFilePath()Ljava/lang/String;

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
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mCTContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    sget-object v4, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mStrDBPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, outFileName:Ljava/lang/String;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;

    .line 120
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 122
    .local v0, buffer:[B
    :goto_2e
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, length:I
    if-lez v1, :cond_3d

    .line 124
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2e

    .line 127
    :cond_3d
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 128
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 129
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 130
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 241
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mSQLDBCityDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mSQLDBCityDataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 243
    :cond_a
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 244
    monitor-exit p0

    return-void

    .line 241
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
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->checkDataBase()Z

    move-result v1

    .line 80
    .local v1, dbExist:Z
    if-eqz v1, :cond_b

    iget-boolean v3, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mForceCopy:Z

    if-nez v3, :cond_b

    .line 102
    :goto_a
    return-void

    .line 86
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 87
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 91
    :try_start_12
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->copyDataBase()V
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
    iput v3, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mResultType:I

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

    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_31

    goto :goto_a

    .line 99
    .end local v2           #e:Ljava/io/IOException;
    :catchall_31
    move-exception v3

    throw v3
.end method

.method public getDBFilePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mStrDBPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->DB_NAME:Ljava/lang/String;

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
    .line 322
    const/16 v16, 0x7

    .line 323
    .local v16, region:I
    const/4 v12, 0x0

    .local v12, cursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 324
    .local v13, cursor2:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 327
    .local v11, country:Ljava/lang/String;
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->createDataBase()V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->openDataBase()V

    .line 329
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mSQLDBCityDataBase:Landroid/database/sqlite/SQLiteDatabase;

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

    .line 340
    if-eqz v12, :cond_62

    .line 342
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 344
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 345
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

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_5e
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 348
    const/4 v12, 0x0

    .line 351
    :cond_62
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mSQLDBCityDataBase:Landroid/database/sqlite/SQLiteDatabase;

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

    .line 362
    if-eqz v13, :cond_bb

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 364
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 365
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

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catchall {:try_start_5 .. :try_end_bb} :catchall_12e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_bb} :catch_cb

    .line 390
    :cond_bb
    if-eqz v12, :cond_c0

    .line 391
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 392
    :cond_c0
    if-eqz v13, :cond_c5

    .line 393
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 394
    :cond_c5
    const/4 v12, 0x0

    .line 395
    const/4 v13, 0x0

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->close()V

    .line 398
    :goto_ca
    return v16

    .line 368
    :catch_cb
    move-exception v14

    .line 370
    .local v14, e:Ljava/lang/Exception;
    :try_start_cc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CityDBHelper.searchCity()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_e2
    .catchall {:try_start_cc .. :try_end_e2} :catchall_12e

    .line 373
    :try_start_e2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    if-eqz v1, :cond_f4

    .line 375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 376
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    .line 378
    :cond_f4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;

    if-eqz v1, :cond_106

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 381
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;
    :try_end_106
    .catchall {:try_start_e2 .. :try_end_106} :catchall_12e
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_106} :catch_116

    .line 390
    :cond_106
    :goto_106
    if-eqz v12, :cond_10b

    .line 391
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 392
    :cond_10b
    if-eqz v13, :cond_110

    .line 393
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 394
    :cond_110
    const/4 v12, 0x0

    .line 395
    const/4 v13, 0x0

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->close()V

    goto :goto_ca

    .line 384
    :catch_116
    move-exception v15

    .line 385
    .local v15, e1:Ljava/io/IOException;
    :try_start_117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CityDBHelper.searchCity() FileStream close Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_12d
    .catchall {:try_start_117 .. :try_end_12d} :catchall_12e

    goto :goto_106

    .line 390
    .end local v14           #e:Ljava/lang/Exception;
    .end local v15           #e1:Ljava/io/IOException;
    :catchall_12e
    move-exception v1

    if-eqz v12, :cond_134

    .line 391
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 392
    :cond_134
    if-eqz v13, :cond_139

    .line 393
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 394
    :cond_139
    const/4 v12, 0x0

    .line 395
    const/4 v13, 0x0

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->close()V

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
            "Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v13, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    const/4 v10, 0x0

    .line 264
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_6
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->createDataBase()V

    .line 265
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->openDataBase()V

    .line 266
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mSQLDBCityDataBase:Landroid/database/sqlite/SQLiteDatabase;

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

    .line 277
    if-eqz v10, :cond_8a

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 281
    :cond_40
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

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

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7e
    .catchall {:try_start_6 .. :try_end_7e} :catchall_e4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_7e} :catch_94

    move-result v0

    if-nez v0, :cond_40

    .line 312
    if-eqz v10, :cond_86

    .line 313
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_86
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->close()V

    .line 316
    .end local v13           #info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    :goto_89
    return-object v13

    .line 287
    .restart local v13       #info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    :cond_8a
    const/4 v13, 0x0

    .line 312
    .end local v13           #info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    if-eqz v10, :cond_90

    .line 313
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_90
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->close()V

    goto :goto_89

    .line 290
    .restart local v13       #info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    :catch_94
    move-exception v11

    .line 292
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

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_ab
    .catchall {:try_start_95 .. :try_end_ab} :catchall_e4

    .line 295
    :try_start_ab
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    if-eqz v0, :cond_b7

    .line 297
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    .line 300
    :cond_b7
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;

    if-eqz v0, :cond_c3

    .line 302
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;
    :try_end_c3
    .catchall {:try_start_ab .. :try_end_c3} :catchall_e4
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_c3} :catch_cc

    .line 312
    :cond_c3
    :goto_c3
    if-eqz v10, :cond_c8

    .line 313
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_c8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->close()V

    goto :goto_89

    .line 306
    :catch_cc
    move-exception v12

    .line 307
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

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_e3
    .catchall {:try_start_cd .. :try_end_e3} :catchall_e4

    goto :goto_c3

    .line 312
    .end local v11           #e:Ljava/lang/Exception;
    .end local v12           #e1:Ljava/io/IOException;
    :catchall_e4
    move-exception v0

    if-eqz v10, :cond_ea

    .line 313
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_ea
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->close()V

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 248
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mForceCopy:Z

    .line 255
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

    sget-object v2, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mStrDBPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->DB_NAME:Ljava/lang/String;

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

    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mSQLDBCityDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 136
    return-void
.end method

.method public searchCity(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 28
    .parameter "city"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v23, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v24, list_end:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    const/16 v16, 0x0

    .line 144
    .local v16, cursor:Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 147
    .local v17, cursor2:Landroid/database/Cursor;
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->createDataBase()V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->openDataBase()V

    .line 151
    const/16 v25, 0xf

    .line 152
    .local v25, start:I
    const-string v2, "%\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 153
    .local v20, end:I
    const/16 v2, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 155
    .local v15, cityname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mSQLDBCityDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const-string v4, "INFOALARM_WEATHER_CITY"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "CITYNAME"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "COUNTRYNAME"

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const-string v8, "STATE"

    aput-object v8, v5, v7

    const/4 v7, 0x3

    const-string v8, "LOCCODE"

    aput-object v8, v5, v7

    const/4 v7, 0x4

    const-string v8, "_id"

    aput-object v8, v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "CITYNAME ASC"

    const/4 v11, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 159
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a1

    .line 160
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 161
    .local v14, buf:Ljava/lang/StringBuffer;
    const-string v2, "CITYNAME LIKE \"%"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    const-string v2, "%\""

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, bufs:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->mSQLDBCityDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const-string v4, "INFOALARM_WEATHER_CITY"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "CITYNAME"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "COUNTRYNAME"

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const-string v8, "STATE"

    aput-object v8, v5, v7

    const/4 v7, 0x3

    const-string v8, "LOCCODE"

    aput-object v8, v5, v7

    const/4 v7, 0x4

    const-string v8, "_id"

    aput-object v8, v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "CITYNAME ASC"

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 172
    .end local v6           #bufs:Ljava/lang/String;
    .end local v14           #buf:Ljava/lang/StringBuffer;
    :cond_a1
    if-eqz v16, :cond_157

    .line 174
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 176
    :goto_a6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_157

    .line 178
    new-instance v7, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    const-string v2, "CITYNAME"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "COUNTRYNAME"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v2, "LOCCODE"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v13}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_10b
    .catchall {:try_start_e .. :try_end_10b} :catchall_1c4
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_10b} :catch_10c

    goto :goto_a6

    .line 208
    .end local v15           #cityname:Ljava/lang/String;
    .end local v20           #end:I
    .end local v25           #start:I
    :catch_10c
    move-exception v18

    .line 210
    .local v18, e:Ljava/lang/Exception;
    :try_start_10d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CityDBHelper.searchCity()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_125
    .catchall {:try_start_10d .. :try_end_125} :catchall_1c4

    .line 213
    :try_start_125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    if-eqz v2, :cond_137

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 216
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myInput:Ljava/io/InputStream;

    .line 218
    :cond_137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;

    if-eqz v2, :cond_149

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 221
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->myOutput:Ljava/io/OutputStream;
    :try_end_149
    .catchall {:try_start_125 .. :try_end_149} :catchall_1c4
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_149} :catch_22a

    .line 230
    :cond_149
    :goto_149
    if-eqz v16, :cond_14e

    .line 231
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_14e
    if-eqz v17, :cond_153

    .line 233
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_153
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->close()V

    .line 236
    .end local v18           #e:Ljava/lang/Exception;
    :goto_156
    return-object v23

    .line 185
    .restart local v15       #cityname:Ljava/lang/String;
    .restart local v20       #end:I
    .restart local v25       #start:I
    :cond_157
    if-eqz v17, :cond_21b

    if-eqz v16, :cond_21b

    .line 187
    :try_start_15b
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 188
    :goto_15e
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1d3

    .line 190
    new-instance v7, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    const-string v2, "CITYNAME"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "COUNTRYNAME"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v2, "LOCCODE"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v13}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1c3
    .catchall {:try_start_15b .. :try_end_1c3} :catchall_1c4
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_1c3} :catch_10c

    goto :goto_15e

    .line 230
    .end local v15           #cityname:Ljava/lang/String;
    .end local v20           #end:I
    .end local v25           #start:I
    :catchall_1c4
    move-exception v2

    if-eqz v16, :cond_1ca

    .line 231
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_1ca
    if-eqz v17, :cond_1cf

    .line 233
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_1cf
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->close()V

    throw v2

    .line 195
    .restart local v15       #cityname:Ljava/lang/String;
    .restart local v20       #end:I
    .restart local v25       #start:I
    :cond_1d3
    const/16 v21, 0x0

    .local v21, i:I
    :goto_1d5
    :try_start_1d5
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_216

    .line 196
    const/16 v22, 0x0

    .local v22, j:I
    :goto_1df
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_213

    .line 197
    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getCity()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_210

    .line 198
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 196
    :cond_210
    add-int/lit8 v22, v22, 0x1

    goto :goto_1df

    .line 195
    :cond_213
    add-int/lit8 v21, v21, 0x1

    goto :goto_1d5

    .line 202
    .end local v22           #j:I
    :cond_216
    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_219
    .catchall {:try_start_1d5 .. :try_end_219} :catchall_1c4
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_219} :catch_10c

    .line 203
    const/16 v24, 0x0

    .line 230
    .end local v21           #i:I
    :cond_21b
    if-eqz v16, :cond_220

    .line 231
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_220
    if-eqz v17, :cond_225

    .line 233
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_225
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->close()V

    goto/16 :goto_156

    .line 224
    .end local v15           #cityname:Ljava/lang/String;
    .end local v20           #end:I
    .end local v25           #start:I
    .restart local v18       #e:Ljava/lang/Exception;
    :catch_22a
    move-exception v19

    .line 225
    .local v19, e1:Ljava/io/IOException;
    :try_start_22b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CityDBHelper.searchCity() FileStream close Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_243
    .catchall {:try_start_22b .. :try_end_243} :catchall_1c4

    goto/16 :goto_149
.end method
