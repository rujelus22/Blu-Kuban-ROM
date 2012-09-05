.class public Lcom/sec/android/widgetapp/apnews/engine/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# instance fields
.field private mCtx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "ctx"

    .prologue
    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/engine/Controller;->mCtx:Landroid/content/Context;

    .line 112
    return-void
.end method


# virtual methods
.method public deleteAPNewsData(ILjava/lang/String;)V
    .registers 9
    .parameter "index"
    .parameter "xmlUrl"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/Controller;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$APNewsColumns;->TABLE_URI:Landroid/net/Uri;

    const-string v2, "NEWS_INDEX = ? AND NEWS_XMLURL = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 576
    return-void
.end method

.method public deleteAPNewsHeadData()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 586
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/Controller;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$APNewsHeadColumns;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 589
    return-void
.end method

.method public existAPNewsRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .parameter "uri"
    .parameter "index"
    .parameter "xmlUrl"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 148
    const/4 v7, 0x0

    .line 150
    .local v7, result:Z
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$APNewsColumns;->TABLE_URI:Landroid/net/Uri;

    if-ne p1, v0, :cond_2e

    .line 151
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/Controller;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const-string v1, "NEWS_INDEX"

    aput-object v1, v2, v5

    const-string v3, "NEWS_INDEX = ? AND NEWS_XMLURL = ?"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    aput-object p2, v4, v5

    aput-object p3, v4, v8

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 157
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2e

    .line 158
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 159
    const/4 v7, 0x1

    .line 161
    :cond_2b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 165
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2e
    return v7
.end method

.method public fetchAPNewsHeadRows()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 394
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v8, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    const/4 v6, 0x0

    .line 396
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/Controller;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$APNewsHeadColumns;->TABLE_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 399
    if-eqz v6, :cond_77

    .line 400
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 402
    :cond_1e
    new-instance v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    invoke-direct {v7}, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;-><init>()V

    .line 404
    .local v7, headline:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;
    const-string v0, "NAME"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->name:Ljava/lang/String;

    .line 405
    const-string v0, "ID"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->id:I

    .line 406
    const-string v0, "ACID"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->adCategoryId:I

    .line 407
    const-string v0, "XMLURL"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->xmlUrl:Ljava/lang/String;

    .line 408
    const-string v0, "PMI"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->partnerModuleId:I

    .line 409
    const-string v0, "ETAG"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->etag:Ljava/lang/String;

    .line 410
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 413
    .end local v7           #headline:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;
    :cond_74
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 416
    :cond_77
    return-object v8
.end method

.method public fetchAPNewsNoneImageRows(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 11
    .parameter "xmlUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 420
    const/4 v8, 0x0

    .line 421
    .local v8, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;>;"
    const/4 v6, 0x0

    .line 423
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_af

    .line 424
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .restart local v8       #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;>;"
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/Controller;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$APNewsColumns;->TABLE_URI:Landroid/net/Uri;

    const-string v3, "NEWS_XMLURL = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v5, "NEWS_INDEX ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 432
    if-eqz v6, :cond_af

    .line 433
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 435
    :cond_28
    new-instance v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    invoke-direct {v7}, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;-><init>()V

    .line 437
    .local v7, newsInfo:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    const-string v0, "NEWS_INDEX"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsIndex:Ljava/lang/String;

    .line 438
    const-string v0, "NEWS_TITLE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTitle:Ljava/lang/String;

    .line 439
    const-string v0, "NEWS_LINK"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsLink:Ljava/lang/String;

    .line 440
    const-string v0, "NEWS_TIME"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    .line 441
    iput-object v2, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    .line 442
    const-string v0, "NEWS_IMAGEURL"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageUrl:Ljava/lang/String;

    .line 443
    const-string v0, "NEWS_CONTENTTEXT"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsContentText:Ljava/lang/String;

    .line 444
    const-string v0, "NEWS_PUBDATE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsPublishTime:Ljava/lang/Long;

    .line 445
    const-string v0, "NEWS_ETAG"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsEtag:Ljava/lang/String;

    .line 446
    const-string v0, "NEWS_IMAGE_ETAG"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageEtag:Ljava/lang/String;

    .line 447
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_28

    .line 450
    .end local v7           #newsInfo:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_ac
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 454
    :cond_af
    return-object v8
.end method

.method public fetchAPNewsRow(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    .registers 13
    .parameter "priKey"
    .parameter "xmlUrl"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 332
    new-instance v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    invoke-direct {v7}, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;-><init>()V

    .line 333
    .local v7, newsInfo:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    const/4 v6, 0x0

    .line 334
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/Controller;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$APNewsColumns;->TABLE_URI:Landroid/net/Uri;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "NEWS_INDEX"

    aput-object v3, v2, v5

    const-string v3, "NEWS_TITLE"

    aput-object v3, v2, v8

    const-string v3, "NEWS_LINK"

    aput-object v3, v2, v9

    const/4 v3, 0x3

    const-string v4, "NEWS_TIME"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "NEWS_IMAGEDATA"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "NEWS_IMAGEURL"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "NEWS_CONTENTTEXT"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "NEWS_PUBDATE"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "NEWS_ETAG"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "NEWS_IMAGE_ETAG"

    aput-object v4, v2, v3

    const-string v3, "NEWS_INDEX = ? AND NEWS_XMLURL = ?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v5

    aput-object p2, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 351
    if-eqz v6, :cond_e0

    .line 352
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 354
    const-string v0, "NEWS_INDEX"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsIndex:Ljava/lang/String;

    .line 355
    const-string v0, "NEWS_TITLE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTitle:Ljava/lang/String;

    .line 356
    const-string v0, "NEWS_LINK"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsLink:Ljava/lang/String;

    .line 357
    const-string v0, "NEWS_TIME"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    .line 358
    const-string v0, "NEWS_IMAGEDATA"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    .line 359
    const-string v0, "NEWS_IMAGEURL"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageUrl:Ljava/lang/String;

    .line 360
    const-string v0, "NEWS_CONTENTTEXT"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsContentText:Ljava/lang/String;

    .line 361
    const-string v0, "NEWS_PUBDATE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsPublishTime:Ljava/lang/Long;

    .line 362
    const-string v0, "NEWS_ETAG"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsEtag:Ljava/lang/String;

    .line 363
    const-string v0, "NEWS_IMAGE_ETAG"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageEtag:Ljava/lang/String;

    .line 364
    iput-object p2, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsXmlUrl:Ljava/lang/String;

    .line 366
    :cond_dd
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 369
    :cond_e0
    return-object v7
.end method

.method public fetchAPNewsRows(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 11
    .parameter "xmlUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    const/4 v8, 0x0

    .line 459
    .local v8, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;>;"
    const/4 v6, 0x0

    .line 461
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_b9

    .line 462
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .restart local v8       #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;>;"
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/Controller;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$APNewsColumns;->TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "NEWS_XMLURL = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v5, "NEWS_INDEX ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 470
    if-eqz v6, :cond_b9

    .line 471
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 473
    :cond_28
    new-instance v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    invoke-direct {v7}, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;-><init>()V

    .line 475
    .local v7, newsInfo:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    const-string v0, "NEWS_INDEX"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsIndex:Ljava/lang/String;

    .line 476
    const-string v0, "NEWS_TITLE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTitle:Ljava/lang/String;

    .line 477
    const-string v0, "NEWS_LINK"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsLink:Ljava/lang/String;

    .line 478
    const-string v0, "NEWS_TIME"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    .line 479
    const-string v0, "NEWS_IMAGEDATA"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    .line 480
    const-string v0, "NEWS_IMAGEURL"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageUrl:Ljava/lang/String;

    .line 481
    const-string v0, "NEWS_CONTENTTEXT"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsContentText:Ljava/lang/String;

    .line 482
    const-string v0, "NEWS_PUBDATE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsPublishTime:Ljava/lang/Long;

    .line 483
    const-string v0, "NEWS_ETAG"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsEtag:Ljava/lang/String;

    .line 484
    const-string v0, "NEWS_IMAGE_ETAG"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageEtag:Ljava/lang/String;

    .line 485
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_28

    .line 488
    .end local v7           #newsInfo:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_b6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 492
    :cond_b9
    return-object v8
.end method

.method public fetchAPNewsRowsWidget()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 496
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v9, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;>;"
    const/4 v6, 0x0

    .line 499
    .local v6, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsHeadRows()Ljava/util/ArrayList;

    move-result-object v7

    .line 500
    .local v7, head:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    const/4 v10, 0x0

    .line 501
    .local v10, topHead:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_fe

    .line 502
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    iget-object v10, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->xmlUrl:Ljava/lang/String;

    .line 508
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/Controller;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$APNewsColumns;->TABLE_URI:Landroid/net/Uri;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "NEWS_INDEX"

    aput-object v3, v2, v5

    const-string v3, "NEWS_TITLE"

    aput-object v3, v2, v11

    const/4 v3, 0x2

    const-string v4, "NEWS_LINK"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "NEWS_TIME"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "NEWS_CONTENTTEXT"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "NEWS_XMLURL"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "NEWS_IMAGEDATA"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "NEWS_PUBDATE"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "NEWS_ETAG"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "NEWS_IMAGE_ETAG"

    aput-object v4, v2, v3

    const-string v3, "NEWS_XMLURL = ? "

    new-array v4, v11, [Ljava/lang/String;

    aput-object v10, v4, v5

    const-string v5, "NEWS_INDEX ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 525
    if-eqz v6, :cond_fe

    .line 526
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 529
    :cond_6d
    new-instance v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    invoke-direct {v8}, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;-><init>()V

    .line 531
    .local v8, newsInfo:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    const-string v0, "NEWS_INDEX"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsIndex:Ljava/lang/String;

    .line 532
    const-string v0, "NEWS_TITLE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTitle:Ljava/lang/String;

    .line 533
    const-string v0, "NEWS_LINK"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsLink:Ljava/lang/String;

    .line 534
    const-string v0, "NEWS_TIME"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    .line 535
    const-string v0, "NEWS_CONTENTTEXT"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsContentText:Ljava/lang/String;

    .line 536
    const-string v0, "NEWS_XMLURL"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsXmlUrl:Ljava/lang/String;

    .line 537
    const-string v0, "NEWS_IMAGEDATA"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    .line 538
    const-string v0, "NEWS_PUBDATE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsPublishTime:Ljava/lang/Long;

    .line 539
    const-string v0, "NEWS_ETAG"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsEtag:Ljava/lang/String;

    .line 540
    const-string v0, "NEWS_IMAGE_ETAG"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageEtag:Ljava/lang/String;

    .line 541
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 545
    .end local v8           #newsInfo:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_fb
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 548
    :cond_fe
    return-object v9
.end method

.method public getTotalApNewsCnt()I
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 552
    const/4 v7, 0x0

    .line 553
    .local v7, result:I
    const/4 v6, 0x0

    .line 555
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/Controller;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$APNewsColumns;->TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "NEWS_INDEX"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 562
    if-eqz v6, :cond_22

    .line 563
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 564
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 567
    :cond_22
    return v7
.end method

.method public getWidgetNewsListSize()I
    .registers 12

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 116
    const/4 v8, 0x0

    .line 118
    .local v8, listSize:I
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsHeadRows()Ljava/util/ArrayList;

    move-result-object v7

    .line 119
    .local v7, head:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    const/4 v10, 0x0

    .line 121
    .local v10, topHead:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_44

    .line 122
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    iget-object v10, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->xmlUrl:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/Controller;->mCtx:Landroid/content/Context;

    if-eqz v0, :cond_42

    .line 129
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/Controller;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$APNewsColumns;->TABLE_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "NEWS_INDEX"

    aput-object v3, v2, v5

    const-string v3, "NEWS_XMLURL = ? "

    new-array v4, v4, [Ljava/lang/String;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 135
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_42

    .line 136
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 137
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 139
    :cond_3f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_42
    move v9, v8

    .line 143
    .end local v8           #listSize:I
    .local v9, listSize:I
    :goto_43
    return v9

    .end local v9           #listSize:I
    .restart local v8       #listSize:I
    :cond_44
    move v9, v8

    .line 124
    .end local v8           #listSize:I
    .restart local v9       #listSize:I
    goto :goto_43
.end method

.method public insertAPNewsHeadLines(Ljava/util/ArrayList;)Z
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, headlines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    const/4 v4, 0x0

    .line 249
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_a

    .line 272
    :cond_9
    :goto_9
    return v4

    .line 252
    :cond_a
    if-eqz p1, :cond_9

    .line 253
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Landroid/content/ContentValues;

    .line 255
    .local v3, initialValuesList:[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5f

    .line 256
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    .line 258
    .local v0, data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 260
    .local v2, initialValues:Landroid/content/ContentValues;
    const-string v4, "NAME"

    iget-object v5, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v4, "ID"

    iget v5, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string v4, "ACID"

    iget v5, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->adCategoryId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    const-string v4, "XMLURL"

    iget-object v5, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->xmlUrl:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v4, "PMI"

    iget v5, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->partnerModuleId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    const-string v4, "ETAG"

    iget-object v5, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->etag:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    aput-object v2, v3, v1

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 269
    .end local v0           #data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;
    .end local v2           #initialValues:Landroid/content/ContentValues;
    :cond_5f
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/engine/Controller;->mCtx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$APNewsHeadColumns;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 270
    const/4 v4, 0x1

    goto :goto_9
.end method

.method public insertAPNewsRows(Ljava/util/ArrayList;)Z
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, newsInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;>;"
    const/4 v4, 0x0

    .line 214
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_a

    .line 245
    :cond_9
    :goto_9
    return v4

    .line 218
    :cond_a
    if-eqz p1, :cond_9

    .line 219
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Landroid/content/ContentValues;

    .line 221
    .local v3, initialValuesList:[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_81

    .line 222
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    .line 224
    .local v0, data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 226
    .local v2, initialValues:Landroid/content/ContentValues;
    const-string v4, "NEWS_INDEX"

    iget-object v5, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsIndex:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v4, "NEWS_TITLE"

    iget-object v5, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTitle:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v4, "NEWS_LINK"

    iget-object v5, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsLink:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v4, "NEWS_TIME"

    iget-object v5, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 230
    const-string v4, "NEWS_PUBDATE"

    iget-object v5, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsPublishTime:Ljava/lang/Long;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 231
    const-string v4, "NEWS_IMAGEURL"

    iget-object v5, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageUrl:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v4, "NEWS_IMAGEDATA"

    iget-object v5, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 233
    const-string v4, "NEWS_CONTENTTEXT"

    iget-object v5, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsContentText:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v4, "NEWS_XMLURL"

    iget-object v5, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsXmlUrl:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v4, "UPDATE_STATE"

    iget v5, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->UpdateState:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string v4, "NEWS_ETAG"

    iget-object v5, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsEtag:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v4, "NEWS_IMAGE_ETAG"

    iget-object v5, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageEtag:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    aput-object v2, v3, v1

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 241
    .end local v0           #data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    .end local v2           #initialValues:Landroid/content/ContentValues;
    :cond_81
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/engine/Controller;->mCtx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$APNewsColumns;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 242
    const/4 v4, 0x1

    goto/16 :goto_9
.end method

.method public insertImageRow(Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;)Z
    .registers 6
    .parameter "newsInfo"

    .prologue
    .line 277
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 278
    .local v0, initialValues:Landroid/content/ContentValues;
    iget-object v1, p1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsIndex:Ljava/lang/String;

    if-eqz v1, :cond_41

    .line 279
    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$APNewsColumns;->TABLE_URI:Landroid/net/Uri;

    iget-object v2, p1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsIndex:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsXmlUrl:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->existAPNewsRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 280
    const-string v1, "NEWS_INDEX"

    iget-object v2, p1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsIndex:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v1, "NEWS_IMAGEDATA"

    iget-object v2, p1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 282
    const-string v1, "NEWS_XMLURL"

    iget-object v2, p1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsXmlUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v1, "NEWS_IMAGE_ETAG"

    iget-object v2, p1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageEtag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/engine/Controller;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$APNewsColumns;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 286
    const/4 v1, 0x1

    .line 293
    :goto_3d
    return v1

    .line 290
    :cond_3e
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->updateImageRow(Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;)V

    .line 293
    :cond_41
    const/4 v1, 0x0

    goto :goto_3d
.end method

.method public updateImageRow(Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;)V
    .registers 9
    .parameter "newsInfo"

    .prologue
    .line 316
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 317
    .local v0, updateValues:Landroid/content/ContentValues;
    iget-object v1, p1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsIndex:Ljava/lang/String;

    if-eqz v1, :cond_4b

    .line 318
    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$APNewsColumns;->TABLE_URI:Landroid/net/Uri;

    iget-object v2, p1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsIndex:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsXmlUrl:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->existAPNewsRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 319
    const-string v1, "NEWS_INDEX"

    iget-object v2, p1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsIndex:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v1, "NEWS_IMAGEDATA"

    iget-object v2, p1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 321
    const-string v1, "NEWS_XMLURL"

    iget-object v2, p1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsXmlUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v1, "NEWS_IMAGE_ETAG"

    iget-object v2, p1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageEtag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/engine/Controller;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$APNewsColumns;->TABLE_URI:Landroid/net/Uri;

    const-string v3, "NEWS_INDEX = ? AND NEWS_XMLURL = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsIndex:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsXmlUrl:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 329
    :cond_4b
    return-void
.end method
