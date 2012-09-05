.class public final Lcom/cooliris/media/DetailMode;
.super Ljava/lang/Object;
.source "DetailMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/DetailMode$DetailsItem;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 382
    return-void
.end method

.method private static getPathOfItem(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "filePath"

    .prologue
    .line 377
    if-eqz p0, :cond_e

    .line 378
    const/4 v0, 0x0

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 379
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static getStringOfDateTime(Landroid/content/Context;J)Ljava/lang/String;
    .registers 8
    .parameter "context"
    .parameter "timeStamp"

    .prologue
    .line 334
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 335
    .local v0, date:Ljava/util/Date;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 336
    .local v2, shortDateFormat:Ljava/text/DateFormat;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 338
    .local v1, dateString:Ljava/lang/StringBuffer;
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static populateDetailModeStrings(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 12
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaBucket;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/DetailMode$DetailsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    const/4 v9, 0x1

    .line 47
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 48
    .local v5, numBuckets:I
    invoke-static {p1}, Lcom/cooliris/media/MediaBucketList;->isSetSelection(Ljava/util/ArrayList;)Z

    move-result v8

    if-eqz v8, :cond_16

    if-ne v5, v9, :cond_16

    .line 52
    invoke-static {p1}, Lcom/cooliris/media/MediaBucketList;->getFirstSetSelection(Ljava/util/ArrayList;)Lcom/cooliris/media/MediaSet;

    move-result-object v8

    invoke-static {p0, v8, v9}, Lcom/cooliris/media/DetailMode;->populateSetViewDetailModeStrings(Landroid/content/Context;Lcom/cooliris/media/MediaSet;I)Ljava/util/ArrayList;

    move-result-object v8

    .line 82
    :goto_15
    return-object v8

    .line 54
    :cond_16
    invoke-static {p1}, Lcom/cooliris/media/MediaBucketList;->isSetSelection(Ljava/util/ArrayList;)Z

    move-result v8

    if-nez v8, :cond_22

    invoke-static {p1}, Lcom/cooliris/media/MediaBucketList;->isMultipleItemSelection(Ljava/util/ArrayList;)Z

    move-result v8

    if-eqz v8, :cond_66

    .line 57
    :cond_22
    new-instance v7, Lcom/cooliris/media/MediaSet;

    invoke-direct {v7}, Lcom/cooliris/media/MediaSet;-><init>()V

    .line 58
    .local v7, selectedItemsSet:Lcom/cooliris/media/MediaSet;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_28
    if-ge v3, v5, :cond_61

    .line 59
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaBucket;

    .line 60
    .local v0, bucket:Lcom/cooliris/media/MediaBucket;
    const/4 v1, 0x0

    .line 61
    .local v1, currItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    const/4 v6, 0x0

    .line 62
    .local v6, numCurrItems:I
    invoke-static {v0}, Lcom/cooliris/media/MediaBucketList;->isSetSelection(Lcom/cooliris/media/MediaBucket;)Z

    move-result v8

    if-eqz v8, :cond_55

    .line 63
    iget-object v2, v0, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    .line 64
    .local v2, currSet:Lcom/cooliris/media/MediaSet;
    if-eqz v2, :cond_44

    .line 65
    invoke-virtual {v2}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 66
    invoke-virtual {v2}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v6

    .line 74
    .end local v2           #currSet:Lcom/cooliris/media/MediaSet;
    :cond_44
    :goto_44
    if-eqz v1, :cond_5e

    .line 75
    const/4 v4, 0x0

    .local v4, j:I
    :goto_47
    if-ge v4, v6, :cond_5e

    .line 76
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cooliris/media/MediaItem;

    invoke-virtual {v7, v8}, Lcom/cooliris/media/MediaSet;->addItem(Lcom/cooliris/media/MediaItem;)V

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 69
    .end local v4           #j:I
    :cond_55
    iget-object v1, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 71
    if-eqz v1, :cond_44

    .line 72
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_44

    .line 58
    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 80
    .end local v0           #bucket:Lcom/cooliris/media/MediaBucket;
    .end local v1           #currItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .end local v6           #numCurrItems:I
    :cond_61
    invoke-static {p0, v7, v5}, Lcom/cooliris/media/DetailMode;->populateSetViewDetailModeStrings(Landroid/content/Context;Lcom/cooliris/media/MediaSet;I)Ljava/util/ArrayList;

    move-result-object v8

    goto :goto_15

    .line 82
    .end local v3           #i:I
    .end local v7           #selectedItemsSet:Lcom/cooliris/media/MediaSet;
    :cond_66
    invoke-static {p1}, Lcom/cooliris/media/MediaBucketList;->getFirstItemSelection(Ljava/util/ArrayList;)Lcom/cooliris/media/MediaItem;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/cooliris/media/DetailMode;->populateItemViewDetailModeStrings(Landroid/content/Context;Lcom/cooliris/media/MediaItem;)Ljava/util/ArrayList;

    move-result-object v8

    goto :goto_15
.end method

.method private static populateItemViewDetailModeStrings(Landroid/content/Context;Lcom/cooliris/media/MediaItem;)Ljava/util/ArrayList;
    .registers 38
    .parameter "context"
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cooliris/media/MediaItem;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/DetailMode$DetailsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    if-nez p1, :cond_5

    .line 165
    const/16 v31, 0x0

    .line 323
    :cond_4
    return-object v31

    .line 167
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 172
    .local v28, resources:Landroid/content/res/Resources;
    invoke-static/range {p0 .. p1}, Lcom/cooliris/media/DetailMode;->updateFilename(Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V

    .line 173
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v31, strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/DetailMode$DetailsItem;>;"
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v5, 0x7f060038

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/cooliris/media/MediaItem;->mCaption:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v5, 0x7f060039

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/MediaItem;->getDisplayMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/MediaItem;->isDateTakenValid()Z

    move-result v3

    if-eqz v3, :cond_30c

    .line 178
    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    .line 179
    .local v11, dateTaken:J
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/MediaItem;->isPicassaItem()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 180
    sget-object v3, Lcom/cooliris/app/App;->CURRENT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v3, v11, v12}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    int-to-long v5, v3

    sub-long/2addr v11, v5

    .line 182
    :cond_57
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v5, 0x7f06003c

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/cooliris/media/DetailMode;->getStringOfDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v11           #dateTaken:J
    :goto_70
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    move-object/from16 v26, v0

    .line 200
    .local v26, parentMediaSet:Lcom/cooliris/media/MediaSet;
    if-nez v26, :cond_361

    .line 201
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v5, 0x7f060033

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :goto_8c
    sget-boolean v3, Lcom/cooliris/media/Utils;->mUse_U1_Chn_Open:Z

    if-nez v3, :cond_116

    .line 207
    invoke-static/range {p0 .. p0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cooliris/app/App;->getReverseGeocoder()Lcom/cooliris/media/ReverseGeocoder;

    move-result-object v29

    .line 208
    .local v29, reverseGeocoder:Lcom/cooliris/media/ReverseGeocoder;
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/cooliris/media/MediaItem;->getReverseGeocodedLocation(Lcom/cooliris/media/ReverseGeocoder;)Ljava/lang/String;

    move-result-object v22

    .line 209
    .local v22, locationString:Ljava/lang/String;
    if-eqz v22, :cond_a8

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b3

    .line 210
    :cond_a8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f060037

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 212
    :cond_b3
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v5, 0x7f060036

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v3, v5, v0}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/cooliris/media/MediaItem;->mLatitude:D

    .line 214
    .local v15, gps_latitude:D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/cooliris/media/MediaItem;->mLongitude:D

    move-wide/from16 v17, v0

    .line 216
    .local v17, gps_longitude:D
    const-wide/16 v5, 0x0

    cmpl-double v3, v15, v5

    if-nez v3, :cond_37a

    const-wide/16 v5, 0x0

    cmpl-double v3, v17, v5

    if-nez v3, :cond_37a

    .line 217
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v5, 0x7f060073

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f060072

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v5, 0x7f060074

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f060072

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .end local v15           #gps_latitude:D
    .end local v17           #gps_longitude:D
    .end local v22           #locationString:Ljava/lang/String;
    .end local v29           #reverseGeocoder:Lcom/cooliris/media/ReverseGeocoder;
    :cond_116
    :goto_116
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    if-eqz v3, :cond_187

    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/MediaItem;->isPicassaItem()Z

    move-result v3

    if-nez v3, :cond_187

    .line 241
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v25, mFile:Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v32, 0x400

    cmp-long v3, v5, v32

    if-gez v3, :cond_41a

    .line 243
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v5, 0x7f060080

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f060081

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :goto_166
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v3

    if-nez v3, :cond_45b

    .line 251
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v5, 0x7f060082

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/cooliris/media/MediaItem;->getDisplayImageSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    .end local v25           #mFile:Ljava/io/File;
    :cond_187
    :goto_187
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    if-eqz v3, :cond_540

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_540

    .line 295
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v5, 0x7f0600a0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/cooliris/media/DetailMode;->getPathOfItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :goto_1b2
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/cooliris/media/MediaItem;->isDrm:Z

    if-eqz v3, :cond_4

    .line 303
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/cooliris/drm/DrmChecker;->getMediaDRMInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 304
    .local v13, drmInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem$MediaDRMInfo;>;"
    if-eqz v13, :cond_4

    .line 307
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 308
    .local v30, rightsCount:I
    const-string v3, "DetailMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "populateItemViewDetailModeStrings() rightsCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/16 v19, 0x0

    .local v19, i:I
    :goto_1e2
    move/from16 v0, v19

    move/from16 v1, v30

    if-ge v0, v1, :cond_4

    .line 311
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f060060

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v19, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v5, Lcom/cooliris/media/DetailMode$DetailsItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v6, 0x7f06005d

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/MediaItem$MediaDRMInfo;

    iget v3, v3, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->usesStr:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance v5, Lcom/cooliris/media/DetailMode$DetailsItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v6, 0x7f06005e

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/MediaItem$MediaDRMInfo;

    iget-object v3, v3, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->typeStr:[I

    const/16 v32, 0x0

    aget v3, v3, v32

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    new-instance v5, Lcom/cooliris/media/DetailMode$DetailsItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v6, 0x7f06005f

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/MediaItem$MediaDRMInfo;

    iget-object v3, v3, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->validityStr:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1e2

    .line 184
    .end local v13           #drmInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem$MediaDRMInfo;>;"
    .end local v19           #i:I
    .end local v26           #parentMediaSet:Lcom/cooliris/media/MediaSet;
    .end local v30           #rightsCount:I
    :cond_30c
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/MediaItem;->isDateAddedValid()Z

    move-result v3

    if-eqz v3, :cond_343

    .line 185
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/cooliris/media/MediaItem;->mDateAddedInSec:J

    const-wide/16 v32, 0x3e8

    mul-long v9, v5, v32

    .line 186
    .local v9, dateAdded:J
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/MediaItem;->isPicassaItem()Z

    move-result v3

    if-eqz v3, :cond_328

    .line 187
    sget-object v3, Lcom/cooliris/app/App;->CURRENT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v3, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    int-to-long v5, v3

    sub-long/2addr v9, v5

    .line 193
    :cond_328
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v5, 0x7f06003c

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v9, v10}, Lcom/cooliris/media/DetailMode;->getStringOfDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_70

    .line 196
    .end local v9           #dateAdded:J
    :cond_343
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v5, 0x7f06003c

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f06004a

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_70

    .line 203
    .restart local v26       #parentMediaSet:Lcom/cooliris/media/MediaSet;
    :cond_361
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v5, 0x7f060033

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8c

    .line 222
    .restart local v15       #gps_latitude:D
    .restart local v17       #gps_longitude:D
    .restart local v22       #locationString:Ljava/lang/String;
    .restart local v29       #reverseGeocoder:Lcom/cooliris/media/ReverseGeocoder;
    :cond_37a
    sget-boolean v3, Lcom/cooliris/media/Utils;->mUse_U1_HKTW_open:Z

    if-eqz v3, :cond_3e2

    .line 224
    const-string v3, "%.3f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/cooliris/media/MediaItem;->mLatitude:D

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    .line 225
    .local v20, latitude:D
    const-string v3, "%.3f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/cooliris/media/MediaItem;->mLongitude:D

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v23

    .line 227
    .local v23, longitude:D
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v5, 0x7f060073

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v5, 0x7f060074

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_116

    .line 233
    .end local v20           #latitude:D
    .end local v23           #longitude:D
    :cond_3e2
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v5, 0x7f060073

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/cooliris/media/MediaItem;->mLatitude:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v5, 0x7f060074

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/cooliris/media/MediaItem;->mLongitude:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_116

    .line 246
    .end local v15           #gps_latitude:D
    .end local v17           #gps_longitude:D
    .end local v22           #locationString:Ljava/lang/String;
    .end local v29           #reverseGeocoder:Lcom/cooliris/media/ReverseGeocoder;
    .restart local v25       #mFile:Ljava/io/File;
    :cond_41a
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v5, 0x7f060080

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v32

    const-wide/16 v34, 0x400

    div-long v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f060081

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_166

    .line 253
    :cond_45b
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_187

    .line 254
    const/4 v8, 0x0

    .line 256
    .local v8, c:Landroid/database/Cursor;
    :try_start_463
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 257
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "resolution"

    aput-object v5, v4, v3

    .line 261
    .local v4, projection:[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 263
    if-eqz v8, :cond_4c5

    .line 264
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 265
    const-string v3, "resolution"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 267
    .local v27, resolution:Ljava/lang/String;
    if-eqz v27, :cond_4a9

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4a9

    const-string v3, "0x0"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a9

    const-string v3, "-1x-1"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f2

    .line 269
    :cond_4a9
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v5, 0x7f060082

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f060072

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4c5
    .catchall {:try_start_463 .. :try_end_4c5} :catchall_51c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_463 .. :try_end_4c5} :catch_508
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_463 .. :try_end_4c5} :catch_512

    .line 281
    .end local v27           #resolution:Ljava/lang/String;
    :cond_4c5
    :goto_4c5
    if-eqz v8, :cond_4ca

    .line 282
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 284
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #projection:[Ljava/lang/String;
    :cond_4ca
    :goto_4ca
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/cooliris/media/MediaItem;->getDisplayDuration(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_523

    .line 285
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v5, 0x7f060077

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f060072

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_187

    .line 272
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v4       #projection:[Ljava/lang/String;
    .restart local v27       #resolution:Ljava/lang/String;
    :cond_4f2
    :try_start_4f2
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v5, 0x7f060082

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-direct {v3, v5, v0}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_507
    .catchall {:try_start_4f2 .. :try_end_507} :catchall_51c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4f2 .. :try_end_507} :catch_508
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4f2 .. :try_end_507} :catch_512

    goto :goto_4c5

    .line 276
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v27           #resolution:Ljava/lang/String;
    :catch_508
    move-exception v14

    .line 277
    .local v14, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_509
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V
    :try_end_50c
    .catchall {:try_start_509 .. :try_end_50c} :catchall_51c

    .line 281
    if-eqz v8, :cond_4ca

    .line 282
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4ca

    .line 278
    .end local v14           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_512
    move-exception v14

    .line 279
    .local v14, e:Landroid/database/sqlite/SQLiteException;
    :try_start_513
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_516
    .catchall {:try_start_513 .. :try_end_516} :catchall_51c

    .line 281
    if-eqz v8, :cond_4ca

    .line 282
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4ca

    .line 281
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_51c
    move-exception v3

    if-eqz v8, :cond_522

    .line 282
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_522
    throw v3

    .line 288
    :cond_523
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v5, 0x7f060077

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/cooliris/media/MediaItem;->getDisplayDuration(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_187

    .line 298
    .end local v8           #c:Landroid/database/Cursor;
    .end local v25           #mFile:Ljava/io/File;
    :cond_540
    new-instance v3, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v5, 0x7f060080

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f060072

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b2
.end method

.method private static populateSetViewDetailModeStrings(Landroid/content/Context;Lcom/cooliris/media/MediaSet;I)Ljava/util/ArrayList;
    .registers 16
    .parameter "context"
    .parameter "selectedItemsSet"
    .parameter "numOriginalSets"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cooliris/media/MediaSet;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/DetailMode$DetailsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    if-nez p1, :cond_4

    .line 90
    const/4 v8, 0x0

    .line 159
    :cond_3
    :goto_3
    return-object v8

    .line 92
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 93
    .local v6, resources:Landroid/content/res/Resources;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v8, strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/DetailMode$DetailsItem;>;"
    const/4 v9, 0x1

    if-ne p2, v9, :cond_d5

    .line 97
    new-instance v9, Lcom/cooliris/media/DetailMode$DetailsItem;

    const-string v10, " "

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "1 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f06002f

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :goto_34
    iget v5, p1, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    .line 105
    .local v5, numItems:I
    const/4 v9, 0x1

    if-ne v5, v9, :cond_103

    .line 106
    new-instance v9, Lcom/cooliris/media/DetailMode$DetailsItem;

    const-string v10, " "

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "1 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f060030

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :goto_5d
    invoke-virtual {p1}, Lcom/cooliris/media/MediaSet;->areTimestampsAvailable()Z

    move-result v9

    if-eqz v9, :cond_131

    .line 114
    iget-wide v3, p1, Lcom/cooliris/media/MediaSet;->mMinTimestamp:J

    .line 115
    .local v3, minTimestamp:J
    iget-wide v1, p1, Lcom/cooliris/media/MediaSet;->mMaxTimestamp:J

    .line 116
    .local v1, maxTimestamp:J
    invoke-virtual {p1}, Lcom/cooliris/media/MediaSet;->isPicassaSet()Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 117
    sget-object v9, Lcom/cooliris/app/App;->CURRENT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v9, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v3, v9

    .line 118
    sget-object v9, Lcom/cooliris/app/App;->CURRENT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v9, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v1, v9

    .line 120
    :cond_7d
    new-instance v9, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v10, 0x7f060034

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v3, v4}, Lcom/cooliris/media/DetailMode;->getStringOfDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v9, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v10, 0x7f060035

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v1, v2}, Lcom/cooliris/media/DetailMode;->getStringOfDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v1           #maxTimestamp:J
    .end local v3           #minTimestamp:J
    :goto_a3
    sget-boolean v9, Lcom/cooliris/media/Utils;->mUse_U1_Chn_Open:Z

    if-nez v9, :cond_3

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, locationString:Ljava/lang/String;
    iget-boolean v9, p1, Lcom/cooliris/media/MediaSet;->mLatLongDetermined:Z

    if-eqz v9, :cond_bc

    .line 146
    iget-object v0, p1, Lcom/cooliris/media/MediaSet;->mReverseGeocodedLocation:Ljava/lang/String;

    .line 147
    if-nez v0, :cond_bc

    .line 149
    invoke-static {p0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cooliris/app/App;->getReverseGeocoder()Lcom/cooliris/media/ReverseGeocoder;

    move-result-object v7

    .line 150
    .local v7, reverseGeocoder:Lcom/cooliris/media/ReverseGeocoder;
    invoke-virtual {v7, p1}, Lcom/cooliris/media/ReverseGeocoder;->computeMostGranularCommonLocation(Lcom/cooliris/media/MediaSet;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .end local v7           #reverseGeocoder:Lcom/cooliris/media/ReverseGeocoder;
    :cond_bc
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 155
    new-instance v9, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v10, 0x7f060036

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 99
    .end local v0           #locationString:Ljava/lang/String;
    .end local v5           #numItems:I
    :cond_d5
    new-instance v9, Lcom/cooliris/media/DetailMode$DetailsItem;

    const-string v10, " "

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f060031

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_34

    .line 108
    .restart local v5       #numItems:I
    :cond_103
    new-instance v9, Lcom/cooliris/media/DetailMode$DetailsItem;

    const-string v10, " "

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f060032

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5d

    .line 124
    :cond_131
    invoke-virtual {p1}, Lcom/cooliris/media/MediaSet;->areAddedTimestampsAvailable()Z

    move-result v9

    if-eqz v9, :cond_179

    .line 125
    iget-wide v3, p1, Lcom/cooliris/media/MediaSet;->mMinAddedTimestamp:J

    .line 126
    .restart local v3       #minTimestamp:J
    iget-wide v1, p1, Lcom/cooliris/media/MediaSet;->mMaxAddedTimestamp:J

    .line 127
    .restart local v1       #maxTimestamp:J
    invoke-virtual {p1}, Lcom/cooliris/media/MediaSet;->isPicassaSet()Z

    move-result v9

    if-eqz v9, :cond_151

    .line 128
    sget-object v9, Lcom/cooliris/app/App;->CURRENT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v9, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v3, v9

    .line 129
    sget-object v9, Lcom/cooliris/app/App;->CURRENT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v9, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v1, v9

    .line 131
    :cond_151
    new-instance v9, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v10, 0x7f060034

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v3, v4}, Lcom/cooliris/media/DetailMode;->getStringOfDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v9, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v10, 0x7f060035

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v1, v2}, Lcom/cooliris/media/DetailMode;->getStringOfDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a3

    .line 136
    .end local v1           #maxTimestamp:J
    .end local v3           #minTimestamp:J
    :cond_179
    new-instance v9, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v10, 0x7f060034

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f06004a

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v9, Lcom/cooliris/media/DetailMode$DetailsItem;

    const v10, 0x7f060035

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f06004a

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/cooliris/media/DetailMode$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a3
.end method

.method public static updateFilename(Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V
    .registers 12
    .parameter "context"
    .parameter "item"

    .prologue
    .line 343
    const/4 v6, 0x0

    .line 346
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 347
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p1, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 351
    if-eqz v6, :cond_70

    .line 352
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 353
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 354
    .local v8, newFilePath:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 356
    .local v9, newTitle:Ljava/lang/String;
    if-eqz v8, :cond_64

    iget-object v1, p1, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 357
    const-string v1, "DetailMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changed filepath Old["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] New["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iput-object v8, p1, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    .line 362
    :cond_64
    if-eqz v9, :cond_70

    iget-object v1, p1, Lcom/cooliris/media/MediaItem;->mCaption:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 364
    iput-object v9, p1, Lcom/cooliris/media/MediaItem;->mCaption:Ljava/lang/String;
    :try_end_70
    .catchall {:try_start_1 .. :try_end_70} :catchall_80
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_70} :catch_76

    .line 371
    .end local v8           #newFilePath:Ljava/lang/String;
    .end local v9           #newTitle:Ljava/lang/String;
    :cond_70
    if-eqz v6, :cond_75

    .line 372
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 374
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_75
    :goto_75
    return-void

    .line 368
    :catch_76
    move-exception v7

    .line 369
    .local v7, e:Ljava/lang/Exception;
    :try_start_77
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_80

    .line 371
    if-eqz v6, :cond_75

    .line 372
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_75

    .line 371
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_80
    move-exception v1

    if-eqz v6, :cond_86

    .line 372
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_86
    throw v1
.end method
