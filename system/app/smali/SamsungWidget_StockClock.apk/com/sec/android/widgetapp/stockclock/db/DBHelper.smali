.class public Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
.super Ljava/lang/Object;
.source "DBHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDbOpenHelper:Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;

.field private mLastError:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;

    invoke-direct {v0, p1}, Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;

    .line 40
    return-void
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .registers 5
    .parameter "cursor"

    .prologue
    .line 2615
    if-eqz p1, :cond_5

    .line 2617
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 2623
    :cond_5
    :goto_5
    return-void

    .line 2618
    :catch_6
    move-exception v0

    .line 2620
    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 2604
    if-eqz p1, :cond_5

    .line 2606
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 2612
    :cond_5
    :goto_5
    return-void

    .line 2607
    :catch_6
    move-exception v0

    .line 2609
    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 9
    .parameter "writable"

    .prologue
    const/4 v6, 0x0

    const/16 v5, -0x5a

    .line 2473
    const/4 v0, 0x0

    .line 2474
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iput v6, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I

    .line 2478
    :try_start_6
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;

    if-nez v3, :cond_1e

    .line 2479
    const-string v3, ""

    const-string v4, "DBHelper : DBOpenHelperopen fail!! mDbOpenHelper is null!!!"

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_27

    .line 2481
    new-instance v3, Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;

    .line 2488
    :cond_1e
    :goto_1e
    if-eqz p1, :cond_33

    .line 2490
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2515
    :goto_26
    return-object v0

    .line 2483
    :cond_27
    const-string v3, ""

    const-string v4, "DBHelper : DBOpenHelperopen fail!! context is null!!!"

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_2e} :catch_2f
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_6 .. :try_end_2e} :catch_3a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_2e} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2e} :catch_42

    goto :goto_1e

    .line 2497
    :catch_2f
    move-exception v1

    .line 2499
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    iput v5, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I

    goto :goto_26

    .line 2494
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_33
    :try_start_33
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_33 .. :try_end_38} :catch_2f
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_33 .. :try_end_38} :catch_3a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_33 .. :try_end_38} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_42

    move-result-object v0

    goto :goto_26

    .line 2501
    :catch_3a
    move-exception v1

    .line 2503
    .local v1, e:Landroid/database/sqlite/SQLiteDiskIOException;
    iput v5, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I

    goto :goto_26

    .line 2505
    .end local v1           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_3e
    move-exception v1

    .line 2507
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    iput v5, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I

    goto :goto_26

    .line 2509
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catch_42
    move-exception v1

    .line 2511
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f09004c

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 2512
    .local v2, toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2513
    const/16 v3, -0x5b

    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I

    goto :goto_26
.end method


# virtual methods
.method public addDetailStockCurrencyRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v1, -0x5a

    .line 2158
    .line 2159
    const-class v2, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v2

    .line 2161
    const/4 v3, 0x1

    :try_start_7
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2162
    if-eqz v3, :cond_32

    .line 2164
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2165
    const-string v5, "NAME"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2166
    const-string v5, "SYMBOL"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    const-string v5, "EXCHANGE"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_35

    .line 2170
    :try_start_21
    const-string v5, "MY_STOCK_DETAIL_CURRENCY_INFO_TABLE"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_35
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_21 .. :try_end_27} :catch_2c
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_21 .. :try_end_27} :catch_2f
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_21 .. :try_end_27} :catch_38

    .line 2184
    :goto_27
    :try_start_27
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2190
    :goto_2a
    monitor-exit v2

    .line 2191
    return v0

    .line 2172
    :catch_2c
    move-exception v0

    move v0, v1

    .line 2183
    goto :goto_27

    .line 2176
    :catch_2f
    move-exception v0

    move v0, v1

    .line 2183
    goto :goto_27

    .line 2188
    :cond_32
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I

    goto :goto_2a

    .line 2190
    :catchall_35
    move-exception v0

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_35

    throw v0

    .line 2180
    :catch_38
    move-exception v1

    goto :goto_27
.end method

.method public addDetailStockRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v1, -0x5a

    .line 2196
    .line 2197
    const-class v2, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v2

    .line 2199
    const/4 v3, 0x1

    :try_start_7
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2200
    if-eqz v3, :cond_32

    .line 2202
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2203
    const-string v5, "NAME"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    const-string v5, "SYMBOL"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    const-string v5, "EXCHANGE"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_35

    .line 2208
    :try_start_21
    const-string v5, "MY_STOCK_DETAIL_INFO_TABLE"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_35
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_21 .. :try_end_27} :catch_2c
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_21 .. :try_end_27} :catch_2f
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_21 .. :try_end_27} :catch_38

    .line 2222
    :goto_27
    :try_start_27
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2228
    :goto_2a
    monitor-exit v2

    .line 2229
    return v0

    .line 2210
    :catch_2c
    move-exception v0

    move v0, v1

    .line 2221
    goto :goto_27

    .line 2214
    :catch_2f
    move-exception v0

    move v0, v1

    .line 2221
    goto :goto_27

    .line 2226
    :cond_32
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I

    goto :goto_2a

    .line 2228
    :catchall_35
    move-exception v0

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_35

    throw v0

    .line 2218
    :catch_38
    move-exception v1

    goto :goto_27
.end method

.method public addIndicesRow(Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;)I
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v1, -0x5a

    .line 2104
    .line 2105
    const-class v2, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v2

    .line 2107
    const/4 v3, 0x1

    :try_start_7
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2108
    if-eqz v3, :cond_ce

    .line 2110
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2111
    const-string v5, "NAME"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    const-string v5, "SYMBOL"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2113
    const-string v5, "CURRENT"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    const-string v5, "CHANGE_PRICE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    const-string v5, "CHANGE_PERCENT"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChangePercent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    const-string v5, "EXCHANGE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getExchange()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    const-string v5, "UP_DOWN"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getUpdown()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    const-string v5, "UPDATE_DATE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    const-string v5, "LINK_URL"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getLinkUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    const-string v5, "HIGH"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getHigh()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    const-string v5, "LOW"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getLow()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    const-string v5, "VOLUME"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getVolume()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    const-string v5, "PREV_CLOSE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrevclose()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    const-string v5, "OPEN"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getOpen()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    const-string v5, "MARKET_CAP"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getMarketcap()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    const-string v5, "EPS_CURR_YEAR"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getEpscurryear()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    const-string v5, "PE_RATIO"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPeratio()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    const-string v5, "YEAR_HIGH"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getYearhigh()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    const-string v5, "YEAR_LOW"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getYearlow()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bd
    .catchall {:try_start_7 .. :try_end_bd} :catchall_d1

    .line 2132
    :try_start_bd
    const-string v5, "MY_STOCK_INDICES_INFO_TABLE"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_c3
    .catchall {:try_start_bd .. :try_end_c3} :catchall_d1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_bd .. :try_end_c3} :catch_c8
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_bd .. :try_end_c3} :catch_cb
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_bd .. :try_end_c3} :catch_d4

    .line 2146
    :goto_c3
    :try_start_c3
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2152
    :goto_c6
    monitor-exit v2

    .line 2153
    return v0

    .line 2134
    :catch_c8
    move-exception v0

    move v0, v1

    .line 2145
    goto :goto_c3

    .line 2138
    :catch_cb
    move-exception v0

    move v0, v1

    .line 2145
    goto :goto_c3

    .line 2150
    :cond_ce
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I

    goto :goto_c6

    .line 2152
    :catchall_d1
    move-exception v0

    monitor-exit v2
    :try_end_d3
    .catchall {:try_start_c3 .. :try_end_d3} :catchall_d1

    throw v0

    .line 2142
    :catch_d4
    move-exception v1

    goto :goto_c3
.end method

.method public addIndicesRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v1, -0x5a

    .line 2063
    .line 2064
    const-class v2, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v2

    .line 2066
    const/4 v3, 0x1

    :try_start_7
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2067
    if-eqz v3, :cond_41

    .line 2069
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2070
    const-string v5, "NAME"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    const-string v5, "SYMBOL"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    const-string v5, "CURRENT"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    const-string v5, "CHANGE_PRICE"

    invoke-virtual {v4, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    const-string v5, "CHANGE_PERCENT"

    invoke-virtual {v4, v5, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    const-string v5, "EXCHANGE"

    invoke-virtual {v4, v5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_44

    .line 2078
    :try_start_30
    const-string v5, "MY_STOCK_INDICES_INFO_TABLE"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_44
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_30 .. :try_end_36} :catch_3b
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_30 .. :try_end_36} :catch_3e
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_30 .. :try_end_36} :catch_47

    .line 2092
    :goto_36
    :try_start_36
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2098
    :goto_39
    monitor-exit v2

    .line 2099
    return v0

    .line 2080
    :catch_3b
    move-exception v0

    move v0, v1

    .line 2091
    goto :goto_36

    .line 2084
    :catch_3e
    move-exception v0

    move v0, v1

    .line 2091
    goto :goto_36

    .line 2096
    :cond_41
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I

    goto :goto_39

    .line 2098
    :catchall_44
    move-exception v0

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_44

    throw v0

    .line 2088
    :catch_47
    move-exception v1

    goto :goto_36
.end method

.method public addStockCurrencyMainInfo(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)I
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v1, -0x5a

    .line 1913
    .line 1914
    const-class v2, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v2

    .line 1916
    const/4 v3, 0x1

    :try_start_7
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1917
    if-eqz v3, :cond_9e

    .line 1919
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1920
    const-string v5, "NAME"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    const-string v5, "SYMBOL"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    const-string v5, "EXCHANGE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getExchange()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    const-string v5, "CURRENT_PRICE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    const-string v5, "CHANGE_PRICE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChange()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1925
    const-string v5, "CHANGE_PERCENT"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChangePercent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    const-string v5, "UPDATE_DATE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    const-string v5, "HIGH"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    const-string v5, "LOW"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLow()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    const-string v5, "PREV_CLOSE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrevclose()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    const-string v5, "OPEN"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getOpen()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    const-string v5, "YEAR_HIGH"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearhigh()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    const-string v5, "YEAR_LOW"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearlow()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_7 .. :try_end_87} :catchall_a1

    .line 1939
    :try_start_87
    const-string v5, "MY_STOCK_CURRENCY_TABLE"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_8d
    .catchall {:try_start_87 .. :try_end_8d} :catchall_a1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_87 .. :try_end_8d} :catch_92
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_87 .. :try_end_8d} :catch_98
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_87 .. :try_end_8d} :catch_a4

    .line 1955
    :goto_8d
    :try_start_8d
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1961
    :goto_90
    monitor-exit v2

    .line 1962
    return v0

    .line 1941
    :catch_92
    move-exception v0

    .line 1943
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    move v0, v1

    .line 1954
    goto :goto_8d

    .line 1946
    :catch_98
    move-exception v0

    .line 1948
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    move v0, v1

    .line 1954
    goto :goto_8d

    .line 1959
    :cond_9e
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I

    goto :goto_90

    .line 1961
    :catchall_a1
    move-exception v0

    monitor-exit v2
    :try_end_a3
    .catchall {:try_start_8d .. :try_end_a3} :catchall_a1

    throw v0

    .line 1951
    :catch_a4
    move-exception v1

    goto :goto_8d
.end method

.method public addStockMainInfo(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)I
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v1, -0x5a

    .line 1967
    .line 1968
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->hasMainInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1970
    const/16 v0, -0x63

    .line 2019
    :goto_f
    return v0

    .line 1972
    :cond_10
    const-class v2, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v2

    .line 1974
    const/4 v3, 0x1

    :try_start_14
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1975
    if-eqz v3, :cond_d6

    .line 1977
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1978
    const-string v5, "NAME"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    const-string v5, "SYMBOL"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    const-string v5, "CURRENT_PRICE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    const-string v5, "CHANGE_PRICE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChange()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    const-string v5, "CHANGE_PERCENT"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChangePercent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    const-string v5, "UP_DOWN"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getUpdown()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    const-string v5, "UPDATE_DATE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    const-string v5, "LINK_URL"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLinkUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    const-string v5, "HIGH"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    const-string v5, "LOW"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLow()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    const-string v5, "VOLUME"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getVolume()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    const-string v5, "PREV_CLOSE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrevclose()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    const-string v5, "OPEN"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getOpen()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    const-string v5, "MARKET_CAP"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getMarketcap()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    const-string v5, "EPS_CURR_YEAR"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getEpscurryear()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    const-string v5, "PE_RATIO"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPeratio()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    const-string v5, "YEAR_HIGH"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearhigh()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    const-string v5, "YEAR_LOW"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearlow()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c1
    .catchall {:try_start_14 .. :try_end_c1} :catchall_cd

    .line 1998
    :try_start_c1
    const-string v5, "MY_STOCK_MAIN_INFO_TABLE"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_c7
    .catchall {:try_start_c1 .. :try_end_c7} :catchall_cd
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_c1 .. :try_end_c7} :catch_d0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_c1 .. :try_end_c7} :catch_d3
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_c1 .. :try_end_c7} :catch_d9

    .line 2012
    :goto_c7
    :try_start_c7
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2018
    :goto_ca
    monitor-exit v2

    goto/16 :goto_f

    :catchall_cd
    move-exception v0

    monitor-exit v2
    :try_end_cf
    .catchall {:try_start_c7 .. :try_end_cf} :catchall_cd

    throw v0

    .line 2000
    :catch_d0
    move-exception v0

    move v0, v1

    .line 2011
    goto :goto_c7

    .line 2004
    :catch_d3
    move-exception v0

    move v0, v1

    .line 2011
    goto :goto_c7

    .line 2016
    :cond_d6
    :try_start_d6
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I
    :try_end_d8
    .catchall {:try_start_d6 .. :try_end_d8} :catchall_cd

    goto :goto_ca

    .line 2008
    :catch_d9
    move-exception v1

    goto :goto_c7
.end method

.method public addStockRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v1, -0x5a

    .line 2024
    .line 2025
    const-class v2, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v2

    .line 2027
    const/4 v3, 0x1

    :try_start_7
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2028
    if-eqz v3, :cond_39

    .line 2030
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2031
    const-string v5, "NAME"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    const-string v5, "SYMBOL"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    const-string v5, "EXCHANGE"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    const-string v5, "MAIN_DISPLAY"

    const-string v6, "X"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_3c

    .line 2037
    :try_start_28
    const-string v5, "MY_STOCK_LIST_TABLE"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_3c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_28 .. :try_end_2e} :catch_33
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_28 .. :try_end_2e} :catch_36
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_28 .. :try_end_2e} :catch_3f

    .line 2051
    :goto_2e
    :try_start_2e
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2057
    :goto_31
    monitor-exit v2

    .line 2058
    return v0

    .line 2039
    :catch_33
    move-exception v0

    move v0, v1

    .line 2050
    goto :goto_2e

    .line 2043
    :catch_36
    move-exception v0

    move v0, v1

    .line 2050
    goto :goto_2e

    .line 2055
    :cond_39
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I

    goto :goto_31

    .line 2057
    :catchall_3c
    move-exception v0

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_3c

    throw v0

    .line 2047
    :catch_3f
    move-exception v1

    goto :goto_2e
.end method

.method public close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;->close()V

    .line 64
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;

    .line 65
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method public deleteAllStocks()V
    .registers 6

    .prologue
    .line 2592
    const-class v1, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v1

    .line 2594
    const/4 v0, 0x1

    :try_start_4
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2595
    if-eqz v0, :cond_18

    .line 2597
    const-string v2, "MY_STOCK_MAIN_INFO_TABLE"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2598
    const-string v2, "MY_STOCK_LIST_TABLE"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2600
    :cond_18
    monitor-exit v1

    .line 2601
    return-void

    .line 2600
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public deleteGraphData(Ljava/lang/String;)I
    .registers 9
    .parameter

    .prologue
    const/16 v1, -0x5a

    .line 414
    const/4 v0, 0x0

    .line 416
    const-class v2, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v2

    .line 418
    const/4 v3, 0x1

    :try_start_7
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_3e

    move-result-object v3

    .line 419
    if-eqz v3, :cond_3b

    .line 423
    :try_start_d
    const-string v4, "MY_STOCK_GRAPH_TABLE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SYMBOL= \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_3e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d .. :try_end_2c} :catch_31
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_d .. :try_end_2c} :catch_34
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2c} :catch_37

    .line 438
    :goto_2c
    :try_start_2c
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 444
    :goto_2f
    monitor-exit v2

    .line 445
    return v0

    .line 425
    :catch_31
    move-exception v0

    move v0, v1

    .line 436
    goto :goto_2c

    .line 429
    :catch_34
    move-exception v0

    move v0, v1

    .line 436
    goto :goto_2c

    .line 433
    :catch_37
    move-exception v0

    .line 435
    const/16 v0, -0x63

    goto :goto_2c

    .line 442
    :cond_3b
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I

    goto :goto_2f

    .line 444
    :catchall_3e
    move-exception v0

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public deleteIndicesRows(Ljava/util/ArrayList;)I
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v2, -0x5a

    .line 959
    .line 960
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    move v0, v1

    .line 1005
    :goto_c
    return v0

    .line 963
    :cond_d
    const-class v4, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v4

    .line 965
    const/4 v0, 0x1

    :try_start_11
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_52

    move-result-object v5

    .line 966
    if-eqz v5, :cond_6f

    .line 970
    :try_start_17
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v3, v1

    .line 971
    :goto_1b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_46

    .line 973
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 974
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SYMBOL=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 975
    const-string v6, "MY_STOCK_INDICES_INFO_TABLE"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 971
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1b

    .line 977
    :cond_46
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_49
    .catchall {:try_start_17 .. :try_end_49} :catchall_6a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_17 .. :try_end_49} :catch_58
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_17 .. :try_end_49} :catch_61

    .line 991
    :try_start_49
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_52
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_55

    move v0, v1

    .line 998
    :goto_4d
    :try_start_4d
    invoke-direct {p0, v5}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1004
    :goto_50
    monitor-exit v4

    goto :goto_c

    :catchall_52
    move-exception v0

    monitor-exit v4
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_52

    throw v0

    .line 993
    :catch_55
    move-exception v0

    move v0, v2

    .line 997
    goto :goto_4d

    .line 979
    :catch_58
    move-exception v0

    .line 991
    :try_start_59
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_52
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_5e

    move v0, v2

    .line 996
    goto :goto_4d

    .line 993
    :catch_5e
    move-exception v0

    move v0, v2

    .line 997
    goto :goto_4d

    .line 983
    :catch_61
    move-exception v0

    .line 991
    :try_start_62
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_52
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_67

    move v0, v2

    .line 996
    goto :goto_4d

    .line 993
    :catch_67
    move-exception v0

    move v0, v2

    .line 997
    goto :goto_4d

    .line 989
    :catchall_6a
    move-exception v0

    .line 991
    :try_start_6b
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_52
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_72

    .line 996
    :goto_6e
    :try_start_6e
    throw v0

    .line 1002
    :cond_6f
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_52

    goto :goto_50

    .line 993
    :catch_72
    move-exception v1

    goto :goto_6e
.end method

.method public deleteRows(Ljava/util/ArrayList;)I
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v2, -0x5a

    .line 905
    .line 906
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    move v0, v1

    .line 954
    :goto_c
    return v0

    .line 909
    :cond_d
    const-class v4, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v4

    .line 911
    const/4 v0, 0x1

    :try_start_11
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_64

    move-result-object v5

    .line 912
    if-eqz v5, :cond_81

    .line 916
    :try_start_17
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v3, v1

    .line 917
    :goto_1b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_58

    .line 919
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 920
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SYMBOL=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 921
    const-string v6, "MY_STOCK_LIST_TABLE"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 922
    const-string v6, "MY_STOCK_DETAIL_INFO_TABLE"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 923
    const-string v6, "MY_STOCK_MAIN_INFO_TABLE"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 924
    const-string v6, "MY_STOCK_GRAPH_TABLE"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 917
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1b

    .line 926
    :cond_58
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5b
    .catchall {:try_start_17 .. :try_end_5b} :catchall_7c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_17 .. :try_end_5b} :catch_6a
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_17 .. :try_end_5b} :catch_73

    .line 940
    :try_start_5b
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_64
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_67

    move v0, v1

    .line 947
    :goto_5f
    :try_start_5f
    invoke-direct {p0, v5}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 953
    :goto_62
    monitor-exit v4

    goto :goto_c

    :catchall_64
    move-exception v0

    monitor-exit v4
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_64

    throw v0

    .line 942
    :catch_67
    move-exception v0

    move v0, v2

    .line 946
    goto :goto_5f

    .line 928
    :catch_6a
    move-exception v0

    .line 940
    :try_start_6b
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_64
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_70

    move v0, v2

    .line 945
    goto :goto_5f

    .line 942
    :catch_70
    move-exception v0

    move v0, v2

    .line 946
    goto :goto_5f

    .line 932
    :catch_73
    move-exception v0

    .line 940
    :try_start_74
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_64
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_79

    move v0, v2

    .line 945
    goto :goto_5f

    .line 942
    :catch_79
    move-exception v0

    move v0, v2

    .line 946
    goto :goto_5f

    .line 938
    :catchall_7c
    move-exception v0

    .line 940
    :try_start_7d
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_64
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_84

    .line 945
    :goto_80
    :try_start_80
    throw v0

    .line 951
    :cond_81
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_64

    goto :goto_62

    .line 942
    :catch_84
    move-exception v1

    goto :goto_80
.end method

.method public getAllStockList()Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1441
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1443
    const-class v10, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v10

    .line 1445
    const/4 v0, 0x0

    :try_start_9
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1446
    if-eqz v0, :cond_6e

    .line 1448
    const-string v1, "MY_STOCK_LIST_TABLE"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "NAME"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "SYMBOL"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "EXCHANGE"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "MAIN_DISPLAY"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1451
    if-eqz v1, :cond_6b

    .line 1453
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 1457
    :cond_3a
    new-instance v2, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-direct {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;-><init>()V

    .line 1458
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->setName(Ljava/lang/String;)V

    .line 1459
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->setSymbol(Ljava/lang/String;)V

    .line 1460
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->setExchange(Ljava/lang/String;)V

    .line 1461
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->setMainDisplay(Ljava/lang/String;)V

    .line 1463
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1465
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 1467
    :cond_68
    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 1469
    :cond_6b
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1471
    :cond_6e
    monitor-exit v10

    .line 1472
    return-object v9

    .line 1471
    :catchall_70
    move-exception v0

    monitor-exit v10
    :try_end_72
    .catchall {:try_start_9 .. :try_end_72} :catchall_70

    throw v0
.end method

.method public getGraphData(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;)V
    .registers 18
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->clear()V

    .line 224
    const-class v11, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v11

    .line 226
    const/4 v1, 0x0

    :try_start_7
    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 227
    if-eqz v12, :cond_91

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT DATA_HIGH, DATA_VOLUME, UPDATE_DATE, null, TIMESTAMP,DATA_CLOSE,DATE FROM MY_STOCK_GRAPH_TABLE WHERE SYMBOL=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and RANGE=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' order by DATA_INDEX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 232
    if-eqz v13, :cond_8e

    .line 234
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 238
    :cond_3f
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    const-string v2, "DATA_HIGH"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    const-string v4, "DATA_VOLUME"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const-string v6, "TIMESTAMP"

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v8, "DATA_CLOSE"

    invoke-interface {v13, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v13, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    const-string v10, "DATE"

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;-><init>(DDJDLjava/lang/String;)V

    .line 241
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->addGraphData(Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;)V

    .line 244
    const/4 v1, 0x2

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->setUpdateDate(Ljava/lang/String;)V

    .line 247
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 249
    :cond_8b
    invoke-direct {p0, v13}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 251
    :cond_8e
    invoke-direct {p0, v12}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 253
    :cond_91
    monitor-exit v11

    .line 254
    return-void

    .line 253
    :catchall_93
    move-exception v1

    monitor-exit v11
    :try_end_95
    .catchall {:try_start_7 .. :try_end_95} :catchall_93

    throw v1
.end method

.method public getLastError()I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I

    return v0
.end method

.method public getMainInfoTableUpdateTime(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 354
    .line 356
    const-class v9, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v9

    .line 358
    const/4 v0, 0x0

    :try_start_5
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_53

    .line 361
    const-string v1, "MY_STOCK_MAIN_INFO_TABLE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UPDATE_DATE"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYMBOL=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 362
    if-eqz v2, :cond_51

    .line 364
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 366
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 368
    :goto_43
    invoke-direct {p0, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 370
    :goto_46
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, v1

    .line 372
    :goto_4a
    monitor-exit v9

    .line 373
    return-object v0

    .line 372
    :catchall_4c
    move-exception v0

    monitor-exit v9
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_4c

    throw v0

    :cond_4f
    move-object v1, v8

    goto :goto_43

    :cond_51
    move-object v1, v8

    goto :goto_46

    :cond_53
    move-object v0, v8

    goto :goto_4a
.end method

.method public getMyIndicesSize()I
    .registers 12

    .prologue
    const/4 v8, 0x0

    const/16 v9, -0x5a

    .line 151
    .line 152
    const-class v10, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v10

    .line 154
    const/4 v0, 0x0

    :try_start_7
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_3f

    move-result-object v0

    .line 155
    if-eqz v0, :cond_39

    .line 159
    :try_start_d
    const-string v1, "MY_STOCK_INDICES_INFO_TABLE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "NAME"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 160
    if-eqz v2, :cond_42

    .line 162
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 163
    invoke-direct {p0, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_3f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d .. :try_end_29} :catch_2f
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_d .. :try_end_29} :catch_32
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_29} :catch_35

    :goto_29
    move v8, v1

    .line 178
    :goto_2a
    :try_start_2a
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 187
    :cond_2d
    :goto_2d
    monitor-exit v10

    .line 188
    return v8

    .line 166
    :catch_2f
    move-exception v1

    move v8, v9

    .line 177
    goto :goto_2a

    .line 170
    :catch_32
    move-exception v1

    move v8, v9

    .line 177
    goto :goto_2a

    .line 174
    :catch_35
    move-exception v1

    .line 176
    const/16 v8, -0x63

    goto :goto_2a

    .line 182
    :cond_39
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I

    if-ne v0, v9, :cond_2d

    .line 184
    const/4 v8, -0x1

    goto :goto_2d

    .line 187
    :catchall_3f
    move-exception v0

    monitor-exit v10
    :try_end_41
    .catchall {:try_start_2a .. :try_end_41} :catchall_3f

    throw v0

    :cond_42
    move v1, v8

    goto :goto_29
.end method

.method public getMyListSize()I
    .registers 12

    .prologue
    const/4 v8, 0x0

    const/16 v9, -0x5a

    .line 107
    .line 109
    const-class v10, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v10

    .line 111
    const/4 v0, 0x0

    :try_start_7
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_3f

    move-result-object v0

    .line 112
    if-eqz v0, :cond_39

    .line 116
    :try_start_d
    const-string v1, "MY_STOCK_LIST_TABLE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "NAME"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 117
    if-eqz v2, :cond_42

    .line 119
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 120
    invoke-direct {p0, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_3f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d .. :try_end_29} :catch_2f
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_d .. :try_end_29} :catch_32
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_29} :catch_35

    :goto_29
    move v8, v1

    .line 136
    :goto_2a
    :try_start_2a
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 145
    :cond_2d
    :goto_2d
    monitor-exit v10

    .line 146
    return v8

    .line 123
    :catch_2f
    move-exception v1

    move v8, v9

    .line 134
    goto :goto_2a

    .line 127
    :catch_32
    move-exception v1

    move v8, v9

    .line 134
    goto :goto_2a

    .line 131
    :catch_35
    move-exception v1

    .line 133
    const/16 v8, -0x63

    goto :goto_2a

    .line 140
    :cond_39
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I

    if-ne v0, v9, :cond_2d

    .line 142
    const/4 v8, -0x1

    goto :goto_2d

    .line 145
    :catchall_3f
    move-exception v0

    monitor-exit v10
    :try_end_41
    .catchall {:try_start_2a .. :try_end_41} :catchall_3f

    throw v0

    :cond_42
    move v1, v8

    goto :goto_29
.end method

.method public hasCurrencyMainInfo(Ljava/lang/String;)Z
    .registers 14
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 881
    .line 883
    const-class v11, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v11

    .line 885
    const/4 v0, 0x0

    :try_start_6
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 886
    if-eqz v0, :cond_51

    .line 888
    const-string v1, "MY_STOCK_CURRENCY_TABLE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "SYMBOL"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYMBOL=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 889
    if-eqz v2, :cond_4f

    .line 891
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4d

    move v1, v10

    .line 895
    :goto_41
    invoke-direct {p0, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 897
    :goto_44
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    move v0, v1

    .line 899
    :goto_48
    monitor-exit v11

    .line 900
    return v0

    .line 899
    :catchall_4a
    move-exception v0

    monitor-exit v11
    :try_end_4c
    .catchall {:try_start_6 .. :try_end_4c} :catchall_4a

    throw v0

    :cond_4d
    move v1, v9

    goto :goto_41

    :cond_4f
    move v1, v9

    goto :goto_44

    :cond_51
    move v0, v9

    goto :goto_48
.end method

.method public hasGraphData(Ljava/lang/String;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 330
    .line 332
    const-class v1, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v1

    .line 334
    const/4 v2, 0x0

    :try_start_5
    invoke-direct {p0, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 335
    if-eqz v2, :cond_38

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT UPDATE_DATE FROM MY_STOCK_GRAPH_TABLE WHERE SYMBOL=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 338
    if-eqz v3, :cond_35

    .line 340
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 342
    const/4 v0, 0x1

    .line 344
    :cond_32
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 346
    :cond_35
    invoke-direct {p0, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 348
    :cond_38
    monitor-exit v1

    .line 349
    return v0

    .line 348
    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public hasIndices(Ljava/lang/String;)Z
    .registers 14
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 857
    .line 858
    const-class v11, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v11

    .line 860
    const/4 v0, 0x0

    :try_start_6
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 861
    if-eqz v0, :cond_51

    .line 863
    const-string v1, "MY_STOCK_INDICES_INFO_TABLE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "SYMBOL"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYMBOL=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 865
    if-eqz v2, :cond_4f

    .line 867
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4d

    move v1, v10

    .line 871
    :goto_41
    invoke-direct {p0, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 873
    :goto_44
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    move v0, v1

    .line 875
    :goto_48
    monitor-exit v11

    .line 876
    return v0

    .line 875
    :catchall_4a
    move-exception v0

    monitor-exit v11
    :try_end_4c
    .catchall {:try_start_6 .. :try_end_4c} :catchall_4a

    throw v0

    :cond_4d
    move v1, v9

    goto :goto_41

    :cond_4f
    move v1, v9

    goto :goto_44

    :cond_51
    move v0, v9

    goto :goto_48
.end method

.method public hasMainInfo(Ljava/lang/String;)Z
    .registers 14
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 833
    .line 835
    const-class v11, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v11

    .line 837
    const/4 v0, 0x0

    :try_start_6
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 838
    if-eqz v0, :cond_51

    .line 840
    const-string v1, "MY_STOCK_MAIN_INFO_TABLE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "SYMBOL"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYMBOL=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 841
    if-eqz v2, :cond_4f

    .line 843
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4d

    move v1, v10

    .line 847
    :goto_41
    invoke-direct {p0, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 849
    :goto_44
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    move v0, v1

    .line 851
    :goto_48
    monitor-exit v11

    .line 852
    return v0

    .line 851
    :catchall_4a
    move-exception v0

    monitor-exit v11
    :try_end_4c
    .catchall {:try_start_6 .. :try_end_4c} :catchall_4a

    throw v0

    :cond_4d
    move v1, v9

    goto :goto_41

    :cond_4f
    move v1, v9

    goto :goto_44

    :cond_51
    move v0, v9

    goto :goto_48
.end method

.method public isAleadyExistStock(Ljava/lang/String;)Z
    .registers 13
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 809
    .line 811
    const-class v10, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v10

    .line 813
    const/4 v0, 0x0

    :try_start_6
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 814
    if-eqz v0, :cond_50

    .line 816
    const-string v1, "MY_STOCK_LIST_TABLE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "NAME"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYMBOL=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 817
    if-eqz v2, :cond_4e

    .line 819
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4c

    move v1, v9

    .line 823
    :goto_40
    invoke-direct {p0, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 825
    :goto_43
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    move v0, v1

    .line 827
    :goto_47
    monitor-exit v10

    .line 828
    return v0

    .line 827
    :catchall_49
    move-exception v0

    monitor-exit v10
    :try_end_4b
    .catchall {:try_start_6 .. :try_end_4b} :catchall_49

    throw v0

    :cond_4c
    move v1, v8

    goto :goto_40

    :cond_4e
    move v1, v8

    goto :goto_43

    :cond_50
    move v0, v8

    goto :goto_47
.end method

.method public isDBOpen()Z
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;

    if-eqz v0, :cond_6

    .line 45
    const/4 v0, 0x1

    .line 48
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public maximumCheck()Z
    .registers 3

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyListSize()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_a

    .line 100
    const/4 v0, 0x1

    .line 102
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public reOpenDB(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 52
    if-nez p1, :cond_9

    .line 53
    const-string v0, ""

    const-string v1, "reOpenDB context null!!!!!!"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_9
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;

    invoke-direct {v0, p1}, Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;

    .line 58
    return-void
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
    const/4 v10, 0x0

    .line 1509
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1511
    const-class v11, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v11

    .line 1513
    const/4 v0, 0x0

    :try_start_a
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_178

    move-result-object v0

    .line 1514
    if-eqz v0, :cond_17b

    .line 1519
    :try_start_10
    const-string v1, "MY_STOCK_INDICES_INFO_TABLE"

    const/16 v2, 0x13

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

    const/4 v3, 0x6

    const-string v4, "UP_DOWN"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "UPDATE_DATE"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "LINK_URL"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "HIGH"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "LOW"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "VOLUME"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "PREV_CLOSE"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "OPEN"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "MARKET_CAP"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "EPS_CURR_YEAR"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "PE_RATIO"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "YEAR_HIGH"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "YEAR_LOW"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_89
    .catchall {:try_start_10 .. :try_end_89} :catchall_16e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_10 .. :try_end_89} :catch_14e
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_10 .. :try_end_89} :catch_15e

    move-result-object v1

    .line 1522
    if-eqz v1, :cond_143

    .line 1524
    :try_start_8c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_143

    .line 1528
    :cond_92
    new-instance v2, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-direct {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;-><init>()V

    .line 1529
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setName(Ljava/lang/String;)V

    .line 1530
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setSymbol(Ljava/lang/String;)V

    .line 1531
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setPrice(Ljava/lang/String;)V

    .line 1532
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setChange(Ljava/lang/String;)V

    .line 1533
    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setChangePercent(Ljava/lang/String;)V

    .line 1534
    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setExchange(Ljava/lang/String;)V

    .line 1535
    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setUpdown(Ljava/lang/String;)V

    .line 1536
    const/4 v3, 0x7

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setUpdateDate(Ljava/lang/String;)V

    .line 1537
    const/16 v3, 0x8

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setLinkUrl(Ljava/lang/String;)V

    .line 1538
    const/16 v3, 0x9

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setHigh(Ljava/lang/String;)V

    .line 1539
    const/16 v3, 0xa

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setLow(Ljava/lang/String;)V

    .line 1540
    const/16 v3, 0xb

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setVolume(Ljava/lang/String;)V

    .line 1541
    const/16 v3, 0xc

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setPrevclose(Ljava/lang/String;)V

    .line 1542
    const/16 v3, 0xd

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setOpen(Ljava/lang/String;)V

    .line 1543
    const/16 v3, 0xe

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setMarketcap(Ljava/lang/String;)V

    .line 1544
    const/16 v3, 0xf

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setEpscurryear(Ljava/lang/String;)V

    .line 1545
    const/16 v3, 0x10

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setPeratio(Ljava/lang/String;)V

    .line 1546
    const/16 v3, 0x11

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setYearhigh(Ljava/lang/String;)V

    .line 1547
    const/16 v3, 0x12

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setYearlow(Ljava/lang/String;)V

    .line 1548
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1550
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_140
    .catchall {:try_start_8c .. :try_end_140} :catchall_17d
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8c .. :try_end_140} :catch_183
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_8c .. :try_end_140} :catch_181

    move-result v2

    if-nez v2, :cond_92

    .line 1567
    :cond_143
    if-eqz v1, :cond_148

    .line 1568
    :try_start_145
    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 1571
    :cond_148
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, v9

    .line 1578
    :goto_14c
    monitor-exit v11
    :try_end_14d
    .catchall {:try_start_145 .. :try_end_14d} :catchall_178

    .line 1579
    return-object v0

    .line 1555
    :catch_14e
    move-exception v1

    move-object v1, v10

    .line 1557
    :goto_150
    const/16 v2, -0x5a

    :try_start_152
    iput v2, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I
    :try_end_154
    .catchall {:try_start_152 .. :try_end_154} :catchall_17d

    .line 1567
    if-eqz v1, :cond_159

    .line 1568
    :try_start_156
    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 1571
    :cond_159
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_15c
    .catchall {:try_start_156 .. :try_end_15c} :catchall_178

    move-object v0, v10

    .line 1572
    goto :goto_14c

    .line 1560
    :catch_15e
    move-exception v1

    move-object v1, v10

    .line 1562
    :goto_160
    const/16 v2, -0x5a

    :try_start_162
    iput v2, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I
    :try_end_164
    .catchall {:try_start_162 .. :try_end_164} :catchall_17d

    .line 1567
    if-eqz v1, :cond_169

    .line 1568
    :try_start_166
    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 1571
    :cond_169
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, v10

    .line 1572
    goto :goto_14c

    .line 1567
    :catchall_16e
    move-exception v1

    :goto_16f
    if-eqz v10, :cond_174

    .line 1568
    invoke-direct {p0, v10}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 1571
    :cond_174
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    .line 1578
    :catchall_178
    move-exception v0

    monitor-exit v11
    :try_end_17a
    .catchall {:try_start_166 .. :try_end_17a} :catchall_178

    throw v0

    :cond_17b
    move-object v0, v10

    .line 1576
    goto :goto_14c

    .line 1567
    :catchall_17d
    move-exception v2

    move-object v10, v1

    move-object v1, v2

    goto :goto_16f

    .line 1560
    :catch_181
    move-exception v2

    goto :goto_160

    .line 1555
    :catch_183
    move-exception v2

    goto :goto_150
.end method

.method public selectAllStockCurrencyList()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1616
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1618
    const-class v11, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v11

    .line 1620
    const/4 v0, 0x0

    :try_start_a
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_90

    move-result-object v0

    .line 1621
    if-eqz v0, :cond_8e

    .line 1625
    :try_start_10
    const-string v1, "MY_STOCK_CURRENCY_TABLE"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "NAME"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "SYMBOL"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "CURRENT_PRICE"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "CHANGE_PRICE"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "CHANGE_PERCENT"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1627
    if-eqz v1, :cond_79

    .line 1629
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 1633
    :cond_40
    new-instance v2, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-direct {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;-><init>()V

    .line 1634
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setName(Ljava/lang/String;)V

    .line 1635
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setSymbol(Ljava/lang/String;)V

    .line 1636
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setPrice(Ljava/lang/String;)V

    .line 1637
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setChange(Ljava/lang/String;)V

    .line 1638
    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setChangePercent(Ljava/lang/String;)V

    .line 1639
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1641
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_40

    .line 1643
    :cond_76
    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V
    :try_end_79
    .catchall {:try_start_10 .. :try_end_79} :catchall_90
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_10 .. :try_end_79} :catch_80
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_10 .. :try_end_79} :catch_87

    :cond_79
    move-object v1, v10

    .line 1657
    :goto_7a
    :try_start_7a
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, v1

    .line 1663
    :goto_7e
    monitor-exit v11

    .line 1664
    return-object v0

    .line 1646
    :catch_80
    move-exception v1

    .line 1648
    const/16 v1, -0x5a

    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I

    move-object v1, v9

    .line 1655
    goto :goto_7a

    .line 1651
    :catch_87
    move-exception v1

    .line 1653
    const/16 v1, -0x5a

    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I

    move-object v1, v9

    .line 1654
    goto :goto_7a

    :cond_8e
    move-object v0, v9

    .line 1661
    goto :goto_7e

    .line 1663
    :catchall_90
    move-exception v0

    monitor-exit v11
    :try_end_92
    .catchall {:try_start_7a .. :try_end_92} :catchall_90

    throw v0
.end method

.method public selectAllStockList()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1669
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1671
    const-class v11, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v11

    .line 1673
    const/4 v0, 0x0

    :try_start_a
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_76

    move-result-object v0

    .line 1674
    if-eqz v0, :cond_74

    .line 1678
    :try_start_10
    const-string v1, "MY_STOCK_LIST_TABLE"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "NAME"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "SYMBOL"

    aput-object v4, v2, v3

    const/4 v3, 0x2

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

    .line 1679
    if-eqz v1, :cond_5f

    .line 1681
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1685
    :cond_36
    new-instance v2, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-direct {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;-><init>()V

    .line 1686
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setName(Ljava/lang/String;)V

    .line 1687
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setSymbol(Ljava/lang/String;)V

    .line 1688
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setExchange(Ljava/lang/String;)V

    .line 1690
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1692
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_36

    .line 1694
    :cond_5c
    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V
    :try_end_5f
    .catchall {:try_start_10 .. :try_end_5f} :catchall_76
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_10 .. :try_end_5f} :catch_66
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_10 .. :try_end_5f} :catch_6d

    :cond_5f
    move-object v1, v10

    .line 1708
    :goto_60
    :try_start_60
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, v1

    .line 1714
    :goto_64
    monitor-exit v11

    .line 1715
    return-object v0

    .line 1697
    :catch_66
    move-exception v1

    .line 1699
    const/16 v1, -0x5a

    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I

    move-object v1, v9

    .line 1706
    goto :goto_60

    .line 1702
    :catch_6d
    move-exception v1

    .line 1704
    const/16 v1, -0x5a

    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I

    move-object v1, v9

    .line 1705
    goto :goto_60

    :cond_74
    move-object v0, v9

    .line 1712
    goto :goto_64

    .line 1714
    :catchall_76
    move-exception v0

    monitor-exit v11
    :try_end_78
    .catchall {:try_start_60 .. :try_end_78} :catchall_76

    throw v0
.end method

.method public selectAllStockMainInfo()Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1179
    const-class v10, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v10

    .line 1181
    const/4 v0, 0x0

    :try_start_5
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1182
    if-eqz v0, :cond_133

    .line 1184
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1186
    const-string v1, "MY_STOCK_MAIN_INFO_TABLE"

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CURRENT_PRICE"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "CHANGE_PRICE"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "CHANGE_PERCENT"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "UP_DOWN"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "UPDATE_DATE"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "HIGH"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "LOW"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "VOLUME"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "PREV_CLOSE"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "OPEN"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "MARKET_CAP"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "EPS_CURR_YEAR"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "PE_RATIO"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "YEAR_HIGH"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "YEAR_LOW"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "NAME"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "SYMBOL"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1190
    if-eqz v1, :cond_12d

    .line 1192
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1194
    :goto_83
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_12a

    .line 1196
    new-instance v2, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-direct {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;-><init>()V

    .line 1198
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1199
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setPrice(Ljava/lang/String;)V

    .line 1201
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1202
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setChange(Ljava/lang/String;)V

    .line 1204
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1205
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setChangePercent(Ljava/lang/String;)V

    .line 1207
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1208
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setUpdown(Ljava/lang/String;)V

    .line 1210
    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1211
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setUpdateDate(Ljava/lang/String;)V

    .line 1213
    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1214
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setHigh(Ljava/lang/String;)V

    .line 1216
    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1217
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setLow(Ljava/lang/String;)V

    .line 1219
    const/4 v3, 0x7

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1220
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setVolume(Ljava/lang/String;)V

    .line 1222
    const/16 v3, 0x8

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1223
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setPrevclose(Ljava/lang/String;)V

    .line 1225
    const/16 v3, 0x9

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1226
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setOpen(Ljava/lang/String;)V

    .line 1228
    const/16 v3, 0xa

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1229
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setMarketcap(Ljava/lang/String;)V

    .line 1231
    const/16 v3, 0xb

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1232
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setEpscurryear(Ljava/lang/String;)V

    .line 1234
    const/16 v3, 0xc

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1235
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setPeratio(Ljava/lang/String;)V

    .line 1237
    const/16 v3, 0xd

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1238
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setYearhigh(Ljava/lang/String;)V

    .line 1240
    const/16 v3, 0xe

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1241
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setYearlow(Ljava/lang/String;)V

    .line 1243
    const/16 v3, 0xf

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1244
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setName(Ljava/lang/String;)V

    .line 1246
    const/16 v3, 0x10

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1247
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setSymbol(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_83

    .line 1257
    :catchall_127
    move-exception v0

    monitor-exit v10
    :try_end_129
    .catchall {:try_start_5 .. :try_end_129} :catchall_127

    throw v0

    .line 1252
    :cond_12a
    :try_start_12a
    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 1254
    :cond_12d
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1255
    monitor-exit v10

    move-object v0, v9

    .line 1258
    :goto_132
    return-object v0

    .line 1257
    :cond_133
    monitor-exit v10
    :try_end_134
    .catchall {:try_start_12a .. :try_end_134} :catchall_127

    move-object v0, v1

    .line 1258
    goto :goto_132
.end method

.method public selectAllStockSymbol()[Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1477
    const-class v11, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v11

    .line 1479
    const/4 v0, 0x0

    :try_start_6
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1480
    if-eqz v0, :cond_4d

    .line 1482
    const-string v1, "MY_STOCK_LIST_TABLE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "SYMBOL"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1483
    if-eqz v3, :cond_4a

    .line 1485
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1487
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    move v2, v10

    .line 1491
    :cond_2f
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 1492
    add-int/lit8 v2, v2, 0x1

    .line 1494
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 1495
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 1496
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1497
    monitor-exit v11

    move-object v0, v1

    .line 1504
    :goto_46
    return-object v0

    .line 1499
    :cond_47
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 1501
    :cond_4a
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1503
    :cond_4d
    monitor-exit v11

    move-object v0, v9

    .line 1504
    goto :goto_46

    .line 1503
    :catchall_50
    move-exception v0

    monitor-exit v11
    :try_end_52
    .catchall {:try_start_6 .. :try_end_52} :catchall_50

    throw v0
.end method

.method public selectStockCurrencyMainInfoObject(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    .registers 15
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1113
    if-nez p1, :cond_7

    move-object p1, v9

    .line 1174
    :goto_6
    return-object p1

    .line 1117
    :cond_7
    const-class v12, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v12

    .line 1119
    const/4 v0, 0x0

    :try_start_b
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1120
    if-eqz v0, :cond_f2

    .line 1122
    const-string v1, "MY_STOCK_CURRENCY_TABLE"

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CURRENT_PRICE"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "CHANGE_PRICE"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "CHANGE_PERCENT"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "HIGH"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "LOW"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "PREV_CLOSE"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "OPEN"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "YEAR_HIGH"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "YEAR_LOW"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "NAME"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "UPDATE_DATE"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYMBOL=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1125
    if-eqz v2, :cond_f0

    .line 1127
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 1131
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1132
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setPrice(Ljava/lang/String;)V

    .line 1134
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1135
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setChange(Ljava/lang/String;)V

    .line 1137
    const/4 v1, 0x2

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1138
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setChangePercent(Ljava/lang/String;)V

    .line 1140
    const/4 v1, 0x3

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1141
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setHigh(Ljava/lang/String;)V

    .line 1143
    const/4 v1, 0x4

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1144
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setLow(Ljava/lang/String;)V

    .line 1146
    const/4 v1, 0x5

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1147
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setPrevclose(Ljava/lang/String;)V

    .line 1149
    const/4 v1, 0x6

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1150
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setOpen(Ljava/lang/String;)V

    .line 1152
    const/4 v1, 0x7

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1153
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setYearhigh(Ljava/lang/String;)V

    .line 1155
    const/16 v1, 0x8

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1156
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setYearlow(Ljava/lang/String;)V

    .line 1158
    const/16 v1, 0x9

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1159
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setName(Ljava/lang/String;)V

    .line 1161
    const/16 v1, 0xa

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1162
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setUpdateDate(Ljava/lang/String;)V

    move v1, v11

    .line 1164
    :goto_db
    invoke-direct {p0, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 1166
    :goto_de
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    move v0, v1

    .line 1169
    :goto_e2
    if-ne v0, v11, :cond_ea

    .line 1171
    monitor-exit v12

    goto/16 :goto_6

    .line 1173
    :catchall_e7
    move-exception v0

    monitor-exit v12
    :try_end_e9
    .catchall {:try_start_b .. :try_end_e9} :catchall_e7

    throw v0

    :cond_ea
    :try_start_ea
    monitor-exit v12
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_e7

    move-object p1, v9

    .line 1174
    goto/16 :goto_6

    :cond_ee
    move v1, v10

    goto :goto_db

    :cond_f0
    move v1, v10

    goto :goto_de

    :cond_f2
    move v0, v10

    goto :goto_e2
.end method

.method public selectStockDetailObject(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1011
    .line 1013
    const-class v12, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v12

    .line 1015
    const/4 v0, 0x0

    :try_start_7
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1017
    if-eqz v0, :cond_5f

    .line 1019
    const-string v1, "MY_STOCK_DETAIL_INFO_TABLE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "EXCHANGE"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYMBOL=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1021
    if-eqz v3, :cond_5c

    .line 1023
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1027
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v2, v11

    .line 1029
    :goto_47
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 1031
    :goto_4a
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, v1

    move v1, v2

    .line 1034
    :goto_4f
    if-ne v1, v11, :cond_53

    .line 1036
    monitor-exit v12

    .line 1039
    :goto_52
    return-object v0

    .line 1038
    :cond_53
    monitor-exit v12

    move-object v0, v9

    .line 1039
    goto :goto_52

    .line 1038
    :catchall_56
    move-exception v0

    monitor-exit v12
    :try_end_58
    .catchall {:try_start_7 .. :try_end_58} :catchall_56

    throw v0

    :cond_59
    move-object v1, v9

    move v2, v10

    goto :goto_47

    :cond_5c
    move-object v1, v9

    move v2, v10

    goto :goto_4a

    :cond_5f
    move-object v0, v9

    move v1, v10

    goto :goto_4f
.end method

.method public selectStockIndicesObject(Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;)Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;
    .registers 15
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1353
    if-nez p1, :cond_7

    move-object p1, v9

    .line 1426
    :goto_6
    return-object p1

    .line 1357
    :cond_7
    const-class v12, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v12

    .line 1359
    const/4 v0, 0x0

    :try_start_b
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1360
    if-eqz v0, :cond_12e

    .line 1362
    const-string v1, "MY_STOCK_INDICES_INFO_TABLE"

    const/16 v2, 0xf

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CURRENT"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "CHANGE_PRICE"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "CHANGE_PERCENT"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "UP_DOWN"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "UPDATE_DATE"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "HIGH"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "LOW"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "VOLUME"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "PREV_CLOSE"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "OPEN"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "MARKET_CAP"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "EPS_CURR_YEAR"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "PE_RATIO"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "YEAR_HIGH"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "YEAR_LOW"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYMBOL=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1365
    if-eqz v2, :cond_12c

    .line 1367
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 1370
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1371
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setPrice(Ljava/lang/String;)V

    .line 1373
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1374
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setChange(Ljava/lang/String;)V

    .line 1376
    const/4 v1, 0x2

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1377
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setChangePercent(Ljava/lang/String;)V

    .line 1379
    const/4 v1, 0x3

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1380
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setUpdown(Ljava/lang/String;)V

    .line 1382
    const/4 v1, 0x4

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1383
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setUpdateDate(Ljava/lang/String;)V

    .line 1385
    const/4 v1, 0x5

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1386
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setHigh(Ljava/lang/String;)V

    .line 1388
    const/4 v1, 0x6

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1389
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setLow(Ljava/lang/String;)V

    .line 1391
    const/4 v1, 0x7

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1392
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setVolume(Ljava/lang/String;)V

    .line 1394
    const/16 v1, 0x8

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1395
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setPrevclose(Ljava/lang/String;)V

    .line 1397
    const/16 v1, 0x9

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1398
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setOpen(Ljava/lang/String;)V

    .line 1400
    const/16 v1, 0xa

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1401
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setMarketcap(Ljava/lang/String;)V

    .line 1403
    const/16 v1, 0xb

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1404
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setEpscurryear(Ljava/lang/String;)V

    .line 1406
    const/16 v1, 0xc

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1407
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setPeratio(Ljava/lang/String;)V

    .line 1409
    const/16 v1, 0xd

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1410
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setYearhigh(Ljava/lang/String;)V

    .line 1412
    const/16 v1, 0xe

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1413
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setYearlow(Ljava/lang/String;)V

    move v1, v11

    .line 1416
    :goto_117
    invoke-direct {p0, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 1418
    :goto_11a
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    move v0, v1

    .line 1421
    :goto_11e
    if-ne v0, v11, :cond_126

    .line 1423
    monitor-exit v12

    goto/16 :goto_6

    .line 1425
    :catchall_123
    move-exception v0

    monitor-exit v12
    :try_end_125
    .catchall {:try_start_b .. :try_end_125} :catchall_123

    throw v0

    :cond_126
    :try_start_126
    monitor-exit v12
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_123

    move-object p1, v9

    .line 1426
    goto/16 :goto_6

    :cond_12a
    move v1, v10

    goto :goto_117

    :cond_12c
    move v1, v10

    goto :goto_11a

    :cond_12e
    move v0, v10

    goto :goto_11e
.end method

.method public selectStockIndicesObject(Ljava/lang/String;)Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;
    .registers 4
    .parameter "symbol"

    .prologue
    .line 1431
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;-><init>()V

    .line 1433
    .local v0, item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;
    if-eqz v0, :cond_a

    .line 1434
    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setSymbol(Ljava/lang/String;)V

    .line 1436
    :cond_a
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectStockIndicesObject(Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;)Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    move-result-object v1

    return-object v1
.end method

.method public selectStockMainInfoObject(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    .registers 15
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1263
    if-nez p1, :cond_7

    move-object p1, v9

    .line 1341
    :goto_6
    return-object p1

    .line 1267
    :cond_7
    const-class v12, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v12

    .line 1269
    const/4 v0, 0x0

    :try_start_b
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1270
    if-eqz v0, :cond_14c

    .line 1272
    const-string v1, "MY_STOCK_MAIN_INFO_TABLE"

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CURRENT_PRICE"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "CHANGE_PRICE"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "CHANGE_PERCENT"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "UP_DOWN"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "UPDATE_DATE"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "HIGH"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "LOW"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "VOLUME"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "PREV_CLOSE"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "OPEN"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "MARKET_CAP"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "EPS_CURR_YEAR"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "PE_RATIO"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "YEAR_HIGH"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "YEAR_LOW"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "NAME"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "LINK_URL"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYMBOL=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1275
    if-eqz v2, :cond_14a

    .line 1277
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_148

    .line 1280
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1281
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setPrice(Ljava/lang/String;)V

    .line 1283
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1284
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setChange(Ljava/lang/String;)V

    .line 1286
    const/4 v1, 0x2

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1287
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setChangePercent(Ljava/lang/String;)V

    .line 1289
    const/4 v1, 0x3

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1290
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setUpdown(Ljava/lang/String;)V

    .line 1292
    const/4 v1, 0x4

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1293
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setUpdateDate(Ljava/lang/String;)V

    .line 1295
    const/4 v1, 0x5

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1296
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setHigh(Ljava/lang/String;)V

    .line 1298
    const/4 v1, 0x6

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1299
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setLow(Ljava/lang/String;)V

    .line 1301
    const/4 v1, 0x7

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1302
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setVolume(Ljava/lang/String;)V

    .line 1304
    const/16 v1, 0x8

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1305
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setPrevclose(Ljava/lang/String;)V

    .line 1307
    const/16 v1, 0x9

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1308
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setOpen(Ljava/lang/String;)V

    .line 1310
    const/16 v1, 0xa

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1311
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setMarketcap(Ljava/lang/String;)V

    .line 1313
    const/16 v1, 0xb

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1314
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setEpscurryear(Ljava/lang/String;)V

    .line 1316
    const/16 v1, 0xc

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1317
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setPeratio(Ljava/lang/String;)V

    .line 1319
    const/16 v1, 0xd

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1320
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setYearhigh(Ljava/lang/String;)V

    .line 1322
    const/16 v1, 0xe

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1323
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setYearlow(Ljava/lang/String;)V

    .line 1325
    const/16 v1, 0xf

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1326
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setName(Ljava/lang/String;)V

    .line 1328
    const/16 v1, 0x10

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1329
    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setLinkUrl(Ljava/lang/String;)V

    move v1, v11

    .line 1331
    :goto_135
    invoke-direct {p0, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 1333
    :goto_138
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    move v0, v1

    .line 1336
    :goto_13c
    if-ne v0, v11, :cond_144

    .line 1338
    monitor-exit v12

    goto/16 :goto_6

    .line 1340
    :catchall_141
    move-exception v0

    monitor-exit v12
    :try_end_143
    .catchall {:try_start_b .. :try_end_143} :catchall_141

    throw v0

    :cond_144
    :try_start_144
    monitor-exit v12
    :try_end_145
    .catchall {:try_start_144 .. :try_end_145} :catchall_141

    move-object p1, v9

    .line 1341
    goto/16 :goto_6

    :cond_148
    move v1, v10

    goto :goto_135

    :cond_14a
    move v1, v10

    goto :goto_138

    :cond_14c
    move v0, v10

    goto :goto_13c
.end method

.method public selectStockMainInfoObject(Ljava/lang/String;)Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    .registers 4
    .parameter "symbol"

    .prologue
    .line 1346
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;-><init>()V

    .line 1347
    .local v0, item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setSymbol(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectStockMainInfoObject(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    move-result-object v1

    return-object v1
.end method

.method public updateChangeOrder(Ljava/util/ArrayList;)I
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockListItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v10, -0x5a

    .line 594
    .line 595
    const-class v11, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v11

    .line 597
    const/4 v0, 0x1

    :try_start_7
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_26f

    move-result-object v0

    .line 598
    if-eqz v0, :cond_272

    .line 602
    :try_start_d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 604
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 606
    const-string v1, "MY_STOCK_MAIN_INFO_TABLE"

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CURRENT_PRICE"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "CHANGE_PRICE"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "CHANGE_PERCENT"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "UP_DOWN"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "UPDATE_DATE"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "HIGH"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "LOW"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "VOLUME"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "PREV_CLOSE"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "OPEN"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "MARKET_CAP"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "EPS_CURR_YEAR"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "PE_RATIO"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "YEAR_HIGH"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "YEAR_LOW"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "NAME"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "SYMBOL"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 610
    if-eqz v1, :cond_13e

    .line 612
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 614
    :goto_88
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_13b

    .line 616
    new-instance v2, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-direct {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;-><init>()V

    .line 618
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 619
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setPrice(Ljava/lang/String;)V

    .line 621
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 622
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setChange(Ljava/lang/String;)V

    .line 624
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 625
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setChangePercent(Ljava/lang/String;)V

    .line 627
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 628
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setUpdown(Ljava/lang/String;)V

    .line 630
    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 631
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setUpdateDate(Ljava/lang/String;)V

    .line 633
    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 634
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setHigh(Ljava/lang/String;)V

    .line 636
    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 637
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setLow(Ljava/lang/String;)V

    .line 639
    const/4 v3, 0x7

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 640
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setVolume(Ljava/lang/String;)V

    .line 642
    const/16 v3, 0x8

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 643
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setPrevclose(Ljava/lang/String;)V

    .line 645
    const/16 v3, 0x9

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 646
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setOpen(Ljava/lang/String;)V

    .line 648
    const/16 v3, 0xa

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 649
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setMarketcap(Ljava/lang/String;)V

    .line 651
    const/16 v3, 0xb

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 652
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setEpscurryear(Ljava/lang/String;)V

    .line 654
    const/16 v3, 0xc

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 655
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setPeratio(Ljava/lang/String;)V

    .line 657
    const/16 v3, 0xd

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 658
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setYearhigh(Ljava/lang/String;)V

    .line 660
    const/16 v3, 0xe

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 661
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setYearlow(Ljava/lang/String;)V

    .line 663
    const/16 v3, 0xf

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 664
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setName(Ljava/lang/String;)V

    .line 666
    const/16 v3, 0x10

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 667
    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setSymbol(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_12e
    .catchall {:try_start_d .. :try_end_12e} :catchall_26a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d .. :try_end_12e} :catch_130
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_d .. :try_end_12e} :catch_253
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12e} :catch_25e

    goto/16 :goto_88

    .line 716
    :catch_130
    move-exception v1

    .line 732
    :try_start_131
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_134
    .catchall {:try_start_131 .. :try_end_134} :catchall_26f
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_134} :catch_24f

    move v1, v10

    .line 739
    :goto_135
    :try_start_135
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    move v0, v1

    .line 745
    :goto_139
    monitor-exit v11
    :try_end_13a
    .catchall {:try_start_135 .. :try_end_13a} :catchall_26f

    .line 746
    return v0

    .line 672
    :cond_13b
    :try_start_13b
    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 675
    :cond_13e
    const-string v1, "MY_STOCK_LIST_TABLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 676
    const-string v1, "MY_STOCK_MAIN_INFO_TABLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move v2, v9

    .line 678
    :goto_14d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_242

    .line 680
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    .line 682
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 683
    const-string v4, "NAME"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v4, "SYMBOL"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getSymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string v4, "EXCHANGE"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getExchange()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v4, "MAIN_DISPLAY"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getMainDisplay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v4, "MY_STOCK_LIST_TABLE"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 689
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 690
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    .line 692
    const-string v4, "NAME"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v4, "SYMBOL"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v4, "CURRENT_PRICE"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string v4, "CHANGE_PRICE"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChange()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string v4, "CHANGE_PERCENT"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChangePercent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const-string v4, "UP_DOWN"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getUpdown()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const-string v4, "UPDATE_DATE"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string v4, "LINK_URL"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLinkUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string v4, "HIGH"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v4, "LOW"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLow()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v4, "VOLUME"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getVolume()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v4, "PREV_CLOSE"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrevclose()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v4, "OPEN"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getOpen()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v4, "MARKET_CAP"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getMarketcap()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v4, "EPS_CURR_YEAR"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getEpscurryear()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v4, "PE_RATIO"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPeratio()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v4, "YEAR_HIGH"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearhigh()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v4, "YEAR_LOW"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearlow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string v1, "MY_STOCK_MAIN_INFO_TABLE"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 678
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_14d

    .line 714
    :cond_242
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_245
    .catchall {:try_start_13b .. :try_end_245} :catchall_26a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_13b .. :try_end_245} :catch_130
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_13b .. :try_end_245} :catch_253
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_245} :catch_25e

    .line 732
    :try_start_245
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_248
    .catchall {:try_start_245 .. :try_end_248} :catchall_26f
    .catch Ljava/lang/Exception; {:try_start_245 .. :try_end_248} :catch_24b

    move v1, v9

    .line 737
    goto/16 :goto_135

    .line 734
    :catch_24b
    move-exception v1

    move v1, v10

    .line 738
    goto/16 :goto_135

    .line 734
    :catch_24f
    move-exception v1

    move v1, v10

    .line 738
    goto/16 :goto_135

    .line 720
    :catch_253
    move-exception v1

    .line 732
    :try_start_254
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_257
    .catchall {:try_start_254 .. :try_end_257} :catchall_26f
    .catch Ljava/lang/Exception; {:try_start_254 .. :try_end_257} :catch_25a

    move v1, v10

    .line 737
    goto/16 :goto_135

    .line 734
    :catch_25a
    move-exception v1

    move v1, v10

    .line 738
    goto/16 :goto_135

    .line 724
    :catch_25e
    move-exception v1

    .line 726
    const/16 v1, -0x63

    .line 732
    :try_start_261
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_264
    .catchall {:try_start_261 .. :try_end_264} :catchall_26f
    .catch Ljava/lang/Exception; {:try_start_261 .. :try_end_264} :catch_266

    goto/16 :goto_135

    .line 734
    :catch_266
    move-exception v1

    move v1, v10

    .line 738
    goto/16 :goto_135

    .line 730
    :catchall_26a
    move-exception v1

    .line 732
    :try_start_26b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_26e
    .catchall {:try_start_26b .. :try_end_26e} :catchall_26f
    .catch Ljava/lang/Exception; {:try_start_26b .. :try_end_26e} :catch_276

    .line 737
    :goto_26e
    :try_start_26e
    throw v1

    .line 745
    :catchall_26f
    move-exception v0

    monitor-exit v11
    :try_end_271
    .catchall {:try_start_26e .. :try_end_271} :catchall_26f

    throw v0

    .line 743
    :cond_272
    :try_start_272
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I
    :try_end_274
    .catchall {:try_start_272 .. :try_end_274} :catchall_26f

    goto/16 :goto_139

    .line 734
    :catch_276
    move-exception v0

    goto :goto_26e
.end method

.method public updateChangeOrderIndices(Ljava/util/ArrayList;)I
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v2, -0x5a

    .line 2521
    .line 2522
    const-class v4, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v4

    .line 2524
    const/4 v0, 0x1

    :try_start_7
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_10f

    move-result-object v5

    .line 2525
    if-eqz v5, :cond_112

    .line 2529
    :try_start_d
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2530
    const-string v0, "MY_STOCK_INDICES_INFO_TABLE"

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move v3, v1

    .line 2531
    :goto_18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_df

    .line 2533
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    .line 2534
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2535
    const-string v7, "NAME"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    const-string v7, "SYMBOL"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2537
    const-string v7, "CURRENT"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrice()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2538
    const-string v7, "CHANGE_PRICE"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2539
    const-string v7, "CHANGE_PERCENT"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChangePercent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    const-string v7, "EXCHANGE"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getExchange()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2541
    const-string v7, "UP_DOWN"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getUpdown()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2542
    const-string v7, "UPDATE_DATE"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2543
    const-string v7, "LINK_URL"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getLinkUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    const-string v7, "HIGH"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getHigh()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    const-string v7, "LOW"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getLow()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2546
    const-string v7, "VOLUME"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getVolume()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2547
    const-string v7, "PREV_CLOSE"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrevclose()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2548
    const-string v7, "OPEN"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getOpen()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2549
    const-string v7, "MARKET_CAP"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getMarketcap()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2550
    const-string v7, "EPS_CURR_YEAR"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getEpscurryear()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    const-string v7, "PE_RATIO"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPeratio()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2552
    const-string v7, "YEAR_HIGH"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getYearhigh()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    const-string v7, "YEAR_LOW"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getYearlow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    const-string v0, "MY_STOCK_INDICES_INFO_TABLE"

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2531
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_18

    .line 2556
    :cond_df
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e2
    .catchall {:try_start_d .. :try_end_e2} :catchall_10a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d .. :try_end_e2} :catch_ee
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_d .. :try_end_e2} :catch_f7
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_e2} :catch_100

    .line 2574
    :try_start_e2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_10f
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e5} :catch_eb

    move v0, v1

    .line 2581
    :goto_e6
    :try_start_e6
    invoke-direct {p0, v5}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2587
    :goto_e9
    monitor-exit v4
    :try_end_ea
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_10f

    .line 2588
    return v0

    .line 2576
    :catch_eb
    move-exception v0

    move v0, v2

    .line 2580
    goto :goto_e6

    .line 2558
    :catch_ee
    move-exception v0

    .line 2574
    :try_start_ef
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_f2
    .catchall {:try_start_ef .. :try_end_f2} :catchall_10f
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f2} :catch_f4

    move v0, v2

    .line 2579
    goto :goto_e6

    .line 2576
    :catch_f4
    move-exception v0

    move v0, v2

    .line 2580
    goto :goto_e6

    .line 2562
    :catch_f7
    move-exception v0

    .line 2574
    :try_start_f8
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_fb
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_10f
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_fb} :catch_fd

    move v0, v2

    .line 2579
    goto :goto_e6

    .line 2576
    :catch_fd
    move-exception v0

    move v0, v2

    .line 2580
    goto :goto_e6

    .line 2566
    :catch_100
    move-exception v0

    .line 2568
    const/16 v0, -0x63

    .line 2574
    :try_start_103
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_106
    .catchall {:try_start_103 .. :try_end_106} :catchall_10f
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_106} :catch_107

    goto :goto_e6

    .line 2576
    :catch_107
    move-exception v0

    move v0, v2

    .line 2580
    goto :goto_e6

    .line 2572
    :catchall_10a
    move-exception v0

    .line 2574
    :try_start_10b
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_10e
    .catchall {:try_start_10b .. :try_end_10e} :catchall_10f
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_10e} :catch_115

    .line 2579
    :goto_10e
    :try_start_10e
    throw v0

    .line 2587
    :catchall_10f
    move-exception v0

    monitor-exit v4
    :try_end_111
    .catchall {:try_start_10e .. :try_end_111} :catchall_10f

    throw v0

    .line 2585
    :cond_112
    :try_start_112
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I
    :try_end_114
    .catchall {:try_start_112 .. :try_end_114} :catchall_10f

    goto :goto_e9

    .line 2576
    :catch_115
    move-exception v1

    goto :goto_10e
.end method

.method public updateCurrencyGraphData(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;)I
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v1, -0x5a

    .line 450
    .line 451
    if-eqz p3, :cond_b

    invoke-virtual {p3}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getUpdateDate()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    .line 517
    :cond_b
    :goto_b
    return v0

    .line 456
    :cond_c
    const-class v3, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v3

    .line 458
    const/4 v2, 0x1

    :try_start_10
    invoke-direct {p0, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_93

    move-result-object v4

    .line 459
    if-eqz v4, :cond_c2

    .line 463
    :try_start_16
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v2, v0

    .line 466
    :goto_1a
    invoke-virtual {p3}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getSize()I

    move-result v5

    if-ge v2, v5, :cond_87

    .line 468
    invoke-virtual {p3, v2}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->get(I)Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    move-result-object v5

    .line 469
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 470
    const-string v7, "SYMBOL"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v7, "RANGE"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v7, "DATA_HIGH"

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->GetHigh()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v7, "DATA_VOLUME"

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->GetVolume()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v7, "TIMESTAMP"

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v7, "DATA_INDEX"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 476
    const-string v7, "UPDATE_DATE"

    invoke-virtual {v6, v7, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v7, "DATA_CLOSE"

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->GetClose()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v7, "DATE"

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v5, "MY_STOCK_GRAPH_TABLE"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 466
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 481
    :cond_87
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8a
    .catchall {:try_start_16 .. :try_end_8a} :catchall_bd
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_16 .. :try_end_8a} :catch_99
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_16 .. :try_end_8a} :catch_a2
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_16 .. :try_end_8a} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_8a} :catch_b3

    .line 503
    :try_start_8a
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_93
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_96

    .line 510
    :goto_8d
    :try_start_8d
    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 516
    :goto_90
    monitor-exit v3

    goto/16 :goto_b

    :catchall_93
    move-exception v0

    monitor-exit v3
    :try_end_95
    .catchall {:try_start_8d .. :try_end_95} :catchall_93

    throw v0

    .line 505
    :catch_96
    move-exception v0

    move v0, v1

    .line 509
    goto :goto_8d

    .line 483
    :catch_99
    move-exception v0

    .line 503
    :try_start_9a
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_93
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_9f

    move v0, v1

    .line 508
    goto :goto_8d

    .line 505
    :catch_9f
    move-exception v0

    move v0, v1

    .line 509
    goto :goto_8d

    .line 487
    :catch_a2
    move-exception v0

    .line 503
    :try_start_a3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_93
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_a8

    move v0, v1

    .line 508
    goto :goto_8d

    .line 505
    :catch_a8
    move-exception v0

    move v0, v1

    .line 509
    goto :goto_8d

    .line 491
    :catch_ab
    move-exception v2

    .line 503
    :try_start_ac
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_93
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_af} :catch_b0

    goto :goto_8d

    .line 505
    :catch_b0
    move-exception v0

    move v0, v1

    .line 509
    goto :goto_8d

    .line 495
    :catch_b3
    move-exception v0

    .line 497
    const/16 v0, -0x63

    .line 503
    :try_start_b6
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_93
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b9} :catch_ba

    goto :goto_8d

    .line 505
    :catch_ba
    move-exception v0

    move v0, v1

    .line 509
    goto :goto_8d

    .line 501
    :catchall_bd
    move-exception v0

    .line 503
    :try_start_be
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_93
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c1} :catch_c5

    .line 508
    :goto_c1
    :try_start_c1
    throw v0

    .line 514
    :cond_c2
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_93

    goto :goto_90

    .line 505
    :catch_c5
    move-exception v1

    goto :goto_c1
.end method

.method public updateGraphData(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;)I
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v1, -0x5a

    .line 522
    .line 523
    if-eqz p3, :cond_b

    invoke-virtual {p3}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getUpdateDate()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    .line 589
    :cond_b
    :goto_b
    return v0

    .line 528
    :cond_c
    const-class v3, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v3

    .line 530
    const/4 v2, 0x1

    :try_start_10
    invoke-direct {p0, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_93

    move-result-object v4

    .line 531
    if-eqz v4, :cond_c2

    .line 535
    :try_start_16
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v2, v0

    .line 538
    :goto_1a
    invoke-virtual {p3}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getSize()I

    move-result v5

    if-ge v2, v5, :cond_87

    .line 540
    invoke-virtual {p3, v2}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->get(I)Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    move-result-object v5

    .line 541
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 542
    const-string v7, "SYMBOL"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v7, "RANGE"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v7, "DATA_HIGH"

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->GetHigh()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v7, "DATA_VOLUME"

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->GetVolume()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v7, "TIMESTAMP"

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v7, "DATA_INDEX"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 548
    const-string v7, "UPDATE_DATE"

    invoke-virtual {v6, v7, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v7, "DATA_CLOSE"

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->GetClose()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v7, "DATE"

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v5, "MY_STOCK_GRAPH_TABLE"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 538
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 553
    :cond_87
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8a
    .catchall {:try_start_16 .. :try_end_8a} :catchall_bd
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_16 .. :try_end_8a} :catch_99
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_16 .. :try_end_8a} :catch_a2
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_16 .. :try_end_8a} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_8a} :catch_b3

    .line 575
    :try_start_8a
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_93
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_96

    .line 582
    :goto_8d
    :try_start_8d
    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 588
    :goto_90
    monitor-exit v3

    goto/16 :goto_b

    :catchall_93
    move-exception v0

    monitor-exit v3
    :try_end_95
    .catchall {:try_start_8d .. :try_end_95} :catchall_93

    throw v0

    .line 577
    :catch_96
    move-exception v0

    move v0, v1

    .line 581
    goto :goto_8d

    .line 555
    :catch_99
    move-exception v0

    .line 575
    :try_start_9a
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_93
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_9f

    move v0, v1

    .line 580
    goto :goto_8d

    .line 577
    :catch_9f
    move-exception v0

    move v0, v1

    .line 581
    goto :goto_8d

    .line 559
    :catch_a2
    move-exception v0

    .line 575
    :try_start_a3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_93
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_a8

    move v0, v1

    .line 580
    goto :goto_8d

    .line 577
    :catch_a8
    move-exception v0

    move v0, v1

    .line 581
    goto :goto_8d

    .line 563
    :catch_ab
    move-exception v2

    .line 575
    :try_start_ac
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_93
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_af} :catch_b0

    goto :goto_8d

    .line 577
    :catch_b0
    move-exception v0

    move v0, v1

    .line 581
    goto :goto_8d

    .line 567
    :catch_b3
    move-exception v0

    .line 569
    const/16 v0, -0x63

    .line 575
    :try_start_b6
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_93
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b9} :catch_ba

    goto :goto_8d

    .line 577
    :catch_ba
    move-exception v0

    move v0, v1

    .line 581
    goto :goto_8d

    .line 573
    :catchall_bd
    move-exception v0

    .line 575
    :try_start_be
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_93
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c1} :catch_c5

    .line 580
    :goto_c1
    :try_start_c1
    throw v0

    .line 586
    :cond_c2
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_93

    goto :goto_90

    .line 577
    :catch_c5
    move-exception v1

    goto :goto_c1
.end method

.method public updateIndicesRow(Ljava/util/ArrayList;)I
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v2, -0x5a

    .line 751
    .line 752
    const-class v4, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v4

    .line 754
    const/4 v1, 0x1

    :try_start_7
    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 755
    if-eqz v5, :cond_106

    move v3, v0

    move v1, v0

    .line 757
    :goto_f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_101

    .line 759
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    .line 760
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 761
    const-string v7, "NAME"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const-string v7, "SYMBOL"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v7, "CURRENT "

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrice()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string v7, "CHANGE_PRICE"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v7, "CHANGE_PERCENT"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChangePercent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v7, "EXCHANGE"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getExchange()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const-string v7, "UP_DOWN"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getUpdown()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v7, "UPDATE_DATE"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string v7, "LINK_URL"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getLinkUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v7, "HIGH"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getHigh()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v7, "LOW"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getLow()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v7, "VOLUME"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getVolume()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string v7, "PREV_CLOSE"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrevclose()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v7, "OPEN"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getOpen()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v7, "MARKET_CAP"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getMarketcap()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v7, "EPS_CURR_YEAR"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getEpscurryear()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string v7, "PE_RATIO"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPeratio()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v7, "YEAR_HIGH"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getYearhigh()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const-string v7, "YEAR_LOW"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getYearlow()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cb
    .catchall {:try_start_7 .. :try_end_cb} :catchall_109

    .line 782
    :try_start_cb
    const-string v7, "MY_STOCK_INDICES_INFO_TABLE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SYMBOL=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\'"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v6, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_ee
    .catchall {:try_start_cb .. :try_end_ee} :catchall_109
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_cb .. :try_end_ee} :catch_f5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_cb .. :try_end_ee} :catch_f8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_cb .. :try_end_ee} :catch_fb

    move v0, v1

    .line 757
    :goto_ef
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto/16 :goto_f

    .line 784
    :catch_f5
    move-exception v0

    move v0, v2

    .line 795
    goto :goto_ef

    .line 788
    :catch_f8
    move-exception v0

    move v0, v2

    .line 795
    goto :goto_ef

    .line 792
    :catch_fb
    move-exception v0

    .line 794
    :try_start_fc
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    move v0, v1

    goto :goto_ef

    .line 797
    :cond_101
    invoke-direct {p0, v5}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 803
    :goto_104
    monitor-exit v4

    .line 804
    return v1

    .line 801
    :cond_106
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I

    goto :goto_104

    .line 803
    :catchall_109
    move-exception v0

    monitor-exit v4
    :try_end_10b
    .catchall {:try_start_fc .. :try_end_10b} :catchall_109

    throw v0
.end method

.method public updateListExchange(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .parameter
    .parameter

    .prologue
    const/16 v1, -0x5a

    .line 1880
    const/4 v0, 0x0

    .line 1881
    const-class v2, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v2

    .line 1883
    const/4 v3, 0x1

    :try_start_7
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1884
    if-eqz v3, :cond_41

    .line 1886
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1887
    const-string v5, "EXCHANGE"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_44

    .line 1891
    :try_start_17
    const-string v5, "MY_STOCK_LIST_TABLE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SYMBOL=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_17 .. :try_end_36} :catchall_44
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_17 .. :try_end_36} :catch_3b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_17 .. :try_end_36} :catch_3e

    .line 1901
    :goto_36
    :try_start_36
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1907
    :goto_39
    monitor-exit v2

    .line 1908
    return v0

    .line 1893
    :catch_3b
    move-exception v0

    move v0, v1

    .line 1900
    goto :goto_36

    .line 1897
    :catch_3e
    move-exception v0

    move v0, v1

    .line 1899
    goto :goto_36

    .line 1905
    :cond_41
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I

    goto :goto_39

    .line 1907
    :catchall_44
    move-exception v0

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_44

    throw v0
.end method

.method public updateStockCurrencyMainInfo(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)I
    .registers 10
    .parameter

    .prologue
    const/16 v1, -0x5a

    .line 1788
    const/4 v0, 0x0

    .line 1789
    const-class v2, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v2

    .line 1791
    const/4 v3, 0x1

    :try_start_7
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1792
    if-eqz v3, :cond_9a

    .line 1794
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1795
    const-string v5, "CURRENT_PRICE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    const-string v5, "CHANGE_PRICE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChange()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    const-string v5, "CHANGE_PERCENT"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChangePercent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    const-string v5, "UPDATE_DATE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    const-string v5, "HIGH"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    const-string v5, "LOW"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLow()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    const-string v5, "PREV_CLOSE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrevclose()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    const-string v5, "OPEN"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getOpen()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    const-string v5, "YEAR_HIGH"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearhigh()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    const-string v5, "YEAR_LOW"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearlow()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_7 .. :try_end_6c} :catchall_9d

    .line 1811
    :try_start_6c
    const-string v5, "MY_STOCK_CURRENCY_TABLE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SYMBOL=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_6c .. :try_end_8f} :catchall_9d
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_6c .. :try_end_8f} :catch_94
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6c .. :try_end_8f} :catch_97

    .line 1821
    :goto_8f
    :try_start_8f
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1827
    :goto_92
    monitor-exit v2

    .line 1828
    return v0

    .line 1813
    :catch_94
    move-exception v0

    move v0, v1

    .line 1820
    goto :goto_8f

    .line 1817
    :catch_97
    move-exception v0

    move v0, v1

    .line 1819
    goto :goto_8f

    .line 1825
    :cond_9a
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I

    goto :goto_92

    .line 1827
    :catchall_9d
    move-exception v0

    monitor-exit v2
    :try_end_9f
    .catchall {:try_start_8f .. :try_end_9f} :catchall_9d

    throw v0
.end method

.method public updateStockMainInfo(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)I
    .registers 10
    .parameter

    .prologue
    const/16 v1, -0x5a

    .line 1833
    const/4 v0, 0x0

    .line 1834
    const-class v2, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    monitor-enter v2

    .line 1836
    const/4 v3, 0x1

    :try_start_7
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1837
    if-eqz v3, :cond_d0

    .line 1839
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1840
    const-string v5, "CURRENT_PRICE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    const-string v5, "CHANGE_PRICE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChange()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    const-string v5, "CHANGE_PERCENT"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChangePercent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    const-string v5, "UP_DOWN"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getUpdown()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    const-string v5, "UPDATE_DATE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    const-string v5, "LINK_URL"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLinkUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    const-string v5, "HIGH"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    const-string v5, "LOW"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLow()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    const-string v5, "VOLUME"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getVolume()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    const-string v5, "PREV_CLOSE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrevclose()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    const-string v5, "OPEN"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getOpen()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    const-string v5, "MARKET_CAP"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getMarketcap()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    const-string v5, "EPS_CURR_YEAR"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getEpscurryear()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    const-string v5, "PE_RATIO"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPeratio()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    const-string v5, "YEAR_HIGH"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearhigh()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    const-string v5, "YEAR_LOW"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearlow()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_7 .. :try_end_a2} :catchall_d3

    .line 1858
    :try_start_a2
    const-string v5, "MY_STOCK_MAIN_INFO_TABLE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SYMBOL=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_a2 .. :try_end_c5} :catchall_d3
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_a2 .. :try_end_c5} :catch_ca
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a2 .. :try_end_c5} :catch_cd

    .line 1868
    :goto_c5
    :try_start_c5
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1874
    :goto_c8
    monitor-exit v2

    .line 1875
    return v0

    .line 1860
    :catch_ca
    move-exception v0

    move v0, v1

    .line 1867
    goto :goto_c5

    .line 1864
    :catch_cd
    move-exception v0

    move v0, v1

    .line 1866
    goto :goto_c5

    .line 1872
    :cond_d0
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->mLastError:I

    goto :goto_c8

    .line 1874
    :catchall_d3
    move-exception v0

    monitor-exit v2
    :try_end_d5
    .catchall {:try_start_c5 .. :try_end_d5} :catchall_d3

    throw v0
.end method
