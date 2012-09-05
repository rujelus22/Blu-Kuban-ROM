.class public Lcom/sec/android/widgetapp/stockclock/db/PublicContentProvider;
.super Landroid/content/ContentProvider;
.source "PublicContentProvider.java"


# static fields
.field private static final TABLES:[Ljava/lang/String;

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private stockdb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "MY_STOCK_LIST_TABLE"

    aput-object v1, v0, v3

    const-string v1, "MY_STOCK_MAIN_INFO_TABLE"

    aput-object v1, v0, v4

    const-string v1, "MY_STOCK_DETAIL_INFO_TABLE"

    aput-object v1, v0, v5

    const-string v1, "MY_STOCK_DETAIL_CURRENCY_INFO_TABLE"

    aput-object v1, v0, v6

    const-string v1, "MY_STOCK_INDICES_INFO_TABLE"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "MY_STOCK_GRAPH_TABLE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MY_STOCK_CURRENCY_GRAPH_TABLE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "MY_STOCK_CURRENCY_TABLE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/db/PublicContentProvider;->TABLES:[Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/db/PublicContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 39
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/db/PublicContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.widgetapp.stockclock"

    const-string v2, "list"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/db/PublicContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.widgetapp.stockclock"

    const-string v2, "maininfo"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/db/PublicContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.widgetapp.stockclock"

    const-string v2, "detailinfo"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/db/PublicContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.widgetapp.stockclock"

    const-string v2, "detailcurrency"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/db/PublicContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.widgetapp.stockclock"

    const-string v2, "indices"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/db/PublicContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.widgetapp.stockclock"

    const-string v2, "graph"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/db/PublicContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.widgetapp.stockclock"

    const-string v2, "currencygraph"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/db/PublicContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.widgetapp.stockclock"

    const-string v2, "currency"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 4

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/db/PublicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.stockclock.UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 17
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 77
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 79
    .local v0, sqlBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/db/PublicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 80
    .local v9, context:Landroid/content/Context;
    new-instance v10, Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;

    invoke-direct {v10, v9}, Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;-><init>(Landroid/content/Context;)V

    .line 81
    .local v10, openhelper:Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;
    invoke-virtual {v10}, Lcom/sec/android/widgetapp/stockclock/db/DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/db/PublicContentProvider;->stockdb:Landroid/database/sqlite/SQLiteDatabase;

    .line 83
    sget-object v1, Lcom/sec/android/widgetapp/stockclock/db/PublicContentProvider;->TABLES:[Ljava/lang/String;

    sget-object v2, Lcom/sec/android/widgetapp/stockclock/db/PublicContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/db/PublicContentProvider;->stockdb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 88
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/db/PublicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 89
    return-object v8
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method
