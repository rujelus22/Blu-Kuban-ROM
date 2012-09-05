.class public Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "IndicesDBHelper.java"


# static fields
.field private static DB_NAME:Ljava/lang/String;

.field private static mVersion:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mForceCopy:Z

.field private mResultType:I

.field private mStrDBPath:Ljava/lang/String;

.field myInput:Ljava/io/InputStream;

.field myOutput:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string v0, "indicesdb.db"

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->DB_NAME:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->mVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    const/16 v9, -0x5a

    const/4 v8, 0x0

    .line 37
    sget-object v5, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->DB_NAME:Ljava/lang/String;

    const/4 v6, 0x0

    sget v7, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->mVersion:I

    invoke-direct {p0, p1, v5, v6, v7}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 25
    const-string v5, ""

    iput-object v5, p0, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->mStrDBPath:Ljava/lang/String;

    .line 29
    iput v8, p0, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->mResultType:I

    .line 31
    iput-boolean v8, p0, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->mForceCopy:Z

    .line 38
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->mContext:Landroid/content/Context;

    .line 42
    :try_start_15
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 43
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->close()V

    .line 46
    const/4 v5, 0x0

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->mStrDBPath:Ljava/lang/String;
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_15 .. :try_end_2f} :catch_30
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_15 .. :try_end_2f} :catch_50
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2f} :catch_70

    .line 65
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
    iput v9, p0, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->mResultType:I

    .line 51
    sget-boolean v5, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v5, :cond_2f

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

    goto :goto_2f

    .line 54
    .end local v2           #fe:Landroid/database/sqlite/SQLiteFullException;
    :catch_50
    move-exception v3

    .line 56
    .local v3, ioe:Landroid/database/sqlite/SQLiteDiskIOException;
    iput v9, p0, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->mResultType:I

    .line 57
    sget-boolean v5, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v5, :cond_2f

    .line 58
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

    .line 60
    .end local v3           #ioe:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_70
    move-exception v1

    .line 62
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v5, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v5, :cond_2f

    .line 63
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
    .line 107
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->getDBFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, dbFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0xc350

    cmp-long v1, v1, v3

    if-gez v1, :cond_16

    .line 110
    const/4 v1, 0x0

    .line 112
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
    .line 117
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    sget-object v4, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->myInput:Ljava/io/InputStream;

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->mStrDBPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, outFileName:Ljava/lang/String;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->myOutput:Ljava/io/OutputStream;

    .line 122
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 124
    .local v0, buffer:[B
    :goto_2e
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->myInput:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, length:I
    if-lez v1, :cond_3d

    .line 126
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->myOutput:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2e

    .line 129
    :cond_3d
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->myOutput:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 130
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->myOutput:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 131
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->myInput:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 132
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 159
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 160
    monitor-exit p0

    return-void

    .line 159
    :catchall_6
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
    .line 79
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->checkDataBase()Z

    move-result v1

    .line 81
    .local v1, dbExist:Z
    if-eqz v1, :cond_b

    iget-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->mForceCopy:Z

    if-nez v3, :cond_b

    .line 103
    :cond_a
    :goto_a
    return-void

    .line 87
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 88
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 92
    :try_start_12
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->copyDataBase()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_38
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_a

    .line 94
    :catch_16
    move-exception v2

    .line 96
    .local v2, e:Ljava/io/IOException;
    const/16 v3, -0x5a

    :try_start_19
    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->mResultType:I

    .line 97
    sget-boolean v3, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v3, :cond_a

    .line 98
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

    .line 101
    .end local v2           #e:Ljava/io/IOException;
    :catchall_38
    move-exception v3

    throw v3
.end method

.method public getDBFilePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->mStrDBPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->DB_NAME:Ljava/lang/String;

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
    .line 163
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->mForceCopy:Z

    .line 170
    return-void
.end method

.method public openDataBase(Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 7
    .parameter "writable"

    .prologue
    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->mStrDBPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, myPath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 140
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p1, :cond_20

    .line 142
    const/4 v3, 0x0

    const/16 v4, 0x10

    :try_start_1b
    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 154
    :goto_1f
    return-object v0

    .line 146
    :cond_20
    const/4 v3, 0x0

    const/16 v4, 0x11

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_26
    .catch Landroid/database/SQLException; {:try_start_1b .. :try_end_26} :catch_28

    move-result-object v0

    goto :goto_1f

    .line 149
    :catch_28
    move-exception v1

    .line 152
    .local v1, e:Landroid/database/SQLException;
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_1f
.end method

.method public selectAllIndicesList()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 174
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 176
    const-class v11, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v11

    .line 180
    :try_start_9
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->createDataBase()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_96
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_90

    .line 187
    :goto_c
    const/4 v0, 0x0

    :try_start_d
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/IndicesDBHelper;->openDataBase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_96

    move-result-object v0

    .line 188
    if-eqz v0, :cond_9f

    .line 192
    :try_start_13
    const-string v1, "STOCK_INDICES_INFO_TABLE"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "NAME"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "SYMBOL"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "CURRENT"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "CHANGE_PRICE"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "CHANGE_PERCENT"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "EXCHANGE"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 194
    if-eqz v1, :cond_89

    .line 196
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_86

    .line 200
    :cond_48
    new-instance v2, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-direct {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;-><init>()V

    .line 201
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setName(Ljava/lang/String;)V

    .line 202
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setSymbol(Ljava/lang/String;)V

    .line 203
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setPrice(Ljava/lang/String;)V

    .line 204
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setChange(Ljava/lang/String;)V

    .line 205
    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setChangePercent(Ljava/lang/String;)V

    .line 206
    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setExchange(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_48

    .line 211
    :cond_86
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_89
    .catchall {:try_start_13 .. :try_end_89} :catchall_96
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_13 .. :try_end_89} :catch_99
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_13 .. :try_end_89} :catch_9c

    :cond_89
    move-object v1, v10

    .line 223
    :goto_8a
    :try_start_8a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v0, v1

    .line 229
    :goto_8e
    monitor-exit v11

    .line 230
    return-object v0

    .line 182
    :catch_90
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c

    .line 229
    :catchall_96
    move-exception v0

    monitor-exit v11
    :try_end_98
    .catchall {:try_start_8a .. :try_end_98} :catchall_96

    throw v0

    .line 214
    :catch_99
    move-exception v1

    move-object v1, v9

    .line 221
    goto :goto_8a

    .line 218
    :catch_9c
    move-exception v1

    move-object v1, v9

    .line 220
    goto :goto_8a

    :cond_9f
    move-object v0, v9

    .line 227
    goto :goto_8e
.end method
