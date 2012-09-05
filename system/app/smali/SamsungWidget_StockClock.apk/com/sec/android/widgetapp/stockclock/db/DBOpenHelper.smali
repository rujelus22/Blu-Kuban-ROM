.class public Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBOpenHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 83
    const-string v0, "StockClock"

    const/4 v1, 0x0

    const/16 v2, 0x15

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 84
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 88
    const-string v1, ""

    const-string v2, "db helper on create"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-eqz p1, :cond_51

    .line 91
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 95
    :try_start_c
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_17

    .line 96
    const-string v1, ""

    const-string v2, "DBHelper Create New Table"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_17
    const-string v1, "create table MY_STOCK_LIST_TABLE(NAME varchar(128) not null,SYMBOL varchar(128) not null UNIQUE,EXCHANGE varchar(128) not null,MAIN_DISPLAY char(1) not null);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    const-string v1, "create table MY_STOCK_MAIN_INFO_TABLE(SYMBOL varchar(128) not null UNIQUE,CURRENT_PRICE varchar(128) not null,CHANGE_PRICE varchar(128) not null,CHANGE_PERCENT varchar(128) not null,UP_DOWN varchat(10) not null,UPDATE_DATE varchar(128) not null,LINK_URL varchar(128),HIGH varchar(128),LOW varchar(128),VOLUME varchar(128),PREV_CLOSE varchar(128),OPEN varchar(128),MARKET_CAP varchar(128),EPS_CURR_YEAR varchar(128),PE_RATIO varchar(128),YEAR_HIGH varchar(128),YEAR_LOW varchar(128), NAME varchar(128));"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    const-string v1, "create table MY_STOCK_DETAIL_INFO_TABLE(NAME varchar(128) not null,SYMBOL varchar(128) not null UNIQUE,EXCHANGE varchar(128) not null);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 100
    const-string v1, "create table MY_STOCK_SETTINGS_TABLE(UPDATE_PERIOD varchar(128),AUTO_SCROLLING char(1), DUMMY char(1), FIRSTRUNNING char(1));"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    const-string v1, "create table MY_STOCK_GRAPH_TABLE(SYMBOL varchar(128) not null,RANGE varchar(5) not null,DATA_HIGH varchar(128),DATA_VOLUME varchar(128),UPDATE_DATE varchar(128),DATA_INDEX INTEGER,TIMESTAMP LONG,DATE varchar(128),DATA_CLOSE varchar(128));"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    const-string v1, "create table MY_STOCK_CURRENCY_TABLE(NAME varchar(128) not null,SYMBOL varchar(128) not null UNIQUE,EXCHANGE varchar(128) not null,CURRENT_PRICE varchar(128),CHANGE_PRICE varchar(128),CHANGE_PERCENT varchar(128),HIGH varchar(128),LOW varchar(128),PREV_CLOSE varchar(128),OPEN varchar(128),YEAR_HIGH varchar(128),YEAR_LOW varchar(128),UPDATE_DATE varchar(128));"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    const-string v1, "create table MY_STOCK_CURRENCY_GRAPH_TABLE(SYMBOL varchar(128) not null,RANGE varchar(5) not null,DATA_HIGH varchar(128),DATA_VOLUME varchar(128),DATA_INDEX INTEGER,TIMESTAMP LONG,DATA_CLOSE varchar(128));"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    const-string v1, "create table MY_STOCK_DETAIL_CURRENCY_INFO_TABLE(NAME varchar(128) not null,SYMBOL varchar(128) not null UNIQUE,EXCHANGE varchar(128) not null);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    const-string v1, "create table MY_STOCK_INDICES_INFO_TABLE(NAME varchar(128) not null, SYMBOL varchar(128) not null UNIQUE,EXCHANGE varchar(128) not null,CURRENT varchar(128),CHANGE_PRICE varchar(128),CHANGE_PERCENT varchar(128),UP_DOWN varchat(10),UPDATE_DATE varchar(128),LINK_URL varchar(128),HIGH varchar(128),LOW varchar(128),VOLUME varchar(128),PREV_CLOSE varchar(128),OPEN varchar(128),MARKET_CAP varchar(128),EPS_CURR_YEAR varchar(128),PE_RATIO varchar(128),YEAR_HIGH varchar(128),YEAR_LOW varchar(128));"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    const-string v1, "insert into MY_STOCK_SETTINGS_TABLE values (\'0\',\'O\',\'D\',\'O\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4c
    .catchall {:try_start_c .. :try_end_4c} :catchall_5c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_4c} :catch_52

    .line 115
    if-eqz p1, :cond_51

    .line 117
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 121
    :cond_51
    :goto_51
    return-void

    .line 109
    :catch_52
    move-exception v0

    .line 111
    .local v0, ex:Ljava/lang/Exception;
    :try_start_53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_5c

    .line 115
    if-eqz p1, :cond_51

    .line 117
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_51

    .line 115
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_5c
    move-exception v1

    if-eqz p1, :cond_62

    .line 117
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_62
    throw v1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 9
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 125
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on upgrade "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-eqz p1, :cond_65

    .line 128
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 130
    const/4 v0, 0x0

    .line 133
    .local v0, alter_value:Z
    :try_start_28
    const-string v2, "DROP TABLE IF EXISTS MY_STOCK_LIST_TABLE"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 134
    const-string v2, "DROP TABLE IF EXISTS MY_STOCK_MAIN_INFO_TABLE"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    const-string v2, "DROP TABLE IF EXISTS MY_STOCK_DETAIL_INFO_TABLE"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 136
    const-string v2, "DROP TABLE IF EXISTS MY_STOCK_SETTINGS_TABLE"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 137
    const-string v2, "DROP TABLE IF EXISTS MY_STOCK_GRAPH_TABLE"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    const-string v2, "DROP TABLE IF EXISTS MY_STOCK_CURRENCY_TABLE"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    const-string v2, "DROP TABLE IF EXISTS MY_STOCK_CURRENCY_TABLE"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    const-string v2, "DROP TABLE IF EXISTS MY_STOCK_CURRENCY_GRAPH_TABLE"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    const-string v2, "DROP TABLE IF EXISTS MY_STOCK_DETAIL_CURRENCY_INFO_TABLE"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 142
    const-string v2, "DROP TABLE IF EXISTS MY_STOCK_INDICES_INFO_TABLE"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5d
    .catchall {:try_start_28 .. :try_end_5d} :catchall_7b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_5d} :catch_6a

    .line 151
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 152
    if-eqz p1, :cond_65

    .line 154
    if-eqz v0, :cond_66

    .line 156
    const/4 v0, 0x0

    .line 165
    .end local v0           #alter_value:Z
    :cond_65
    :goto_65
    return-void

    .line 160
    .restart local v0       #alter_value:Z
    :cond_66
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_65

    .line 145
    :catch_6a
    move-exception v1

    .line 147
    .local v1, ex:Ljava/lang/Exception;
    :try_start_6b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_7b

    .line 151
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 152
    if-eqz p1, :cond_65

    .line 154
    if-eqz v0, :cond_77

    .line 156
    const/4 v0, 0x0

    goto :goto_65

    .line 160
    :cond_77
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_65

    .line 151
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_7b
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 152
    if-eqz p1, :cond_84

    .line 154
    if-eqz v0, :cond_85

    .line 156
    const/4 v0, 0x0

    .line 160
    :cond_84
    :goto_84
    throw v2

    :cond_85
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_84
.end method
