.class Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final TAG_APPWIDGET:Ljava/lang/String; = "appwidget"

.field private static final TAG_CLOCK:Ljava/lang/String; = "clock"

.field private static final TAG_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final TAG_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG_FOLDER:Ljava/lang/String; = "folder"

.field private static final TAG_SEARCH:Ljava/lang/String; = "search"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;

.field private mMaxId:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const-wide/16 v3, -0x1

    .line 215
    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 212
    iput-wide v3, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxId:J

    .line 216
    iput-object p1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 217
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/16 v1, 0x400

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 221
    iget-wide v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxId:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_27

    .line 222
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxId:J

    .line 224
    :cond_27
    return-void
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J
    .registers 20
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"
    .parameter "intent"

    .prologue
    .line 852
    const-wide/16 v4, -0x1

    .line 854
    .local v4, id:J
    const/4 v10, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 855
    .local v8, packageName:Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 859
    .local v1, className:Ljava/lang/String;
    :try_start_10
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v8, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    .local v2, cn:Landroid/content/ComponentName;
    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1b} :catch_90

    move-result-object v6

    .line 867
    .local v6, info:Landroid/content/pm/ActivityInfo;
    :goto_1c
    :try_start_1c
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v4

    .line 868
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 869
    const/high16 v10, 0x1020

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 871
    const-string v10, "intent"

    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const-string v10, "title"

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const-string v10, "itemType"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 874
    const-string v10, "spanX"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 875
    const-string v10, "spanY"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 876
    const-string v10, "_id"

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 877
    const-string v10, "favorites"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    #calls: Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {p0, p1, v10, v11, v0}, Lcom/android/launcher2/LauncherProvider;->access$000(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gez v10, :cond_d1

    .line 878
    const-wide/16 v10, -0x1

    .line 884
    .end local v2           #cn:Landroid/content/ComponentName;
    .end local v6           #info:Landroid/content/pm/ActivityInfo;
    :goto_8f
    return-wide v10

    .line 861
    :catch_90
    move-exception v7

    .line 862
    .local v7, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 864
    .local v9, packages:[Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-direct {v2, v10, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    .restart local v2       #cn:Landroid/content/ComponentName;
    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_ab
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_ab} :catch_ae

    move-result-object v6

    .restart local v6       #info:Landroid/content/pm/ActivityInfo;
    goto/16 :goto_1c

    .line 880
    .end local v2           #cn:Landroid/content/ComponentName;
    .end local v6           #info:Landroid/content/pm/ActivityInfo;
    .end local v7           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9           #packages:[Ljava/lang/String;
    :catch_ae
    move-exception v3

    .line 881
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "Launcher.LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to add favorite: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_d1
    move-wide v10, v4

    .line 884
    goto :goto_8f
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z
    .registers 13
    .parameter "db"
    .parameter "values"
    .parameter "cn"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 973
    const/4 v0, 0x0

    .line 974
    .local v0, allocatedAppWidgets:Z
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 977
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :try_start_7
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 979
    .local v1, appWidgetId:I
    const-string v4, "itemType"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 980
    const-string v4, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 981
    const-string v4, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 982
    const-string v4, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 983
    const-string v4, "_id"

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 984
    const-string v4, "favorites"

    const/4 v5, 0x0

    #calls: Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {p0, p1, v4, v5, p2}, Lcom/android/launcher2/LauncherProvider;->access$000(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 986
    const/4 v0, 0x1

    .line 988
    invoke-virtual {v2, v1, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_49} :catch_4a

    .line 993
    .end local v1           #appWidgetId:I
    :goto_49
    return v0

    .line 989
    :catch_4a
    move-exception v3

    .line 990
    .local v3, ex:Ljava/lang/RuntimeException;
    const-string v4, "Launcher.LauncherProvider"

    const-string v5, "Problem allocating appWidgetId"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z
    .registers 18
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"

    .prologue
    .line 940
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 941
    .local v11, packageName:Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 943
    .local v7, className:Ljava/lang/String;
    if-eqz v11, :cond_12

    if-nez v7, :cond_14

    .line 944
    :cond_12
    const/4 v1, 0x0

    .line 968
    :goto_13
    return v1

    .line 947
    :cond_14
    const/4 v10, 0x1

    .line 948
    .local v10, hasPackage:Z
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v11, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    .local v4, cn:Landroid/content/ComponentName;
    const/4 v1, 0x0

    :try_start_1b
    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_3a

    .line 962
    :goto_20
    if-eqz v10, :cond_59

    .line 963
    const/4 v1, 0x6

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 964
    .local v5, spanX:I
    const/4 v1, 0x7

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .local v6, spanY:I
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 965
    invoke-direct/range {v1 .. v6}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v1

    goto :goto_13

    .line 951
    .end local v5           #spanX:I
    .end local v6           #spanY:I
    :catch_3a
    move-exception v8

    .line 952
    .local v8, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v11, v1, v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 954
    .local v12, packages:[Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    .end local v4           #cn:Landroid/content/ComponentName;
    const/4 v1, 0x0

    aget-object v1, v12, v1

    invoke-direct {v4, v1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    .restart local v4       #cn:Landroid/content/ComponentName;
    const/4 v1, 0x0

    :try_start_50
    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_55} :catch_56

    goto :goto_20

    .line 957
    :catch_56
    move-exception v9

    .line 958
    .local v9, e1:Ljava/lang/Exception;
    const/4 v10, 0x0

    goto :goto_20

    .line 968
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #e1:Ljava/lang/Exception;
    .end local v12           #packages:[Ljava/lang/String;
    :cond_59
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .registers 9
    .parameter "db"
    .parameter "values"

    .prologue
    const/4 v4, 0x2

    .line 932
    new-instance v3, Landroid/content/ComponentName;

    const-string v0, "com.android.alarmclock"

    const-string v1, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, cn:Landroid/content/ComponentName;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    .line 934
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method private addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .registers 9
    .parameter "db"
    .parameter "values"

    .prologue
    const/4 v4, 0x1

    .line 888
    const-string v2, "itemType"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 889
    const-string v2, "spanX"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 890
    const-string v2, "spanY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 891
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v0

    .line 892
    .local v0, id:J
    const-string v2, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 893
    const-string v2, "favorites"

    const/4 v3, 0x0

    #calls: Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {p0, p1, v2, v3, p2}, Lcom/android/launcher2/LauncherProvider;->access$000(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_39

    .line 894
    const-wide/16 v0, -0x1

    .line 896
    .end local v0           #id:J
    :cond_39
    return-wide v0
.end method

.method private addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .registers 9
    .parameter "db"
    .parameter "values"

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getSearchWidgetProvider()Landroid/content/ComponentName;

    move-result-object v3

    .line 928
    .local v3, cn:Landroid/content/ComponentName;
    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method private addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)J
    .registers 16
    .parameter "db"
    .parameter "values"
    .parameter "a"

    .prologue
    .line 998
    iget-object v8, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1000
    .local v5, r:Landroid/content/res/Resources;
    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 1001
    .local v1, iconResId:I
    const/16 v8, 0x9

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 1004
    .local v6, titleResId:I
    const/4 v7, 0x0

    .line 1006
    .local v7, uri:Ljava/lang/String;
    const/16 v8, 0xa

    :try_start_17
    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1007
    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1f
    .catch Ljava/net/URISyntaxException; {:try_start_17 .. :try_end_1f} :catch_2e

    move-result-object v4

    .line 1013
    .local v4, intent:Landroid/content/Intent;
    if-eqz v1, :cond_24

    if-nez v6, :cond_4a

    .line 1014
    :cond_24
    const-string v8, "Launcher.LauncherProvider"

    const-string v9, "Shortcut is missing title or icon resource ID"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const-wide/16 v2, -0x1

    .line 1033
    .end local v4           #intent:Landroid/content/Intent;
    :cond_2d
    :goto_2d
    return-wide v2

    .line 1008
    :catch_2e
    move-exception v0

    .line 1009
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v8, "Launcher.LauncherProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Shortcut has malformed uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const-wide/16 v2, -0x1

    goto :goto_2d

    .line 1018
    .end local v0           #e:Ljava/net/URISyntaxException;
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_4a
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v2

    .line 1019
    .local v2, id:J
    const/high16 v8, 0x1000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1020
    const-string v8, "intent"

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    const-string v8, "title"

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const-string v8, "itemType"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1023
    const-string v8, "spanX"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1024
    const-string v8, "spanY"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1025
    const-string v8, "iconType"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1026
    const-string v8, "iconPackage"

    iget-object v9, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const-string v8, "iconResource"

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    const-string v8, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1030
    const-string v8, "favorites"

    const/4 v9, 0x0

    #calls: Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {p0, p1, v8, v9, p2}, Lcom/android/launcher2/LauncherProvider;->access$000(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_2d

    .line 1031
    const-wide/16 v2, -0x1

    goto/16 :goto_2d
.end method

.method private convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 11
    .parameter "db"

    .prologue
    const/4 v8, 0x0

    .line 292
    const/4 v6, 0x0

    .line 294
    .local v6, converted:Z
    const-string v2, "content://settings/old_favorites?notify=true"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 296
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 297
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 300
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_13
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_3b

    move-result-object v7

    .line 306
    :goto_17
    if-eqz v7, :cond_2e

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2e

    .line 308
    :try_start_1f
    invoke-direct {p0, p1, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_36

    move-result v2

    if-lez v2, :cond_34

    const/4 v6, 0x1

    .line 310
    :goto_26
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 313
    if-eqz v6, :cond_2e

    .line 314
    invoke-virtual {v0, v1, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 318
    :cond_2e
    if-eqz v6, :cond_33

    .line 321
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 324
    :cond_33
    return v6

    .line 308
    :cond_34
    const/4 v6, 0x0

    goto :goto_26

    .line 310
    :catchall_36
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    .line 301
    :catch_3b
    move-exception v2

    goto :goto_17
.end method

.method private convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 23
    .parameter "db"

    .prologue
    .line 636
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v12

    .line 637
    .local v12, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const/4 v3, 0x3

    new-array v13, v3, [I

    fill-array-data v13, :array_12a

    .line 643
    .local v13, bindSources:[I
    const-string v3, "itemType"

    invoke-static {v3, v13}, Lcom/android/launcher2/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v6

    .line 645
    .local v6, selectWhere:Ljava/lang/String;
    const/4 v14, 0x0

    .line 647
    .local v14, c:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 650
    :try_start_18
    const-string v4, "favorites"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v3

    const/4 v3, 0x1

    const-string v7, "itemType"

    aput-object v7, v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 655
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 656
    .local v20, values:Landroid/content/ContentValues;
    :cond_36
    :goto_36
    if-eqz v14, :cond_11e

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_11e

    .line 657
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 658
    .local v16, favoriteId:J
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_47
    .catchall {:try_start_18 .. :try_end_47} :catchall_f1
    .catch Landroid/database/SQLException; {:try_start_18 .. :try_end_47} :catch_c7

    move-result v18

    .line 662
    .local v18, favoriteType:I
    :try_start_48
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v11

    .line 668
    .local v11, appWidgetId:I
    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->clear()V

    .line 669
    const-string v3, "itemType"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 670
    const-string v3, "appWidgetId"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 673
    const/16 v3, 0x3e9

    move/from16 v0, v18

    if-ne v0, v3, :cond_d8

    .line 674
    const-string v3, "spanX"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 675
    const-string v3, "spanY"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 681
    :goto_88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 682
    .local v19, updateWhere:Ljava/lang/String;
    const-string v3, "favorites"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 684
    const/16 v3, 0x3e8

    move/from16 v0, v18

    if-ne v0, v3, :cond_fb

    .line 685
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.alarmclock"

    const-string v5, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v11, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_bb
    .catchall {:try_start_48 .. :try_end_bb} :catchall_f1
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_bb} :catch_bd
    .catch Landroid/database/SQLException; {:try_start_48 .. :try_end_bb} :catch_c7

    goto/16 :goto_36

    .line 696
    .end local v11           #appWidgetId:I
    .end local v19           #updateWhere:Ljava/lang/String;
    :catch_bd
    move-exception v15

    .line 697
    .local v15, ex:Ljava/lang/RuntimeException;
    :try_start_be
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Problem allocating appWidgetId"

    invoke-static {v3, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c5
    .catchall {:try_start_be .. :try_end_c5} :catchall_f1
    .catch Landroid/database/SQLException; {:try_start_be .. :try_end_c5} :catch_c7

    goto/16 :goto_36

    .line 702
    .end local v15           #ex:Ljava/lang/RuntimeException;
    .end local v16           #favoriteId:J
    .end local v18           #favoriteType:I
    .end local v20           #values:Landroid/content/ContentValues;
    :catch_c7
    move-exception v15

    .line 703
    .local v15, ex:Landroid/database/SQLException;
    :try_start_c8
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Problem while allocating appWidgetIds for existing widgets"

    invoke-static {v3, v4, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cf
    .catchall {:try_start_c8 .. :try_end_cf} :catchall_f1

    .line 705
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 706
    if-eqz v14, :cond_d7

    .line 707
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 710
    .end local v15           #ex:Landroid/database/SQLException;
    :cond_d7
    :goto_d7
    return-void

    .line 677
    .restart local v11       #appWidgetId:I
    .restart local v16       #favoriteId:J
    .restart local v18       #favoriteType:I
    .restart local v20       #values:Landroid/content/ContentValues;
    :cond_d8
    :try_start_d8
    const-string v3, "spanX"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 678
    const-string v3, "spanY"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_f0
    .catchall {:try_start_d8 .. :try_end_f0} :catchall_f1
    .catch Ljava/lang/RuntimeException; {:try_start_d8 .. :try_end_f0} :catch_bd
    .catch Landroid/database/SQLException; {:try_start_d8 .. :try_end_f0} :catch_c7

    goto :goto_88

    .line 705
    .end local v11           #appWidgetId:I
    .end local v16           #favoriteId:J
    .end local v18           #favoriteType:I
    .end local v20           #values:Landroid/content/ContentValues;
    :catchall_f1
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 706
    if-eqz v14, :cond_fa

    .line 707
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_fa
    throw v3

    .line 688
    .restart local v11       #appWidgetId:I
    .restart local v16       #favoriteId:J
    .restart local v18       #favoriteType:I
    .restart local v19       #updateWhere:Ljava/lang/String;
    .restart local v20       #values:Landroid/content/ContentValues;
    :cond_fb
    const/16 v3, 0x3ea

    move/from16 v0, v18

    if-ne v0, v3, :cond_10f

    .line 689
    :try_start_101
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.camera"

    const-string v5, "com.android.camera.PhotoAppWidgetProvider"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v11, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    goto/16 :goto_36

    .line 692
    :cond_10f
    const/16 v3, 0x3e9

    move/from16 v0, v18

    if-ne v0, v3, :cond_36

    .line 693
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getSearchWidgetProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v12, v11, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_11c
    .catchall {:try_start_101 .. :try_end_11c} :catchall_f1
    .catch Ljava/lang/RuntimeException; {:try_start_101 .. :try_end_11c} :catch_bd
    .catch Landroid/database/SQLException; {:try_start_101 .. :try_end_11c} :catch_c7

    goto/16 :goto_36

    .line 701
    .end local v11           #appWidgetId:I
    .end local v16           #favoriteId:J
    .end local v18           #favoriteType:I
    .end local v19           #updateWhere:Ljava/lang/String;
    :cond_11e
    :try_start_11e
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_121
    .catchall {:try_start_11e .. :try_end_121} :catchall_f1
    .catch Landroid/database/SQLException; {:try_start_11e .. :try_end_121} :catch_c7

    .line 705
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 706
    if-eqz v14, :cond_d7

    .line 707
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_d7

    .line 637
    :array_12a
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0xeat 0x3t 0x0t 0x0t
        0xe9t 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .registers 32
    .parameter "db"
    .parameter "c"

    .prologue
    .line 328
    const-string v25, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 329
    .local v15, idIndex:I
    const-string v25, "intent"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 330
    .local v16, intentIndex:I
    const-string v25, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 331
    .local v21, titleIndex:I
    const-string v25, "iconType"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 332
    .local v14, iconTypeIndex:I
    const-string v25, "icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 333
    .local v11, iconIndex:I
    const-string v25, "iconPackage"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 334
    .local v12, iconPackageIndex:I
    const-string v25, "iconResource"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 335
    .local v13, iconResourceIndex:I
    const-string v25, "container"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 336
    .local v7, containerIndex:I
    const-string v25, "itemType"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 337
    .local v17, itemTypeIndex:I
    const-string v25, "screen"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 338
    .local v20, screenIndex:I
    const-string v25, "cellX"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 339
    .local v5, cellXIndex:I
    const-string v25, "cellY"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 340
    .local v6, cellYIndex:I
    const-string v25, "uri"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 341
    .local v23, uriIndex:I
    const-string v25, "displayMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 343
    .local v8, displayModeIndex:I
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v19, v0

    .line 344
    .local v19, rows:[Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 345
    .local v9, i:I
    :goto_97
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v25

    if-eqz v25, :cond_17c

    .line 346
    new-instance v24, Landroid/content/ContentValues;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v25

    invoke-direct/range {v24 .. v25}, Landroid/content/ContentValues;-><init>(I)V

    .line 347
    .local v24, values:Landroid/content/ContentValues;
    const-string v25, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 348
    const-string v25, "intent"

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v25, "title"

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v25, "iconType"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string v25, "icon"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 352
    const-string v25, "iconPackage"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v25, "iconResource"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v25, "container"

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 355
    const-string v25, "itemType"

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    const-string v25, "appWidgetId"

    const/16 v26, -0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    const-string v25, "screen"

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    const-string v25, "cellX"

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    const-string v25, "cellY"

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    const-string v25, "uri"

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v25, "displayMode"

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    add-int/lit8 v10, v9, 0x1

    .end local v9           #i:I
    .local v10, i:I
    aput-object v24, v19, v9

    move v9, v10

    .line 363
    .end local v10           #i:I
    .restart local v9       #i:I
    goto/16 :goto_97

    .line 365
    .end local v24           #values:Landroid/content/ContentValues;
    :cond_17c
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 366
    const/16 v22, 0x0

    .line 368
    .local v22, total:I
    :try_start_181
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v18, v0

    .line 369
    .local v18, numValues:I
    const/4 v9, 0x0

    :goto_187
    move/from16 v0, v18

    if-ge v9, v0, :cond_1b0

    .line 370
    const-string v25, "favorites"

    const/16 v26, 0x0

    aget-object v27, v19, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    #calls: Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider;->access$000(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_19e
    .catchall {:try_start_181 .. :try_end_19e} :catchall_1b7

    move-result-wide v25

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-gez v25, :cond_1ab

    .line 371
    const/16 v22, 0x0

    .line 378
    .end local v22           #total:I
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 381
    :goto_1aa
    return v22

    .line 373
    .restart local v22       #total:I
    :cond_1ab
    add-int/lit8 v22, v22, 0x1

    .line 369
    add-int/lit8 v9, v9, 0x1

    goto :goto_187

    .line 376
    :cond_1b0
    :try_start_1b0
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1b3
    .catchall {:try_start_1b0 .. :try_end_1b3} :catchall_1b7

    .line 378
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1aa

    .end local v18           #numValues:I
    :catchall_1b7
    move-exception v25

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v25
.end method

.method private getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 9
    .parameter "packageName"

    .prologue
    const/4 v6, 0x0

    .line 913
    iget-object v5, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 914
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    .line 915
    .local v4, providers:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-nez v4, :cond_f

    move-object v2, v6

    .line 923
    :cond_e
    :goto_e
    return-object v2

    .line 916
    :cond_f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 917
    .local v3, providerCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v3, :cond_2d

    .line 918
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 919
    .local v2, provider:Landroid/content/ComponentName;
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 917
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .end local v2           #provider:Landroid/content/ComponentName;
    :cond_2d
    move-object v2, v6

    .line 923
    goto :goto_e
.end method

.method private getSearchWidgetProvider()Landroid/content/ComponentName;
    .registers 5

    .prologue
    .line 901
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 903
    .local v1, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v1}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 904
    .local v0, searchComponent:Landroid/content/ComponentName;
    if-nez v0, :cond_12

    const/4 v2, 0x0

    .line 905
    :goto_11
    return-object v2

    :cond_12
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_11
.end method

.method private initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J
    .registers 8
    .parameter "db"

    .prologue
    .line 612
    const-string v4, "SELECT MAX(_id) FROM favorites"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 615
    .local v0, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 616
    .local v3, maxIdIndex:I
    const-wide/16 v1, -0x1

    .line 617
    .local v1, id:J
    if-eqz v0, :cond_17

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 618
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 620
    :cond_17
    if-eqz v0, :cond_1c

    .line 621
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 624
    :cond_1c
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_2a

    .line 625
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error: could not query max id"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 628
    :cond_2a
    return-wide v1
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;I)I
    .registers 40
    .parameter "db"
    .parameter "workspaceResourceId"

    .prologue
    .line 719
    new-instance v8, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v8, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 720
    .local v8, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 723
    .local v5, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 724
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    const/16 v26, 0x0

    .line 726
    .local v26, i:I
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v30

    .line 727
    .local v30, parser:Landroid/content/res/XmlResourceParser;
    invoke-static/range {v30 .. v30}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v16

    .line 728
    .local v16, attrs:Landroid/util/AttributeSet;
    const-string v3, "favorites"

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 730
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v19

    .line 734
    .local v19, depth:I
    :cond_39
    :goto_39
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v34

    .local v34, type:I
    const/4 v3, 0x3

    move/from16 v0, v34

    if-ne v0, v3, :cond_4a

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    move/from16 v0, v19

    if-le v3, v0, :cond_b0

    :cond_4a
    const/4 v3, 0x1

    move/from16 v0, v34

    if-eq v0, v3, :cond_b0

    .line 736
    const/4 v3, 0x2

    move/from16 v0, v34

    if-ne v0, v3, :cond_39

    .line 740
    const/4 v15, 0x0

    .line 741
    .local v15, added:Z
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v29

    .line 743
    .local v29, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/launcher/R$styleable;->Favorite:[I

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 745
    .local v6, a:Landroid/content/res/TypedArray;
    const-wide/16 v17, -0x64

    .line 746
    .local v17, container:J
    const/4 v3, 0x2

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 747
    const/4 v3, 0x2

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 750
    :cond_7b
    const/4 v3, 0x3

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 751
    .local v31, screen:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 752
    .local v35, x:Ljava/lang/String;
    const/4 v3, 0x5

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 757
    .local v36, y:Ljava/lang/String;
    const-wide/16 v3, -0x65

    cmp-long v3, v17, v3

    if-nez v3, :cond_b1

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/launcher2/Hotseat;->isAllAppsButtonRank(I)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 759
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Invalid screen position for hotseat item"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_a6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_a6} :catch_a6
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_a6} :catch_f4
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_a6} :catch_1f9

    .line 839
    .end local v6           #a:Landroid/content/res/TypedArray;
    .end local v15           #added:Z
    .end local v16           #attrs:Landroid/util/AttributeSet;
    .end local v17           #container:J
    .end local v19           #depth:I
    .end local v29           #name:Ljava/lang/String;
    .end local v30           #parser:Landroid/content/res/XmlResourceParser;
    .end local v31           #screen:Ljava/lang/String;
    .end local v34           #type:I
    .end local v35           #x:Ljava/lang/String;
    .end local v36           #y:Ljava/lang/String;
    :catch_a6
    move-exception v20

    .line 840
    .local v20, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Got exception parsing favorites."

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 847
    .end local v20           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_b0
    :goto_b0
    return v26

    .line 762
    .restart local v6       #a:Landroid/content/res/TypedArray;
    .restart local v15       #added:Z
    .restart local v16       #attrs:Landroid/util/AttributeSet;
    .restart local v17       #container:J
    .restart local v19       #depth:I
    .restart local v29       #name:Ljava/lang/String;
    .restart local v30       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v31       #screen:Ljava/lang/String;
    .restart local v34       #type:I
    .restart local v35       #x:Ljava/lang/String;
    .restart local v36       #y:Ljava/lang/String;
    :cond_b1
    :try_start_b1
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 763
    const-string v3, "container"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 764
    const-string v3, "screen"

    move-object/from16 v0, v31

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v3, "cellX"

    move-object/from16 v0, v35

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v3, "cellY"

    move-object/from16 v0, v36

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v3, "favorite"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_101

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 769
    invoke-direct/range {v3 .. v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J

    move-result-wide v27

    .line 770
    .local v27, id:J
    const-wide/16 v3, 0x0

    cmp-long v3, v27, v3

    if-ltz v3, :cond_ff

    const/4 v15, 0x1

    .line 836
    .end local v27           #id:J
    :cond_eb
    :goto_eb
    if-eqz v15, :cond_ef

    add-int/lit8 v26, v26, 0x1

    .line 837
    :cond_ef
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_f2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b1 .. :try_end_f2} :catch_a6
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_f2} :catch_f4
    .catch Ljava/lang/RuntimeException; {:try_start_b1 .. :try_end_f2} :catch_1f9

    goto/16 :goto_39

    .line 841
    .end local v6           #a:Landroid/content/res/TypedArray;
    .end local v15           #added:Z
    .end local v16           #attrs:Landroid/util/AttributeSet;
    .end local v17           #container:J
    .end local v19           #depth:I
    .end local v29           #name:Ljava/lang/String;
    .end local v30           #parser:Landroid/content/res/XmlResourceParser;
    .end local v31           #screen:Ljava/lang/String;
    .end local v34           #type:I
    .end local v35           #x:Ljava/lang/String;
    .end local v36           #y:Ljava/lang/String;
    :catch_f4
    move-exception v20

    .line 842
    .local v20, e:Ljava/io/IOException;
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Got exception parsing favorites."

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b0

    .line 770
    .end local v20           #e:Ljava/io/IOException;
    .restart local v6       #a:Landroid/content/res/TypedArray;
    .restart local v15       #added:Z
    .restart local v16       #attrs:Landroid/util/AttributeSet;
    .restart local v17       #container:J
    .restart local v19       #depth:I
    .restart local v27       #id:J
    .restart local v29       #name:Ljava/lang/String;
    .restart local v30       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v31       #screen:Ljava/lang/String;
    .restart local v34       #type:I
    .restart local v35       #x:Ljava/lang/String;
    .restart local v36       #y:Ljava/lang/String;
    :cond_ff
    const/4 v15, 0x0

    goto :goto_eb

    .line 771
    .end local v27           #id:J
    :cond_101
    :try_start_101
    const-string v3, "search"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    .line 772
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v15

    goto :goto_eb

    .line 773
    :cond_114
    const-string v3, "clock"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_127

    .line 774
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v15

    goto :goto_eb

    .line 775
    :cond_127
    const-string v3, "appwidget"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    .line 776
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z

    move-result v15

    goto :goto_eb

    .line 777
    :cond_13a
    const-string v3, "shortcut"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_156

    .line 778
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)J

    move-result-wide v27

    .line 779
    .restart local v27       #id:J
    const-wide/16 v3, 0x0

    cmp-long v3, v27, v3

    if-ltz v3, :cond_154

    const/4 v15, 0x1

    .line 780
    :goto_153
    goto :goto_eb

    .line 779
    :cond_154
    const/4 v15, 0x0

    goto :goto_153

    .line 780
    .end local v27           #id:J
    :cond_156
    const-string v3, "folder"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 782
    const/16 v3, 0x9

    const/4 v4, -0x1

    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v33

    .line 783
    .local v33, titleResId:I
    const/4 v3, -0x1

    move/from16 v0, v33

    if-eq v0, v3, :cond_205

    .line 784
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 788
    .local v32, title:Ljava/lang/String;
    :goto_17a
    const-string v3, "title"

    move-object/from16 v0, v32

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v22

    .line 790
    .local v22, folderId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v22, v3

    if-ltz v3, :cond_216

    const/4 v15, 0x1

    .line 792
    :goto_190
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v24, folderItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v21

    .line 796
    .local v21, folderDepth:I
    :cond_199
    :goto_199
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v34

    const/4 v3, 0x3

    move/from16 v0, v34

    if-ne v0, v3, :cond_1aa

    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    move/from16 v0, v21

    if-le v3, v0, :cond_249

    .line 797
    :cond_1aa
    const/4 v3, 0x2

    move/from16 v0, v34

    if-ne v0, v3, :cond_199

    .line 800
    invoke-interface/range {v30 .. v30}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v25

    .line 802
    .local v25, folder_item_name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/launcher/R$styleable;->Favorite:[I

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 804
    .local v12, ar:Landroid/content/res/TypedArray;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 805
    const-string v3, "container"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 807
    const-string v3, "favorite"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_219

    const-wide/16 v3, 0x0

    cmp-long v3, v22, v3

    if-ltz v3, :cond_219

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v5

    move-object v13, v7

    move-object v14, v8

    .line 808
    invoke-direct/range {v9 .. v14}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J

    move-result-wide v27

    .line 810
    .restart local v27       #id:J
    const-wide/16 v3, 0x0

    cmp-long v3, v27, v3

    if-ltz v3, :cond_1f5

    .line 811
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    :cond_1f5
    :goto_1f5
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1f8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_101 .. :try_end_1f8} :catch_a6
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_1f8} :catch_f4
    .catch Ljava/lang/RuntimeException; {:try_start_101 .. :try_end_1f8} :catch_1f9

    goto :goto_199

    .line 843
    .end local v6           #a:Landroid/content/res/TypedArray;
    .end local v12           #ar:Landroid/content/res/TypedArray;
    .end local v15           #added:Z
    .end local v16           #attrs:Landroid/util/AttributeSet;
    .end local v17           #container:J
    .end local v19           #depth:I
    .end local v21           #folderDepth:I
    .end local v22           #folderId:J
    .end local v24           #folderItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v25           #folder_item_name:Ljava/lang/String;
    .end local v27           #id:J
    .end local v29           #name:Ljava/lang/String;
    .end local v30           #parser:Landroid/content/res/XmlResourceParser;
    .end local v31           #screen:Ljava/lang/String;
    .end local v32           #title:Ljava/lang/String;
    .end local v33           #titleResId:I
    .end local v34           #type:I
    .end local v35           #x:Ljava/lang/String;
    .end local v36           #y:Ljava/lang/String;
    :catch_1f9
    move-exception v20

    .line 844
    .local v20, e:Ljava/lang/RuntimeException;
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Got exception parsing favorites."

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b0

    .line 786
    .end local v20           #e:Ljava/lang/RuntimeException;
    .restart local v6       #a:Landroid/content/res/TypedArray;
    .restart local v15       #added:Z
    .restart local v16       #attrs:Landroid/util/AttributeSet;
    .restart local v17       #container:J
    .restart local v19       #depth:I
    .restart local v29       #name:Ljava/lang/String;
    .restart local v30       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v31       #screen:Ljava/lang/String;
    .restart local v33       #titleResId:I
    .restart local v34       #type:I
    .restart local v35       #x:Ljava/lang/String;
    .restart local v36       #y:Ljava/lang/String;
    :cond_205
    :try_start_205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    .restart local v32       #title:Ljava/lang/String;
    goto/16 :goto_17a

    .line 790
    .restart local v22       #folderId:J
    :cond_216
    const/4 v15, 0x0

    goto/16 :goto_190

    .line 813
    .restart local v12       #ar:Landroid/content/res/TypedArray;
    .restart local v21       #folderDepth:I
    .restart local v24       #folderItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v25       #folder_item_name:Ljava/lang/String;
    :cond_219
    const-string v3, "shortcut"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_241

    const-wide/16 v3, 0x0

    cmp-long v3, v22, v3

    if-ltz v3, :cond_241

    .line 814
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v12}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)J

    move-result-wide v27

    .line 815
    .restart local v27       #id:J
    const-wide/16 v3, 0x0

    cmp-long v3, v27, v3

    if-ltz v3, :cond_1f5

    .line 816
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f5

    .line 819
    .end local v27           #id:J
    :cond_241
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Folders can contain only shortcuts"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 827
    .end local v12           #ar:Landroid/content/res/TypedArray;
    .end local v25           #folder_item_name:Ljava/lang/String;
    :cond_249
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_eb

    const-wide/16 v3, 0x0

    cmp-long v3, v22, v3

    if-ltz v3, :cond_eb

    .line 829
    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    #calls: Lcom/android/launcher2/LauncherProvider;->deleteId(Landroid/database/sqlite/SQLiteDatabase;J)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherProvider;->access$100(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 830
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_275

    .line 831
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object/from16 v0, p1

    #calls: Lcom/android/launcher2/LauncherProvider;->deleteId(Landroid/database/sqlite/SQLiteDatabase;J)V
    invoke-static {v0, v3, v4}, Lcom/android/launcher2/LauncherProvider;->access$100(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_275
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_205 .. :try_end_275} :catch_a6
    .catch Ljava/io/IOException; {:try_start_205 .. :try_end_275} :catch_f4
    .catch Ljava/lang/RuntimeException; {:try_start_205 .. :try_end_275} :catch_1f9

    .line 833
    :cond_275
    const/4 v15, 0x0

    goto/16 :goto_eb
.end method

.method private normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 16
    .parameter "db"

    .prologue
    .line 543
    const-string v11, "Launcher.LauncherProvider"

    const-string v12, "normalizing icons"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 546
    const/4 v1, 0x0

    .line 547
    .local v1, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 549
    .local v10, update:Landroid/database/sqlite/SQLiteStatement;
    const/4 v9, 0x0

    .line 550
    .local v9, logged:Z
    :try_start_d
    const-string v11, "UPDATE favorites SET icon=? WHERE _id=?"

    invoke-virtual {p1, v11}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 553
    const-string v11, "SELECT _id, icon FROM favorites WHERE iconType=1"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 556
    const-string v11, "_id"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 557
    .local v8, idIndex:I
    const-string v11, "icon"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 559
    .local v5, iconIndex:I
    :cond_26
    :goto_26
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_a3

    .line 560
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 561
    .local v6, id:J
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_b4
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_33} :catch_8d

    move-result-object v2

    .line 563
    .local v2, data:[B
    const/4 v11, 0x0

    :try_start_35
    array-length v12, v2

    invoke-static {v2, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    iget-object v12, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/android/launcher2/Utilities;->resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 566
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_26

    .line 567
    const/4 v11, 0x1

    invoke-virtual {v10, v11, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 568
    invoke-static {v0}, Lcom/android/launcher2/ItemInfo;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 569
    if-eqz v2, :cond_53

    .line 570
    const/4 v11, 0x2

    invoke-virtual {v10, v11, v2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 571
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 573
    :cond_53
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_56
    .catchall {:try_start_35 .. :try_end_56} :catchall_b4
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_56} :catch_57
    .catch Landroid/database/SQLException; {:try_start_35 .. :try_end_56} :catch_8d

    goto :goto_26

    .line 575
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_57
    move-exception v3

    .line 576
    .local v3, e:Ljava/lang/Exception;
    if-nez v9, :cond_74

    .line 577
    :try_start_5a
    const-string v11, "Launcher.LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed normalizing icon "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    :goto_72
    const/4 v9, 0x1

    goto :goto_26

    .line 579
    :cond_74
    const-string v11, "Launcher.LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Also failed normalizing icon "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_5a .. :try_end_8c} :catchall_b4
    .catch Landroid/database/SQLException; {:try_start_5a .. :try_end_8c} :catch_8d

    goto :goto_72

    .line 585
    .end local v2           #data:[B
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #iconIndex:I
    .end local v6           #id:J
    .end local v8           #idIndex:I
    :catch_8d
    move-exception v4

    .line 586
    .local v4, ex:Landroid/database/SQLException;
    :try_start_8e
    const-string v11, "Launcher.LauncherProvider"

    const-string v12, "Problem while allocating appWidgetIds for existing widgets"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_95
    .catchall {:try_start_8e .. :try_end_95} :catchall_b4

    .line 588
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 589
    if-eqz v10, :cond_9d

    .line 590
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 592
    :cond_9d
    if-eqz v1, :cond_a2

    .line 593
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 596
    .end local v4           #ex:Landroid/database/SQLException;
    :cond_a2
    :goto_a2
    return-void

    .line 584
    .restart local v5       #iconIndex:I
    .restart local v8       #idIndex:I
    :cond_a3
    :try_start_a3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_b4
    .catch Landroid/database/SQLException; {:try_start_a3 .. :try_end_a6} :catch_8d

    .line 588
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 589
    if-eqz v10, :cond_ae

    .line 590
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 592
    :cond_ae
    if-eqz v1, :cond_a2

    .line 593
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a2

    .line 588
    .end local v5           #iconIndex:I
    .end local v8           #idIndex:I
    :catchall_b4
    move-exception v11

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 589
    if-eqz v10, :cond_bd

    .line 590
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 592
    :cond_bd
    if-eqz v1, :cond_c2

    .line 593
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c2
    throw v11
.end method

.method private sendAppWidgetResetNotify()V
    .registers 4

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 234
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 235
    return-void
.end method

.method private updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 26
    .parameter "db"

    .prologue
    .line 476
    const/4 v11, 0x0

    .line 477
    .local v11, c:Landroid/database/Cursor;
    const-string v3, "itemType"

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v7, 0x1

    aput v7, v4, v5

    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v6

    .line 480
    .local v6, selectWhere:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 483
    :try_start_11
    const-string v4, "favorites"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v3

    const/4 v3, 0x1

    const-string v7, "intent"

    aput-object v7, v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 488
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 489
    .local v23, values:Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 490
    .local v17, idIndex:I
    const-string v3, "intent"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 492
    .local v19, intentIndex:I
    :cond_3b
    :goto_3b
    if-eqz v11, :cond_111

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_111

    .line 493
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 494
    .local v15, favoriteId:J
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4e
    .catchall {:try_start_11 .. :try_end_4e} :catchall_107
    .catch Landroid/database/SQLException; {:try_start_11 .. :try_end_4e} :catch_eb

    move-result-object v20

    .line 495
    .local v20, intentUri:Ljava/lang/String;
    if-eqz v20, :cond_3b

    .line 497
    const/4 v3, 0x0

    :try_start_52
    move-object/from16 v0, v20

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v18

    .line 498
    .local v18, intent:Landroid/content/Intent;
    const-string v3, "Home"

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    .line 500
    .local v22, uri:Landroid/net/Uri;
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 501
    .local v12, data:Ljava/lang/String;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    const-string v3, "content://contacts/people/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_85

    const-string v3, "content://com.android.contacts/contacts/lookup/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 505
    :cond_85
    new-instance v18, Landroid/content/Intent;

    .end local v18           #intent:Landroid/content/Intent;
    const-string v3, "com.android.contacts.action.QUICK_CONTACT"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .restart local v18       #intent:Landroid/content/Intent;
    const/high16 v3, 0x1420

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 510
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 511
    const-string v3, "mode"

    const/4 v4, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 512
    const-string v4, "exclude_mimes"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    .line 515
    const-string v3, "intent"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v0, v15

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 518
    .local v21, updateWhere:Ljava/lang/String;
    const-string v3, "favorites"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_df
    .catchall {:try_start_52 .. :try_end_df} :catchall_107
    .catch Ljava/lang/RuntimeException; {:try_start_52 .. :try_end_df} :catch_e1
    .catch Ljava/net/URISyntaxException; {:try_start_52 .. :try_end_df} :catch_fd
    .catch Landroid/database/SQLException; {:try_start_52 .. :try_end_df} :catch_eb

    goto/16 :goto_3b

    .line 520
    .end local v12           #data:Ljava/lang/String;
    .end local v18           #intent:Landroid/content/Intent;
    .end local v21           #updateWhere:Ljava/lang/String;
    .end local v22           #uri:Landroid/net/Uri;
    :catch_e1
    move-exception v14

    .line 521
    .local v14, ex:Ljava/lang/RuntimeException;
    :try_start_e2
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Problem upgrading shortcut"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e9
    .catchall {:try_start_e2 .. :try_end_e9} :catchall_107
    .catch Landroid/database/SQLException; {:try_start_e2 .. :try_end_e9} :catch_eb

    goto/16 :goto_3b

    .line 529
    .end local v14           #ex:Ljava/lang/RuntimeException;
    .end local v15           #favoriteId:J
    .end local v17           #idIndex:I
    .end local v19           #intentIndex:I
    .end local v20           #intentUri:Ljava/lang/String;
    .end local v23           #values:Landroid/content/ContentValues;
    :catch_eb
    move-exception v14

    .line 530
    .local v14, ex:Landroid/database/SQLException;
    :try_start_ec
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Problem while upgrading contacts"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f3
    .catchall {:try_start_ec .. :try_end_f3} :catchall_107

    .line 531
    const/4 v3, 0x0

    .line 533
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 534
    if-eqz v11, :cond_fc

    .line 535
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 539
    .end local v14           #ex:Landroid/database/SQLException;
    :cond_fc
    :goto_fc
    return v3

    .line 522
    .restart local v15       #favoriteId:J
    .restart local v17       #idIndex:I
    .restart local v19       #intentIndex:I
    .restart local v20       #intentUri:Ljava/lang/String;
    .restart local v23       #values:Landroid/content/ContentValues;
    :catch_fd
    move-exception v13

    .line 523
    .local v13, e:Ljava/net/URISyntaxException;
    :try_start_fe
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Problem upgrading shortcut"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_105
    .catchall {:try_start_fe .. :try_end_105} :catchall_107
    .catch Landroid/database/SQLException; {:try_start_fe .. :try_end_105} :catch_eb

    goto/16 :goto_3b

    .line 533
    .end local v13           #e:Ljava/net/URISyntaxException;
    .end local v15           #favoriteId:J
    .end local v17           #idIndex:I
    .end local v19           #intentIndex:I
    .end local v20           #intentUri:Ljava/lang/String;
    .end local v23           #values:Landroid/content/ContentValues;
    :catchall_107
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 534
    if-eqz v11, :cond_110

    .line 535
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_110
    throw v3

    .line 528
    .restart local v17       #idIndex:I
    .restart local v19       #intentIndex:I
    .restart local v23       #values:Landroid/content/ContentValues;
    :cond_111
    :try_start_111
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_114
    .catchall {:try_start_111 .. :try_end_114} :catchall_107
    .catch Landroid/database/SQLException; {:try_start_111 .. :try_end_114} :catch_eb

    .line 533
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 534
    if-eqz v11, :cond_11c

    .line 535
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 539
    :cond_11c
    const/4 v3, 0x1

    goto :goto_fc
.end method


# virtual methods
.method public generateNewId()J
    .registers 5

    .prologue
    .line 604
    iget-wide v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    .line 605
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_10
    iget-wide v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxId:J

    .line 608
    iget-wide v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxId:J

    return-wide v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .parameter "db"

    .prologue
    .line 241
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxId:J

    .line 243
    const-string v2, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 265
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v2, :cond_15

    .line 266
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 267
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->sendAppWidgetResetNotify()V

    .line 270
    :cond_15
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 274
    :try_start_1b
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.telespree.android.client"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_27} :catch_38

    .line 275
    const/4 v1, 0x1

    .line 279
    .local v1, telespreeActivationVirginMobileInstalled:Z
    :goto_28
    if-eqz v1, :cond_3b

    .line 280
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Loading favorites for VIRGIN MOBILE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const v2, 0x7f050001

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;I)I

    .line 288
    .end local v1           #telespreeActivationVirginMobileInstalled:Z
    :cond_37
    :goto_37
    return-void

    .line 276
    :catch_38
    move-exception v0

    .line 277
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1       #telespreeActivationVirginMobileInstalled:Z
    goto :goto_28

    .line 284
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3b
    const/high16 v2, 0x7f05

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;I)I

    goto :goto_37
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 11
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/16 v6, 0x9

    const/4 v4, 0x3

    .line 388
    move v1, p2

    .line 389
    .local v1, version:I
    if-ge v1, v4, :cond_1a

    .line 391
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 394
    :try_start_9
    const-string v2, "ALTER TABLE favorites ADD COLUMN appWidgetId INTEGER NOT NULL DEFAULT -1;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_7e
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_11} :catch_70

    .line 397
    const/4 v1, 0x3

    .line 402
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 406
    :goto_15
    if-ne v1, v4, :cond_1a

    .line 407
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 411
    :cond_1a
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1e

    .line 412
    const/4 v1, 0x4

    .line 423
    :cond_1e
    const/4 v2, 0x6

    if-ge v1, v2, :cond_36

    .line 425
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 427
    :try_start_24
    const-string v2, "UPDATE favorites SET screen=(screen + 1);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_91
    .catch Landroid/database/SQLException; {:try_start_24 .. :try_end_2c} :catch_83

    .line 433
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 437
    :goto_2f
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 438
    const/4 v1, 0x6

    .line 442
    :cond_36
    const/4 v2, 0x7

    if-ge v1, v2, :cond_3d

    .line 444
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 445
    const/4 v1, 0x7

    .line 448
    :cond_3d
    const/16 v2, 0x8

    if-ge v1, v2, :cond_46

    .line 452
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 453
    const/16 v1, 0x8

    .line 456
    :cond_46
    if-ge v1, v6, :cond_5e

    .line 459
    iget-wide v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_56

    .line 460
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxId:J

    .line 464
    :cond_56
    const v2, 0x7f050002

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;I)I

    .line 465
    const/16 v1, 0x9

    .line 468
    :cond_5e
    if-eq v1, v6, :cond_6f

    .line 469
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Destroying all old data."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v2, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 473
    :cond_6f
    return-void

    .line 398
    :catch_70
    move-exception v0

    .line 400
    .local v0, ex:Landroid/database/SQLException;
    :try_start_71
    const-string v2, "Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_7e

    .line 402
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_15

    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_7e
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 429
    :catch_83
    move-exception v0

    .line 431
    .restart local v0       #ex:Landroid/database/SQLException;
    :try_start_84
    const-string v2, "Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8d
    .catchall {:try_start_84 .. :try_end_8d} :catchall_91

    .line 433
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2f

    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_91
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method
