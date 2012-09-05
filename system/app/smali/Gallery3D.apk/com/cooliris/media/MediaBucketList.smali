.class public final Lcom/cooliris/media/MediaBucketList;
.super Ljava/lang/Object;
.source "MediaBucketList.java"


# static fields
.field private static final FALSE:Ljava/lang/Boolean;

.field private static final TRUE:Ljava/lang/Boolean;

.field private static mBuckets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaBucket;",
            ">;"
        }
    .end annotation
.end field

.field private static mCount:I

.field private static mDirtyCount:Z


# instance fields
.field private mCachedItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/cooliris/media/MediaItem;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDirtyAcceleratedLookup:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/cooliris/media/MediaBucketList;->TRUE:Ljava/lang/Boolean;

    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/cooliris/media/MediaBucketList;->FALSE:Ljava/lang/Boolean;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/cooliris/media/MediaBucketList;->mBuckets:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/cooliris/media/MediaBucketList;->mCachedItems:Ljava/util/HashMap;

    return-void
.end method

.method public static getFirstItemSelection(Ljava/util/ArrayList;)Lcom/cooliris/media/MediaItem;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaBucket;",
            ">;)",
            "Lcom/cooliris/media/MediaItem;"
        }
    .end annotation

    .prologue
    .local p0, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    const/4 v6, 0x0

    .line 42
    const/4 v2, 0x0

    .line 43
    .local v2, item:Lcom/cooliris/media/MediaItem;
    if-eqz p0, :cond_29

    .line 44
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 45
    .local v4, numBuckets:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v4, :cond_29

    .line 46
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaBucket;

    .line 47
    .local v0, bucket:Lcom/cooliris/media/MediaBucket;
    if-eqz v0, :cond_2a

    invoke-static {v0}, Lcom/cooliris/media/MediaBucketList;->isSetSelection(Lcom/cooliris/media/MediaBucket;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 48
    iget-object v3, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 49
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2a

    .line 50
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/cooliris/media/MediaItem;
    check-cast v2, Lcom/cooliris/media/MediaItem;

    .line 56
    .end local v0           #bucket:Lcom/cooliris/media/MediaBucket;
    .end local v1           #i:I
    .end local v3           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .end local v4           #numBuckets:I
    .restart local v2       #item:Lcom/cooliris/media/MediaItem;
    :cond_29
    return-object v2

    .line 45
    .restart local v0       #bucket:Lcom/cooliris/media/MediaBucket;
    .restart local v1       #i:I
    .restart local v4       #numBuckets:I
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method public static getFirstSetSelection(Ljava/util/ArrayList;)Lcom/cooliris/media/MediaSet;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaBucket;",
            ">;)",
            "Lcom/cooliris/media/MediaSet;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    const/4 v3, 0x0

    .line 63
    .local v3, set:Lcom/cooliris/media/MediaSet;
    if-eqz p0, :cond_1e

    .line 64
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 65
    .local v2, numBuckets:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_1e

    .line 66
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaBucket;

    .line 67
    .local v0, bucket:Lcom/cooliris/media/MediaBucket;
    if-eqz v0, :cond_1b

    invoke-static {v0}, Lcom/cooliris/media/MediaBucketList;->isSetSelection(Lcom/cooliris/media/MediaBucket;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 68
    iget-object v3, v0, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    .line 65
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 72
    .end local v0           #bucket:Lcom/cooliris/media/MediaBucket;
    .end local v1           #i:I
    .end local v2           #numBuckets:I
    :cond_1e
    return-object v3
.end method

.method protected static isMultipleItemSelection(Ljava/util/ArrayList;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaBucket;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    const/4 v1, 0x0

    .line 273
    if-eqz p0, :cond_9

    .line 274
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 275
    .local v0, numBuckets:I
    if-nez v0, :cond_a

    .line 281
    .end local v0           #numBuckets:I
    :cond_9
    :goto_9
    return v1

    .line 278
    .restart local v0       #numBuckets:I
    :cond_a
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/MediaBucket;

    invoke-static {v1}, Lcom/cooliris/media/MediaBucketList;->isMultipleSetSelection(Lcom/cooliris/media/MediaBucket;)Z

    move-result v1

    goto :goto_9
.end method

.method protected static isMultipleSetSelection(Lcom/cooliris/media/MediaBucket;)Z
    .registers 3
    .parameter "bucket"

    .prologue
    const/4 v0, 0x1

    .line 285
    iget-object v1, p0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected static isSetSelection(Lcom/cooliris/media/MediaBucket;)Z
    .registers 2
    .parameter "bucket"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected static isSetSelection(Ljava/util/ArrayList;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaBucket;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 252
    if-eqz p0, :cond_a

    .line 253
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 254
    .local v0, numBuckets:I
    if-nez v0, :cond_b

    .line 263
    .end local v0           #numBuckets:I
    :cond_a
    :goto_a
    return v1

    .line 256
    .restart local v0       #numBuckets:I
    :cond_b
    if-ne v0, v2, :cond_18

    .line 257
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/MediaBucket;

    invoke-static {v1}, Lcom/cooliris/media/MediaBucketList;->isSetSelection(Lcom/cooliris/media/MediaBucket;)Z

    move-result v1

    goto :goto_a

    :cond_18
    move v1, v2

    .line 260
    goto :goto_a
.end method

.method private setDirty()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 246
    sput-boolean v0, Lcom/cooliris/media/MediaBucketList;->mDirtyCount:Z

    .line 247
    iput-boolean v0, p0, Lcom/cooliris/media/MediaBucketList;->mDirtyAcceleratedLookup:Z

    .line 248
    return-void
.end method


# virtual methods
.method public add(ILcom/cooliris/media/MediaFeed;Z)V
    .registers 27
    .parameter "slotId"
    .parameter "feed"
    .parameter "removeIfAlreadyAdded"

    .prologue
    .line 106
    const/16 v19, -0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 201
    :cond_8
    :goto_8
    return-void

    .line 109
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/cooliris/media/MediaBucketList;->setDirty()V

    .line 110
    sget-object v16, Lcom/cooliris/media/MediaBucketList;->mBuckets:Ljava/util/ArrayList;

    .line 111
    .local v16, selectedBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 112
    .local v14, numSelectedBuckets:I
    const/4 v10, 0x0

    .line 113
    .local v10, mediaSetToAdd:Lcom/cooliris/media/MediaSet;
    const/16 v17, 0x0

    .line 114
    .local v17, selectedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    const/4 v2, 0x0

    .line 115
    .local v2, bucket:Lcom/cooliris/media/MediaBucket;
    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/MediaFeed;->hasExpandedMediaSet()Z

    move-result v5

    .line 116
    .local v5, hasExpandedMediaSet:Z
    if-nez v5, :cond_63

    .line 117
    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/MediaFeed;->getMediaSets()Ljava/util/ArrayList;

    move-result-object v11

    .line 118
    .local v11, mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, p1

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 121
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #mediaSetToAdd:Lcom/cooliris/media/MediaSet;
    check-cast v10, Lcom/cooliris/media/MediaSet;

    .line 136
    .end local v11           #mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    .restart local v10       #mediaSetToAdd:Lcom/cooliris/media/MediaSet;
    :cond_32
    :goto_32
    const/4 v6, 0x0

    .local v6, i:I
    :goto_33
    if-ge v6, v14, :cond_8f

    .line 137
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/MediaBucket;

    .line 138
    .local v3, bucketCompare:Lcom/cooliris/media/MediaBucket;
    if-eqz v3, :cond_101

    iget-object v0, v3, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    move-object/from16 v19, v0

    if-eqz v19, :cond_101

    if-eqz v10, :cond_101

    iget-object v0, v3, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/cooliris/media/MediaSet;->mId:J

    move-wide/from16 v19, v0

    iget-wide v0, v10, Lcom/cooliris/media/MediaSet;->mId:J

    move-wide/from16 v21, v0

    cmp-long v19, v19, v21

    if-nez v19, :cond_101

    .line 141
    if-nez v5, :cond_8e

    .line 144
    if-eqz p3, :cond_8

    .line 145
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 123
    .end local v3           #bucketCompare:Lcom/cooliris/media/MediaBucket;
    .end local v6           #i:I
    :cond_63
    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/MediaFeed;->getNumSlots()I

    move-result v15

    .line 124
    .local v15, numSlots:I
    move/from16 v0, p1

    if-ge v0, v15, :cond_32

    .line 125
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/cooliris/media/MediaFeed;->getSetForSlot(I)Lcom/cooliris/media/MediaSet;

    move-result-object v18

    .line 126
    .local v18, set:Lcom/cooliris/media/MediaSet;
    if-eqz v18, :cond_32

    .line 127
    invoke-virtual/range {v18 .. v18}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v8

    .line 128
    .local v8, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v19

    if-lez v19, :cond_32

    .line 129
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/cooliris/media/MediaItem;

    move-object/from16 v0, v19

    iget-object v10, v0, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    goto :goto_32

    .line 149
    .end local v8           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .end local v15           #numSlots:I
    .end local v18           #set:Lcom/cooliris/media/MediaSet;
    .restart local v3       #bucketCompare:Lcom/cooliris/media/MediaBucket;
    .restart local v6       #i:I
    :cond_8e
    move-object v2, v3

    .line 154
    .end local v3           #bucketCompare:Lcom/cooliris/media/MediaBucket;
    :cond_8f
    if-nez v2, :cond_a1

    .line 156
    new-instance v2, Lcom/cooliris/media/MediaBucket;

    .end local v2           #bucket:Lcom/cooliris/media/MediaBucket;
    invoke-direct {v2}, Lcom/cooliris/media/MediaBucket;-><init>()V

    .line 157
    .restart local v2       #bucket:Lcom/cooliris/media/MediaBucket;
    iput-object v10, v2, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    .line 158
    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 159
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_a1
    if-eqz v5, :cond_108

    .line 162
    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/MediaFeed;->getNumSlots()I

    move-result v15

    .line 163
    .restart local v15       #numSlots:I
    move/from16 v0, p1

    if-ge v0, v15, :cond_108

    .line 164
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/cooliris/media/MediaFeed;->getSetForSlot(I)Lcom/cooliris/media/MediaSet;

    move-result-object v18

    .line 165
    .restart local v18       #set:Lcom/cooliris/media/MediaSet;
    if-eqz v18, :cond_108

    .line 166
    invoke-virtual/range {v18 .. v18}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v8

    .line 167
    .restart local v8       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v12

    .line 168
    .local v12, numItems:I
    iget-object v0, v2, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 169
    if-nez v17, :cond_ce

    .line 170
    new-instance v17, Ljava/util/ArrayList;

    .end local v17           #selectedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .restart local v17       #selectedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 173
    :cond_ce
    const/4 v6, 0x0

    :goto_cf
    if-ge v6, v12, :cond_108

    .line 174
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cooliris/media/MediaItem;

    .line 176
    .local v7, item:Lcom/cooliris/media/MediaItem;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 177
    .local v13, numPresentItems:I
    const/4 v4, 0x0

    .line 178
    .local v4, foundIndex:Z
    const/4 v9, 0x0

    .local v9, j:I
    :goto_dd
    if-ge v9, v13, :cond_f7

    .line 183
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/cooliris/media/MediaItem;

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/cooliris/media/MediaItem;->equals(Lcom/cooliris/media/MediaItem;)Z

    move-result v19

    if-eqz v19, :cond_105

    .line 186
    const/4 v4, 0x1

    .line 187
    if-eqz p3, :cond_f7

    .line 188
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 193
    :cond_f7
    if-nez v4, :cond_fe

    .line 194
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_fe
    add-int/lit8 v6, v6, 0x1

    goto :goto_cf

    .line 136
    .end local v4           #foundIndex:Z
    .end local v7           #item:Lcom/cooliris/media/MediaItem;
    .end local v8           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .end local v9           #j:I
    .end local v12           #numItems:I
    .end local v13           #numPresentItems:I
    .end local v15           #numSlots:I
    .end local v18           #set:Lcom/cooliris/media/MediaSet;
    .restart local v3       #bucketCompare:Lcom/cooliris/media/MediaBucket;
    :cond_101
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_33

    .line 178
    .end local v3           #bucketCompare:Lcom/cooliris/media/MediaBucket;
    .restart local v4       #foundIndex:Z
    .restart local v7       #item:Lcom/cooliris/media/MediaItem;
    .restart local v8       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .restart local v9       #j:I
    .restart local v12       #numItems:I
    .restart local v13       #numPresentItems:I
    .restart local v15       #numSlots:I
    .restart local v18       #set:Lcom/cooliris/media/MediaSet;
    :cond_105
    add-int/lit8 v9, v9, 0x1

    goto :goto_dd

    .line 200
    .end local v4           #foundIndex:Z
    .end local v7           #item:Lcom/cooliris/media/MediaItem;
    .end local v8           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .end local v9           #j:I
    .end local v12           #numItems:I
    .end local v13           #numPresentItems:I
    .end local v15           #numSlots:I
    .end local v18           #set:Lcom/cooliris/media/MediaSet;
    :cond_108
    invoke-direct/range {p0 .. p0}, Lcom/cooliris/media/MediaBucketList;->setDirty()V

    goto/16 :goto_8
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 241
    sget-object v0, Lcom/cooliris/media/MediaBucketList;->mBuckets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 242
    invoke-direct {p0}, Lcom/cooliris/media/MediaBucketList;->setDirty()V

    .line 243
    return-void
.end method

.method public find(Lcom/cooliris/media/MediaItem;)Z
    .registers 15
    .parameter "item"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 204
    iget-object v1, p0, Lcom/cooliris/media/MediaBucketList;->mCachedItems:Ljava/util/HashMap;

    .line 205
    .local v1, cachedItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/cooliris/media/MediaItem;Ljava/lang/Boolean;>;"
    iget-boolean v12, p0, Lcom/cooliris/media/MediaBucketList;->mDirtyAcceleratedLookup:Z

    if-eqz v12, :cond_d

    .line 206
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 207
    iput-boolean v11, p0, Lcom/cooliris/media/MediaBucketList;->mDirtyAcceleratedLookup:Z

    .line 209
    :cond_d
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 210
    .local v3, itemAdded:Ljava/lang/Boolean;
    if-nez v3, :cond_60

    .line 211
    sget-object v9, Lcom/cooliris/media/MediaBucketList;->mBuckets:Ljava/util/ArrayList;

    .line 212
    .local v9, selectedBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 213
    .local v7, numSelectedBuckets:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1c
    if-ge v2, v7, :cond_59

    .line 214
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaBucket;

    .line 215
    .local v0, bucket:Lcom/cooliris/media/MediaBucket;
    iget-object v6, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 216
    .local v6, mediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    if-nez v6, :cond_3a

    .line 217
    iget-object v8, p1, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    .line 218
    .local v8, parentMediaSet:Lcom/cooliris/media/MediaSet;
    if-eqz v8, :cond_56

    iget-object v12, v0, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    invoke-virtual {v8, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_56

    .line 219
    sget-object v11, Lcom/cooliris/media/MediaBucketList;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .end local v0           #bucket:Lcom/cooliris/media/MediaBucket;
    .end local v2           #i:I
    .end local v6           #mediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .end local v7           #numSelectedBuckets:I
    .end local v8           #parentMediaSet:Lcom/cooliris/media/MediaSet;
    .end local v9           #selectedBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    :goto_39
    return v10

    .line 224
    .restart local v0       #bucket:Lcom/cooliris/media/MediaBucket;
    .restart local v2       #i:I
    .restart local v6       #mediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .restart local v7       #numSelectedBuckets:I
    .restart local v9       #selectedBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    :cond_3a
    const/4 v5, 0x0

    .local v5, j:I
    :goto_3b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_56

    .line 225
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cooliris/media/MediaItem;

    .line 226
    .local v4, itemCompare:Lcom/cooliris/media/MediaItem;
    invoke-virtual {v4, p1}, Lcom/cooliris/media/MediaItem;->equals(Lcom/cooliris/media/MediaItem;)Z

    move-result v12

    if-eqz v12, :cond_53

    .line 227
    sget-object v11, Lcom/cooliris/media/MediaBucketList;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 224
    :cond_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 213
    .end local v4           #itemCompare:Lcom/cooliris/media/MediaItem;
    .end local v5           #j:I
    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 233
    .end local v0           #bucket:Lcom/cooliris/media/MediaBucket;
    .end local v6           #mediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    :cond_59
    sget-object v10, Lcom/cooliris/media/MediaBucketList;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v10, v11

    .line 234
    goto :goto_39

    .line 236
    .end local v2           #i:I
    .end local v7           #numSelectedBuckets:I
    .end local v9           #selectedBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    :cond_60
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_39
.end method

.method public findItem(ILcom/cooliris/media/MediaFeed;)Z
    .registers 22
    .parameter "slotId"
    .parameter "feed"

    .prologue
    .line 289
    const/16 v18, -0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 290
    const/16 v18, 0x0

    .line 359
    :goto_a
    return v18

    .line 292
    :cond_b
    sget-object v15, Lcom/cooliris/media/MediaBucketList;->mBuckets:Ljava/util/ArrayList;

    .line 293
    .local v15, selectedBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 294
    .local v13, numSelectedBuckets:I
    const/4 v9, 0x0

    .line 295
    .local v9, mediaSetToAdd:Lcom/cooliris/media/MediaSet;
    const/16 v16, 0x0

    .line 296
    .local v16, selectedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    const/4 v2, 0x0

    .line 297
    .local v2, bucket:Lcom/cooliris/media/MediaBucket;
    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/MediaFeed;->hasExpandedMediaSet()Z

    move-result v4

    .line 298
    .local v4, hasExpandedMediaSet:Z
    if-nez v4, :cond_4a

    .line 299
    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/MediaFeed;->getMediaSets()Ljava/util/ArrayList;

    move-result-object v10

    .line 300
    .local v10, mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, p1

    move/from16 v1, v18

    if-lt v0, v1, :cond_2c

    .line 301
    const/16 v18, 0x0

    goto :goto_a

    .line 303
    :cond_2c
    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #mediaSetToAdd:Lcom/cooliris/media/MediaSet;
    check-cast v9, Lcom/cooliris/media/MediaSet;

    .line 318
    .end local v10           #mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    .restart local v9       #mediaSetToAdd:Lcom/cooliris/media/MediaSet;
    :cond_34
    :goto_34
    const/4 v5, 0x0

    .local v5, i:I
    :goto_35
    if-ge v5, v13, :cond_76

    .line 319
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/MediaBucket;

    .line 320
    .local v3, bucketCompare:Lcom/cooliris/media/MediaBucket;
    iget-object v0, v3, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-ne v0, v9, :cond_ce

    .line 321
    if-nez v4, :cond_75

    .line 322
    const/16 v18, 0x1

    goto :goto_a

    .line 305
    .end local v3           #bucketCompare:Lcom/cooliris/media/MediaBucket;
    .end local v5           #i:I
    :cond_4a
    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/MediaFeed;->getNumSlots()I

    move-result v14

    .line 306
    .local v14, numSlots:I
    move/from16 v0, p1

    if-ge v0, v14, :cond_34

    .line 307
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/cooliris/media/MediaFeed;->getSetForSlot(I)Lcom/cooliris/media/MediaSet;

    move-result-object v17

    .line 308
    .local v17, set:Lcom/cooliris/media/MediaSet;
    if-eqz v17, :cond_34

    .line 309
    invoke-virtual/range {v17 .. v17}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v7

    .line 310
    .local v7, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    invoke-virtual/range {v17 .. v17}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v18

    if-lez v18, :cond_34

    .line 311
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/cooliris/media/MediaItem;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    goto :goto_34

    .line 324
    .end local v7           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .end local v14           #numSlots:I
    .end local v17           #set:Lcom/cooliris/media/MediaSet;
    .restart local v3       #bucketCompare:Lcom/cooliris/media/MediaBucket;
    .restart local v5       #i:I
    :cond_75
    move-object v2, v3

    .line 329
    .end local v3           #bucketCompare:Lcom/cooliris/media/MediaBucket;
    :cond_76
    if-nez v2, :cond_83

    .line 331
    new-instance v2, Lcom/cooliris/media/MediaBucket;

    .end local v2           #bucket:Lcom/cooliris/media/MediaBucket;
    invoke-direct {v2}, Lcom/cooliris/media/MediaBucket;-><init>()V

    .line 332
    .restart local v2       #bucket:Lcom/cooliris/media/MediaBucket;
    iput-object v9, v2, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    .line 333
    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 335
    :cond_83
    if-eqz v4, :cond_d8

    .line 336
    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/MediaFeed;->getNumSlots()I

    move-result v14

    .line 337
    .restart local v14       #numSlots:I
    move/from16 v0, p1

    if-ge v0, v14, :cond_d8

    .line 338
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/cooliris/media/MediaFeed;->getSetForSlot(I)Lcom/cooliris/media/MediaSet;

    move-result-object v17

    .line 339
    .restart local v17       #set:Lcom/cooliris/media/MediaSet;
    if-eqz v17, :cond_d8

    .line 340
    invoke-virtual/range {v17 .. v17}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v7

    .line 341
    .restart local v7       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    invoke-virtual/range {v17 .. v17}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v11

    .line 342
    .local v11, numItems:I
    iget-object v0, v2, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 343
    if-nez v16, :cond_b0

    .line 344
    new-instance v16, Ljava/util/ArrayList;

    .end local v16           #selectedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 345
    .restart local v16       #selectedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 347
    :cond_b0
    const/4 v5, 0x0

    :goto_b1
    if-ge v5, v11, :cond_d8

    .line 348
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cooliris/media/MediaItem;

    .line 349
    .local v6, item:Lcom/cooliris/media/MediaItem;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 350
    .local v12, numPresentItems:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_be
    if-ge v8, v12, :cond_d5

    .line 351
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    if-ne v0, v6, :cond_d2

    .line 352
    const/16 v18, 0x1

    goto/16 :goto_a

    .line 318
    .end local v6           #item:Lcom/cooliris/media/MediaItem;
    .end local v7           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .end local v8           #j:I
    .end local v11           #numItems:I
    .end local v12           #numPresentItems:I
    .end local v14           #numSlots:I
    .end local v17           #set:Lcom/cooliris/media/MediaSet;
    .restart local v3       #bucketCompare:Lcom/cooliris/media/MediaBucket;
    :cond_ce
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_35

    .line 350
    .end local v3           #bucketCompare:Lcom/cooliris/media/MediaBucket;
    .restart local v6       #item:Lcom/cooliris/media/MediaItem;
    .restart local v7       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .restart local v8       #j:I
    .restart local v11       #numItems:I
    .restart local v12       #numPresentItems:I
    .restart local v14       #numSlots:I
    .restart local v17       #set:Lcom/cooliris/media/MediaSet;
    :cond_d2
    add-int/lit8 v8, v8, 0x1

    goto :goto_be

    .line 347
    :cond_d5
    add-int/lit8 v5, v5, 0x1

    goto :goto_b1

    .line 359
    .end local v6           #item:Lcom/cooliris/media/MediaItem;
    .end local v7           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .end local v8           #j:I
    .end local v11           #numItems:I
    .end local v12           #numPresentItems:I
    .end local v14           #numSlots:I
    .end local v17           #set:Lcom/cooliris/media/MediaSet;
    :cond_d8
    const/16 v18, 0x0

    goto/16 :goto_a
.end method

.method public get()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaBucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lcom/cooliris/media/MediaBucketList;->mBuckets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public size()I
    .registers 8

    .prologue
    .line 80
    sget-boolean v6, Lcom/cooliris/media/MediaBucketList;->mDirtyCount:Z

    if-eqz v6, :cond_3a

    .line 81
    sget-object v1, Lcom/cooliris/media/MediaBucketList;->mBuckets:Ljava/util/ArrayList;

    .line 82
    .local v1, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 83
    .local v4, numBuckets:I
    const/4 v2, 0x0

    .line 84
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_c
    if-ge v3, v4, :cond_35

    .line 85
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaBucket;

    .line 86
    .local v0, bucket:Lcom/cooliris/media/MediaBucket;
    const/4 v5, 0x0

    .line 87
    .local v5, numItems:I
    iget-object v6, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    if-nez v6, :cond_2a

    iget-object v6, v0, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    if-eqz v6, :cond_2a

    .line 88
    iget-object v6, v0, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    invoke-virtual {v6}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v5

    .line 91
    if-nez v5, :cond_26

    .line 92
    const/4 v5, 0x1

    .line 97
    :cond_26
    :goto_26
    add-int/2addr v2, v5

    .line 84
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 94
    :cond_2a
    iget-object v6, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    if-eqz v6, :cond_26

    .line 95
    iget-object v6, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_26

    .line 99
    .end local v0           #bucket:Lcom/cooliris/media/MediaBucket;
    .end local v5           #numItems:I
    :cond_35
    sput v2, Lcom/cooliris/media/MediaBucketList;->mCount:I

    .line 100
    const/4 v6, 0x0

    sput-boolean v6, Lcom/cooliris/media/MediaBucketList;->mDirtyCount:Z

    .line 102
    .end local v1           #buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #numBuckets:I
    :cond_3a
    sget v6, Lcom/cooliris/media/MediaBucketList;->mCount:I

    return v6
.end method
