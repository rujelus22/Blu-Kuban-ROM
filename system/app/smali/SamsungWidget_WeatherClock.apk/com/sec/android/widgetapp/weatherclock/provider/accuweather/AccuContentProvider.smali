.class public Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuContentProvider;
.super Landroid/content/ContentProvider;
.source "AccuContentProvider.java"


# static fields
.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private weatherdb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 37
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 38
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.widgetapp.weatherclock"

    const-string v2, "list"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.widgetapp.weatherclock"

    const-string v2, "info"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
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
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 63
    const-string v0, ""

    const-string v2, "Prvdr Created"

    invoke-static {v0, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 66
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getPrefIDs(Landroid/content/Context;)[I

    move-result-object v3

    .line 67
    const/4 v0, 0x0

    .line 68
    array-length v3, v3

    if-nez v3, :cond_31

    .line 69
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    .line 72
    if-eqz v3, :cond_31

    array-length v3, v3

    if-lez v3, :cond_31

    move v0, v1

    .line 76
    :cond_31
    if-nez v0, :cond_3d

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.android.widgetapp.weatherclock.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    :cond_3d
    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 84
    const-string v2, ""

    const-string v3, "Prvdr Query requested"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuContentProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 87
    .local v10, context:Landroid/content/Context;
    new-instance v11, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    const/16 v2, 0x14

    invoke-direct {v11, v10, v2}, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;-><init>(Landroid/content/Context;I)V

    .line 88
    .local v11, openhelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;
    invoke-virtual {v11}, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuContentProvider;->weatherdb:Landroid/database/sqlite/SQLiteDatabase;

    .line 90
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuContentProvider;->weatherdb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_59

    .line 92
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 94
    .local v1, sqlBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_53

    .line 96
    const-string v2, "MY_WEATHER_DETAIL_INFO"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 102
    :goto_2f
    if-eqz p5, :cond_37

    const-string v2, ""

    move-object/from16 v0, p5

    if-ne v0, v2, :cond_39

    .line 103
    :cond_37
    const-string p5, "LOCATION"

    .line 105
    :cond_39
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuContentProvider;->weatherdb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 108
    .local v9, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 114
    .end local v1           #sqlBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v9           #c:Landroid/database/Cursor;
    :goto_52
    return-object v9

    .line 100
    .restart local v1       #sqlBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_53
    const-string v2, "MY_WEATHER_LIST"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_2f

    .line 113
    .end local v1           #sqlBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_59
    const-string v2, ""

    const-string v3, "content Prvdr get db error"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v9, 0x0

    goto :goto_52
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method
