.class public Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "StockCurrencyDBHelper.java"


# static fields
.field private static DB_NAME:Ljava/lang/String;

.field private static mVersion:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mForceCopy:Z

.field private mResultType:I

.field private mSQLDBCountryDataBase:Landroid/database/sqlite/SQLiteDatabase;

.field private mStrDBPath:Ljava/lang/String;

.field myInput:Ljava/io/InputStream;

.field myOutput:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string v0, "countrydb.db"

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->DB_NAME:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    const/16 v9, -0x5a

    const/4 v8, 0x0

    .line 37
    sget-object v5, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->DB_NAME:Ljava/lang/String;

    const/4 v6, 0x0

    sget v7, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mVersion:I

    invoke-direct {p0, p1, v5, v6, v7}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 25
    const-string v5, ""

    iput-object v5, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mStrDBPath:Ljava/lang/String;

    .line 29
    iput v8, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mResultType:I

    .line 31
    iput-boolean v8, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mForceCopy:Z

    .line 38
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mContext:Landroid/content/Context;

    .line 42
    :try_start_15
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 43
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->close()V

    .line 46
    const/4 v5, 0x0

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mStrDBPath:Ljava/lang/String;
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_15 .. :try_end_2f} :catch_30
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_15 .. :try_end_2f} :catch_68
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2f} :catch_88

    .line 66
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #path:Ljava/lang/String;
    :cond_2f
    :goto_2f
    return-void

    .line 48
    :catch_30
    move-exception v2

    .line 50
    .local v2, fe:Landroid/database/sqlite/SQLiteFullException;
    iput v9, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mResultType:I

    .line 51
    sget-boolean v5, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v5, :cond_4f

    .line 52
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CityDBHelper()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_4f
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CityDBHelper()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 55
    .end local v2           #fe:Landroid/database/sqlite/SQLiteFullException;
    :catch_68
    move-exception v3

    .line 57
    .local v3, ioe:Landroid/database/sqlite/SQLiteDiskIOException;
    iput v9, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mResultType:I

    .line 58
    sget-boolean v5, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v5, :cond_2f

    .line 59
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CityDBHelper()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 61
    .end local v3           #ioe:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_88
    move-exception v1

    .line 63
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v5, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v5, :cond_2f

    .line 64
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CityDBHelper()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method private checkDataBase()Z
    .registers 6

    .prologue
    .line 108
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->getDBFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, dbFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0xc350

    cmp-long v1, v1, v3

    if-gez v1, :cond_16

    .line 111
    const/4 v1, 0x0

    .line 113
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
    .line 118
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    sget-object v4, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->myInput:Ljava/io/InputStream;

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mStrDBPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, outFileName:Ljava/lang/String;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->myOutput:Ljava/io/OutputStream;

    .line 123
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 125
    .local v0, buffer:[B
    :goto_2e
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->myInput:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, length:I
    if-lez v1, :cond_3d

    .line 127
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->myOutput:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2e

    .line 130
    :cond_3d
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->myOutput:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 131
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->myOutput:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 132
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->myInput:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 133
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 151
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mSQLDBCountryDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_a

    .line 152
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mSQLDBCountryDataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 154
    :cond_a
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 155
    monitor-exit p0

    return-void

    .line 151
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createDataBase()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->checkDataBase()Z

    move-result v1

    .line 82
    .local v1, dbExist:Z
    if-eqz v1, :cond_b

    iget-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mForceCopy:Z

    if-nez v3, :cond_b

    .line 104
    :cond_a
    :goto_a
    return-void

    .line 88
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 89
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 93
    :try_start_12
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->copyDataBase()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_38
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_a

    .line 95
    :catch_16
    move-exception v2

    .line 97
    .local v2, e:Ljava/io/IOException;
    const/16 v3, -0x5a

    :try_start_19
    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mResultType:I

    .line 98
    sget-boolean v3, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v3, :cond_a

    .line 99
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CityDBHelper()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_19 .. :try_end_37} :catchall_38

    goto :goto_a

    .line 102
    .end local v2           #e:Ljava/io/IOException;
    :catchall_38
    move-exception v3

    throw v3
.end method

.method public getCountrySymbol(Z)Ljava/util/ArrayList;
    .registers 16
    .parameter "bool"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v13, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;>;"
    :try_start_5
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->createDataBase()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_52

    .line 259
    :goto_8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->openDataBase()V

    .line 260
    const/4 v10, 0x0

    .line 261
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_57

    .line 263
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mSQLDBCountryDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "MY_STOCK_COUNTRY_NAME"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "NAME"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "SYMBOL"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "NAME ASC"

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 272
    :goto_2b
    if-eqz v10, :cond_78

    .line 274
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 275
    :goto_30
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_75

    .line 277
    new-instance v12, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    invoke-direct {v12}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;-><init>()V

    .line 278
    .local v12, item:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;->setFirstItem(Ljava/lang/String;)V

    .line 279
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;->setSecondItem(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_30

    .line 254
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v12           #item:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;
    :catch_52
    move-exception v11

    .line 257
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 268
    .end local v11           #e:Ljava/io/IOException;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_57
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mSQLDBCountryDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "MY_STOCK_COUNTRY_NAME"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "NAME"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "SYMBOL"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "SYMBOL ASC"

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_2b

    .line 284
    :cond_75
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 287
    :cond_78
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->close()V

    .line 289
    return-object v13
.end method

.method public getDBFilePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mStrDBPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 158
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mForceCopy:Z

    .line 165
    return-void
.end method

.method public openDataBase()V
    .registers 5

    .prologue
    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mStrDBPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, myPath:Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v3, 0x11

    :try_start_18
    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mSQLDBCountryDataBase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1e
    .catch Landroid/database/SQLException; {:try_start_18 .. :try_end_1e} :catch_1f

    .line 147
    :goto_1e
    return-void

    .line 142
    :catch_1f
    move-exception v0

    .line 145
    .local v0, e:Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_1e
.end method

.method public selectCountry(Ljava/lang/String;)Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;
    .registers 16
    .parameter "searchString"

    .prologue
    const/4 v13, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 169
    new-instance v12, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    invoke-direct {v12}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;-><init>()V

    .line 172
    .local v12, item:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;
    :try_start_8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->createDataBase()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_5a

    .line 179
    :goto_b
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->openDataBase()V

    .line 180
    const/4 v10, 0x0

    .line 181
    .local v10, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mSQLDBCountryDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MY_STOCK_COUNTRY_NAME"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "NAME"

    aput-object v4, v3, v13

    const-string v4, "SYMBOL"

    aput-object v4, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SYMBOL like \'%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "%\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "SYMBOL ASC"

    move-object v6, v5

    move-object v7, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 184
    if-eqz v10, :cond_56

    .line 186
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 187
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;->setFirstItem(Ljava/lang/String;)V

    .line 188
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;->setSecondItem(Ljava/lang/String;)V

    .line 189
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_56
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->close()V

    .line 194
    return-object v12

    .line 174
    .end local v10           #cursor:Landroid/database/Cursor;
    :catch_5a
    move-exception v11

    .line 177
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b
.end method

.method public selectCountrySymbol(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 17
    .parameter "searchString"
    .parameter "isName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v13, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;>;"
    :try_start_5
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->createDataBase()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_72

    .line 209
    :goto_8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->openDataBase()V

    .line 210
    const/4 v10, 0x0

    .line 211
    .local v10, cursor:Landroid/database/Cursor;
    const-string v0, "\'"

    const-string v1, "\""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 212
    if-eqz p2, :cond_77

    .line 214
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mSQLDBCountryDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "MY_STOCK_COUNTRY_NAME"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "NAME"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "SYMBOL"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NAME like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "NAME ASC"

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 223
    :goto_4b
    if-eqz v10, :cond_b0

    .line 225
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 226
    :goto_50
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 228
    new-instance v12, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;

    invoke-direct {v12}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;-><init>()V

    .line 229
    .local v12, item:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;->setFirstItem(Ljava/lang/String;)V

    .line 230
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;->setSecondItem(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_50

    .line 204
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v12           #item:Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;
    :catch_72
    move-exception v11

    .line 207
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 219
    .end local v11           #e:Ljava/io/IOException;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_77
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->mSQLDBCountryDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "MY_STOCK_COUNTRY_NAME"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "NAME"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "SYMBOL"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SYMBOL like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "SYMBOL ASC"

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_4b

    .line 235
    :cond_ad
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_b0
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->close()V

    .line 240
    return-object v13
.end method
