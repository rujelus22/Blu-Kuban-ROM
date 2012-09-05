.class public Lcom/sec/android/app/twlauncher/QuickViewWorkspace;
.super Lcom/sec/android/app/twlauncher/QuickView;
.source "QuickViewWorkspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final ADD_BTN_TAG:Ljava/lang/Object;

.field private static final kRowByColumnLayout:[[I


# instance fields
.field private mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

.field private mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

.field private mDefaultHomePos:I

.field private mDefaultScreen:I

.field private mDragShader:Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

.field private mDragState:I

.field private mHorizontalGap:I

.field private mIsDefaultScreen:Z

.field private mIsEditMode:Z

.field private mIsHomeIsLastScreen:Z

.field private mIsRemoved:Z

.field private mIsSwapped:Z

.field private mIsSwappedPosition:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMenuSethome:Landroid/view/View;

.field private mOrientation:I

.field private mPressBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mSetDefaultHomeIcon:Landroid/graphics/drawable/Drawable;

.field private mSetDefaultIconBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mSetDefaultScreen:I

.field private mSurfaceAddBtn:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mSurfaceBg2:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mTempDefaultScreen:I

.field private mTempNextDefaultScreen:I

.field private mTempRects:[Landroid/graphics/Rect;

.field private mTmpLocation:[I

.field private mTmpLocation2:[I

.field private mTouchSlop:I

.field private mUseFullScreenInLandScapeMode:Z

.field private mVerticalGap:I

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWorkspaceScreenCountOnOpen:I

.field private mWorkspaceScreenIndexOnOpen:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v2, [I

    aput v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v2, [I

    aput v4, v1, v5

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_56

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_5e

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_66

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_70

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_7a

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_84

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8e

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->kRowByColumnLayout:[[I

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    return-void

    .line 55
    nop

    :array_56
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_5e
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_66
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_70
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_7a
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_84
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_8e
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    new-array v0, v0, [Lcom/sec/android/app/twlauncher/QuickView$Animate;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

    .line 87
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 95
    new-instance v0, Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragShader:Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

    .line 97
    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    .line 99
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    .line 114
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultHomePos:I

    .line 119
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    .line 120
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsRemoved:Z

    .line 121
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSwappedPosition:Z

    .line 122
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSwapped:Z

    .line 123
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempDefaultScreen:I

    .line 126
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultScreen:I

    .line 127
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsDefaultScreen:Z

    .line 132
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsHomeIsLastScreen:Z

    .line 816
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    .line 818
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    .line 157
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->init()V

    .line 158
    return-void
.end method

.method private addScreen()V
    .registers 7

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 876
    .local v1, count:I
    add-int/lit8 v2, v1, -0x1

    .line 877
    .local v2, index:I
    if-gez v2, :cond_9

    .line 878
    const/4 v2, 0x0

    .line 879
    :cond_9
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 881
    .local v0, add:Landroid/view/View;
    sget v4, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-lt v1, v4, :cond_1a

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v4, v5, :cond_1a

    .line 894
    :goto_19
    return-void

    .line 883
    :cond_1a
    sget v4, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ne v1, v4, :cond_21

    .line 884
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 887
    :cond_21
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeScreen(I)Landroid/view/View;

    move-result-object v3

    .line 888
    .local v3, screen:Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 890
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->onAdd()V

    .line 892
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto :goto_19
.end method

.method private applyDeleteZone()V
    .registers 4

    .prologue
    .line 836
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 837
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 839
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 840
    .local v0, scale:Landroid/graphics/Matrix;
    const/high16 v1, 0x3f80

    .line 841
    .local v1, scaleFactor:F
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 843
    return-void
.end method

.method private drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)Z
    .registers 18
    .parameter
    .parameter

    .prologue
    .line 1449
    const/4 v9, 0x0

    .line 1451
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1452
    const/high16 v1, 0x3f80

    .line 1453
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v12, v2

    .line 1454
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v13, v2

    .line 1455
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    move-object/from16 v0, p2

    if-ne v2, v0, :cond_2d4

    .line 1457
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_49

    .line 1458
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragShader:Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    .line 1459
    const-string v1, "additionalAlpha"

    const/high16 v2, 0x3f80

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;F)V

    .line 1460
    const/high16 v1, 0x3f80

    const v2, 0x3dcccccd

    const v3, 0x3dcccccd

    const v4, 0x3f19999a

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 1462
    :cond_49
    const v1, 0x3f933333

    move v10, v1

    .line 1465
    :goto_4d
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_57

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_22b

    .line 1468
    :cond_57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationStartTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 1470
    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1471
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_225

    .line 1473
    :goto_69
    const/high16 v2, 0x3f80

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1474
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 1475
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceBg2:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-direct {v5, v1, v2, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-direct {v6, v1, v2, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceBg2:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move v11, v9

    .line 1491
    :goto_a7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .line 1493
    sget-object v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v9, v1, :cond_28e

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    if-eqz v1, :cond_28e

    instance-of v1, v9, Ljava/lang/Integer;

    if-eqz v1, :cond_28e

    move-object v1, v9

    .line 1494
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1498
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1500
    if-eqz v1, :cond_173

    .line 1501
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1503
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v2, v3

    .line 1505
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    .line 1507
    cmpl-float v5, v3, v2

    if-lez v5, :cond_28b

    .line 1509
    :goto_fc
    mul-float/2addr v2, v10

    .line 1510
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1512
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    .line 1513
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1514
    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;ZZ)Z

    .line 1515
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1518
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    if-ne v1, v4, :cond_173

    .line 1521
    const/16 v1, 0x26

    const/16 v2, 0x26

    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getButtonBounds(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v6

    .line 1522
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultHomeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1523
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultHomeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1524
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultIconBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultHomeIcon:Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v7, -0x4080

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultIconBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 1540
    :cond_173
    :goto_173
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    move-object/from16 v0, p2

    if-ne v1, v0, :cond_1c1

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1c1

    .line 1541
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1543
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1544
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    .line 1545
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1546
    const/high16 v1, 0x3f00

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 1547
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-eqz v1, :cond_1be

    .line 1548
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v6, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 1550
    :cond_1be
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1553
    :cond_1c1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1555
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsEditMode:Z

    if-eqz v1, :cond_224

    .line 1557
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultScreen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_224

    sget-object v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v9, v1, :cond_224

    instance-of v1, v9, Ljava/lang/Integer;

    if-eqz v1, :cond_224

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultScreen:I

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_224

    .line 1561
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x11

    const/16 v3, 0xab

    const/16 v4, 0xeb

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1562
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {v5, v1, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-direct {v6, v1, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v7, -0x4080

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 1569
    :cond_224
    return v11

    .line 1471
    :cond_225
    const/high16 v2, 0x3f80

    sub-float v1, v2, v1

    goto/16 :goto_69

    .line 1479
    :cond_22b
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_235

    .line 1480
    const/4 v1, 0x0

    move v11, v1

    goto/16 :goto_a7

    .line 1482
    :cond_235
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1483
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1484
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    .line 1485
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1486
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {v5, v1, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-direct {v6, v1, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v7, -0x4080

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 1489
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    move v11, v9

    goto/16 :goto_a7

    :cond_28b
    move v2, v3

    .line 1507
    goto/16 :goto_fc

    .line 1532
    :cond_28e
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1533
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1534
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    add-int v7, v3, v4

    .line 1535
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    add-int v8, v3, v4

    .line 1536
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceAddBtn:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v14, 0x0

    invoke-direct {v5, v6, v14, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    add-int/2addr v1, v7

    add-int/2addr v2, v8

    invoke-direct {v6, v7, v8, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v7, -0x4080

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceAddBtn:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    goto/16 :goto_173

    :cond_2d4
    move v10, v1

    goto/16 :goto_4d
.end method

.method private drop(IIZ)V
    .registers 9
    .parameter "x"
    .parameter "y"
    .parameter "defaultScreen"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 761
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 762
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 765
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 768
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isDeleteZone(II)Z

    move-result v1

    if-eqz v1, :cond_63

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    if-ne v1, v4, :cond_63

    if-nez p3, :cond_63

    .line 772
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsRemoved:Z

    .line 774
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 775
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 776
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->swapScreen(I)V

    .line 778
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    .line 779
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    .line 781
    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    .line 784
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isIncludeItem()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 786
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsDefaultScreen:Z

    if-ne v1, v4, :cond_4f

    .line 787
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->showDeleteHomeScreen()V

    .line 814
    :goto_4e
    return-void

    .line 789
    :cond_4f
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->showDeleteWorkScreen()V

    goto :goto_4e

    .line 795
    :cond_55
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsDefaultScreen:Z

    if-ne v1, v4, :cond_5f

    .line 796
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->showDeleteHomeScreen()V

    goto :goto_4e

    .line 798
    :cond_5f
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeScreen()V

    goto :goto_4e

    .line 805
    :cond_63
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsDefaultScreen:Z

    .line 807
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v0

    .line 808
    .local v0, dropedIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_7c

    .line 810
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->swapScreen(I)V

    goto :goto_4e

    .line 812
    :cond_7c
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->swapScreen(I)V

    goto :goto_4e
.end method

.method private enableWorkspaceScreensCache()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 520
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v3

    .line 521
    .local v3, ws:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 523
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    if-ge v2, v1, :cond_1b

    .line 524
    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 525
    .local v0, celllayout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 526
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 523
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 528
    .end local v0           #celllayout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_1b
    return-void
.end method

.method private endDrag()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 751
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 752
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 753
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    .line 754
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    .line 755
    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    .line 756
    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    .line 757
    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    .line 758
    return-void
.end method

.method private getTouchedIndex(II)I
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, -0x1

    .line 603
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-nez v3, :cond_7

    move v1, v2

    .line 613
    :goto_6
    return v1

    .line 605
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v0, v3

    .line 606
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_27

    .line 607
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    if-nez v3, :cond_16

    .line 606
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 609
    :cond_16
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollX:I

    add-int/2addr v4, p1

    iget v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollY:I

    add-int/2addr v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_6

    :cond_27
    move v1, v2

    .line 613
    goto :goto_6
.end method

.method private getViewLayout(III)V
    .registers 27
    .parameter "count"
    .parameter "childWidth"
    .parameter "childHeight"

    .prologue
    .line 1291
    if-lez p1, :cond_15f

    sget-object v19, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->kRowByColumnLayout:[[I

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_15f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    if-eqz v19, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p1

    if-eq v0, v1, :cond_15f

    .line 1294
    :cond_28
    move/from16 v0, p1

    new-array v0, v0, [Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    .line 1295
    sget-object v19, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->kRowByColumnLayout:[[I

    add-int/lit8 v20, p1, -0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    array-length v13, v0

    .line 1296
    .local v13, rows:I
    const/4 v8, 0x0

    .line 1297
    .local v8, maxCols:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3f
    if-ge v7, v13, :cond_4f

    .line 1298
    sget-object v19, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->kRowByColumnLayout:[[I

    add-int/lit8 v20, p1, -0x1

    aget-object v19, v19, v20

    aget v6, v19, v7

    .line 1299
    .local v6, colsOnThisRow:I
    if-le v6, v8, :cond_4c

    .line 1300
    move v8, v6

    .line 1297
    :cond_4c
    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    .line 1305
    .end local v6           #colsOnThisRow:I
    :cond_4f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getPaddingLeft()I

    move-result v20

    sub-int v10, v19, v20

    .line 1306
    .local v10, ourWidth:I
    add-int/lit8 v19, v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mHorizontalGap:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v18, v10, v19

    .line 1308
    .local v18, usableWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getHeight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getPaddingTop()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getPaddingBottom()I

    move-result v20

    sub-int v9, v19, v20

    .line 1309
    .local v9, ourHeight:I
    add-int/lit8 v19, v13, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mVerticalGap:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v17, v9, v19

    .line 1311
    .local v17, usableHeight:I
    mul-int v15, p3, v13

    .line 1312
    .local v15, totChildHeight:I
    mul-int v16, p2, v8

    .line 1313
    .local v16, totChildWidth:I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v15

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 1314
    .local v14, scale:F
    const/high16 v19, 0x3f80

    cmpl-float v19, v14, v19

    if-lez v19, :cond_ad

    .line 1315
    const/high16 v14, 0x3f80

    .line 1316
    :cond_ad
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 p2, v0

    .line 1317
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 p3, v0

    .line 1320
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mVerticalGap:I

    move/from16 v19, v0

    add-int v19, v19, p3

    mul-int v19, v19, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mVerticalGap:I

    move/from16 v20, v0

    sub-int v15, v19, v20

    .line 1321
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getPaddingTop()I

    move-result v19

    sub-int v20, v9, v15

    div-int/lit8 v20, v20, 0x2

    add-int v12, v19, v20

    .line 1322
    .local v12, rowTop:I
    const/4 v3, 0x0

    .line 1323
    .local v3, childCount:I
    const/4 v11, 0x0

    .local v11, row:I
    :goto_e3
    if-ge v11, v13, :cond_15f

    .line 1324
    sget-object v19, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->kRowByColumnLayout:[[I

    add-int/lit8 v20, p1, -0x1

    aget-object v19, v19, v20

    aget v5, v19, v11

    .line 1325
    .local v5, cols:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mHorizontalGap:I

    move/from16 v19, v0

    add-int v19, v19, p2

    mul-int v19, v19, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mHorizontalGap:I

    move/from16 v20, v0

    sub-int v16, v19, v20

    .line 1326
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getPaddingLeft()I

    move-result v19

    sub-int v20, v10, v16

    div-int/lit8 v20, v20, 0x2

    add-int v4, v19, v20

    .line 1327
    .local v4, colLeft:I
    const/4 v7, 0x0

    :goto_10a
    if-ge v7, v5, :cond_152

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    aget-object v19, v19, v3

    if-nez v19, :cond_13c

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    new-instance v20, Landroid/graphics/Rect;

    add-int v21, v4, p2

    add-int v22, v12, p3

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v4, v12, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v20, v19, v3

    .line 1332
    :goto_12d
    add-int/lit8 v3, v3, 0x1

    .line 1333
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mHorizontalGap:I

    move/from16 v19, v0

    add-int v19, v19, p2

    add-int v4, v4, v19

    .line 1327
    add-int/lit8 v7, v7, 0x1

    goto :goto_10a

    .line 1331
    :cond_13c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    aget-object v19, v19, v3

    add-int v20, v4, p2

    add-int v21, v12, p3

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_12d

    .line 1335
    :cond_152
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mVerticalGap:I

    move/from16 v19, v0

    add-int v19, v19, p3

    add-int v12, v12, v19

    .line 1323
    add-int/lit8 v11, v11, 0x1

    goto :goto_e3

    .line 1338
    .end local v3           #childCount:I
    .end local v4           #colLeft:I
    .end local v5           #cols:I
    .end local v7           #i:I
    .end local v8           #maxCols:I
    .end local v9           #ourHeight:I
    .end local v10           #ourWidth:I
    .end local v11           #row:I
    .end local v12           #rowTop:I
    .end local v13           #rows:I
    .end local v14           #scale:F
    .end local v15           #totChildHeight:I
    .end local v16           #totChildWidth:I
    .end local v17           #usableHeight:I
    .end local v18           #usableWidth:I
    :cond_15f
    return-void
.end method

.method private isAvailableRect(Landroid/graphics/Rect;)Z
    .registers 4
    .parameter "rect"

    .prologue
    .line 1280
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_20

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_20

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_20

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_22

    .line 1282
    :cond_20
    const/4 v0, 0x0

    .line 1284
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x1

    goto :goto_21
.end method

.method private isDeleteZone(II)Z
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 823
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    .line 824
    .local v0, dz:Lcom/sec/android/app/twlauncher/DeleteZone;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->getDeleteAreaRect(Landroid/graphics/Rect;)V

    .line 828
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->getLocationOnScreen([I)V

    .line 829
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getLocationInWindow([I)V

    .line 830
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 832
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method private isIncludeItem()Z
    .registers 13

    .prologue
    .line 846
    const/4 v4, 0x0

    .line 847
    .local v4, ret:Z
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v7

    .line 849
    .local v7, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    .line 850
    .local v3, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v0

    .line 852
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v0, :cond_28

    .line 853
    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 854
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .local v5, tag:Ljava/lang/Object;
    move-object v2, v5

    .line 856
    check-cast v2, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 858
    .local v2, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget-wide v8, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_29

    .line 859
    const/4 v4, 0x0

    .line 871
    .end local v2           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    .end local v5           #tag:Ljava/lang/Object;
    .end local v6           #view:Landroid/view/View;
    :cond_28
    :goto_28
    return v4

    .line 863
    .restart local v2       #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    .restart local v5       #tag:Ljava/lang/Object;
    .restart local v6       #view:Landroid/view/View;
    :cond_29
    iget-wide v8, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v8, v8, v10

    if-nez v8, :cond_33

    .line 866
    const/4 v4, 0x1

    .line 867
    goto :goto_28

    .line 852
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method

.method private makeAddBtn()Landroid/view/View;
    .registers 3

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeScreen(I)Landroid/view/View;

    move-result-object v0

    .line 723
    .local v0, v:Landroid/view/View;
    sget-object v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 724
    return-object v0
.end method

.method private makeScreen(I)Landroid/view/View;
    .registers 7
    .parameter "index"

    .prologue
    .line 728
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 730
    .local v0, v:Landroid/view/View;
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 731
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 733
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 735
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 736
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    return-object v0
.end method

.method private onAdd()V
    .registers 9

    .prologue
    const/4 v7, -0x1

    .line 960
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 961
    .local v1, count:I
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v3

    .line 963
    .local v3, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03001c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 965
    .local v0, cell:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 966
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 967
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_2b

    .line 968
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 971
    .restart local v2       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2b
    invoke-virtual {v3, v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 973
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 975
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    .line 982
    return-void
.end method

.method private onRemove()V
    .registers 25

    .prologue
    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v19

    .line 987
    .local v19, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v8

    .line 988
    .local v8, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v3

    .line 989
    .local v3, childCount:I
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v11

    .line 990
    .local v11, model:Lcom/sec/android/app/twlauncher/LauncherModel;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsHomeIsLastScreen:Z

    move/from16 v20, v0

    if-eqz v20, :cond_40

    .line 991
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempNextDefaultScreen:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    .line 992
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    move/from16 v20, v0

    sput v20, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    .line 993
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsHomeIsLastScreen:Z

    .line 995
    :cond_40
    const/4 v4, 0x0

    .local v4, i:I
    :goto_41
    if-ge v4, v3, :cond_105

    .line 996
    invoke-virtual {v8, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 997
    .local v17, view:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .line 999
    .local v13, tag:Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/Folder;

    move/from16 v20, v0

    if-eqz v20, :cond_56

    .line 995
    :goto_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    :cond_56
    move-object v6, v13

    .line 1007
    check-cast v6, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1009
    .local v6, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget-wide v0, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_64

    .line 1091
    .end local v6           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    .end local v13           #tag:Ljava/lang/Object;
    .end local v17           #view:Landroid/view/View;
    :goto_63
    return-void

    .line 1012
    .restart local v6       #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    .restart local v13       #tag:Ljava/lang/Object;
    .restart local v17       #view:Landroid/view/View;
    :cond_64
    iget-wide v0, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x64

    cmp-long v20, v20, v22

    if-nez v20, :cond_b4

    .line 1013
    instance-of v0, v6, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move/from16 v20, v0

    if-eqz v20, :cond_a0

    move-object/from16 v20, v6

    .line 1014
    check-cast v20, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 1027
    :cond_7d
    :goto_7d
    instance-of v0, v6, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move/from16 v20, v0

    if-eqz v20, :cond_c7

    move-object v15, v6

    .line 1028
    check-cast v15, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 1029
    .local v15, userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v15}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    .line 1030
    invoke-virtual {v11, v15}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeUserFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    .line 1043
    .end local v15           #userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_94
    :goto_94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    goto :goto_53

    .line 1015
    :cond_a0
    instance-of v0, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move/from16 v20, v0

    if-eqz v20, :cond_b0

    move-object/from16 v20, v6

    .line 1016
    check-cast v20, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    goto :goto_7d

    .line 1018
    :cond_b0
    invoke-virtual {v11, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    goto :goto_7d

    .line 1021
    :cond_b4
    instance-of v0, v13, Lcom/sec/android/app/twlauncher/UserFolder;

    move/from16 v20, v0

    if-eqz v20, :cond_7d

    move-object v14, v13

    .line 1022
    check-cast v14, Lcom/sec/android/app/twlauncher/UserFolder;

    .line 1023
    .local v14, userFolder:Lcom/sec/android/app/twlauncher/UserFolder;
    invoke-virtual {v14}, Lcom/sec/android/app/twlauncher/UserFolder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 1024
    .restart local v15       #userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v11, v15, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeUserFolderItem(Lcom/sec/android/app/twlauncher/UserFolderInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    goto :goto_7d

    .line 1031
    .end local v14           #userFolder:Lcom/sec/android/app/twlauncher/UserFolder;
    .end local v15           #userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_c7
    instance-of v0, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move/from16 v20, v0

    if-eqz v20, :cond_e6

    move-object v7, v6

    .line 1032
    check-cast v7, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 1033
    .local v7, launcherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->getAppWidgetHost()Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    move-result-object v2

    .line 1034
    .local v2, appWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;
    if-eqz v2, :cond_94

    .line 1035
    iget v0, v7, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_94

    .line 1037
    .end local v2           #appWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;
    .end local v7           #launcherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_e6
    instance-of v0, v6, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move/from16 v20, v0

    if-eqz v20, :cond_94

    move-object v5, v6

    .line 1038
    check-cast v5, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 1039
    .local v5, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getInstance(Landroid/app/ActivityGroup;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v10

    .line 1041
    .local v10, manager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->destroyWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    goto :goto_94

    .line 1048
    .end local v5           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .end local v6           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    .end local v10           #manager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    .end local v13           #tag:Ljava/lang/Object;
    .end local v17           #view:Landroid/view/View;
    :cond_105
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsDefaultScreen:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_153

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultHomePos:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_153

    .line 1049
    const/4 v12, 0x0

    .line 1050
    .local v12, screen:Landroid/view/View;
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultHomePos:I

    .line 1052
    .local v9, mTempDeleteIndex:I
    add-int/lit8 v20, v9, -0x1

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1054
    if-eqz v12, :cond_1e1

    .line 1055
    add-int/lit8 v20, v9, -0x1

    sput v20, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    .line 1060
    :cond_132
    :goto_132
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultHomePos:I

    .line 1061
    sget v20, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 1063
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsDefaultScreen:Z

    .line 1068
    .end local v9           #mTempDeleteIndex:I
    .end local v12           #screen:Landroid/view/View;
    :cond_153
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1069
    .local v16, v:Landroid/view/View;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->removeView(Landroid/view/View;)V

    .line 1071
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateAppInfoInDatabase()V

    .line 1073
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSwappedPosition:Z

    move/from16 v20, v0

    if-eqz v20, :cond_18b

    .line 1074
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempDefaultScreen:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    .line 1075
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    move/from16 v20, v0

    sput v20, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    .line 1076
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSwappedPosition:Z

    .line 1079
    :cond_18b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 1081
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    .line 1082
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    .line 1084
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v18

    .line 1085
    .local v18, workScreenCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_1dc

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v20

    add-int/lit8 v21, v18, -0x1

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    .line 1090
    :cond_1dc
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    goto/16 :goto_63

    .line 1056
    .end local v16           #v:Landroid/view/View;
    .end local v18           #workScreenCount:I
    .restart local v9       #mTempDeleteIndex:I
    .restart local v12       #screen:Landroid/view/View;
    :cond_1e1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_132

    .line 1057
    add-int/lit8 v20, v9, 0x1

    sput v20, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    goto/16 :goto_132
.end method

.method private onSwap(I)V
    .registers 6
    .parameter "dropedIndex"

    .prologue
    .line 936
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    .line 938
    .local v1, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 940
    .local v0, v:Landroid/view/View;
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v2, p1, v3}, Lcom/sec/android/app/twlauncher/Utilities;->zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V

    .line 941
    iput p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    .line 944
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setLauncherDefaultScreen(II)V

    .line 947
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    .line 949
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateAppInfoInDatabase()V

    .line 956
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 957
    return-void
.end method

.method private setCloseEndRect(I)V
    .registers 16
    .parameter

    .prologue
    .line 1228
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 1230
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getLocationOnScreen([I)V

    .line 1231
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    const/4 v2, 0x1

    aget v2, v0, v2

    .line 1234
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1236
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1237
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1238
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1239
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1240
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1242
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    .line 1243
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1244
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    const/4 v7, 0x1

    aget v0, v0, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v0

    .line 1248
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 1249
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .line 1250
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 1251
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    .line 1253
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    array-length v0, v0

    if-eq v0, v1, :cond_7b

    .line 1254
    :cond_68
    new-array v0, v1, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    .line 1255
    const/4 v0, 0x0

    :goto_6d
    if-ge v0, v1, :cond_7b

    .line 1256
    iget-object v12, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    aput-object v13, v12, v0

    .line 1255
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 1260
    :cond_7b
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    sub-int v8, v5, v8

    sub-int v10, v6, v10

    add-int/2addr v3, v5

    add-int/2addr v3, v9

    add-int/2addr v4, v6

    add-int/2addr v4, v11

    invoke-virtual {v0, v8, v10, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1263
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9d

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    if-eqz v0, :cond_9d

    .line 1265
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    const/4 v3, 0x0

    sub-int v2, v7, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1268
    :cond_9d
    add-int/lit8 v0, p1, -0x1

    :goto_9f
    if-ltz v0, :cond_c2

    .line 1269
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1270
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1268
    add-int/lit8 v0, v0, -0x1

    goto :goto_9f

    .line 1273
    :cond_c2
    add-int/lit8 v0, p1, 0x1

    :goto_c4
    if-ge v0, v1, :cond_e6

    .line 1274
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1275
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1273
    add-int/lit8 v0, v0, 0x1

    goto :goto_c4

    .line 1277
    :cond_e6
    return-void
.end method

.method private setDeleteZoneState(Z)V
    .registers 3
    .parameter "dragOver"

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setDragEnterForced(Z)V

    .line 1095
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->invalidate()V

    .line 1096
    return-void
.end method

.method private setLauncherDefaultScreen(II)V
    .registers 8
    .parameter "oldScreen"
    .parameter "newScreen"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1579
    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    .line 1580
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempDefaultScreen:I

    .line 1581
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSwapped:Z

    .line 1582
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSwappedPosition:Z

    .line 1583
    const/4 v0, -0x1

    .line 1585
    .local v0, defaultScreen:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    if-ne p1, v1, :cond_1e

    .line 1586
    move v0, p2

    .line 1608
    :cond_14
    :goto_14
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 1609
    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    .line 1610
    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    .line 1612
    :cond_1b
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsRemoved:Z

    .line 1613
    return-void

    .line 1587
    :cond_1e
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    if-ge v1, p1, :cond_2d

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    if-lt v1, p2, :cond_2d

    .line 1588
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    add-int/lit8 v0, v1, 0x1

    .line 1589
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSwappedPosition:Z

    goto :goto_14

    .line 1591
    :cond_2d
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    if-le v1, p1, :cond_3a

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    if-gt v1, p2, :cond_3a

    .line 1592
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_14

    .line 1593
    :cond_3a
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsRemoved:Z

    if-eqz v1, :cond_14

    .line 1594
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    if-le v1, p2, :cond_44

    if-eq p1, p2, :cond_4c

    :cond_44
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    if-le v1, p2, :cond_14

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    if-le v1, p1, :cond_14

    .line 1598
    :cond_4c
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_67

    .line 1599
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsHomeIsLastScreen:Z

    .line 1600
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempNextDefaultScreen:I

    .line 1605
    :goto_64
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSwapped:Z

    goto :goto_14

    .line 1602
    :cond_67
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_64
.end method

.method private setOpenStartRect(I)V
    .registers 16
    .parameter

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 1177
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getLocationOnScreen([I)V

    .line 1178
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    const/4 v2, 0x1

    aget v2, v0, v2

    .line 1181
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1183
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1184
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1185
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1186
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1187
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1189
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    .line 1190
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1191
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    const/4 v7, 0x1

    aget v0, v0, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v0

    .line 1195
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 1196
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .line 1197
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 1198
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    .line 1200
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    array-length v0, v0

    if-eq v0, v1, :cond_7b

    .line 1201
    :cond_68
    new-array v0, v1, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    .line 1202
    const/4 v0, 0x0

    :goto_6d
    if-ge v0, v1, :cond_7b

    .line 1203
    iget-object v12, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    aput-object v13, v12, v0

    .line 1202
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 1207
    :cond_7b
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    sub-int v8, v5, v8

    sub-int v10, v6, v10

    add-int/2addr v3, v5

    add-int/2addr v3, v9

    add-int/2addr v4, v6

    add-int/2addr v4, v11

    invoke-virtual {v0, v8, v10, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1211
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9d

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    if-eqz v0, :cond_9d

    .line 1213
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    const/4 v3, 0x0

    sub-int v2, v7, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1216
    :cond_9d
    add-int/lit8 v0, p1, -0x1

    :goto_9f
    if-ltz v0, :cond_c2

    .line 1217
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1218
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1216
    add-int/lit8 v0, v0, -0x1

    goto :goto_9f

    .line 1221
    :cond_c2
    add-int/lit8 v0, p1, 0x1

    :goto_c4
    if-ge v0, v1, :cond_e6

    .line 1222
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1223
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1221
    add-int/lit8 v0, v0, 0x1

    goto :goto_c4

    .line 1225
    :cond_e6
    return-void
.end method

.method private startDrag(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 741
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 742
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    .line 743
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    .line 744
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    .line 745
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    .line 746
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 747
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 748
    return-void
.end method

.method private swapScreen(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 930
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/Utilities;->zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V

    .line 932
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->onSwap(I)V

    .line 933
    return-void
.end method

.method private updateAppInfoInDatabase()V
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1099
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v7

    .line 1100
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v8

    .line 1105
    :try_start_c
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v2, "launcher.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_92
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_15} :catch_6a

    move-result-object v3

    .line 1106
    :try_start_16
    const-string v0, "update favorites set screen=? where _id=?"

    .line 1107
    const-string v0, "update favorites set screen=? where _id=?"

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_a3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_1d} :catch_ac

    move-result-object v2

    .line 1112
    :try_start_1e
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v6, v5

    .line 1113
    :goto_22
    if-ge v6, v8, :cond_59

    .line 1114
    invoke-virtual {v7, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1115
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    move v4, v5

    .line 1116
    :goto_2f
    if-ge v4, v9, :cond_55

    .line 1117
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1118
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1119
    if-eqz v1, :cond_51

    .line 1120
    check-cast v1, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1121
    iget v10, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-eq v10, v6, :cond_51

    .line 1122
    iput v6, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1123
    const/4 v10, 0x1

    int-to-long v11, v6

    invoke-virtual {v2, v10, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1124
    const/4 v10, 0x2

    iget-wide v11, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v2, v10, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1125
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1116
    :cond_51
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2f

    .line 1113
    :cond_55
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_22

    .line 1131
    :cond_59
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5c
    .catchall {:try_start_1e .. :try_end_5c} :catchall_a6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_5c} :catch_af

    .line 1138
    if-eqz v2, :cond_61

    .line 1139
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1141
    :cond_61
    if-eqz v3, :cond_69

    .line 1142
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1143
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1146
    :cond_69
    :goto_69
    return-void

    .line 1135
    :catch_6a
    move-exception v0

    move-object v2, v1

    .line 1136
    :goto_6c
    :try_start_6c
    const-string v3, "QuickViewWorkspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAppInfoInDatabase() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_6c .. :try_end_84} :catchall_a8

    .line 1138
    if-eqz v1, :cond_89

    .line 1139
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1141
    :cond_89
    if-eqz v2, :cond_69

    .line 1142
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1143
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_69

    .line 1138
    :catchall_92
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_95
    if-eqz v2, :cond_9a

    .line 1139
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1141
    :cond_9a
    if-eqz v3, :cond_a2

    .line 1142
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1143
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a2
    throw v0

    .line 1138
    :catchall_a3
    move-exception v0

    move-object v2, v1

    goto :goto_95

    :catchall_a6
    move-exception v0

    goto :goto_95

    :catchall_a8
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_95

    .line 1135
    :catch_ac
    move-exception v0

    move-object v2, v3

    goto :goto_6c

    :catch_af
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_6c
.end method

.method private updateTag()V
    .registers 6

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 898
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_1d

    .line 899
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 900
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 901
    .local v3, tag:Ljava/lang/Object;
    sget-object v4, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v3, v4, :cond_1a

    .line 902
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 898
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 905
    .end local v0           #child:Landroid/view/View;
    .end local v3           #tag:Ljava/lang/Object;
    :cond_1d
    return-void
.end method

.method private updateWallpaperOffset(IIF)V
    .registers 11
    .parameter "newCurScreenIndex"
    .parameter "newScreenCount"
    .parameter "progress"

    .prologue
    const/4 v6, 0x1

    .line 186
    const/high16 v2, 0x3f00

    .line 187
    .local v2, wallpaperOffsetOnOpen:F
    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenCountOnOpen:I

    if-le v4, v6, :cond_11

    .line 188
    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenIndexOnOpen:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenCountOnOpen:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 192
    :cond_11
    const/high16 v0, 0x3f00

    .line 193
    .local v0, targetWallpaperOffsetOnClose:F
    if-le p2, v6, :cond_1b

    .line 194
    int-to-float v4, p1

    add-int/lit8 v5, p2, -0x1

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 197
    :cond_1b
    sub-float v4, v0, v2

    mul-float/2addr v4, p3

    add-float v3, v2, v4

    .line 202
    .local v3, woffset:F
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 206
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 207
    .local v1, token:Landroid/os/IBinder;
    if-eqz v1, :cond_4b

    .line 211
    :cond_4b
    return-void
.end method


# virtual methods
.method cancelDeleteView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 664
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    if-nez v0, :cond_6

    .line 680
    :cond_5
    :goto_5
    return-void

    .line 666
    :cond_6
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsHomeIsLastScreen:Z

    .line 667
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 668
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 670
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    .line 671
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    .line 672
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 674
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSwapped:Z

    if-eqz v0, :cond_5

    .line 675
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempDefaultScreen:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    .line 676
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    .line 677
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSwapped:Z

    goto :goto_5
.end method

.method cancelDrag()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v0, :cond_1d

    .line 639
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 641
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 642
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 644
    :cond_1d
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    .line 646
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    .line 653
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 654
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 655
    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    .line 656
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    .line 657
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    .line 658
    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    .line 659
    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    .line 660
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    .line 661
    return-void
.end method

.method close()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 558
    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollY:I

    .line 559
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mEnabledChildAnimation:Z

    .line 560
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setVisibility(I)V

    .line 561
    const/4 v3, 0x7

    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    .line 562
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDeleteView()V

    .line 564
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setMode(Z)V

    .line 567
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v2

    .line 568
    .local v2, vDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;
    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 572
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMenuSethome:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 574
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->disableWorkspaceScreensCache()V

    .line 576
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 577
    .local v1, totalCount:I
    add-int/lit8 v0, v1, -0x1

    .line 600
    .local v0, count:I
    return-void
.end method

.method disableWorkspaceScreensCache()V
    .registers 6

    .prologue
    .line 531
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v3

    .line 532
    .local v3, ws:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 534
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v1, :cond_18

    .line 535
    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 537
    .local v0, celllayout:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 534
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 539
    .end local v0           #celllayout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_18
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 15
    .parameter "canvas"

    .prologue
    .line 1342
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 1343
    .local v1, count:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getWidth()I

    move-result v8

    .line 1344
    .local v8, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getHeight()I

    move-result v3

    .line 1346
    .local v3, height:I
    const/4 v6, 0x0

    .line 1347
    .local v6, result:Z
    if-eqz v8, :cond_11

    if-nez v3, :cond_13

    :cond_11
    move v7, v6

    .line 1445
    .end local v6           #result:Z
    .local v7, result:I
    :goto_12
    return v7

    .line 1349
    .end local v7           #result:I
    .restart local v6       #result:Z
    :cond_13
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1351
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6a

    .line 1352
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationStartTime:J

    .line 1353
    const/4 v9, 0x2

    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    .line 1354
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v9

    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    .line 1356
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    invoke-direct {p0, v9}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setOpenStartRect(I)V

    .line 1357
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->requestLayout()V

    .line 1358
    new-array v9, v1, [Landroid/graphics/Rect;

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    .line 1359
    new-array v9, v1, [Landroid/graphics/Rect;

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 1360
    const/4 v4, 0x0

    .local v4, i:I
    :goto_48
    if-ge v4, v1, :cond_af

    .line 1361
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    aput-object v10, v9, v4

    .line 1362
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1363
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    aput-object v10, v9, v4

    .line 1360
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 1365
    .end local v4           #i:I
    :cond_6a
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_af

    .line 1366
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationStartTime:J

    .line 1367
    const/4 v9, 0x4

    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    .line 1368
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    .line 1370
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->requestLayout()V

    .line 1371
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    invoke-direct {p0, v9}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setCloseEndRect(I)V

    .line 1372
    new-array v9, v1, [Landroid/graphics/Rect;

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    .line 1373
    new-array v9, v1, [Landroid/graphics/Rect;

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 1374
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_8d
    if-ge v4, v1, :cond_af

    .line 1375
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    aput-object v10, v9, v4

    .line 1376
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1377
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    aput-object v10, v9, v4

    .line 1374
    add-int/lit8 v4, v4, 0x1

    goto :goto_8d

    .line 1381
    .end local v4           #i:I
    :cond_af
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_d3

    .line 1382
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_b5
    if-ge v4, v1, :cond_c6

    .line 1383
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1384
    .local v0, child:Landroid/view/View;
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    if-eq v0, v9, :cond_c3

    .line 1385
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)Z

    move-result v6

    .line 1382
    :cond_c3
    add-int/lit8 v4, v4, 0x1

    goto :goto_b5

    .line 1388
    .end local v0           #child:Landroid/view/View;
    :cond_c6
    const/4 v9, 0x0

    invoke-virtual {p1, p0, v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->setClipToView(Landroid/view/View;Z)V

    .line 1389
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-direct {p0, p1, v9}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)Z

    move-result v6

    :cond_d0
    :goto_d0
    move v7, v6

    .line 1445
    .restart local v7       #result:I
    goto/16 :goto_12

    .line 1391
    .end local v4           #i:I
    .end local v7           #result:I
    :cond_d3
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_dd

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_1a1

    .line 1393
    :cond_dd
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationStartTime:J

    sub-long/2addr v9, v11

    long-to-int v2, v9

    .line 1395
    .local v2, current:I
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    if-lt v2, v9, :cond_f5

    .line 1396
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    .line 1397
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_f5

    .line 1398
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 1402
    :cond_f5
    int-to-float v9, v2

    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    int-to-float v10, v10

    div-float v5, v9, v10

    .line 1403
    .local v5, progress:F
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_11d

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v10

    if-eq v9, v10, :cond_11d

    .line 1405
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v10

    invoke-direct {p0, v9, v10, v5}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateWallpaperOffset(IIF)V

    .line 1409
    :cond_11d
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    if-lt v2, v9, :cond_129

    .line 1410
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_199

    const/4 v9, 0x7

    :goto_127
    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    .line 1414
    :cond_129
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    if-eqz v9, :cond_132

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    array-length v9, v9

    if-eq v9, v1, :cond_138

    .line 1418
    :cond_132
    if-lez v1, :cond_138

    .line 1419
    new-array v9, v1, [Landroid/graphics/Rect;

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 1422
    :cond_138
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    invoke-virtual {v9, v10, v11, v12, v5}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 1424
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_147
    if-ge v4, v1, :cond_19c

    .line 1426
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1427
    .restart local v0       #child:Landroid/view/View;
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v11, v11, v4

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v12, v12, v4

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v9, v10, v11, v12}, Lcom/sec/android/app/twlauncher/GLCanvas;->setClip(IIII)V

    .line 1429
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v11, v11, v4

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v12, v12, v4

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 1431
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    invoke-direct {p0, v9}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isAvailableRect(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_196

    .line 1432
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1433
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)Z

    move-result v6

    .line 1424
    :cond_196
    add-int/lit8 v4, v4, 0x1

    goto :goto_147

    .line 1410
    .end local v0           #child:Landroid/view/View;
    .end local v4           #i:I
    :cond_199
    const/16 v9, 0x8

    goto :goto_127

    .line 1437
    .restart local v4       #i:I
    :cond_19c
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    goto/16 :goto_d0

    .line 1440
    .end local v2           #current:I
    .end local v4           #i:I
    .end local v5           #progress:F
    :cond_1a1
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1a2
    if-ge v4, v1, :cond_d0

    .line 1441
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-direct {p0, p1, v9}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)Z

    move-result v6

    .line 1440
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a2
.end method

.method getButtonBounds(Landroid/view/View;II)Landroid/graphics/Rect;
    .registers 13
    .parameter "view"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1623
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v2, v7, v8

    .line 1624
    .local v2, view_width:I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1626
    .local v3, view_x:I
    move v4, p2

    .line 1627
    .local v4, w:I
    move v0, p3

    .line 1628
    .local v0, h:I
    sub-int v7, v2, v4

    div-int/lit8 v5, v7, 0x2

    .line 1629
    .local v5, x:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    sub-int/2addr v7, v0

    add-int/lit8 v6, v7, -0xa

    .line 1631
    .local v6, y:I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1633
    .local v1, rect:Landroid/graphics/Rect;
    add-int v7, v5, v3

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 1634
    add-int v7, v5, v4

    add-int/2addr v7, v3

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 1635
    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 1636
    add-int v7, v6, v0

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 1637
    return-object v1
.end method

.method public getCurrentPage()I
    .registers 2

    .prologue
    .line 631
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    return v0
.end method

.method public getDeleteIndex()I
    .registers 2

    .prologue
    .line 617
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    return v0
.end method

.method getSetHomeMenu()Landroid/view/View;
    .registers 2

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMenuSethome:Landroid/view/View;

    return-object v0
.end method

.method protected init()V
    .registers 7

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 163
    new-instance v4, Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    invoke-direct {v4}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    .line 164
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 167
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 168
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    .line 169
    const v4, 0x7f0b002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mVerticalGap:I

    .line 170
    const v4, 0x7f0b002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mHorizontalGap:I

    .line 171
    const v4, 0x7f090001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    .line 173
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 175
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 176
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchSlop:I

    .line 178
    const/4 v2, 0x0

    .local v2, i:I
    :goto_51
    sget v4, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge v2, v4, :cond_61

    .line 179
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

    new-instance v5, Lcom/sec/android/app/twlauncher/QuickView$Animate;

    invoke-direct {v5, p0}, Lcom/sec/android/app/twlauncher/QuickView$Animate;-><init>(Lcom/sec/android/app/twlauncher/QuickView;)V

    aput-object v5, v4, v2

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 181
    :cond_61
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setClipChildren(Z)V

    .line 182
    return-void
.end method

.method initScreen(I)V
    .registers 10
    .parameter "screenCount"

    .prologue
    const v7, 0x7f020023

    .line 683
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeAllViews()V

    .line 685
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setBackgroundResource(I)V

    .line 687
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 688
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    .line 690
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 691
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 693
    .local v4, resources:Landroid/content/res/Resources;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 694
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchSlop:I

    .line 696
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 697
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 698
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    .line 700
    const v5, 0x7f020022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    .line 702
    const v5, 0x7f020024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 703
    sget v5, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    .line 704
    const v5, 0x7f02001d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultHomeIcon:Landroid/graphics/drawable/Drawable;

    .line 706
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5f
    if-ge v2, p1, :cond_67

    .line 707
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeScreen(I)Landroid/view/View;

    .line 706
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 710
    :cond_67
    sget v5, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge p1, v5, :cond_6e

    .line 711
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    .line 717
    :cond_6e
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 719
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 486
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v0, v1, :cond_69

    .line 489
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsEditMode:Z

    if-eqz v0, :cond_59

    .line 491
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060028

    if-ne v0, v1, :cond_4c

    .line 493
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_41

    .line 494
    const-string v0, "QuickViewWorkspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msetDefaultScreen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultScreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultScreen:I

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    .line 496
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    .line 497
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 500
    :cond_41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setMode(Z)V

    .line 505
    :goto_45
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    .line 512
    :goto_48
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    .line 517
    :goto_4b
    return-void

    .line 503
    :cond_4c
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultScreen:I

    goto :goto_45

    .line 508
    :cond_59
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    .line 509
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawCloseAnimation()V

    goto :goto_48

    .line 515
    :cond_69
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addScreen()V

    goto :goto_4b
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "ev"

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 262
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 263
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 265
    .local v7, y:F
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_1b

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/16 v12, 0x8

    if-eq v11, v12, :cond_1b

    .line 345
    :cond_1a
    :goto_1a
    return v9

    .line 271
    :cond_1b
    sparse-switch v0, :sswitch_data_106

    .line 345
    :cond_1e
    :goto_1e
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    if-nez v11, :cond_1a

    move v9, v10

    goto :goto_1a

    .line 273
    :sswitch_24
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    if-eqz v11, :cond_1e

    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    if-eqz v11, :cond_1e

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    if-ge v11, v13, :cond_50

    .line 276
    const-string v9, "QuickViewWorkspace"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onInterceptTouchEvent ACTION_MOVE multitouch count is less than 2 :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 277
    goto :goto_1a

    .line 280
    :cond_50
    iput v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 282
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    sub-float v11, v7, v11

    float-to-int v3, v11

    .line 283
    .local v3, dy:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    sub-float v11, v5, v11

    float-to-int v2, v11

    .line 285
    .local v2, dx:I
    mul-int v11, v3, v3

    mul-int v12, v2, v2

    add-int/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMovePinchStart:I

    sub-int v4, v11, v12

    .line 287
    .local v4, pinchDelta:I
    const/16 v11, 0x2710

    if-le v4, v11, :cond_1e

    .line 288
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutIndex:I

    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 289
    .local v1, childOnPinch:Landroid/view/View;
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v11, v12, :cond_1e

    .line 293
    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    .line 294
    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    .line 295
    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutIndex:I

    iput v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    .line 296
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawCloseAnimation()V

    .line 297
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    goto :goto_1a

    .line 306
    .end local v1           #childOnPinch:Landroid/view/View;
    .end local v2           #dx:I
    .end local v3           #dy:I
    .end local v4           #pinchDelta:I
    :sswitch_8c
    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionX:F

    .line 307
    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionY:F

    goto :goto_1e

    .line 311
    :sswitch_91
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    if-eqz v11, :cond_9a

    .line 312
    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    .line 313
    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    goto :goto_1e

    .line 315
    :cond_9a
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    if-ne v11, v13, :cond_1e

    .line 316
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->endDrag()V

    goto/16 :goto_1e

    .line 321
    :sswitch_a3
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    if-nez v11, :cond_1e

    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    if-nez v11, :cond_1e

    .line 322
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    if-ge v11, v13, :cond_d0

    .line 324
    const-string v9, "QuickViewWorkspace"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onInterceptTouchEvent ACTION_POINTER_2_DOWN multitouch count is less than 2 :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 325
    goto/16 :goto_1a

    .line 328
    :cond_d0
    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    .line 330
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    float-to-int v11, v11

    int-to-float v8, v11

    .line 331
    .local v8, y1:F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    float-to-int v11, v11

    int-to-float v6, v11

    .line 333
    .local v6, x1:F
    float-to-int v11, v5

    float-to-int v12, v7

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v11

    float-to-int v12, v6

    float-to-int v13, v8

    invoke-direct {p0, v12, v13}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v12

    if-ne v11, v12, :cond_1e

    .line 334
    sub-float v11, v7, v8

    float-to-int v3, v11

    .line 335
    .restart local v3       #dy:I
    sub-float v11, v5, v6

    float-to-int v2, v11

    .line 336
    .restart local v2       #dx:I
    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    .line 337
    mul-int v11, v3, v3

    mul-int v12, v2, v2

    add-int/2addr v11, v12

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMovePinchStart:I

    .line 339
    float-to-int v11, v5

    float-to-int v12, v7

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v11

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutIndex:I

    goto/16 :goto_1e

    .line 271
    nop

    :sswitch_data_106
    .sparse-switch
        0x0 -> :sswitch_8c
        0x1 -> :sswitch_91
        0x2 -> :sswitch_24
        0x3 -> :sswitch_91
        0x105 -> :sswitch_a3
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 16
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v3

    .line 220
    .local v3, count:I
    const/4 v6, 0x1

    if-ge v3, v6, :cond_8

    .line 256
    :cond_7
    return-void

    .line 223
    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v6, v6

    if-eq v6, v3, :cond_17

    .line 224
    :cond_11
    if-lez v3, :cond_17

    .line 225
    new-array v6, v3, [Landroid/graphics/Rect;

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    .line 228
    :cond_17
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 229
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 230
    .local v2, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 231
    .local v1, childHeight:I
    invoke-direct {p0, v3, v2, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getViewLayout(III)V

    .line 232
    const/4 v4, 0x0

    .local v4, i:I
    :goto_28
    if-ge v4, v3, :cond_7

    .line 233
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 234
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 236
    .local v5, r:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_78

    .line 237
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v4

    if-nez v6, :cond_4a

    .line 238
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    aput-object v7, v6, v4

    .line 239
    :cond_4a
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v4

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 241
    invoke-virtual {v0, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 242
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7b

    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mEnabledChildAnimation:Z

    if-eqz v6, :cond_7b

    iget v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_7b

    .line 244
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_78

    .line 248
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

    aget-object v6, v6, v4

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    invoke-virtual {v6, v0, v7}, Lcom/sec/android/app/twlauncher/QuickView$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 232
    :cond_78
    :goto_78
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 251
    :cond_7b
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v4

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v4

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_78
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 461
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    if-eqz v0, :cond_6

    .line 480
    :cond_5
    :goto_5
    return v2

    .line 464
    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsEditMode:Z

    if-nez v0, :cond_5

    .line 467
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_5

    .line 469
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->startDrag(Landroid/view/View;)V

    .line 472
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    if-ne v0, v1, :cond_35

    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsDefaultScreen:Z

    .line 474
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultHomePos:I

    .line 478
    :goto_31
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->performHapticFeedback(I)Z

    goto :goto_5

    .line 476
    :cond_35
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsDefaultScreen:Z

    goto :goto_31
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 17
    .parameter "ev"

    .prologue
    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 351
    .local v0, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 352
    .local v8, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 356
    .local v9, y:F
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_19

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/16 v12, 0x8

    if-eq v11, v12, :cond_19

    .line 358
    const/4 v11, 0x0

    .line 453
    :goto_18
    return v11

    .line 360
    :cond_19
    packed-switch v0, :pswitch_data_f8

    .line 453
    :cond_1c
    :goto_1c
    :pswitch_1c
    const/4 v11, 0x0

    goto :goto_18

    .line 364
    :pswitch_1e
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionX:F

    sub-float/2addr v11, v8

    float-to-int v2, v11

    .line 365
    .local v2, deltaX:I
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionY:F

    sub-float/2addr v11, v9

    float-to-int v3, v11

    .line 367
    .local v3, deltaY:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchSlop:I

    .line 368
    .local v6, touchSlop:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-le v11, v6, :cond_a4

    const/4 v10, 0x1

    .line 370
    .local v10, yMoved:Z
    :goto_2f
    if-eqz v10, :cond_38

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    if-nez v11, :cond_38

    .line 371
    const/4 v11, 0x1

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 374
    :cond_38
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1c

    .line 375
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    .line 376
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_68

    .line 377
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    .line 378
    .local v5, r:Landroid/graphics/Rect;
    invoke-virtual {v1, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 379
    iget v11, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v2

    iput v11, v5, Landroid/graphics/Rect;->left:I

    .line 380
    iget v11, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v3

    iput v11, v5, Landroid/graphics/Rect;->top:I

    .line 381
    iget v11, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v2

    iput v11, v5, Landroid/graphics/Rect;->right:I

    .line 382
    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v3

    iput v11, v5, Landroid/graphics/Rect;->bottom:I

    .line 384
    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->top:I

    iget v13, v5, Landroid/graphics/Rect;->right:I

    iget v14, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 385
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    .line 387
    .end local v5           #r:Landroid/graphics/Rect;
    :cond_68
    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionX:F

    .line 388
    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionY:F

    .line 391
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    .line 393
    .local v7, v:Landroid/view/View;
    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v4

    .line 394
    .local v4, index:I
    const/4 v11, -0x1

    if-eq v4, v11, :cond_93

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    if-eq v4, v11, :cond_93

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v11, v12, :cond_93

    .line 396
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 397
    invoke-virtual {p0, v7, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 398
    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    .line 403
    :cond_93
    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isDeleteZone(II)Z

    move-result v11

    if-eqz v11, :cond_a6

    .line 405
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->applyDeleteZone()V

    .line 406
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    goto/16 :goto_1c

    .line 368
    .end local v1           #child:Landroid/view/View;
    .end local v4           #index:I
    .end local v7           #v:Landroid/view/View;
    .end local v10           #yMoved:Z
    :cond_a4
    const/4 v10, 0x0

    goto :goto_2f

    .line 408
    .restart local v1       #child:Landroid/view/View;
    .restart local v4       #index:I
    .restart local v7       #v:Landroid/view/View;
    .restart local v10       #yMoved:Z
    :cond_a6
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    .line 409
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b1

    .line 413
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    .line 415
    :cond_b1
    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 416
    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v4

    .line 417
    const/4 v11, -0x1

    if-eq v4, v11, :cond_1c

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    if-eq v4, v11, :cond_1c

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v11, v12, :cond_1c

    .line 419
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 420
    invoke-virtual {p0, v7, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 421
    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 422
    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    goto/16 :goto_1c

    .line 430
    .end local v1           #child:Landroid/view/View;
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #index:I
    .end local v6           #touchSlop:I
    .end local v7           #v:Landroid/view/View;
    .end local v10           #yMoved:Z
    :pswitch_db
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_e7

    .line 435
    float-to-int v11, v8

    float-to-int v12, v9

    iget-boolean v13, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsDefaultScreen:Z

    invoke-direct {p0, v11, v12, v13}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drop(IIZ)V

    .line 439
    :cond_e7
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    if-nez v11, :cond_ef

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    if-eqz v11, :cond_f2

    .line 440
    :cond_ef
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    .line 443
    :cond_f2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->endDrag()V

    goto/16 :goto_1c

    .line 360
    nop

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_db
        :pswitch_1e
        :pswitch_db
    .end packed-switch
.end method

.method open()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 542
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mEnabledChildAnimation:Z

    .line 543
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setVisibility(I)V

    .line 545
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    .line 546
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    .line 547
    .local v0, vDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 548
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->resetMode()V

    .line 550
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenCountOnOpen:I

    .line 551
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenIndexOnOpen:I

    .line 553
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->enableWorkspaceScreensCache()V

    .line 555
    return-void
.end method

.method public removeScreen()V
    .registers 4

    .prologue
    .line 908
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    if-nez v1, :cond_11

    .line 909
    :cond_d
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    .line 927
    :goto_10
    return-void

    .line 913
    :cond_11
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 915
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v0

    .line 916
    .local v0, count:I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_2b

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_2e

    .line 918
    :cond_2b
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    .line 921
    :cond_2e
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->onRemove()V

    .line 923
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    .line 925
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto :goto_10
.end method

.method public setDefaultScreen(I)V
    .registers 2
    .parameter "screen"

    .prologue
    .line 1619
    iput p1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    .line 1620
    return-void
.end method

.method public setDeleteIndex(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 621
    iput p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    .line 622
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    if-ltz v0, :cond_1b

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 623
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    .line 627
    :goto_1a
    return-void

    .line 625
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    goto :goto_1a
.end method

.method public setMode(Z)V
    .registers 6
    .parameter "isDeleteZoneVisible"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1641
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    .line 1642
    .local v0, oDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;
    if-eqz p1, :cond_19

    .line 1643
    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 1646
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMenuSethome:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1647
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    .line 1658
    :goto_16
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsEditMode:Z

    .line 1659
    return-void

    .line 1651
    :cond_19
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 1652
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultScreen:I

    .line 1655
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMenuSethome:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16
.end method

.method setSetHomeMenu(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 1669
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMenuSethome:Landroid/view/View;

    .line 1671
    return-void
.end method
