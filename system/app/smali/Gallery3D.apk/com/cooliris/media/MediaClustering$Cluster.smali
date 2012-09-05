.class public final Lcom/cooliris/media/MediaClustering$Cluster;
.super Lcom/cooliris/media/MediaSet;
.source "MediaClustering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/MediaClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cluster"
.end annotation


# instance fields
.field private mClusterChanged:Z

.field private mGeographicallySeparatedFromPrevCluster:Z

.field private mIsPicassaAlbum:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 3
    .parameter "isPicassaAlbum"

    .prologue
    const/4 v0, 0x0

    .line 297
    invoke-direct {p0}, Lcom/cooliris/media/MediaSet;-><init>()V

    .line 289
    iput-boolean v0, p0, Lcom/cooliris/media/MediaClustering$Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    .line 291
    iput-boolean v0, p0, Lcom/cooliris/media/MediaClustering$Cluster;->mClusterChanged:Z

    .line 293
    iput-boolean v0, p0, Lcom/cooliris/media/MediaClustering$Cluster;->mIsPicassaAlbum:Z

    .line 298
    iput-boolean p1, p0, Lcom/cooliris/media/MediaClustering$Cluster;->mIsPicassaAlbum:Z

    .line 299
    return-void
.end method

.method static synthetic access$000(Lcom/cooliris/media/MediaClustering$Cluster;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/cooliris/media/MediaClustering$Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    return v0
.end method

.method static synthetic access$002(Lcom/cooliris/media/MediaClustering$Cluster;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/cooliris/media/MediaClustering$Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    return p1
.end method


# virtual methods
.method public addItem(Lcom/cooliris/media/MediaItem;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 370
    invoke-super {p0, p1}, Lcom/cooliris/media/MediaSet;->addItem(Lcom/cooliris/media/MediaItem;)V

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/MediaClustering$Cluster;->mClusterChanged:Z

    .line 372
    return-void
.end method

.method public generateCaption(Landroid/content/Context;I)V
    .registers 23
    .parameter "context"
    .parameter "currNumItems"

    .prologue
    .line 303
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/cooliris/media/MediaClustering$Cluster;->mClusterChanged:Z

    if-eqz v2, :cond_ae

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 306
    .local v17, resources:Landroid/content/res/Resources;
    const-wide/16 v3, -0x1

    .line 307
    .local v3, minTimestamp:J
    const-wide/16 v5, -0x1

    .line 308
    .local v5, maxTimestamp:J
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/MediaClustering$Cluster;->areTimestampsAvailable()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 309
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/cooliris/media/MediaSet;->mMinTimestamp:J

    .line 310
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/cooliris/media/MediaSet;->mMaxTimestamp:J

    .line 316
    :cond_1c
    :goto_1c
    const-wide/16 v10, -0x1

    cmp-long v2, v3, v10

    if-eqz v2, :cond_cd

    .line 317
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/cooliris/media/MediaClustering$Cluster;->mIsPicassaAlbum:Z

    if-eqz v2, :cond_38

    .line 318
    sget-object v2, Lcom/cooliris/app/App;->CURRENT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v2, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v10, v2

    sub-long/2addr v3, v10

    .line 319
    sget-object v2, Lcom/cooliris/app/App;->CURRENT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v2, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v10, v2

    sub-long/2addr v5, v10

    .line 321
    :cond_38
    const-string v2, "MMddyy"

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 322
    .local v16, minDay:Ljava/lang/String;
    const-string v2, "MMddyy"

    invoke-static {v2, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 324
    .local v15, maxDay:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x4

    invoke-virtual {v15, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 327
    const/high16 v7, 0x8

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    .line 333
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 334
    const v7, 0x10010

    .line 337
    .local v7, flags:I
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v13

    .line 339
    .local v13, dateRangeWithOptionalYear:Ljava/lang/String;
    const v2, 0x10014

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v14

    .line 341
    .local v14, dateRangeWithYear:Ljava/lang/String;
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9e

    .line 346
    add-long v10, v3, v5

    const-wide/16 v18, 0x2

    div-long v8, v10, v18

    .line 347
    .local v8, midTimestamp:J
    const v12, 0x10111

    move-object/from16 v7, p1

    move-wide v10, v8

    invoke-static/range {v7 .. v12}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    .end local v7           #flags:I
    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    .line 362
    .end local v8           #midTimestamp:J
    .end local v13           #dateRangeWithOptionalYear:Ljava/lang/String;
    .end local v14           #dateRangeWithYear:Ljava/lang/String;
    .end local v15           #maxDay:Ljava/lang/String;
    .end local v16           #minDay:Ljava/lang/String;
    :cond_9e
    :goto_9e
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/MediaClustering$Cluster;->updateNumExpectedItems()V

    .line 363
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/cooliris/media/MediaClustering$Cluster;->generateTitle(ZI)V

    .line 364
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/cooliris/media/MediaClustering$Cluster;->mClusterChanged:Z

    .line 366
    .end local v3           #minTimestamp:J
    .end local v5           #maxTimestamp:J
    .end local v17           #resources:Landroid/content/res/Resources;
    :cond_ae
    return-void

    .line 311
    .restart local v3       #minTimestamp:J
    .restart local v5       #maxTimestamp:J
    .restart local v17       #resources:Landroid/content/res/Resources;
    :cond_af
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/MediaClustering$Cluster;->areAddedTimestampsAvailable()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 312
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/cooliris/media/MediaSet;->mMinAddedTimestamp:J

    .line 313
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/cooliris/media/MediaSet;->mMaxAddedTimestamp:J

    goto/16 :goto_1c

    .line 354
    .restart local v15       #maxDay:Ljava/lang/String;
    .restart local v16       #minDay:Ljava/lang/String;
    :cond_bf
    const v7, 0x10030

    .restart local v7       #flags:I
    move-object/from16 v2, p1

    .line 356
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    goto :goto_9e

    .line 360
    .end local v7           #flags:I
    .end local v15           #maxDay:Ljava/lang/String;
    .end local v16           #minDay:Ljava/lang/String;
    :cond_cd
    sget-object v2, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v2, 0x7f06004a

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    goto :goto_9e
.end method

.method public getLastItem()Lcom/cooliris/media/MediaItem;
    .registers 3

    .prologue
    .line 384
    invoke-super {p0}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 385
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    if-eqz v0, :cond_a

    iget v1, p0, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    if-nez v1, :cond_c

    .line 386
    :cond_a
    const/4 v1, 0x0

    .line 388
    :goto_b
    return-object v1

    :cond_c
    iget v1, p0, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/MediaItem;

    goto :goto_b
.end method

.method public removeItem(Lcom/cooliris/media/MediaItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 376
    invoke-super {p0, p1}, Lcom/cooliris/media/MediaSet;->removeItem(Lcom/cooliris/media/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 377
    iput-boolean v0, p0, Lcom/cooliris/media/MediaClustering$Cluster;->mClusterChanged:Z

    .line 380
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
