.class public Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;
.super Lcom/google/android/apps/plus/phone/EsCursorAdapter;
.source "PhotosFromPhoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$IsSelectedListener;,
        Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;
    }
.end annotation


# instance fields
.field private mAccessibilityPositions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsSelectedListener:Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$IsSelectedListener;

.field private mItemsPerRow:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPager:Lcom/google/android/apps/plus/phone/Pageable;

.field private mPagerHasMoreData:Z

.field private mPendingView:Landroid/view/View;

.field private mPhotoCount:I

.field private mRowInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSpacing:I

.field private mThumbnailSize:I

.field private mViewSize:I

.field private final mViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/widget/AbsListView;)V
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "listView"

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mViews:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mRowInfos:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mAccessibilityPositions:Ljava/util/Map;

    .line 84
    iput v1, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mItemsPerRow:I

    .line 85
    iput v1, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mSpacing:I

    .line 100
    const-string v0, "PfpAdapter"

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 101
    const-string v0, "PfpAdapter"

    const-string v1, "ctor: listView=%s thread=%s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_42
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 106
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 108
    new-instance v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$1;-><init>(Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;)V

    invoke-virtual {p3, v0}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mViews:Ljava/util/HashMap;

    return-object v0
.end method

.method private addDisplayRows(Landroid/database/Cursor;Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;Ljava/util/ArrayList;)Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;
    .registers 9
    .parameter "newCursor"
    .parameter "lastDivider"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;",
            ">;)",
            "Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;"
        }
    .end annotation

    .prologue
    .line 290
    .local p3, rowInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;>;"
    new-instance v2, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;-><init>(Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$1;)V

    .line 291
    .local v2, rowInfo:Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    const/4 v1, 0x0

    .line 296
    .local v1, numProcessed:I
    :cond_a
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->isDivider(Landroid/database/Cursor;)Z

    move-result v0

    .line 297
    .local v0, isDivider:Z
    if-eqz v0, :cond_14

    .line 298
    move-object p2, v2

    .line 299
    if-lez v1, :cond_1c

    .line 315
    :cond_13
    :goto_13
    return-object p2

    .line 302
    :cond_14
    if-eqz p2, :cond_1c

    .line 303
    iget v3, p2, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;->mDividerCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p2, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;->mDividerCount:I

    .line 306
    :cond_1c
    if-eqz v0, :cond_43

    const/4 v3, 0x0

    :goto_1f
    iput v3, v2, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;->mType:I

    .line 307
    iget-object v3, v2, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;->mPositions:Landroid/util/SparseIntArray;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 309
    if-nez v0, :cond_32

    .line 310
    iget v3, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mPhotoCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mPhotoCount:I

    .line 314
    :cond_32
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_13

    iget v3, v2, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;->mType:I

    if-eqz v3, :cond_13

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mItemsPerRow:I

    if-lt v1, v3, :cond_a

    goto :goto_13

    .line 306
    :cond_43
    const/4 v3, 0x1

    goto :goto_1f
.end method

.method private bindImage(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/database/Cursor;Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 23
    .parameter "context"
    .parameter "parentView"
    .parameter "view"
    .parameter "cursor"
    .parameter "mediaRef"

    .prologue
    .line 533
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->getContentDescription(Lcom/google/android/apps/plus/api/MediaRef;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 535
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/apps/plus/api/MediaRef;->hasLocalUri()Z

    move-result v2

    if-eqz v2, :cond_14c

    .line 536
    :cond_19
    const v2, 0x7f0d004d

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/plus/views/AlbumGridItemView;

    .line 541
    .local v8, albumPhoto:Lcom/google/android/apps/plus/views/AlbumGridItemView;
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/apps/plus/api/MediaRef;->hasLocalUri()Z

    move-result v2

    if-eqz v2, :cond_f0

    .line 542
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/service/EsService;->getLocalImageThumbnail(Landroid/content/Context;Lcom/google/android/apps/plus/api/MediaRef;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 548
    .local v9, coverBitmap:Landroid/graphics/Bitmap;
    :goto_32
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v9}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->bindThumbnail(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 550
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mIsSelectedListener:Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$IsSelectedListener;

    if-eqz v2, :cond_107

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mIsSelectedListener:Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$IsSelectedListener;

    move-object/from16 v0, p3

    invoke-interface {v2, v0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$IsSelectedListener;->isSelected(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_107

    const/4 v11, 0x1

    .line 554
    .local v11, isSelected:Z
    :goto_53
    invoke-virtual {v8, v11}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setIsSelected(Z)V

    .line 557
    const/4 v2, 0x3

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_10a

    const/16 v16, 0x0

    .line 559
    .local v16, plusOneCount:I
    :goto_61
    if-lez v16, :cond_113

    .line 560
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setPlusOneCount(Ljava/lang/Integer;)V

    .line 566
    :goto_6a
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setCommentCount(Ljava/lang/Integer;)V

    .line 569
    const/4 v2, 0x7

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_119

    const/4 v2, 0x1

    :goto_78
    invoke-virtual {v8, v2}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setNotification(Z)V

    .line 572
    const/16 v2, 0xa

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_11c

    const/4 v2, 0x1

    :goto_86
    invoke-virtual {v8, v2}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setIsVideo(Z)V

    .line 575
    const/4 v2, 0x4

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 576
    .local v14, photoId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-eqz v2, :cond_11f

    const/4 v2, 0x1

    :goto_97
    invoke-virtual {v8, v2}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setIsServerImage(Z)V

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_b5

    .line 580
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 581
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    :cond_b5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v2, :cond_d0

    .line 587
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 588
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 593
    :cond_d0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mViews:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_122

    .line 594
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v12, mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mViews:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    .end local v8           #albumPhoto:Lcom/google/android/apps/plus/views/AlbumGridItemView;
    .end local v9           #coverBitmap:Landroid/graphics/Bitmap;
    .end local v11           #isSelected:Z
    .end local v12           #mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    .end local v14           #photoId:J
    .end local v16           #plusOneCount:I
    :cond_ef
    :goto_ef
    return-void

    .line 544
    .restart local v8       #albumPhoto:Lcom/google/android/apps/plus/views/AlbumGridItemView;
    :cond_f0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mThumbnailSize:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mThumbnailSize:I

    const/4 v7, 0x1

    move-object/from16 v2, p1

    move-object/from16 v4, p5

    invoke-static/range {v2 .. v7}, Lcom/google/android/apps/plus/service/EsService;->getCoverThumbnail(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)Landroid/graphics/Bitmap;

    move-result-object v9

    .restart local v9       #coverBitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_32

    .line 552
    :cond_107
    const/4 v11, 0x0

    goto/16 :goto_53

    .line 557
    .restart local v11       #isSelected:Z
    :cond_10a
    const/4 v2, 0x3

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    goto/16 :goto_61

    .line 562
    .restart local v16       #plusOneCount:I
    :cond_113
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setPlusOneCount(Ljava/lang/Integer;)V

    goto/16 :goto_6a

    .line 569
    :cond_119
    const/4 v2, 0x0

    goto/16 :goto_78

    .line 572
    :cond_11c
    const/4 v2, 0x0

    goto/16 :goto_86

    .line 576
    .restart local v14       #photoId:J
    :cond_11f
    const/4 v2, 0x0

    goto/16 :goto_97

    .line 598
    :cond_122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mViews:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 599
    .restart local v12       #mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 600
    .local v13, numMediaRefs:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_133
    if-ge v10, v13, :cond_146

    .line 601
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/api/MediaRef;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/api/MediaRef;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ef

    .line 600
    add-int/lit8 v10, v10, 0x1

    goto :goto_133

    .line 605
    :cond_146
    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ef

    .line 609
    .end local v8           #albumPhoto:Lcom/google/android/apps/plus/views/AlbumGridItemView;
    .end local v9           #coverBitmap:Landroid/graphics/Bitmap;
    .end local v10           #i:I
    .end local v11           #isSelected:Z
    .end local v12           #mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    .end local v13           #numMediaRefs:I
    .end local v14           #photoId:J
    .end local v16           #plusOneCount:I
    :cond_14c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->bindThumbnail(Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_ef
.end method

.method private bindThumbnail(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter "view"
    .parameter "bitmap"

    .prologue
    .line 620
    const v2, 0x7f0d004d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 621
    .local v0, albumPhoto:Landroid/widget/ImageView;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 623
    .local v1, context:Landroid/content/Context;
    if-nez p2, :cond_14

    .line 624
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 628
    :goto_13
    return-void

    .line 626
    :cond_14
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_13
.end method

.method private calculateThumbnailSize(Landroid/content/Context;II)V
    .registers 16
    .parameter "context"
    .parameter "usableWidth"
    .parameter "usableHeight"

    .prologue
    .line 642
    iget v11, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mThumbnailSize:I

    if-eqz v11, :cond_5

    .line 662
    :goto_4
    return-void

    .line 646
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 647
    .local v6, res:Landroid/content/res/Resources;
    const v11, 0x7f0c0061

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 648
    .local v5, minThumbnailSize:I
    const v11, 0x7f0c005f

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 650
    .local v4, minSpacing:I
    div-int v2, p2, v5

    .line 651
    .local v2, horizColumnsRaw:I
    add-int/lit8 v11, v2, -0x1

    mul-int/2addr v11, v4

    sub-int v1, p2, v11

    .line 652
    .local v1, adjustedWidth:I
    div-int v3, v1, v5

    .line 653
    .local v3, horizColumnsWithPadding:I
    div-int v8, v1, v3

    .line 655
    .local v8, sizeUsingWidth:I
    div-int v10, p3, v5

    .line 656
    .local v10, vertColumnsRaw:I
    add-int/lit8 v11, v10, -0x1

    mul-int/2addr v11, v4

    sub-int v0, p3, v11

    .line 657
    .local v0, adjustedHeight:I
    div-int v9, v0, v5

    .line 658
    .local v9, verColumnsWithPadding:I
    div-int v7, v0, v9

    .line 660
    .local v7, sizeUsingHeight:I
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mThumbnailSize:I

    .line 661
    iput v8, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mViewSize:I

    goto :goto_4
.end method

.method private getContentDescription(Lcom/google/android/apps/plus/api/MediaRef;)Ljava/lang/String;
    .registers 7
    .parameter "mediaRef"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mAccessibilityPositions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 670
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f07007d

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mAccessibilityPositions:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mAccessibilityPositions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 673
    :goto_2a
    return-object v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method private getPendingView()Landroid/view/View;
    .registers 4

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mPendingView:Landroid/view/View;

    if-nez v0, :cond_10

    .line 516
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030040

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mPendingView:Landroid/view/View;

    .line 518
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mPendingView:Landroid/view/View;

    return-object v0
.end method

.method private isDivider(Landroid/database/Cursor;)Z
    .registers 4
    .parameter "cursor"

    .prologue
    const/4 v0, 0x1

    .line 635
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 33
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 447
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v24

    .line 448
    .local v24, originalPosition:I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->getItemViewType(I)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_10

    .line 509
    :goto_f
    return-void

    .line 453
    :cond_10
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mRowInfos:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;

    .line 454
    .local v27, rowInfo:Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;
    move-object/from16 v0, p1

    instance-of v10, v0, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_86

    move-object/from16 v10, p1

    check-cast v10, Landroid/widget/LinearLayout;

    move-object/from16 v21, v10

    .line 456
    .local v21, layout:Landroid/widget/LinearLayout;
    :goto_28
    move-object/from16 v0, v27

    iget-object v10, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;->mPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v23

    .line 457
    .local v23, numPositions:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_32
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_12c

    .line 458
    move-object/from16 v0, v27

    iget-object v10, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;->mPositions:Landroid/util/SparseIntArray;

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v10

    if-eqz v10, :cond_83

    .line 459
    move-object/from16 v0, v27

    iget v10, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;->mType:I

    if-nez v10, :cond_89

    .line 460
    const v10, 0x7f0d0130

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 461
    .local v18, date:Landroid/widget/TextView;
    const/4 v10, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 463
    .local v19, dateStr:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    const v10, 0x7f0d0131

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 465
    .local v17, count:Landroid/widget/TextView;
    move-object/from16 v0, v27

    iget v10, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;->mDividerCount:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    .end local v17           #count:Landroid/widget/TextView;
    .end local v18           #date:Landroid/widget/TextView;
    .end local v19           #dateStr:Ljava/lang/String;
    :cond_83
    :goto_83
    add-int/lit8 v20, v20, 0x1

    goto :goto_32

    .line 454
    .end local v20           #i:I
    .end local v21           #layout:Landroid/widget/LinearLayout;
    .end local v23           #numPositions:I
    :cond_86
    const/16 v21, 0x0

    goto :goto_28

    .line 467
    .restart local v20       #i:I
    .restart local v21       #layout:Landroid/widget/LinearLayout;
    .restart local v23       #numPositions:I
    :cond_89
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 468
    .local v13, itemView:Landroid/view/View;
    const/4 v10, 0x0

    invoke-virtual {v13, v10}, Landroid/view/View;->setVisibility(I)V

    .line 470
    move-object/from16 v0, v27

    iget-object v10, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;->mMediaRefs:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/apps/plus/api/MediaRef;

    .line 472
    .local v16, cachedRef:Lcom/google/android/apps/plus/api/MediaRef;
    if-eqz v16, :cond_d1

    .line 473
    move-object/from16 v2, v16

    .line 493
    .local v2, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    :goto_a5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mAccessibilityPositions:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c4

    .line 494
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mAccessibilityPositions:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mAccessibilityPositions:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c4
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p1

    move-object/from16 v14, p3

    move-object v15, v2

    .line 497
    invoke-direct/range {v10 .. v15}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->bindImage(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/database/Cursor;Lcom/google/android/apps/plus/api/MediaRef;)V

    goto :goto_83

    .line 475
    .end local v2           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_d1
    const/16 v10, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 476
    .local v25, ownerId:J
    const/4 v10, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 477
    .local v28, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mThumbnailSize:I

    move-object/from16 v0, v28

    invoke-static {v10, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->getCroppedAndResizedUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 479
    .local v7, resizedUrl:Ljava/lang/String;
    const/4 v10, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 480
    .local v5, photoId:J
    const/4 v10, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 482
    .local v22, localUriString:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_11e

    const/4 v8, 0x0

    .line 484
    .local v8, localUri:Landroid/net/Uri;
    :goto_ff
    const/16 v10, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 486
    .local v9, displayName:Ljava/lang/String;
    const-wide/16 v10, 0x0

    cmp-long v10, v25, v10

    if-eqz v10, :cond_123

    move-wide/from16 v3, v25

    .line 488
    .local v3, ownerGaiaId:J
    :goto_10f
    new-instance v2, Lcom/google/android/apps/plus/api/MediaRef;

    invoke-direct/range {v2 .. v9}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(JJLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 490
    .restart local v2       #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    move-object/from16 v0, v27

    iget-object v10, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;->mMediaRefs:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v10, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_a5

    .line 482
    .end local v2           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v3           #ownerGaiaId:J
    .end local v8           #localUri:Landroid/net/Uri;
    .end local v9           #displayName:Ljava/lang/String;
    :cond_11e
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_ff

    .line 486
    .restart local v8       #localUri:Landroid/net/Uri;
    .restart local v9       #displayName:Ljava/lang/String;
    :cond_123
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v3

    goto :goto_10f

    .line 502
    .end local v5           #photoId:J
    .end local v7           #resizedUrl:Ljava/lang/String;
    .end local v8           #localUri:Landroid/net/Uri;
    .end local v9           #displayName:Ljava/lang/String;
    .end local v13           #itemView:Landroid/view/View;
    .end local v16           #cachedRef:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v22           #localUriString:Ljava/lang/String;
    .end local v25           #ownerId:J
    .end local v28           #url:Ljava/lang/String;
    :cond_12c
    move-object/from16 v0, v27

    iget v10, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;->mType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_14c

    .line 503
    move/from16 v20, v23

    :goto_135
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mItemsPerRow:I

    move/from16 v0, v20

    if-ge v0, v10, :cond_14c

    .line 504
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 503
    add-int/lit8 v20, v20, 0x1

    goto :goto_135

    .line 508
    :cond_14c
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_f
.end method

.method public calculateItemsPerRowAndSpacing(Landroid/content/Context;I)V
    .registers 11
    .parameter "context"
    .parameter "padding"

    .prologue
    .line 127
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 128
    .local v2, metrics:Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 129
    .local v6, wm:Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 131
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v5, v7, p2

    .line 132
    .local v5, usableWidth:I
    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v4, v7, p2

    .line 133
    .local v4, usableHeight:I
    invoke-direct {p0, p1, v5, v4}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->calculateThumbnailSize(Landroid/content/Context;II)V

    .line 135
    iget v7, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mViewSize:I

    div-int v1, v5, v7

    .line 136
    .local v1, items:I
    iget v7, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mViewSize:I

    mul-int/2addr v7, v1

    sub-int v0, v5, v7

    .line 137
    .local v0, difference:I
    if-lez v1, :cond_33

    add-int/lit8 v7, v1, -0x1

    div-int v3, v0, v7

    .line 138
    .local v3, spacing:I
    :goto_2e
    iput v1, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mItemsPerRow:I

    .line 139
    iput v3, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mSpacing:I

    .line 140
    return-void

    .line 137
    .end local v3           #spacing:I
    :cond_33
    const/4 v3, 0x0

    goto :goto_2e
.end method

.method public getCount()I
    .registers 8

    .prologue
    const/4 v6, 0x2

    .line 222
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mRowInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 226
    .local v0, count:I
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mPagerHasMoreData:Z

    if-eqz v1, :cond_f

    if-lez v0, :cond_f

    .line 227
    add-int/lit8 v0, v0, 0x1

    .line 230
    :cond_f
    const-string v1, "PfpAdapter"

    invoke-static {v1, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 231
    const-string v1, "PfpAdapter"

    const-string v2, "getCount: mRowInfos=%d retval=%d thread=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mRowInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_43
    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mRowInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mRowInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;

    iget v0, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;->mType:I

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x2

    goto :goto_12
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "viewGroup"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mRowInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_f

    .line 394
    if-nez p2, :cond_e

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->getPendingView()Landroid/view/View;

    move-result-object p2

    .line 396
    .end local p2
    :cond_e
    :goto_e
    return-object p2

    .restart local p2
    :cond_f
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_e
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 198
    const/4 v0, 0x3

    return v0
.end method

.method public hasItemsPerRow()Z
    .registers 3

    .prologue
    .line 120
    iget v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mItemsPerRow:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 4
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 214
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mRowInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_17

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mRowInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;

    iget v0, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;->mType:I

    if-ne v0, v1, :cond_17

    move v0, v1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .parameter "context"
    .parameter "cursor"
    .parameter "viewGroup"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 404
    const/4 v4, 0x0

    .line 405
    .local v4, returnView:Landroid/view/View;
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->getItemViewType(I)I

    move-result v6

    packed-switch v6, :pswitch_data_68

    .line 439
    :goto_f
    return-object v4

    .line 407
    :pswitch_10
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03006d

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 409
    goto :goto_f

    .line 412
    :pswitch_1a
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03006c

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 414
    .local v1, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 416
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f80

    invoke-direct {v2, v9, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 419
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    iget v6, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mSpacing:I

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mSpacing:I

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v2, v6, v10, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 420
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3b
    iget v6, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mItemsPerRow:I

    if-ge v0, v6, :cond_61

    .line 421
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03000a

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 423
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    invoke-virtual {v1, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    const v6, 0x7f0d004d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/AlbumGridItemView;

    .line 428
    .local v3, photoView:Lcom/google/android/apps/plus/views/AlbumGridItemView;
    iget v6, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mViewSize:I

    iget v7, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mViewSize:I

    invoke-virtual {v3, v6, v7}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setThumbnailSize(II)V

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 430
    .end local v3           #photoView:Lcom/google/android/apps/plus/views/AlbumGridItemView;
    .end local v5           #view:Landroid/view/View;
    :cond_61
    move-object v4, v1

    .line 432
    goto :goto_f

    .line 435
    .end local v0           #i:I
    .end local v1           #layout:Landroid/widget/LinearLayout;
    .end local v2           #params:Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_63
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->getPendingView()Landroid/view/View;

    move-result-object v4

    goto :goto_f

    .line 405
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_10
        :pswitch_1a
        :pswitch_63
    .end packed-switch
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 175
    return-void
.end method

.method public setIsSelectedListener(Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$IsSelectedListener;)V
    .registers 2
    .parameter "isSelectedListener"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mIsSelectedListener:Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$IsSelectedListener;

    .line 167
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter "onClickListener"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 149
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 2
    .parameter "onLongClickListener"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 158
    return-void
.end method

.method public setPageableInput(Lcom/google/android/apps/plus/phone/Pageable;)V
    .registers 9
    .parameter "pager"

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 331
    const-string v2, "PfpAdapter"

    invoke-static {v2, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 332
    const-string v2, "PfpAdapter"

    const-string v3, "setPageableInput: old=%s new=%s thread=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mPager:Lcom/google/android/apps/plus/phone/Pageable;

    aput-object v5, v4, v1

    aput-object p1, v4, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_29
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mPager:Lcom/google/android/apps/plus/phone/Pageable;

    if-ne p1, v2, :cond_2e

    .line 345
    :goto_2d
    return-void

    .line 341
    :cond_2e
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mPager:Lcom/google/android/apps/plus/phone/Pageable;

    .line 342
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mPager:Lcom/google/android/apps/plus/phone/Pageable;

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mPager:Lcom/google/android/apps/plus/phone/Pageable;

    invoke-interface {v2}, Lcom/google/android/apps/plus/phone/Pageable;->hasMore()Z

    move-result v2

    if-eqz v2, :cond_42

    :goto_3c
    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mPagerHasMoreData:Z

    .line 344
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->notifyDataSetChanged()V

    goto :goto_2d

    :cond_42
    move v0, v1

    .line 342
    goto :goto_3c
.end method

.method public setThumbnail(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;)Z
    .registers 11
    .parameter "mediaRef"
    .parameter "bitmap"

    .prologue
    .line 371
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mViews:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .local v3, v:Landroid/view/View;
    move-object v2, v3

    .line 372
    check-cast v2, Landroid/widget/LinearLayout;

    .line 373
    .local v2, layout:Landroid/widget/LinearLayout;
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mViews:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 374
    .local v5, viewMediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 375
    .local v6, viewMediaRefsSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_26
    if-ge v0, v6, :cond_a

    .line 376
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v7, p1}, Lcom/google/android/apps/plus/api/MediaRef;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 377
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 378
    .local v4, view:Landroid/view/View;
    invoke-direct {p0, v4, p2}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->bindThumbnail(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 379
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 380
    const/4 v7, 0x1

    .line 385
    .end local v0           #i:I
    .end local v2           #layout:Landroid/widget/LinearLayout;
    .end local v3           #v:Landroid/view/View;
    .end local v4           #view:Landroid/view/View;
    .end local v5           #viewMediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    .end local v6           #viewMediaRefsSize:I
    :goto_3f
    return v7

    .line 375
    .restart local v0       #i:I
    .restart local v2       #layout:Landroid/widget/LinearLayout;
    .restart local v3       #v:Landroid/view/View;
    .restart local v5       #viewMediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    .restart local v6       #viewMediaRefsSize:I
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 385
    .end local v0           #i:I
    .end local v2           #layout:Landroid/widget/LinearLayout;
    .end local v3           #v:Landroid/view/View;
    .end local v5           #viewMediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    .end local v6           #viewMediaRefsSize:I
    :cond_43
    const/4 v7, 0x0

    goto :goto_3f
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 11
    .parameter "newCursor"

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 244
    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->hasItemsPerRow()Z

    move-result v3

    if-nez v3, :cond_13

    .line 245
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "mItemsPerRow has not been set properly yet!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 248
    :cond_13
    iput v5, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mPhotoCount:I

    .line 250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v2, rowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;>;"
    const/4 v0, 0x0

    .line 252
    .local v0, lastDivider:Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;
    if-eqz p1, :cond_30

    .line 253
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 255
    :cond_23
    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->addDisplayRows(Landroid/database/Cursor;Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;Ljava/util/ArrayList;)Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$DisplayRow;

    move-result-object v0

    .line 256
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 258
    :cond_2d
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 264
    :cond_30
    iput-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mRowInfos:Ljava/util/ArrayList;

    .line 265
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mPager:Lcom/google/android/apps/plus/phone/Pageable;

    if-eqz v3, :cond_80

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mPager:Lcom/google/android/apps/plus/phone/Pageable;

    invoke-interface {v3}, Lcom/google/android/apps/plus/phone/Pageable;->hasMore()Z

    move-result v3

    if-eqz v3, :cond_80

    move v3, v4

    :goto_3f
    iput-boolean v3, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mPagerHasMoreData:Z

    .line 271
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    .line 273
    .local v1, returnCursor:Landroid/database/Cursor;
    const-string v3, "PfpAdapter"

    invoke-static {v3, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 274
    const-string v3, "PfpAdapter"

    const-string v6, "swapCursor: old=%s new=%s mPagerHasMoreData=%s mRowInfos=%d thread=%s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v5

    aput-object p1, v7, v4

    iget-boolean v4, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mPagerHasMoreData:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->mRowInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_7f
    return-object v1

    .end local v1           #returnCursor:Landroid/database/Cursor;
    :cond_80
    move v3, v5

    .line 265
    goto :goto_3f
.end method
