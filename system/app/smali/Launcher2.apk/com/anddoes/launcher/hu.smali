.class final Lcom/anddoes/launcher/hu;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/appwidget/AppWidgetHost;

.field private c:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    .line 222
    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 219
    iput-wide v3, p0, Lcom/anddoes/launcher/hu;->c:J

    .line 223
    iput-object p1, p0, Lcom/anddoes/launcher/hu;->a:Landroid/content/Context;

    .line 224
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/16 v1, 0x400

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/anddoes/launcher/hu;->b:Landroid/appwidget/AppWidgetHost;

    .line 228
    iget-wide v0, p0, Lcom/anddoes/launcher/hu;->c:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_27

    .line 229
    invoke-virtual {p0}, Lcom/anddoes/launcher/hu;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/hu;->c(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anddoes/launcher/hu;->c:J

    .line 231
    :cond_27
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .registers 24
    .parameter
    .parameter

    .prologue
    .line 345
    const-string v2, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 346
    const-string v2, "intent"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 347
    const-string v2, "title"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 348
    const-string v2, "iconType"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 349
    const-string v2, "icon"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 350
    const-string v2, "iconPackage"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 351
    const-string v2, "iconResource"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 352
    const-string v2, "container"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 353
    const-string v2, "itemType"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 354
    const-string v2, "screen"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 355
    const-string v2, "cellX"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 356
    const-string v2, "cellY"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 357
    const-string v2, "uri"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 358
    const-string v2, "displayMode"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 360
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v0, v2, [Landroid/content/ContentValues;

    move-object/from16 v18, v0

    .line 361
    const/4 v2, 0x0

    .line 362
    :goto_79
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_90

    .line 382
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 383
    const/4 v2, 0x0

    .line 385
    :try_start_83
    move-object/from16 v0, v18

    array-length v4, v0

    .line 386
    const/4 v3, 0x0

    :goto_87
    if-lt v3, v4, :cond_1a7

    .line 393
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8c
    .catchall {:try_start_83 .. :try_end_8c} :catchall_1c3

    .line 395
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 398
    :goto_8f
    return v2

    .line 363
    :cond_90
    new-instance v19, Landroid/content/ContentValues;

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 364
    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 365
    const-string v3, "intent"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v3, "title"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v3, "iconType"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    const-string v3, "icon"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 369
    const-string v3, "iconPackage"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v3, "iconResource"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v3, "container"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 372
    const-string v3, "itemType"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    const-string v3, "appWidgetId"

    const/16 v20, -0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 374
    const-string v3, "screen"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    const-string v3, "cellX"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 376
    const-string v3, "cellY"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 377
    const-string v3, "uri"

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v3, "displayMode"

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 379
    add-int/lit8 v3, v2, 0x1

    aput-object v19, v18, v2

    move v2, v3

    goto/16 :goto_79

    .line 387
    :cond_1a7
    :try_start_1a7
    const-string v5, "favorites"

    aget-object v6, v18, v3

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/anddoes/launcher/LauncherProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1b0
    .catchall {:try_start_1a7 .. :try_end_1b0} :catchall_1c3

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_1bd

    .line 395
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 388
    const/4 v2, 0x0

    goto/16 :goto_8f

    .line 390
    :cond_1bd
    add-int/lit8 v2, v2, 0x1

    .line 386
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_87

    .line 394
    :catchall_1c3
    move-exception v2

    .line 395
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 396
    throw v2
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)J
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1059
    iget-object v2, p0, Lcom/anddoes/launcher/hu;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1061
    const/16 v2, 0x8

    invoke-virtual {p3, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 1062
    const/16 v2, 0x9

    invoke-virtual {p3, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 1065
    const/4 v2, 0x0

    .line 1067
    const/16 v3, 0xa

    :try_start_19
    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1068
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_21
    .catch Ljava/net/URISyntaxException; {:try_start_19 .. :try_end_21} :catch_2e

    move-result-object v7

    .line 1074
    if-eqz v5, :cond_26

    if-nez v6, :cond_44

    .line 1075
    :cond_26
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Shortcut is missing title or icon resource ID"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_2d
    :goto_2d
    return-wide v0

    .line 1070
    :catch_2e
    move-exception v3

    const-string v3, "Launcher.LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Shortcut has malformed uri: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 1079
    :cond_44
    invoke-virtual {p0}, Lcom/anddoes/launcher/hu;->a()J

    move-result-wide v2

    .line 1080
    const/high16 v8, 0x1000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1081
    const-string v8, "intent"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    const-string v7, "title"

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    const-string v6, "itemType"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1084
    const-string v6, "spanX"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1085
    const-string v6, "spanY"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1086
    const-string v6, "iconType"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1087
    const-string v6, "iconPackage"

    iget-object v7, p0, Lcom/anddoes/launcher/hu;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const-string v6, "iconResource"

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    const-string v4, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1091
    const-string v4, "favorites"

    invoke-static {p1, v4, p2}, Lcom/anddoes/launcher/LauncherProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2d

    move-wide v0, v2

    .line 1094
    goto :goto_2d
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, -0x1

    .line 871
    .line 872
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 873
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 875
    const-string v0, "com.android.mms.ui.ConversationList"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 877
    const-string v4, "com.android.mms.ui.ConversationComposer"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/anddoes/launcher/hu;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J

    move-result-wide v0

    .line 878
    cmp-long v2, v0, v8

    if-eqz v2, :cond_24

    .line 909
    :cond_23
    :goto_23
    return-wide v0

    :cond_24
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v7

    move-object v5, p4

    move-object v6, p5

    .line 884
    invoke-direct/range {v0 .. v6}, Lcom/anddoes/launcher/hu;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J

    move-result-wide v0

    .line 885
    cmp-long v2, v0, v8

    if-nez v2, :cond_4c

    const-string v2, "com.google.android."

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 886
    const-string v0, "com.google.android."

    const-string v1, "com.android."

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v7

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/anddoes/launcher/hu;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J

    move-result-wide v0

    .line 890
    :cond_4c
    cmp-long v2, v0, v8

    if-nez v2, :cond_65

    const-string v2, "com.android.camera.Camera"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 891
    const-string v3, "com.google.android.gallery3d"

    const-string v4, "com.android.camera.CameraLauncher"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/anddoes/launcher/hu;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J

    move-result-wide v0

    .line 895
    :cond_65
    cmp-long v2, v0, v8

    if-nez v2, :cond_7e

    const-string v2, "com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 896
    const-string v3, "com.android.htccontacts"

    const-string v4, "com.android.htccontacts.DialerTabActivity"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/anddoes/launcher/hu;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J

    move-result-wide v0

    .line 898
    :cond_7e
    cmp-long v2, v0, v8

    if-nez v2, :cond_97

    const-string v2, "com.android.contacts.activities.PeopleActivity"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 899
    const-string v3, "com.android.htccontacts"

    const-string v4, "com.android.htccontacts.BrowseLayerCarouselActivity"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/anddoes/launcher/hu;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J

    move-result-wide v0

    .line 903
    :cond_97
    cmp-long v2, v0, v8

    if-nez v2, :cond_b0

    const-string v2, "com.android.camera.Camera"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 904
    const-string v3, "com.sec.android.app.camera"

    const-string v4, "com.sec.android.app.camera.Camera"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/anddoes/launcher/hu;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J

    move-result-wide v0

    .line 906
    :cond_b0
    cmp-long v2, v0, v8

    if-nez v2, :cond_23

    const-string v2, "com.android.gallery3d.app.Gallery"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 907
    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.Gallery"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/anddoes/launcher/hu;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J

    move-result-wide v0

    goto/16 :goto_23
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 915
    .line 920
    :try_start_2
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p3, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const/4 v1, 0x0

    invoke-virtual {p5, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_b} :catch_6a

    move-result-object v1

    move-object v4, v0

    move-object v5, v1

    .line 928
    :goto_e
    :try_start_e
    invoke-virtual {p0}, Lcom/anddoes/launcher/hu;->a()J
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_11} :catch_85

    move-result-wide v0

    .line 929
    :try_start_12
    invoke-virtual {p6, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 930
    const/high16 v4, 0x1020

    invoke-virtual {p6, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 932
    const-string v4, "intent"

    const/4 v6, 0x0

    invoke-virtual {p6, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string v4, "title"

    invoke-virtual {v5, p5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const-string v4, "itemType"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 935
    const-string v4, "spanX"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 936
    const-string v4, "spanY"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 937
    const-string v4, "_id"

    invoke-virtual {p0}, Lcom/anddoes/launcher/hu;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 938
    const-string v4, "favorites"

    invoke-static {p1, v4, p2}, Lcom/anddoes/launcher/LauncherProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_61
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_61} :catch_a8

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_69

    move-wide v0, v2

    .line 945
    :cond_69
    :goto_69
    return-wide v0

    .line 923
    :catch_6a
    move-exception v0

    .line 924
    const/4 v0, 0x1

    :try_start_6c
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 923
    invoke-virtual {p5, v0}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 925
    new-instance v0, Landroid/content/ComponentName;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-direct {v0, v1, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const/4 v1, 0x0

    invoke-virtual {p5, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_81
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6c .. :try_end_81} :catch_85

    move-result-object v1

    move-object v4, v0

    move-object v5, v1

    goto :goto_e

    .line 941
    :catch_85
    move-exception v0

    move-object v8, v0

    move-wide v0, v2

    move-object v2, v8

    .line 942
    :goto_89
    const-string v3, "Launcher.LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to add favorite: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 943
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 942
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_69

    .line 941
    :catch_a8
    move-exception v2

    goto :goto_89
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 286
    .line 288
    const-string v0, "content://settings/old_favorites?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 290
    iget-object v0, p0, Lcom/anddoes/launcher/hu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 294
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_12
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_34

    move-result-object v2

    move-object v3, v2

    .line 300
    :goto_17
    if-eqz v3, :cond_3e

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3e

    .line 302
    :try_start_1f
    invoke-static {p1, v3}, Lcom/anddoes/launcher/hu;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_39

    move-result v2

    if-lez v2, :cond_37

    const/4 v2, 0x1

    .line 304
    :goto_26
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 307
    if-eqz v2, :cond_2e

    .line 308
    invoke-virtual {v0, v1, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 312
    :cond_2e
    :goto_2e
    if-eqz v2, :cond_33

    .line 315
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/hu;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 318
    :cond_33
    return v2

    :catch_34
    move-exception v2

    move-object v3, v7

    goto :goto_17

    :cond_37
    move v2, v6

    .line 302
    goto :goto_26

    .line 303
    :catchall_39
    move-exception v0

    .line 304
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 305
    throw v0

    :cond_3e
    move v2, v6

    goto :goto_2e
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1034
    const/4 v1, 0x0

    .line 1035
    iget-object v0, p0, Lcom/anddoes/launcher/hu;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 1038
    :try_start_7
    iget-object v0, p0, Lcom/anddoes/launcher/hu;->b:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v3

    .line 1040
    const-string v0, "itemType"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1041
    const-string v0, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1042
    const-string v0, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1043
    const-string v0, "appWidgetId"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1044
    const-string v0, "_id"

    invoke-virtual {p0}, Lcom/anddoes/launcher/hu;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1045
    const-string v0, "favorites"

    invoke-static {p1, v0, p2}, Lcom/anddoes/launcher/LauncherProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_44
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_44} :catch_49

    .line 1047
    const/4 v0, 0x1

    .line 1049
    :try_start_45
    invoke-virtual {v2, v3, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_48} :catch_55

    .line 1054
    :goto_48
    return v0

    .line 1050
    :catch_49
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    .line 1051
    :goto_4d
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Problem allocating appWidgetId"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    .line 1050
    :catch_55
    move-exception v1

    goto :goto_4d
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1001
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1002
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1004
    if-eqz v2, :cond_e

    if-nez v4, :cond_f

    .line 1029
    :cond_e
    :goto_e
    return v0

    .line 1009
    :cond_f
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    const/4 v5, 0x0

    :try_start_15
    invoke-virtual {p4, v3, v5}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_2c

    .line 1023
    :goto_18
    if-eqz v1, :cond_e

    .line 1024
    const/4 v1, 0x6

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 1025
    const/4 v1, 0x7

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1026
    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/hu;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v0

    goto :goto_e

    .line 1013
    :catch_2c
    move-exception v3

    .line 1014
    new-array v3, v1, [Ljava/lang/String;

    aput-object v2, v3, v0

    .line 1013
    invoke-virtual {p4, v3}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1015
    new-instance v3, Landroid/content/ComponentName;

    aget-object v2, v2, v0

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const/4 v2, 0x0

    :try_start_3d
    invoke-virtual {p4, v3, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_18

    .line 1019
    :catch_41
    move-exception v1

    move v1, v0

    goto :goto_18
.end method

.method static synthetic a(Lcom/anddoes/launcher/hu;Ljava/io/File;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 321
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/anddoes/launcher/hu;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/anddoes/launcher/hu;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0}, Lcom/anddoes/launcher/hu;->close()V

    invoke-static {v1, p1}, Lcom/anddoes/launcher/ia;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    :cond_1e
    return v0
.end method

.method private b()Landroid/content/ComponentName;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 963
    iget-object v0, p0, Lcom/anddoes/launcher/hu;->a:Landroid/content/Context;

    const-string v2, "search"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 962
    invoke-virtual {v0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 965
    if-nez v0, :cond_13

    move-object v0, v1

    .line 966
    :cond_12
    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/anddoes/launcher/hu;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_25

    move-object v0, v1

    goto :goto_12

    :cond_25
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v0, 0x0

    move v2, v0

    :goto_2b
    if-lt v2, v5, :cond_2f

    move-object v0, v1

    goto :goto_12

    :cond_2f
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    :cond_43
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2b
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 13
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 494
    .line 495
    const-string v0, "itemType"

    .line 496
    new-array v1, v8, [I

    aput v8, v1, v9

    .line 495
    invoke-static {v0, v1}, Lcom/anddoes/launcher/LauncherProvider;->a(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v3

    .line 498
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 501
    :try_start_10
    const-string v1, "favorites"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "intent"

    aput-object v4, v2, v0

    .line 502
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 501
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_fa
    .catch Landroid/database/SQLException; {:try_start_10 .. :try_end_27} :catch_fd

    move-result-object v1

    .line 506
    :try_start_28
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 507
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 508
    const-string v0, "intent"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 510
    :cond_39
    :goto_39
    if-eqz v1, :cond_41

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 546
    :cond_41
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_f0
    .catch Landroid/database/SQLException; {:try_start_28 .. :try_end_44} :catch_d3

    .line 551
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 552
    if-eqz v1, :cond_4c

    .line 553
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4c
    move v0, v8

    .line 557
    :goto_4d
    return v0

    .line 511
    :cond_4e
    :try_start_4e
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 512
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_f0
    .catch Landroid/database/SQLException; {:try_start_4e .. :try_end_55} :catch_d3

    move-result-object v0

    .line 513
    if-eqz v0, :cond_39

    .line 515
    const/4 v7, 0x0

    :try_start_59
    invoke-static {v0, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 516
    const-string v7, "Home"

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 518
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 519
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 520
    const-string v0, "content://contacts/people/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8a

    .line 521
    const-string v0, "content://com.android.contacts/contacts/lookup/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 523
    :cond_8a
    new-instance v0, Landroid/content/Intent;

    const-string v10, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    const/high16 v10, 0x1420

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 528
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 529
    const-string v7, "mode"

    const/4 v10, 0x3

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 530
    const-string v7, "exclude_mimes"

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 533
    const-string v7, "intent"

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "_id="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v2, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c7
    .catchall {:try_start_59 .. :try_end_c7} :catchall_f0
    .catch Ljava/lang/RuntimeException; {:try_start_59 .. :try_end_c7} :catch_c9
    .catch Ljava/net/URISyntaxException; {:try_start_59 .. :try_end_c7} :catch_e6
    .catch Landroid/database/SQLException; {:try_start_59 .. :try_end_c7} :catch_d3

    goto/16 :goto_39

    .line 538
    :catch_c9
    move-exception v0

    .line 539
    :try_start_ca
    const-string v5, "Launcher.LauncherProvider"

    const-string v6, "Problem upgrading shortcut"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d1
    .catchall {:try_start_ca .. :try_end_d1} :catchall_f0
    .catch Landroid/database/SQLException; {:try_start_ca .. :try_end_d1} :catch_d3

    goto/16 :goto_39

    .line 547
    :catch_d3
    move-exception v0

    .line 548
    :goto_d4
    :try_start_d4
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Problem while upgrading contacts"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_db
    .catchall {:try_start_d4 .. :try_end_db} :catchall_f0

    .line 551
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 552
    if-eqz v1, :cond_e3

    .line 553
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e3
    move v0, v9

    .line 549
    goto/16 :goto_4d

    .line 540
    :catch_e6
    move-exception v0

    .line 541
    :try_start_e7
    const-string v5, "Launcher.LauncherProvider"

    const-string v6, "Problem upgrading shortcut"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ee
    .catchall {:try_start_e7 .. :try_end_ee} :catchall_f0
    .catch Landroid/database/SQLException; {:try_start_e7 .. :try_end_ee} :catch_d3

    goto/16 :goto_39

    .line 550
    :catchall_f0
    move-exception v0

    .line 551
    :goto_f1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 552
    if-eqz v1, :cond_f9

    .line 553
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 555
    :cond_f9
    throw v0

    .line 550
    :catchall_fa
    move-exception v0

    move-object v1, v10

    goto :goto_f1

    .line 547
    :catch_fd
    move-exception v0

    move-object v1, v10

    goto :goto_d4
.end method

.method static synthetic b(Lcom/anddoes/launcher/hu;Ljava/io/File;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 331
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/anddoes/launcher/hu;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/anddoes/launcher/hu;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p0}, Lcom/anddoes/launcher/hu;->close()V

    invoke-static {p1, v1}, Lcom/anddoes/launcher/ia;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/anddoes/launcher/hu;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_27
    return v0
.end method

.method private static c(Landroid/database/sqlite/SQLiteDatabase;)J
    .registers 6
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 630
    const-string v0, "SELECT MAX(_id) FROM favorites"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 635
    if-eqz v4, :cond_28

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 636
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 638
    :goto_16
    if-eqz v4, :cond_1b

    .line 639
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 642
    :cond_1b
    cmp-long v2, v0, v2

    if-nez v2, :cond_27

    .line 643
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: could not query max id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_27
    return-wide v0

    :cond_28
    move-wide v0, v2

    goto :goto_16
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 12
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 654
    iget-object v0, p0, Lcom/anddoes/launcher/hu;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v9

    .line 655
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_10a

    .line 661
    const-string v1, "itemType"

    invoke-static {v1, v0}, Lcom/anddoes/launcher/LauncherProvider;->a(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v3

    .line 665
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 668
    :try_start_16
    const-string v1, "favorites"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "itemType"

    aput-object v4, v2, v0

    .line 669
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 668
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2d
    .catchall {:try_start_16 .. :try_end_2d} :catchall_103
    .catch Landroid/database/SQLException; {:try_start_16 .. :try_end_2d} :catch_106

    move-result-object v1

    .line 673
    :try_start_2e
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 674
    :cond_33
    :goto_33
    if-eqz v1, :cond_3b

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_47

    .line 719
    :cond_3b
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_da
    .catch Landroid/database/SQLException; {:try_start_2e .. :try_end_3e} :catch_b4

    .line 723
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 724
    if-eqz v1, :cond_46

    .line 725
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 728
    :cond_46
    :goto_46
    return-void

    .line 675
    :cond_47
    const/4 v0, 0x0

    :try_start_48
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 676
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_da
    .catch Landroid/database/SQLException; {:try_start_48 .. :try_end_50} :catch_b4

    move-result v0

    .line 680
    :try_start_51
    iget-object v5, p0, Lcom/anddoes/launcher/hu;->b:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v5

    .line 686
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 687
    const-string v6, "itemType"

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 688
    const-string v6, "appWidgetId"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 691
    const/16 v6, 0x3e9

    if-ne v0, v6, :cond_c5

    .line 692
    const-string v6, "spanX"

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 693
    const-string v6, "spanY"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 699
    :goto_85
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 700
    const-string v4, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 702
    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_e4

    .line 704
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.alarmclock"

    .line 705
    const-string v4, "com.android.alarmclock.AnalogAppWidgetProvider"

    .line 704
    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-virtual {v9, v5, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_aa
    .catchall {:try_start_51 .. :try_end_aa} :catchall_da
    .catch Ljava/lang/RuntimeException; {:try_start_51 .. :try_end_aa} :catch_ab
    .catch Landroid/database/SQLException; {:try_start_51 .. :try_end_aa} :catch_b4

    goto :goto_33

    .line 714
    :catch_ab
    move-exception v0

    .line 715
    :try_start_ac
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Problem allocating appWidgetId"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b3
    .catchall {:try_start_ac .. :try_end_b3} :catchall_da
    .catch Landroid/database/SQLException; {:try_start_ac .. :try_end_b3} :catch_b4

    goto :goto_33

    .line 720
    :catch_b4
    move-exception v0

    .line 721
    :goto_b5
    :try_start_b5
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Problem while allocating appWidgetIds for existing widgets"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bc
    .catchall {:try_start_b5 .. :try_end_bc} :catchall_da

    .line 723
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 724
    if-eqz v1, :cond_46

    .line 725
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_46

    .line 695
    :cond_c5
    :try_start_c5
    const-string v6, "spanX"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 696
    const-string v6, "spanY"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_d9
    .catchall {:try_start_c5 .. :try_end_d9} :catchall_da
    .catch Ljava/lang/RuntimeException; {:try_start_c5 .. :try_end_d9} :catch_ab
    .catch Landroid/database/SQLException; {:try_start_c5 .. :try_end_d9} :catch_b4

    goto :goto_85

    .line 722
    :catchall_da
    move-exception v0

    .line 723
    :goto_db
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 724
    if-eqz v1, :cond_e3

    .line 725
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 727
    :cond_e3
    throw v0

    .line 706
    :cond_e4
    const/16 v3, 0x3ea

    if-ne v0, v3, :cond_f6

    .line 708
    :try_start_e8
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.camera"

    .line 709
    const-string v4, "com.android.camera.PhotoAppWidgetProvider"

    .line 708
    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-virtual {v9, v5, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    goto/16 :goto_33

    .line 710
    :cond_f6
    const/16 v3, 0x3e9

    if-ne v0, v3, :cond_33

    .line 712
    invoke-direct {p0}, Lcom/anddoes/launcher/hu;->b()Landroid/content/ComponentName;

    move-result-object v0

    .line 711
    invoke-virtual {v9, v5, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_101
    .catchall {:try_start_e8 .. :try_end_101} :catchall_da
    .catch Ljava/lang/RuntimeException; {:try_start_e8 .. :try_end_101} :catch_ab
    .catch Landroid/database/SQLException; {:try_start_e8 .. :try_end_101} :catch_b4

    goto/16 :goto_33

    .line 722
    :catchall_103
    move-exception v0

    move-object v1, v8

    goto :goto_db

    .line 720
    :catch_106
    move-exception v0

    move-object v1, v8

    goto :goto_b5

    .line 655
    nop

    :array_10a
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0xeat 0x3t 0x0t 0x0t
        0xe9t 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 24
    .parameter

    .prologue
    .line 737
    new-instance v8, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v8, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 738
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 741
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/hu;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 742
    const/4 v15, 0x0

    .line 744
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/hu;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v18

    .line 745
    invoke-static/range {v18 .. v18}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v19

    .line 746
    const-string v3, "favorites"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/anddoes/launcher/lz;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 748
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v20

    .line 752
    :cond_39
    :goto_39
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_48

    .line 753
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move/from16 v0, v20

    if-le v4, v0, :cond_28f

    :cond_48
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4d

    move v3, v15

    .line 866
    :goto_4c
    return v3

    .line 755
    :cond_4d
    const/4 v4, 0x2

    if-ne v3, v4, :cond_39

    .line 756
    const/4 v3, 0x0

    .line 760
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 762
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/anddoes/launcher/hu;->a:Landroid/content/Context;

    sget-object v9, Lcom/anddoes/launcher/kd;->c:[I

    move-object/from16 v0, v19

    invoke-virtual {v6, v0, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 764
    const-wide/16 v9, -0x64

    .line 765
    const/4 v11, 0x2

    invoke-virtual {v6, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_77

    .line 766
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 769
    :cond_77
    const/4 v11, 0x3

    invoke-virtual {v6, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 770
    const/4 v12, 0x4

    invoke-virtual {v6, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 771
    const/4 v13, 0x5

    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 776
    const-wide/16 v16, -0x65

    cmp-long v14, v9, v16

    if-nez v14, :cond_96

    .line 777
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    invoke-static {}, Lcom/anddoes/launcher/Hotseat;->f()Z

    .line 778
    :cond_96
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 782
    const-string v14, "container"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 783
    const-string v9, "screen"

    invoke-virtual {v5, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string v9, "cellX"

    invoke-virtual {v5, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string v9, "cellY"

    invoke-virtual {v5, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v9, "favorite"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_df

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 788
    invoke-direct/range {v3 .. v8}, Lcom/anddoes/launcher/hu;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J

    move-result-wide v3

    .line 789
    const-wide/16 v9, 0x0

    cmp-long v3, v3, v9

    if-ltz v3, :cond_dd

    const/4 v3, 0x1

    .line 855
    :cond_c8
    :goto_c8
    if-eqz v3, :cond_cc

    add-int/lit8 v15, v15, 0x1

    .line 856
    :cond_cc
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_cf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_cf} :catch_d1
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_cf} :catch_24b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_cf} :catch_27b

    goto/16 :goto_39

    .line 858
    :catch_d1
    move-exception v3

    move-object v4, v3

    move v3, v15

    .line 859
    const-string v5, "Launcher.LauncherProvider"

    const-string v6, "Got exception parsing favorites."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4c

    .line 789
    :cond_dd
    const/4 v3, 0x0

    goto :goto_c8

    .line 790
    :cond_df
    :try_start_df
    const-string v9, "search"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f7

    .line 791
    invoke-direct/range {p0 .. p0}, Lcom/anddoes/launcher/hu;->b()Landroid/content/ComponentName;

    move-result-object v12

    const/4 v13, 0x4

    const/4 v14, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v5

    invoke-direct/range {v9 .. v14}, Lcom/anddoes/launcher/hu;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v3

    goto :goto_c8

    .line 792
    :cond_f7
    const-string v9, "clock"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_114

    .line 793
    new-instance v12, Landroid/content/ComponentName;

    const-string v3, "com.android.alarmclock"

    const-string v4, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v12, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x2

    const/4 v14, 0x2

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v5

    invoke-direct/range {v9 .. v14}, Lcom/anddoes/launcher/hu;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v3

    goto :goto_c8

    .line 794
    :cond_114
    const-string v9, "appwidget"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_125

    .line 795
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/anddoes/launcher/hu;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z

    move-result v3

    goto :goto_c8

    .line 796
    :cond_125
    const-string v9, "shortcut"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13f

    .line 797
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/anddoes/launcher/hu;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)J

    move-result-wide v3

    .line 798
    const-wide/16 v9, 0x0

    cmp-long v3, v3, v9

    if-ltz v3, :cond_13d

    const/4 v3, 0x1

    goto :goto_c8

    :cond_13d
    const/4 v3, 0x0

    goto :goto_c8

    .line 799
    :cond_13f
    const-string v9, "folder"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c8

    .line 801
    const/16 v3, 0x9

    const/4 v4, -0x1

    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 802
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1eb

    .line 803
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anddoes/launcher/hu;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 807
    :goto_15d
    const-string v4, "title"

    invoke-virtual {v5, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    const-string v3, "itemType"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "spanX"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "spanY"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/anddoes/launcher/hu;->a()J

    move-result-wide v3

    const-string v9, "_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "favorites"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v5}, Lcom/anddoes/launcher/LauncherProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gtz v9, :cond_1fc

    const-wide/16 v3, -0x1

    move-wide/from16 v16, v3

    .line 809
    :goto_19f
    const-wide/16 v3, 0x0

    cmp-long v3, v16, v3

    if-ltz v3, :cond_1ff

    const/4 v3, 0x1

    .line 811
    :goto_1a6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 813
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v21

    .line 814
    :cond_1af
    :goto_1af
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_201

    .line 815
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    move/from16 v0, v21

    if-gt v10, v0, :cond_201

    .line 846
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_c8

    const-wide/16 v9, 0x0

    cmp-long v9, v16, v9

    if-ltz v9, :cond_c8

    .line 848
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/anddoes/launcher/LauncherProvider;->a(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 849
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1e8

    .line 850
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/anddoes/launcher/LauncherProvider;->a(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 852
    :cond_1e8
    const/4 v3, 0x0

    goto/16 :goto_c8

    .line 805
    :cond_1eb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/hu;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06024e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_15d

    :cond_1fc
    move-wide/from16 v16, v3

    .line 808
    goto :goto_19f

    .line 809
    :cond_1ff
    const/4 v3, 0x0

    goto :goto_1a6

    .line 816
    :cond_201
    const/4 v10, 0x2

    if-ne v9, v10, :cond_1af

    .line 817
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 821
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/anddoes/launcher/hu;->a:Landroid/content/Context;

    .line 822
    sget-object v11, Lcom/anddoes/launcher/kd;->c:[I

    .line 821
    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 823
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 824
    const-string v10, "container"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 826
    const-string v10, "favorite"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_257

    const-wide/16 v10, 0x0

    cmp-long v10, v16, v10

    if-ltz v10, :cond_257

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v5

    move-object v13, v7

    move-object v14, v8

    .line 828
    invoke-direct/range {v9 .. v14}, Lcom/anddoes/launcher/hu;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J

    move-result-wide v9

    .line 829
    const-wide/16 v13, 0x0

    cmp-long v11, v9, v13

    if-ltz v11, :cond_246

    .line 830
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    :cond_246
    :goto_246
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_249
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_df .. :try_end_249} :catch_d1
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_249} :catch_24b
    .catch Ljava/lang/RuntimeException; {:try_start_df .. :try_end_249} :catch_27b

    goto/16 :goto_1af

    .line 860
    :catch_24b
    move-exception v3

    move-object v4, v3

    move v3, v15

    .line 861
    const-string v5, "Launcher.LauncherProvider"

    const-string v6, "Got exception parsing favorites."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4c

    .line 832
    :cond_257
    :try_start_257
    const-string v10, "shortcut"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_287

    const-wide/16 v9, 0x0

    cmp-long v9, v16, v9

    if-ltz v9, :cond_287

    .line 833
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v12}, Lcom/anddoes/launcher/hu;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)J

    move-result-wide v9

    .line 834
    const-wide/16 v13, 0x0

    cmp-long v11, v9, v13

    if-ltz v11, :cond_246

    .line 835
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_27a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_257 .. :try_end_27a} :catch_d1
    .catch Ljava/io/IOException; {:try_start_257 .. :try_end_27a} :catch_24b
    .catch Ljava/lang/RuntimeException; {:try_start_257 .. :try_end_27a} :catch_27b

    goto :goto_246

    .line 862
    :catch_27b
    move-exception v3

    move-object v4, v3

    move v3, v15

    .line 863
    const-string v5, "Launcher.LauncherProvider"

    const-string v6, "Got exception parsing favorites."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4c

    .line 838
    :cond_287
    :try_start_287
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Folders can contain only shortcuts"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_28f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_287 .. :try_end_28f} :catch_d1
    .catch Ljava/io/IOException; {:try_start_287 .. :try_end_28f} :catch_24b
    .catch Ljava/lang/RuntimeException; {:try_start_287 .. :try_end_28f} :catch_27b

    :cond_28f
    move v3, v15

    goto/16 :goto_4c
.end method


# virtual methods
.method public final a()J
    .registers 5

    .prologue
    .line 622
    iget-wide v0, p0, Lcom/anddoes/launcher/hu;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    .line 623
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_10
    iget-wide v0, p0, Lcom/anddoes/launcher/hu;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anddoes/launcher/hu;->c:J

    .line 626
    iget-wide v0, p0, Lcom/anddoes/launcher/hu;->c:J

    return-wide v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 248
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/anddoes/launcher/hu;->c:J

    .line 250
    const-string v0, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/anddoes/launcher/hu;->b:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_1f

    .line 273
    iget-object v0, p0, Lcom/anddoes/launcher/hu;->b:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 274
    iget-object v0, p0, Lcom/anddoes/launcher/hu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/anddoes/launcher/LauncherProvider;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 277
    :cond_1f
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/hu;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 279
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/hu;->e(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 280
    invoke-static {}, Lcom/anddoes/launcher/ki;->a()Lcom/anddoes/launcher/ki;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "itemType"

    const/16 v3, 0x3e9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "container"

    const/16 v3, -0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "screen"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cellX"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cellY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "spanX"

    iget v3, v0, Lcom/anddoes/launcher/ki;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "spanY"

    iget v0, v0, Lcom/anddoes/launcher/ki;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "_id"

    invoke-virtual {p0}, Lcom/anddoes/launcher/hu;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "favorites"

    invoke-static {p1, v0, v1}, Lcom/anddoes/launcher/LauncherProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 282
    :cond_8b
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x9

    const/4 v6, 0x3

    .line 405
    .line 406
    if-ge p2, v6, :cond_154

    .line 408
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 411
    :try_start_b
    const-string v0, "ALTER TABLE favorites ADD COLUMN appWidgetId INTEGER NOT NULL DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_b1
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_13} :catch_a1

    .line 419
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v1, v6

    .line 423
    :goto_17
    if-ne v1, v6, :cond_1c

    .line 424
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/hu;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 428
    :cond_1c
    :goto_1c
    const/4 v0, 0x4

    if-ge v1, v0, :cond_20

    .line 429
    const/4 v1, 0x4

    .line 440
    :cond_20
    const/4 v0, 0x6

    if-ge v1, v0, :cond_151

    .line 442
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 444
    :try_start_26
    const-string v0, "UPDATE favorites SET screen=(screen + 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_c5
    .catch Landroid/database/SQLException; {:try_start_26 .. :try_end_2e} :catch_b6

    .line 450
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 454
    :goto_31
    invoke-static {p1}, Lcom/anddoes/launcher/hu;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_151

    .line 455
    const/4 v0, 0x6

    .line 459
    :goto_38
    const/4 v1, 0x7

    if-ge v0, v1, :cond_3f

    .line 461
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/hu;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 462
    const/4 v0, 0x7

    .line 465
    :cond_3f
    const/16 v1, 0x8

    if-ge v0, v1, :cond_7e

    .line 469
    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "normalizing icons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_4d
    const-string v0, "UPDATE favorites SET icon=? WHERE _id=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_13c
    .catch Landroid/database/SQLException; {:try_start_4d .. :try_end_52} :catch_14e

    move-result-object v1

    :try_start_53
    const-string v0, "SELECT _id, icon FROM favorites WHERE iconType=1"

    const/4 v6, 0x0

    invoke-virtual {p1, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v0, "icon"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    :cond_66
    :goto_66
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_ca

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6f
    .catchall {:try_start_53 .. :try_end_6f} :catchall_14c
    .catch Landroid/database/SQLException; {:try_start_53 .. :try_end_6f} :catch_125

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v1, :cond_77

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_77
    if-eqz v2, :cond_7c

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 470
    :cond_7c
    :goto_7c
    const/16 v0, 0x8

    .line 473
    :cond_7e
    if-ge v0, v3, :cond_8f

    .line 476
    iget-wide v0, p0, Lcom/anddoes/launcher/hu;->c:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_8e

    .line 477
    invoke-static {p1}, Lcom/anddoes/launcher/hu;->c(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anddoes/launcher/hu;->c:J

    :cond_8e
    move v0, v3

    .line 486
    :cond_8f
    if-eq v0, v3, :cond_a0

    .line 487
    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "Destroying all old data."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const-string v0, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/hu;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 491
    :cond_a0
    return-void

    .line 415
    :catch_a1
    move-exception v0

    .line 417
    :try_start_a2
    const-string v1, "Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ab
    .catchall {:try_start_a2 .. :try_end_ab} :catchall_b1

    .line 419
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v1, p2

    goto/16 :goto_17

    .line 418
    :catchall_b1
    move-exception v0

    .line 419
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 420
    throw v0

    .line 446
    :catch_b6
    move-exception v0

    .line 448
    :try_start_b7
    const-string v6, "Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c0
    .catchall {:try_start_b7 .. :try_end_c0} :catchall_c5

    .line 450
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_31

    .line 449
    :catchall_c5
    move-exception v0

    .line 450
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 451
    throw v0

    .line 469
    :cond_ca
    :try_start_ca
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_d1
    .catchall {:try_start_ca .. :try_end_d1} :catchall_14c
    .catch Landroid/database/SQLException; {:try_start_ca .. :try_end_d1} :catch_125

    move-result-object v0

    const/4 v10, 0x0

    :try_start_d3
    array-length v11, v0

    invoke-static {v0, v10, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v10, p0, Lcom/anddoes/launcher/hu;->a:Landroid/content/Context;

    invoke-static {v0, v10}, Lcom/anddoes/launcher/kw;->c(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_66

    const/4 v10, 0x1

    invoke-virtual {v1, v10, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-static {v0}, Lcom/anddoes/launcher/ec;->b(Landroid/graphics/Bitmap;)[B

    move-result-object v10

    if-eqz v10, :cond_f1

    const/4 v11, 0x2

    invoke-virtual {v1, v11, v10}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    :cond_f1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_f4
    .catchall {:try_start_d3 .. :try_end_f4} :catchall_14c
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_f4} :catch_f6
    .catch Landroid/database/SQLException; {:try_start_d3 .. :try_end_f4} :catch_125

    goto/16 :goto_66

    :catch_f6
    move-exception v0

    if-nez v4, :cond_110

    :try_start_f9
    const-string v4, "Launcher.LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Failed normalizing icon "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10d
    move v4, v5

    goto/16 :goto_66

    :cond_110
    const-string v0, "Launcher.LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "Also failed normalizing icon "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_124
    .catchall {:try_start_f9 .. :try_end_124} :catchall_14c
    .catch Landroid/database/SQLException; {:try_start_f9 .. :try_end_124} :catch_125

    goto :goto_10d

    :catch_125
    move-exception v0

    :goto_126
    :try_start_126
    const-string v4, "Launcher.LauncherProvider"

    const-string v5, "Problem while allocating appWidgetIds for existing widgets"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12d
    .catchall {:try_start_126 .. :try_end_12d} :catchall_14c

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v1, :cond_135

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_135
    if-eqz v2, :cond_7c

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7c

    :catchall_13c
    move-exception v0

    move-object v1, v2

    :goto_13e
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v1, :cond_146

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_146
    if-eqz v2, :cond_14b

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_14b
    throw v0

    :catchall_14c
    move-exception v0

    goto :goto_13e

    :catch_14e
    move-exception v0

    move-object v1, v2

    goto :goto_126

    :cond_151
    move v0, v1

    goto/16 :goto_38

    :cond_154
    move v1, p2

    goto/16 :goto_1c
.end method
