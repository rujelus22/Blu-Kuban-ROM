.class public Lcom/cooliris/media/MediaSet;
.super Ljava/lang/Object;
.source "MediaSet.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/cooliris/media/MediaSet;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentLocation:I

.field public mDataSource:Lcom/cooliris/media/DataSource;

.field public mEditUri:Ljava/lang/String;

.field public mFlagForDelete:Z

.field public mHasImages:Z

.field public mHasVideos:Z

.field public mId:J

.field public mIsLocal:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsLookup:Lcom/cooliris/media/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cooliris/media/LongSparseArray",
            "<",
            "Lcom/cooliris/media/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsLookupVideo:Lcom/cooliris/media/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cooliris/media/LongSparseArray",
            "<",
            "Lcom/cooliris/media/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public mLatLongDetermined:Z

.field public mMaxAddedTimestamp:J

.field public mMaxLatLatitude:D

.field public mMaxLatLongitude:D

.field public mMaxLonLatitude:D

.field public mMaxLonLongitude:D

.field public mMaxTimestamp:J

.field public mMinAddedTimestamp:J

.field public mMinLatLatitude:D

.field public mMinLatLongitude:D

.field public mMinLonLatitude:D

.field public mMinLonLongitude:D

.field public mMinTimestamp:J

.field public mName:Ljava/lang/String;

.field public mNoCountTitleString:Ljava/lang/String;

.field private mNumExpectedItems:I

.field private mNumExpectedItemsCountAccurate:Z

.field public mNumItemsLoaded:I

.field public mPicasaAlbumId:J

.field public mReverseGeocodedLocation:Ljava/lang/String;

.field public mReverseGeocodedLocationComputed:Z

.field public mReverseGeocodedLocationRequestMade:Z

.field public mSyncPending:Z

.field public mTitleString:Ljava/lang/String;

.field public mTruncTitleString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cooliris/media/MediaSet;-><init>(Lcom/cooliris/media/DataSource;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/cooliris/media/DataSource;)V
    .registers 11
    .parameter "dataSource"

    .prologue
    const-wide v7, 0x7fffffffffffffffL

    const-wide/16 v1, 0x0

    const-wide/16 v5, -0x1

    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-wide v7, p0, Lcom/cooliris/media/MediaSet;->mMinTimestamp:J

    .line 53
    iput-wide v1, p0, Lcom/cooliris/media/MediaSet;->mMaxTimestamp:J

    .line 55
    iput-wide v7, p0, Lcom/cooliris/media/MediaSet;->mMinAddedTimestamp:J

    .line 57
    iput-wide v1, p0, Lcom/cooliris/media/MediaSet;->mMaxAddedTimestamp:J

    .line 60
    const-wide v1, 0x4056800000000000L

    iput-wide v1, p0, Lcom/cooliris/media/MediaSet;->mMinLatLatitude:D

    .line 65
    const-wide v1, -0x3fa9800000000000L

    iput-wide v1, p0, Lcom/cooliris/media/MediaSet;->mMaxLatLatitude:D

    .line 72
    const-wide v1, 0x4066800000000000L

    iput-wide v1, p0, Lcom/cooliris/media/MediaSet;->mMinLonLongitude:D

    .line 77
    const-wide v1, -0x3f99800000000000L

    iput-wide v1, p0, Lcom/cooliris/media/MediaSet;->mMaxLonLongitude:D

    .line 85
    iput-boolean v3, p0, Lcom/cooliris/media/MediaSet;->mLatLongDetermined:Z

    .line 87
    iput-boolean v3, p0, Lcom/cooliris/media/MediaSet;->mReverseGeocodedLocationComputed:Z

    .line 89
    iput-boolean v3, p0, Lcom/cooliris/media/MediaSet;->mReverseGeocodedLocationRequestMade:Z

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cooliris/media/MediaSet;->mEditUri:Ljava/lang/String;

    .line 99
    iput-wide v5, p0, Lcom/cooliris/media/MediaSet;->mPicasaAlbumId:J

    .line 101
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cooliris/media/MediaSet;->mIsLocal:Z

    .line 105
    iput-boolean v3, p0, Lcom/cooliris/media/MediaSet;->mSyncPending:Z

    .line 113
    iput v3, p0, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    .line 119
    iput v3, p0, Lcom/cooliris/media/MediaSet;->mNumExpectedItems:I

    .line 121
    iput-boolean v3, p0, Lcom/cooliris/media/MediaSet;->mNumExpectedItemsCountAccurate:Z

    .line 123
    iput v3, p0, Lcom/cooliris/media/MediaSet;->mCurrentLocation:I

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    .line 131
    new-instance v1, Lcom/cooliris/media/LongSparseArray;

    invoke-direct {v1}, Lcom/cooliris/media/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcom/cooliris/media/MediaSet;->mItemsLookup:Lcom/cooliris/media/LongSparseArray;

    .line 132
    iget-object v1, p0, Lcom/cooliris/media/MediaSet;->mItemsLookup:Lcom/cooliris/media/LongSparseArray;

    invoke-virtual {v1}, Lcom/cooliris/media/LongSparseArray;->clear()V

    .line 133
    new-instance v1, Lcom/cooliris/media/LongSparseArray;

    invoke-direct {v1}, Lcom/cooliris/media/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcom/cooliris/media/MediaSet;->mItemsLookupVideo:Lcom/cooliris/media/LongSparseArray;

    .line 134
    iget-object v1, p0, Lcom/cooliris/media/MediaSet;->mItemsLookupVideo:Lcom/cooliris/media/LongSparseArray;

    invoke-virtual {v1}, Lcom/cooliris/media/LongSparseArray;->clear()V

    .line 135
    iput-object p1, p0, Lcom/cooliris/media/MediaSet;->mDataSource:Lcom/cooliris/media/DataSource;

    .line 137
    new-instance v0, Lcom/cooliris/media/MediaItem;

    invoke-direct {v0}, Lcom/cooliris/media/MediaItem;-><init>()V

    .line 138
    .local v0, item:Lcom/cooliris/media/MediaItem;
    iput-wide v5, v0, Lcom/cooliris/media/MediaItem;->mId:J

    .line 139
    iput-object p0, v0, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    .line 140
    iget-object v1, p0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iput v4, p0, Lcom/cooliris/media/MediaSet;->mNumExpectedItems:I

    .line 142
    return-void
.end method


# virtual methods
.method public addItem(Lcom/cooliris/media/MediaItem;)V
    .registers 19
    .parameter "itemToAdd"

    .prologue
    .line 254
    if-nez p1, :cond_3

    .line 357
    :cond_2
    :goto_2
    return-void

    .line 257
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v13

    if-nez v13, :cond_e5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/MediaSet;->mItemsLookup:Lcom/cooliris/media/LongSparseArray;

    .line 259
    .local v11, lookup:Lcom/cooliris/media/LongSparseArray;,"Lcom/cooliris/media/LongSparseArray<Lcom/cooliris/media/MediaItem;>;"
    :goto_d
    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/cooliris/media/MediaItem;->mId:J

    invoke-virtual {v11, v13, v14}, Lcom/cooliris/media/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cooliris/media/MediaItem;

    .line 260
    .local v12, lookupItem:Lcom/cooliris/media/MediaItem;
    if-eqz v12, :cond_26

    iget-object v13, v12, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_26

    .line 261
    const/4 v12, 0x0

    .line 263
    :cond_26
    if-nez v12, :cond_eb

    move-object/from16 v6, p1

    .line 264
    .local v6, item:Lcom/cooliris/media/MediaItem;
    :goto_2a
    const/4 v13, 0x0

    iput-boolean v13, v6, Lcom/cooliris/media/MediaItem;->mFlagForDelete:Z

    .line 265
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_ee

    .line 266
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    :goto_3e
    iget-wide v13, v6, Lcom/cooliris/media/MediaItem;->mId:J

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_61

    .line 281
    if-nez v12, :cond_4d

    .line 282
    iget-wide v13, v6, Lcom/cooliris/media/MediaItem;->mId:J

    invoke-virtual {v11, v13, v14, v6}, Lcom/cooliris/media/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 284
    :cond_4d
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    .line 285
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cooliris/media/MediaSet;->mCurrentLocation:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/cooliris/media/MediaSet;->mCurrentLocation:I

    .line 287
    :cond_61
    sget-boolean v13, Lcom/cooliris/media/Utils;->mUseDualCore:Z

    if-nez v13, :cond_174

    .line 289
    invoke-virtual {v6}, Lcom/cooliris/media/MediaItem;->isDateTakenValid()Z

    move-result v13

    if-eqz v13, :cond_14e

    .line 290
    iget-wide v3, v6, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    .line 291
    .local v3, dateTaken:J
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/cooliris/media/MediaSet;->mMinTimestamp:J

    cmp-long v13, v3, v13

    if-gez v13, :cond_79

    .line 292
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/cooliris/media/MediaSet;->mMinTimestamp:J

    .line 294
    :cond_79
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/cooliris/media/MediaSet;->mMaxTimestamp:J

    cmp-long v13, v3, v13

    if-lez v13, :cond_85

    .line 295
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/cooliris/media/MediaSet;->mMaxTimestamp:J

    .line 332
    .end local v3           #dateTaken:J
    :cond_85
    :goto_85
    invoke-virtual {v6}, Lcom/cooliris/media/MediaItem;->isLatLongValid()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 335
    iget-wide v7, v6, Lcom/cooliris/media/MediaItem;->mLatitude:D

    .line 336
    .local v7, itemLatitude:D
    iget-wide v9, v6, Lcom/cooliris/media/MediaItem;->mLongitude:D

    .line 337
    .local v9, itemLongitude:D
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/cooliris/media/MediaSet;->mMinLatLatitude:D

    cmpl-double v13, v13, v7

    if-lez v13, :cond_a4

    .line 338
    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/cooliris/media/MediaSet;->mMinLatLatitude:D

    .line 339
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/cooliris/media/MediaSet;->mMinLatLongitude:D

    .line 340
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/cooliris/media/MediaSet;->mLatLongDetermined:Z

    .line 342
    :cond_a4
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/cooliris/media/MediaSet;->mMaxLatLatitude:D

    cmpg-double v13, v13, v7

    if-gez v13, :cond_b9

    .line 343
    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/cooliris/media/MediaSet;->mMaxLatLatitude:D

    .line 344
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/cooliris/media/MediaSet;->mMaxLatLongitude:D

    .line 345
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/cooliris/media/MediaSet;->mLatLongDetermined:Z

    .line 347
    :cond_b9
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/cooliris/media/MediaSet;->mMinLonLongitude:D

    cmpl-double v13, v13, v9

    if-lez v13, :cond_ce

    .line 348
    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/cooliris/media/MediaSet;->mMinLonLatitude:D

    .line 349
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/cooliris/media/MediaSet;->mMinLonLongitude:D

    .line 350
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/cooliris/media/MediaSet;->mLatLongDetermined:Z

    .line 352
    :cond_ce
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/cooliris/media/MediaSet;->mMaxLonLongitude:D

    cmpg-double v13, v13, v9

    if-gez v13, :cond_2

    .line 353
    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/cooliris/media/MediaSet;->mMaxLonLatitude:D

    .line 354
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/cooliris/media/MediaSet;->mMaxLonLongitude:D

    .line 355
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/cooliris/media/MediaSet;->mLatLongDetermined:Z

    goto/16 :goto_2

    .line 257
    .end local v6           #item:Lcom/cooliris/media/MediaItem;
    .end local v7           #itemLatitude:D
    .end local v9           #itemLongitude:D
    .end local v11           #lookup:Lcom/cooliris/media/LongSparseArray;,"Lcom/cooliris/media/LongSparseArray<Lcom/cooliris/media/MediaItem;>;"
    .end local v12           #lookupItem:Lcom/cooliris/media/MediaItem;
    :cond_e5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/MediaSet;->mItemsLookupVideo:Lcom/cooliris/media/LongSparseArray;

    goto/16 :goto_d

    .restart local v11       #lookup:Lcom/cooliris/media/LongSparseArray;,"Lcom/cooliris/media/LongSparseArray<Lcom/cooliris/media/MediaItem;>;"
    .restart local v12       #lookupItem:Lcom/cooliris/media/MediaItem;
    :cond_eb
    move-object v6, v12

    .line 263
    goto/16 :goto_2a

    .line 267
    .restart local v6       #item:Lcom/cooliris/media/MediaItem;
    :cond_ee
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cooliris/media/MediaItem;

    iget-wide v13, v13, Lcom/cooliris/media/MediaItem;->mId:J

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-nez v13, :cond_10b

    .line 268
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e

    .line 270
    :cond_10b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/cooliris/media/MediaSet;->mCurrentLocation:I

    if-le v13, v14, :cond_126

    .line 271
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/cooliris/media/MediaSet;->mCurrentLocation:I

    invoke-virtual {v13, v14, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e

    .line 274
    :cond_126
    :try_start_126
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/cooliris/media/MediaSet;->mCurrentLocation:I

    invoke-virtual {v13, v14, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_131
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_126 .. :try_end_131} :catch_133

    goto/16 :goto_3e

    .line 275
    :catch_133
    move-exception v5

    .line 276
    .local v5, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v13, "MediaSet"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "invalid index is inserted: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e

    .line 299
    .end local v5           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_14e
    invoke-virtual {v6}, Lcom/cooliris/media/MediaItem;->isDateAddedValid()Z

    move-result v13

    if-eqz v13, :cond_85

    .line 300
    iget-wide v13, v6, Lcom/cooliris/media/MediaItem;->mDateAddedInSec:J

    const-wide/16 v15, 0x3e8

    mul-long v1, v13, v15

    .line 301
    .local v1, dateAdded:J
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/cooliris/media/MediaSet;->mMinAddedTimestamp:J

    cmp-long v13, v1, v13

    if-gez v13, :cond_166

    .line 302
    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/cooliris/media/MediaSet;->mMinAddedTimestamp:J

    .line 304
    :cond_166
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/cooliris/media/MediaSet;->mMaxAddedTimestamp:J

    cmp-long v13, v1, v13

    if-lez v13, :cond_85

    .line 305
    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/cooliris/media/MediaSet;->mMaxAddedTimestamp:J

    goto/16 :goto_85

    .line 309
    .end local v1           #dateAdded:J
    :cond_174
    invoke-virtual {v6}, Lcom/cooliris/media/MediaItem;->isDateTakenValid()Z

    move-result v13

    if-eqz v13, :cond_194

    .line 310
    iget-wide v3, v6, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    .line 311
    .restart local v3       #dateTaken:J
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/cooliris/media/MediaSet;->mMinTimestamp:J

    cmp-long v13, v3, v13

    if-gez v13, :cond_188

    .line 312
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/cooliris/media/MediaSet;->mMinTimestamp:J

    .line 314
    :cond_188
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/cooliris/media/MediaSet;->mMaxTimestamp:J

    cmp-long v13, v3, v13

    if-lez v13, :cond_194

    .line 315
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/cooliris/media/MediaSet;->mMaxTimestamp:J

    .line 319
    .end local v3           #dateTaken:J
    :cond_194
    invoke-virtual {v6}, Lcom/cooliris/media/MediaItem;->isDateAddedValid()Z

    move-result v13

    if-eqz v13, :cond_85

    .line 320
    iget-wide v13, v6, Lcom/cooliris/media/MediaItem;->mDateAddedInSec:J

    const-wide/16 v15, 0x3e8

    mul-long v1, v13, v15

    .line 321
    .restart local v1       #dateAdded:J
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/cooliris/media/MediaSet;->mMinAddedTimestamp:J

    cmp-long v13, v1, v13

    if-gez v13, :cond_1ac

    .line 322
    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/cooliris/media/MediaSet;->mMinAddedTimestamp:J

    .line 324
    :cond_1ac
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/cooliris/media/MediaSet;->mMaxAddedTimestamp:J

    cmp-long v13, v1, v13

    if-lez v13, :cond_85

    .line 325
    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/cooliris/media/MediaSet;->mMaxAddedTimestamp:J

    goto/16 :goto_85
.end method

.method public areAddedTimestampsAvailable()Z
    .registers 5

    .prologue
    .line 435
    iget-wide v0, p0, Lcom/cooliris/media/MediaSet;->mMinAddedTimestamp:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_15

    iget-wide v0, p0, Lcom/cooliris/media/MediaSet;->mMaxAddedTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public areTimestampsAvailable()Z
    .registers 5

    .prologue
    .line 428
    iget-wide v0, p0, Lcom/cooliris/media/MediaSet;->mMinTimestamp:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_15

    iget-wide v0, p0, Lcom/cooliris/media/MediaSet;->mMaxTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public checkForDeletedItems()V
    .registers 8

    .prologue
    .line 478
    iget-object v2, p0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    .line 479
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v3, itemsToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    monitor-enter v2

    .line 481
    :try_start_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 482
    .local v4, numItems:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v4, :cond_1f

    .line 483
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/MediaItem;

    .line 484
    .local v1, item:Lcom/cooliris/media/MediaItem;
    iget-boolean v6, v1, Lcom/cooliris/media/MediaItem;->mFlagForDelete:Z

    if-eqz v6, :cond_1c

    .line 485
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 488
    .end local v1           #item:Lcom/cooliris/media/MediaItem;
    :cond_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_33

    .line 489
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 490
    .local v5, numItemsToDelete:I
    const/4 v0, 0x0

    :goto_25
    if-ge v0, v5, :cond_36

    .line 491
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cooliris/media/MediaItem;

    invoke-virtual {p0, v6}, Lcom/cooliris/media/MediaSet;->removeItem(Lcom/cooliris/media/MediaItem;)Z

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 488
    .end local v0           #i:I
    .end local v4           #numItems:I
    .end local v5           #numItemsToDelete:I
    :catchall_33
    move-exception v6

    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v6

    .line 493
    .restart local v0       #i:I
    .restart local v4       #numItems:I
    .restart local v5       #numItemsToDelete:I
    :cond_36
    return-void
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 182
    iget-object v1, p0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 183
    new-instance v0, Lcom/cooliris/media/MediaItem;

    invoke-direct {v0}, Lcom/cooliris/media/MediaItem;-><init>()V

    .line 184
    .local v0, item:Lcom/cooliris/media/MediaItem;
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/cooliris/media/MediaItem;->mId:J

    .line 185
    iput-object p0, v0, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    .line 186
    iget-object v1, p0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    const/16 v1, 0x10

    iput v1, p0, Lcom/cooliris/media/MediaSet;->mNumExpectedItems:I

    .line 188
    invoke-virtual {p0}, Lcom/cooliris/media/MediaSet;->refresh()V

    .line 189
    iget-object v1, p0, Lcom/cooliris/media/MediaSet;->mItemsLookup:Lcom/cooliris/media/LongSparseArray;

    invoke-virtual {v1}, Lcom/cooliris/media/LongSparseArray;->clear()V

    .line 190
    iget-object v1, p0, Lcom/cooliris/media/MediaSet;->mItemsLookupVideo:Lcom/cooliris/media/LongSparseArray;

    invoke-virtual {v1}, Lcom/cooliris/media/LongSparseArray;->clear()V

    .line 191
    return-void
.end method

.method public compareTo(Lcom/cooliris/media/MediaSet;)I
    .registers 8
    .parameter "set"

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 496
    iget-wide v2, p1, Lcom/cooliris/media/MediaSet;->mId:J

    sget v4, Lcom/cooliris/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_c

    .line 523
    :cond_b
    :goto_b
    return v0

    .line 498
    :cond_c
    iget-wide v2, p0, Lcom/cooliris/media/MediaSet;->mId:J

    sget v4, Lcom/cooliris/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_17

    move v0, v1

    .line 499
    goto :goto_b

    .line 501
    :cond_17
    iget-wide v2, p1, Lcom/cooliris/media/MediaSet;->mId:J

    sget v4, Lcom/cooliris/media/LocalDataSource;->CAMERA_EXT_BUCKET_ID:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    .line 503
    iget-wide v2, p0, Lcom/cooliris/media/MediaSet;->mId:J

    sget v4, Lcom/cooliris/media/LocalDataSource;->CAMERA_EXT_BUCKET_ID:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2b

    move v0, v1

    .line 504
    goto :goto_b

    .line 506
    :cond_2b
    iget-wide v2, p1, Lcom/cooliris/media/MediaSet;->mId:J

    sget v4, Lcom/cooliris/media/LocalDataSource;->DOWNLOAD_BUCKET_ID:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    .line 508
    iget-wide v2, p0, Lcom/cooliris/media/MediaSet;->mId:J

    sget v4, Lcom/cooliris/media/LocalDataSource;->DOWNLOAD_BUCKET_ID:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3f

    move v0, v1

    .line 509
    goto :goto_b

    .line 511
    :cond_3f
    iget-wide v2, p1, Lcom/cooliris/media/MediaSet;->mId:J

    sget v4, Lcom/cooliris/media/LocalDataSource;->BLUETOOTH_BUCKET_ID:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    .line 513
    iget-wide v2, p0, Lcom/cooliris/media/MediaSet;->mId:J

    sget v0, Lcom/cooliris/media/LocalDataSource;->BLUETOOTH_BUCKET_ID:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-nez v0, :cond_53

    move v0, v1

    .line 514
    goto :goto_b

    .line 519
    :cond_53
    iget-object v0, p0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    if-eqz v0, :cond_5b

    iget-object v0, p1, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    if-nez v0, :cond_5d

    .line 520
    :cond_5b
    const/4 v0, 0x0

    goto :goto_b

    .line 523
    :cond_5d
    iget-object v0, p0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_b
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 23
    check-cast p1, Lcom/cooliris/media/MediaSet;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/cooliris/media/MediaSet;->compareTo(Lcom/cooliris/media/MediaSet;)I

    move-result v0

    return v0
.end method

.method public generateTitle(Z)V
    .registers 8
    .parameter "truncateTitle"

    .prologue
    .line 197
    iget-object v2, p0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 198
    const-string v2, ""

    iput-object v2, p0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    .line 202
    :cond_8
    const-string v1, ""

    .line 203
    .local v1, size:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/cooliris/media/MediaSet;->mNumExpectedItemsCountAccurate:Z

    if-eqz v2, :cond_31

    iget v2, p0, Lcom/cooliris/media/MediaSet;->mNumExpectedItems:I

    if-lez v2, :cond_31

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/cooliris/media/MediaSet;->mNumExpectedItems:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cooliris/media/MediaSet;->mTitleString:Ljava/lang/String;

    .line 208
    if-eqz p1, :cond_99

    .line 209
    iget-object v2, p0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 210
    .local v0, length:I
    const/16 v2, 0x10

    if-le v0, v2, :cond_85

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    add-int/lit8 v4, v0, -0x2

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_7e
    iput-object v2, p0, Lcom/cooliris/media/MediaSet;->mTruncTitleString:Ljava/lang/String;

    .line 212
    iget-object v2, p0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/cooliris/media/MediaSet;->mNoCountTitleString:Ljava/lang/String;

    .line 216
    .end local v0           #length:I
    :goto_84
    return-void

    .line 210
    .restart local v0       #length:I
    :cond_85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7e

    .line 214
    .end local v0           #length:I
    :cond_99
    iget-object v2, p0, Lcom/cooliris/media/MediaSet;->mTitleString:Ljava/lang/String;

    iput-object v2, p0, Lcom/cooliris/media/MediaSet;->mTruncTitleString:Ljava/lang/String;

    goto :goto_84
.end method

.method public generateTitle(ZI)V
    .registers 9
    .parameter "truncateTitle"
    .parameter "currNumItems"

    .prologue
    .line 219
    iget-object v2, p0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 220
    const-string v2, ""

    iput-object v2, p0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    .line 224
    :cond_8
    const-string v1, ""

    .line 225
    .local v1, size:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/cooliris/media/MediaSet;->mNumExpectedItemsCountAccurate:Z

    if-eqz v2, :cond_33

    iget v2, p0, Lcom/cooliris/media/MediaSet;->mNumExpectedItems:I

    if-lez v2, :cond_33

    .line 226
    iget v2, p0, Lcom/cooliris/media/MediaSet;->mNumExpectedItems:I

    if-le v2, p2, :cond_a1

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    :cond_33
    :goto_33
    const-string v2, "MediaSet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateTitle(), mNumExpectedItems = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/cooliris/media/MediaSet;->mNumExpectedItems:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cooliris/media/MediaSet;->mTitleString:Ljava/lang/String;

    .line 235
    if-eqz p1, :cond_d6

    .line 236
    iget-object v2, p0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 237
    .local v0, length:I
    const/16 v2, 0x10

    if-le v0, v2, :cond_c2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    add-int/lit8 v4, v0, -0x2

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_9a
    iput-object v2, p0, Lcom/cooliris/media/MediaSet;->mTruncTitleString:Ljava/lang/String;

    .line 239
    iget-object v2, p0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/cooliris/media/MediaSet;->mNoCountTitleString:Ljava/lang/String;

    .line 243
    .end local v0           #length:I
    :goto_a0
    return-void

    .line 229
    :cond_a1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/cooliris/media/MediaSet;->mNumExpectedItems:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_33

    .line 237
    .restart local v0       #length:I
    :cond_c2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9a

    .line 241
    .end local v0           #length:I
    :cond_d6
    iget-object v2, p0, Lcom/cooliris/media/MediaSet;->mTitleString:Ljava/lang/String;

    iput-object v2, p0, Lcom/cooliris/media/MediaSet;->mTruncTitleString:Ljava/lang/String;

    goto :goto_a0
.end method

.method public getItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNumExpectedItems()I
    .registers 2

    .prologue
    .line 163
    iget v0, p0, Lcom/cooliris/media/MediaSet;->mNumExpectedItems:I

    return v0
.end method

.method public getNumItems()I
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isPicassaAlbum()Z
    .registers 5

    .prologue
    .line 463
    iget-wide v0, p0, Lcom/cooliris/media/MediaSet;->mPicasaAlbumId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isPicassaSet()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 447
    invoke-virtual {p0}, Lcom/cooliris/media/MediaSet;->isPicassaAlbum()Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    .line 456
    :goto_8
    return v2

    .line 450
    :cond_9
    iget-object v2, p0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 451
    .local v1, numItems:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    if-ge v0, v1, :cond_25

    .line 452
    iget-object v2, p0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/MediaItem;

    invoke-virtual {v2}, Lcom/cooliris/media/MediaItem;->isPicassaItem()Z

    move-result v2

    if-nez v2, :cond_22

    .line 453
    const/4 v2, 0x0

    goto :goto_8

    .line 451
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_25
    move v2, v3

    .line 456
    goto :goto_8
.end method

.method public lookupContainsItem(Lcom/cooliris/media/MediaItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    .line 407
    invoke-virtual {p1}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v2

    if-nez v2, :cond_1e

    iget-object v1, p0, Lcom/cooliris/media/MediaSet;->mItemsLookup:Lcom/cooliris/media/LongSparseArray;

    .line 409
    .local v1, lookupTable:Lcom/cooliris/media/LongSparseArray;,"Lcom/cooliris/media/LongSparseArray<Lcom/cooliris/media/MediaItem;>;"
    :goto_8
    iget-wide v2, p1, Lcom/cooliris/media/MediaItem;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/cooliris/media/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaItem;

    .line 410
    .local v0, lookUp:Lcom/cooliris/media/MediaItem;
    if-eqz v0, :cond_21

    iget-object v2, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 411
    const/4 v2, 0x1

    .line 413
    :goto_1d
    return v2

    .line 407
    .end local v0           #lookUp:Lcom/cooliris/media/MediaItem;
    .end local v1           #lookupTable:Lcom/cooliris/media/LongSparseArray;,"Lcom/cooliris/media/LongSparseArray<Lcom/cooliris/media/MediaItem;>;"
    :cond_1e
    iget-object v1, p0, Lcom/cooliris/media/MediaSet;->mItemsLookupVideo:Lcom/cooliris/media/LongSparseArray;

    goto :goto_8

    .line 413
    .restart local v0       #lookUp:Lcom/cooliris/media/MediaItem;
    .restart local v1       #lookupTable:Lcom/cooliris/media/LongSparseArray;,"Lcom/cooliris/media/LongSparseArray<Lcom/cooliris/media/MediaItem;>;"
    :cond_21
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public refresh()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 467
    iput v4, p0, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    .line 468
    iput v4, p0, Lcom/cooliris/media/MediaSet;->mCurrentLocation:I

    .line 469
    iget-object v2, p0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    .line 470
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 471
    .local v3, numItems:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v3, :cond_1a

    .line 472
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/MediaItem;

    .line 473
    .local v1, item:Lcom/cooliris/media/MediaItem;
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/cooliris/media/MediaItem;->mFlagForDelete:Z

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 475
    .end local v1           #item:Lcom/cooliris/media/MediaItem;
    :cond_1a
    return-void
.end method

.method public removeDuplicate(Lcom/cooliris/media/MediaItem;)V
    .registers 8
    .parameter "itemToRemove"

    .prologue
    .line 383
    iget-object v5, p0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    monitor-enter v5

    .line 384
    :try_start_3
    iget-object v4, p0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 385
    .local v3, numItems:I
    const/4 v0, 0x0

    .line 386
    .local v0, foundItem:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v3, :cond_38

    .line 387
    iget-object v4, p0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/MediaItem;

    .line 388
    .local v2, item:Lcom/cooliris/media/MediaItem;
    invoke-virtual {v2, p1}, Lcom/cooliris/media/MediaItem;->equals(Lcom/cooliris/media/MediaItem;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 389
    if-nez v0, :cond_21

    .line 390
    const/4 v0, 0x1

    .line 386
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 392
    :cond_21
    iget-object v4, p0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 393
    iget v4, p0, Lcom/cooliris/media/MediaSet;->mNumExpectedItems:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/cooliris/media/MediaSet;->mNumExpectedItems:I

    .line 394
    iget v4, p0, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    .line 395
    iget v4, p0, Lcom/cooliris/media/MediaSet;->mCurrentLocation:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/cooliris/media/MediaSet;->mCurrentLocation:I

    .line 400
    .end local v2           #item:Lcom/cooliris/media/MediaItem;
    :cond_38
    monitor-exit v5

    .line 401
    return-void

    .line 400
    .end local v0           #foundItem:Z
    .end local v1           #i:I
    .end local v3           #numItems:I
    :catchall_3a
    move-exception v4

    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v4
.end method

.method public removeItem(Lcom/cooliris/media/MediaItem;)Z
    .registers 7
    .parameter "itemToRemove"

    .prologue
    .line 366
    iget-object v2, p0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    monitor-enter v2

    .line 367
    :try_start_3
    iget-object v1, p0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 368
    iget-boolean v1, p1, Lcom/cooliris/media/MediaItem;->mFlagForDelete:Z

    if-nez v1, :cond_21

    .line 369
    iget v1, p0, Lcom/cooliris/media/MediaSet;->mNumExpectedItems:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/cooliris/media/MediaSet;->mNumExpectedItems:I

    .line 370
    iget v1, p0, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    .line 371
    iget v1, p0, Lcom/cooliris/media/MediaSet;->mCurrentLocation:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/cooliris/media/MediaSet;->mCurrentLocation:I

    .line 373
    :cond_21
    invoke-virtual {p1}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v1

    if-nez v1, :cond_31

    iget-object v0, p0, Lcom/cooliris/media/MediaSet;->mItemsLookup:Lcom/cooliris/media/LongSparseArray;

    .line 375
    .local v0, lookup:Lcom/cooliris/media/LongSparseArray;,"Lcom/cooliris/media/LongSparseArray<Lcom/cooliris/media/MediaItem;>;"
    :goto_29
    iget-wide v3, p1, Lcom/cooliris/media/MediaItem;->mId:J

    invoke-virtual {v0, v3, v4}, Lcom/cooliris/media/LongSparseArray;->remove(J)V

    .line 376
    const/4 v1, 0x1

    monitor-exit v2

    .line 378
    .end local v0           #lookup:Lcom/cooliris/media/LongSparseArray;,"Lcom/cooliris/media/LongSparseArray<Lcom/cooliris/media/MediaItem;>;"
    :goto_30
    return v1

    .line 373
    :cond_31
    iget-object v0, p0, Lcom/cooliris/media/MediaSet;->mItemsLookupVideo:Lcom/cooliris/media/LongSparseArray;

    goto :goto_29

    .line 378
    :cond_34
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_30

    .line 379
    :catchall_37
    move-exception v1

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public setContainsValidItems()Z
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Lcom/cooliris/media/MediaSet;->mNumExpectedItems:I

    if-nez v0, :cond_6

    .line 168
    const/4 v0, 0x0

    .line 169
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public setNumExpectedItems(I)V
    .registers 6
    .parameter "numExpectedItems"

    .prologue
    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/cooliris/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_5} :catch_b

    .line 158
    :goto_5
    iput p1, p0, Lcom/cooliris/media/MediaSet;->mNumExpectedItems:I

    .line 159
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cooliris/media/MediaSet;->mNumExpectedItemsCountAccurate:Z

    .line 160
    return-void

    .line 155
    :catch_b
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "TEST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNumExpectedItems numExpectedItems"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public updateNumExpectedItems()V
    .registers 2

    .prologue
    .line 173
    iget v0, p0, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    iput v0, p0, Lcom/cooliris/media/MediaSet;->mNumExpectedItems:I

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/MediaSet;->mNumExpectedItemsCountAccurate:Z

    .line 175
    return-void
.end method
