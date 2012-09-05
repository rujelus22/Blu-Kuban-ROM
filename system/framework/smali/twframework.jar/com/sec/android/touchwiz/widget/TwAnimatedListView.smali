.class public abstract Lcom/sec/android/touchwiz/widget/TwAnimatedListView;
.super Lcom/sec/android/touchwiz/widget/TwListView;
.source "TwAnimatedListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$1;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertItemAnimation;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    }
.end annotation


# static fields
.field public static final ITEM_ANIMATION_FADE:I = 0x4

.field public static final ITEM_ANIMATION_HORIZONTAL_SLIDE:I = 0x1

.field public static final ITEM_ANIMATION_MAX:I = 0x5

.field public static final ITEM_ANIMATION_NONE:I = 0x0

.field public static final ITEM_ANIMATION_VERTICAL_DROPDOWN:I = 0x3

.field public static final ITEM_ANIMATION_VERTICAL_SLIDE:I = 0x2

.field private static final ITEM_INIT_ANIMATION_DURATION:I = 0x12c


# instance fields
.field private DEBUG_ANIMATION_FLAG:Z

.field private mAnimationType:I

.field private mCurIxdex:[J

.field private mCustomItemDeleteDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;

.field private mCustomItemInsertDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;

.field private mDeleteDelay:I

.field private mDeleteDuration:I

.field private mDeleteItemList:Ljava/util/ArrayList;

.field private mDuration:I

.field private mFlexibleViews:Ljava/util/ArrayList;

.field private mIndexOffset:[I

.field private mInsertDelay:I

.field private mInsertDuration:I

.field private mIsAnimating:Z

.field private mIsDrawingDeleteView:Z

.field private mIsDrawingInsertView:Z

.field private mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

.field protected mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

.field private mMaxAlpha:I

.field private mMinAlpha:I

.field private mPrevIndex:[J

.field private mPrevPosition:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTempTrans:Landroid/view/animation/Transformation;

.field private mTranslateDelay:I

.field private mUseCache:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 780
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 781
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 784
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 785
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 788
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    .line 59
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    .line 823
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    .line 825
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempTrans:Landroid/view/animation/Transformation;

    .line 789
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DEBUG_ANIMATION_FLAG:Z

    .line 790
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mFlexibleViews:Ljava/util/ArrayList;

    .line 791
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    .line 792
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempRect:Landroid/graphics/Rect;

    .line 793
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    .line 794
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    .line 795
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    .line 796
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    .line 797
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingDeleteView:Z

    .line 798
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingInsertView:Z

    .line 799
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    .line 800
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMinAlpha:I

    .line 801
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMaxAlpha:I

    .line 802
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDuration:I

    .line 803
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDelay:I

    .line 804
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDelay:I

    .line 805
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTranslateDelay:I

    .line 806
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDuration:I

    .line 807
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDuration:I

    .line 808
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    .line 809
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Landroid/graphics/Rect;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;

    return-object v0
.end method

.method private drawDeleteItem(Landroid/graphics/Canvas;)V
    .registers 23
    .parameter "canvas"

    .prologue
    .line 1048
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    if-eqz v2, :cond_ce

    .line 1049
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMaxAlpha:I

    move/from16 v16, v0

    .line 1050
    .local v16, maxAlpha:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMinAlpha:I

    move/from16 v17, v0

    .line 1051
    .local v17, minAlpha:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .local v14, i:I
    :goto_1c
    if-ltz v14, :cond_ce

    .line 1052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1053
    .local v11, deletePos:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v2, v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getDeleteItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v15

    .line 1054
    .local v15, ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    if-nez v15, :cond_39

    .line 1051
    :cond_36
    :goto_36
    add-int/lit8 v14, v14, -0x1

    goto :goto_1c

    .line 1056
    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2, v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v10

    .line 1057
    .local v10, child:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getDrawingTime()J

    move-result-wide v12

    .line 1058
    .local v12, drawingTime:J
    if-eqz v10, :cond_36

    .line 1060
    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getType()I

    move-result v2

    if-nez v2, :cond_c0

    .line 1061
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v20

    .line 1062
    .local v20, save:I
    sub-int v2, v16, v17

    int-to-float v3, v2

    move-object v2, v15

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getProgress()F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v7, v16, v2

    .line 1063
    .local v7, alpha:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    if-eqz v2, :cond_a5

    .line 1064
    instance-of v2, v15, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_91

    move-object v9, v15

    .line 1065
    check-cast v9, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 1066
    .local v9, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getPaint()Landroid/graphics/Paint;

    move-result-object v18

    .line 1067
    .local v18, p:Landroid/graphics/Paint;
    if-nez v18, :cond_7a

    .line 1068
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v9, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setPaint(Landroid/graphics/Paint;)V

    .line 1069
    :cond_7a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_91

    .line 1070
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getPaint()Landroid/graphics/Paint;

    move-result-object v19

    .line 1071
    .local v19, pt:Landroid/graphics/Paint;
    if-eqz v19, :cond_91

    .line 1072
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1073
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setPaint(Landroid/graphics/Paint;)V

    .line 1079
    .end local v9           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    .end local v18           #p:Landroid/graphics/Paint;
    .end local v19           #pt:Landroid/graphics/Paint;
    :cond_91
    :goto_91
    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1080
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v12, v13}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 1081
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_36

    .line 1077
    :cond_a5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_91

    .line 1078
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getHeight()I

    move-result v2

    int-to-float v6, v2

    const/16 v8, 0x14

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_91

    .line 1083
    .end local v7           #alpha:I
    .end local v20           #save:I
    :cond_c0
    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1084
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v12, v13}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto/16 :goto_36

    .line 1089
    .end local v10           #child:Landroid/view/View;
    .end local v11           #deletePos:I
    .end local v12           #drawingTime:J
    .end local v14           #i:I
    .end local v15           #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v16           #maxAlpha:I
    .end local v17           #minAlpha:I
    :cond_ce
    return-void
.end method

.method private drawInsertItem(Landroid/graphics/Canvas;)V
    .registers 24
    .parameter "canvas"

    .prologue
    .line 1001
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 1002
    .local v14, first:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildCount()I

    move-result v11

    .line 1003
    .local v11, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMaxAlpha:I

    move/from16 v17, v0

    .line 1004
    .local v17, maxAlpha:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMinAlpha:I

    move/from16 v18, v0

    .line 1005
    .local v18, minAlpha:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    if-eqz v2, :cond_d5

    .line 1006
    add-int v2, v14, v11

    add-int/lit8 v15, v2, -0x1

    .local v15, i:I
    :goto_1e
    if-lt v15, v14, :cond_d5

    .line 1007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v2, v2, v15

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_2e

    .line 1006
    :cond_2b
    :goto_2b
    add-int/lit8 v15, v15, -0x1

    goto :goto_1e

    .line 1009
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v2, v15}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v16

    .line 1010
    .local v16, ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    if-eqz v16, :cond_2b

    .line 1012
    sub-int v2, v15, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1013
    .local v10, child:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getDrawingTime()J

    move-result-wide v12

    .line 1014
    .local v12, drawingTime:J
    if-eqz v10, :cond_2b

    .line 1016
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getType()I

    move-result v2

    if-nez v2, :cond_c5

    .line 1017
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    .line 1018
    .local v21, save:I
    sub-int v2, v17, v18

    int-to-float v3, v2

    move-object/from16 v2, v16

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getProgress()F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int v7, v18, v2

    .line 1019
    .local v7, alpha:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    if-eqz v2, :cond_aa

    .line 1020
    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_94

    move-object/from16 v9, v16

    .line 1021
    check-cast v9, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 1022
    .local v9, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getPaint()Landroid/graphics/Paint;

    move-result-object v19

    .line 1023
    .local v19, p:Landroid/graphics/Paint;
    if-nez v19, :cond_7d

    .line 1024
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v9, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setPaint(Landroid/graphics/Paint;)V

    .line 1025
    :cond_7d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_94

    .line 1026
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getPaint()Landroid/graphics/Paint;

    move-result-object v20

    .line 1027
    .local v20, pt:Landroid/graphics/Paint;
    if-eqz v20, :cond_94

    .line 1028
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1029
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setPaint(Landroid/graphics/Paint;)V

    .line 1035
    .end local v9           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    .end local v19           #p:Landroid/graphics/Paint;
    .end local v20           #pt:Landroid/graphics/Paint;
    :cond_94
    :goto_94
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1036
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v12, v13}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 1037
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2b

    .line 1033
    :cond_aa
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_94

    .line 1034
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getHeight()I

    move-result v2

    int-to-float v6, v2

    const/16 v8, 0x14

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_94

    .line 1039
    .end local v7           #alpha:I
    .end local v21           #save:I
    :cond_c5
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1040
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v12, v13}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto/16 :goto_2b

    .line 1045
    .end local v10           #child:Landroid/view/View;
    .end local v12           #drawingTime:J
    .end local v15           #i:I
    .end local v16           #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    :cond_d5
    return-void
.end method

.method private drawKeepView(Landroid/graphics/Canvas;)V
    .registers 13
    .parameter "canvas"

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getDrawingTime()J

    move-result-wide v4

    .line 930
    .local v4, drawingTime:J
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getRetainViewPositions()[Ljava/lang/Object;

    move-result-object v10

    .line 931
    .local v10, pos:[Ljava/lang/Object;
    if-eqz v10, :cond_2e

    array-length v0, v10

    if-lez v0, :cond_2e

    .line 932
    move-object v6, v10

    .line 933
    .local v6, arr$:[Ljava/lang/Object;
    array-length v8, v6

    .line 934
    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_12
    if-ge v7, v8, :cond_2e

    .line 935
    aget-object v9, v6, v7

    .line 936
    .local v9, obj:Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 937
    .local v2, position:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v3

    .line 938
    .local v3, keepView:Landroid/view/View;
    if-eqz v3, :cond_2b

    move-object v0, p0

    move-object v1, p1

    .line 939
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawKeepChild(Landroid/graphics/Canvas;ILandroid/view/View;J)Z

    .line 934
    :cond_2b
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 943
    .end local v2           #position:I
    .end local v3           #keepView:Landroid/view/View;
    .end local v6           #arr$:[Ljava/lang/Object;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #obj:Ljava/lang/Object;
    :cond_2e
    return-void
.end method

.method private findItemOffsetPos()V
    .registers 12

    .prologue
    const v10, 0x7fffffff

    .line 1092
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    if-eqz v6, :cond_ab

    .line 1093
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v0, v6

    .line 1094
    .local v0, curLen:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v6

    .line 1095
    .local v5, prevLen:I
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v6, :cond_48

    .line 1096
    new-array v6, v0, [I

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    .line 1097
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    if-ge v2, v0, :cond_73

    .line 1098
    const/4 v4, 0x0

    .line 1099
    .local v4, match:Z
    const/4 v3, 0x0

    .line 1101
    .local v3, j:I
    :goto_1a
    if-lt v3, v5, :cond_28

    .line 1110
    :goto_1c
    if-nez v4, :cond_25

    .line 1111
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    add-int/lit8 v7, v0, -0x1

    sub-int/2addr v7, v2

    aput v10, v6, v7

    .line 1097
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1103
    :cond_28
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    add-int/lit8 v7, v0, -0x1

    sub-int/2addr v7, v2

    aget-wide v6, v6, v7

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    add-int/lit8 v9, v5, -0x1

    sub-int/2addr v9, v3

    aget-wide v8, v8, v9

    cmp-long v6, v6, v8

    if-nez v6, :cond_45

    .line 1104
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    add-int/lit8 v7, v0, -0x1

    sub-int/2addr v7, v2

    sub-int v8, v2, v3

    aput v8, v6, v7

    .line 1105
    const/4 v4, 0x1

    .line 1106
    goto :goto_1c

    .line 1108
    :cond_45
    add-int/lit8 v3, v3, 0x1

    .line 1109
    goto :goto_1a

    .line 1115
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #match:Z
    :cond_48
    new-array v6, v0, [I

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    .line 1116
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4d
    if-ge v2, v0, :cond_73

    .line 1117
    const/4 v4, 0x0

    .line 1118
    .restart local v4       #match:Z
    const/4 v3, 0x0

    .line 1120
    .restart local v3       #j:I
    :goto_51
    if-lt v3, v5, :cond_5c

    .line 1129
    :goto_53
    if-nez v4, :cond_59

    .line 1130
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aput v10, v6, v2

    .line 1116
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 1122
    :cond_5c
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v6, v6, v2

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v8, v8, v3

    cmp-long v6, v6, v8

    if-nez v6, :cond_70

    .line 1123
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    sub-int v7, v2, v3

    aput v7, v6, v2

    .line 1124
    const/4 v4, 0x1

    .line 1125
    goto :goto_53

    .line 1127
    :cond_70
    add-int/lit8 v3, v3, 0x1

    .line 1128
    goto :goto_51

    .line 1134
    .end local v3           #j:I
    .end local v4           #match:Z
    :cond_73
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    if-nez v6, :cond_94

    .line 1135
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    .line 1138
    :goto_7e
    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_7f
    if-ge v3, v5, :cond_ab

    .line 1139
    const/4 v1, 0x0

    .line 1140
    .local v1, exist:Z
    const/4 v2, 0x0

    .line 1142
    :goto_83
    if-lt v2, v0, :cond_9a

    .line 1150
    :goto_85
    if-nez v1, :cond_91

    .line 1151
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    :cond_91
    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    .line 1137
    .end local v1           #exist:Z
    .end local v3           #j:I
    :cond_94
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_7e

    .line 1144
    .restart local v1       #exist:Z
    .restart local v3       #j:I
    :cond_9a
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v6, v6, v3

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v8, v8, v2

    cmp-long v6, v6, v8

    if-nez v6, :cond_a8

    .line 1145
    const/4 v1, 0x1

    .line 1146
    goto :goto_85

    .line 1148
    :cond_a8
    add-int/lit8 v2, v2, 0x1

    .line 1149
    goto :goto_83

    .line 1154
    .end local v0           #curLen:I
    .end local v1           #exist:Z
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v5           #prevLen:I
    :cond_ab
    return-void
.end method

.method private getAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .registers 6
    .parameter "width"
    .parameter "height"
    .parameter "delay"

    .prologue
    .line 2043
    const/4 v0, 0x0

    .line 2044
    .local v0, ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    if-eqz p2, :cond_18

    .line 2045
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .end local v0           #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Lcom/sec/android/touchwiz/widget/TwAnimatedListView$1;)V

    .line 2046
    .restart local v0       #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    .line 2047
    neg-int v1, p1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startX:I

    .line 2048
    iput p1, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaX:I

    .line 2049
    neg-int v1, p2

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startY:I

    .line 2050
    iput p2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaY:I

    .line 2051
    iput p3, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->delay:I

    .line 2053
    :cond_18
    return-object v0
.end method

.method private getCustomDeleteAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;J)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .registers 11
    .parameter "position"
    .parameter "data"
    .parameter "startTime"

    .prologue
    const-wide/16 v4, 0x0

    .line 961
    if-eqz p2, :cond_23

    .line 962
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)V

    .line 963
    .local v0, ca:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;

    invoke-interface {v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;->getDeleteAnimationDuration()J

    move-result-wide v1

    .line 964
    .local v1, duration:J
    cmp-long v3, v1, v4

    if-gtz v3, :cond_16

    .line 965
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDuration:I

    int-to-long v1, v3

    .line 966
    :cond_16
    cmp-long v3, p3, v4

    if-nez v3, :cond_1e

    .line 967
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    .line 968
    :cond_1e
    long-to-int v3, v1

    invoke-virtual {v0, p3, p4, p1, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->start(JII)V

    .line 971
    .end local v0           #ca:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;
    .end local v1           #duration:J
    :goto_22
    return-object v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private getCustomInsertAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;J)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .registers 11
    .parameter "position"
    .parameter "data"
    .parameter "startTime"

    .prologue
    const-wide/16 v4, 0x0

    .line 946
    if-eqz p2, :cond_23

    .line 947
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertItemAnimation;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertItemAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)V

    .line 948
    .local v0, ca:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertItemAnimation;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;

    invoke-interface {v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;->getInsertAnimationDuration()J

    move-result-wide v1

    .line 949
    .local v1, duration:J
    cmp-long v3, v1, v4

    if-gtz v3, :cond_16

    .line 950
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDuration:I

    int-to-long v1, v3

    .line 951
    :cond_16
    cmp-long v3, p3, v4

    if-nez v3, :cond_1e

    .line 952
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    .line 953
    :cond_1e
    long-to-int v3, v1

    invoke-virtual {v0, p3, p4, p1, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertItemAnimation;->start(JII)V

    .line 956
    .end local v0           #ca:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertItemAnimation;
    .end local v1           #duration:J
    :goto_22
    return-object v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private getDeleteAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .registers 15
    .parameter "position"
    .parameter "delay"
    .parameter "duration"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 2093
    const/4 v5, 0x0

    .line 2094
    .local v5, ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;

    if-eqz v8, :cond_12

    .line 2095
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .end local v5           #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    invoke-direct {v5, p0, v9}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Lcom/sec/android/touchwiz/widget/TwAnimatedListView$1;)V

    .line 2096
    .restart local v5       #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    const/4 v8, 0x1

    iput v8, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    .line 2097
    iput p3, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->duration:I

    .line 2163
    :cond_11
    :goto_11
    return-object v5

    .line 2099
    :cond_12
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v8, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v6

    .line 2100
    .local v6, retainView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getWidth()I

    move-result v0

    .line 2101
    .local v0, HORIZONTAL_TRANSLATE_DISTANCE:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 2102
    .local v3, first:I
    if-eqz v6, :cond_11

    .line 2103
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .end local v5           #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    invoke-direct {v5, p0, v9}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Lcom/sec/android/touchwiz/widget/TwAnimatedListView$1;)V

    .line 2104
    .restart local v5       #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    iput p2, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->delay:I

    .line 2105
    iput p3, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->duration:I

    .line 2106
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    packed-switch v8, :pswitch_data_c0

    goto :goto_11

    .line 2111
    :pswitch_2f
    iput v10, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    .line 2112
    iput v0, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaX:I

    goto :goto_11

    .line 2116
    :pswitch_34
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 2117
    .local v7, slideHeight:I
    add-int/lit8 v4, p1, -0x1

    .local v4, i:I
    :goto_3a
    if-lt v4, v3, :cond_53

    .line 2118
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4b

    .line 2117
    :goto_48
    add-int/lit8 v4, v4, -0x1

    goto :goto_3a

    .line 2120
    :cond_4b
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v1

    .line 2121
    .local v1, delView:Landroid/view/View;
    if-nez v1, :cond_69

    .line 2126
    .end local v1           #delView:Landroid/view/View;
    :cond_53
    add-int/lit8 v4, p1, 0x1

    :goto_55
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v8, v8

    if-ge v4, v8, :cond_7a

    .line 2127
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_72

    .line 2126
    :goto_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    .line 2123
    .restart local v1       #delView:Landroid/view/View;
    :cond_69
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    goto :goto_48

    .line 2129
    .end local v1           #delView:Landroid/view/View;
    :cond_72
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v1

    .line 2130
    .restart local v1       #delView:Landroid/view/View;
    if-nez v1, :cond_80

    .line 2135
    .end local v1           #delView:Landroid/view/View;
    :cond_7a
    iput v10, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    .line 2136
    neg-int v8, v7

    iput v8, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaY:I

    goto :goto_11

    .line 2132
    .restart local v1       #delView:Landroid/view/View;
    :cond_80
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    goto :goto_66

    .line 2140
    .end local v1           #delView:Landroid/view/View;
    .end local v4           #i:I
    .end local v7           #slideHeight:I
    :pswitch_89
    const/4 v2, 0x0

    .line 2141
    .local v2, dropHeight:I
    if-eqz v6, :cond_ab

    .line 2142
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2143
    add-int/lit8 v4, p1, -0x1

    .restart local v4       #i:I
    :goto_92
    if-lt v4, v3, :cond_ab

    .line 2144
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a3

    .line 2143
    :goto_a0
    add-int/lit8 v4, v4, -0x1

    goto :goto_92

    .line 2146
    :cond_a3
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v1

    .line 2147
    .restart local v1       #delView:Landroid/view/View;
    if-nez v1, :cond_b2

    .line 2153
    .end local v1           #delView:Landroid/view/View;
    .end local v4           #i:I
    :cond_ab
    iput v10, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    .line 2154
    neg-int v8, v2

    iput v8, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaY:I

    goto/16 :goto_11

    .line 2149
    .restart local v1       #delView:Landroid/view/View;
    .restart local v4       #i:I
    :cond_b2
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v2, v8

    goto :goto_a0

    .line 2158
    .end local v1           #delView:Landroid/view/View;
    .end local v2           #dropHeight:I
    .end local v4           #i:I
    :pswitch_bb
    iput v10, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    goto/16 :goto_11

    .line 2106
    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_34
        :pswitch_89
        :pswitch_bb
    .end packed-switch
.end method

.method private getInsertAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .registers 15
    .parameter "position"
    .parameter "delay"
    .parameter "duration"

    .prologue
    const/4 v8, 0x0

    const v10, 0x7fffffff

    const/4 v9, 0x0

    .line 1983
    const/4 v5, 0x0

    .line 1984
    .local v5, ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;

    if-eqz v7, :cond_15

    .line 1985
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .end local v5           #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    invoke-direct {v5, p0, v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Lcom/sec/android/touchwiz/widget/TwAnimatedListView$1;)V

    .line 1986
    .restart local v5       #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    const/4 v7, 0x1

    iput v7, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    .line 1987
    iput p3, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->duration:I

    .line 2039
    :goto_14
    return-object v5

    .line 1989
    :cond_15
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 1990
    .local v3, first:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildCount()I

    move-result v1

    .line 1991
    .local v1, childCount:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getWidth()I

    move-result v0

    .line 1992
    .local v0, HORIZONTAL_TRANSLATE_DISTANCE:I
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .end local v5           #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    invoke-direct {v5, p0, v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Lcom/sec/android/touchwiz/widget/TwAnimatedListView$1;)V

    .line 1993
    .restart local v5       #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    iput p2, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->delay:I

    .line 1994
    iput p3, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->duration:I

    .line 1995
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    packed-switch v7, :pswitch_data_b2

    goto :goto_14

    .line 2000
    :pswitch_2e
    iput v9, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    .line 2001
    iput v0, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startX:I

    .line 2002
    neg-int v7, v0

    iput v7, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaX:I

    goto :goto_14

    .line 2006
    :pswitch_36
    sub-int v7, p1, v3

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2007
    .local v6, slideHeight:I
    add-int/lit8 v4, p1, -0x1

    .line 2008
    .local v4, i:I
    :goto_42
    if-lt v4, v3, :cond_5b

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v7, v7, v4

    if-ne v7, v10, :cond_5b

    .line 2009
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v8, v4, v3

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 2008
    add-int/lit8 v4, v4, -0x1

    goto :goto_42

    .line 2012
    :cond_5b
    add-int/lit8 v4, p1, 0x1

    .line 2013
    :goto_5d
    add-int v7, v3, v1

    if-ge v4, v7, :cond_78

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v7, v7, v4

    if-ne v7, v10, :cond_78

    .line 2014
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v8, v4, v3

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 2013
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    .line 2017
    :cond_78
    iput v9, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    .line 2018
    neg-int v7, v6

    iput v7, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startY:I

    .line 2019
    iput v6, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaY:I

    goto :goto_14

    .line 2023
    .end local v4           #i:I
    .end local v6           #slideHeight:I
    :pswitch_80
    sub-int v7, p1, v3

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2024
    .local v2, dropHeight:I
    add-int/lit8 v4, p1, -0x1

    .line 2025
    .restart local v4       #i:I
    :goto_8c
    if-lt v4, v3, :cond_a5

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v7, v7, v4

    if-ne v7, v10, :cond_a5

    .line 2026
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v8, v4, v3

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v2, v7

    .line 2025
    add-int/lit8 v4, v4, -0x1

    goto :goto_8c

    .line 2029
    :cond_a5
    iput v9, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    .line 2030
    neg-int v7, v2

    iput v7, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startY:I

    .line 2031
    iput v2, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaY:I

    goto/16 :goto_14

    .line 2035
    .end local v2           #dropHeight:I
    .end local v4           #i:I
    :pswitch_ae
    iput v9, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    goto/16 :goto_14

    .line 1995
    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_36
        :pswitch_80
        :pswitch_ae
    .end packed-switch
.end method

.method private getKeepAnimatedItemData(IIIII)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .registers 8
    .parameter "startX"
    .parameter "deltaX"
    .parameter "startY"
    .parameter "deltaY"
    .parameter "delay"

    .prologue
    .line 2057
    const/4 v0, 0x0

    .line 2058
    .local v0, ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    if-nez p2, :cond_5

    if-eqz p4, :cond_1a

    .line 2059
    :cond_5
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .end local v0           #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Lcom/sec/android/touchwiz/widget/TwAnimatedListView$1;)V

    .line 2060
    .restart local v0       #ret:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    .line 2061
    neg-int v1, p1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startX:I

    .line 2062
    iput p2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaX:I

    .line 2063
    neg-int v1, p3

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startY:I

    .line 2064
    iput p4, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaY:I

    .line 2065
    iput p5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->delay:I

    .line 2067
    :cond_1a
    return-object v0
.end method

.method private getTranslateAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;JLandroid/view/View;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .registers 10
    .parameter "data"
    .parameter "startTime"
    .parameter "child"

    .prologue
    .line 2073
    if-eqz p1, :cond_3c

    .line 2075
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;-><init>(Z)V

    .line 2076
    .local v0, ta:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startX:I

    iget v2, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaX:I

    iget v3, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startY:I

    iget v4, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->translate(IIII)V

    .line 2077
    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->duration:I

    if-nez v1, :cond_36

    .line 2078
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDuration:I

    invoke-virtual {v0, p2, p3, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->start(JI)V

    .line 2081
    :goto_1c
    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorX:I

    iget v2, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaX:I

    iget v3, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorY:I

    iget v4, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->move(IIII)V

    .line 2082
    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->delay:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->delay(I)V

    .line 2083
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    if-eqz v1, :cond_35

    if-eqz p4, :cond_35

    .line 2084
    invoke-virtual {v0, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->createDrawingCache(Landroid/view/View;)V

    .line 2088
    .end local v0           #ta:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_35
    :goto_35
    return-object v0

    .line 2080
    .restart local v0       #ta:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_36
    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->duration:I

    invoke-virtual {v0, p2, p3, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->start(JI)V

    goto :goto_1c

    .line 2088
    .end local v0           #ta:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_3c
    const/4 v0, 0x0

    goto :goto_35
.end method


# virtual methods
.method protected DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .registers 5
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 1206
    return-void
.end method

.method protected addFlexibleView(Landroid/view/View;)V
    .registers 5
    .parameter "child"

    .prologue
    .line 1946
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 1947
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mFlexibleViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1948
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mFlexibleViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1949
    return-void
.end method

.method protected changeItemIedex(II)V
    .registers 10
    .parameter "from"
    .parameter "to"

    .prologue
    .line 885
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    if-nez v4, :cond_5

    .line 909
    :cond_4
    return-void

    .line 887
    :cond_5
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v1, v4

    .line 888
    .local v1, length:I
    if-ltz p1, :cond_4

    if-ge p1, v1, :cond_4

    if-ltz p2, :cond_4

    if-ge p2, v1, :cond_4

    .line 890
    sub-int v2, p2, p1

    .line 891
    .local v2, size:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [J

    .line 892
    .local v3, tempIds:[J
    if-lez v2, :cond_42

    .line 893
    move v0, p1

    .local v0, i:I
    :goto_1d
    if-ge v0, p2, :cond_2c

    .line 894
    sub-int v4, v0, p1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    add-int/lit8 v6, v0, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    .line 893
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 896
    :cond_2c
    sub-int v4, p2, p1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v5, v5, p1

    aput-wide v5, v3, v4

    .line 897
    move v0, p1

    :goto_35
    if-gt v0, p2, :cond_4

    .line 898
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    sub-int v5, v0, p1

    aget-wide v5, v3, v5

    aput-wide v5, v4, v0

    .line 897
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 901
    .end local v0           #i:I
    :cond_42
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v5, v5, p1

    aput-wide v5, v3, v4

    .line 902
    add-int/lit8 v0, p2, 0x1

    .restart local v0       #i:I
    :goto_4b
    if-gt v0, p1, :cond_5a

    .line 903
    sub-int v4, v0, p2

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    add-int/lit8 v6, v0, -0x1

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    .line 902
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 905
    :cond_5a
    move v0, p2

    :goto_5b
    if-gt v0, p1, :cond_4

    .line 906
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    sub-int v5, v0, p2

    aget-wide v5, v3, v5

    aput-wide v5, v4, v0

    .line 905
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 912
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mShowAnimationOnDataChange:Z

    if-eqz v0, :cond_12

    .line 913
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingDeleteView:Z

    if-nez v0, :cond_b

    .line 914
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawDeleteItem(Landroid/graphics/Canvas;)V

    .line 915
    :cond_b
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingInsertView:Z

    if-nez v0, :cond_12

    .line 916
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawInsertItem(Landroid/graphics/Canvas;)V

    .line 918
    :cond_12
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 919
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawKeepView(Landroid/graphics/Canvas;)V

    .line 920
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mShowAnimationOnDataChange:Z

    if-eqz v0, :cond_2a

    .line 921
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingDeleteView:Z

    if-eqz v0, :cond_23

    .line 922
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawDeleteItem(Landroid/graphics/Canvas;)V

    .line 923
    :cond_23
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingInsertView:Z

    if-eqz v0, :cond_2a

    .line 924
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawInsertItem(Landroid/graphics/Canvas;)V

    .line 926
    :cond_2a
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 12
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v3, 0x0

    .line 828
    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 829
    .local v1, index:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getFirstVisiblePosition()I

    move-result v5

    add-int v2, v1, v5

    .line 830
    .local v2, pos:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v5, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v0

    .line 831
    .local v0, ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    if-eqz v0, :cond_3c

    .line 832
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    if-eqz v5, :cond_21

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v2

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_21

    .line 848
    :goto_20
    return v3

    .line 834
    :cond_21
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getType()I

    move-result v5

    if-nez v5, :cond_35

    .line 835
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 836
    .local v4, save:I
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 837
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 838
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_20

    .line 841
    .end local v4           #save:I
    :cond_35
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 842
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto :goto_20

    .line 846
    :cond_3c
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    .line 847
    .local v3, retVal:Z
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto :goto_20
.end method

.method protected drawChild2(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 12
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v3, 0x0

    .line 857
    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 858
    .local v1, index:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getFirstVisiblePosition()I

    move-result v5

    add-int v2, v1, v5

    .line 859
    .local v2, pos:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v5, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v0

    .line 860
    .local v0, ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    if-eqz v0, :cond_4b

    .line 861
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    if-eqz v5, :cond_21

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v2

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_21

    .line 880
    :goto_20
    return v3

    .line 864
    :cond_21
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getType()I

    move-result v5

    if-nez v5, :cond_44

    .line 865
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getTransformation(Landroid/view/animation/Transformation;)V

    .line 866
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 867
    .local v4, save:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 868
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    .line 869
    .local v3, retVal:Z
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 870
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_20

    .line 873
    .end local v3           #retVal:Z
    .end local v4           #save:I
    :cond_44
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 874
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto :goto_20

    .line 878
    :cond_4b
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    .line 879
    .restart local v3       #retVal:Z
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto :goto_20
.end method

.method protected drawKeepChild(Landroid/graphics/Canvas;ILandroid/view/View;J)Z
    .registers 12
    .parameter "canvas"
    .parameter "position"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v5, 0x0

    .line 976
    if-eqz p3, :cond_37

    .line 977
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v4, p2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getRetainItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v1

    .line 978
    .local v1, ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    if-eqz v1, :cond_37

    .line 979
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getType()I

    move-result v4

    if-nez v4, :cond_38

    .line 980
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 981
    .local v3, save:I
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    if-eqz v4, :cond_2e

    instance-of v4, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v4, :cond_2e

    move-object v0, v1

    .line 982
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 983
    .local v0, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 984
    .local v2, p:Landroid/graphics/Paint;
    if-nez v2, :cond_2e

    .line 985
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setPaint(Landroid/graphics/Paint;)V

    .line 987
    .end local v0           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    .end local v2           #p:Landroid/graphics/Paint;
    :cond_2e
    invoke-virtual {v1, p1, p3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 988
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 989
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 997
    .end local v1           #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v3           #save:I
    :cond_37
    :goto_37
    return v5

    .line 992
    .restart local v1       #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    :cond_38
    invoke-virtual {v1, p1, p3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 993
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto :goto_37
.end method

.method public getCustomItemDeleteDrawCallback()Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;
    .registers 2

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;

    return-object v0
.end method

.method public getCustomItemInsertDrawCallback()Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;
    .registers 2

    .prologue
    .line 1979
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;

    return-object v0
.end method

.method public getDeleteAnimationDelay()I
    .registers 2

    .prologue
    .line 2261
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDelay:I

    return v0
.end method

.method public getDeleteAnimationDuration()I
    .registers 2

    .prologue
    .line 2288
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDuration:I

    return v0
.end method

.method protected getFlexibleViewCount()I
    .registers 2

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mFlexibleViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getInsertAnimationDelay()I
    .registers 2

    .prologue
    .line 2252
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDelay:I

    return v0
.end method

.method public getInsertAnimationDuration()I
    .registers 2

    .prologue
    .line 2279
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDuration:I

    return v0
.end method

.method public getItemAnimationDuration()I
    .registers 2

    .prologue
    .line 2243
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDuration:I

    return v0
.end method

.method public getItemAnimationListener()Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    .registers 2

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    return-object v0
.end method

.method public getItemAnimationType()I
    .registers 2

    .prologue
    .line 2213
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    return v0
.end method

.method public getTranslateAnimationDelay()I
    .registers 2

    .prologue
    .line 2270
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTranslateDelay:I

    return v0
.end method

.method public isAnimationDrawingCacheEnable()Z
    .registers 2

    .prologue
    .line 2296
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    return v0
.end method

.method public isAnimationOnDataChangeEnabled()Z
    .registers 2

    .prologue
    .line 2188
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mShowAnimationOnDataChange:Z

    return v0
.end method

.method public isDrawDeleteAnimationFront()Z
    .registers 2

    .prologue
    .line 2196
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingDeleteView:Z

    return v0
.end method

.method public isDrawInsertAnimationFront()Z
    .registers 2

    .prologue
    .line 2204
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingInsertView:Z

    return v0
.end method

.method protected layoutChildren()V
    .registers 69

    .prologue
    .line 1213
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    move/from16 v21, v0

    .line 1214
    .local v21, dataChanged:Z
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevPosition:I

    .line 1215
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    .line 1216
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    .line 1217
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mShowAnimationOnDataChange:Z

    if-eqz v5, :cond_9a8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_9a8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v5

    if-eqz v5, :cond_9a8

    .line 1219
    if-nez v21, :cond_37

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    if-nez v5, :cond_62

    .line 1221
    :cond_37
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v22

    .line 1222
    .local v22, dataCount:I
    move/from16 v0, v22

    new-array v5, v0, [J

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    .line 1223
    const/16 v37, 0x0

    .local v37, i:I
    :goto_49
    move/from16 v0, v37

    move/from16 v1, v22

    if-ge v0, v1, :cond_62

    .line 1224
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v37

    invoke-interface {v6, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    aput-wide v6, v5, v37

    .line 1223
    add-int/lit8 v37, v37, 0x1

    goto :goto_49

    .line 1227
    .end local v22           #dataCount:I
    .end local v37           #i:I
    :cond_62
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getFirstVisiblePosition()I

    move-result v33

    .line 1228
    .local v33, first:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildCount()I

    move-result v15

    .line 1229
    .local v15, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevPosition:I

    move/from16 v54, v0

    .line 1230
    .local v54, prevFirst:I
    if-eqz v21, :cond_999

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    if-eqz v5, :cond_999

    .line 1232
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 1233
    .local v13, animation:Landroid/util/SparseArray;
    new-instance v57, Landroid/util/SparseArray;

    invoke-direct/range {v57 .. v57}, Landroid/util/SparseArray;-><init>()V

    .line 1234
    .local v57, retainAnimation:Landroid/util/SparseArray;
    new-instance v25, Landroid/util/SparseArray;

    invoke-direct/range {v25 .. v25}, Landroid/util/SparseArray;-><init>()V

    .line 1235
    .local v25, deleteAnimation:Landroid/util/SparseArray;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDelay:I

    move/from16 v40, v0

    .line 1236
    .local v40, insertDelay:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDelay:I

    move/from16 v27, v0

    .line 1237
    .local v27, deleteDelay:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTranslateDelay:I

    .line 1238
    .local v10, translateDelay:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDuration:I

    move/from16 v28, v0

    .line 1239
    .local v28, deleteDuration:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDuration:I

    move/from16 v41, v0

    .line 1240
    .local v41, insertDuration:I
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->findItemOffsetPos()V

    .line 1241
    sub-int v34, v33, v54

    .line 1242
    .local v34, firstPositionOffset:I
    move/from16 v37, v33

    .restart local v37       #i:I
    :goto_aa
    add-int v5, v33, v15

    move/from16 v0, v37

    if-ge v0, v5, :cond_285

    .line 1244
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v37

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_cf

    .line 1246
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getInsertAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1242
    :goto_cc
    add-int/lit8 v37, v37, 0x1

    goto :goto_aa

    .line 1249
    :cond_cf
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v37

    sub-int v48, v5, v34

    .line 1250
    .local v48, offset:I
    const/4 v9, 0x0

    .line 1251
    .local v9, HEIGHT:I
    if-lez v48, :cond_196

    .line 1253
    if-nez v34, :cond_128

    .line 1254
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_10a

    .line 1256
    move/from16 v66, v37

    .local v66, x:I
    :goto_e4
    add-int v5, v33, v15

    move/from16 v0, v66

    if-ge v0, v5, :cond_128

    .line 1257
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v66

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_107

    .line 1258
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v6, v66, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v9, v5

    .line 1256
    :cond_107
    add-int/lit8 v66, v66, 0x1

    goto :goto_e4

    .line 1262
    .end local v66           #x:I
    :cond_10a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    sub-int v6, v37, v48

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v56

    .line 1263
    .local v56, prevView:Landroid/view/View;
    if-eqz v56, :cond_135

    .line 1265
    sub-int v5, v37, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v56 .. v56}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v9, v5

    .line 1345
    .end local v56           #prevView:Landroid/view/View;
    :cond_128
    :goto_128
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_cc

    .line 1268
    .restart local v56       #prevView:Landroid/view/View;
    :cond_135
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v37

    sub-int v60, v33, v5

    .line 1269
    .local v60, screenOffset:I
    if-ltz v60, :cond_16b

    move/from16 v0, v60

    if-ge v0, v15, :cond_16b

    .line 1271
    move/from16 v66, v33

    .restart local v66       #x:I
    :goto_145
    move/from16 v0, v66

    move/from16 v1, v37

    if-ge v0, v1, :cond_128

    .line 1272
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v66

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_168

    .line 1273
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v6, v66, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v9, v5

    .line 1271
    :cond_168
    add-int/lit8 v66, v66, 0x1

    goto :goto_145

    .line 1277
    .end local v66           #x:I
    :cond_16b
    sub-int v5, v37, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1278
    .local v16, childView:Landroid/view/View;
    if-lez v60, :cond_187

    .line 1280
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getHeight()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v9, v5

    .line 1281
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v5

    mul-int v5, v5, v60

    sub-int/2addr v9, v5

    goto :goto_128

    .line 1284
    :cond_187
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v9, v5

    .line 1285
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v5

    move/from16 v0, v60

    neg-int v6, v0

    mul-int/2addr v5, v6

    add-int/2addr v9, v5

    goto :goto_128

    .line 1291
    .end local v16           #childView:Landroid/view/View;
    .end local v56           #prevView:Landroid/view/View;
    .end local v60           #screenOffset:I
    :cond_196
    if-gez v48, :cond_128

    .line 1292
    if-nez v34, :cond_25d

    .line 1294
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_1dd

    .line 1296
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .line 1299
    .local v38, i$:Ljava/util/Iterator;
    :cond_1a8
    :goto_1a8
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_128

    .line 1301
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Integer;

    .line 1302
    .local v52, position:Ljava/lang/Integer;
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v51

    .line 1303
    .local v51, pos:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getLastVisiblePosition()I

    move-result v5

    move/from16 v0, v51

    if-gt v0, v5, :cond_1a8

    move/from16 v0, v51

    move/from16 v1, v37

    if-le v0, v1, :cond_1a8

    .line 1305
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v51

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    .line 1306
    .local v59, retainView:Landroid/view/View;
    if-eqz v59, :cond_1a8

    .line 1307
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v9, v5

    goto :goto_1a8

    .line 1312
    .end local v38           #i$:Ljava/util/Iterator;
    .end local v51           #pos:I
    .end local v52           #position:Ljava/lang/Integer;
    .end local v59           #retainView:Landroid/view/View;
    :cond_1dd
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    sub-int v6, v37, v48

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v56

    .line 1313
    .restart local v56       #prevView:Landroid/view/View;
    if-eqz v56, :cond_1fd

    .line 1314
    sub-int v5, v37, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v56 .. v56}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v9, v5

    goto/16 :goto_128

    .line 1316
    :cond_1fd
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    if-eqz v5, :cond_128

    .line 1318
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v64

    .line 1319
    .local v64, v:Landroid/view/View;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v65

    .line 1320
    .local v65, v2:Landroid/view/View;
    if-eqz v64, :cond_222

    if-eqz v65, :cond_222

    .line 1321
    invoke-virtual/range {v65 .. v65}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v64 .. v64}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v9, v5

    .line 1322
    :cond_222
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .line 1325
    .restart local v38       #i$:Ljava/util/Iterator;
    :cond_22a
    :goto_22a
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_128

    .line 1327
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Integer;

    .line 1328
    .restart local v52       #position:Ljava/lang/Integer;
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v51

    .line 1329
    .restart local v51       #pos:I
    move/from16 v0, v51

    move/from16 v1, v33

    if-lt v0, v1, :cond_22a

    sub-int v5, v37, v48

    move/from16 v0, v51

    if-ge v0, v5, :cond_22a

    .line 1331
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v51

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    .line 1332
    .restart local v59       #retainView:Landroid/view/View;
    if-eqz v59, :cond_22a

    .line 1333
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v9, v5

    goto :goto_22a

    .line 1340
    .end local v38           #i$:Ljava/util/Iterator;
    .end local v51           #pos:I
    .end local v52           #position:Ljava/lang/Integer;
    .end local v56           #prevView:Landroid/view/View;
    .end local v59           #retainView:Landroid/view/View;
    .end local v64           #v:Landroid/view/View;
    .end local v65           #v2:Landroid/view/View;
    :cond_25d
    move/from16 v66, v37

    .restart local v66       #x:I
    :goto_25f
    add-int v5, v33, v15

    move/from16 v0, v66

    if-ge v0, v5, :cond_128

    .line 1341
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v66

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_282

    .line 1342
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v6, v66, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v9, v5

    .line 1340
    :cond_282
    add-int/lit8 v66, v66, 0x1

    goto :goto_25f

    .line 1348
    .end local v9           #HEIGHT:I
    .end local v48           #offset:I
    .end local v66           #x:I
    :cond_285
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getRetainViewPositions()[Ljava/lang/Object;

    move-result-object v47

    .line 1349
    .local v47, list:[Ljava/lang/Object;
    if-eqz v47, :cond_3e0

    .line 1351
    move-object/from16 v14, v47

    .line 1352
    .local v14, arr$:[Ljava/lang/Object;
    array-length v0, v14

    move/from16 v46, v0

    .line 1354
    .local v46, len$:I
    const/16 v38, 0x0

    .local v38, i$:I
    :goto_296
    move/from16 v0, v38

    move/from16 v1, v46

    if-ge v0, v1, :cond_35d

    .line 1356
    aget-object v43, v14, v38

    .line 1357
    .local v43, item:Ljava/lang/Object;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    .line 1358
    .local v58, retainPos:I
    const/16 v37, 0x0

    .line 1361
    :goto_2a8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v5, v5

    move/from16 v0, v37

    if-lt v0, v5, :cond_2b4

    .line 1354
    :cond_2b1
    :goto_2b1
    add-int/lit8 v38, v38, 0x1

    goto :goto_296

    .line 1363
    :cond_2b4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v5, v5, v58

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v7, v7, v37

    cmp-long v5, v5, v7

    if-nez v5, :cond_359

    .line 1365
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v58

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    .line 1366
    .restart local v59       #retainView:Landroid/view/View;
    if-eqz v59, :cond_2b1

    .line 1369
    add-int v5, v33, v15

    move/from16 v0, v37

    if-lt v0, v5, :cond_318

    .line 1371
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getHeight()I

    move-result v5

    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v9, v5, v6

    .line 1372
    .restart local v9       #HEIGHT:I
    add-int v66, v33, v15

    .restart local v66       #x:I
    :goto_2e2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v5, v5

    move/from16 v0, v66

    if-ge v0, v5, :cond_305

    .line 1374
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v6, v6, v66

    sub-int v6, v37, v6

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v36

    .line 1375
    .local v36, hiddenView:Landroid/view/View;
    if-eqz v36, :cond_302

    .line 1376
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v9, v5

    .line 1372
    :cond_302
    add-int/lit8 v66, v66, 0x1

    goto :goto_2e2

    .line 1379
    .end local v36           #hiddenView:Landroid/view/View;
    :cond_305
    if-eqz v9, :cond_2b1

    .line 1380
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getKeepAnimatedItemData(IIIII)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move-object/from16 v0, v57

    move/from16 v1, v58

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2b1

    .line 1383
    .end local v9           #HEIGHT:I
    .end local v66           #x:I
    :cond_318
    move/from16 v0, v37

    move/from16 v1, v33

    if-ge v0, v1, :cond_2b1

    .line 1385
    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v9, v5

    .line 1386
    .restart local v9       #HEIGHT:I
    move/from16 v66, v37

    .restart local v66       #x:I
    :goto_325
    move/from16 v0, v66

    move/from16 v1, v33

    if-ge v0, v1, :cond_345

    .line 1388
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v6, v6, v66

    sub-int v6, v37, v6

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v36

    .line 1389
    .restart local v36       #hiddenView:Landroid/view/View;
    if-eqz v36, :cond_342

    .line 1390
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v9, v5

    .line 1386
    :cond_342
    add-int/lit8 v66, v66, 0x1

    goto :goto_325

    .line 1393
    .end local v36           #hiddenView:Landroid/view/View;
    :cond_345
    if-eqz v9, :cond_2b1

    .line 1394
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getKeepAnimatedItemData(IIIII)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move-object/from16 v0, v57

    move/from16 v1, v58

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_2b1

    .line 1397
    .end local v9           #HEIGHT:I
    .end local v59           #retainView:Landroid/view/View;
    .end local v66           #x:I
    :cond_359
    add-int/lit8 v37, v37, 0x1

    .line 1398
    goto/16 :goto_2a8

    .line 1401
    .end local v43           #item:Ljava/lang/Object;
    .end local v58           #retainPos:I
    :cond_35d
    if-eqz v34, :cond_3e0

    .line 1403
    move-object/from16 v14, v47

    .line 1404
    array-length v0, v14

    move/from16 v46, v0

    .line 1405
    const/16 v38, 0x0

    :goto_366
    move/from16 v0, v38

    move/from16 v1, v46

    if-ge v0, v1, :cond_3e0

    .line 1407
    aget-object v43, v14, v38

    .line 1408
    .restart local v43       #item:Ljava/lang/Object;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    .line 1409
    .restart local v58       #retainPos:I
    const/16 v31, 0x0

    .line 1410
    .local v31, exist:Z
    move/from16 v37, v33

    .line 1413
    :goto_37a
    add-int v5, v33, v15

    move/from16 v0, v37

    if-lt v0, v5, :cond_38b

    .line 1422
    :goto_380
    move/from16 v0, v58

    move/from16 v1, v33

    if-ge v0, v1, :cond_388

    if-eqz v31, :cond_3a1

    .line 1405
    :cond_388
    :goto_388
    add-int/lit8 v38, v38, 0x1

    goto :goto_366

    .line 1415
    :cond_38b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v5, v5, v58

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v7, v7, v37

    cmp-long v5, v5, v7

    if-nez v5, :cond_39e

    .line 1417
    const/16 v31, 0x1

    .line 1418
    goto :goto_380

    .line 1420
    :cond_39e
    add-int/lit8 v37, v37, 0x1

    .line 1421
    goto :goto_37a

    .line 1424
    :cond_3a1
    const/4 v9, 0x0

    .line 1425
    .restart local v9       #HEIGHT:I
    move/from16 v66, v58

    .restart local v66       #x:I
    :goto_3a4
    add-int v5, v33, v15

    move/from16 v0, v66

    if-ge v0, v5, :cond_3cd

    .line 1427
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v66

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_3b8

    .line 1425
    :cond_3b5
    :goto_3b5
    add-int/lit8 v66, v66, 0x1

    goto :goto_3a4

    .line 1429
    :cond_3b8
    sub-int v5, v66, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 1430
    .local v18, currentView:Landroid/view/View;
    if-eqz v18, :cond_3b5

    .line 1431
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v9, v5

    goto :goto_3b5

    .line 1434
    .end local v18           #currentView:Landroid/view/View;
    :cond_3cd
    if-eqz v9, :cond_388

    .line 1435
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getKeepAnimatedItemData(IIIII)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move-object/from16 v0, v57

    move/from16 v1, v58

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_388

    .line 1440
    .end local v9           #HEIGHT:I
    .end local v14           #arr$:[Ljava/lang/Object;
    .end local v31           #exist:Z
    .end local v38           #i$:I
    .end local v43           #item:Ljava/lang/Object;
    .end local v46           #len$:I
    .end local v58           #retainPos:I
    .end local v66           #x:I
    :cond_3e0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    if-eqz v5, :cond_3fe

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3fe

    .line 1442
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .line 1445
    .local v38, i$:Ljava/util/Iterator;
    :goto_3f8
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_43c

    .line 1452
    .end local v38           #i$:Ljava/util/Iterator;
    :cond_3fe
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_47b

    .line 1454
    if-nez v34, :cond_45a

    .line 1456
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DEBUG_ANIMATION_FLAG:Z

    if-eqz v5, :cond_413

    .line 1457
    const-string v5, "TwAnimatedListView.ItemAnimation"

    const-string v6, "[stack bottom] no first position changed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_413
    :goto_413
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v62

    .line 1728
    .local v62, time:J
    const/16 v37, 0x0

    :goto_419
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v37

    if-ge v0, v5, :cond_8b6

    .line 1730
    move/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    .line 1731
    .local v45, key:I
    const/4 v5, 0x0

    move/from16 v0, v45

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .line 1732
    .local v20, data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    if-eqz v20, :cond_439

    .line 1733
    move-object/from16 v0, v20

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    packed-switch v5, :pswitch_data_9e2

    .line 1728
    :cond_439
    :goto_439
    add-int/lit8 v37, v37, 0x1

    goto :goto_419

    .line 1447
    .end local v20           #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .end local v45           #key:I
    .end local v62           #time:J
    .restart local v38       #i$:Ljava/util/Iterator;
    :cond_43c
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Integer;

    .line 1448
    .restart local v52       #position:Ljava/lang/Integer;
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v51

    .line 1449
    .restart local v51       #pos:I
    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getDeleteAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move-object/from16 v0, v25

    move/from16 v1, v51

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3f8

    .line 1459
    .end local v38           #i$:Ljava/util/Iterator;
    .end local v51           #pos:I
    .end local v52           #position:Ljava/lang/Integer;
    :cond_45a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DEBUG_ANIMATION_FLAG:Z

    if-eqz v5, :cond_413

    .line 1460
    const-string v5, "TwAnimatedListView.ItemAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[stack bottom] first position changed as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_413

    .line 1462
    :cond_47b
    if-nez v34, :cond_4f2

    .line 1464
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v64

    .line 1465
    .restart local v64       #v:Landroid/view/View;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v65

    .line 1466
    .restart local v65       #v2:Landroid/view/View;
    if-eqz v64, :cond_413

    if-eqz v65, :cond_413

    .line 1468
    invoke-virtual/range {v65 .. v65}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v64 .. v64}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v49, v5, v6

    .line 1469
    .local v49, offsetY:I
    if-eqz v49, :cond_413

    .line 1471
    move/from16 v44, v33

    .local v44, k:I
    :goto_4a0
    add-int v5, v33, v15

    move/from16 v0, v44

    if-ge v0, v5, :cond_4c3

    .line 1473
    const/4 v5, 0x0

    move/from16 v0, v44

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .line 1474
    .restart local v20       #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    if-eqz v20, :cond_4b4

    .line 1471
    :goto_4b1
    add-int/lit8 v44, v44, 0x1

    goto :goto_4a0

    .line 1476
    :cond_4b4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v5, v1, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move/from16 v0, v44

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4b1

    .line 1479
    .end local v20           #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    :cond_4c3
    const/16 v44, 0x0

    :goto_4c5
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v44

    if-ge v0, v5, :cond_413

    .line 1481
    move-object/from16 v0, v25

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v24

    .line 1482
    .local v24, delPos:I
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .line 1483
    .local v23, delData:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    if-eqz v23, :cond_4e8

    .line 1484
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    packed-switch v5, :pswitch_data_9ea

    .line 1479
    :cond_4e8
    :goto_4e8
    add-int/lit8 v44, v44, 0x1

    goto :goto_4c5

    .line 1488
    :pswitch_4eb
    move/from16 v0, v49

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    goto :goto_4e8

    .line 1497
    .end local v23           #delData:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .end local v24           #delPos:I
    .end local v44           #k:I
    .end local v49           #offsetY:I
    .end local v64           #v:Landroid/view/View;
    .end local v65           #v2:Landroid/view/View;
    :cond_4f2
    const/16 v30, 0x0

    .line 1498
    .local v30, distortion:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v55

    .line 1499
    .local v55, prevFirstView:Landroid/view/View;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 1500
    .local v17, curFirstView:Landroid/view/View;
    if-eqz v55, :cond_513

    if-eqz v17, :cond_513

    .line 1501
    invoke-virtual/range {v55 .. v55}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v30, v5, v6

    .line 1502
    :cond_513
    move/from16 v67, v33

    .local v67, z:I
    :goto_515
    add-int v5, v33, v15

    move/from16 v0, v67

    if-ge v0, v5, :cond_608

    .line 1504
    if-nez v47, :cond_520

    .line 1502
    :cond_51d
    :goto_51d
    add-int/lit8 v67, v67, 0x1

    goto :goto_515

    .line 1506
    :cond_520
    const/16 v35, 0x0

    .line 1507
    .local v35, found:Z
    move-object/from16 v14, v47

    .line 1508
    .restart local v14       #arr$:[Ljava/lang/Object;
    array-length v0, v14

    move/from16 v46, v0

    .line 1509
    .restart local v46       #len$:I
    const/16 v38, 0x0

    .line 1512
    .local v38, i$:I
    :goto_529
    move/from16 v0, v38

    move/from16 v1, v46

    if-lt v0, v1, :cond_566

    .line 1531
    :cond_52f
    :goto_52f
    if-nez v35, :cond_51d

    .line 1533
    const/16 v48, 0x0

    .line 1534
    .restart local v48       #offset:I
    const/16 v66, 0x0

    .line 1537
    .restart local v66       #x:I
    :goto_535
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v66

    if-lt v0, v5, :cond_5b8

    .line 1546
    :goto_53e
    if-eqz v48, :cond_51d

    .line 1548
    move/from16 v0, v30

    neg-int v9, v0

    .line 1549
    .restart local v9       #HEIGHT:I
    if-lez v48, :cond_5d4

    .line 1551
    const/16 v44, 0x0

    .restart local v44       #k:I
    :goto_547
    move/from16 v0, v48

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    move/from16 v0, v44

    if-ge v0, v5, :cond_5f8

    .line 1552
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v9, v5

    .line 1551
    add-int/lit8 v44, v44, 0x1

    goto :goto_547

    .line 1514
    .end local v9           #HEIGHT:I
    .end local v44           #k:I
    .end local v48           #offset:I
    .end local v66           #x:I
    :cond_566
    aget-object v43, v14, v38

    .line 1515
    .restart local v43       #item:Ljava/lang/Object;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    .line 1516
    .restart local v58       #retainPos:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v5, v5, v58

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v7, v7, v67

    cmp-long v5, v5, v7

    if-nez v5, :cond_5b4

    .line 1518
    const/16 v35, 0x1

    .line 1519
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v58

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    .line 1520
    .restart local v59       #retainView:Landroid/view/View;
    sub-int v5, v67, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 1521
    .restart local v18       #currentView:Landroid/view/View;
    if-eqz v59, :cond_52f

    if-eqz v18, :cond_52f

    .line 1523
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v61, v5, v6

    .line 1524
    .local v61, slideOffsetY:I
    if-eqz v61, :cond_52f

    .line 1525
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-direct {v0, v5, v1, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move/from16 v0, v67

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_52f

    .line 1529
    .end local v18           #currentView:Landroid/view/View;
    .end local v59           #retainView:Landroid/view/View;
    .end local v61           #slideOffsetY:I
    :cond_5b4
    add-int/lit8 v38, v38, 0x1

    .line 1530
    goto/16 :goto_529

    .line 1539
    .end local v43           #item:Ljava/lang/Object;
    .end local v58           #retainPos:I
    .restart local v48       #offset:I
    .restart local v66       #x:I
    :cond_5b8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v5, v5, v66

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v7, v7, v67

    cmp-long v5, v5, v7

    if-nez v5, :cond_5d0

    .line 1541
    sub-int v5, v67, v33

    sub-int v6, v66, v54

    sub-int v48, v5, v6

    .line 1542
    goto/16 :goto_53e

    .line 1544
    :cond_5d0
    add-int/lit8 v66, v66, 0x1

    .line 1545
    goto/16 :goto_535

    .line 1556
    .restart local v9       #HEIGHT:I
    :cond_5d4
    const/16 v44, 0x0

    .restart local v44       #k:I
    :goto_5d6
    move/from16 v0, v48

    neg-int v5, v0

    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move/from16 v0, v44

    if-ge v0, v5, :cond_5f8

    .line 1557
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    add-int/lit8 v6, v15, -0x1

    sub-int v6, v6, v44

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v9, v5

    .line 1556
    add-int/lit8 v44, v44, 0x1

    goto :goto_5d6

    .line 1560
    :cond_5f8
    if-eqz v9, :cond_51d

    .line 1561
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move/from16 v0, v67

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_51d

    .line 1564
    .end local v9           #HEIGHT:I
    .end local v14           #arr$:[Ljava/lang/Object;
    .end local v35           #found:Z
    .end local v38           #i$:I
    .end local v44           #k:I
    .end local v46           #len$:I
    .end local v48           #offset:I
    .end local v66           #x:I
    :cond_608
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    packed-switch v5, :pswitch_data_9f2

    goto/16 :goto_413

    .line 1570
    :pswitch_611
    const/16 v19, 0x0

    .local v19, d:I
    :goto_613
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v19

    if-ge v0, v5, :cond_6a1

    .line 1572
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    .line 1573
    .restart local v45       #key:I
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v45

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .line 1574
    .restart local v20       #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    if-nez v20, :cond_633

    .line 1570
    :cond_630
    :goto_630
    add-int/lit8 v19, v19, 0x1

    goto :goto_613

    .line 1576
    :cond_633
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v45

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    .line 1577
    .restart local v59       #retainView:Landroid/view/View;
    add-int/lit8 v11, v45, -0x1

    .line 1578
    .local v11, anchorPos:I
    add-int/lit8 v32, v45, -0x1

    .local v32, f:I
    :goto_641
    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_657

    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_657

    .line 1579
    add-int/lit8 v11, v11, -0x1

    .line 1578
    add-int/lit8 v32, v32, -0x1

    goto :goto_641

    .line 1581
    :cond_657
    if-eqz v59, :cond_630

    .line 1583
    sub-int v5, v11, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1584
    .local v12, anchorView:Landroid/view/View;
    const/16 v53, 0x0

    .line 1585
    .local v53, prevAnchorView:Landroid/view/View;
    move/from16 v50, v54

    .line 1588
    .local v50, p:I
    :goto_665
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v50

    if-lt v0, v5, :cond_683

    .line 1597
    :goto_66e
    if-eqz v12, :cond_630

    if-eqz v53, :cond_630

    .line 1599
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v53 .. v53}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v48, v5, v6

    .line 1600
    .restart local v48       #offset:I
    move/from16 v0, v48

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    goto :goto_630

    .line 1590
    .end local v48           #offset:I
    :cond_683
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v5, v5, v50

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v7, v7, v11

    cmp-long v5, v5, v7

    if-nez v5, :cond_69e

    .line 1592
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v50

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v53

    .line 1593
    goto :goto_66e

    .line 1595
    :cond_69e
    add-int/lit8 v50, v50, 0x1

    .line 1596
    goto :goto_665

    .line 1605
    .end local v11           #anchorPos:I
    .end local v12           #anchorView:Landroid/view/View;
    .end local v20           #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .end local v32           #f:I
    .end local v45           #key:I
    .end local v50           #p:I
    .end local v53           #prevAnchorView:Landroid/view/View;
    .end local v59           #retainView:Landroid/view/View;
    :cond_6a1
    const/16 v19, 0x0

    :goto_6a3
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v19

    if-ge v0, v5, :cond_413

    .line 1607
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    .line 1608
    .restart local v45       #key:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v45

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_701

    .line 1610
    const/4 v5, 0x0

    move/from16 v0, v45

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .line 1611
    .restart local v20       #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    if-eqz v20, :cond_701

    if-lez v34, :cond_701

    .line 1613
    sub-int v5, v45, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 1614
    .local v42, insertView:Landroid/view/View;
    if-eqz v42, :cond_701

    .line 1616
    add-int/lit8 v11, v45, -0x1

    .line 1617
    .restart local v11       #anchorPos:I
    add-int/lit8 v32, v45, -0x1

    .restart local v32       #f:I
    :goto_6d7
    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_6ed

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v32

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_6ed

    .line 1618
    add-int/lit8 v11, v11, -0x1

    .line 1617
    add-int/lit8 v32, v32, -0x1

    goto :goto_6d7

    .line 1620
    :cond_6ed
    move/from16 v0, v33

    if-ge v11, v0, :cond_704

    .line 1622
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    move-object/from16 v0, v20

    iput v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    .line 1605
    .end local v11           #anchorPos:I
    .end local v20           #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .end local v32           #f:I
    .end local v42           #insertView:Landroid/view/View;
    :cond_701
    :goto_701
    add-int/lit8 v19, v19, 0x1

    goto :goto_6a3

    .line 1625
    .restart local v11       #anchorPos:I
    .restart local v20       #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .restart local v32       #f:I
    .restart local v42       #insertView:Landroid/view/View;
    :cond_704
    add-int/lit8 v5, v11, 0x1

    sub-int v5, v5, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    .line 1626
    .local v39, insertBaseView:Landroid/view/View;
    const/4 v12, 0x0

    .line 1627
    .restart local v12       #anchorView:Landroid/view/View;
    move/from16 v64, v54

    .line 1630
    .local v64, v:I
    :goto_711
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v64

    if-lt v0, v5, :cond_736

    .line 1639
    :goto_71a
    if-eqz v12, :cond_701

    if-eqz v39, :cond_701

    .line 1641
    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v29, v5, v6

    .line 1642
    .local v29, delta:I
    move/from16 v0, v29

    neg-int v5, v0

    move-object/from16 v0, v20

    iput v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorY:I

    .line 1643
    move/from16 v0, v29

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    goto :goto_701

    .line 1632
    .end local v29           #delta:I
    :cond_736
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v5, v5, v64

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v7, v7, v11

    cmp-long v5, v5, v7

    if-nez v5, :cond_751

    .line 1634
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v64

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v12

    .line 1635
    goto :goto_71a

    .line 1637
    :cond_751
    add-int/lit8 v64, v64, 0x1

    .line 1638
    goto :goto_711

    .line 1654
    .end local v11           #anchorPos:I
    .end local v12           #anchorView:Landroid/view/View;
    .end local v19           #d:I
    .end local v20           #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .end local v32           #f:I
    .end local v39           #insertBaseView:Landroid/view/View;
    .end local v42           #insertView:Landroid/view/View;
    .end local v45           #key:I
    .end local v64           #v:I
    :pswitch_754
    const/16 v19, 0x0

    .restart local v19       #d:I
    :goto_756
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v19

    if-ge v0, v5, :cond_7ce

    .line 1656
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    .line 1657
    .restart local v45       #key:I
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v45

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .line 1658
    .restart local v20       #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    if-nez v20, :cond_776

    .line 1654
    :cond_773
    :goto_773
    add-int/lit8 v19, v19, 0x1

    goto :goto_756

    .line 1660
    :cond_776
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v45

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    .line 1661
    .restart local v59       #retainView:Landroid/view/View;
    if-eqz v59, :cond_773

    .line 1663
    add-int/lit8 v11, v45, -0x1

    .line 1664
    .restart local v11       #anchorPos:I
    add-int/lit8 v32, v45, -0x1

    .restart local v32       #f:I
    :goto_786
    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_79c

    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_79c

    .line 1665
    add-int/lit8 v11, v11, -0x1

    .line 1664
    add-int/lit8 v32, v32, -0x1

    goto :goto_786

    .line 1667
    :cond_79c
    move/from16 v0, v33

    if-ge v11, v0, :cond_7aa

    .line 1669
    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    move-object/from16 v0, v20

    iput v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    goto :goto_773

    .line 1672
    :cond_7aa
    sub-int v5, v11, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1673
    .restart local v12       #anchorView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    add-int/lit8 v6, v11, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v26

    .line 1674
    .local v26, deleteBaseView:Landroid/view/View;
    if-eqz v12, :cond_773

    if-eqz v26, :cond_773

    .line 1675
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    move-object/from16 v0, v20

    iput v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    goto :goto_773

    .line 1680
    .end local v11           #anchorPos:I
    .end local v12           #anchorView:Landroid/view/View;
    .end local v20           #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .end local v26           #deleteBaseView:Landroid/view/View;
    .end local v32           #f:I
    .end local v45           #key:I
    .end local v59           #retainView:Landroid/view/View;
    :cond_7ce
    const/16 v19, 0x0

    :goto_7d0
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v19

    if-ge v0, v5, :cond_413

    .line 1682
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    .line 1683
    .restart local v45       #key:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v45

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_7ec

    .line 1680
    :cond_7e9
    :goto_7e9
    add-int/lit8 v19, v19, 0x1

    goto :goto_7d0

    .line 1685
    :cond_7ec
    const/4 v5, 0x0

    move/from16 v0, v45

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .line 1686
    .restart local v20       #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    if-eqz v20, :cond_7e9

    if-lez v34, :cond_7e9

    .line 1688
    sub-int v5, v45, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 1689
    .restart local v42       #insertView:Landroid/view/View;
    if-eqz v42, :cond_7e9

    .line 1691
    add-int/lit8 v11, v45, -0x1

    .line 1692
    .restart local v11       #anchorPos:I
    add-int/lit8 v32, v45, -0x1

    .restart local v32       #f:I
    :goto_807
    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_81d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v32

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_81d

    .line 1693
    add-int/lit8 v11, v11, -0x1

    .line 1692
    add-int/lit8 v32, v32, -0x1

    goto :goto_807

    .line 1695
    :cond_81d
    move/from16 v0, v33

    if-ge v11, v0, :cond_832

    .line 1697
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    move-object/from16 v0, v20

    iput v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    goto :goto_7e9

    .line 1700
    :cond_832
    add-int/lit8 v5, v11, 0x1

    sub-int v5, v5, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    .line 1701
    .restart local v39       #insertBaseView:Landroid/view/View;
    const/4 v12, 0x0

    .line 1702
    .restart local v12       #anchorView:Landroid/view/View;
    move/from16 v64, v54

    .line 1705
    .restart local v64       #v:I
    :goto_83f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v64

    if-lt v0, v5, :cond_864

    .line 1714
    :goto_848
    if-eqz v12, :cond_7e9

    if-eqz v39, :cond_7e9

    .line 1716
    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v29, v5, v6

    .line 1717
    .restart local v29       #delta:I
    move/from16 v0, v29

    neg-int v5, v0

    move-object/from16 v0, v20

    iput v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorY:I

    .line 1718
    move/from16 v0, v29

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    goto :goto_7e9

    .line 1707
    .end local v29           #delta:I
    :cond_864
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v5, v5, v64

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v7, v7, v11

    cmp-long v5, v5, v7

    if-nez v5, :cond_87f

    .line 1709
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v64

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v12

    .line 1710
    goto :goto_848

    .line 1712
    :cond_87f
    add-int/lit8 v64, v64, 0x1

    .line 1713
    goto :goto_83f

    .line 1736
    .end local v11           #anchorPos:I
    .end local v12           #anchorView:Landroid/view/View;
    .end local v17           #curFirstView:Landroid/view/View;
    .end local v19           #d:I
    .end local v30           #distortion:I
    .end local v32           #f:I
    .end local v39           #insertBaseView:Landroid/view/View;
    .end local v42           #insertView:Landroid/view/View;
    .end local v55           #prevFirstView:Landroid/view/View;
    .end local v64           #v:I
    .end local v67           #z:I
    .restart local v62       #time:J
    :pswitch_882
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    sub-int v6, v45, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v62

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getTranslateAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;JLandroid/view/View;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v5, v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto/16 :goto_439

    .line 1740
    :pswitch_89f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v45

    move-object/from16 v2, v20

    move-wide/from16 v3, v62

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getCustomInsertAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;J)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v5, v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto/16 :goto_439

    .line 1745
    .end local v20           #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .end local v45           #key:I
    :cond_8b6
    const/16 v37, 0x0

    :goto_8b8
    invoke-virtual/range {v57 .. v57}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v37

    if-ge v0, v5, :cond_935

    .line 1747
    move-object/from16 v0, v57

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    .line 1748
    .restart local v45       #key:I
    const/4 v5, 0x0

    move-object/from16 v0, v57

    move/from16 v1, v45

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .line 1749
    .restart local v20       #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    if-eqz v20, :cond_8dc

    .line 1750
    move-object/from16 v0, v20

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    packed-switch v5, :pswitch_data_9fa

    .line 1745
    :cond_8dc
    :goto_8dc
    add-int/lit8 v37, v37, 0x1

    goto :goto_8b8

    .line 1756
    :pswitch_8df
    move/from16 v0, v45

    move/from16 v1, v33

    if-ge v0, v1, :cond_903

    .line 1757
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v45

    invoke-virtual {v6, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v62

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getTranslateAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;JLandroid/view/View;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v5, v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putRetainItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto :goto_8dc

    .line 1759
    :cond_903
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    sub-int v6, v45, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v62

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getTranslateAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;JLandroid/view/View;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v5, v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putRetainItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto :goto_8dc

    .line 1763
    :pswitch_91f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v45

    move-object/from16 v2, v20

    move-wide/from16 v3, v62

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getCustomInsertAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;J)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v5, v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putRetainItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto :goto_8dc

    .line 1768
    .end local v20           #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .end local v45           #key:I
    :cond_935
    const/16 v37, 0x0

    :goto_937
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v37

    if-ge v0, v5, :cond_992

    .line 1770
    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    .line 1771
    .restart local v45       #key:I
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v45

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    .line 1772
    .restart local v20       #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    if-eqz v20, :cond_95b

    .line 1773
    move-object/from16 v0, v20

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    packed-switch v5, :pswitch_data_a02

    .line 1768
    :cond_95b
    :goto_95b
    add-int/lit8 v37, v37, 0x1

    goto :goto_937

    .line 1776
    :pswitch_95e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v45

    invoke-virtual {v6, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v62

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getTranslateAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;JLandroid/view/View;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v5, v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putDeleteItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto :goto_95b

    .line 1780
    :pswitch_97c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v45

    move-object/from16 v2, v20

    move-wide/from16 v3, v62

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getCustomDeleteAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;J)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v5, v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putDeleteItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto :goto_95b

    .line 1785
    .end local v20           #data:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .end local v45           #key:I
    :cond_992
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->start()V

    .line 1796
    .end local v10           #translateDelay:I
    .end local v13           #animation:Landroid/util/SparseArray;
    .end local v15           #childCount:I
    .end local v25           #deleteAnimation:Landroid/util/SparseArray;
    .end local v27           #deleteDelay:I
    .end local v28           #deleteDuration:I
    .end local v33           #first:I
    .end local v34           #firstPositionOffset:I
    .end local v37           #i:I
    .end local v40           #insertDelay:I
    .end local v41           #insertDuration:I
    .end local v47           #list:[Ljava/lang/Object;
    .end local v54           #prevFirst:I
    .end local v57           #retainAnimation:Landroid/util/SparseArray;
    .end local v62           #time:J
    :cond_999
    :goto_999
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mFlexibleViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .line 1799
    .local v38, i$:Ljava/util/Iterator;
    :cond_9a1
    :goto_9a1
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_9ca

    .line 1807
    return-void

    .line 1789
    .end local v38           #i$:Ljava/util/Iterator;
    :cond_9a8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    if-eqz v5, :cond_9b3

    .line 1790
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    .line 1791
    :cond_9b3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    if-eqz v5, :cond_9be

    .line 1792
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    .line 1793
    :cond_9be
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    if-eqz v5, :cond_999

    .line 1794
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    goto :goto_999

    .line 1801
    .restart local v38       #i$:Ljava/util/Iterator;
    :cond_9ca
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Landroid/view/View;

    .line 1802
    .local v64, v:Landroid/view/View;
    invoke-virtual/range {v64 .. v64}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_9a1

    .line 1804
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_9a1

    .line 1733
    nop

    :pswitch_data_9e2
    .packed-switch 0x0
        :pswitch_882
        :pswitch_89f
    .end packed-switch

    .line 1484
    :pswitch_data_9ea
    .packed-switch 0x2
        :pswitch_4eb
        :pswitch_4eb
    .end packed-switch

    .line 1564
    :pswitch_data_9f2
    .packed-switch 0x2
        :pswitch_611
        :pswitch_754
    .end packed-switch

    .line 1750
    :pswitch_data_9fa
    .packed-switch 0x0
        :pswitch_8df
        :pswitch_91f
    .end packed-switch

    .line 1773
    :pswitch_data_a02
    .packed-switch 0x0
        :pswitch_95e
        :pswitch_97c
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 1158
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 1159
    const/4 v0, 0x1

    .line 1161
    :goto_c
    return v0

    :cond_d
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_c
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1187
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1188
    const/4 v0, 0x1

    .line 1190
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1176
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1177
    const/4 v0, 0x1

    .line 1179
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 1167
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 1168
    const/4 v0, 0x1

    .line 1170
    :goto_c
    return v0

    :cond_d
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_c
.end method

.method protected removeFlexibleView(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 1952
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->removeViewInLayout(Landroid/view/View;)V

    .line 1953
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mFlexibleViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1954
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .parameter "adapter"

    .prologue
    const/4 v1, 0x0

    .line 1959
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->forceFinish()V

    .line 1960
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    if-eqz v0, :cond_c

    .line 1961
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    .line 1962
    :cond_c
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    if-eqz v0, :cond_12

    .line 1963
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    .line 1964
    :cond_12
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    if-eqz v0, :cond_18

    .line 1965
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    .line 1966
    :cond_18
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1967
    return-void
.end method

.method public setAnimationAlpha(II)V
    .registers 4
    .parameter "minAlpha"
    .parameter "maxAlpha"

    .prologue
    const/16 v0, 0xff

    .line 2227
    if-lt p2, p1, :cond_10

    .line 2228
    if-ltz p1, :cond_a

    if-gt p1, v0, :cond_a

    .line 2229
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMinAlpha:I

    .line 2230
    :cond_a
    if-ltz p2, :cond_10

    if-gt p2, v0, :cond_10

    .line 2231
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMaxAlpha:I

    .line 2233
    :cond_10
    return-void
.end method

.method public setAnimationDrawingCacheEnable(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 2292
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    .line 2293
    return-void
.end method

.method public setAnimationMaxAlpha(I)V
    .registers 3
    .parameter "maxAlpha"

    .prologue
    .line 2222
    if-ltz p1, :cond_c

    const/16 v0, 0xff

    if-gt p1, v0, :cond_c

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMinAlpha:I

    if-lt p1, v0, :cond_c

    .line 2223
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMaxAlpha:I

    .line 2224
    :cond_c
    return-void
.end method

.method public setAnimationMinAlpha(I)V
    .registers 3
    .parameter "minAlpha"

    .prologue
    .line 2217
    if-ltz p1, :cond_8

    const/16 v0, 0xff

    if-gt p1, v0, :cond_8

    .line 2218
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMaxAlpha:I

    .line 2219
    :cond_8
    return-void
.end method

.method public setAnimationOnDataChangeEnabled(Z)V
    .registers 2
    .parameter "enableAnimation"

    .prologue
    .line 2184
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mShowAnimationOnDataChange:Z

    .line 2185
    return-void
.end method

.method public setCustomItemDeleteDrawCallback(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 2168
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;

    .line 2169
    return-void
.end method

.method public setCustomItemInsertDrawCallback(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 1975
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;

    .line 1976
    return-void
.end method

.method public setDeleteAnimationDelay(I)V
    .registers 2
    .parameter "delay"

    .prologue
    .line 2256
    if-ltz p1, :cond_4

    .line 2257
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDelay:I

    .line 2258
    :cond_4
    return-void
.end method

.method public setDeleteAnimationDuration(I)V
    .registers 2
    .parameter "duration"

    .prologue
    .line 2283
    if-lez p1, :cond_4

    .line 2284
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDuration:I

    .line 2285
    :cond_4
    return-void
.end method

.method public setDrawDeleteAnimationFront(Z)V
    .registers 2
    .parameter "drawFront"

    .prologue
    .line 2192
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingDeleteView:Z

    .line 2193
    return-void
.end method

.method public setDrawInsertAnimationFront(Z)V
    .registers 2
    .parameter "drawFront"

    .prologue
    .line 2200
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingInsertView:Z

    .line 2201
    return-void
.end method

.method public setInsertAnimationDelay(I)V
    .registers 2
    .parameter "delay"

    .prologue
    .line 2247
    if-ltz p1, :cond_4

    .line 2248
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDelay:I

    .line 2249
    :cond_4
    return-void
.end method

.method public setInsertAnimationDuration(I)V
    .registers 2
    .parameter "duration"

    .prologue
    .line 2274
    if-lez p1, :cond_4

    .line 2275
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDuration:I

    .line 2276
    :cond_4
    return-void
.end method

.method public setItemAnimationDuration(I)V
    .registers 3
    .parameter "duration"

    .prologue
    .line 2236
    if-nez p1, :cond_7

    .line 2237
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDuration:I

    .line 2240
    :goto_6
    return-void

    .line 2239
    :cond_7
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDuration:I

    goto :goto_6
.end method

.method public setItemAnimationListener(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 2176
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    .line 2177
    return-void
.end method

.method public setItemAnimationType(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 2208
    if-ltz p1, :cond_7

    const/4 v0, 0x5

    if-ge p1, v0, :cond_7

    .line 2209
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    .line 2210
    :cond_7
    return-void
.end method

.method public setTranslateAnimationDelay(I)V
    .registers 2
    .parameter "delay"

    .prologue
    .line 2265
    if-ltz p1, :cond_4

    .line 2266
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTranslateDelay:I

    .line 2267
    :cond_4
    return-void
.end method
