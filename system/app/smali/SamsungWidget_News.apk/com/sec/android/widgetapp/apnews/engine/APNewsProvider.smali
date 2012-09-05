.class public Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;
.super Landroid/content/ContentProvider;
.source "APNewsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static mDatabases:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider$DatabaseHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static sAPNewsHeadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAPNewsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCPOrderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 543
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 544
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "ApNews"

    const-string v2, "APNEWS_TABLE_AP_NEWS"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 545
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "ApNews"

    const-string v2, "APNEWS_TABLE_AP_NEWS_HEAD"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 546
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "ApNews"

    const-string v2, "APNEWS_PREFERENCE"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 547
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "ApNews"

    const-string v2, "APNEWS_CPORDER"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 548
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "ApNews"

    const-string v2, "APNEWS_DUMMY"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 551
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sAPNewsMap:Ljava/util/HashMap;

    .line 552
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sAPNewsMap:Ljava/util/HashMap;

    const-string v1, "NEWS_INDEX"

    const-string v2, "NEWS_INDEX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sAPNewsMap:Ljava/util/HashMap;

    const-string v1, "NEWS_TITLE"

    const-string v2, "NEWS_TITLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sAPNewsMap:Ljava/util/HashMap;

    const-string v1, "NEWS_LINK"

    const-string v2, "NEWS_LINK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sAPNewsMap:Ljava/util/HashMap;

    const-string v1, "NEWS_TIME"

    const-string v2, "NEWS_TIME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sAPNewsMap:Ljava/util/HashMap;

    const-string v1, "NEWS_PUBDATE"

    const-string v2, "NEWS_PUBDATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sAPNewsMap:Ljava/util/HashMap;

    const-string v1, "NEWS_IMAGEURL"

    const-string v2, "NEWS_IMAGEURL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sAPNewsMap:Ljava/util/HashMap;

    const-string v1, "NEWS_IMAGEDATA"

    const-string v2, "NEWS_IMAGEDATA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sAPNewsMap:Ljava/util/HashMap;

    const-string v1, "NEWS_CONTENTTEXT"

    const-string v2, "NEWS_CONTENTTEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sAPNewsMap:Ljava/util/HashMap;

    const-string v1, "NEWS_XMLURL"

    const-string v2, "NEWS_XMLURL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sAPNewsMap:Ljava/util/HashMap;

    const-string v1, "UPDATE_STATE"

    const-string v2, "UPDATE_STATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sAPNewsMap:Ljava/util/HashMap;

    const-string v1, "NEWS_ETAG"

    const-string v2, "NEWS_ETAG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sAPNewsMap:Ljava/util/HashMap;

    const-string v1, "NEWS_IMAGE_ETAG"

    const-string v2, "NEWS_IMAGE_ETAG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sAPNewsHeadMap:Ljava/util/HashMap;

    .line 567
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sAPNewsHeadMap:Ljava/util/HashMap;

    const-string v1, "NAME"

    const-string v2, "NAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sAPNewsHeadMap:Ljava/util/HashMap;

    const-string v1, "ID"

    const-string v2, "ID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sAPNewsHeadMap:Ljava/util/HashMap;

    const-string v1, "ACID"

    const-string v2, "ACID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sAPNewsHeadMap:Ljava/util/HashMap;

    const-string v1, "XMLURL"

    const-string v2, "XMLURL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sAPNewsHeadMap:Ljava/util/HashMap;

    const-string v1, "PMI"

    const-string v2, "PMI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sAPNewsHeadMap:Ljava/util/HashMap;

    const-string v1, "ETAG"

    const-string v2, "ETAG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sPreferenceMap:Ljava/util/HashMap;

    .line 576
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sPreferenceMap:Ljava/util/HashMap;

    const-string v1, "PREF_KEY"

    const-string v2, "PREF_KEY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sPreferenceMap:Ljava/util/HashMap;

    const-string v1, "PREF_VALUE"

    const-string v2, "PREF_VALUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sCPOrderMap:Ljava/util/HashMap;

    .line 581
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sCPOrderMap:Ljava/util/HashMap;

    const-string v1, "CPORDER_NAME"

    const-string v2, "CPORDER_NAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sCPOrderMap:Ljava/util/HashMap;

    const-string v1, "CPORDER_INDEX"

    const-string v2, "CPORDER_INDEX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sCPOrderMap:Ljava/util/HashMap;

    const-string v1, "CPORDER_CHECK"

    const-string v2, "CPORDER_CHECK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->mDatabases:Ljava/util/HashMap;

    .line 586
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 100
    return-void
.end method

.method public static getAvailableInternalMemorySize()J
    .registers 8

    .prologue
    .line 199
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 200
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 201
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 202
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 203
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method private insertLow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 11
    .parameter "db"
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"

    .prologue
    .line 366
    const-wide/16 v1, 0x0

    .line 367
    .local v1, rowId:J
    if-eqz p1, :cond_8

    .line 369
    :try_start_4
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9

    move-result-wide v1

    .line 375
    :cond_8
    :goto_8
    return-wide v1

    .line 370
    :catch_9
    move-exception v0

    .line 371
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ApNewsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertLow exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-wide/16 v1, 0x0

    goto :goto_8
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 18
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 379
    const/4 v1, 0x0

    .line 381
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    sget-object v2, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->mDatabases:Ljava/util/HashMap;

    const-string v3, "ApNews"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_e} :catch_1c

    move-result-object v1

    .line 388
    sget-object v2, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_176

    .line 472
    const/4 v2, -0x1

    :goto_1b
    return v2

    .line 383
    :catch_1c
    move-exception v9

    .line 384
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "ApNewsProvider"

    const-string v3, "bulkInsert db SQLiteException"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v2, -0x1

    goto :goto_1b

    .line 390
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :pswitch_26
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 392
    const-wide/16 v13, 0x0

    .line 393
    .local v13, rowId:J
    :try_start_2b
    const-string v4, "NEWS_INDEX = ? AND NEWS_XMLURL = ? "

    .line 395
    .local v4, whereValue:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, index:I
    :goto_2e
    move-object/from16 v0, p2

    array-length v2, v0

    if-ge v10, v2, :cond_a9

    .line 397
    const/4 v12, 0x0

    .line 398
    .local v12, result:Z
    const-string v2, "APNEWS_TABLE_AP_NEWS"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "NEWS_INDEX"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, p2, v10

    const-string v8, "NEWS_INDEX"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aget-object v7, p2, v10

    const-string v8, "NEWS_XMLURL"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 406
    .local v11, mCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_6a

    .line 407
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 408
    const/4 v12, 0x1

    .line 410
    :cond_67
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 413
    :cond_6a
    if-eqz v12, :cond_9f

    .line 414
    const-string v2, "APNEWS_TABLE_AP_NEWS"

    aget-object v3, p2, v10

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, p2, v10

    const-string v8, "NEWS_INDEX"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aget-object v7, p2, v10

    const-string v8, "NEWS_XMLURL"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 423
    :goto_8c
    const-wide/16 v2, -0x1

    cmp-long v2, v13, v2

    if-eqz v2, :cond_9c

    aget-object v2, p2, v10

    const-string v3, "NEWS_INDEX"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 395
    :cond_9c
    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    .line 421
    :cond_9f
    const-string v2, "APNEWS_TABLE_AP_NEWS"

    const/4 v3, 0x0

    aget-object v5, p2, v10

    invoke-virtual {v1, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    goto :goto_8c

    .line 426
    .end local v11           #mCursor:Landroid/database/Cursor;
    .end local v12           #result:Z
    :cond_a9
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_ac
    .catchall {:try_start_2b .. :try_end_ac} :catchall_c2

    .line 428
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 429
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 431
    move-object/from16 v0, p2

    array-length v2, v0

    goto/16 :goto_1b

    .line 428
    .end local v4           #whereValue:Ljava/lang/String;
    .end local v10           #index:I
    :catchall_c2
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 429
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    throw v2

    .line 434
    .end local v13           #rowId:J
    :pswitch_d5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 436
    const-wide/16 v13, 0x0

    .line 437
    .restart local v13       #rowId:J
    :try_start_da
    const-string v4, "ID = ? "

    .line 439
    .restart local v4       #whereValue:Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10       #index:I
    :goto_dd
    move-object/from16 v0, p2

    array-length v2, v0

    if-ge v10, v2, :cond_14a

    .line 440
    const/4 v12, 0x0

    .line 441
    .restart local v12       #result:Z
    const-string v2, "APNEWS_TABLE_AP_NEWS_HEAD"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ID"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, p2, v10

    const-string v8, "ID"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 447
    .restart local v11       #mCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_112

    .line 448
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_10f

    .line 449
    const/4 v12, 0x1

    .line 451
    :cond_10f
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 454
    :cond_112
    if-eqz v12, :cond_140

    .line 455
    const-string v2, "APNEWS_TABLE_AP_NEWS_HEAD"

    aget-object v3, p2, v10

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, p2, v10

    const-string v8, "ID"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 461
    :goto_12d
    const-wide/16 v2, -0x1

    cmp-long v2, v13, v2

    if-eqz v2, :cond_13d

    aget-object v2, p2, v10

    const-string v3, "ID"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13d

    .line 439
    :cond_13d
    add-int/lit8 v10, v10, 0x1

    goto :goto_dd

    .line 459
    :cond_140
    const-string v2, "APNEWS_TABLE_AP_NEWS_HEAD"

    const/4 v3, 0x0

    aget-object v5, p2, v10

    invoke-virtual {v1, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    goto :goto_12d

    .line 464
    .end local v11           #mCursor:Landroid/database/Cursor;
    .end local v12           #result:Z
    :cond_14a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_14d
    .catchall {:try_start_da .. :try_end_14d} :catchall_163

    .line 466
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 467
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 469
    move-object/from16 v0, p2

    array-length v2, v0

    goto/16 :goto_1b

    .line 466
    .end local v4           #whereValue:Ljava/lang/String;
    .end local v10           #index:I
    :catchall_163
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 467
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    throw v2

    .line 388
    :pswitch_data_176
    .packed-switch 0x0
        :pswitch_26
        :pswitch_d5
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 511
    const/4 v1, 0x0

    .line 514
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    sget-object v3, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->mDatabases:Ljava/util/HashMap;

    const-string v4, "ApNews"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_e} :catch_31

    move-result-object v1

    .line 521
    sget-object v3, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_64

    .line 536
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 515
    :catch_31
    move-exception v2

    .line 516
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "ApNewsProvider"

    const-string v4, "delete db SQLiteException"

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v0, -0x1

    .line 539
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :goto_3a
    return v0

    .line 523
    :pswitch_3b
    const-string v3, "APNEWS_TABLE_AP_NEWS"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 538
    .local v0, count:I
    :goto_41
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_3a

    .line 526
    .end local v0           #count:I
    :pswitch_4e
    const-string v3, "APNEWS_TABLE_AP_NEWS_HEAD"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 527
    .restart local v0       #count:I
    goto :goto_41

    .line 529
    .end local v0           #count:I
    :pswitch_55
    const-string v3, "APNEWS_PREFERENCE"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 530
    .restart local v0       #count:I
    goto :goto_41

    .line 532
    .end local v0           #count:I
    :pswitch_5c
    const-string v3, "APNEWS_CPORDER"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 533
    .restart local v0       #count:I
    goto :goto_41

    .line 521
    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_4e
        :pswitch_55
        :pswitch_5c
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    .line 298
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 14
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v7, 0x0

    .line 311
    if-eqz p2, :cond_3c

    .line 312
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 318
    .local v5, values:Landroid/content/ContentValues;
    :goto_a
    const/4 v0, 0x0

    .line 320
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_b
    sget-object v6, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->mDatabases:Ljava/util/HashMap;

    const-string v8, "ApNews"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_18} :catch_42

    move-result-object v0

    .line 327
    const/4 v2, 0x0

    .line 329
    .local v2, newUri:Landroid/net/Uri;
    sget-object v6, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    packed-switch v6, :pswitch_data_bc

    .line 359
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 314
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #newUri:Landroid/net/Uri;
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_3c
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .restart local v5       #values:Landroid/content/ContentValues;
    goto :goto_a

    .line 321
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_42
    move-exception v1

    .line 322
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v6, "ApNewsProvider"

    const-string v8, "insert db SQLiteException"

    invoke-static {v6, v8}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v7

    .line 362
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :cond_4b
    :goto_4b
    return-object v2

    .line 331
    .restart local v2       #newUri:Landroid/net/Uri;
    :pswitch_4c
    const-string v6, "APNEWS_TABLE_AP_NEWS"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->insertLow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 332
    .local v3, rowId:J
    cmp-long v6, v3, v9

    if-lez v6, :cond_4b

    .line 333
    sget-object v6, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$APNewsColumns;->TABLE_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 334
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_4b

    .line 338
    .end local v3           #rowId:J
    :pswitch_68
    const-string v6, "APNEWS_TABLE_AP_NEWS_HEAD"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->insertLow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 339
    .restart local v3       #rowId:J
    cmp-long v6, v3, v9

    if-lez v6, :cond_4b

    .line 340
    sget-object v6, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$APNewsHeadColumns;->TABLE_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 341
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_4b

    .line 345
    .end local v3           #rowId:J
    :pswitch_84
    const-string v6, "APNEWS_PREFERENCE"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->insertLow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 346
    .restart local v3       #rowId:J
    cmp-long v6, v3, v9

    if-lez v6, :cond_4b

    .line 347
    sget-object v6, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$PreferenceColumns;->PREFERENCE_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 348
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_4b

    .line 352
    .end local v3           #rowId:J
    :pswitch_a0
    const-string v6, "APNEWS_CPORDER"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->insertLow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 353
    .restart local v3       #rowId:J
    cmp-long v6, v3, v9

    if-lez v6, :cond_4b

    .line 354
    sget-object v6, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$CPOrderColumns;->CPORDER_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 355
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_4b

    .line 329
    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_68
        :pswitch_84
        :pswitch_a0
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 208
    invoke-static {}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->getAvailableInternalMemorySize()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_d

    .line 209
    const/4 v1, 0x0

    .line 218
    :goto_c
    return v1

    .line 212
    :cond_d
    sget-object v2, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v2

    .line 215
    :try_start_10
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "apnews.db"

    const/4 v5, 0x1

    invoke-direct {v0, v3, v4, v5}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 216
    .local v0, db:Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider$DatabaseHelper;
    sget-object v3, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->mDatabases:Ljava/util/HashMap;

    const-string v4, "ApNews"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    monitor-exit v2

    goto :goto_c

    .end local v0           #db:Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider$DatabaseHelper;
    :catchall_25
    move-exception v1

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 223
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 224
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object v7, p5

    .line 225
    .local v7, orderBy:Ljava/lang/String;
    sget-object v2, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_12a

    .line 251
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    :pswitch_28
    const-string v2, "APNEWS_TABLE_AP_NEWS"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 228
    sget-object v2, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sAPNewsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 229
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 230
    const-string v7, "NEWS_INDEX ASC"

    .line 254
    :cond_3a
    :goto_3a
    const/4 v1, 0x0

    .line 257
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_3b
    sget-object v2, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->mDatabases:Ljava/util/HashMap;

    const-string v3, "ApNews"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_48
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3b .. :try_end_48} :catch_a9

    move-result-object v1

    .line 265
    sget-object v2, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_ef

    .line 266
    if-eqz v1, :cond_dc

    .line 267
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 269
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    :try_start_5c
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 270
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_ca

    .line 271
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_6d
    .catchall {:try_start_5c .. :try_end_6d} :catchall_de

    .line 276
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 277
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 294
    .end local v8           #cursor:Landroid/database/Cursor;
    :goto_7c
    return-object v8

    .line 234
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_7d
    const-string v2, "APNEWS_TABLE_AP_NEWS_HEAD"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 235
    sget-object v2, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sAPNewsHeadMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_3a

    .line 238
    :pswitch_88
    const-string v2, "APNEWS_PREFERENCE"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 239
    sget-object v2, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_3a

    .line 242
    :pswitch_93
    const-string v2, "APNEWS_CPORDER"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 243
    sget-object v2, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sCPOrderMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_3a

    .line 246
    :pswitch_9e
    const-string v2, "APNEWS_CPORDER"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 247
    sget-object v2, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sCPOrderMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_3a

    .line 258
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_a9
    move-exception v9

    .line 259
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    if-eqz v9, :cond_c8

    .line 260
    const-string v2, "ApNewsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query SQLiteException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_c8
    const/4 v8, 0x0

    goto :goto_7c

    .line 274
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_ca
    :try_start_ca
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_de

    .line 276
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 277
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 294
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_dc
    const/4 v8, 0x0

    goto :goto_7c

    .line 276
    :catchall_de
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 277
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    throw v2

    .line 282
    :cond_ef
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    :try_start_f4
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 283
    .restart local v8       #cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_dc

    .line 284
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_105} :catch_107

    goto/16 :goto_7c

    .line 287
    .end local v8           #cursor:Landroid/database/Cursor;
    :catch_107
    move-exception v9

    .line 288
    .local v9, e:Ljava/lang/Exception;
    if-eqz v9, :cond_126

    .line 289
    const-string v2, "ApNewsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_126
    const/4 v8, 0x0

    goto/16 :goto_7c

    .line 225
    nop

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_28
        :pswitch_7d
        :pswitch_88
        :pswitch_93
        :pswitch_9e
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 479
    const/4 v1, 0x0

    .line 482
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    sget-object v3, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->mDatabases:Ljava/util/HashMap;

    const-string v4, "ApNews"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_e} :catch_31

    move-result-object v1

    .line 489
    sget-object v3, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_64

    .line 503
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 483
    :catch_31
    move-exception v2

    .line 484
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "ApNewsProvider"

    const-string v4, "update db SQLiteException"

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v0, -0x1

    .line 506
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :goto_3a
    return v0

    .line 491
    :pswitch_3b
    const-string v3, "APNEWS_TABLE_AP_NEWS"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 505
    .local v0, count:I
    :goto_41
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_3a

    .line 494
    .end local v0           #count:I
    :pswitch_4e
    const-string v3, "APNEWS_TABLE_AP_NEWS_HEAD"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 495
    .restart local v0       #count:I
    goto :goto_41

    .line 497
    .end local v0           #count:I
    :pswitch_55
    const-string v3, "APNEWS_PREFERENCE"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 498
    .restart local v0       #count:I
    goto :goto_41

    .line 500
    .end local v0           #count:I
    :pswitch_5c
    const-string v3, "APNEWS_CPORDER"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 501
    .restart local v0       #count:I
    goto :goto_41

    .line 489
    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_4e
        :pswitch_55
        :pswitch_5c
    .end packed-switch
.end method
