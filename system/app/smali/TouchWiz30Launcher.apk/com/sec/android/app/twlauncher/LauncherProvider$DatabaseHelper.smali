.class Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;

.field private mCustomer:Lcom/sec/android/app/twlauncher/LauncherCustomer;

.field private menuIndexfromCSC:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 248
    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->menuIndexfromCSC:I

    .line 249
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 250
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/16 v1, 0x400

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 251
    return-void
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1266
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1267
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1269
    :try_start_a
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    const/4 v5, 0x0

    invoke-virtual {p4, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 1271
    invoke-virtual {p5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1272
    const/high16 v4, 0x1020

    invoke-virtual {p5, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1274
    const-string v4, "intent"

    const/4 v6, 0x0

    invoke-virtual {p5, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    const-string v4, "title"

    invoke-virtual {v5, p4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    const-string v4, "itemType"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1277
    const-string v4, "spanX"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1278
    const-string v4, "spanY"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1279
    const-string v4, "favorites"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_57
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_57} :catch_58

    .line 1285
    :goto_57
    return v0

    .line 1280
    :catch_58
    move-exception v0

    .line 1281
    const-string v4, "Launcher.LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add favorite: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1282
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v0, v1

    .line 1283
    goto :goto_57
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z
    .registers 12
    .parameter "db"
    .parameter "values"
    .parameter "cn"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1373
    const/4 v0, 0x0

    .line 1374
    .local v0, allocatedAppWidgets:Z
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 1377
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :try_start_7
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 1379
    .local v1, appWidgetId:I
    const-string v4, "itemType"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1380
    const-string v4, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1381
    const-string v4, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1382
    const-string v4, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1383
    const-string v4, "favorites"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1385
    const/4 v0, 0x1

    .line 1387
    invoke-virtual {v2, v1, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_3c} :catch_3d

    .line 1392
    .end local v1           #appWidgetId:I
    :goto_3c
    return v0

    .line 1388
    :catch_3d
    move-exception v3

    .line 1389
    .local v3, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_3c
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z
    .registers 14
    .parameter "db"
    .parameter "values"
    .parameter "a"

    .prologue
    const/4 v0, 0x0

    .line 1230
    const/4 v7, 0x1

    invoke-virtual {p3, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1231
    .local v6, packageName:Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1233
    .local v3, className:Ljava/lang/String;
    if-eqz v6, :cond_e

    if-nez v3, :cond_f

    .line 1259
    :cond_e
    :goto_e
    return v0

    .line 1237
    :cond_f
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v6, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    .local v4, cn:Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 1240
    .local v0, allocatedAppWidgets:Z
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 1243
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :try_start_1b
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v7}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 1245
    .local v1, appWidgetId:I
    const-string v7, "itemType"

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1246
    const-string v7, "spanX"

    const/4 v8, 0x5

    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const-string v7, "spanY"

    const/4 v8, 0x6

    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const-string v7, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1249
    const-string v7, "multipleSize"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->getWidgetMultipleSize(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/MultipleSize;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MultipleSize;->toLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1250
    const-string v7, "favorites"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1251
    const/4 v0, 0x1

    .line 1253
    invoke-virtual {v2, v1, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_63} :catch_64

    goto :goto_e

    .line 1254
    .end local v1           #appWidgetId:I
    :catch_64
    move-exception v5

    .line 1255
    .local v5, ex:Ljava/lang/RuntimeException;
    const-string v7, "Launcher.LauncherProvider"

    const-string v8, "Problem allocating appWidgetId"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1256
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_e
.end method

.method private addCSCAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;[Ljava/lang/String;)Z
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1577
    aget-object v2, p3, v0

    .line 1578
    const/4 v3, 0x2

    aget-object v3, p3, v3

    .line 1580
    if-eqz v2, :cond_b

    if-nez v3, :cond_d

    :cond_b
    move v0, v1

    .line 1607
    :goto_c
    return v0

    .line 1584
    :cond_d
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 1590
    :try_start_18
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v3

    .line 1592
    const-string v5, "itemType"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1593
    const-string v5, "spanX"

    const/4 v6, 0x6

    aget-object v6, p3, v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    const-string v5, "spanY"

    const/4 v6, 0x7

    aget-object v6, p3, v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    const-string v5, "appWidgetId"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1596
    const-string v5, "multipleSize"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->getWidgetMultipleSize(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/MultipleSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/MultipleSize;->toLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1597
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_58
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_58} :catch_68

    .line 1601
    :try_start_58
    invoke-virtual {v2, v3, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_5b
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_c

    .line 1602
    :catch_5c
    move-exception v1

    .line 1603
    :goto_5d
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "(CSC)Problem allocating appWidgetId"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1604
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_c

    .line 1602
    :catch_68
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto :goto_5d
.end method

.method private addCSCFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1612
    :try_start_1
    const-string v1, "title"

    invoke-virtual {p2, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    const-string v1, "itemType"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1614
    const-string v1, "spanX"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1615
    const-string v1, "spanY"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1616
    const-string v1, "favorites"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_2a} :catch_2b

    .line 1622
    :goto_2a
    return v0

    .line 1617
    :catch_2b
    move-exception v0

    .line 1618
    const-string v1, "Launcher.LauncherProvider"

    const-string v2, "addCSCFolder exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1620
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method private addCSCMainApp(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/PackageManager;)Z
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1656
    .line 1658
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1659
    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x7f0a0005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/2addr v1, v2

    .line 1660
    div-int v2, p5, v1

    .line 1661
    rem-int v1, p5, v1

    .line 1664
    :try_start_1a
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p3, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    const/4 v4, 0x0

    invoke-virtual {p6, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 1666
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 1667
    const-string v4, "component_name"

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    const-string v3, "page"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1669
    const-string v2, "cell"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1670
    const-string v1, "default_sort"

    add-int/lit8 v2, p5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1671
    const-string v1, "menu_item"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_52
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_52} :catch_54

    .line 1677
    const/4 v0, 0x1

    :goto_53
    return v0

    .line 1672
    :catch_54
    move-exception v1

    .line 1673
    const-string v2, "Launcher.LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(CSC)Unable to add mainapp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53
.end method

.method private addCSCSamsungAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;[Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1485
    aget-object v4, p3, v2

    .line 1486
    aget-object v5, p3, v8

    .line 1487
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1491
    :try_start_c
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    const/16 v6, 0x80

    invoke-virtual {p4, v3, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 1494
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1496
    const-string v3, "intent"

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    const-string v0, "itemType"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1499
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    .line 1501
    if-nez v7, :cond_38

    .line 1572
    :goto_37
    return v1

    .line 1505
    :cond_38
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1506
    if-eqz v0, :cond_123

    .line 1507
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1508
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1509
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v6, v3, v0}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 1510
    if-nez v3, :cond_a8

    .line 1511
    const-string v2, "Launcher.LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load XML data from package "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " with key "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " while opening CSC Samsung AppWidget"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_80} :catch_81

    goto :goto_37

    .line 1566
    :catch_81
    move-exception v0

    .line 1567
    const-string v2, "Launcher.LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(CSC)Unable to add samsungappwidget: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1569
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_37

    .line 1518
    :cond_a8
    :try_start_a8
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_ab
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a8 .. :try_end_ab} :catch_119
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_11e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a8 .. :try_end_ab} :catch_81

    move-result v0

    if-eq v0, v8, :cond_b0

    if-ne v0, v2, :cond_a8

    .line 1525
    :cond_b0
    :goto_b0
    const/4 v0, 0x0

    :try_start_b1
    const-string v6, "width"

    const/4 v8, 0x0

    invoke-interface {v3, v0, v6, v8}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1526
    const/4 v6, 0x0

    const-string v8, "height"

    const/4 v9, 0x0

    invoke-interface {v3, v6, v8, v9}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 1527
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1528
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1545
    :goto_d0
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1547
    const v7, 0x7f0b0008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1548
    const v8, 0x7f0b0009

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1550
    rem-int v8, v3, v7

    if-eqz v8, :cond_186

    div-int/2addr v3, v7

    add-int/lit8 v3, v3, 0x1

    .line 1552
    :goto_eb
    rem-int v7, v0, v6

    if-eqz v7, :cond_189

    div-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x1

    .line 1555
    :goto_f2
    sget v6, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    if-le v3, v6, :cond_f8

    .line 1556
    sget v3, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    .line 1559
    :cond_f8
    sget v6, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    if-le v0, v6, :cond_fe

    .line 1560
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    .line 1563
    :cond_fe
    const-string v6, "spanX"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1564
    const-string v3, "spanY"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1565
    const-string v0, "favorites"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move v1, v2

    .line 1572
    goto/16 :goto_37

    .line 1520
    :catch_119
    move-exception v0

    .line 1521
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_b0

    .line 1522
    :catch_11e
    move-exception v0

    .line 1523
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b0

    .line 1530
    :cond_123
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "min_width"

    const-string v6, "string"

    invoke-virtual {v0, v3, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1532
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v6, "min_height"

    const-string v8, "string"

    invoke-virtual {v0, v6, v8, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1534
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1535
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v9, "window"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1537
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1539
    if-eqz v3, :cond_181

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget v3, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    float-to-int v3, v0

    .line 1541
    :goto_168
    if-eqz v6, :cond_183

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget v6, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v6

    float-to-int v0, v0

    goto/16 :goto_d0

    :cond_181
    move v3, v1

    .line 1539
    goto :goto_168

    :cond_183
    move v0, v1

    .line 1541
    goto/16 :goto_d0

    .line 1550
    :cond_186
    div-int/2addr v3, v7

    goto/16 :goto_eb

    .line 1552
    :cond_189
    div-int/2addr v0, v6
    :try_end_18a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b1 .. :try_end_18a} :catch_81

    goto/16 :goto_f2
.end method

.method private addCSCShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1629
    .line 1632
    :try_start_2
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p3, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    if-eqz p5, :cond_e

    .line 1634
    const-string v3, "container"

    invoke-virtual {p2, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    :cond_e
    const/4 v3, 0x0

    invoke-virtual {p6, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 1637
    invoke-virtual {p7, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1638
    const/high16 v2, 0x1020

    invoke-virtual {p7, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1640
    const-string v2, "intent"

    invoke-virtual {p7}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    const-string v2, "title"

    invoke-virtual {v3, p6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    const-string v2, "itemType"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1643
    const-string v2, "spanX"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1644
    const-string v2, "spanY"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1645
    const-string v2, "favorites"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_55
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_55} :catch_56

    .line 1651
    :goto_55
    return v0

    .line 1646
    :catch_56
    move-exception v0

    .line 1647
    const-string v0, "Launcher.LauncherProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(CSC)Unable to add favorite: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". NameNotFoundException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1649
    goto :goto_55
.end method

.method private addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .registers 11
    .parameter "db"
    .parameter "values"

    .prologue
    const/16 v6, 0x3e8

    .line 1398
    const/4 v5, 0x1

    new-array v2, v5, [I

    const/4 v5, 0x0

    aput v6, v2, v5

    .line 1402
    .local v2, bindSources:[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1403
    .local v3, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.alarmclock"

    const-string v7, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1406
    const/4 v0, 0x0

    .line 1410
    .local v0, allocatedAppWidgets:Z
    :try_start_1a
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 1412
    .local v1, appWidgetId:I
    const-string v5, "itemType"

    const/16 v6, 0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1413
    const-string v5, "spanX"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1414
    const-string v5, "spanY"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1415
    const-string v5, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1416
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_4e} :catch_55

    .line 1418
    const/4 v0, 0x1

    .line 1425
    .end local v1           #appWidgetId:I
    :goto_4f
    if-eqz v0, :cond_54

    .line 1426
    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->launchAppWidgetBinder([ILjava/util/ArrayList;)V

    .line 1429
    :cond_54
    return v0

    .line 1419
    :catch_55
    move-exception v4

    .line 1420
    .local v4, ex:Ljava/lang/RuntimeException;
    const-string v5, "Launcher.LauncherProvider"

    const-string v6, "Problem allocating appWidgetId"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1421
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_4f
.end method

.method private addFolderApp(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;J)Z
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1072
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1073
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1074
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1075
    const v5, 0x7f0a0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const v6, 0x7f0a0005

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    mul-int/2addr v4, v5

    .line 1082
    :try_start_1f
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    const/4 v5, 0x0

    invoke-virtual {p4, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 1084
    const-string v6, "component_name"

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    invoke-virtual {v5, p4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1089
    if-eqz v4, :cond_41

    .line 1090
    const-string v5, "title"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    :cond_41
    const-string v4, "parent_id"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1093
    const-string v4, "menu_item"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_50} :catch_51

    .line 1100
    :goto_50
    return v0

    .line 1094
    :catch_51
    move-exception v0

    .line 1095
    const-string v4, "Launcher.LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add folderapp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1097
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v0, v1

    .line 1098
    goto :goto_50
.end method

.method private addMainApp(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;I)Z
    .registers 17
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"
    .parameter "index"

    .prologue
    .line 944
    const/4 v8, 0x1

    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 945
    .local v5, packageName:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 947
    .local v1, className:Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 948
    .local v7, r:Landroid/content/res/Resources;
    const v8, 0x7f0a0004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const v9, 0x7f0a0005

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    mul-int v4, v8, v9

    .line 949
    .local v4, itemsOnPage:I
    div-int v6, p5, v4

    .line 950
    .local v6, page:I
    rem-int v0, p5, v4

    .line 953
    .local v0, cell:I
    :try_start_24
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    .local v2, cn:Landroid/content/ComponentName;
    const/4 v8, 0x0

    invoke-virtual {p4, v2, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 955
    const-string v8, "component_name"

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const-string v8, "page"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 957
    const-string v8, "cell"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 958
    const-string v8, "default_sort"

    add-int/lit8 v9, p5, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 959
    const-string v8, "menu_item"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_59
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_59} :catch_5b

    .line 965
    const/4 v8, 0x1

    .end local v2           #cn:Landroid/content/ComponentName;
    :goto_5a
    return v8

    .line 960
    :catch_5b
    move-exception v3

    .line 961
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "Launcher.LauncherProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to add mainapp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". NameNotFoundException"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const/4 v8, 0x0

    goto :goto_5a
.end method

.method private addMenuFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;I)Z
    .registers 14
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "index"

    .prologue
    const/4 v6, 0x0

    .line 972
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 973
    .local v4, r:Landroid/content/res/Resources;
    const v7, 0x7f0a0004

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const v8, 0x7f0a0005

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    mul-int v2, v7, v8

    .line 974
    .local v2, itemsOnPage:I
    div-int v3, p4, v2

    .line 975
    .local v3, page:I
    rem-int v0, p4, v2

    .line 977
    .local v0, cell:I
    const/4 v7, 0x2

    invoke-virtual {p3, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 979
    .local v5, titleResId:I
    if-nez v5, :cond_2a

    .line 980
    const-string v7, "Launcher.LauncherModel"

    const-string v8, "menufolder is missing title resource ID"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :goto_29
    return v6

    .line 985
    :cond_2a
    :try_start_2a
    const-string v7, "title"

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const-string v7, "page"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 987
    const-string v7, "cell"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 988
    const-string v7, "default_sort"

    add-int/lit8 v8, p4, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 989
    const-string v7, "menu_item"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_56} :catch_58

    .line 995
    const/4 v6, 0x1

    goto :goto_29

    .line 990
    :catch_58
    move-exception v1

    .line 991
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v7, "Launcher.LauncherProvider"

    const-string v8, "Problem addMenuFolder"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 992
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_29
.end method

.method private addMenuFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;I)Z
    .registers 28
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"
    .parameter "index"

    .prologue
    .line 1004
    const/16 v17, 0x0

    .line 1005
    .local v17, isAdded:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 1010
    .local v20, r:Landroid/content/res/Resources;
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    .line 1012
    .local v21, titleResId:I
    if-nez v21, :cond_1e

    .line 1013
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "menufolder is missing title resource ID"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v17

    .line 1065
    .end local v17           #isAdded:Z
    .local v18, isAdded:I
    :goto_1d
    return v18

    .line 1018
    .end local v18           #isAdded:I
    .restart local v17       #isAdded:Z
    :cond_1e
    :try_start_1e
    const-string v2, "title"

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_29} :catch_dd

    .line 1022
    const-wide/16 v15, -0x1

    .line 1025
    .local v15, id:J
    const/4 v12, 0x0

    .line 1027
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_2c
    const-string v3, "menu_item"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title=\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5c
    .catchall {:try_start_2c .. :try_end_5c} :catchall_12c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_5c} :catch_b0
    .catch Ljava/lang/IllegalStateException; {:try_start_2c .. :try_end_5c} :catch_fe

    move-result-object v12

    .line 1036
    if-eqz v12, :cond_147

    .line 1037
    :try_start_5f
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_14c

    .line 1038
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1039
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1041
    .end local v15           #id:J
    .local v7, id:J
    :goto_6d
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1045
    :goto_70
    const-wide/16 v2, -0x1

    cmp-long v2, v7, v2

    if-nez v2, :cond_89

    .line 1046
    const-string v2, "menu_item"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 1047
    const-wide/16 v2, -0x1

    cmp-long v2, v7, v2

    if-eqz v2, :cond_89

    .line 1048
    const/16 v17, 0x1

    .line 1051
    :cond_89
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->clear()V

    .line 1053
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1054
    .local v19, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1057
    .local v11, className:Ljava/lang/String;
    if-eqz v19, :cond_ac

    if-eqz v11, :cond_ac

    .line 1058
    const/4 v10, 0x0

    .local v10, added:Z
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 1059
    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addFolderApp(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;J)Z
    :try_end_ac
    .catch Ljava/lang/RuntimeException; {:try_start_5f .. :try_end_ac} :catch_dd

    .end local v7           #id:J
    .end local v10           #added:Z
    .end local v11           #className:Ljava/lang/String;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v19           #packageName:Ljava/lang/String;
    :cond_ac
    :goto_ac
    move/from16 v18, v17

    .line 1065
    .restart local v18       #isAdded:I
    goto/16 :goto_1d

    .line 1031
    .end local v18           #isAdded:I
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v15       #id:J
    :catch_b0
    move-exception v13

    .line 1032
    .local v13, e:Landroid/database/sqlite/SQLiteException;
    :try_start_b1
    const-string v2, "Launcher.LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addMenuFolder() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catchall {:try_start_b1 .. :try_end_c9} :catchall_12c

    .line 1036
    if-eqz v12, :cond_147

    .line 1037
    :try_start_cb
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_14a

    .line 1038
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1039
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1041
    .end local v15           #id:J
    .restart local v7       #id:J
    :goto_d9
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_dc
    .catch Ljava/lang/RuntimeException; {:try_start_cb .. :try_end_dc} :catch_dd

    goto :goto_70

    .line 1061
    .end local v7           #id:J
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v13           #e:Landroid/database/sqlite/SQLiteException;
    :catch_dd
    move-exception v14

    .line 1062
    .local v14, ex:Ljava/lang/RuntimeException;
    const-string v2, "Launcher.LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to add MenuFolder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1063
    invoke-virtual {v14}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_ac

    .line 1033
    .end local v14           #ex:Ljava/lang/RuntimeException;
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v15       #id:J
    :catch_fe
    move-exception v13

    .line 1034
    .local v13, e:Ljava/lang/IllegalStateException;
    :try_start_ff
    const-string v2, "Launcher.LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addMenuFolder() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_117
    .catchall {:try_start_ff .. :try_end_117} :catchall_12c

    .line 1036
    if-eqz v12, :cond_147

    .line 1037
    :try_start_119
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_145

    .line 1038
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1039
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1041
    .end local v15           #id:J
    .restart local v7       #id:J
    :goto_127
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_70

    .line 1036
    .end local v7           #id:J
    .end local v13           #e:Ljava/lang/IllegalStateException;
    .restart local v15       #id:J
    :catchall_12c
    move-exception v2

    if-eqz v12, :cond_143

    .line 1037
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_141

    .line 1038
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1039
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1041
    .end local v15           #id:J
    .restart local v7       #id:J
    :goto_13d
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :goto_140
    throw v2
    :try_end_141
    .catch Ljava/lang/RuntimeException; {:try_start_119 .. :try_end_141} :catch_dd

    .end local v7           #id:J
    .restart local v15       #id:J
    :cond_141
    move-wide v7, v15

    .end local v15           #id:J
    .restart local v7       #id:J
    goto :goto_13d

    .end local v7           #id:J
    .restart local v15       #id:J
    :cond_143
    move-wide v7, v15

    .end local v15           #id:J
    .restart local v7       #id:J
    goto :goto_140

    .end local v7           #id:J
    .restart local v13       #e:Ljava/lang/IllegalStateException;
    .restart local v15       #id:J
    :cond_145
    move-wide v7, v15

    .end local v15           #id:J
    .restart local v7       #id:J
    goto :goto_127

    .end local v7           #id:J
    .end local v13           #e:Ljava/lang/IllegalStateException;
    .restart local v15       #id:J
    :cond_147
    move-wide v7, v15

    .end local v15           #id:J
    .restart local v7       #id:J
    goto/16 :goto_70

    .end local v7           #id:J
    .local v13, e:Landroid/database/sqlite/SQLiteException;
    .restart local v15       #id:J
    :cond_14a
    move-wide v7, v15

    .end local v15           #id:J
    .restart local v7       #id:J
    goto :goto_d9

    .end local v7           #id:J
    .end local v13           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v15       #id:J
    :cond_14c
    move-wide v7, v15

    .end local v15           #id:J
    .restart local v7       #id:J
    goto/16 :goto_6d
.end method

.method private addSamsungAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1137
    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1138
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1139
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1143
    :try_start_f
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    const/16 v6, 0x80

    invoke-virtual {p4, v3, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 1146
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1148
    const-string v3, "intent"

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const-string v0, "itemType"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1151
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    .line 1153
    if-nez v7, :cond_3b

    .line 1226
    :goto_3a
    return v1

    .line 1157
    :cond_3b
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1158
    if-eqz v0, :cond_135

    .line 1159
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1160
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1161
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v6, v3, v0}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 1162
    if-nez v3, :cond_ab

    .line 1163
    const-string v2, "Launcher.LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load XML data from package "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " with key "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " while opening Samsung AppWidget"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_83} :catch_84

    goto :goto_3a

    .line 1220
    :catch_84
    move-exception v0

    .line 1221
    const-string v2, "Launcher.LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add samsungappwidget: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1223
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3a

    .line 1170
    :cond_ab
    :try_start_ab
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_ae
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ab .. :try_end_ae} :catch_12b
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_130
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ab .. :try_end_ae} :catch_84

    move-result v0

    const/4 v6, 0x2

    if-eq v0, v6, :cond_b4

    if-ne v0, v2, :cond_ab

    .line 1177
    :cond_b4
    :goto_b4
    const/4 v0, 0x0

    :try_start_b5
    const-string v6, "width"

    const/4 v8, 0x0

    invoke-interface {v3, v0, v6, v8}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1178
    const/4 v6, 0x0

    const-string v8, "height"

    const/4 v9, 0x0

    invoke-interface {v3, v6, v8, v9}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 1179
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1180
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1197
    :goto_d4
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1199
    const v7, 0x7f0b0008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1200
    const v8, 0x7f0b0009

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1202
    rem-int v8, v3, v7

    if-eqz v8, :cond_198

    div-int/2addr v3, v7

    add-int/lit8 v3, v3, 0x1

    .line 1204
    :goto_ef
    rem-int v7, v0, v6

    if-eqz v7, :cond_19b

    div-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x1

    .line 1207
    :goto_f6
    sget v6, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    if-le v3, v6, :cond_fc

    .line 1208
    sget v3, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    .line 1211
    :cond_fc
    sget v6, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    if-le v0, v6, :cond_102

    .line 1212
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    .line 1215
    :cond_102
    const-string v6, "spanX"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1216
    const-string v3, "spanY"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1217
    const-string v0, "appWidgetId"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1219
    const-string v0, "favorites"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move v1, v2

    .line 1226
    goto/16 :goto_3a

    .line 1172
    :catch_12b
    move-exception v0

    .line 1173
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_b4

    .line 1174
    :catch_130
    move-exception v0

    .line 1175
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b4

    .line 1182
    :cond_135
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "min_width"

    const-string v6, "string"

    invoke-virtual {v0, v3, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1184
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v6, "min_height"

    const-string v8, "string"

    invoke-virtual {v0, v6, v8, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1186
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1187
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v9, "window"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1189
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1191
    if-eqz v3, :cond_193

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget v3, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    float-to-int v3, v0

    .line 1193
    :goto_17a
    if-eqz v6, :cond_195

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget v6, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v6

    float-to-int v0, v0

    goto/16 :goto_d4

    :cond_193
    move v3, v1

    .line 1191
    goto :goto_17a

    :cond_195
    move v0, v1

    .line 1193
    goto/16 :goto_d4

    .line 1202
    :cond_198
    div-int/2addr v3, v7

    goto/16 :goto_ef

    .line 1204
    :cond_19b
    div-int/2addr v0, v6
    :try_end_19c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b5 .. :try_end_19c} :catch_84

    goto/16 :goto_f6
.end method

.method private addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .registers 9
    .parameter "db"
    .parameter "values"

    .prologue
    .line 1335
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->getSearchWidgetProvider()Landroid/content/ComponentName;

    move-result-object v3

    .line 1336
    .local v3, cn:Landroid/content/ComponentName;
    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method private addShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1289
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1291
    const/4 v2, 0x7

    invoke-virtual {p3, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 1292
    const/16 v2, 0x8

    invoke-virtual {p3, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 1297
    const/16 v2, 0x9

    :try_start_16
    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_19
    .catch Ljava/net/URISyntaxException; {:try_start_16 .. :try_end_19} :catch_2c

    move-result-object v2

    .line 1298
    const/4 v7, 0x0

    :try_start_1b
    invoke-static {v2, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1e
    .catch Ljava/net/URISyntaxException; {:try_start_1b .. :try_end_1e} :catch_a6

    move-result-object v2

    .line 1305
    if-eqz v5, :cond_23

    if-nez v6, :cond_4b

    .line 1306
    :cond_23
    const-string v0, "Launcher.LauncherModel"

    const-string v2, "Shortcut is missing title or icon resource ID"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1322
    :goto_2b
    return v0

    .line 1299
    :catch_2c
    move-exception v0

    move-object v2, v3

    .line 1300
    :goto_2e
    const-string v3, "Launcher.LauncherModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shortcut has malformed uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    move v0, v1

    .line 1302
    goto :goto_2b

    .line 1310
    :cond_4b
    const/high16 v7, 0x1000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1311
    const-string v7, "intent"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    const-string v2, "title"

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    const-string v2, "itemType"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1314
    const-string v2, "spanX"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1315
    const-string v2, "spanY"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1316
    const-string v2, "iconType"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1317
    const-string v1, "iconPackage"

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    const-string v1, "iconResource"

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    const-string v1, "favorites"

    invoke-virtual {p1, v1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_2b

    .line 1299
    :catch_a6
    move-exception v0

    goto :goto_2e
.end method

.method private addTopApp(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;I)Z
    .registers 14
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 821
    invoke-virtual {p3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 822
    .local v3, packageName:Ljava/lang/String;
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, className:Ljava/lang/String;
    :try_start_a
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    .local v1, cn:Landroid/content/ComponentName;
    const/4 v6, 0x0

    invoke-virtual {p4, v1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 826
    const-string v6, "component_name"

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const-string v6, "cell"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 828
    const-string v6, "default_sort"

    add-int/lit8 v7, p5, -0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 829
    const-string v6, "menu_item"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_36} :catch_37

    .line 835
    .end local v1           #cn:Landroid/content/ComponentName;
    :goto_36
    return v4

    .line 830
    :catch_37
    move-exception v2

    .line 831
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Launcher.LauncherProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add topapp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". NameNotFoundException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 833
    goto :goto_36
.end method

.method private addWorkspaceFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1107
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1108
    const/16 v3, 0x8

    invoke-virtual {p3, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 1110
    if-nez v3, :cond_18

    .line 1111
    const-string v1, "Launcher.LauncherModel"

    const-string v2, "addWorkspaceFolder is missing title resource ID"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :goto_17
    return v0

    .line 1116
    :cond_18
    :try_start_18
    const-string v4, "title"

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    const-string v2, "itemType"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1118
    const-string v2, "spanX"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1119
    const-string v2, "spanY"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1120
    const-string v2, "appWidgetId"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1121
    const-string v2, "multipleSize"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1122
    const-string v2, "iconType"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1123
    const-string v2, "favorites"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_63} :catch_65

    move v0, v1

    .line 1129
    goto :goto_17

    .line 1124
    :catch_65
    move-exception v1

    .line 1125
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Problem addWorkspaceFolder"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1126
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_17
.end method

.method private convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 12
    .parameter "db"

    .prologue
    const/4 v9, 0x0

    .line 336
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "converting database from an older format, but not onUpgrade"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v6, 0x0

    .line 339
    .local v6, converted:Z
    const-string v2, "content://settings/old_favorites?notify=true"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 341
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 342
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 345
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1a
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_42

    move-result-object v7

    .line 352
    :goto_1e
    if-eqz v7, :cond_35

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_35

    .line 354
    :try_start_26
    invoke-direct {p0, p1, v7}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_49

    move-result v2

    if-lez v2, :cond_47

    const/4 v6, 0x1

    .line 356
    :goto_2d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 359
    if-eqz v6, :cond_35

    .line 360
    invoke-virtual {v0, v1, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 364
    :cond_35
    if-eqz v6, :cond_41

    .line 367
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "converted and now triggering widget upgrade"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 371
    :cond_41
    return v6

    .line 346
    :catch_42
    move-exception v8

    .line 347
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e

    .line 354
    .end local v8           #e:Ljava/lang/Exception;
    :cond_47
    const/4 v6, 0x0

    goto :goto_2d

    .line 356
    :catchall_49
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 23
    .parameter "db"

    .prologue
    .line 527
    const/4 v3, 0x2

    new-array v13, v3, [I

    fill-array-data v13, :array_10e

    .line 531
    .local v13, bindSources:[I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v14, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.alarmclock"

    const-string v5, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.camera"

    const-string v5, "com.android.camera.PhotoAppWidgetProvider"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    const-string v3, "itemType"

    invoke-static {v3, v13}, Lcom/sec/android/app/twlauncher/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v6

    .line 539
    .local v6, selectWhere:Ljava/lang/String;
    const/4 v15, 0x0

    .line 540
    .local v15, c:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 542
    .local v11, allocatedAppWidgets:Z
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 545
    :try_start_2e
    const-string v4, "favorites"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 549
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 550
    .local v20, values:Landroid/content/ContentValues;
    :goto_47
    if-eqz v15, :cond_f8

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 551
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_53
    .catchall {:try_start_2e .. :try_end_53} :catchall_104
    .catch Landroid/database/SQLException; {:try_start_2e .. :try_end_53} :catch_db

    move-result-wide v17

    .line 555
    .local v17, favoriteId:J
    :try_start_54
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v12

    .line 558
    .local v12, appWidgetId:I
    const-string v3, "Launcher.LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allocated appWidgetId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for favoriteId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v17

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->clear()V

    .line 562
    const-string v3, "appWidgetId"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 566
    const-string v3, "spanX"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 567
    const-string v3, "spanY"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 569
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 571
    .local v19, updateWhere:Ljava/lang/String;
    const-string v3, "favorites"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c9
    .catchall {:try_start_54 .. :try_end_c9} :catchall_104
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_c9} :catch_cc
    .catch Landroid/database/SQLException; {:try_start_54 .. :try_end_c9} :catch_db

    .line 573
    const/4 v11, 0x1

    goto/16 :goto_47

    .line 574
    .end local v12           #appWidgetId:I
    .end local v19           #updateWhere:Ljava/lang/String;
    :catch_cc
    move-exception v16

    .line 575
    .local v16, ex:Ljava/lang/RuntimeException;
    :try_start_cd
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Problem allocating appWidgetId"

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    invoke-virtual/range {v16 .. v16}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_d9
    .catchall {:try_start_cd .. :try_end_d9} :catchall_104
    .catch Landroid/database/SQLException; {:try_start_cd .. :try_end_d9} :catch_db

    goto/16 :goto_47

    .line 581
    .end local v16           #ex:Ljava/lang/RuntimeException;
    .end local v17           #favoriteId:J
    .end local v20           #values:Landroid/content/ContentValues;
    :catch_db
    move-exception v16

    .line 582
    .local v16, ex:Landroid/database/SQLException;
    :try_start_dc
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Problem while allocating appWidgetIds for existing widgets"

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    invoke-virtual/range {v16 .. v16}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_e8
    .catchall {:try_start_dc .. :try_end_e8} :catchall_104

    .line 585
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 586
    if-eqz v15, :cond_f0

    .line 587
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 592
    .end local v16           #ex:Landroid/database/SQLException;
    :cond_f0
    :goto_f0
    if-eqz v11, :cond_f7

    .line 593
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->launchAppWidgetBinder([ILjava/util/ArrayList;)V

    .line 595
    :cond_f7
    return-void

    .line 580
    .restart local v20       #values:Landroid/content/ContentValues;
    :cond_f8
    :try_start_f8
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_fb
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_104
    .catch Landroid/database/SQLException; {:try_start_f8 .. :try_end_fb} :catch_db

    .line 585
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 586
    if-eqz v15, :cond_f0

    .line 587
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_f0

    .line 585
    .end local v20           #values:Landroid/content/ContentValues;
    :catchall_104
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 586
    if-eqz v15, :cond_10d

    .line 587
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_10d
    throw v3

    .line 527
    :array_10e
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0xeat 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .registers 33
    .parameter "db"
    .parameter "c"

    .prologue
    .line 375
    const-string v26, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 376
    .local v15, idIndex:I
    const-string v26, "intent"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 377
    .local v16, intentIndex:I
    const-string v26, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 378
    .local v22, titleIndex:I
    const-string v26, "iconType"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 379
    .local v14, iconTypeIndex:I
    const-string v26, "icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 380
    .local v11, iconIndex:I
    const-string v26, "iconPackage"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 382
    .local v12, iconPackageIndex:I
    const-string v26, "iconResource"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 384
    .local v13, iconResourceIndex:I
    const-string v26, "container"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 386
    .local v7, containerIndex:I
    const-string v26, "itemType"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 387
    .local v17, itemTypeIndex:I
    const-string v26, "screen"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 388
    .local v21, screenIndex:I
    const-string v26, "cellX"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 389
    .local v5, cellXIndex:I
    const-string v26, "cellY"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 390
    .local v6, cellYIndex:I
    const-string v26, "uri"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 391
    .local v24, uriIndex:I
    const-string v26, "displayMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 393
    .local v8, displayModeIndex:I
    const-string v26, "appWidgetId"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 395
    .local v4, appWidgetIdIndex:I
    const-string v26, "multipleSize"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 398
    .local v18, longMsIndex:I
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v20, v0

    .line 399
    .local v20, rows:[Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 400
    .local v9, i:I
    :goto_ab
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v26

    if-eqz v26, :cond_1a5

    .line 401
    new-instance v25, Landroid/content/ContentValues;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v26

    invoke-direct/range {v25 .. v26}, Landroid/content/ContentValues;-><init>(I)V

    .line 402
    .local v25, values:Landroid/content/ContentValues;
    const-string v26, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 403
    const-string v26, "intent"

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v26, "title"

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v26, "iconType"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 406
    const-string v26, "icon"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 407
    const-string v26, "iconPackage"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v26, "iconResource"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v26, "container"

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 410
    const-string v26, "itemType"

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 411
    const-string v26, "appWidgetId"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 412
    const-string v26, "screen"

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 413
    const-string v26, "cellX"

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    const-string v26, "cellY"

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    const-string v26, "uri"

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v26, "displayMode"

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    const-string v26, "multipleSize"

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 418
    add-int/lit8 v10, v9, 0x1

    .end local v9           #i:I
    .local v10, i:I
    aput-object v25, v20, v9

    move v9, v10

    .line 419
    .end local v10           #i:I
    .restart local v9       #i:I
    goto/16 :goto_ab

    .line 421
    .end local v25           #values:Landroid/content/ContentValues;
    :cond_1a5
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 422
    const/16 v23, 0x0

    .line 424
    .local v23, total:I
    :try_start_1aa
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v19, v0

    .line 425
    .local v19, numValues:I
    const/4 v9, 0x0

    :goto_1b0
    move/from16 v0, v19

    if-ge v9, v0, :cond_1d7

    .line 426
    const-string v26, "favorites"

    const/16 v27, 0x0

    aget-object v28, v20, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1c5
    .catchall {:try_start_1aa .. :try_end_1c5} :catchall_1de

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-gez v26, :cond_1d2

    .line 427
    const/16 v23, 0x0

    .line 434
    .end local v23           #total:I
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 437
    :goto_1d1
    return v23

    .line 429
    .restart local v23       #total:I
    :cond_1d2
    add-int/lit8 v23, v23, 0x1

    .line 425
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b0

    .line 432
    :cond_1d7
    :try_start_1d7
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1da
    .catchall {:try_start_1d7 .. :try_end_1da} :catchall_1de

    .line 434
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1d1

    .end local v19           #numValues:I
    :catchall_1de
    move-exception v26

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v26
.end method

.method private getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 9
    .parameter "packageName"

    .prologue
    const/4 v6, 0x0

    .line 1357
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1358
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    .line 1359
    .local v4, providers:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-nez v4, :cond_f

    move-object v2, v6

    .line 1368
    :cond_e
    :goto_e
    return-object v2

    .line 1361
    :cond_f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1362
    .local v3, providerCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v3, :cond_2d

    .line 1363
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1364
    .local v2, provider:Landroid/content/ComponentName;
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1362
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .end local v2           #provider:Landroid/content/ComponentName;
    :cond_2d
    move-object v2, v6

    .line 1368
    goto :goto_e
.end method

.method private getSearchWidgetProvider()Landroid/content/ComponentName;
    .registers 5

    .prologue
    .line 1343
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 1345
    .local v1, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v1}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1346
    .local v0, searchComponent:Landroid/content/ComponentName;
    if-nez v0, :cond_12

    .line 1347
    const/4 v2, 0x0

    .line 1348
    :goto_11
    return-object v2

    :cond_12
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_11
.end method

.method private launchAppWidgetBinder([ILjava/util/ArrayList;)V
    .registers 8
    .parameter "bindSources"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 604
    .local p2, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 605
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.LauncherAppWidgetBinder"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 607
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 609
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 610
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "com.sec.android.app.twlauncher.settings.bindsources"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 611
    const-string v2, "com.sec.android.app.twlauncher.settings.bindtargets"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 612
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 614
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 615
    return-void
.end method

.method private loadCustomerFavorites(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 15
    .parameter

    .prologue
    const/16 v12, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1439
    const-string v0, "others.xml"

    invoke-static {v0, v9}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getInstance(Ljava/lang/String;I)Lcom/sec/android/app/twlauncher/LauncherCustomer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mCustomer:Lcom/sec/android/app/twlauncher/LauncherCustomer;

    .line 1440
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mCustomer:Lcom/sec/android/app/twlauncher/LauncherCustomer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getCustomerCount()I

    move-result v11

    .line 1442
    if-gtz v11, :cond_16

    move v0, v8

    .line 1479
    :goto_15
    return v0

    .line 1446
    :cond_16
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v1, 0x0

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1447
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1448
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1450
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    move v10, v8

    .line 1452
    :goto_2f
    if-ge v10, v11, :cond_cb

    .line 1453
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 1454
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mCustomer:Lcom/sec/android/app/twlauncher/LauncherCustomer;

    invoke-virtual {v1, v10, v0}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getCustomerFavoriteInfo(I[Ljava/lang/String;)V

    .line 1456
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1457
    const-string v1, "container"

    const/16 v3, -0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1459
    const-string v1, "screen"

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    const-string v1, "cellX"

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    const-string v1, "cellY"

    const/4 v3, 0x5

    aget-object v3, v0, v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    const-string v1, "multipleSize"

    aget-object v3, v0, v12

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    const-string v1, "favorite"

    aget-object v3, v0, v8

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 1465
    aget-object v3, v0, v9

    const/4 v1, 0x2

    aget-object v4, v0, v1

    aget-object v5, v0, v12

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addCSCShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    .line 1452
    :cond_7d
    :goto_7d
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_2f

    .line 1466
    :cond_81
    const-string v1, "folder"

    aget-object v3, v0, v8

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 1467
    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v2, v0}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addCSCFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)Z

    goto :goto_7d

    .line 1468
    :cond_93
    const-string v1, "search"

    aget-object v3, v0, v8

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 1469
    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    goto :goto_7d

    .line 1470
    :cond_a1
    const-string v1, "clock"

    aget-object v3, v0, v8

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 1471
    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    goto :goto_7d

    .line 1472
    :cond_af
    const-string v1, "appwidget"

    aget-object v3, v0, v8

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 1473
    invoke-direct {p0, p1, v2, v0}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addCSCAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;[Ljava/lang/String;)Z

    goto :goto_7d

    .line 1474
    :cond_bd
    const-string v1, "samsungappwidget"

    aget-object v3, v0, v8

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1475
    invoke-direct {p0, p1, v2, v0, v6}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addCSCSamsungAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;[Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    goto :goto_7d

    :cond_cb
    move v0, v9

    .line 1479
    goto/16 :goto_15
.end method

.method private loadCustomerMainApps(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 16
    .parameter "db"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 839
    const-string v0, "default_mainapplication_order.xml"

    invoke-static {v0, v13}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getInstance(Ljava/lang/String;I)Lcom/sec/android/app/twlauncher/LauncherCustomer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mCustomer:Lcom/sec/android/app/twlauncher/LauncherCustomer;

    .line 840
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mCustomer:Lcom/sec/android/app/twlauncher/LauncherCustomer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getCustomerCount()I

    move-result v7

    .line 842
    .local v7, count:I
    if-gtz v7, :cond_15

    move v0, v11

    .line 863
    :goto_14
    return v0

    .line 846
    :cond_15
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v1, 0x0

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 847
    .local v9, intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 848
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 850
    .local v2, values:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 852
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2e
    if-ge v8, v7, :cond_4e

    .line 853
    new-array v10, v13, [Ljava/lang/String;

    .line 854
    .local v10, mainappsInfo:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mCustomer:Lcom/sec/android/app/twlauncher/LauncherCustomer;

    invoke-virtual {v0, v8, v10}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getCustomerMainAppInfo(I[Ljava/lang/String;)V

    .line 856
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 858
    aget-object v3, v10, v11

    aget-object v4, v10, v12

    iget v5, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->menuIndexfromCSC:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addCSCMainApp(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/PackageManager;)Z

    .line 859
    iget v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->menuIndexfromCSC:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->menuIndexfromCSC:I

    .line 852
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    .end local v10           #mainappsInfo:[Ljava/lang/String;
    :cond_4e
    move v0, v12

    .line 863
    goto :goto_14
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 19
    .parameter "db"

    .prologue
    .line 646
    new-instance v7, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v7, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 647
    .local v7, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 662
    .local v4, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 663
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    .line 666
    .local v12, i:I
    :try_start_1b
    const-string v15, ""

    .line 667
    .local v15, strSalesCode:Ljava/lang/String;
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 670
    const/4 v14, 0x0

    .line 675
    .local v14, parser:Landroid/content/res/XmlResourceParser;
    const-string v2, "TWM"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    .line 683
    :goto_3b
    invoke-static {v14}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    .line 684
    .local v9, attrs:Landroid/util/AttributeSet;
    const-string v2, "favorites"

    invoke-static {v14, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 686
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    .line 690
    .local v10, depth:I
    :cond_48
    :goto_48
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    .local v16, type:I
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_57

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v10, :cond_ca

    :cond_57
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_ca

    .line 692
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_48

    .line 696
    const/4 v8, 0x0

    .line 697
    .local v8, added:Z
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 699
    .local v13, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/app/twlauncher/R$styleable;->Favorite:[I

    invoke-virtual {v2, v9, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 717
    .local v5, a:Landroid/content/res/TypedArray;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 718
    const-string v2, "container"

    const/16 v3, -0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 720
    const-string v2, "screen"

    const/4 v3, 0x2

    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v2, "cellX"

    const/4 v3, 0x3

    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string v2, "cellY"

    const/4 v3, 0x4

    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v2, "multipleSize"

    const/16 v3, 0xa

    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v2, "favorite"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 730
    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v8

    .line 748
    :cond_b7
    :goto_b7
    if-eqz v8, :cond_bb

    .line 749
    add-int/lit8 v12, v12, 0x1

    .line 751
    :cond_bb
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_be} :catch_bf
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_be} :catch_15e

    goto :goto_48

    .line 753
    .end local v5           #a:Landroid/content/res/TypedArray;
    .end local v8           #added:Z
    .end local v9           #attrs:Landroid/util/AttributeSet;
    .end local v10           #depth:I
    .end local v13           #name:Ljava/lang/String;
    .end local v14           #parser:Landroid/content/res/XmlResourceParser;
    .end local v15           #strSalesCode:Ljava/lang/String;
    .end local v16           #type:I
    :catch_bf
    move-exception v11

    .line 754
    .local v11, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 755
    invoke-virtual {v11}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 761
    .end local v11           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_ca
    :goto_ca
    return v12

    .line 677
    .restart local v14       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v15       #strSalesCode:Ljava/lang/String;
    :cond_cb
    :try_start_cb
    const-string v2, "CWT"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    goto/16 :goto_3b

    .line 681
    :cond_e4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    goto/16 :goto_3b

    .line 731
    .restart local v5       #a:Landroid/content/res/TypedArray;
    .restart local v8       #added:Z
    .restart local v9       #attrs:Landroid/util/AttributeSet;
    .restart local v10       #depth:I
    .restart local v13       #name:Ljava/lang/String;
    .restart local v16       #type:I
    :cond_f5
    const-string v2, "search"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    .line 732
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v8

    goto :goto_b7

    .line 733
    :cond_106
    const-string v2, "clock"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_117

    .line 734
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v8

    goto :goto_b7

    .line 735
    :cond_117
    const-string v2, "shortcut"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_128

    .line 736
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z

    move-result v8

    goto :goto_b7

    .line 737
    :cond_128
    const-string v2, "appwidget"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13a

    .line 738
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z

    move-result v8

    goto/16 :goto_b7

    .line 739
    :cond_13a
    const-string v2, "samsungappwidget"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14c

    .line 740
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addSamsungAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z

    move-result v8

    goto/16 :goto_b7

    .line 741
    :cond_14c
    const-string v2, "workspacefolder"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 745
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addWorkspaceFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z
    :try_end_15b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_cb .. :try_end_15b} :catch_bf
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_15b} :catch_15e

    move-result v8

    goto/16 :goto_b7

    .line 756
    .end local v5           #a:Landroid/content/res/TypedArray;
    .end local v8           #added:Z
    .end local v9           #attrs:Landroid/util/AttributeSet;
    .end local v10           #depth:I
    .end local v13           #name:Ljava/lang/String;
    .end local v14           #parser:Landroid/content/res/XmlResourceParser;
    .end local v15           #strSalesCode:Ljava/lang/String;
    .end local v16           #type:I
    :catch_15e
    move-exception v11

    .line 757
    .local v11, e:Ljava/io/IOException;
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 758
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_ca
.end method

.method private loadMainApps(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 19
    .parameter "db"

    .prologue
    .line 873
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 875
    .local v4, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 876
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    .line 879
    .local v12, i:I
    :try_start_e
    const-string v15, ""

    .line 880
    .local v15, strSalesCode:Ljava/lang/String;
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 883
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f05

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    .line 887
    .local v14, parser:Landroid/content/res/XmlResourceParser;
    const-string v2, "TWM"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    .line 893
    :cond_3b
    :goto_3b
    invoke-static {v14}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    .line 894
    .local v9, attrs:Landroid/util/AttributeSet;
    const-string v2, "mainapps"

    invoke-static {v14, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 896
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    .line 900
    .local v10, depth:I
    :cond_48
    :goto_48
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    .local v16, type:I
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_57

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v10, :cond_9c

    :cond_57
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_9c

    .line 902
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_48

    .line 906
    const/4 v8, 0x0

    .line 907
    .local v8, added:Z
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 909
    .local v13, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/app/twlauncher/R$styleable;->MainApp:[I

    invoke-virtual {v2, v9, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 910
    .local v5, a:Landroid/content/res/TypedArray;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 911
    const-string v2, "mainapp"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 912
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->menuIndexfromCSC:I

    add-int v7, v12, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addMainApp(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;I)Z

    move-result v8

    .line 926
    :cond_89
    :goto_89
    if-eqz v8, :cond_8d

    .line 927
    add-int/lit8 v12, v12, 0x1

    .line 929
    :cond_8d
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_90
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_90} :catch_91
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_90} :catch_e4

    goto :goto_48

    .line 931
    .end local v5           #a:Landroid/content/res/TypedArray;
    .end local v8           #added:Z
    .end local v9           #attrs:Landroid/util/AttributeSet;
    .end local v10           #depth:I
    .end local v13           #name:Ljava/lang/String;
    .end local v14           #parser:Landroid/content/res/XmlResourceParser;
    .end local v15           #strSalesCode:Ljava/lang/String;
    .end local v16           #type:I
    :catch_91
    move-exception v11

    .line 932
    .local v11, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Got exception parsing mainapps."

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 933
    invoke-virtual {v11}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 939
    .end local v11           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_9c
    :goto_9c
    return v12

    .line 889
    .restart local v14       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v15       #strSalesCode:Ljava/lang/String;
    :cond_9d
    :try_start_9d
    const-string v2, "CWT"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    goto :goto_3b

    .line 913
    .restart local v5       #a:Landroid/content/res/TypedArray;
    .restart local v8       #added:Z
    .restart local v9       #attrs:Landroid/util/AttributeSet;
    .restart local v10       #depth:I
    .restart local v13       #name:Ljava/lang/String;
    .restart local v16       #type:I
    :cond_b5
    const-string v2, "menufolder"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 917
    const-string v2, "SPH-D710"

    const-string v3, "SGH-T989"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d1

    const-string v2, "SPH-D710"

    const-string v3, "SGH-T769"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_db

    :cond_d1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v7, v12

    .line 918
    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addMenuFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;I)Z

    move-result v8

    goto :goto_89

    .line 921
    :cond_db
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5, v12}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addMenuFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;I)Z
    :try_end_e2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9d .. :try_end_e2} :catch_91
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_e2} :catch_e4

    move-result v8

    goto :goto_89

    .line 934
    .end local v5           #a:Landroid/content/res/TypedArray;
    .end local v8           #added:Z
    .end local v9           #attrs:Landroid/util/AttributeSet;
    .end local v10           #depth:I
    .end local v13           #name:Ljava/lang/String;
    .end local v14           #parser:Landroid/content/res/XmlResourceParser;
    .end local v15           #strSalesCode:Ljava/lang/String;
    .end local v16           #type:I
    :catch_e4
    move-exception v11

    .line 935
    .local v11, e:Ljava/io/IOException;
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Got exception parsing mainapps."

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 936
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9c
.end method

.method private loadSupportCellSizes(Landroid/content/ComponentName;)[Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1695
    .line 1696
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1697
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1699
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1700
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1701
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1702
    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1709
    :try_start_1f
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v5, 0x3

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_25} :catch_6d

    move-result-object v0

    .line 1715
    :goto_26
    if-eqz v0, :cond_6c

    .line 1716
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1717
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1718
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1719
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 1720
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-string v2, "com.sec.android.appwidget.widgetinfo"

    invoke-virtual {v0, v5, v2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 1722
    if-eqz v0, :cond_6c

    .line 1726
    :cond_54
    :try_start_54
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_57
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54 .. :try_end_57} :catch_73
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_78

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5e

    const/4 v3, 0x1

    if-ne v2, v3, :cond_54

    .line 1734
    :cond_5e
    :goto_5e
    const-string v2, "supportCellSizes"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1736
    if-lez v0, :cond_7d

    .line 1737
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_6b
    move-object v1, v0

    .line 1745
    :cond_6c
    return-object v1

    .line 1711
    :catch_6d
    move-exception v0

    .line 1712
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_26

    .line 1728
    :catch_73
    move-exception v2

    .line 1729
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_5e

    .line 1730
    :catch_78
    move-exception v2

    .line 1731
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5e

    :cond_7d
    move-object v0, v1

    goto :goto_6b
.end method

.method private loadTopApps(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 15
    .parameter "db"

    .prologue
    .line 771
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 773
    .local v2, values:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 774
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 776
    .local v5, i:I
    :try_start_c
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 778
    .local v11, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 779
    .local v7, attrs:Landroid/util/AttributeSet;
    const-string v0, "topapps"

    invoke-static {v11, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 781
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 785
    .local v8, depth:I
    :cond_26
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, type:I
    const/4 v0, 0x3

    if-ne v12, v0, :cond_33

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v8, :cond_62

    :cond_33
    const/4 v0, 0x1

    if-eq v12, v0, :cond_62

    .line 787
    const/4 v0, 0x2

    if-ne v12, v0, :cond_26

    .line 791
    const/4 v6, 0x0

    .line 792
    .local v6, added:Z
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 794
    .local v10, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->TopApp:[I

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 795
    .local v3, a:Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 796
    const-string v0, "topapp"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    move-object v0, p0

    move-object v1, p1

    .line 797
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addTopApp(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;I)Z

    move-result v6

    .line 800
    :cond_57
    if-eqz v6, :cond_5b

    .line 801
    add-int/lit8 v5, v5, 0x1

    .line 803
    :cond_5b
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_5e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_5e} :catch_63
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_5e} :catch_6f

    .line 805
    const/16 v0, 0x8

    if-lt v5, v0, :cond_26

    .line 816
    .end local v3           #a:Landroid/content/res/TypedArray;
    .end local v6           #added:Z
    .end local v7           #attrs:Landroid/util/AttributeSet;
    .end local v8           #depth:I
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #parser:Landroid/content/res/XmlResourceParser;
    .end local v12           #type:I
    :cond_62
    :goto_62
    return v5

    .line 808
    :catch_63
    move-exception v9

    .line 809
    .local v9, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "Got exception parsing topapps."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 810
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_62

    .line 811
    .end local v9           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6f
    move-exception v9

    .line 812
    .local v9, e:Ljava/io/IOException;
    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "Got exception parsing topapps."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 813
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_62
.end method

.method private sendAppWidgetResetNotify()V
    .registers 4

    .prologue
    .line 260
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 261
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 262
    return-void
.end method


# virtual methods
.method getWidgetMultipleSize(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/MultipleSize;
    .registers 13
    .parameter "componentName"

    .prologue
    const/16 v10, 0x78

    .line 1681
    new-instance v4, Lcom/sec/android/app/twlauncher/MultipleSize;

    invoke-direct {v4}, Lcom/sec/android/app/twlauncher/MultipleSize;-><init>()V

    .line 1682
    .local v4, ms:Lcom/sec/android/app/twlauncher/MultipleSize;
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->loadSupportCellSizes(Landroid/content/ComponentName;)[Ljava/lang/String;

    move-result-object v1

    .line 1683
    .local v1, array:[Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 1684
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_10
    if-ge v2, v3, :cond_35

    aget-object v5, v0, v2

    .line 1686
    .local v5, parsed:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1687
    .local v6, spanX:I
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1688
    .local v7, spanY:I
    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/twlauncher/MultipleSize;->setSize(II)Z

    .line 1684
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1691
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #parsed:Ljava/lang/String;
    .end local v6           #spanX:I
    .end local v7           #spanY:I
    :cond_35
    return-object v4
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .parameter "db"

    .prologue
    .line 267
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "creating new launcher database"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v2, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER,multipleSize INTEGER);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 277
    const-string v2, "CREATE TABLE gestures (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,itemType INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 281
    const-string v2, "create table menu_item (_id integer primary key,parent_id integer not null default -1,page integer not null default -1,cell integer not null default -1,component_name text,title text,default_sort integer not null default 0,create_time integer not null default 0);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 293
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v2, :cond_22

    .line 294
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 295
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->sendAppWidgetResetNotify()V

    .line 298
    :cond_22
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "launcher"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 299
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 300
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 303
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 311
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->loadCustomerFavorites(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 312
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 315
    :cond_44
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->loadTopApps(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 316
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->loadCustomerMainApps(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 318
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->loadMainApps(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 321
    :cond_50
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 11
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/16 v6, 0xd

    const/4 v5, 0x3

    .line 443
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "onUpgrade triggered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    move v1, p2

    .line 446
    .local v1, version:I
    const-string v2, "Launcher.LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpgrade oldVersion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : newVersion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    if-ge v1, v5, :cond_43

    .line 449
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 452
    :try_start_32
    const-string v2, "ALTER TABLE favorites ADD COLUMN appWidgetId INTEGER NOT NULL DEFAULT -1;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_a5
    .catch Landroid/database/SQLException; {:try_start_32 .. :try_end_3a} :catch_94

    .line 455
    const/4 v1, 0x3

    .line 461
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 465
    :goto_3e
    if-ne v1, v5, :cond_43

    .line 466
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 470
    :cond_43
    const/4 v2, 0x4

    if-ge v1, v2, :cond_55

    .line 471
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 473
    :try_start_49
    const-string v2, "CREATE TABLE gestures (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,itemType INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_bb
    .catch Landroid/database/SQLException; {:try_start_49 .. :try_end_51} :catch_aa

    .line 478
    const/4 v1, 0x4

    .line 484
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 489
    :cond_55
    :goto_55
    if-ge v1, v6, :cond_69

    .line 490
    const/16 v1, 0xd

    .line 492
    const-string v2, "DROP TABLE IF EXISTS menu_item"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 494
    const-string v2, "create table menu_item (_id integer primary key,parent_id integer not null default -1,page integer not null default -1,cell integer not null default -1,component_name text,title text,default_sort integer not null default 0,create_time integer not null default 0);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 505
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->loadTopApps(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 506
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->loadMainApps(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 509
    :cond_69
    if-eq v1, v6, :cond_93

    .line 510
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Destroying all old data."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const-string v2, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 512
    const-string v2, "DROP TABLE IF EXISTS gestures"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 513
    const-string v2, "DROP TABLE IF EXISTS menu_item"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 514
    const-string v2, "DROP TABLE IF EXISTS apps"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 515
    const-string v2, "DROP TABLE IF EXISTS mmfolder"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 516
    const-string v2, "DROP TABLE IF EXISTS mmfolderapp"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 519
    :cond_93
    return-void

    .line 456
    :catch_94
    move-exception v0

    .line 458
    .local v0, ex:Landroid/database/SQLException;
    :try_start_95
    const-string v2, "Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_a1
    .catchall {:try_start_95 .. :try_end_a1} :catchall_a5

    .line 461
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3e

    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_a5
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 479
    :catch_aa
    move-exception v0

    .line 481
    .restart local v0       #ex:Landroid/database/SQLException;
    :try_start_ab
    const-string v2, "Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_b7
    .catchall {:try_start_ab .. :try_end_b7} :catchall_bb

    .line 484
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_55

    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_bb
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method
