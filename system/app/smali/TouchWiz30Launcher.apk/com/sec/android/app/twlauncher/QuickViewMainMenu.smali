.class public Lcom/sec/android/app/twlauncher/QuickViewMainMenu;
.super Lcom/sec/android/app/twlauncher/QuickView;
.source "QuickViewMainMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;
    }
.end annotation


# instance fields
.field private mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

.field private mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

.field private mChildGapH:I

.field private mChildGapV:I

.field private mChildLeft:I

.field private mChildTop:I

.field private mIsDBUpdate:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMaxDeltaY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOrientation:I

.field private final mPanelSizeLong:I

.field private final mPanelSizeLong2:I

.field private final mPanelSizeShort:I

.field private mPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

.field private mScrollState:I

.field private mScrollTop:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mSurfaceBg2:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mSurfacePress:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mTmpLocation:[I

.field private mTouchSlop:I

.field private mUseFullScreenInLandScapeMode:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    .line 78
    new-instance v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;-><init>(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    .line 88
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    .line 92
    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    .line 94
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mUseFullScreenInLandScapeMode:Z

    .line 108
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mIsDBUpdate:Z

    .line 666
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    .line 140
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeShort:I

    .line 142
    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeLong:I

    .line 143
    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeLong2:I

    .line 145
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->init()V

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)Landroid/widget/Scroller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    return p1
.end method

.method private drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;ZF)Z
    .registers 31
    .parameter "canvas"
    .parameter "view"
    .parameter "isAnimating"
    .parameter "current"

    .prologue
    .line 1042
    const/16 v22, 0x0

    .line 1045
    .local v22, ret:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    move/from16 v20, v0

    .line 1046
    .local v20, pTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getBottom()I

    move-result v4

    add-int v19, v20, v4

    .line 1048
    .local v19, pBottom:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    move/from16 v0, v19

    if-gt v4, v0, :cond_1e

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v4

    move/from16 v0, v20

    if-ge v4, v0, :cond_21

    .line 1050
    :cond_1e
    const/16 v22, 0x0

    .line 1107
    .end local v22           #ret:Z
    :goto_20
    return v22

    .line 1053
    .restart local v22       #ret:Z
    :cond_21
    const/high16 v23, 0x3f80

    .line 1054
    .local v23, scaleFactor:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v0, v4

    move/from16 v24, v0

    .line 1055
    .local v24, viewXCenter:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v0, v4

    move/from16 v25, v0

    .line 1057
    .local v25, viewYCenter:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    move-object/from16 v0, p2

    if-ne v4, v0, :cond_4a

    .line 1058
    const v23, 0x3f933333

    .line 1061
    :cond_4a
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1062
    if-eqz p3, :cond_12d

    .line 1064
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    int-to-float v4, v4

    div-float v21, p4, v4

    .line 1065
    .local v21, progress:F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_64

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_127

    :cond_64
    move/from16 v10, v21

    .line 1067
    .local v10, backgroundAlpha:F
    :goto_66
    const/high16 v4, 0x3f80

    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 1068
    const/4 v4, 0x0

    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 1070
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mSurfaceBg2:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    new-instance v8, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-direct {v8, v4, v5, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-direct {v9, v4, v5, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v11}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mSurfaceBg2:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 1083
    .end local v10           #backgroundAlpha:F
    .end local v21           #progress:F
    :goto_aa
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLChildReduced(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;F)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    move-object/from16 v0, p2

    if-ne v4, v0, :cond_122

    .line 1097
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1098
    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1099
    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    .line 1100
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    neg-int v5, v5

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mSurfacePress:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v15, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {v15, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v16, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v7

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v17, -0x4080

    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v18}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mSurfacePress:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 1104
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1106
    :cond_122
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto/16 :goto_20

    .line 1065
    .restart local v21       #progress:F
    :cond_127
    const/high16 v4, 0x3f80

    sub-float v10, v4, v21

    goto/16 :goto_66

    .line 1074
    .end local v21           #progress:F
    :cond_12d
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1075
    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1076
    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    .line 1077
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    neg-int v5, v5

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v15, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {v15, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v16, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v7

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v17, -0x4080

    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v18}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 1081
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto/16 :goto_aa
.end method

.method private drawGLChildReduced(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;F)V
    .registers 16
    .parameter "canvas"
    .parameter "view"
    .parameter "scaleFactor"

    .prologue
    const/4 v11, 0x1

    .line 1116
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 1117
    .local v5, tag:Ljava/lang/Object;
    if-nez v5, :cond_8

    .line 1156
    .end local v5           #tag:Ljava/lang/Object;
    :cond_7
    :goto_7
    return-void

    .line 1120
    .restart local v5       #tag:Ljava/lang/Object;
    :cond_8
    instance-of v8, v5, Ljava/lang/Integer;

    if-eqz v8, :cond_7

    .line 1123
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    if-eqz v8, :cond_7

    .line 1126
    check-cast v5, Ljava/lang/Integer;

    .end local v5           #tag:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1127
    .local v4, screen:I
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1130
    .local v0, child:Landroid/view/View;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1131
    if-eqz v0, :cond_7

    .line 1134
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1138
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v3, v8, v9

    .line 1140
    .local v3, scaleV:F
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v2, v8, v9

    .line 1142
    .local v2, scaleH:F
    cmpl-float v8, v3, v2

    if-lez v8, :cond_b6

    move v1, v2

    .line 1143
    .local v1, scale:F
    :goto_60
    mul-float/2addr v1, p3

    .line 1145
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v6, v8

    .line 1146
    .local v6, viewXCenter:F
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v7, v8

    .line 1147
    .local v7, viewYCenter:F
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v8, v6

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v9, v7

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1149
    invoke-virtual {p1, v1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    .line 1150
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1151
    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0, p1, v11, v11}, Lcom/sec/android/app/twlauncher/AppMenu;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;ZZ)Z

    .line 1153
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto/16 :goto_7

    .end local v1           #scale:F
    .end local v6           #viewXCenter:F
    .end local v7           #viewYCenter:F
    .restart local v0       #child:Landroid/view/View;
    :cond_b6
    move v1, v3

    .line 1142
    goto :goto_60
.end method

.method private drop(II)V
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 652
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 653
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 655
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v0

    .line 656
    .local v0, dropedIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 657
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->swapScreen(I)V

    .line 664
    :goto_1f
    return-void

    .line 662
    :cond_20
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->swapScreen(I)V

    goto :goto_1f
.end method

.method private endDrag()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 643
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 644
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    .line 645
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    .line 646
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    .line 647
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    .line 648
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    .line 649
    return-void
.end method

.method private fling(I)V
    .registers 11
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x0

    .line 831
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v0

    if-lez v0, :cond_19

    .line 833
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 836
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    .line 838
    :cond_19
    return-void
.end method

.method private getTouchedIndex(II)I
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, -0x1

    .line 531
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-nez v3, :cond_7

    move v1, v2

    .line 541
    :goto_6
    return v1

    .line 533
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v0, v3

    .line 534
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_27

    .line 535
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    if-nez v3, :cond_16

    .line 534
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 537
    :cond_16
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    add-int/2addr v4, p1

    iget v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    add-int/2addr v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_6

    :cond_27
    move v1, v2

    .line 541
    goto :goto_6
.end method

.method private isAvailableRect(Landroid/graphics/Rect;)Z
    .registers 5
    .parameter "rect"

    .prologue
    .line 822
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_26

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_26

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_26

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_28

    .line 824
    :cond_26
    const/4 v0, 0x0

    .line 826
    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x1

    goto :goto_27
.end method

.method private makeScreen(I)Landroid/view/View;
    .registers 7
    .parameter "index"

    .prologue
    .line 617
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 618
    .local v0, v:Landroid/view/View;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 619
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3b

    .line 620
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeShort:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeLong:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 621
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 628
    :cond_34
    :goto_34
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 629
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    return-object v0

    .line 623
    :cond_3b
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_34

    .line 624
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeLong2:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeShort:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 625
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_34
.end method

.method private onSwap(I)V
    .registers 6
    .parameter "dropedIndex"

    .prologue
    .line 702
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    .line 703
    .local v0, menumanager:Lcom/sec/android/app/twlauncher/MenuManager;
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 704
    .local v1, v:Landroid/view/View;
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v2, p1, v3}, Lcom/sec/android/app/twlauncher/Utilities;->zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V

    .line 705
    iput p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    .line 706
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->updateTag()V

    .line 707
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->updateAppInfo()V

    .line 708
    return-void
.end method

.method private savemenupage()V
    .registers 3

    .prologue
    .line 841
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    .line 843
    .local v0, menumanager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->updateAppInfo()V

    .line 844
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->startUpdateDB()V

    .line 845
    return-void
.end method

.method private scroll(II)V
    .registers 7
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v3, 0x0

    .line 506
    if-gez p2, :cond_1b

    .line 507
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    if-lez v1, :cond_17

    .line 508
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    add-int/2addr v1, p2

    if-gez v1, :cond_13

    .line 509
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->smoothScrollBy(II)V

    .line 528
    :cond_12
    :goto_12
    return-void

    .line 511
    :cond_13
    invoke-virtual {p0, v3, p2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->smoothScrollBy(II)V

    goto :goto_12

    .line 514
    :cond_17
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    goto :goto_12

    .line 516
    :cond_1b
    if-lez p2, :cond_12

    .line 517
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    sub-int v0, v1, v2

    .line 518
    .local v0, availableToScroll:I
    if-lez v0, :cond_2f

    .line 519
    if-le v0, p2, :cond_2b

    .line 520
    invoke-virtual {p0, v3, p2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->smoothScrollBy(II)V

    goto :goto_12

    .line 522
    :cond_2b
    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->smoothScrollBy(II)V

    goto :goto_12

    .line 525
    :cond_2f
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    goto :goto_12
.end method

.method private setCloseEndRect(I)V
    .registers 24
    .parameter "index"

    .prologue
    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v2

    .line 767
    .local v2, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getLocationOnScreen([I)V

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v12, v17, v18

    .line 771
    .local v12, myScreenPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 773
    .local v6, menuScreen:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 774
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 775
    .local v11, menuScreenWidth:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 776
    .local v9, menuScreenHeight:I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 777
    .local v7, menuScreenClientPosX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    move/from16 v17, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v18

    add-int v8, v17, v18

    .line 778
    .local v8, menuScreenClientPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/MenuManager;->getPaddingRight()I

    move-result v3

    .line 780
    .local v3, horizontalOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    .line 781
    .local v5, menu:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x105000a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v10, v17, v18

    .line 786
    .local v10, menuScreenPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v14, v0, Landroid/graphics/Rect;->left:I

    .line 787
    .local v14, panelPaddingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Landroid/graphics/Rect;->right:I

    .line 788
    .local v15, panelPaddingRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 789
    .local v16, panelPaddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    .line 791
    .local v13, panelPaddingBottom:I
    if-eqz v2, :cond_19e

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v2, :cond_f1

    .line 794
    :cond_d4
    new-array v0, v2, [Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    .line 795
    const/4 v4, 0x0

    .local v4, i:I
    :goto_df
    if-ge v4, v2, :cond_f1

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    aput-object v18, v17, v4

    .line 795
    add-int/lit8 v4, v4, 0x1

    goto :goto_df

    .line 800
    .end local v4           #i:I
    :cond_f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    sub-int v18, v7, v14

    sub-int v19, v8, v16

    add-int v20, v7, v11

    add-int v20, v20, v15

    add-int v21, v8, v9

    add-int v21, v21, v13

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Rect;->set(IIII)V

    .line 803
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mUseFullScreenInLandScapeMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12d

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    const/16 v18, 0x0

    sub-int v19, v10, v12

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Rect;->offset(II)V

    .line 808
    :cond_12d
    add-int/lit8 v4, p1, -0x1

    .restart local v4       #i:I
    :goto_12f
    if-ltz v4, :cond_167

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    add-int/lit8 v19, v4, 0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    aget-object v18, v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Rect;->offset(II)V

    .line 808
    add-int/lit8 v4, v4, -0x1

    goto :goto_12f

    .line 813
    :cond_167
    add-int/lit8 v4, p1, 0x1

    :goto_169
    if-ge v4, v2, :cond_19e

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    add-int/lit8 v19, v4, -0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    aget-object v18, v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    add-int v18, v18, v3

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Rect;->offset(II)V

    .line 813
    add-int/lit8 v4, v4, 0x1

    goto :goto_169

    .line 819
    .end local v4           #i:I
    :cond_19e
    return-void
.end method

.method private setOpenStartRect(I)V
    .registers 24
    .parameter "index"

    .prologue
    .line 711
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v2

    .line 713
    .local v2, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getLocationOnScreen([I)V

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v12, v17, v18

    .line 717
    .local v12, myScreenPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 719
    .local v6, menuScreen:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 720
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 721
    .local v11, menuscreenWidth:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 722
    .local v10, menuscreenHeight:I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 723
    .local v8, menuscreenClientPosX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    move/from16 v17, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v18

    add-int v9, v17, v18

    .line 725
    .local v9, menuscreenClientPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    .line 726
    .local v5, menu:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x105000a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v7, v17, v18

    .line 731
    .local v7, menuScreenPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v14, v0, Landroid/graphics/Rect;->left:I

    .line 732
    .local v14, panelPaddingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Landroid/graphics/Rect;->right:I

    .line 733
    .local v15, panelPaddingRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 734
    .local v16, panelPaddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    .line 735
    .local v13, panelPaddingBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/MenuManager;->getPaddingRight()I

    move-result v3

    .line 737
    .local v3, horizontalOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v2, :cond_ef

    .line 738
    :cond_d2
    new-array v0, v2, [Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    .line 739
    const/4 v4, 0x0

    .local v4, i:I
    :goto_dd
    if-ge v4, v2, :cond_ef

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    aput-object v18, v17, v4

    .line 739
    add-int/lit8 v4, v4, 0x1

    goto :goto_dd

    .line 744
    .end local v4           #i:I
    :cond_ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    sub-int v18, v8, v14

    sub-int v19, v9, v16

    add-int v20, v8, v11

    add-int v20, v20, v15

    add-int v21, v9, v10

    add-int v21, v21, v13

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Rect;->set(IIII)V

    .line 748
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mUseFullScreenInLandScapeMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12b

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    const/16 v18, 0x0

    sub-int v19, v7, v12

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Rect;->offset(II)V

    .line 753
    :cond_12b
    add-int/lit8 v4, p1, -0x1

    .restart local v4       #i:I
    :goto_12d
    if-ltz v4, :cond_165

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    add-int/lit8 v19, v4, 0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    aget-object v18, v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Rect;->offset(II)V

    .line 753
    add-int/lit8 v4, v4, -0x1

    goto :goto_12d

    .line 758
    :cond_165
    add-int/lit8 v4, p1, 0x1

    :goto_167
    if-ge v4, v2, :cond_19c

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    add-int/lit8 v19, v4, -0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    aget-object v18, v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    add-int v18, v18, v3

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Rect;->offset(II)V

    .line 758
    add-int/lit8 v4, v4, 0x1

    goto :goto_167

    .line 762
    :cond_19c
    return-void
.end method

.method private startDrag(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 634
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 635
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    .line 636
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    .line 637
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    .line 638
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    .line 639
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    .line 640
    return-void
.end method

.method private swapScreen(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 697
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/Utilities;->zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V

    .line 698
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->onSwap(I)V

    .line 699
    return-void
.end method

.method private updateAppInfo()V
    .registers 8

    .prologue
    .line 677
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v4

    .line 678
    .local v4, menumanager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, page:I
    :goto_c
    if-ltz v5, :cond_3d

    .line 679
    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 680
    .local v3, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, i:I
    :goto_1a
    if-ltz v2, :cond_3a

    .line 681
    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 682
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-nez v6, :cond_2b

    .line 680
    :cond_28
    :goto_28
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 685
    :cond_2b
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 686
    .local v0, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-eqz v0, :cond_28

    .line 690
    invoke-virtual {v0, v5, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    .line 691
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    goto :goto_28

    .line 678
    .end local v0           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v1           #child:Landroid/view/View;
    :cond_3a
    add-int/lit8 v5, v5, -0x1

    goto :goto_c

    .line 694
    .end local v2           #i:I
    .end local v3           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_3d
    return-void
.end method

.method private updateTag()V
    .registers 5

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v1

    .line 670
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_15

    .line 671
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 672
    .local v0, child:Landroid/view/View;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 670
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 674
    .end local v0           #child:Landroid/view/View;
    :cond_15
    return-void
.end method


# virtual methods
.method cancelDrag()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 547
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v0, :cond_1d

    .line 548
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->removeView(Landroid/view/View;)V

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->addView(Landroid/view/View;I)V

    .line 551
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 553
    :cond_1d
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->updateTag()V

    .line 555
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    .line 556
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    .line 557
    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 558
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    .line 559
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    .line 560
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    .line 561
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    .line 562
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    .line 563
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    .line 564
    return-void
.end method

.method close()V
    .registers 2

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->savemenupage()V

    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mEnabledChildAnimation:Z

    .line 480
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setVisibility(I)V

    .line 481
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    .line 482
    return-void
.end method

.method public computeScroll()V
    .registers 13

    .prologue
    .line 849
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2e

    .line 850
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreenIndex()I

    move-result v2

    .line 851
    .local v2, index:I
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v2

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollTop:I

    .line 853
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    if-nez v8, :cond_2e

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollTop:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildTop:I

    if-le v8, v9, :cond_2e

    .line 854
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollTop:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    .line 858
    .end local v2           #index:I
    :cond_2e
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_83

    .line 859
    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    .line 860
    .local v3, oldX:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    .line 861
    .local v4, oldY:I
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .line 862
    .local v6, x:I
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 864
    .local v7, y:I
    iput v6, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    .line 865
    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    .line 867
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    if-ne v3, v8, :cond_52

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    if-eq v4, v8, :cond_59

    .line 868
    :cond_52
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    invoke-virtual {p0, v8, v9, v3, v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->onScrollChanged(IIII)V

    .line 871
    :cond_59
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_80

    .line 872
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    sub-int v1, v8, v4

    .line 873
    .local v1, deltaY:I
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    .line 874
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_80

    .line 875
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    .line 876
    .local v5, r:Landroid/graphics/Rect;
    invoke-virtual {v0, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 877
    iget v8, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v1

    iput v8, v5, Landroid/graphics/Rect;->top:I

    .line 878
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v1

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 880
    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v5, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->right:I

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 884
    .end local v0           #child:Landroid/view/View;
    .end local v1           #deltaY:I
    .end local v5           #r:Landroid/graphics/Rect;
    :cond_80
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    .line 886
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v6           #x:I
    .end local v7           #y:I
    :cond_83
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 14
    .parameter "canvas"

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v1

    .line 933
    .local v1, count:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getWidth()I

    move-result v6

    .line 934
    .local v6, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getHeight()I

    move-result v3

    .line 936
    .local v3, height:I
    if-eqz v6, :cond_10

    if-nez v3, :cond_12

    .line 937
    :cond_10
    const/4 v7, 0x0

    .line 1037
    :goto_11
    return v7

    .line 938
    :cond_12
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 939
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3d

    .line 943
    const/4 v4, 0x0

    .local v4, i:I
    :goto_22
    if-ge v4, v1, :cond_34

    .line 944
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 947
    .local v0, child:Landroid/view/View;
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    if-eq v0, v7, :cond_31

    .line 948
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, p1, v0, v7, v8}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;ZF)Z

    .line 943
    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 951
    .end local v0           #child:Landroid/view/View;
    :cond_34
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;ZF)Z

    .line 952
    const/4 v7, 0x0

    goto :goto_11

    .line 954
    .end local v4           #i:I
    :cond_3d
    const/4 v7, 0x1

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    if-ne v7, v8, :cond_93

    .line 955
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationStartTime:J

    .line 956
    const/4 v7, 0x2

    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    .line 957
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreenIndex()I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    .line 958
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    invoke-direct {p0, v7}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setOpenStartRect(I)V

    .line 959
    new-array v7, v1, [Landroid/graphics/Rect;

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    .line 960
    new-array v7, v1, [Landroid/graphics/Rect;

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 961
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_65
    if-ge v4, v1, :cond_93

    .line 962
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v7, v4

    .line 963
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 964
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    if-ne v4, v7, :cond_87

    .line 965
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollTop:I

    .line 967
    :cond_87
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v7, v4

    .line 961
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 970
    .end local v4           #i:I
    :cond_93
    const/4 v7, 0x3

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    if-ne v7, v8, :cond_d5

    .line 971
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationStartTime:J

    .line 972
    const/4 v7, 0x4

    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    .line 973
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    .line 974
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    invoke-direct {p0, v7}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setCloseEndRect(I)V

    .line 975
    new-array v7, v1, [Landroid/graphics/Rect;

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    .line 976
    new-array v7, v1, [Landroid/graphics/Rect;

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 977
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_b3
    if-ge v4, v1, :cond_d5

    .line 978
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v7, v4

    .line 979
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 980
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v7, v4

    .line 977
    add-int/lit8 v4, v4, 0x1

    goto :goto_b3

    .line 983
    .end local v4           #i:I
    :cond_d5
    const/4 v7, 0x2

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    if-eq v7, v8, :cond_df

    const/4 v7, 0x4

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    if-ne v7, v8, :cond_1c7

    .line 985
    :cond_df
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationStartTime:J

    sub-long/2addr v7, v9

    long-to-float v2, v7

    .line 986
    .local v2, current:F
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    int-to-float v7, v7

    cmpl-float v7, v2, v7

    if-ltz v7, :cond_103

    .line 987
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    int-to-float v2, v7

    .line 988
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_fb

    .line 989
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewMainMenu()V

    .line 991
    :cond_fb
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_15e

    const/4 v7, 0x7

    :goto_101
    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    .line 995
    :cond_103
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 996
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    int-to-float v7, v7

    div-float v5, v2, v7

    .line 997
    .local v5, val:F
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_115

    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v8, 0x7

    if-ne v7, v8, :cond_119

    .line 999
    :cond_115
    const/high16 v7, 0x3f80

    sub-float v5, v7, v5

    .line 1003
    :cond_119
    const/high16 v7, 0x3f00

    mul-float/2addr v5, v7

    .line 1004
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, v7, v8, v9, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 1005
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getLeft()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getRight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p1, v7, v8, v9, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 1006
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1008
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    int-to-float v11, v11

    div-float v11, v2, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 1010
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    if-nez v7, :cond_161

    .line 1011
    const-string v7, "QuickViewMainMenu"

    const-string v8, "Failed to get current rectangles from animation engine"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_15b
    :goto_15b
    const/4 v7, 0x1

    goto/16 :goto_11

    .line 991
    .end local v5           #val:F
    :cond_15e
    const/16 v7, 0x8

    goto :goto_101

    .line 1013
    .restart local v5       #val:F
    :cond_161
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_162
    if-ge v4, v1, :cond_199

    .line 1014
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    if-ne v4, v7, :cond_16b

    .line 1013
    :cond_168
    :goto_168
    add-int/lit8 v4, v4, 0x1

    goto :goto_162

    .line 1016
    :cond_16b
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1017
    .restart local v0       #child:Landroid/view/View;
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v4

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1019
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    invoke-direct {p0, v7}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isAvailableRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_168

    .line 1020
    const/4 v7, 0x1

    invoke-direct {p0, p1, v0, v7, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;ZF)Z

    goto :goto_168

    .line 1023
    .end local v0           #child:Landroid/view/View;
    :cond_199
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    if-ltz v7, :cond_15b

    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    if-ge v7, v1, :cond_15b

    .line 1024
    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    .line 1025
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1026
    .restart local v0       #child:Landroid/view/View;
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v4

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1028
    const/4 v7, 0x1

    invoke-direct {p0, p1, v0, v7, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;ZF)Z

    goto :goto_15b

    .line 1033
    .end local v0           #child:Landroid/view/View;
    .end local v2           #current:F
    .end local v4           #i:I
    .end local v5           #val:F
    :cond_1c7
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1c8
    if-ge v4, v1, :cond_1d6

    .line 1034
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1035
    .restart local v0       #child:Landroid/view/View;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, p1, v0, v7, v8}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;ZF)Z

    .line 1033
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c8

    .line 1037
    .end local v0           #child:Landroid/view/View;
    :cond_1d6
    const/4 v7, 0x0

    goto/16 :goto_11
.end method

.method protected init()V
    .registers 6

    .prologue
    .line 150
    new-instance v3, Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    invoke-direct {v3}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    .line 151
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 153
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 154
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    .line 155
    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mUseFullScreenInLandScapeMode:Z

    .line 157
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 159
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 160
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchSlop:I

    .line 162
    new-instance v3, Landroid/widget/Scroller;

    invoke-direct {v3, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    .line 164
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMinimumVelocity:I

    .line 165
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaximumVelocity:I

    .line 167
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setClipChildren(Z)V

    .line 168
    return-void
.end method

.method initScreen(I)V
    .registers 10
    .parameter "screenCount"

    .prologue
    const v6, 0x7f0b0035

    const v7, 0x7f020023

    .line 578
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->removeAllViews()V

    .line 580
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setBackgroundResource(I)V

    .line 582
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 584
    .local v3, res:Landroid/content/res/Resources;
    new-array v5, p1, [Lcom/sec/android/app/twlauncher/QuickView$Animate;

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

    .line 586
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildGapV:I

    .line 587
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildGapH:I

    .line 588
    const v5, 0x7f0b0033

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildLeft:I

    .line 589
    const v5, 0x7f0b0034

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildTop:I

    .line 591
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 592
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 594
    .local v4, resources:Landroid/content/res/Resources;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 595
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchSlop:I

    .line 597
    new-instance v5, Landroid/widget/Scroller;

    invoke-direct {v5, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    .line 599
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 600
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 601
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    .line 603
    const v5, 0x7f020024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 605
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6d
    if-ge v2, p1, :cond_7e

    .line 606
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->makeScreen(I)Landroid/view/View;

    .line 607
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

    new-instance v6, Lcom/sec/android/app/twlauncher/QuickView$Animate;

    invoke-direct {v6, p0}, Lcom/sec/android/app/twlauncher/QuickView$Animate;-><init>(Lcom/sec/android/app/twlauncher/QuickView;)V

    aput-object v6, v5, v2

    .line 605
    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    .line 613
    :cond_7e
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getHitRect(Landroid/graphics/Rect;)V

    .line 614
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 462
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 463
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    .line 464
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawCloseAnimation()V

    .line 465
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    .line 467
    :cond_18
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "ev"

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 230
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 231
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 233
    .local v7, y:F
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_19

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/16 v12, 0x8

    if-eq v11, v12, :cond_19

    .line 235
    const/4 v11, 0x1

    .line 321
    :goto_18
    return v11

    .line 239
    :cond_19
    sparse-switch v0, :sswitch_data_132

    .line 321
    :cond_1c
    :goto_1c
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    if-eqz v11, :cond_12f

    const/4 v11, 0x1

    goto :goto_18

    .line 241
    :sswitch_22
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    if-eqz v11, :cond_81

    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    if-eqz v11, :cond_81

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_4f

    .line 244
    const-string v11, "QuickViewMainMenu"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onInterceptTouchEvent ACTION_MOVE multitouch count is less than 2 :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v11, 0x0

    goto :goto_18

    .line 247
    :cond_4f
    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 249
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    sub-float v11, v7, v11

    float-to-int v2, v11

    .line 250
    .local v2, dy:I
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    sub-float v11, v5, v11

    float-to-int v1, v11

    .line 252
    .local v1, dx:I
    mul-int v11, v2, v2

    mul-int v12, v1, v1

    add-int/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMovePinchStart:I

    sub-int v3, v11, v12

    .line 254
    .local v3, pinchDelta:I
    const/16 v11, 0x2710

    if-le v3, v11, :cond_1c

    .line 257
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    .line 258
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    .line 259
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutIndex:I

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    .line 260
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawCloseAnimation()V

    .line 261
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    .line 262
    const/4 v11, 0x1

    goto :goto_18

    .line 267
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v3           #pinchDelta:I
    :cond_81
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    sub-float/2addr v11, v7

    float-to-int v9, v11

    .line 268
    .local v9, yDiff:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchSlop:I

    .line 269
    .local v4, touchSlop:I
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-le v11, v4, :cond_a1

    const/4 v10, 0x1

    .line 270
    .local v10, yMoved:Z
    :goto_8e
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    if-nez v11, :cond_1c

    .line 271
    if-eqz v10, :cond_1c

    .line 272
    const/4 v11, 0x1

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 273
    const/4 v11, 0x0

    invoke-direct {p0, v11, v9}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->scroll(II)V

    .line 274
    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionX:F

    .line 275
    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    goto/16 :goto_1c

    .line 269
    .end local v10           #yMoved:Z
    :cond_a1
    const/4 v10, 0x0

    goto :goto_8e

    .line 282
    .end local v4           #touchSlop:I
    .end local v9           #yDiff:I
    :sswitch_a3
    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionX:F

    .line 283
    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    .line 284
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-nez v11, :cond_b4

    const/4 v11, 0x1

    :goto_b0
    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    goto/16 :goto_1c

    :cond_b4
    const/4 v11, 0x0

    goto :goto_b0

    .line 288
    :sswitch_b6
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    if-eqz v11, :cond_c2

    .line 289
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    .line 290
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    goto/16 :goto_1c

    .line 292
    :cond_c2
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1c

    .line 293
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->endDrag()V

    goto/16 :goto_1c

    .line 298
    :sswitch_cc
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    if-nez v11, :cond_1c

    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    if-nez v11, :cond_1c

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_fa

    .line 301
    const-string v11, "QuickViewMainMenu"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onInterceptTouchEvent ACTION_MOVE multitouch count is less than 2 :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v11, 0x0

    goto/16 :goto_18

    .line 304
    :cond_fa
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    .line 306
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 307
    .local v8, y1:F
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 309
    .local v6, x1:F
    float-to-int v11, v5

    float-to-int v12, v7

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v11

    float-to-int v12, v6

    float-to-int v13, v8

    invoke-direct {p0, v12, v13}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v12

    if-ne v11, v12, :cond_1c

    .line 310
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    .line 311
    sub-float v11, v7, v8

    float-to-int v2, v11

    .line 312
    .restart local v2       #dy:I
    sub-float v11, v5, v6

    float-to-int v1, v11

    .line 313
    .restart local v1       #dx:I
    mul-int v11, v2, v2

    mul-int v12, v1, v1

    add-int/2addr v11, v12

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMovePinchStart:I

    .line 315
    float-to-int v11, v5

    float-to-int v12, v7

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v11

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutIndex:I

    goto/16 :goto_1c

    .line 321
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v6           #x1:F
    .end local v8           #y1:F
    :cond_12f
    const/4 v11, 0x0

    goto/16 :goto_18

    .line 239
    :sswitch_data_132
    .sparse-switch
        0x0 -> :sswitch_a3
        0x1 -> :sswitch_b6
        0x2 -> :sswitch_22
        0x3 -> :sswitch_b6
        0x105 -> :sswitch_cc
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 19
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 172
    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildLeft:I

    .line 173
    .local v4, childLeft:I
    iget v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildTop:I

    .line 175
    .local v5, childTop:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildGapV:I

    .line 176
    .local v2, childGapV:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildGapH:I

    .line 178
    .local v1, childGapH:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v7

    .line 180
    .local v7, count:I
    const/4 v10, 0x1

    if-ge v7, v10, :cond_10

    .line 223
    :cond_f
    return-void

    .line 183
    :cond_10
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v10, :cond_19

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v10, v10

    if-eq v10, v7, :cond_1d

    .line 184
    :cond_19
    new-array v10, v7, [Landroid/graphics/Rect;

    iput-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    .line 187
    :cond_1d
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1e
    if-ge v8, v7, :cond_f

    .line 188
    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, child:Landroid/view/View;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 190
    .local v9, r:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_90

    .line 191
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 192
    .local v6, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 194
    .local v3, childHeight:I
    add-int v10, v4, v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getMeasuredWidth()I

    move-result v11

    if-le v10, v11, :cond_46

    .line 195
    add-int v10, v2, v3

    add-int/2addr v5, v10

    .line 196
    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildLeft:I

    .line 199
    :cond_46
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v8

    if-nez v10, :cond_55

    .line 200
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    aput-object v11, v10, v8

    .line 201
    :cond_55
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v8

    add-int v11, v4, v6

    add-int v12, v5, v3

    invoke-virtual {v10, v4, v5, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 204
    invoke-virtual {v0, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 206
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_93

    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mEnabledChildAnimation:Z

    if-eqz v10, :cond_93

    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_93

    .line 208
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_83

    .line 209
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

    aget-object v10, v10, v8

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v11, v11, v8

    invoke-virtual {v10, v0, v11}, Lcom/sec/android/app/twlauncher/QuickView$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 216
    :cond_83
    :goto_83
    add-int v10, v1, v6

    add-int/2addr v4, v10

    .line 218
    add-int/lit8 v10, v7, -0x3

    if-ne v8, v10, :cond_90

    .line 219
    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildTop:I

    sub-int v10, v5, v10

    iput v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    .line 187
    .end local v3           #childHeight:I
    .end local v6           #childWidth:I
    :cond_90
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    .line 212
    .restart local v3       #childHeight:I
    .restart local v6       #childWidth:I
    :cond_93
    add-int v10, v4, v6

    add-int v11, v5, v3

    invoke-virtual {v0, v4, v5, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_83
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 451
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    if-eqz v0, :cond_6

    .line 458
    :cond_5
    :goto_5
    return v2

    .line 453
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 455
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->startDrag(Landroid/view/View;)V

    .line 456
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->performHapticFeedback(I)Z

    goto :goto_5
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 23
    .parameter "ev"

    .prologue
    .line 326
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 327
    .local v4, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    .line 328
    .local v14, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    .line 332
    .local v15, y:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2b

    .line 334
    const/16 v17, 0x0

    .line 447
    :goto_2a
    return v17

    .line 336
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-nez v17, :cond_3d

    .line 337
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 339
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 341
    packed-switch v4, :pswitch_data_2c0

    .line 447
    :cond_4d
    :goto_4d
    const/16 v17, 0x1

    goto :goto_2a

    .line 343
    :pswitch_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_68

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->abortAnimation()V

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->computeScroll()V

    .line 348
    :cond_68
    const/high16 v17, 0x42a0

    cmpg-float v17, v15, v17

    if-ltz v17, :cond_7d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getHeight()I

    move-result v17

    add-int/lit8 v17, v17, -0x50

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v15, v17

    if-lez v17, :cond_97

    .line 349
    :cond_7d
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x258

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4d

    .line 352
    :cond_97
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    goto :goto_4d

    .line 356
    :pswitch_a0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionX:F

    move/from16 v17, v0

    sub-float v17, v17, v14

    move/from16 v0, v17

    float-to-int v6, v0

    .line 357
    .local v6, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    move/from16 v17, v0

    sub-float v17, v17, v15

    move/from16 v0, v17

    float-to-int v7, v0

    .line 359
    .local v7, deltaY:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchSlop:I

    .line 360
    .local v11, touchSlop:I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    if-le v0, v11, :cond_f7

    const/16 v16, 0x1

    .line 362
    .local v16, yMoved:Z
    :goto_c4
    if-eqz v16, :cond_d6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    move/from16 v17, v0

    if-nez v17, :cond_d6

    .line 363
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 366
    :cond_d6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_fa

    .line 367
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v7}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->scroll(II)V

    .line 368
    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionX:F

    .line 369
    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    goto/16 :goto_4d

    .line 360
    .end local v16           #yMoved:Z
    :cond_f7
    const/16 v16, 0x0

    goto :goto_c4

    .line 370
    .restart local v16       #yMoved:Z
    :cond_fa
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4d

    .line 371
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    .line 372
    .local v5, child:Landroid/view/View;
    if-eqz v5, :cond_15b

    .line 373
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    .line 374
    .local v10, r:Landroid/graphics/Rect;
    invoke-virtual {v5, v10}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 375
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v17, v17, v6

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 376
    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    sub-int v17, v17, v7

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 377
    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    sub-int v17, v17, v6

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 378
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    sub-int v17, v17, v7

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 380
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    .line 383
    .end local v10           #r:Landroid/graphics/Rect;
    :cond_15b
    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionX:F

    .line 384
    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    .line 386
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    .line 387
    .local v12, v:Landroid/view/View;
    float-to-int v0, v14

    move/from16 v17, v0

    float-to-int v0, v15

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v8

    .line 389
    .local v8, index:I
    if-eqz v12, :cond_1aa

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_1aa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v8, v0, :cond_1aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_1aa

    .line 391
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->removeView(Landroid/view/View;)V

    .line 392
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->addView(Landroid/view/View;I)V

    .line 393
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 394
    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    .line 397
    :cond_1aa
    const/high16 v17, 0x42a0

    cmpg-float v17, v15, v17

    if-gez v17, :cond_1de

    .line 398
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    move/from16 v17, v0

    if-nez v17, :cond_4d

    .line 399
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->setDirection(I)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4d

    .line 403
    :cond_1de
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getHeight()I

    move-result v17

    add-int/lit8 v17, v17, -0x50

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v15, v17

    if-lez v17, :cond_4d

    .line 404
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    move/from16 v17, v0

    if-nez v17, :cond_4d

    .line 405
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->setDirection(I)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4d

    .line 414
    .end local v5           #child:Landroid/view/View;
    .end local v6           #deltaX:I
    .end local v7           #deltaY:I
    .end local v8           #index:I
    .end local v11           #touchSlop:I
    .end local v12           #v:Landroid/view/View;
    .end local v16           #yMoved:Z
    :pswitch_21b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2a1

    .line 415
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 419
    .local v13, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/view/VelocityTracker;->computeMonomialCurrentVelocity(IF)V

    .line 420
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getMonomialXVelocity()F

    move-result v17

    move/from16 v0, v17

    float-to-int v9, v0

    .line 423
    .local v9, initialVelocity:I
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_268

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v17

    if-lez v17, :cond_268

    .line 424
    neg-int v0, v9

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->fling(I)V

    .line 427
    :cond_268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-eqz v17, :cond_281

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->recycle()V

    .line 429
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 431
    :cond_281
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 436
    .end local v9           #initialVelocity:I
    .end local v13           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_289
    :goto_289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    move-object/from16 v17, v0

    if-nez v17, :cond_299

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_29c

    .line 437
    :cond_299
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    .line 440
    :cond_29c
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->endDrag()V

    goto/16 :goto_4d

    .line 432
    :cond_2a1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_289

    .line 433
    float-to-int v0, v14

    move/from16 v17, v0

    float-to-int v0, v15

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drop(II)V

    goto :goto_289

    .line 341
    nop

    :pswitch_data_2c0
    .packed-switch 0x0
        :pswitch_50
        :pswitch_21b
        :pswitch_a0
        :pswitch_21b
    .end packed-switch
.end method

.method open()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mEnabledChildAnimation:Z

    .line 471
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreenIndex()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    .line 473
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    .line 474
    return-void
.end method

.method public final smoothScrollBy(II)V
    .registers 9
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 895
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastScroll:J

    sub-long v0, v2, v4

    .line 896
    .local v0, duration:J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_21

    .line 897
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 899
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    .line 906
    :goto_1a
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastScroll:J

    .line 907
    return-void

    .line 901
    :cond_21
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 902
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 904
    :cond_2e
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->scrollBy(II)V

    goto :goto_1a
.end method
