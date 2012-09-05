.class public Lcom/android/launcher2/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellLayout$CellInfo;,
        Lcom/android/launcher2/CellLayout$LayoutParams;,
        Lcom/android/launcher2/CellLayout$CellLayoutAnimationController;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "CellLayout"


# instance fields
.field private mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundAlpha:F

.field private mBackgroundAlphaMultiplier:F

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mCellHeight:I

.field private final mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mCellWidth:I

.field private mChildren:Lcom/android/launcher2/CellLayoutChildren;

.field private mCountX:I

.field private mCountY:I

.field private mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

.field private mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

.field private mCrosshairsVisibility:F

.field private final mDragCell:[I

.field private final mDragCenter:Landroid/graphics/Point;

.field private mDragOutlineAlphas:[F

.field private mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field private mDragOutlines:[Landroid/graphics/Point;

.field private mDragging:Z

.field private mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mFolderLeaveBehindCell:[I

.field private mFolderOuterRings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/FolderIcon$FolderRingAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundAlpha:I

.field private mForegroundPadding:I

.field private mForegroundRect:Landroid/graphics/Rect;

.field private mHeightGap:I

.field private mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private mIsDragOverlapping:Z

.field private mLastDownOnOccupiedCell:Z

.field private mMaxGap:I

.field private mNormalBackground:Landroid/graphics/drawable/Drawable;

.field mOccupied:[[Z

.field private mOriginalCellHeight:I

.field private mOriginalCellWidth:I

.field private mOriginalHeightGap:I

.field private mOriginalWidthGap:I

.field private mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverScrollLeft:Landroid/graphics/drawable/Drawable;

.field private mOverScrollRight:Landroid/graphics/drawable/Drawable;

.field private mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

.field private final mRect:Landroid/graphics/Rect;

.field private mReorderAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher2/CellLayout$LayoutParams;",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollingTransformsDirty:Z

.field mTempLocation:[I

.field private final mTmpPoint:[I

.field private final mTmpPointF:Landroid/graphics/PointF;

.field private final mTmpXY:[I

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 21
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 147
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mScrollingTransformsDirty:Z

    .line 75
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 76
    new-instance v12, Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-direct {v12}, Lcom/android/launcher2/CellLayout$CellInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 80
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 81
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    .line 82
    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    .line 83
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    .line 86
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 90
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    .line 91
    const/4 v12, 0x2

    new-array v12, v12, [I

    fill-array-data v12, :array_296

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    .line 93
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    .line 95
    const/high16 v12, 0x3f80

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    .line 107
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 108
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    .line 112
    const/4 v12, 0x4

    new-array v12, v12, [Landroid/graphics/Point;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    .line 113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    array-length v12, v12

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    .line 114
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    array-length v12, v12

    new-array v12, v12, [Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 118
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 119
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 123
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 124
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 125
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    .line 127
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    .line 131
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    .line 133
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 151
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->setWillNotDraw(Z)V

    .line 153
    sget-object v12, Lcom/android/launcher/R$styleable;->CellLayout:[I

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v12, v2, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 155
    .local v3, a:Landroid/content/res/TypedArray;
    const/4 v12, 0x0

    const/16 v13, 0xa

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mOriginalCellWidth:I

    .line 157
    const/4 v12, 0x1

    const/16 v13, 0xa

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mOriginalCellHeight:I

    .line 159
    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mOriginalWidthGap:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 160
    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mOriginalHeightGap:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    .line 161
    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mMaxGap:I

    .line 162
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 163
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 164
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    filled-new-array {v12, v13}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Z

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    .line 166
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 172
    .local v9, res:Landroid/content/res/Resources;
    const v12, 0x7f020018

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    .line 173
    const v12, 0x7f020019

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    .line 175
    const v12, 0x7f02002f

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    .line 176
    const v12, 0x7f020030

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    .line 177
    const v12, 0x7f0a0018

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    .line 180
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 181
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 185
    const v12, 0x7f020012

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 186
    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v13, 0x4020

    invoke-direct {v12, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 189
    const v12, 0x7f090018

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 190
    .local v5, animDuration:I
    new-instance v12, Lcom/android/launcher2/InterruptibleInOutAnimator;

    int-to-long v13, v5

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    invoke-direct/range {v12 .. v16}, Lcom/android/launcher2/InterruptibleInOutAnimator;-><init>(JFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 191
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v12}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lcom/android/launcher2/CellLayout$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/launcher2/CellLayout$1;-><init>(Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v12}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v15, 0x1

    const/16 v16, -0x1

    aput v16, v14, v15

    aput v16, v12, v13

    .line 200
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1e7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    array-length v12, v12

    if-ge v8, v12, :cond_1fe

    .line 201
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    new-instance v13, Landroid/graphics/Point;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v13, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    aput-object v13, v12, v8

    .line 200
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e7

    .line 208
    :cond_1fe
    const v12, 0x7f09001a

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 209
    .local v6, duration:I
    const/4 v7, 0x0

    .line 210
    .local v7, fromAlphaValue:F
    const v12, 0x7f09001b

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    int-to-float v11, v12

    .line 212
    .local v11, toAlphaValue:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/util/Arrays;->fill([FF)V

    .line 214
    const/4 v8, 0x0

    :goto_217
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v12, v12

    if-ge v8, v12, :cond_256

    .line 215
    new-instance v4, Lcom/android/launcher2/InterruptibleInOutAnimator;

    int-to-long v12, v6

    const/4 v14, 0x0

    invoke-direct {v4, v12, v13, v14, v11}, Lcom/android/launcher2/InterruptibleInOutAnimator;-><init>(JFF)V

    .line 217
    .local v4, anim:Lcom/android/launcher2/InterruptibleInOutAnimator;
    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 218
    move v10, v8

    .line 219
    .local v10, thisIndex:I
    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lcom/android/launcher2/CellLayout$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4, v10}, Lcom/android/launcher2/CellLayout$2;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;I)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 244
    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lcom/android/launcher2/CellLayout$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4}, Lcom/android/launcher2/CellLayout$3;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aput-object v4, v12, v8

    .line 214
    add-int/lit8 v8, v8, 0x1

    goto :goto_217

    .line 255
    .end local v4           #anim:Lcom/android/launcher2/InterruptibleInOutAnimator;
    .end local v10           #thisIndex:I
    :cond_256
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    .line 256
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    .line 258
    new-instance v12, Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/launcher2/CellLayoutChildren;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 259
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Lcom/android/launcher2/CellLayoutChildren;->setCellDimensions(IIII)V

    .line 260
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->addView(Landroid/view/View;)V

    .line 261
    return-void

    .line 91
    :array_296
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/launcher2/CellLayout;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/CellLayout;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/CellLayout;)[Landroid/graphics/Point;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/CellLayout;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    return-object v0
.end method

.method private clearOccupiedCells()V
    .registers 5

    .prologue
    .line 1556
    const/4 v0, 0x0

    .local v0, x:I
    :goto_1
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v0, v2, :cond_17

    .line 1557
    const/4 v1, 0x0

    .local v1, y:I
    :goto_6
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v1, v2, :cond_14

    .line 1558
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 1557
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1556
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1561
    .end local v1           #y:I
    :cond_17
    return-void
.end method

.method private clearTagCellInfo()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 716
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 717
    .local v0, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 718
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 719
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 720
    iput v3, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 721
    iput v3, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 722
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 723
    return-void
.end method

.method static findVacantCell([IIIII[[Z)Z
    .registers 14
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1534
    const/4 v4, 0x0

    .local v4, y:I
    :goto_3
    if-ge v4, p4, :cond_43

    .line 1535
    const/4 v3, 0x0

    .local v3, x:I
    :goto_6
    if-ge v3, p3, :cond_40

    .line 1536
    aget-object v7, p5, v3

    aget-boolean v7, v7, v4

    if-nez v7, :cond_33

    move v0, v5

    .line 1537
    .local v0, available:Z
    :goto_f
    move v1, v3

    .local v1, i:I
    :goto_10
    add-int v7, v3, p1

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_2c

    if-ge v3, p3, :cond_2c

    .line 1538
    move v2, v4

    .local v2, j:I
    :goto_19
    add-int v7, v4, p2

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_3a

    if-ge v4, p4, :cond_3a

    .line 1539
    if-eqz v0, :cond_35

    aget-object v7, p5, v1

    aget-boolean v7, v7, v2

    if-nez v7, :cond_35

    move v0, v5

    .line 1540
    :goto_2a
    if-nez v0, :cond_37

    .line 1544
    .end local v2           #j:I
    :cond_2c
    if-eqz v0, :cond_3d

    .line 1545
    aput v3, p0, v6

    .line 1546
    aput v4, p0, v5

    .line 1552
    .end local v0           #available:Z
    .end local v1           #i:I
    .end local v3           #x:I
    :goto_32
    return v5

    .restart local v3       #x:I
    :cond_33
    move v0, v6

    .line 1536
    goto :goto_f

    .restart local v0       #available:Z
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_35
    move v0, v6

    .line 1539
    goto :goto_2a

    .line 1538
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1537
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1535
    .end local v2           #j:I
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1534
    .end local v0           #available:Z
    .end local v1           #i:I
    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v3           #x:I
    :cond_43
    move v5, v6

    .line 1552
    goto :goto_32
.end method

.method static heightInLandscape(Landroid/content/res/Resources;I)I
    .registers 6
    .parameter "r"
    .parameter "numCells"

    .prologue
    .line 278
    const v2, 0x7f0a000a

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 279
    .local v0, cellHeight:I
    const v2, 0x7f0a000b

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0a000c

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 282
    .local v1, minGap:I
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, v1

    mul-int v3, v0, p1

    add-int/2addr v2, v3

    return v2
.end method

.method private invalidateBubbleTextView(Lcom/android/launcher2/BubbleTextView;)V
    .registers 8
    .parameter "icon"

    .prologue
    .line 297
    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getPressedOrFocusedBackgroundPadding()I

    move-result v0

    .line 298
    .local v0, padding:I
    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher2/CellLayout;->invalidate(IIII)V

    .line 302
    return-void
.end method

.method private markCellsForView(IIIIZ)V
    .registers 9
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "value"

    .prologue
    .line 1632
    move v0, p1

    .local v0, x:I
    :goto_1
    add-int v2, p1, p3

    if-ge v0, v2, :cond_1e

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v0, v2, :cond_1e

    .line 1633
    move v1, p2

    .local v1, y:I
    :goto_a
    add-int v2, p2, p4

    if-ge v1, v2, :cond_1b

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v1, v2, :cond_1b

    .line 1634
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v2, v2, v0

    aput-boolean p5, v2, v1

    .line 1633
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1632
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1637
    .end local v1           #y:I
    :cond_1e
    return-void
.end method

.method public static rectToCell(Landroid/content/res/Resources;II[I)[I
    .registers 13
    .parameter "resources"
    .parameter "width"
    .parameter "height"
    .parameter "result"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1471
    const v5, 0x7f0a0009

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1472
    .local v1, actualWidth:I
    const v5, 0x7f0a000a

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1473
    .local v0, actualHeight:I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1476
    .local v2, smallerSize:I
    int-to-float v5, p1

    int-to-float v6, v2

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 1477
    .local v3, spanX:I
    int-to-float v5, p2

    int-to-float v6, v2

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 1479
    .local v4, spanY:I
    if-nez p3, :cond_30

    .line 1480
    const/4 v5, 0x2

    new-array p3, v5, [I

    .end local p3
    aput v3, p3, v7

    aput v4, p3, v8

    .line 1484
    :goto_2f
    return-object p3

    .line 1482
    .restart local p3
    :cond_30
    aput v3, p3, v7

    .line 1483
    aput v4, p3, v8

    goto :goto_2f
.end method

.method private setChildrenAlpha(F)V
    .registers 5
    .parameter "alpha"

    .prologue
    .line 942
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    .line 943
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 944
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 943
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 946
    :cond_11
    return-void
.end method

.method private setFastChildrenAlpha(F)V
    .registers 5
    .parameter "alpha"

    .prologue
    .line 949
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    .line 950
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 951
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setFastAlpha(F)V

    .line 950
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 953
    :cond_11
    return-void
.end method

.method static widthInPortrait(Landroid/content/res/Resources;I)I
    .registers 6
    .parameter "r"
    .parameter "numCells"

    .prologue
    .line 267
    const v2, 0x7f0a0009

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 268
    .local v0, cellWidth:I
    const v2, 0x7f0a000b

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0a000c

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 271
    .local v1, minGap:I
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, v1

    mul-int v3, v0, p1

    add-int/2addr v2, v3

    return v2
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z
    .registers 9
    .parameter "child"
    .parameter "index"
    .parameter "childId"
    .parameter "params"
    .parameter "markCells"

    .prologue
    .line 559
    move-object v0, p4

    .line 563
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ltz v1, :cond_38

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_38

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ltz v1, :cond_38

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_38

    .line 566
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v1, :cond_21

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 567
    :cond_21
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v1, :cond_29

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 569
    :cond_29
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 571
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 573
    if-eqz p5, :cond_36

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 575
    :cond_36
    const/4 v1, 0x1

    .line 577
    :goto_37
    return v1

    :cond_38
    const/4 v1, 0x0

    goto :goto_37
.end method

.method public animateChildToPosition(Landroid/view/View;IIII)Z
    .registers 20
    .parameter "child"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "duration"
    .parameter "delay"

    .prologue
    .line 961
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 962
    .local v1, clc:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_c2

    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v11, v11, p2

    aget-boolean v11, v11, p3

    if-nez v11, :cond_c2

    .line 963
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 964
    .local v3, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ItemInfo;

    .line 967
    .local v2, info:Lcom/android/launcher2/ItemInfo;
    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_37

    .line 968
    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/ObjectAnimator;

    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 969
    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    :cond_37
    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 973
    .local v7, oldX:I
    iget v8, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 974
    .local v8, oldY:I
    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    iget v12, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    aget-object v11, v11, v12

    iget v12, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    const/4 v13, 0x0

    aput-boolean v13, v11, v12

    .line 975
    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v11, v11, p2

    const/4 v12, 0x1

    aput-boolean v12, v11, p3

    .line 977
    const/4 v11, 0x1

    iput-boolean v11, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 978
    move/from16 v0, p2

    iput v0, v2, Lcom/android/launcher2/ItemInfo;->cellX:I

    move/from16 v0, p2

    iput v0, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 979
    move/from16 v0, p3

    iput v0, v2, Lcom/android/launcher2/ItemInfo;->cellY:I

    move/from16 v0, p3

    iput v0, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 980
    invoke-virtual {v1, v3}, Lcom/android/launcher2/CellLayoutChildren;->setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V

    .line 981
    const/4 v11, 0x0

    iput-boolean v11, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 982
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 983
    .local v4, newX:I
    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 985
    .local v5, newY:I
    iput v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 986
    iput v8, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 987
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 989
    const-string v11, "x"

    const/4 v12, 0x2

    new-array v12, v12, [I

    const/4 v13, 0x0

    aput v7, v12, v13

    const/4 v13, 0x1

    aput v4, v12, v13

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 990
    .local v9, x:Landroid/animation/PropertyValuesHolder;
    const-string v11, "y"

    const/4 v12, 0x2

    new-array v12, v12, [I

    const/4 v13, 0x0

    aput v8, v12, v13

    const/4 v13, 0x1

    aput v5, v12, v13

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 991
    .local v10, y:Landroid/animation/PropertyValuesHolder;
    const/4 v11, 0x2

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v12, 0x1

    aput-object v10, v11, v12

    invoke-static {v3, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 992
    .local v6, oa:Landroid/animation/ObjectAnimator;
    move/from16 v0, p4

    int-to-long v11, v0

    invoke-virtual {v6, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 993
    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v11, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    new-instance v11, Lcom/android/launcher2/CellLayout$4;

    invoke-direct {v11, p0, p1}, Lcom/android/launcher2/CellLayout$4;-><init>(Lcom/android/launcher2/CellLayout;Landroid/view/View;)V

    invoke-virtual {v6, v11}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 999
    new-instance v11, Lcom/android/launcher2/CellLayout$5;

    invoke-direct {v11, p0, v3}, Lcom/android/launcher2/CellLayout$5;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$LayoutParams;)V

    invoke-virtual {v6, v11}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1016
    move/from16 v0, p5

    int-to-long v11, v0

    invoke-virtual {v6, v11, v12}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1017
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 1018
    const/4 v11, 0x1

    .line 1020
    .end local v2           #info:Lcom/android/launcher2/ItemInfo;
    .end local v3           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v4           #newX:I
    .end local v5           #newY:I
    .end local v6           #oa:Landroid/animation/ObjectAnimator;
    .end local v7           #oldX:I
    .end local v8           #oldY:I
    .end local v9           #x:Landroid/animation/PropertyValuesHolder;
    .end local v10           #y:Landroid/animation/PropertyValuesHolder;
    :goto_c1
    return v11

    :cond_c2
    const/4 v11, 0x0

    goto :goto_c1
.end method

.method buildChildrenLayer()V
    .registers 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->buildLayer()V

    .line 638
    return-void
.end method

.method public calculateSpans(Lcom/android/launcher2/ItemInfo;)V
    .registers 7
    .parameter "info"

    .prologue
    const/4 v4, 0x1

    .line 1501
    instance-of v3, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;

    if-eqz v3, :cond_1e

    move-object v3, p1

    .line 1502
    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetInfo;

    iget v1, v3, Lcom/android/launcher2/LauncherAppWidgetInfo;->minWidth:I

    .local v1, minWidth:I
    move-object v3, p1

    .line 1503
    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetInfo;

    iget v0, v3, Lcom/android/launcher2/LauncherAppWidgetInfo;->minHeight:I

    .line 1512
    .local v0, minHeight:I
    :goto_f
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3}, Lcom/android/launcher2/CellLayout;->rectToCell(II[I)[I

    move-result-object v2

    .line 1513
    .local v2, spans:[I
    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 1514
    aget v3, v2, v4

    iput v3, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 1515
    .end local v0           #minHeight:I
    .end local v1           #minWidth:I
    .end local v2           #spans:[I
    :goto_1d
    return-void

    .line 1504
    :cond_1e
    instance-of v3, p1, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v3, :cond_2d

    move-object v3, p1

    .line 1505
    check-cast v3, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget v1, v3, Lcom/android/launcher2/PendingAddWidgetInfo;->minWidth:I

    .restart local v1       #minWidth:I
    move-object v3, p1

    .line 1506
    check-cast v3, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget v0, v3, Lcom/android/launcher2/PendingAddWidgetInfo;->minHeight:I

    .restart local v0       #minHeight:I
    goto :goto_f

    .line 1509
    .end local v0           #minHeight:I
    .end local v1           #minWidth:I
    :cond_2d
    iput v4, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    iput v4, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    goto :goto_1d
.end method

.method public cancelLongPress()V
    .registers 4

    .prologue
    .line 535
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 538
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    .line 539
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_14

    .line 540
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 541
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 539
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 543
    .end local v0           #child:Landroid/view/View;
    :cond_14
    return-void
.end method

.method public cellSpansToSize(II)[I
    .registers 8
    .parameter "hSpans"
    .parameter "vSpans"

    .prologue
    .line 1488
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 1489
    .local v0, size:[I
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p1

    add-int/lit8 v3, p1, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 1490
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v2, p2

    add-int/lit8 v3, p2, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 1491
    return-object v0
.end method

.method cellToCenterPoint(II[I)V
    .registers 9
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 787
    .local v0, hStartPadding:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 789
    .local v1, vStartPadding:I
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, p3, v2

    .line 790
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, p3, v2

    .line 791
    return-void
.end method

.method cellToPoint(II[I)V
    .registers 9
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 771
    .local v0, hStartPadding:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 773
    .local v1, vStartPadding:I
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    aput v3, p3, v2

    .line 774
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    aput v3, p3, v2

    .line 775
    return-void
.end method

.method public cellToRect(IIIILandroid/graphics/RectF;)V
    .registers 21
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"
    .parameter "resultRect"

    .prologue
    .line 1439
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    .line 1440
    .local v2, cellWidth:I
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    .line 1441
    .local v1, cellHeight:I
    iget v8, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 1442
    .local v8, widthGap:I
    iget v5, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    .line 1444
    .local v5, heightGap:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v3

    .line 1445
    .local v3, hStartPadding:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v6

    .line 1447
    .local v6, vStartPadding:I
    mul-int v11, p3, v2

    add-int/lit8 v12, p3, -0x1

    mul-int/2addr v12, v8

    add-int v7, v11, v12

    .line 1448
    .local v7, width:I
    mul-int v11, p4, v1

    add-int/lit8 v12, p4, -0x1

    mul-int/2addr v12, v5

    add-int v4, v11, v12

    .line 1450
    .local v4, height:I
    add-int v11, v2, v8

    mul-int v11, v11, p1

    add-int v9, v3, v11

    .line 1451
    .local v9, x:I
    add-int v11, v1, v5

    mul-int v11, v11, p2

    add-int v10, v6, v11

    .line 1453
    .local v10, y:I
    int-to-float v11, v9

    int-to-float v12, v10

    add-int v13, v9, v7

    int-to-float v13, v13

    add-int v14, v10, v4

    int-to-float v14, v14

    move-object/from16 v0, p5

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1454
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 1664
    instance-of v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;

    return v0
.end method

.method public clearDragOutlines()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 1126
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1127
    .local v0, oldIndex:I
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1128
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v2, 0x0

    aput v3, v1, v2

    .line 1129
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    .line 1130
    return-void
.end method

.method public clearFolderLeaveBehind()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 523
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 524
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 525
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 526
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    .line 495
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 496
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    if-lez v1, :cond_29

    .line 497
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 498
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 499
    .local v0, p:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 500
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 501
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 503
    .end local v0           #p:Landroid/graphics/Paint;
    :cond_29
    return-void
.end method

.method public drawChildren(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->draw(Landroid/graphics/Canvas;)V

    .line 634
    return-void
.end method

.method public enableHardwareLayers()V
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->enableHardwareLayers()V

    .line 287
    return-void
.end method

.method estimateDropCell(IIII[I)V
    .registers 13
    .parameter "originX"
    .parameter "originY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1033
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 1034
    .local v1, countX:I
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 1038
    .local v2, countY:I
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/launcher2/CellLayout;->pointToCellRounded(II[I)V

    .line 1041
    aget v4, p5, v5

    add-int/2addr v4, p3

    sub-int v3, v4, v1

    .line 1042
    .local v3, rightOverhang:I
    if-lez v3, :cond_15

    .line 1043
    aget v4, p5, v5

    sub-int/2addr v4, v3

    aput v4, p5, v5

    .line 1045
    :cond_15
    aget v4, p5, v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p5, v5

    .line 1046
    aget v4, p5, v6

    add-int/2addr v4, p4

    sub-int v0, v4, v2

    .line 1047
    .local v0, bottomOverhang:I
    if-lez v0, :cond_29

    .line 1048
    aget v4, p5, v6

    sub-int/2addr v4, v0

    aput v4, p5, v6

    .line 1050
    :cond_29
    aget v4, p5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p5, v6

    .line 1051
    return-void
.end method

.method existsEmptyCell()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1258
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v0

    return v0
.end method

.method findCellForSpan([III)Z
    .registers 11
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v4, -0x1

    .line 1275
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method findCellForSpanIgnoring([IIILandroid/view/View;)Z
    .registers 12
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"

    .prologue
    const/4 v4, -0x1

    .line 1289
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method findCellForSpanThatIntersects([IIIII)Z
    .registers 13
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "intersectX"
    .parameter "intersectY"

    .prologue
    .line 1306
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z
    .registers 19
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "intersectX"
    .parameter "intersectY"
    .parameter "ignoreView"

    .prologue
    .line 1316
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 1318
    const/4 v3, 0x0

    .line 1320
    .local v3, foundCell:Z
    :goto_6
    const/4 v6, 0x0

    .line 1321
    .local v6, startX:I
    if-ltz p4, :cond_11

    .line 1322
    add-int/lit8 v10, p2, -0x1

    sub-int v10, p4, v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1324
    :cond_11
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v11, p2, -0x1

    sub-int v1, v10, v11

    .line 1325
    .local v1, endX:I
    if-ltz p4, :cond_26

    .line 1326
    add-int/lit8 v10, p2, -0x1

    add-int v11, p4, v10

    const/4 v10, 0x1

    if-ne p2, v10, :cond_64

    const/4 v10, 0x1

    :goto_21
    add-int/2addr v10, v11

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1328
    :cond_26
    const/4 v7, 0x0

    .line 1329
    .local v7, startY:I
    if-ltz p5, :cond_31

    .line 1330
    add-int/lit8 v10, p3, -0x1

    sub-int v10, p5, v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1332
    :cond_31
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v11, p3, -0x1

    sub-int v2, v10, v11

    .line 1333
    .local v2, endY:I
    if-ltz p5, :cond_46

    .line 1334
    add-int/lit8 v10, p3, -0x1

    add-int v11, p5, v10

    const/4 v10, 0x1

    if-ne p3, v10, :cond_66

    const/4 v10, 0x1

    :goto_41
    add-int/2addr v10, v11

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1337
    :cond_46
    move v9, v7

    .local v9, y:I
    :goto_47
    if-ge v9, v2, :cond_7a

    if-nez v3, :cond_7a

    .line 1339
    move v8, v6

    .local v8, x:I
    :goto_4c
    if-ge v8, v1, :cond_77

    .line 1340
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4f
    if-ge v4, p2, :cond_6e

    .line 1341
    const/4 v5, 0x0

    .local v5, j:I
    :goto_52
    if-ge v5, p3, :cond_6b

    .line 1342
    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    add-int v11, v8, v4

    aget-object v10, v10, v11

    add-int v11, v9, v5

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_68

    .line 1345
    add-int/2addr v8, v4

    .line 1339
    add-int/lit8 v8, v8, 0x1

    goto :goto_4c

    .line 1326
    .end local v2           #endY:I
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v7           #startY:I
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_64
    const/4 v10, 0x0

    goto :goto_21

    .line 1334
    .restart local v2       #endY:I
    .restart local v7       #startY:I
    :cond_66
    const/4 v10, 0x0

    goto :goto_41

    .line 1341
    .restart local v4       #i:I
    .restart local v5       #j:I
    .restart local v8       #x:I
    .restart local v9       #y:I
    :cond_68
    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    .line 1340
    :cond_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 1350
    .end local v5           #j:I
    :cond_6e
    if-eqz p1, :cond_76

    .line 1351
    const/4 v10, 0x0

    aput v8, p1, v10

    .line 1352
    const/4 v10, 0x1

    aput v9, p1, v10

    .line 1354
    :cond_76
    const/4 v3, 0x1

    .line 1337
    .end local v4           #i:I
    :cond_77
    add-int/lit8 v9, v9, 0x1

    goto :goto_47

    .line 1358
    .end local v8           #x:I
    :cond_7a
    const/4 v10, -0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_8a

    const/4 v10, -0x1

    move/from16 v0, p5

    if-ne v0, v10, :cond_8a

    .line 1370
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 1371
    return v3

    .line 1363
    :cond_8a
    const/16 p4, -0x1

    .line 1364
    const/16 p5, -0x1

    .line 1365
    goto/16 :goto_6
.end method

.method findNearestArea(IIIILandroid/view/View;Z[I)[I
    .registers 29
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "ignoreOccupied"
    .parameter "result"

    .prologue
    .line 1167
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 1172
    move/from16 v0, p1

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move/from16 v17, v0

    add-int v16, v16, v17

    add-int/lit8 v17, p3, -0x1

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x4000

    div-float v16, v16, v17

    sub-float v15, v15, v16

    float-to-int v0, v15

    move/from16 p1, v0

    .line 1173
    move/from16 v0, p2

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move/from16 v17, v0

    add-int v16, v16, v17

    add-int/lit8 v17, p4, -0x1

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x4000

    div-float v16, v16, v17

    sub-float v15, v15, v16

    float-to-int v0, v15

    move/from16 p2, v0

    .line 1176
    if-eqz p7, :cond_8a

    move-object/from16 v4, p7

    .line 1177
    .local v4, bestXY:[I
    :goto_51
    const-wide v2, 0x7fefffffffffffffL

    .line 1179
    .local v2, bestDistance:D
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 1180
    .local v6, countX:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 1181
    .local v7, countY:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    .line 1183
    .local v12, occupied:[[Z
    const/4 v14, 0x0

    .local v14, y:I
    :goto_63
    add-int/lit8 v15, p4, -0x1

    sub-int v15, v7, v15

    if-ge v14, v15, :cond_cf

    .line 1185
    const/4 v13, 0x0

    .local v13, x:I
    :goto_6a
    add-int/lit8 v15, p3, -0x1

    sub-int v15, v6, v15

    if-ge v13, v15, :cond_cc

    .line 1186
    if-eqz p6, :cond_94

    .line 1187
    const/4 v10, 0x0

    .local v10, i:I
    :goto_73
    move/from16 v0, p3

    if-ge v10, v0, :cond_94

    .line 1188
    const/4 v11, 0x0

    .local v11, j:I
    :goto_78
    move/from16 v0, p4

    if-ge v11, v0, :cond_91

    .line 1189
    add-int v15, v13, v10

    aget-object v15, v12, v15

    add-int v16, v14, v11

    aget-boolean v15, v15, v16

    if-eqz v15, :cond_8e

    .line 1192
    add-int/2addr v13, v10

    .line 1185
    .end local v10           #i:I
    .end local v11           #j:I
    :cond_87
    :goto_87
    add-int/lit8 v13, v13, 0x1

    goto :goto_6a

    .line 1176
    .end local v2           #bestDistance:D
    .end local v4           #bestXY:[I
    .end local v6           #countX:I
    .end local v7           #countY:I
    .end local v12           #occupied:[[Z
    .end local v13           #x:I
    .end local v14           #y:I
    :cond_8a
    const/4 v15, 0x2

    new-array v4, v15, [I

    goto :goto_51

    .line 1188
    .restart local v2       #bestDistance:D
    .restart local v4       #bestXY:[I
    .restart local v6       #countX:I
    .restart local v7       #countY:I
    .restart local v10       #i:I
    .restart local v11       #j:I
    .restart local v12       #occupied:[[Z
    .restart local v13       #x:I
    .restart local v14       #y:I
    :cond_8e
    add-int/lit8 v11, v11, 0x1

    goto :goto_78

    .line 1187
    :cond_91
    add-int/lit8 v10, v10, 0x1

    goto :goto_73

    .line 1198
    .end local v10           #i:I
    .end local v11           #j:I
    :cond_94
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 1199
    .local v5, cellXY:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v5}, Lcom/android/launcher2/CellLayout;->cellToCenterPoint(II[I)V

    .line 1201
    const/4 v15, 0x0

    aget v15, v5, v15

    sub-int v15, v15, p1

    int-to-double v15, v15

    const-wide/high16 v17, 0x4000

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    const/16 v17, 0x1

    aget v17, v5, v17

    sub-int v17, v17, p2

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 1203
    .local v8, distance:D
    cmpg-double v15, v8, v2

    if-gtz v15, :cond_87

    .line 1204
    move-wide v2, v8

    .line 1205
    const/4 v15, 0x0

    aput v13, v4, v15

    .line 1206
    const/4 v15, 0x1

    aput v14, v4, v15

    goto :goto_87

    .line 1183
    .end local v5           #cellXY:[I
    .end local v8           #distance:D
    :cond_cc
    add-int/lit8 v14, v14, 0x1

    goto :goto_63

    .line 1211
    .end local v13           #x:I
    :cond_cf
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 1214
    const-wide v15, 0x7fefffffffffffffL

    cmpl-double v15, v2, v15

    if-nez v15, :cond_e9

    .line 1215
    const/4 v15, 0x0

    const/16 v16, -0x1

    aput v16, v4, v15

    .line 1216
    const/4 v15, 0x1

    const/16 v16, -0x1

    aput v16, v4, v15

    .line 1218
    :cond_e9
    return-object v4
.end method

.method findNearestArea(IIII[I)[I
    .registers 14
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    .line 1254
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIIILandroid/view/View;[I)[I
    .registers 15
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "result"

    .prologue
    .line 1236
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIII[I)[I
    .registers 13
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    .line 1147
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIILandroid/view/View;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 1659
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "p"

    .prologue
    .line 1669
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .registers 2

    .prologue
    .line 903
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    return v0
.end method

.method public getBackgroundAlphaMultiplier()F
    .registers 2

    .prologue
    .line 915
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    return v0
.end method

.method getCellHeight()I
    .registers 2

    .prologue
    .line 798
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    return v0
.end method

.method getCellWidth()I
    .registers 2

    .prologue
    .line 794
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;
    .registers 2

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 331
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutChildren;

    .line 333
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method getContentRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 8
    .parameter "r"

    .prologue
    .line 810
    if-nez p1, :cond_7

    .line 811
    new-instance p1, Landroid/graphics/Rect;

    .end local p1
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 813
    .restart local p1
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v1

    .line 814
    .local v1, left:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v3

    .line 815
    .local v3, top:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    sub-int v2, v4, v5

    .line 816
    .local v2, right:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 817
    .local v0, bottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 818
    return-object p1
.end method

.method getCountX()I
    .registers 2

    .prologue
    .line 550
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    return v0
.end method

.method getCountY()I
    .registers 2

    .prologue
    .line 554
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    return v0
.end method

.method public getDesiredHeight()I
    .registers 4

    .prologue
    .line 1645
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getDesiredWidth()I
    .registers 4

    .prologue
    .line 1640
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getExpandabilityArrayForView(Landroid/view/View;[I)V
    .registers 13
    .parameter "view"
    .parameter "expandability"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1569
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1572
    .local v1, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    aput v6, p2, v6

    .line 1573
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    add-int/lit8 v2, v4, -0x1

    .local v2, x:I
    :goto_10
    if-ltz v2, :cond_2a

    .line 1574
    const/4 v0, 0x0

    .line 1575
    .local v0, flag:Z
    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .local v3, y:I
    :goto_15
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_28

    .line 1576
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_25

    const/4 v0, 0x1

    .line 1575
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1578
    :cond_28
    if-eqz v0, :cond_48

    .line 1582
    .end local v0           #flag:Z
    .end local v3           #y:I
    :cond_2a
    aput v6, p2, v7

    .line 1583
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    add-int/lit8 v3, v4, -0x1

    .restart local v3       #y:I
    :goto_30
    if-ltz v3, :cond_53

    .line 1584
    const/4 v0, 0x0

    .line 1585
    .restart local v0       #flag:Z
    iget v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    :goto_35
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_51

    .line 1586
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_45

    const/4 v0, 0x1

    .line 1585
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 1579
    :cond_48
    aget v4, p2, v6

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v6

    .line 1573
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 1588
    :cond_51
    if-eqz v0, :cond_75

    .line 1592
    .end local v0           #flag:Z
    :cond_53
    aput v6, p2, v8

    .line 1593
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int v2, v4, v5

    :goto_5b
    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v2, v4, :cond_80

    .line 1594
    const/4 v0, 0x0

    .line 1595
    .restart local v0       #flag:Z
    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    :goto_62
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_7e

    .line 1596
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_72

    const/4 v0, 0x1

    .line 1595
    :cond_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    .line 1589
    :cond_75
    aget v4, p2, v7

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v7

    .line 1583
    add-int/lit8 v3, v3, -0x1

    goto :goto_30

    .line 1598
    :cond_7e
    if-eqz v0, :cond_a2

    .line 1602
    .end local v0           #flag:Z
    :cond_80
    aput v6, p2, v9

    .line 1603
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int v3, v4, v5

    :goto_88
    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v3, v4, :cond_ad

    .line 1604
    const/4 v0, 0x0

    .line 1605
    .restart local v0       #flag:Z
    iget v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    :goto_8f
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_ab

    .line 1606
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_9f

    const/4 v0, 0x1

    .line 1605
    :cond_9f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    .line 1599
    :cond_a2
    aget v4, p2, v8

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v8

    .line 1593
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 1608
    :cond_ab
    if-eqz v0, :cond_ae

    .line 1611
    .end local v0           #flag:Z
    :cond_ad
    return-void

    .line 1609
    .restart local v0       #flag:Z
    :cond_ae
    aget v4, p2, v9

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v9

    .line 1603
    add-int/lit8 v3, v3, 0x1

    goto :goto_88
.end method

.method getHeightGap()I
    .registers 2

    .prologue
    .line 806
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    return v0
.end method

.method getIsDragOverlapping()Z
    .registers 2

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    return v0
.end method

.method public getTag()Lcom/android/launcher2/CellLayout$CellInfo;
    .registers 2

    .prologue
    .line 726
    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellInfo;

    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getTag()Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVacantCell([III)Z
    .registers 10
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1528
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v0

    return v0
.end method

.method getWidthGap()I
    .registers 2

    .prologue
    .line 802
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    return v0
.end method

.method public hideFolderAccept(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)V
    .registers 3
    .parameter "fra"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 511
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 513
    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 514
    return-void
.end method

.method public isOccupied(II)Z
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1650
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge p1, v0, :cond_f

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge p2, v0, :cond_f

    .line 1651
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    return v0

    .line 1653
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Position exceeds the bound of this CellLayout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lastDownOnOccupiedCell()Z
    .registers 2

    .prologue
    .line 1827
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .registers 9
    .parameter "view"

    .prologue
    .line 1620
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    if-eq v0, v1, :cond_b

    .line 1623
    :cond_a
    :goto_a
    return-void

    .line 1621
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1622
    .local v6, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v1, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v3, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIIIZ)V

    goto :goto_a
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .registers 9
    .parameter "view"

    .prologue
    .line 1626
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    if-eq v0, v1, :cond_b

    .line 1629
    :cond_a
    :goto_a
    return-void

    .line 1627
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1628
    .local v6, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v1, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v3, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIIIZ)V

    goto :goto_a
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 642
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 643
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    .line 644
    return-void
.end method

.method onDragEnter()V
    .registers 2

    .prologue
    .line 1380
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-nez v0, :cond_d

    .line 1382
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    if-eqz v0, :cond_d

    .line 1383
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    .line 1386
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 1387
    return-void
.end method

.method onDragExit()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1396
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-eqz v0, :cond_11

    .line 1397
    iput-boolean v2, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 1400
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    if-eqz v0, :cond_11

    .line 1401
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1406
    :cond_11
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    aput v3, v0, v2

    .line 1407
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v1, 0x1

    aput v3, v0, v1

    .line 1408
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1409
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1411
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 1412
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 32
    .parameter "canvas"

    .prologue
    .line 371
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_44

    .line 374
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    move/from16 v27, v0

    if-eqz v27, :cond_126

    .line 376
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    .line 381
    .local v9, bg:Landroid/graphics/drawable/Drawable;
    :goto_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    const/high16 v28, 0x437f

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 383
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 386
    .end local v9           #bg:Landroid/graphics/drawable/Drawable;
    :cond_44
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_140

    .line 387
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 388
    .local v13, countX:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 390
    .local v14, countY:I
    const v5, 0x3ecccccd

    .line 391
    .local v5, MAX_ALPHA:F
    const/16 v6, 0x258

    .line 392
    .local v6, MAX_VISIBLE_DISTANCE:I
    const v4, 0x3b03126f

    .line 394
    .local v4, DISTANCE_MULTIPLIER:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 395
    .local v15, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v24

    .line 396
    .local v24, width:I
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    .line 398
    .local v18, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    sub-int v27, v27, v28

    div-int/lit8 v28, v24, 0x2

    sub-int v25, v27, v28

    .line 399
    .local v25, x:I
    const/4 v12, 0x0

    .local v12, col:I
    :goto_7f
    if-gt v12, v13, :cond_140

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    sub-int v27, v27, v28

    div-int/lit8 v28, v18, 0x2

    sub-int v26, v27, v28

    .line 401
    .local v26, y:I
    const/16 v23, 0x0

    .local v23, row:I
    :goto_95
    move/from16 v0, v23

    if-gt v0, v14, :cond_12c

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    sub-int v28, v25, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v29, v0

    sub-int v29, v26, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/PointF;->set(FF)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/PointF;->length()F

    move-result v16

    .line 405
    .local v16, dist:F
    const v27, 0x3ecccccd

    const v28, 0x3b03126f

    const/high16 v29, 0x4416

    sub-float v29, v29, v16

    mul-float v28, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 407
    .local v7, alpha:F
    const/16 v27, 0x0

    cmpl-float v27, v7, v27

    if-lez v27, :cond_112

    .line 408
    add-int v27, v25, v24

    add-int v28, v26, v18

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 409
    const/high16 v27, 0x437f

    mul-float v27, v27, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 410
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 412
    :cond_112
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int v26, v26, v27

    .line 401
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_95

    .line 378
    .end local v4           #DISTANCE_MULTIPLIER:F
    .end local v5           #MAX_ALPHA:F
    .end local v6           #MAX_VISIBLE_DISTANCE:I
    .end local v7           #alpha:F
    .end local v12           #col:I
    .end local v13           #countX:I
    .end local v14           #countY:I
    .end local v15           #d:Landroid/graphics/drawable/Drawable;
    .end local v16           #dist:F
    .end local v18           #height:I
    .end local v23           #row:I
    .end local v24           #width:I
    .end local v25           #x:I
    .end local v26           #y:I
    :cond_126
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    .restart local v9       #bg:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_18

    .line 414
    .end local v9           #bg:Landroid/graphics/drawable/Drawable;
    .restart local v4       #DISTANCE_MULTIPLIER:F
    .restart local v5       #MAX_ALPHA:F
    .restart local v6       #MAX_VISIBLE_DISTANCE:I
    .restart local v12       #col:I
    .restart local v13       #countX:I
    .restart local v14       #countY:I
    .restart local v15       #d:Landroid/graphics/drawable/Drawable;
    .restart local v18       #height:I
    .restart local v23       #row:I
    .restart local v24       #width:I
    .restart local v25       #x:I
    .restart local v26       #y:I
    :cond_12c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int v25, v25, v27

    .line 399
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7f

    .line 418
    .end local v4           #DISTANCE_MULTIPLIER:F
    .end local v5           #MAX_ALPHA:F
    .end local v6           #MAX_VISIBLE_DISTANCE:I
    .end local v12           #col:I
    .end local v13           #countX:I
    .end local v14           #countY:I
    .end local v15           #d:Landroid/graphics/drawable/Drawable;
    .end local v18           #height:I
    .end local v23           #row:I
    .end local v24           #width:I
    .end local v25           #x:I
    .end local v26           #y:I
    :cond_140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    .line 419
    .local v22, paint:Landroid/graphics/Paint;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_1b1

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    move-object/from16 v27, v0

    aget v7, v27, v19

    .line 421
    .restart local v7       #alpha:F
    const/16 v27, 0x0

    cmpl-float v27, v7, v27

    if-lez v27, :cond_1ae

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    move-object/from16 v27, v0

    aget-object v20, v27, v19

    .line 423
    .local v20, p:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v27, v0

    aget-object v27, v27, v19

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 424
    .local v8, b:Landroid/graphics/Bitmap;
    const/high16 v27, 0x3f00

    add-float v27, v27, v7

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 425
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v22

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 419
    .end local v8           #b:Landroid/graphics/Bitmap;
    .end local v20           #p:Landroid/graphics/Point;
    :cond_1ae
    add-int/lit8 v19, v19, 0x1

    goto :goto_148

    .line 431
    .end local v7           #alpha:F
    :cond_1b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object/from16 v27, v0

    if-eqz v27, :cond_20a

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/BubbleTextView;->getPressedOrFocusedBackgroundPadding()I

    move-result v21

    .line 433
    .local v21, padding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/BubbleTextView;->getPressedOrFocusedBackground()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 434
    .restart local v8       #b:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_20a

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/BubbleTextView;->getLeft()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v28

    add-int v27, v27, v28

    sub-int v27, v27, v21

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/BubbleTextView;->getTop()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v29

    add-int v28, v28, v29

    sub-int v28, v28, v21

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 443
    .end local v8           #b:Landroid/graphics/Bitmap;
    .end local v21           #padding:I
    :cond_20a
    const/16 v19, 0x0

    :goto_20c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_336

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .line 447
    .local v17, fra:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    sget-object v15, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 448
    .restart local v15       #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->getOuterRingSize()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v24, v0

    .line 449
    .restart local v24       #width:I
    move/from16 v18, v24

    .line 450
    .restart local v18       #height:I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellX:I

    move/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellY:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    add-int v10, v27, v28

    .line 453
    .local v10, centerX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    sget v28, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    div-int/lit8 v28, v28, 0x2

    add-int v11, v27, v28

    .line 455
    .local v11, centerY:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 456
    div-int/lit8 v27, v24, 0x2

    sub-int v27, v10, v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-int/lit8 v28, v18, 0x2

    sub-int v28, v11, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 457
    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v24

    move/from16 v3, v18

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 458
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 459
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 462
    sget-object v15, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 463
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->getInnerRingSize()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v24, v0

    .line 464
    move/from16 v18, v24

    .line 465
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellX:I

    move/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellY:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    add-int v10, v27, v28

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    sget v28, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    div-int/lit8 v28, v28, 0x2

    add-int v11, v27, v28

    .line 469
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 470
    div-int/lit8 v27, v24, 0x2

    sub-int v27, v10, v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-int/lit8 v28, v24, 0x2

    sub-int v28, v11, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 471
    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v24

    move/from16 v3, v18

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 472
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 473
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 443
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_20c

    .line 476
    .end local v10           #centerX:I
    .end local v11           #centerY:I
    .end local v15           #d:Landroid/graphics/drawable/Drawable;
    .end local v17           #fra:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    .end local v18           #height:I
    .end local v24           #width:I
    :cond_336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    if-ltz v27, :cond_3d6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    if-ltz v27, :cond_3d6

    .line 477
    sget-object v15, Lcom/android/launcher2/FolderIcon;->sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

    .line 478
    .restart local v15       #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v24

    .line 479
    .restart local v24       #width:I
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    .line 481
    .restart local v18       #height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    add-int v10, v27, v28

    .line 483
    .restart local v10       #centerX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    sget v28, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    div-int/lit8 v28, v28, 0x2

    add-int v11, v27, v28

    .line 485
    .restart local v11       #centerY:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 486
    div-int/lit8 v27, v24, 0x2

    sub-int v27, v10, v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-int/lit8 v28, v24, 0x2

    sub-int v28, v11, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 487
    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v24

    move/from16 v3, v18

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 488
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 489
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 491
    .end local v10           #centerX:I
    .end local v11           #centerY:I
    .end local v15           #d:Landroid/graphics/drawable/Drawable;
    .end local v18           #height:I
    .end local v24           #width:I
    :cond_3d6
    return-void
.end method

.method onDropChild(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 1422
    if-eqz p1, :cond_e

    .line 1423
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1424
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    .line 1425
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1427
    .end local v0           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_e
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "ev"

    .prologue
    .line 699
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 701
    .local v0, action:I
    if-nez v0, :cond_9

    .line 702
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->clearTagCellInfo()V

    .line 705
    :cond_9
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 706
    const/4 v1, 0x1

    .line 712
    :goto_16
    return v1

    .line 709
    :cond_17
    if-nez v0, :cond_26

    .line 710
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/CellLayout;->setTagToCellInfoForPoint(II)V

    .line 712
    :cond_26
    const/4 v1, 0x0

    goto :goto_16
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    .line 877
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_1f

    .line 878
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 879
    .local v0, child:Landroid/view/View;
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    sub-int v5, p4, p2

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    sub-int/2addr v5, v6

    sub-int v6, p5, p3

    iget v7, p0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 877
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 882
    .end local v0           #child:Landroid/view/View;
    :cond_1f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 27
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 825
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 826
    .local v17, widthSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 828
    .local v18, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 829
    .local v8, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 831
    .local v9, heightSpecSize:I
    if-eqz v17, :cond_14

    if-nez v8, :cond_1c

    .line 832
    :cond_14
    new-instance v19, Ljava/lang/RuntimeException;

    const-string v20, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 835
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v19, v0

    add-int/lit8 v14, v19, -0x1

    .line 836
    .local v14, numWidthGaps:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x1

    .line 838
    .local v13, numHeightGaps:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mOriginalWidthGap:I

    move/from16 v19, v0

    if-ltz v19, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mOriginalHeightGap:I

    move/from16 v19, v0

    if-gez v19, :cond_184

    .line 839
    :cond_3c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    move/from16 v20, v0

    sub-int v7, v19, v20

    .line 840
    .local v7, hSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    move/from16 v19, v0

    sub-int v19, v9, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    move/from16 v20, v0

    sub-int v16, v19, v20

    .line 841
    .local v16, vSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mOriginalCellWidth:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v6, v7, v19

    .line 842
    .local v6, hFreeSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mOriginalCellHeight:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v15, v16, v19

    .line 843
    .local v15, vFreeSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mMaxGap:I

    move/from16 v20, v0

    if-lez v14, :cond_17c

    div-int v19, v6, v14

    :goto_86
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 844
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mMaxGap:I

    move/from16 v20, v0

    if-lez v13, :cond_180

    div-int v19, v15, v13

    :goto_9e
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Lcom/android/launcher2/CellLayoutChildren;->setCellDimensions(IIII)V

    .line 852
    .end local v6           #hFreeSpace:I
    .end local v7           #hSpace:I
    .end local v15           #vFreeSpace:I
    .end local v16           #vSpace:I
    :goto_cd
    move/from16 v12, v18

    .line 853
    .local v12, newWidth:I
    move v11, v9

    .line 854
    .local v11, newHeight:I
    const/high16 v19, -0x8000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_13d

    .line 855
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v12, v19, v20

    .line 857
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v11, v19, v20

    .line 859
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/android/launcher2/CellLayout;->setMeasuredDimension(II)V

    .line 862
    :cond_13d
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v5

    .line 863
    .local v5, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_142
    if-ge v10, v5, :cond_19e

    .line 864
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 865
    .local v2, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    move/from16 v19, v0

    sub-int v19, v12, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    const/high16 v20, 0x4000

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 867
    .local v3, childWidthMeasureSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    move/from16 v19, v0

    sub-int v19, v11, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    const/high16 v20, 0x4000

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 869
    .local v4, childheightMeasureSpec:I
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 863
    add-int/lit8 v10, v10, 0x1

    goto :goto_142

    .line 843
    .end local v2           #child:Landroid/view/View;
    .end local v3           #childWidthMeasureSpec:I
    .end local v4           #childheightMeasureSpec:I
    .end local v5           #count:I
    .end local v10           #i:I
    .end local v11           #newHeight:I
    .end local v12           #newWidth:I
    .restart local v6       #hFreeSpace:I
    .restart local v7       #hSpace:I
    .restart local v15       #vFreeSpace:I
    .restart local v16       #vSpace:I
    :cond_17c
    const/16 v19, 0x0

    goto/16 :goto_86

    .line 844
    :cond_180
    const/16 v19, 0x0

    goto/16 :goto_9e

    .line 847
    .end local v6           #hFreeSpace:I
    .end local v7           #hSpace:I
    .end local v15           #vFreeSpace:I
    .end local v16           #vSpace:I
    :cond_184
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mOriginalWidthGap:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 848
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mOriginalHeightGap:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    goto/16 :goto_cd

    .line 871
    .restart local v5       #count:I
    .restart local v10       #i:I
    .restart local v11       #newHeight:I
    .restart local v12       #newWidth:I
    :cond_19e
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/android/launcher2/CellLayout;->setMeasuredDimension(II)V

    .line 872
    return-void
.end method

.method public onMove(Landroid/view/View;II)V
    .registers 11
    .parameter "view"
    .parameter "newCellX"
    .parameter "newCellY"

    .prologue
    .line 1614
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1615
    .local v6, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 1616
    iget v3, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIIIZ)V

    .line 1617
    return-void
.end method

.method protected onSetAlpha(I)Z
    .registers 3
    .parameter "alpha"

    .prologue
    .line 928
    const/4 v0, 0x1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 10
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v1, 0x0

    .line 886
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 887
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 888
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 890
    return-void
.end method

.method pointToCellExact(II[I)V
    .registers 13
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 736
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 737
    .local v0, hStartPadding:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 739
    .local v1, vStartPadding:I
    sub-int v4, p1, v0

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v7

    .line 740
    sub-int v4, p2, v1

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v8

    .line 742
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 743
    .local v2, xAxis:I
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 745
    .local v3, yAxis:I
    aget v4, p3, v7

    if-gez v4, :cond_28

    aput v7, p3, v7

    .line 746
    :cond_28
    aget v4, p3, v7

    if-lt v4, v2, :cond_30

    add-int/lit8 v4, v2, -0x1

    aput v4, p3, v7

    .line 747
    :cond_30
    aget v4, p3, v8

    if-gez v4, :cond_36

    aput v7, p3, v8

    .line 748
    :cond_36
    aget v4, p3, v8

    if-lt v4, v3, :cond_3e

    add-int/lit8 v4, v3, -0x1

    aput v4, p3, v8

    .line 749
    :cond_3e
    return-void
.end method

.method pointToCellRounded(II[I)V
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    .line 758
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 759
    return-void
.end method

.method public rectToCell(II[I)[I
    .registers 5
    .parameter "width"
    .parameter "height"
    .parameter "result"

    .prologue
    .line 1465
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/launcher2/CellLayout;->rectToCell(Landroid/content/res/Resources;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method public removeAllViews()V
    .registers 2

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->clearOccupiedCells()V

    .line 583
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViews()V

    .line 584
    return-void
.end method

.method public removeAllViewsInLayout()V
    .registers 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    if-lez v0, :cond_10

    .line 589
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->clearOccupiedCells()V

    .line 590
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViewsInLayout()V

    .line 592
    :cond_10
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 600
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 601
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 602
    return-void
.end method

.method public removeViewAt(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 607
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeViewAt(I)V

    .line 608
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 612
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 613
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeViewInLayout(Landroid/view/View;)V

    .line 614
    return-void
.end method

.method public removeViewWithoutMarkingCells(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 596
    return-void
.end method

.method public removeViews(II)V
    .registers 5
    .parameter "start"
    .parameter "count"

    .prologue
    .line 618
    move v0, p1

    .local v0, i:I
    :goto_1
    add-int v1, p1, p2

    if-ge v0, v1, :cond_11

    .line 619
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 621
    :cond_11
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->removeViews(II)V

    .line 622
    return-void
.end method

.method public removeViewsInLayout(II)V
    .registers 5
    .parameter "start"
    .parameter "count"

    .prologue
    .line 626
    move v0, p1

    .local v0, i:I
    :goto_1
    add-int v1, p1, p2

    if-ge v0, v1, :cond_11

    .line 627
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 629
    :cond_11
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->removeViewsInLayout(II)V

    .line 630
    return-void
.end method

.method protected resetOverscrollTransforms()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 352
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mScrollingTransformsDirty:Z

    if-eqz v0, :cond_26

    .line 353
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->setOverscrollTransformsDirty(Z)V

    .line 354
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 355
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 358
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/CellLayout;->setOverScrollAmount(FZ)V

    .line 359
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 360
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    .line 362
    :cond_26
    return-void
.end method

.method public setAlpha(F)V
    .registers 2
    .parameter "alpha"

    .prologue
    .line 932
    invoke-direct {p0, p1}, Lcom/android/launcher2/CellLayout;->setChildrenAlpha(F)V

    .line 933
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 934
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .registers 2
    .parameter "alpha"

    .prologue
    .line 919
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    .line 920
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 921
    return-void
.end method

.method public setBackgroundAlphaMultiplier(F)V
    .registers 2
    .parameter "multiplier"

    .prologue
    .line 911
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    .line 912
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    .line 895
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 900
    return-void
.end method

.method public setFastAlpha(F)V
    .registers 2
    .parameter "alpha"

    .prologue
    .line 937
    invoke-direct {p0, p1}, Lcom/android/launcher2/CellLayout;->setFastChildrenAlpha(F)V

    .line 938
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFastAlpha(F)V

    .line 939
    return-void
.end method

.method public setFastBackgroundAlpha(F)V
    .registers 2
    .parameter "alpha"

    .prologue
    .line 907
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    .line 908
    return-void
.end method

.method public setFolderLeaveBehindCell(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 518
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 519
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 520
    return-void
.end method

.method public setGridSize(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 290
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 291
    iput p2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 292
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    .line 293
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->requestLayout()V

    .line 294
    return-void
.end method

.method setIsDragOverlapping(Z)V
    .registers 3
    .parameter "isDragOverlapping"

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_9

    .line 338
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 339
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 341
    :cond_9
    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    .line 547
    return-void
.end method

.method setOverScrollAmount(FZ)V
    .registers 5
    .parameter "r"
    .parameter "left"

    .prologue
    .line 305
    if-eqz p2, :cond_20

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_20

    .line 306
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 311
    :cond_c
    :goto_c
    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    .line 312
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 313
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 314
    return-void

    .line 307
    :cond_20
    if-nez p2, :cond_c

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_c

    .line 308
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_c
.end method

.method protected setOverscrollTransformsDirty(Z)V
    .registers 2
    .parameter "dirty"

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mScrollingTransformsDirty:Z

    .line 349
    return-void
.end method

.method setPressedOrFocusedIcon(Lcom/android/launcher2/BubbleTextView;)V
    .registers 4
    .parameter "icon"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    .line 320
    .local v0, oldIcon:Lcom/android/launcher2/BubbleTextView;
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    .line 321
    if-eqz v0, :cond_9

    .line 322
    invoke-direct {p0, v0}, Lcom/android/launcher2/CellLayout;->invalidateBubbleTextView(Lcom/android/launcher2/BubbleTextView;)V

    .line 324
    :cond_9
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    if-eqz v1, :cond_12

    .line 325
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    invoke-direct {p0, v1}, Lcom/android/launcher2/CellLayout;->invalidateBubbleTextView(Lcom/android/launcher2/BubbleTextView;)V

    .line 327
    :cond_12
    return-void
.end method

.method public setTagToCellInfoForPoint(II)V
    .registers 16
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    const/4 v12, 0x1

    .line 647
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 648
    .local v0, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 649
    .local v5, frame:Landroid/graphics/Rect;
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mScrollX:I

    add-int v8, p1, v10

    .line 650
    .local v8, x:I
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mScrollY:I

    add-int v9, p2, v10

    .line 651
    .local v9, y:I
    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 653
    .local v3, count:I
    const/4 v4, 0x0

    .line 654
    .local v4, found:Z
    add-int/lit8 v6, v3, -0x1

    .local v6, i:I
    :goto_16
    if-ltz v6, :cond_57

    .line 655
    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10, v6}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 656
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 658
    .local v7, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_30

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v10

    if-eqz v10, :cond_74

    :cond_30
    iget-boolean v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v10, :cond_74

    .line 660
    invoke-virtual {v2, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 665
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    iget v11, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 667
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_74

    .line 668
    iput-object v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 669
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 670
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 671
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 672
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 673
    const/4 v4, 0x1

    .line 679
    .end local v2           #child:Landroid/view/View;
    .end local v7           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_57
    iput-boolean v4, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 681
    if-nez v4, :cond_70

    .line 682
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 683
    .local v1, cellXY:[I
    invoke-virtual {p0, v8, v9, v1}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 685
    const/4 v10, 0x0

    iput-object v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 686
    const/4 v10, 0x0

    aget v10, v1, v10

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 687
    aget v10, v1, v12

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 688
    iput v12, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 689
    iput v12, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 691
    .end local v1           #cellXY:[I
    :cond_70
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 692
    return-void

    .line 654
    .restart local v2       #child:Landroid/view/View;
    .restart local v7       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_74
    add-int/lit8 v6, v6, -0x1

    goto :goto_16
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 530
    const/4 v0, 0x0

    return v0
.end method

.method public showFolderAccept(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)V
    .registers 3
    .parameter "fra"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    return-void
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/graphics/Point;Landroid/graphics/Rect;)V
    .registers 26
    .parameter "v"
    .parameter "dragOutline"
    .parameter "originX"
    .parameter "originY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "dragOffset"
    .parameter "dragRegion"

    .prologue
    .line 1056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v3, 0x0

    aget v12, v2, v3

    .line 1057
    .local v12, oldDragCellX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v3, 0x1

    aget v13, v2, v3

    .line 1058
    .local v13, oldDragCellY:I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIILandroid/view/View;[I)[I

    move-result-object v11

    .line 1059
    .local v11, nearest:[I
    if-eqz p1, :cond_4b

    if-nez p7, :cond_4b

    .line 1060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v4, v4, p4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 1065
    :goto_3d
    if-nez p2, :cond_57

    if-nez p1, :cond_57

    .line 1066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4a

    .line 1067
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 1123
    :cond_4a
    :goto_4a
    return-void

    .line 1062
    :cond_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_3d

    .line 1072
    :cond_57
    if-eqz v11, :cond_f0

    const/4 v2, 0x0

    aget v2, v11, v2

    if-ne v2, v12, :cond_63

    const/4 v2, 0x1

    aget v2, v11, v2

    if-eq v2, v13, :cond_f0

    .line 1074
    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    move-object/from16 v16, v0

    .line 1075
    .local v16, topLeft:[I
    const/4 v2, 0x0

    aget v2, v11, v2

    const/4 v3, 0x1

    aget v3, v11, v3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 1077
    const/4 v2, 0x0

    aget v9, v16, v2

    .line 1078
    .local v9, left:I
    const/4 v2, 0x1

    aget v15, v16, v2

    .line 1080
    .local v15, top:I
    if-eqz p1, :cond_fb

    if-nez p7, :cond_fb

    .line 1083
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1084
    .local v10, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v2

    .line 1085
    iget v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v15, v2

    .line 1090
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v15, v2

    .line 1092
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int v2, v2, p5

    add-int/lit8 v3, p5, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v9, v2

    .line 1110
    .end local v10           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_ae
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1111
    .local v14, oldIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aget-object v2, v2, v14

    invoke-virtual {v2}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1112
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    array-length v3, v3

    rem-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v9, v15}, Landroid/graphics/Point;->set(II)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v2, v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    .line 1120
    .end local v9           #left:I
    .end local v14           #oldIndex:I
    .end local v15           #top:I
    .end local v16           #topLeft:[I
    :cond_f0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4a

    .line 1121
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    goto/16 :goto_4a

    .line 1095
    .restart local v9       #left:I
    .restart local v15       #top:I
    .restart local v16       #topLeft:[I
    :cond_fb
    if-eqz p7, :cond_120

    if-eqz p8, :cond_120

    .line 1098
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int v3, v3, p5

    add-int/lit8 v4, p5, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v9, v2

    .line 1100
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v15, v2

    goto :goto_ae

    .line 1103
    :cond_120
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int v2, v2, p5

    add-int/lit8 v3, p5, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v9, v2

    .line 1105
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int v2, v2, p6

    add-int/lit8 v3, p6, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v15, v2

    goto/16 :goto_ae
.end method
