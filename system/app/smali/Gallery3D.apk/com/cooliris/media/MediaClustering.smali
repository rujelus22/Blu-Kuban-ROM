.class public final Lcom/cooliris/media/MediaClustering;
.super Ljava/lang/Object;
.source "MediaClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/MediaClustering$Cluster;
    }
.end annotation


# static fields
.field private static CLUSTER_SPLIT_MULTIPLIER:I


# instance fields
.field private mClusterSplitTime:J

.field private mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaClustering$Cluster;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

.field private mIsPicassaAlbum:Z

.field private mLargeClusterSplitTime:J

.field private mMaxClusterSize:I

.field private mMinClusterSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const/4 v0, 0x3

    sput v0, Lcom/cooliris/media/MediaClustering;->CLUSTER_SPLIT_MULTIPLIER:I

    return-void
.end method

.method constructor <init>(Z)V
    .registers 6
    .parameter "isPicassaAlbum"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/media/MediaClustering;->mIsPicassaAlbum:Z

    .line 84
    const-wide/32 v0, 0x3763b0

    iput-wide v0, p0, Lcom/cooliris/media/MediaClustering;->mClusterSplitTime:J

    .line 86
    iget-wide v0, p0, Lcom/cooliris/media/MediaClustering;->mClusterSplitTime:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cooliris/media/MediaClustering;->mLargeClusterSplitTime:J

    .line 88
    const/16 v0, 0xb

    iput v0, p0, Lcom/cooliris/media/MediaClustering;->mMinClusterSize:I

    .line 90
    const/16 v0, 0x23

    iput v0, p0, Lcom/cooliris/media/MediaClustering;->mMaxClusterSize:I

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    .line 94
    iput-boolean p1, p0, Lcom/cooliris/media/MediaClustering;->mIsPicassaAlbum:Z

    .line 95
    new-instance v0, Lcom/cooliris/media/MediaClustering$Cluster;

    iget-boolean v1, p0, Lcom/cooliris/media/MediaClustering;->mIsPicassaAlbum:Z

    invoke-direct {v0, v1}, Lcom/cooliris/media/MediaClustering$Cluster;-><init>(Z)V

    iput-object v0, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    .line 96
    return-void
.end method

.method private getPartitionIndexForCurrentCluster()I
    .registers 21

    .prologue
    .line 223
    const/4 v14, -0x1

    .line 224
    .local v14, partitionIndex:I
    const/high16 v10, 0x4000

    .line 225
    .local v10, largestChange:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cooliris/media/MediaClustering$Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 226
    .local v3, currClusterItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v13, v0, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    .line 227
    .local v13, numCurrClusterItems:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/cooliris/media/MediaClustering;->mMinClusterSize:I

    .line 230
    .local v11, minClusterSize:I
    add-int/lit8 v16, v11, 0x1

    move/from16 v0, v16

    if-le v13, v0, :cond_b8

    .line 231
    move v9, v11

    .local v9, i:I
    :goto_22
    sub-int v16, v13, v11

    move/from16 v0, v16

    if-ge v9, v0, :cond_b8

    .line 232
    add-int/lit8 v16, v9, -0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cooliris/media/MediaItem;

    .line 233
    .local v15, prevItem:Lcom/cooliris/media/MediaItem;
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cooliris/media/MediaItem;

    .line 234
    .local v4, currItem:Lcom/cooliris/media/MediaItem;
    add-int/lit8 v16, v9, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cooliris/media/MediaItem;

    .line 236
    .local v12, nextItem:Lcom/cooliris/media/MediaItem;
    invoke-virtual {v15}, Lcom/cooliris/media/MediaItem;->isDateTakenValid()Z

    move-result v16

    if-eqz v16, :cond_a2

    invoke-virtual {v4}, Lcom/cooliris/media/MediaItem;->isDateModifiedValid()Z

    move-result v16

    if-eqz v16, :cond_a2

    invoke-virtual {v12}, Lcom/cooliris/media/MediaItem;->isDateModifiedValid()Z

    move-result v16

    if-eqz v16, :cond_a2

    .line 238
    iget-wide v0, v12, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    move-wide/from16 v16, v0

    iget-wide v0, v4, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    .line 239
    .local v5, diff1:J
    iget-wide v0, v4, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    move-wide/from16 v16, v0

    iget-wide v0, v15, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 240
    .local v7, diff2:J
    long-to-float v0, v5

    move/from16 v16, v0

    long-to-float v0, v7

    move/from16 v17, v0

    const v18, 0x3c23d70a

    add-float v17, v17, v18

    div-float v16, v16, v17

    long-to-float v0, v7

    move/from16 v17, v0

    long-to-float v0, v5

    move/from16 v18, v0

    const v19, 0x3c23d70a

    add-float v18, v18, v19

    div-float v17, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 241
    .local v2, change:F
    cmpl-float v16, v2, v10

    if-lez v16, :cond_a2

    .line 242
    invoke-static {v4, v15}, Lcom/cooliris/media/MediaClustering;->timeDistance(Lcom/cooliris/media/MediaItem;Lcom/cooliris/media/MediaItem;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cooliris/media/MediaClustering;->mLargeClusterSplitTime:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-lez v16, :cond_a6

    .line 243
    move v14, v9

    .line 244
    move v10, v2

    .line 231
    .end local v2           #change:F
    .end local v5           #diff1:J
    .end local v7           #diff2:J
    :cond_a2
    :goto_a2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_22

    .line 245
    .restart local v2       #change:F
    .restart local v5       #diff1:J
    .restart local v7       #diff2:J
    :cond_a6
    invoke-static {v12, v4}, Lcom/cooliris/media/MediaClustering;->timeDistance(Lcom/cooliris/media/MediaItem;Lcom/cooliris/media/MediaItem;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cooliris/media/MediaClustering;->mLargeClusterSplitTime:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-lez v16, :cond_a2

    .line 246
    add-int/lit8 v14, v9, 0x1

    .line 247
    move v10, v2

    goto :goto_a2

    .line 253
    .end local v2           #change:F
    .end local v4           #currItem:Lcom/cooliris/media/MediaItem;
    .end local v5           #diff1:J
    .end local v7           #diff2:J
    .end local v9           #i:I
    .end local v12           #nextItem:Lcom/cooliris/media/MediaItem;
    .end local v15           #prevItem:Lcom/cooliris/media/MediaItem;
    :cond_b8
    return v14
.end method

.method private static isGeographicallySeparated(Lcom/cooliris/media/MediaItem;Lcom/cooliris/media/MediaItem;)Z
    .registers 11
    .parameter "a"
    .parameter "b"

    .prologue
    .line 405
    if-eqz p0, :cond_2a

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Lcom/cooliris/media/MediaItem;->isLatLongValid()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lcom/cooliris/media/MediaItem;->isLatLongValid()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 406
    iget-wide v0, p0, Lcom/cooliris/media/MediaItem;->mLatitude:D

    iget-wide v2, p0, Lcom/cooliris/media/MediaItem;->mLongitude:D

    iget-wide v4, p1, Lcom/cooliris/media/MediaItem;->mLatitude:D

    iget-wide v6, p1, Lcom/cooliris/media/MediaItem;->mLongitude:D

    invoke-static/range {v0 .. v7}, Lcom/cooliris/media/LocationMediaFilter;->distanceBetween(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/cooliris/media/LocationMediaFilter;->toMile(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    double-to-int v8, v0

    .line 408
    .local v8, distance:I
    const/16 v0, 0x14

    if-le v8, v0, :cond_2a

    .line 409
    const/4 v0, 0x1

    .line 412
    .end local v8           #distance:I
    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private mergeAndAddCurrentCluster()V
    .registers 8

    .prologue
    .line 257
    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 258
    .local v2, numClusters:I
    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cooliris/media/MediaClustering$Cluster;

    .line 259
    .local v4, prevCluster:Lcom/cooliris/media/MediaClustering$Cluster;
    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    invoke-virtual {v5}, Lcom/cooliris/media/MediaClustering$Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 260
    .local v0, currClusterItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    iget v3, v5, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    .line 261
    .local v3, numCurrClusterItems:I
    iget v5, v4, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    iget v6, p0, Lcom/cooliris/media/MediaClustering;->mMinClusterSize:I

    if-ge v5, v6, :cond_37

    .line 262
    const/4 v1, 0x0

    .local v1, i:I
    :goto_21
    if-ge v1, v3, :cond_2f

    .line 263
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cooliris/media/MediaItem;

    invoke-virtual {v4, v5}, Lcom/cooliris/media/MediaClustering$Cluster;->addItem(Lcom/cooliris/media/MediaItem;)V

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 265
    :cond_2f
    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 269
    .end local v1           #i:I
    :goto_36
    return-void

    .line 267
    :cond_37
    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36
.end method

.method private splitAndAddCurrentCluster()V
    .registers 8

    .prologue
    .line 203
    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    invoke-virtual {v5}, Lcom/cooliris/media/MediaClustering$Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 204
    .local v0, currClusterItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    iget v2, v5, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    .line 205
    .local v2, numCurrClusterItems:I
    invoke-direct {p0}, Lcom/cooliris/media/MediaClustering;->getPartitionIndexForCurrentCluster()I

    move-result v4

    .line 206
    .local v4, secondPartitionStartIndex:I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_48

    .line 207
    new-instance v3, Lcom/cooliris/media/MediaClustering$Cluster;

    iget-boolean v5, p0, Lcom/cooliris/media/MediaClustering;->mIsPicassaAlbum:Z

    invoke-direct {v3, v5}, Lcom/cooliris/media/MediaClustering$Cluster;-><init>(Z)V

    .line 208
    .local v3, partitionedCluster:Lcom/cooliris/media/MediaClustering$Cluster;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_19
    if-ge v1, v4, :cond_27

    .line 209
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cooliris/media/MediaItem;

    invoke-virtual {v3, v5}, Lcom/cooliris/media/MediaClustering$Cluster;->addItem(Lcom/cooliris/media/MediaItem;)V

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 211
    :cond_27
    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v3, Lcom/cooliris/media/MediaClustering$Cluster;

    .end local v3           #partitionedCluster:Lcom/cooliris/media/MediaClustering$Cluster;
    iget-boolean v5, p0, Lcom/cooliris/media/MediaClustering;->mIsPicassaAlbum:Z

    invoke-direct {v3, v5}, Lcom/cooliris/media/MediaClustering$Cluster;-><init>(Z)V

    .line 213
    .restart local v3       #partitionedCluster:Lcom/cooliris/media/MediaClustering$Cluster;
    move v1, v4

    :goto_34
    if-ge v1, v2, :cond_42

    .line 214
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cooliris/media/MediaItem;

    invoke-virtual {v3, v5}, Lcom/cooliris/media/MediaClustering$Cluster;->addItem(Lcom/cooliris/media/MediaItem;)V

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 216
    :cond_42
    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v1           #j:I
    .end local v3           #partitionedCluster:Lcom/cooliris/media/MediaClustering$Cluster;
    :goto_47
    return-void

    .line 218
    :cond_48
    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47
.end method

.method public static timeDistance(Lcom/cooliris/media/MediaItem;Lcom/cooliris/media/MediaItem;)J
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 395
    if-eqz p0, :cond_4

    if-nez p1, :cond_7

    .line 396
    :cond_4
    const-wide/16 v0, 0x0

    .line 398
    :goto_6
    return-wide v0

    :cond_7
    iget-wide v0, p0, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    iget-wide v2, p1, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    goto :goto_6
.end method


# virtual methods
.method public addItemForClustering(Lcom/cooliris/media/MediaItem;)V
    .registers 3
    .parameter "mediaItem"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cooliris/media/MediaClustering;->compute(Lcom/cooliris/media/MediaItem;Z)V

    .line 127
    return-void
.end method

.method public clear()V
    .registers 5

    .prologue
    .line 99
    iget-object v3, p0, Lcom/cooliris/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 100
    .local v2, numClusters:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v2, :cond_17

    .line 101
    iget-object v3, p0, Lcom/cooliris/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaClustering$Cluster;

    .line 102
    .local v0, cluster:Lcom/cooliris/media/MediaClustering$Cluster;
    invoke-virtual {v0}, Lcom/cooliris/media/MediaClustering$Cluster;->clear()V

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 104
    .end local v0           #cluster:Lcom/cooliris/media/MediaClustering$Cluster;
    :cond_17
    iget-object v3, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    if-eqz v3, :cond_20

    .line 105
    iget-object v3, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    invoke-virtual {v3}, Lcom/cooliris/media/MediaClustering$Cluster;->clear()V

    .line 107
    :cond_20
    return-void
.end method

.method public compute(Lcom/cooliris/media/MediaItem;Z)V
    .registers 12
    .parameter "currentItem"
    .parameter "processAllItems"

    .prologue
    .line 147
    if-eqz p1, :cond_15

    .line 148
    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 149
    .local v2, numClusters:I
    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    iget v3, v5, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    .line 150
    .local v3, numCurrClusterItems:I
    const/4 v0, 0x0

    .line 151
    .local v0, geographicallySeparateItem:Z
    const/4 v1, 0x0

    .line 155
    .local v1, itemAddedToCurrentCluster:Z
    if-nez v3, :cond_38

    .line 156
    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    invoke-virtual {v5, p1}, Lcom/cooliris/media/MediaClustering$Cluster;->addItem(Lcom/cooliris/media/MediaItem;)V

    .line 185
    .end local v0           #geographicallySeparateItem:Z
    .end local v1           #itemAddedToCurrentCluster:Z
    .end local v2           #numClusters:I
    .end local v3           #numCurrClusterItems:I
    :cond_15
    :goto_15
    if-eqz p2, :cond_37

    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    iget v5, v5, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    if-lez v5, :cond_37

    .line 186
    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 187
    .restart local v2       #numClusters:I
    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    iget v3, v5, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    .line 190
    .restart local v3       #numCurrClusterItems:I
    iget v5, p0, Lcom/cooliris/media/MediaClustering;->mMaxClusterSize:I

    if-le v3, v5, :cond_98

    .line 191
    invoke-direct {p0}, Lcom/cooliris/media/MediaClustering;->splitAndAddCurrentCluster()V

    .line 198
    :goto_2e
    new-instance v5, Lcom/cooliris/media/MediaClustering$Cluster;

    iget-boolean v6, p0, Lcom/cooliris/media/MediaClustering;->mIsPicassaAlbum:Z

    invoke-direct {v5, v6}, Lcom/cooliris/media/MediaClustering$Cluster;-><init>(Z)V

    iput-object v5, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    .line 200
    .end local v2           #numClusters:I
    .end local v3           #numCurrClusterItems:I
    :cond_37
    return-void

    .line 158
    .restart local v0       #geographicallySeparateItem:Z
    .restart local v1       #itemAddedToCurrentCluster:Z
    .restart local v2       #numClusters:I
    .restart local v3       #numCurrClusterItems:I
    :cond_38
    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    invoke-virtual {v5}, Lcom/cooliris/media/MediaClustering$Cluster;->getLastItem()Lcom/cooliris/media/MediaItem;

    move-result-object v4

    .line 159
    .local v4, prevItem:Lcom/cooliris/media/MediaItem;
    invoke-static {v4, p1}, Lcom/cooliris/media/MediaClustering;->isGeographicallySeparated(Lcom/cooliris/media/MediaItem;Lcom/cooliris/media/MediaItem;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 160
    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    const/4 v0, 0x1

    .line 175
    :goto_4c
    if-nez v1, :cond_15

    .line 176
    new-instance v5, Lcom/cooliris/media/MediaClustering$Cluster;

    iget-boolean v6, p0, Lcom/cooliris/media/MediaClustering;->mIsPicassaAlbum:Z

    invoke-direct {v5, v6}, Lcom/cooliris/media/MediaClustering$Cluster;-><init>(Z)V

    iput-object v5, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    .line 177
    if-eqz v0, :cond_5f

    .line 178
    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    const/4 v6, 0x1

    #setter for: Lcom/cooliris/media/MediaClustering$Cluster;->mGeographicallySeparatedFromPrevCluster:Z
    invoke-static {v5, v6}, Lcom/cooliris/media/MediaClustering$Cluster;->access$002(Lcom/cooliris/media/MediaClustering$Cluster;Z)Z

    .line 180
    :cond_5f
    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    invoke-virtual {v5, p1}, Lcom/cooliris/media/MediaClustering$Cluster;->addItem(Lcom/cooliris/media/MediaItem;)V

    goto :goto_15

    .line 162
    :cond_65
    iget v5, p0, Lcom/cooliris/media/MediaClustering;->mMaxClusterSize:I

    if-le v3, v5, :cond_6d

    .line 163
    invoke-direct {p0}, Lcom/cooliris/media/MediaClustering;->splitAndAddCurrentCluster()V

    goto :goto_4c

    .line 164
    :cond_6d
    invoke-static {v4, p1}, Lcom/cooliris/media/MediaClustering;->timeDistance(Lcom/cooliris/media/MediaItem;Lcom/cooliris/media/MediaItem;)J

    move-result-wide v5

    iget-wide v7, p0, Lcom/cooliris/media/MediaClustering;->mClusterSplitTime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_7e

    .line 165
    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    invoke-virtual {v5, p1}, Lcom/cooliris/media/MediaClustering$Cluster;->addItem(Lcom/cooliris/media/MediaItem;)V

    .line 166
    const/4 v1, 0x1

    goto :goto_4c

    .line 167
    :cond_7e
    if-lez v2, :cond_90

    iget v5, p0, Lcom/cooliris/media/MediaClustering;->mMinClusterSize:I

    if-ge v3, v5, :cond_90

    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    #getter for: Lcom/cooliris/media/MediaClustering$Cluster;->mGeographicallySeparatedFromPrevCluster:Z
    invoke-static {v5}, Lcom/cooliris/media/MediaClustering$Cluster;->access$000(Lcom/cooliris/media/MediaClustering$Cluster;)Z

    move-result v5

    if-nez v5, :cond_90

    .line 169
    invoke-direct {p0}, Lcom/cooliris/media/MediaClustering;->mergeAndAddCurrentCluster()V

    goto :goto_4c

    .line 171
    :cond_90
    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 192
    .end local v0           #geographicallySeparateItem:Z
    .end local v1           #itemAddedToCurrentCluster:Z
    .end local v4           #prevItem:Lcom/cooliris/media/MediaItem;
    :cond_98
    if-lez v2, :cond_aa

    iget v5, p0, Lcom/cooliris/media/MediaClustering;->mMinClusterSize:I

    if-ge v3, v5, :cond_aa

    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    #getter for: Lcom/cooliris/media/MediaClustering$Cluster;->mGeographicallySeparatedFromPrevCluster:Z
    invoke-static {v5}, Lcom/cooliris/media/MediaClustering$Cluster;->access$000(Lcom/cooliris/media/MediaClustering$Cluster;)Z

    move-result v5

    if-nez v5, :cond_aa

    .line 194
    invoke-direct {p0}, Lcom/cooliris/media/MediaClustering;->mergeAndAddCurrentCluster()V

    goto :goto_2e

    .line 196
    :cond_aa
    iget-object v5, p0, Lcom/cooliris/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e
.end method

.method public getClustersForDisplay()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaClustering$Cluster;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lcom/cooliris/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public removeItemFromClustering(Lcom/cooliris/media/MediaItem;)V
    .registers 6
    .parameter "mediaItem"

    .prologue
    .line 131
    iget-object v3, p0, Lcom/cooliris/media/MediaClustering;->mCurrCluster:Lcom/cooliris/media/MediaClustering$Cluster;

    invoke-virtual {v3, p1}, Lcom/cooliris/media/MediaClustering$Cluster;->removeItem(Lcom/cooliris/media/MediaItem;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 144
    :cond_8
    :goto_8
    return-void

    .line 134
    :cond_9
    iget-object v3, p0, Lcom/cooliris/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 135
    .local v2, numClusters:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    if-ge v1, v2, :cond_8

    .line 136
    iget-object v3, p0, Lcom/cooliris/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaClustering$Cluster;

    .line 137
    .local v0, cluster:Lcom/cooliris/media/MediaClustering$Cluster;
    invoke-virtual {v0, p1}, Lcom/cooliris/media/MediaClustering$Cluster;->removeItem(Lcom/cooliris/media/MediaItem;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 138
    iget v3, v0, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    if-nez v3, :cond_8

    .line 139
    iget-object v3, p0, Lcom/cooliris/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 135
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method public setTimeRange(JI)V
    .registers 11
    .parameter "timeRange"
    .parameter "numItems"

    .prologue
    .line 110
    if-eqz p3, :cond_15

    .line 111
    div-int/lit8 v6, p3, 0x9

    .line 114
    .local v6, meanItemsPerCluster:I
    div-int/lit8 v0, v6, 0x2

    iput v0, p0, Lcom/cooliris/media/MediaClustering;->mMinClusterSize:I

    .line 115
    mul-int/lit8 v0, v6, 0x2

    iput v0, p0, Lcom/cooliris/media/MediaClustering;->mMaxClusterSize:I

    .line 116
    int-to-long v0, p3

    div-long v0, p1, v0

    sget v2, Lcom/cooliris/media/MediaClustering;->CLUSTER_SPLIT_MULTIPLIER:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cooliris/media/MediaClustering;->mClusterSplitTime:J

    .line 118
    .end local v6           #meanItemsPerCluster:I
    :cond_15
    iget-wide v0, p0, Lcom/cooliris/media/MediaClustering;->mClusterSplitTime:J

    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0x6ddd00

    invoke-static/range {v0 .. v5}, Lcom/cooliris/media/Shared;->clamp(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cooliris/media/MediaClustering;->mClusterSplitTime:J

    .line 120
    iget-wide v0, p0, Lcom/cooliris/media/MediaClustering;->mClusterSplitTime:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cooliris/media/MediaClustering;->mLargeClusterSplitTime:J

    .line 121
    iget v0, p0, Lcom/cooliris/media/MediaClustering;->mMinClusterSize:I

    const/16 v1, 0x8

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/cooliris/media/Shared;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/cooliris/media/MediaClustering;->mMinClusterSize:I

    .line 122
    iget v0, p0, Lcom/cooliris/media/MediaClustering;->mMaxClusterSize:I

    const/16 v1, 0x14

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Lcom/cooliris/media/Shared;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/cooliris/media/MediaClustering;->mMaxClusterSize:I

    .line 123
    return-void
.end method
