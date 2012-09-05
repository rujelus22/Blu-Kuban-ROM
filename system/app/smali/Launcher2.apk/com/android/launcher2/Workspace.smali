.class public Lcom/android/launcher2/Workspace;
.super Lcom/android/launcher2/SmoothPagedView;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher2/DropTarget;
.implements Lcom/android/launcher2/DragSource;
.implements Lcom/android/launcher2/DragScroller;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher2/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;,
        Lcom/android/launcher2/Workspace$ZoomInInterpolator;,
        Lcom/android/launcher2/Workspace$ZoomOutInterpolator;,
        Lcom/android/launcher2/Workspace$InverseZInterpolator;,
        Lcom/android/launcher2/Workspace$ZInterpolator;,
        Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;,
        Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;,
        Lcom/android/launcher2/Workspace$State;
    }
.end annotation


# static fields
.field private static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field private static final BACKGROUND_FADE_OUT_DURATION:I = 0x15e

.field private static CAMERA_DISTANCE:F = 0.0f

.field private static final CHILDREN_OUTLINE_FADE_IN_DURATION:I = 0x64

.field private static final CHILDREN_OUTLINE_FADE_OUT_DELAY:I = 0x0

.field private static final CHILDREN_OUTLINE_FADE_OUT_DURATION:I = 0x177

.field private static final DEFAULT_CELL_COUNT_X:I = 0x4

.field private static final DEFAULT_CELL_COUNT_Y:I = 0x4

.field private static final FOLDER_CREATION_TIMEOUT:I = 0xfa

.field static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field static final START_DAMPING_TOUCH_SLOP_ANGLE:F = 0.5235988f

.field private static final TAG:Ljava/lang/String; = "Launcher.Workspace"

.field static final TOUCH_SLOP_DAMPING_FACTOR:F = 4.0f

.field private static final WALLPAPER_SCREENS_SPAN:F = 2.0f

.field private static final WORKSPACE_OVERSCROLL_ROTATION:F = 24.0f

.field private static final WORKSPACE_ROTATION:F = 12.5f


# instance fields
.field mAnimatingViewIntoPlace:Z

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundAlpha:F

.field private mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

.field private mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

.field private final mCamera:Landroid/graphics/Camera;

.field private mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field mChildrenLayersEnabled:Z

.field private mChildrenOutlineAlpha:F

.field private mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

.field private mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

.field private mCreateUserFolderOnDrop:Z

.field private mCurrentRotationY:F

.field private mCurrentScaleX:F

.field private mCurrentScaleY:F

.field private mCurrentTranslationX:F

.field private mCurrentTranslationY:F

.field private mDefaultPage:I

.field private mDelayedResizeRunnable:Ljava/lang/Runnable;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

.field private mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mDragOutline:Landroid/graphics/Bitmap;

.field private mDragTargetLayout:Lcom/android/launcher2/CellLayout;

.field private mDragViewMultiplyColor:I

.field private mDragViewVisualCenter:[F

.field mDrawBackground:Z

.field private final mExternalDragOutlinePaint:Landroid/graphics/Paint;

.field private final mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mInScrollArea:Z

.field mIsDragOccuring:Z

.field private mIsSwitchingState:Z

.field private mLastDragOverView:Landroid/view/View;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mNewAlphas:[F

.field private mNewBackgroundAlphaMultipliers:[F

.field private mNewBackgroundAlphas:[F

.field private mNewRotationYs:[F

.field private mNewScaleXs:[F

.field private mNewScaleYs:[F

.field private mNewTranslationXs:[F

.field private mNewTranslationYs:[F

.field private mOldAlphas:[F

.field private mOldBackgroundAlphaMultipliers:[F

.field private mOldBackgroundAlphas:[F

.field private mOldRotationYs:[F

.field private mOldScaleXs:[F

.field private mOldScaleYs:[F

.field private mOldTranslationXs:[F

.field private mOldTranslationYs:[F

.field private final mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

.field private mOverScrollMaxBackgroundAlpha:F

.field private mOverScrollPageIndex:I

.field private mOverscrollFade:F

.field private mSavedRotationY:F

.field private mSavedScrollX:I

.field private mSavedTranslationX:F

.field private mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

.field private mSpringLoadedShrinkFactor:F

.field private mState:Lcom/android/launcher2/Workspace$State;

.field private mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

.field private mSwitchStateAfterFirstLayout:Z

.field private mTargetCell:[I

.field private mTempCell:[I

.field private mTempCellLayoutCenterCoordinates:[F

.field private mTempDragBottomRightCoordinates:[F

.field private mTempDragCoordinates:[F

.field private mTempEstimate:[I

.field private final mTempFloat2:[F

.field private mTempInverseMatrix:Landroid/graphics/Matrix;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempXY:[I

.field private mTransitionProgress:F

.field mUpdateWallpaperOffsetImmediately:Z

.field mWallpaperHeight:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

.field private mWallpaperScrollRatio:F

.field private mWallpaperTravelWidth:I

.field mWallpaperWidth:I

.field private mWindowToken:Landroid/os/IBinder;

.field private mXDown:F

.field private mYDown:F

.field private final mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 89
    const v0, 0x45cb2000

    sput v0, Lcom/android/launcher2/Workspace;->CAMERA_DISTANCE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 248
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 258
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineAlpha:F

    .line 107
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    .line 108
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    .line 109
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    .line 110
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/launcher2/Workspace;->mOverScrollPageIndex:I

    .line 112
    const/high16 v8, 0x3f80

    iput v8, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    .line 128
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 133
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 141
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    .line 142
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempEstimate:[I

    .line 143
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 144
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempDragCoordinates:[F

    .line 145
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 146
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempDragBottomRightCoordinates:[F

    .line 147
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 159
    sget-object v8, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 160
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    .line 161
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    .line 167
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mAnimatingViewIntoPlace:Z

    .line 168
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 169
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    .line 172
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 174
    new-instance v8, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {v8}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 175
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 176
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 177
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    .line 179
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mOverscrollFade:F

    .line 182
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    .line 185
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mMatrix:Landroid/graphics/Matrix;

    .line 186
    new-instance v8, Landroid/graphics/Camera;

    invoke-direct {v8}, Landroid/graphics/Camera;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mCamera:Landroid/graphics/Camera;

    .line 187
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempFloat2:[F

    .line 193
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 201
    new-instance v8, Lcom/android/launcher2/Alarm;

    invoke-direct {v8}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    .line 202
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .line 203
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    .line 204
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    .line 1497
    new-instance v8, Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    invoke-direct {v8}, Lcom/android/launcher2/Workspace$ZoomInInterpolator;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    .line 259
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mContentIsRefreshable:Z

    .line 262
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->setDataIsReady()V

    .line 264
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mFadeInAdjacentScreens:Z

    .line 266
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 268
    const/4 v3, 0x4

    .line 269
    .local v3, cellCountX:I
    const/4 v4, 0x4

    .line 271
    .local v4, cellCountY:I
    sget-object v8, Lcom/android/launcher/R$styleable;->Workspace:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 274
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 275
    .local v5, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v8

    if-eqz v8, :cond_114

    .line 280
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const v10, 0x10102eb

    aput v10, v8, v9

    invoke-virtual {p1, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 282
    .local v2, actionBarSizeTypedArray:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 283
    .local v1, actionBarHeight:F
    const v8, 0x7f0a0032

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 284
    .local v7, systemBarHeight:F
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float v6, v8

    .line 286
    .local v6, smallestScreenDim:F
    const/4 v3, 0x1

    .line 287
    :goto_f4
    add-int/lit8 v8, v3, 0x1

    invoke-static {v5, v8}, Lcom/android/launcher2/CellLayout;->widthInPortrait(Landroid/content/res/Resources;I)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v8, v6

    if-gtz v8, :cond_102

    .line 288
    add-int/lit8 v3, v3, 0x1

    goto :goto_f4

    .line 291
    :cond_102
    const/4 v4, 0x1

    .line 293
    :goto_103
    add-int/lit8 v8, v4, 0x1

    invoke-static {v5, v8}, Lcom/android/launcher2/CellLayout;->heightInLandscape(Landroid/content/res/Resources;I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v1

    sub-float v9, v6, v7

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_114

    .line 294
    add-int/lit8 v4, v4, 0x1

    goto :goto_103

    .line 298
    .end local v1           #actionBarHeight:F
    .end local v2           #actionBarSizeTypedArray:Landroid/content/res/TypedArray;
    .end local v6           #smallestScreenDim:F
    .end local v7           #systemBarHeight:F
    :cond_114
    const v8, 0x7f090005

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42c8

    div-float/2addr v8, v9

    iput v8, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedShrinkFactor:F

    .line 300
    const v8, 0x7f070002

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/Workspace;->mDragViewMultiplyColor:I

    .line 303
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 304
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 305
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    .line 306
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 308
    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherModel;->updateWorkspaceLayoutCells(II)V

    .line 309
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 311
    check-cast p1, Lcom/android/launcher2/Launcher;

    .end local p1
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 312
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->initWorkspace()V

    .line 315
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->setMotionEventSplittingEnabled(Z)V

    .line 316
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/Workspace;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/launcher2/Workspace;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOldTranslationYs:[F

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/Workspace;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/launcher2/Workspace;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/Workspace;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOldScaleXs:[F

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/Workspace;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/Workspace;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOldScaleYs:[F

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/Workspace;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/Workspace;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphas:[F

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/Workspace;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher2/Workspace;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphaMultipliers:[F

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher2/Workspace;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphaMultipliers:[F

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/Workspace;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/launcher2/Workspace;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOldAlphas:[F

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/launcher2/Workspace;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/launcher2/Workspace;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->syncChildrenLayersEnabledOnVisiblePages()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/launcher2/Workspace;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOldRotationYs:[F

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/launcher2/Workspace;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mNewRotationYs:[F

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/android/launcher2/Workspace;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/launcher2/Workspace;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/Workspace;)Landroid/app/WallpaperManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/DragController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/Workspace;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/Workspace;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/launcher2/Workspace;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/launcher2/Workspace;->mTransitionProgress:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/launcher2/Workspace;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOldTranslationXs:[F

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/Workspace;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    return-object v0
.end method

.method private animateBackgroundGradient(FZ)V
    .registers 7
    .parameter "finalAlpha"
    .parameter "animated"

    .prologue
    const/4 v2, 0x0

    .line 1054
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_6

    .line 1079
    :cond_5
    :goto_5
    return-void

    .line 1055
    :cond_6
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_11

    .line 1056
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1057
    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    .line 1059
    :cond_11
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1c

    .line 1060
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1061
    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 1063
    :cond_1c
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getBackgroundAlpha()F

    move-result v0

    .line 1064
    .local v0, startAlpha:F
    cmpl-float v1, p1, v0

    if-eqz v1, :cond_5

    .line 1065
    if-eqz p2, :cond_58

    .line 1066
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 1067
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher2/Workspace$3;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Workspace$3;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1072
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc0

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1073
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1074
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    .line 1076
    :cond_58
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->setBackgroundAlpha(F)V

    goto :goto_5
.end method

.method private cancelFolderCreation()V
    .registers 2

    .prologue
    .line 2843
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v0, :cond_d

    .line 2844
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    .line 2846
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    .line 2847
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 2848
    return-void
.end method

.method private cleanupFolderCreation(Lcom/android/launcher2/DropTarget$DragObject;)V
    .registers 4
    .parameter "d"

    .prologue
    .line 2831
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v0, :cond_d

    .line 2832
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    .line 2834
    :cond_d
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_22

    .line 2835
    if-eqz p1, :cond_22

    .line 2836
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher2/FolderIcon;

    iget-object v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIcon;->onDragExit(Ljava/lang/Object;)V

    .line 2839
    :cond_22
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 2840
    return-void
.end method

.method private computeWallpaperScrollRatio(I)V
    .registers 8
    .parameter "page"

    .prologue
    const/high16 v5, 0x3f80

    .line 878
    iget v0, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    .line 879
    .local v0, layoutScale:F
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 880
    .local v1, scaled:I
    iput v5, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    .line 881
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getRelativeChildOffset(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v2, v3

    .line 882
    .local v2, unscaled:F
    iput v0, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    .line 883
    if-lez v1, :cond_25

    .line 884
    mul-float v3, v5, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    .line 888
    :goto_24
    return-void

    .line 886
    :cond_25
    iput v5, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    goto :goto_24
.end method

.method private createDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)Landroid/graphics/Bitmap;
    .registers 20
    .parameter "orig"
    .parameter "canvas"
    .parameter "padding"
    .parameter "w"
    .parameter "h"
    .parameter "alphaClipPaint"

    .prologue
    .line 1876
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1060012

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 1877
    .local v5, outlineColor:I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1878
    .local v3, b:Landroid/graphics/Bitmap;
    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1880
    new-instance v12, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v12, v2, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1881
    .local v12, src:Landroid/graphics/Rect;
    sub-int v2, p4, p3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    sub-int v4, p5, p3

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1883
    .local v9, scaleFactor:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v11, v2

    .line 1884
    .local v11, scaledWidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v10, v2

    .line 1885
    .local v10, scaledHeight:I
    new-instance v8, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v8, v2, v4, v11, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1888
    .local v8, dst:Landroid/graphics/Rect;
    sub-int v2, p4, v11

    div-int/lit8 v2, v2, 0x2

    sub-int v4, p5, v10

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v8, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1890
    const/4 v2, 0x0

    invoke-virtual {p2, p1, v12, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1891
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    move-object v4, p2

    move v6, v5

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    .line 1893
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1895
    return-object v3
.end method

.method private createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "v"
    .parameter "canvas"
    .parameter "padding"

    .prologue
    .line 1859
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1860
    .local v1, outlineColor:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, p3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1863
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1864
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 1865
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v2, v0, p2, v1, v1}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 1866
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1867
    return-object v0
.end method

.method private createExternalDragOutline(Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "canvas"
    .parameter "padding"

    .prologue
    .line 1904
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1905
    .local v5, r:Landroid/content/res/Resources;
    const v7, 0x1060012

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1906
    .local v4, outlineColor:I
    const v7, 0x7f0a0009

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1907
    .local v2, iconWidth:I
    const v7, 0x7f0a000a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1908
    .local v1, iconHeight:I
    const v7, 0x7f0a004f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1909
    .local v6, rectRadius:I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3e4ccccd

    mul-float/2addr v7, v8

    float-to-int v3, v7

    .line 1910
    .local v3, inset:I
    add-int v7, v2, p2

    add-int v8, v1, p2

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1913
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1914
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v3

    int-to-float v9, v3

    sub-int v10, v2, v3

    int-to-float v10, v10

    sub-int v11, v1, v3

    int-to-float v11, v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v8, v6

    int-to-float v9, v6

    iget-object v10, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1916
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v7, v0, p1, v4, v4}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 1917
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1918
    return-object v0
.end method

.method private doDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V
    .registers 4
    .parameter "d"

    .prologue
    .line 2359
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->cleanupFolderCreation(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 2362
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->onResetScrollArea()V

    .line 2364
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_15

    .line 2365
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2366
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2368
    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    .line 2369
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher2/SpringLoadedDragController;->cancel()V

    .line 2371
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsPageMoving:Z

    if-nez v0, :cond_24

    .line 2372
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->hideOutlines()V

    .line 2374
    :cond_24
    return-void
.end method

.method private drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V
    .registers 13
    .parameter "v"
    .parameter "destCanvas"
    .parameter "padding"
    .parameter "pruneToDrawable"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1788
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 1789
    .local v0, clipRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1791
    const/4 v2, 0x0

    .line 1793
    .local v2, textVisible:Z
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 1794
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_36

    if-eqz p4, :cond_36

    .line 1795
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v1, v4, v7

    .line 1796
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, p3

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1797
    div-int/lit8 v4, p3, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, p3, 0x2

    int-to-float v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1798
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1825
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_32
    :goto_32
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 1826
    return-void

    .line 1800
    .restart local p1
    :cond_36
    instance-of v4, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v4, :cond_6f

    move-object v4, p1

    .line 1803
    check-cast v4, Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderIcon;->getTextVisible()Z

    move-result v4

    if-eqz v4, :cond_4a

    move-object v4, p1

    .line 1804
    check-cast v4, Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    .line 1805
    const/4 v2, 0x1

    .line 1816
    :cond_4a
    :goto_4a
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v5, p3, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v6, p3, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1817
    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1818
    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1821
    if-eqz v2, :cond_32

    .line 1822
    check-cast p1, Lcom/android/launcher2/FolderIcon;

    .end local p1
    invoke-virtual {p1, v7}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    goto :goto_32

    .line 1807
    .restart local p1
    :cond_6f
    instance-of v4, p1, Lcom/android/launcher2/BubbleTextView;

    if-eqz v4, :cond_88

    move-object v3, p1

    .line 1808
    check-cast v3, Lcom/android/launcher2/BubbleTextView;

    .line 1809
    .local v3, tv:Lcom/android/launcher2/BubbleTextView;
    invoke-virtual {v3}, Lcom/android/launcher2/BubbleTextView;->getExtendedPaddingTop()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v3}, Lcom/android/launcher2/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4a

    .line 1811
    .end local v3           #tv:Lcom/android/launcher2/BubbleTextView;
    :cond_88
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_4a

    move-object v3, p1

    .line 1812
    check-cast v3, Landroid/widget/TextView;

    .line 1813
    .local v3, tv:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4a
.end method

.method private findMatchingPageForDragOver(Lcom/android/launcher2/DragView;FFZ)Lcom/android/launcher2/CellLayout;
    .registers 15
    .parameter "dragView"
    .parameter "originX"
    .parameter "originY"
    .parameter "exact"

    .prologue
    .line 2627
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    .line 2628
    .local v5, screenCount:I
    const/4 v0, 0x0

    .line 2629
    .local v0, bestMatchingScreen:Lcom/android/launcher2/CellLayout;
    const v6, 0x7f7fffff

    .line 2631
    .local v6, smallestDistSoFar:F
    const/4 v4, 0x0

    .local v4, i:I
    :goto_9
    if-ge v4, v5, :cond_7f

    .line 2632
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 2634
    .local v2, cl:Lcom/android/launcher2/CellLayout;
    const/4 v8, 0x2

    new-array v7, v8, [F

    const/4 v8, 0x0

    aput p2, v7, v8

    const/4 v8, 0x1

    aput p3, v7, v8

    .line 2637
    .local v7, touchXy:[F
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2638
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2, v7, v8}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2640
    const/4 v8, 0x0

    aget v8, v7, v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_51

    const/4 v8, 0x0

    aget v8, v7, v8

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_51

    const/4 v8, 0x1

    aget v8, v7, v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_51

    const/4 v8, 0x1

    aget v8, v7, v8

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_51

    .line 2665
    .end local v2           #cl:Lcom/android/launcher2/CellLayout;
    .end local v7           #touchXy:[F
    :goto_50
    return-object v2

    .line 2645
    .restart local v2       #cl:Lcom/android/launcher2/CellLayout;
    .restart local v7       #touchXy:[F
    :cond_51
    if-nez p4, :cond_7c

    .line 2647
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 2648
    .local v1, cellLayoutCenter:[F
    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    aput v9, v1, v8

    .line 2649
    const/4 v8, 0x1

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    aput v9, v1, v8

    .line 2650
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/Workspace;->mapPointFromChildToSelf(Landroid/view/View;[F)V

    .line 2652
    const/4 v8, 0x0

    aput p2, v7, v8

    .line 2653
    const/4 v8, 0x1

    aput p3, v7, v8

    .line 2657
    invoke-static {v7, v1}, Lcom/android/launcher2/Workspace;->squaredDistance([F[F)F

    move-result v3

    .line 2659
    .local v3, dist:F
    cmpg-float v8, v3, v6

    if-gez v8, :cond_7c

    .line 2660
    move v6, v3

    .line 2661
    move-object v0, v2

    .line 2631
    .end local v1           #cellLayoutCenter:[F
    .end local v3           #dist:F
    :cond_7c
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .end local v2           #cl:Lcom/android/launcher2/CellLayout;
    .end local v7           #touchXy:[F
    :cond_7f
    move-object v2, v0

    .line 2665
    goto :goto_50
.end method

.method private findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I
    .registers 13
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "layout"
    .parameter "recycle"

    .prologue
    .line 3125
    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    return-object v0
.end method

.method private findNearestVacantArea(IIIILandroid/view/View;Lcom/android/launcher2/CellLayout;[I)[I
    .registers 15
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "layout"
    .parameter "recycle"

    .prologue
    .line 3114
    move-object v0, p6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIILandroid/view/View;[I)[I

    move-result-object v0

    return-object v0
.end method

.method private getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "recycle"

    .prologue
    .line 2675
    if-nez p6, :cond_40

    .line 2676
    const/4 v3, 0x2

    new-array v1, v3, [F

    .line 2683
    .local v1, res:[F
    :goto_5
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr p1, v3

    .line 2684
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr p2, v3

    .line 2690
    sub-int v0, p1, p3

    .line 2691
    .local v0, left:I
    sub-int v2, p2, p4

    .line 2694
    .local v2, top:I
    const/4 v3, 0x0

    invoke-virtual {p5}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    aput v4, v1, v3

    .line 2695
    const/4 v3, 0x1

    invoke-virtual {p5}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    int-to-float v4, v4

    aput v4, v1, v3

    .line 2697
    return-object v1

    .line 2678
    .end local v0           #left:I
    .end local v1           #res:[F
    .end local v2           #top:I
    :cond_40
    move-object v1, p6

    .restart local v1       #res:[F
    goto :goto_5
.end method

.method private getOffsetXForRotation(FII)F
    .registers 9
    .parameter "degrees"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f00

    .line 1103
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1104
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 1105
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1106
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCamera:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1107
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 1109
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mMatrix:Landroid/graphics/Matrix;

    neg-int v1, p2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    neg-int v2, p3

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1110
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v1, p2

    mul-float/2addr v1, v3

    int-to-float v2, p3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1111
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempFloat2:[F

    int-to-float v1, p2

    aput v1, v0, v4

    .line 1112
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempFloat2:[F

    const/4 v1, 0x1

    int-to-float v2, p3

    aput v2, v0, v1

    .line 1113
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempFloat2:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1114
    int-to-float v0, p2

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempFloat2:[F

    aget v1, v1, v4

    sub-float v1, v0, v1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_58

    const/high16 v0, 0x3f80

    :goto_56
    mul-float/2addr v0, v1

    return v0

    :cond_58
    const/high16 v0, -0x4080

    goto :goto_56
.end method

.method private getScrollRange()I
    .registers 3

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private hitsPage(IFF)Z
    .registers 11
    .parameter "index"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 561
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 562
    .local v1, page:Landroid/view/View;
    if-eqz v1, :cond_38

    .line 563
    const/4 v4, 0x2

    new-array v0, v4, [F

    aput p2, v0, v3

    aput p3, v0, v2

    .line 564
    .local v0, localXY:[F
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 565
    aget v4, v0, v3

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_36

    aget v4, v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_36

    aget v4, v0, v2

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_36

    aget v4, v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_36

    .line 568
    .end local v0           #localXY:[F
    :goto_35
    return v2

    .restart local v0       #localXY:[F
    :cond_36
    move v2, v3

    .line 565
    goto :goto_35

    .end local v0           #localXY:[F
    :cond_38
    move v2, v3

    .line 568
    goto :goto_35
.end method

.method private initAnimationArrays()V
    .registers 3

    .prologue
    .line 1545
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 1546
    .local v0, childCount:I
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mOldTranslationXs:[F

    if-eqz v1, :cond_9

    .line 1563
    :goto_8
    return-void

    .line 1547
    :cond_9
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldTranslationXs:[F

    .line 1548
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldTranslationYs:[F

    .line 1549
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldScaleXs:[F

    .line 1550
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldScaleYs:[F

    .line 1551
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphas:[F

    .line 1552
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphaMultipliers:[F

    .line 1553
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldAlphas:[F

    .line 1554
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldRotationYs:[F

    .line 1555
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    .line 1556
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    .line 1557
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    .line 1558
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    .line 1559
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    .line 1560
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphaMultipliers:[F

    .line 1561
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    .line 1562
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewRotationYs:[F

    goto :goto_8
.end method

.method private isDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .registers 3
    .parameter "d"

    .prologue
    .line 2701
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isExternalDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .registers 3
    .parameter "d"

    .prologue
    .line 2705
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    if-eq v0, p0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->isDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;Z)V
    .registers 11
    .parameter "touchXY"
    .parameter "dragInfo"
    .parameter "cellLayout"
    .parameter "insertAtFirst"

    .prologue
    .line 2896
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;ZLcom/android/launcher2/DropTarget$DragObject;)V

    .line 2897
    return-void
.end method

.method private onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;ZLcom/android/launcher2/DropTarget$DragObject;)V
    .registers 41
    .parameter "touchXY"
    .parameter "dragInfo"
    .parameter "cellLayout"
    .parameter "insertAtFirst"
    .parameter "d"

    .prologue
    .line 2909
    new-instance v28, Lcom/android/launcher2/Workspace$11;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/Workspace$11;-><init>(Lcom/android/launcher2/Workspace;)V

    .local v28, exitSpringLoadedRunnable:Ljava/lang/Runnable;
    move-object/from16 v30, p2

    .line 2916
    check-cast v30, Lcom/android/launcher2/ItemInfo;

    .line 2917
    .local v30, info:Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 2918
    .local v5, spanX:I
    move-object/from16 v0, v30

    iget v6, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 2919
    .local v6, spanY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v2, :cond_27

    .line 2920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v5, v2, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 2921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v6, v2, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 2924
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_18e

    const-wide/16 v10, -0x65

    .line 2927
    .local v10, container:J
    :goto_35
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v12

    .line 2928
    .local v12, screen:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_5c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    if-eq v12, v2, :cond_5c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    if-eq v2, v3, :cond_5c

    .line 2930
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 2933
    :cond_5c
    move-object/from16 v0, v30

    instance-of v2, v0, Lcom/android/launcher2/PendingAddItemInfo;

    if-eqz v2, :cond_192

    move-object/from16 v15, p2

    .line 2934
    check-cast v15, Lcom/android/launcher2/PendingAddItemInfo;

    .line 2936
    .local v15, pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;
    const/16 v29, 0x1

    .line 2937
    .local v29, findNearestVacantCell:Z
    iget v2, v15, Lcom/android/launcher2/PendingAddItemInfo;->itemType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b2

    .line 2938
    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v2, 0x1

    aget v4, p1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2940
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher2/ItemInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v8}, Lcom/android/launcher2/Workspace;->willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IZ)Z

    move-result v2

    if-nez v2, :cond_b0

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher2/ItemInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher2/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher2/CellLayout;[I)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 2943
    :cond_b0
    const/16 v29, 0x0

    .line 2946
    :cond_b2
    if-eqz v29, :cond_cb

    .line 2947
    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v2, 0x1

    aget v4, p1, v2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher2/Workspace;->findNearestVacantArea(IIIILandroid/view/View;Lcom/android/launcher2/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2951
    :cond_cb
    new-instance v7, Lcom/android/launcher2/Workspace$12;

    move-object/from16 v8, p0

    move-object v9, v15

    move-object/from16 v13, p3

    invoke-direct/range {v7 .. v13}, Lcom/android/launcher2/Workspace$12;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/PendingAddItemInfo;JILcom/android/launcher2/CellLayout;)V

    .line 2975
    .local v7, onAnimationCompleteRunnable:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v16, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v17, v2, v3

    move-object/from16 v13, p0

    move-object/from16 v14, p3

    move/from16 v18, v5

    move/from16 v19, v6

    invoke-virtual/range {v13 .. v19}, Lcom/android/launcher2/Workspace;->estimateItemPosition(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;IIII)Landroid/graphics/RectF;

    move-result-object v33

    .line 2977
    .local v33, r:Landroid/graphics/RectF;
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v31, v0

    .line 2978
    .local v31, loc:[I
    const/4 v2, 0x0

    move-object/from16 v0, v33

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    aput v3, v31, v2

    .line 2979
    const/4 v2, 0x1

    move-object/from16 v0, v33

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    aput v3, v31, v2

    .line 2980
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setFinalTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    .line 2981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v26

    .line 2983
    .local v26, cellLayoutScale:F
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->resetTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    .line 2985
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/RectF;->width()F

    move-result v2

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v3}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/RectF;->height()F

    move-result v3

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v4}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v27

    .line 2989
    .local v27, dragViewScale:F
    const/4 v2, 0x0

    aget v3, v31, v2

    int-to-float v3, v3

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v4}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float v8, v8, v26

    sub-float/2addr v4, v8

    const/high16 v8, 0x4000

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v31, v2

    .line 2990
    const/4 v2, 0x1

    aget v3, v31, v2

    int-to-float v3, v3

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v4}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/RectF;->height()F

    move-result v8

    mul-float v8, v8, v26

    sub-float/2addr v4, v8

    const/high16 v8, 0x4000

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v31, v2

    .line 2992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    mul-float v4, v27, v26

    move-object/from16 v0, v31

    invoke-virtual {v2, v3, v0, v4, v7}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;[IFLjava/lang/Runnable;)V

    move-object/from16 v9, v30

    .line 3057
    .end local v7           #onAnimationCompleteRunnable:Ljava/lang/Runnable;
    .end local v15           #pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;
    .end local v26           #cellLayoutScale:F
    .end local v27           #dragViewScale:F
    .end local v29           #findNearestVacantCell:Z
    .end local v30           #info:Lcom/android/launcher2/ItemInfo;
    .end local v31           #loc:[I
    .end local v33           #r:Landroid/graphics/RectF;
    .local v9, info:Lcom/android/launcher2/ItemInfo;
    :cond_18d
    :goto_18d
    return-void

    .line 2924
    .end local v9           #info:Lcom/android/launcher2/ItemInfo;
    .end local v10           #container:J
    .end local v12           #screen:I
    .restart local v30       #info:Lcom/android/launcher2/ItemInfo;
    :cond_18e
    const-wide/16 v10, -0x64

    goto/16 :goto_35

    .line 2996
    .restart local v10       #container:J
    .restart local v12       #screen:I
    :cond_192
    const/16 v34, 0x0

    .line 2998
    .local v34, view:Landroid/view/View;
    move-object/from16 v0, v30

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_2f8

    .line 3013
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown item type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3001
    :pswitch_1b8
    move-object/from16 v0, v30

    iget-wide v2, v0, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v13, -0x1

    cmp-long v2, v2, v13

    if-nez v2, :cond_2f4

    move-object/from16 v0, v30

    instance-of v2, v0, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v2, :cond_2f4

    .line 3003
    new-instance v9, Lcom/android/launcher2/ShortcutInfo;

    check-cast v30, Lcom/android/launcher2/ApplicationInfo;

    .end local v30           #info:Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, v30

    invoke-direct {v9, v0}, Lcom/android/launcher2/ShortcutInfo;-><init>(Lcom/android/launcher2/ApplicationInfo;)V

    .line 3005
    .restart local v9       #info:Lcom/android/launcher2/ItemInfo;
    :goto_1d1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const v4, 0x7f030002

    move-object v2, v9

    check-cast v2, Lcom/android/launcher2/ShortcutInfo;

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/launcher2/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v34

    .line 3018
    :goto_1e1
    if-eqz p1, :cond_23d

    .line 3019
    const/4 v2, 0x0

    aget v17, p1, v2

    const/4 v2, 0x1

    aget v18, p1, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v22, v0

    move-object/from16 v16, p0

    move/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v21, p3

    invoke-direct/range {v16 .. v22}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3021
    move-object/from16 v0, v28

    move-object/from16 v1, p5

    iput-object v0, v1, Lcom/android/launcher2/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 3022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v23, v0

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v24, v0

    move-object/from16 v16, p0

    move-object/from16 v17, v34

    move-wide/from16 v18, v10

    move-object/from16 v20, p3

    invoke-virtual/range {v16 .. v24}, Lcom/android/launcher2/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher2/CellLayout;[IZLcom/android/launcher2/DragView;Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_18d

    .line 3026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v19, v0

    const/16 v21, 0x1

    move-object/from16 v16, p0

    move-object/from16 v17, v34

    move-object/from16 v18, p3

    move-object/from16 v20, p5

    invoke-virtual/range {v16 .. v21}, Lcom/android/launcher2/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher2/CellLayout;[ILcom/android/launcher2/DropTarget$DragObject;Z)Z

    move-result v2

    if-nez v2, :cond_18d

    .line 3031
    :cond_23d
    if-eqz p1, :cond_2e7

    .line 3033
    const/4 v2, 0x0

    aget v17, p1, v2

    const/4 v2, 0x1

    aget v18, p1, v2

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v23, v0

    move-object/from16 v16, p0

    move-object/from16 v22, p3

    invoke-direct/range {v16 .. v23}, Lcom/android/launcher2/Workspace;->findNearestVacantArea(IIIILandroid/view/View;Lcom/android/launcher2/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3038
    :goto_25d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v21, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v22, v2, v3

    iget v0, v9, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v23, v0

    iget v0, v9, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v24, v0

    move-object/from16 v16, p0

    move-object/from16 v17, v34

    move-wide/from16 v18, v10

    move/from16 v20, v12

    move/from16 v25, p4

    invoke-virtual/range {v16 .. v25}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 3040
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 3041
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 3042
    .local v32, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 3044
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v32

    iget v13, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, v32

    iget v14, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-static/range {v8 .. v14}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 3047
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    if-eqz v2, :cond_18d

    .line 3051
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setFinalTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    .line 3052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3054
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->resetTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    goto/16 :goto_18d

    .line 3009
    .end local v9           #info:Lcom/android/launcher2/ItemInfo;
    .end local v32           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .restart local v30       #info:Lcom/android/launcher2/ItemInfo;
    :pswitch_2ce
    const v3, 0x7f03000a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v2, v30

    check-cast v2, Lcom/android/launcher2/FolderInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    move-object/from16 v0, p3

    invoke-static {v3, v4, v0, v2, v8}, Lcom/android/launcher2/FolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/FolderInfo;Lcom/android/launcher2/IconCache;)Lcom/android/launcher2/FolderIcon;

    move-result-object v34

    move-object/from16 v9, v30

    .line 3011
    .end local v30           #info:Lcom/android/launcher2/ItemInfo;
    .restart local v9       #info:Lcom/android/launcher2/ItemInfo;
    goto/16 :goto_1e1

    .line 3036
    :cond_2e7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    goto/16 :goto_25d

    .end local v9           #info:Lcom/android/launcher2/ItemInfo;
    .restart local v30       #info:Lcom/android/launcher2/ItemInfo;
    :cond_2f4
    move-object/from16 v9, v30

    .end local v30           #info:Lcom/android/launcher2/ItemInfo;
    .restart local v9       #info:Lcom/android/launcher2/ItemInfo;
    goto/16 :goto_1d1

    .line 2998
    :pswitch_data_2f8
    .packed-switch 0x0
        :pswitch_1b8
        :pswitch_1b8
        :pswitch_2ce
    .end packed-switch
.end method

.method private onResetScrollArea()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3262
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_d

    .line 3264
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 3268
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 3270
    :cond_d
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 3271
    return-void
.end method

.method private screenScrolledLargeUI(I)V
    .registers 13
    .parameter "screenCenter"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1142
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1184
    :goto_8
    return-void

    .line 1143
    :cond_9
    const/4 v3, 0x0

    .line 1144
    .local v3, isInOverscroll:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_b4

    .line 1145
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1146
    .local v1, cl:Lcom/android/launcher2/CellLayout;
    if-eqz v1, :cond_9b

    .line 1147
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher2/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v5

    .line 1148
    .local v5, scrollProgress:F
    const/high16 v7, 0x4148

    mul-float v4, v7, v5

    .line 1149
    .local v4, rotation:F
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v10

    invoke-direct {p0, v4, v7, v10}, Lcom/android/launcher2/Workspace;->getOffsetXForRotation(FII)F

    move-result v6

    .line 1153
    .local v6, translationX:F
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v7

    if-nez v7, :cond_7d

    .line 1154
    iget v7, p0, Lcom/android/launcher2/Workspace;->mOverScrollX:I

    if-gez v7, :cond_39

    if-eqz v2, :cond_47

    :cond_39
    iget v7, p0, Lcom/android/launcher2/Workspace;->mOverScrollX:I

    iget v10, p0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    if-le v7, v10, :cond_a4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_a4

    .line 1156
    :cond_47
    const/4 v3, 0x1

    .line 1157
    const/high16 v7, -0x4080

    mul-float/2addr v4, v7

    .line 1158
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Workspace;->overScrollBackgroundAlphaInterpolator(F)F

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    .line 1160
    iput v2, p0, Lcom/android/launcher2/Workspace;->mOverScrollPageIndex:I

    .line 1161
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    if-nez v2, :cond_9f

    move v7, v8

    :goto_5f
    invoke-virtual {v1, v10, v7}, Lcom/android/launcher2/CellLayout;->setOverScrollAmount(FZ)V

    .line 1162
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v10, v7

    if-nez v2, :cond_a1

    const/high16 v7, 0x3f40

    :goto_6b
    mul-float/2addr v7, v10

    invoke-virtual {v1, v7}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 1163
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v10, 0x3f00

    mul-float/2addr v7, v10

    invoke-virtual {v1, v7}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    .line 1164
    invoke-virtual {v1, v8}, Lcom/android/launcher2/CellLayout;->setOverscrollTransformsDirty(Z)V

    .line 1170
    :cond_7d
    :goto_7d
    invoke-virtual {v1, v6}, Lcom/android/launcher2/CellLayout;->setFastTranslationX(F)V

    .line 1171
    invoke-virtual {v1, v4}, Lcom/android/launcher2/CellLayout;->setFastRotationY(F)V

    .line 1172
    iget-boolean v7, p0, Lcom/android/launcher2/Workspace;->mFadeInAdjacentScreens:Z

    if-eqz v7, :cond_98

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v7

    if-nez v7, :cond_98

    .line 1173
    const/high16 v7, 0x3f80

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float v0, v7, v10

    .line 1174
    .local v0, alpha:F
    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayout;->setFastAlpha(F)V

    .line 1176
    .end local v0           #alpha:F
    :cond_98
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->fastInvalidate()V

    .line 1144
    .end local v4           #rotation:F
    .end local v5           #scrollProgress:F
    .end local v6           #translationX:F
    :cond_9b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    .restart local v4       #rotation:F
    .restart local v5       #scrollProgress:F
    .restart local v6       #translationX:F
    :cond_9f
    move v7, v9

    .line 1161
    goto :goto_5f

    .line 1162
    :cond_a1
    const/high16 v7, 0x3e80

    goto :goto_6b

    .line 1165
    :cond_a4
    iget v7, p0, Lcom/android/launcher2/Workspace;->mOverScrollPageIndex:I

    if-eq v7, v2, :cond_7d

    .line 1166
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    goto :goto_7d

    .line 1179
    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    .end local v4           #rotation:F
    .end local v5           #scrollProgress:F
    .end local v6           #translationX:F
    :cond_b4
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v7

    if-nez v7, :cond_d4

    if-nez v3, :cond_d4

    .line 1180
    invoke-virtual {p0, v9}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->resetOverscrollTransforms()V

    .line 1181
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->resetOverscrollTransforms()V

    .line 1183
    :cond_d4
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    goto/16 :goto_8
.end method

.method private screenScrolledStandardUI(I)V
    .registers 11
    .parameter "screenCenter"

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 1187
    iget v6, p0, Lcom/android/launcher2/Workspace;->mOverScrollX:I

    if-ltz v6, :cond_d

    iget v6, p0, Lcom/android/launcher2/Workspace;->mOverScrollX:I

    iget v7, p0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    if-le v6, v7, :cond_62

    .line 1188
    :cond_d
    iget v6, p0, Lcom/android/launcher2/Workspace;->mOverScrollX:I

    if-gez v6, :cond_58

    move v1, v4

    .line 1189
    .local v1, index:I
    :goto_12
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1190
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 1191
    .local v3, scrollProgress:F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    if-nez v1, :cond_23

    move v4, v5

    :cond_23
    invoke-virtual {v0, v6, v4}, Lcom/android/launcher2/CellLayout;->setOverScrollAmount(FZ)V

    .line 1192
    const/high16 v4, -0x3e40

    mul-float v2, v4, v3

    .line 1193
    .local v2, rotation:F
    iget v4, p0, Lcom/android/launcher2/Workspace;->mDensity:F

    sget v6, Lcom/android/launcher2/Workspace;->CAMERA_DISTANCE:F

    mul-float/2addr v4, v6

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setCameraDistance(F)V

    .line 1194
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v6, v4

    if-nez v1, :cond_5f

    const/high16 v4, 0x3f40

    :goto_3b
    mul-float/2addr v4, v6

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 1195
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x3f00

    mul-float/2addr v4, v6

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    .line 1196
    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 1197
    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayout;->setOverscrollTransformsDirty(Z)V

    .line 1198
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->setFadeForOverScroll(F)V

    .line 1209
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    .end local v1           #index:I
    .end local v2           #rotation:F
    .end local v3           #scrollProgress:F
    :cond_57
    :goto_57
    return-void

    .line 1188
    :cond_58
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    goto :goto_12

    .line 1194
    .restart local v0       #cl:Lcom/android/launcher2/CellLayout;
    .restart local v1       #index:I
    .restart local v2       #rotation:F
    .restart local v3       #scrollProgress:F
    :cond_5f
    const/high16 v4, 0x3e80

    goto :goto_3b

    .line 1200
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    .end local v1           #index:I
    .end local v2           #rotation:F
    .end local v3           #scrollProgress:F
    :cond_62
    iget v5, p0, Lcom/android/launcher2/Workspace;->mOverscrollFade:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_6b

    .line 1201
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->setFadeForOverScroll(F)V

    .line 1204
    :cond_6b
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v5

    if-nez v5, :cond_57

    .line 1205
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->resetOverscrollTransforms()V

    .line 1206
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->resetOverscrollTransforms()V

    goto :goto_57
.end method

.method private static squaredDistance([F[F)F
    .registers 7
    .parameter "point1"
    .parameter "point2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2570
    aget v2, p0, v3

    aget v3, p1, v3

    sub-float v0, v2, v3

    .line 2571
    .local v0, distanceX:F
    aget v2, p1, v4

    aget v3, p1, v4

    sub-float v1, v2, v3

    .line 2572
    .local v1, distanceY:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method private syncChildrenLayersEnabledOnVisiblePages()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 1294
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v4, :cond_3e

    .line 1295
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getVisiblePages([I)V

    .line 1296
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mTempVisiblePagesRange:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 1297
    .local v1, leftScreen:I
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mTempVisiblePagesRange:[I

    aget v3, v4, v7

    .line 1298
    .local v3, rightScreen:I
    if-eq v1, v6, :cond_3e

    if-eq v3, v6, :cond_3e

    .line 1299
    move v0, v1

    .local v0, i:I
    :goto_19
    if-gt v0, v3, :cond_3e

    .line 1300
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1301
    .local v2, page:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3b

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v4

    const v5, 0x3caaaaab

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3b

    .line 1303
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setChildrenLayersEnabled(Z)V

    .line 1299
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1308
    .end local v0           #i:I
    .end local v1           #leftScreen:I
    .end local v2           #page:Landroid/view/ViewGroup;
    .end local v3           #rightScreen:I
    :cond_3e
    return-void
.end method

.method private syncWallpaperOffsetWithScroll()V
    .registers 4

    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v0

    .line 831
    .local v0, enableWallpaperEffects:Z
    if-eqz v0, :cond_f

    .line 832
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->wallpaperOffsetForCurrentScroll()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalX(F)V

    .line 834
    :cond_f
    return-void
.end method

.method private updateChildrenLayersEnabled()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1410
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v6

    if-nez v6, :cond_c

    iget-boolean v6, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v6, :cond_3c

    :cond_c
    move v3, v4

    .line 1411
    .local v3, small:Z
    :goto_d
    iget-boolean v6, p0, Lcom/android/launcher2/Workspace;->mAnimatingViewIntoPlace:Z

    if-nez v6, :cond_15

    iget-boolean v6, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    if-eqz v6, :cond_3e

    :cond_15
    move v0, v4

    .line 1412
    .local v0, dragging:Z
    :goto_16
    if-nez v3, :cond_20

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result v6

    if-eqz v6, :cond_40

    :cond_20
    move v1, v4

    .line 1414
    .local v1, enableChildrenLayers:Z
    :goto_21
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    if-eq v1, v4, :cond_42

    .line 1415
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    .line 1419
    if-nez v1, :cond_42

    .line 1420
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2a
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v4

    if-ge v2, v4, :cond_42

    .line 1421
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setChildrenLayersEnabled(Z)V

    .line 1420
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .end local v0           #dragging:Z
    .end local v1           #enableChildrenLayers:Z
    .end local v2           #i:I
    .end local v3           #small:Z
    :cond_3c
    move v3, v5

    .line 1410
    goto :goto_d

    .restart local v3       #small:Z
    :cond_3e
    move v0, v5

    .line 1411
    goto :goto_16

    .restart local v0       #dragging:Z
    :cond_40
    move v1, v5

    .line 1412
    goto :goto_21

    .line 1425
    .restart local v1       #enableChildrenLayers:Z
    :cond_42
    return-void
.end method

.method private updateWallpaperOffsets()V
    .registers 7

    .prologue
    .line 841
    const/4 v1, 0x0

    .line 842
    .local v1, updateNow:Z
    const/4 v0, 0x1

    .line 843
    .local v0, keepUpdating:Z
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    if-eqz v2, :cond_2f

    .line 844
    const/4 v1, 0x1

    .line 845
    const/4 v0, 0x0

    .line 846
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->jumpToFinal()V

    .line 847
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 851
    :goto_10
    if-eqz v1, :cond_29

    .line 852
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    if-eqz v2, :cond_29

    .line 853
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrY()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 857
    :cond_29
    if-eqz v0, :cond_2e

    .line 858
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->fastInvalidate()V

    .line 860
    :cond_2e
    return-void

    .line 849
    :cond_2f
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->computeScrollOffset()Z

    move-result v0

    move v1, v0

    goto :goto_10
.end method

.method private validateDrag(Landroid/view/DragEvent;)Landroid/util/Pair;
    .registers 11
    .parameter "event"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/DragEvent;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2390
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v4

    .line 2391
    .local v4, model:Lcom/android/launcher2/LauncherModel;
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 2392
    .local v0, desc:Landroid/content/ClipDescription;
    invoke-virtual {v0}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v3

    .line 2393
    .local v3, mimeTypeCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    if-ge v1, v3, :cond_41

    .line 2394
    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    .line 2395
    .local v2, mimeType:Ljava/lang/String;
    const-string v6, "com.android.launcher/shortcut"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 2396
    new-instance v6, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v8, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2405
    .end local v2           #mimeType:Ljava/lang/String;
    :goto_27
    return-object v6

    .line 2398
    .restart local v2       #mimeType:Ljava/lang/String;
    :cond_28
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6, v2}, Lcom/android/launcher2/LauncherModel;->resolveWidgetsForMimeType(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 2400
    .local v5, widgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3e

    .line 2401
    new-instance v6, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_27

    .line 2393
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .end local v2           #mimeType:Ljava/lang/String;
    .end local v5           #widgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;>;"
    :cond_41
    move-object v6, v7

    .line 2405
    goto :goto_27
.end method

.method private wallpaperOffsetForCurrentScroll()F
    .registers 11

    .prologue
    const/high16 v9, 0x3f80

    .line 802
    iget v6, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 803
    .local v6, wallpaperTravelWidth:I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 804
    iget v6, p0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    .line 808
    :cond_c
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    div-float v8, v9, v8

    invoke-virtual {v7, v8, v9}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 813
    iget v1, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    .line 814
    .local v1, layoutScale:F
    iput v9, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    .line 815
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getScrollRange()I

    move-result v5

    .line 818
    .local v5, scrollRange:I
    const/4 v7, 0x0

    iget v8, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    iget v9, p0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v0, v7

    .line 819
    .local v0, adjustedScrollX:F
    iget v7, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    mul-float/2addr v0, v7

    .line 820
    iput v1, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    .line 822
    int-to-float v7, v5

    div-float v4, v0, v7

    .line 824
    .local v4, scrollProgress:F
    int-to-float v7, v6

    mul-float/2addr v7, v4

    iget v8, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    sub-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float v3, v7, v8

    .line 826
    .local v3, offsetInDips:F
    iget v7, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    int-to-float v7, v7

    div-float v2, v3, v7

    .line 827
    .local v2, offset:F
    return v2
.end method

.method private wallpaperTravelToScreenWidthRatio(II)F
    .registers 12
    .parameter "width"
    .parameter "height"

    .prologue
    .line 734
    int-to-float v7, p1

    int-to-float v8, p2

    div-float v4, v7, v8

    .line 741
    .local v4, aspectRatio:F
    const v0, 0x3fcccccd

    .line 742
    .local v0, ASPECT_RATIO_LANDSCAPE:F
    const/high16 v1, 0x3f20

    .line 743
    .local v1, ASPECT_RATIO_PORTRAIT:F
    const/high16 v2, 0x3fc0

    .line 744
    .local v2, WALLPAPER_WIDTH_TO_SCREEN_RATIO_LANDSCAPE:F
    const v3, 0x3f99999a

    .line 751
    .local v3, WALLPAPER_WIDTH_TO_SCREEN_RATIO_PORTRAIT:F
    const v5, 0x3e9d89d7

    .line 754
    .local v5, x:F
    const v6, 0x3f80fc10

    .line 755
    .local v6, y:F
    const v7, 0x3e9d89d7

    mul-float/2addr v7, v4

    const v8, 0x3f80fc10

    add-float/2addr v7, v8

    return v7
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .registers 16
    .parameter "d"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2010
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    if-eq v0, p0, :cond_cc

    .line 2012
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-nez v0, :cond_d

    move v0, v11

    .line 2067
    :goto_c
    return v0

    .line 2015
    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v11

    goto :goto_c

    .line 2017
    :cond_15
    iget v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    iget v2, p1, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    iget v3, p1, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    iget v4, p1, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    iget-object v5, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 2021
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 2022
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToSibling(Landroid/view/View;[F)V

    .line 2027
    :goto_3d
    const/4 v3, 0x1

    .line 2028
    .local v3, spanX:I
    const/4 v4, 0x1

    .line 2029
    .local v4, spanY:I
    const/4 v10, 0x0

    .line 2030
    .local v10, ignoreView:Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v0, :cond_79

    .line 2031
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 2032
    .local v7, dragCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    iget v3, v7, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 2033
    iget v4, v7, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 2034
    iget-object v10, v7, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2041
    .end local v7           #dragCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    :goto_4c
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v11

    float-to-int v1, v0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v12

    float-to-int v2, v0

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2043
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    invoke-virtual {p0, v0, v1, v2, v12}, Lcom/android/launcher2/Workspace;->willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IZ)Z

    move-result v0

    if-eqz v0, :cond_82

    move v0, v12

    .line 2044
    goto :goto_c

    .line 2024
    .end local v3           #spanX:I
    .end local v4           #spanY:I
    .end local v10           #ignoreView:Landroid/view/View;
    :cond_71
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {p0, v0, v1, v13}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto :goto_3d

    .line 2036
    .restart local v3       #spanX:I
    .restart local v4       #spanY:I
    .restart local v10       #ignoreView:Landroid/view/View;
    :cond_79
    iget-object v8, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v8, Lcom/android/launcher2/ItemInfo;

    .line 2037
    .local v8, dragInfo:Lcom/android/launcher2/ItemInfo;
    iget v3, v8, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 2038
    iget v4, v8, Lcom/android/launcher2/ItemInfo;->spanY:I

    goto :goto_4c

    .line 2046
    .end local v8           #dragInfo:Lcom/android/launcher2/ItemInfo;
    :cond_82
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher2/CellLayout;[I)Z

    move-result v0

    if-eqz v0, :cond_93

    move v0, v12

    .line 2048
    goto/16 :goto_c

    .line 2052
    :cond_93
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v13, v3, v4, v10}, Lcom/android/launcher2/CellLayout;->findCellForSpanIgnoring([IIILandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_cc

    .line 2055
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 2056
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v9

    .line 2057
    .local v9, hotseat:Lcom/android/launcher2/Hotseat;
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    aget v0, v0, v11

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    aget v1, v1, v12

    invoke-virtual {v9, v0, v1}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v0

    invoke-static {v0}, Lcom/android/launcher2/Hotseat;->isAllAppsButtonRank(I)Z

    move-result v0

    if-eqz v0, :cond_c4

    move v0, v11

    .line 2059
    goto/16 :goto_c

    .line 2063
    .end local v9           #hotseat:Lcom/android/launcher2/Hotseat;
    :cond_c4
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage()V

    move v0, v11

    .line 2064
    goto/16 :goto_c

    .end local v3           #spanX:I
    .end local v4           #spanY:I
    .end local v10           #ignoreView:Landroid/view/View;
    :cond_cc
    move v0, v12

    .line 2067
    goto/16 :goto_c
.end method

.method addApplicationShortcut(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/CellLayout;JIIIZII)V
    .registers 24
    .parameter "info"
    .parameter "target"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "insertAtFirst"
    .parameter "intersectX"
    .parameter "intersectY"

    .prologue
    .line 1992
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const v2, 0x7f030002

    invoke-virtual {v0, v2, p2, p1}, Lcom/android/launcher2/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v12

    .line 1994
    .local v12, view:Landroid/view/View;
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1995
    .local v1, cellXY:[I
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p2

    move/from16 v4, p9

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersects([IIIII)Z

    .line 1996
    const/4 v0, 0x0

    aget v7, v1, v0

    const/4 v0, 0x1

    aget v8, v1, v0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v2, p0

    move-object v3, v12

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v11, p8

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 1997
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v0, 0x0

    aget v7, v1, v0

    const/4 v0, 0x1

    aget v8, v1, v0

    move-object v3, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    invoke-static/range {v2 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 1999
    return-void
.end method

.method public addExternalItemToScreen(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;)Z
    .registers 7
    .parameter "dragInfo"
    .parameter "layout"

    .prologue
    const/4 v0, 0x0

    .line 2886
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempEstimate:[I

    iget v2, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-virtual {p2, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2887
    iget-object v1, p1, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;Z)V

    .line 2888
    const/4 v0, 0x1

    .line 2891
    :goto_13
    return v0

    .line 2890
    :cond_14
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage()V

    goto :goto_13
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 6
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1364
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1365
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1366
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_12

    .line 1367
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1372
    .end local v0           #openFolder:Lcom/android/launcher2/Folder;
    :cond_11
    :goto_11
    return-void

    .line 1369
    .restart local v0       #openFolder:Lcom/android/launcher2/Folder;
    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_11
.end method

.method addInScreen(Landroid/view/View;JIIIII)V
    .registers 19
    .parameter "child"
    .parameter "container"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 471
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 472
    return-void
.end method

.method addInScreen(Landroid/view/View;JIIIIIZ)V
    .registers 17
    .parameter "child"
    .parameter "container"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 488
    const-wide/16 v1, -0x64

    cmp-long v1, p2, v1

    if-nez v1, :cond_3b

    .line 489
    if-ltz p4, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    if-lt p4, v1, :cond_3b

    .line 490
    :cond_e
    const-string v1, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The screen must be >= 0 and < "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " (was "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "); skipping child"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    .end local p1
    :cond_3a
    :goto_3a
    return-void

    .line 497
    .restart local p1
    :cond_3b
    const-wide/16 v1, -0x65

    cmp-long v1, p2, v1

    if-nez v1, :cond_e9

    .line 498
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 499
    .local v0, layout:Lcom/android/launcher2/CellLayout;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 502
    instance-of v1, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v1, :cond_5a

    move-object v1, p1

    .line 503
    check-cast v1, Lcom/android/launcher2/FolderIcon;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    .line 506
    :cond_5a
    if-gez p4, :cond_d3

    .line 507
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result p4

    .line 524
    :goto_66
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 525
    .local v4, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    if-nez v4, :cond_104

    .line 526
    new-instance v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .end local v4           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-direct {v4, p5, p6, p7, p8}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 534
    .restart local v4       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :goto_73
    if-gez p7, :cond_7a

    if-gez p8, :cond_7a

    .line 535
    const/4 v1, 0x0

    iput-boolean v1, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 539
    :cond_7a
    invoke-static/range {p2 .. p8}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v3

    .line 540
    .local v3, childId:I
    instance-of v1, p1, Lcom/android/launcher2/Folder;

    if-nez v1, :cond_10e

    const/4 v5, 0x1

    .line 541
    .local v5, markCellsAsOccupied:Z
    :goto_83
    if-eqz p9, :cond_111

    const/4 v2, 0x0

    :goto_86
    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    move-result v1

    if-nez v1, :cond_b9

    .line 545
    const-string v1, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add to item at ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") to CellLayout"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_b9
    instance-of v1, p1, Lcom/android/launcher2/Folder;

    if-nez v1, :cond_c6

    .line 549
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 550
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 552
    :cond_c6
    instance-of v1, p1, Lcom/android/launcher2/DropTarget;

    if-eqz v1, :cond_3a

    .line 553
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    check-cast p1, Lcom/android/launcher2/DropTarget;

    .end local p1
    invoke-virtual {v1, p1}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    goto/16 :goto_3a

    .line 511
    .end local v3           #childId:I
    .end local v4           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v5           #markCellsAsOccupied:Z
    .restart local p1
    :cond_d3
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/launcher2/Hotseat;->getCellXFromOrder(I)I

    move-result p5

    .line 512
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/launcher2/Hotseat;->getCellYFromOrder(I)I

    move-result p6

    goto/16 :goto_66

    .line 516
    .end local v0           #layout:Lcom/android/launcher2/CellLayout;
    :cond_e9
    instance-of v1, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v1, :cond_f4

    move-object v1, p1

    .line 517
    check-cast v1, Lcom/android/launcher2/FolderIcon;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    .line 520
    :cond_f4
    invoke-virtual {p0, p4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 521
    .restart local v0       #layout:Lcom/android/launcher2/CellLayout;
    new-instance v1, Lcom/android/launcher2/IconKeyEventListener;

    invoke-direct {v1}, Lcom/android/launcher2/IconKeyEventListener;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/16 :goto_66

    .line 528
    .restart local v4       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_104
    iput p5, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 529
    iput p6, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 530
    iput p7, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 531
    iput p8, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    goto/16 :goto_73

    .line 540
    .restart local v3       #childId:I
    :cond_10e
    const/4 v5, 0x0

    goto/16 :goto_83

    .line 541
    .restart local v5       #markCellsAsOccupied:Z
    :cond_111
    const/4 v2, -0x1

    goto/16 :goto_86
.end method

.method addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher2/CellLayout;[ILcom/android/launcher2/DropTarget$DragObject;Z)Z
    .registers 12
    .parameter "newView"
    .parameter "target"
    .parameter "targetCell"
    .parameter "d"
    .parameter "external"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2156
    aget v4, p3, v3

    aget v5, p3, v2

    invoke-virtual {p2, v4, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 2157
    .local v0, dropOverView:Landroid/view/View;
    instance-of v4, v0, Lcom/android/launcher2/FolderIcon;

    if-eqz v4, :cond_2e

    move-object v1, v0

    .line 2158
    check-cast v1, Lcom/android/launcher2/FolderIcon;

    .line 2159
    .local v1, fi:Lcom/android/launcher2/FolderIcon;
    iget-object v4, p4, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcom/android/launcher2/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 2160
    invoke-virtual {v1, p4}, Lcom/android/launcher2/FolderIcon;->onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 2163
    if-nez p5, :cond_2d

    .line 2164
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v4, v4, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 2169
    .end local v1           #fi:Lcom/android/launcher2/FolderIcon;
    :cond_2d
    :goto_2d
    return v2

    :cond_2e
    move v2, v3

    goto :goto_2d
.end method

.method backgroundAlphaInterpolator(F)F
    .registers 6
    .parameter "r"

    .prologue
    .line 1118
    const v0, 0x3dcccccd

    .line 1119
    .local v0, pivotA:F
    const v1, 0x3ecccccd

    .line 1120
    .local v1, pivotB:F
    cmpg-float v2, p1, v0

    if-gez v2, :cond_c

    .line 1121
    const/4 v2, 0x0

    .line 1125
    :goto_b
    return v2

    .line 1122
    :cond_c
    cmpl-float v2, p1, v1

    if-lez v2, :cond_13

    .line 1123
    const/high16 v2, 0x3f80

    goto :goto_b

    .line 1125
    :cond_13
    sub-float v2, p1, v0

    sub-float v3, v1, v0

    div-float/2addr v2, v3

    goto :goto_b
.end method

.method public beginDragShared(Landroid/view/View;Lcom/android/launcher2/DragSource;)V
    .registers 26
    .parameter "child"
    .parameter "source"

    .prologue
    .line 1946
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 1949
    .local v20, r:Landroid/content/res/Resources;
    sget v12, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 1952
    .local v12, bitmapPadding:I
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v12}, Lcom/android/launcher2/Workspace;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1954
    .local v4, b:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 1956
    .local v13, bmpWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v7}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)V

    .line 1957
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    const/4 v7, 0x0

    aget v3, v3, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v7, v13

    div-int/lit8 v7, v7, 0x2

    add-int v5, v3, v7

    .line 1958
    .local v5, dragLayerX:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    const/4 v7, 0x1

    aget v3, v3, v7

    div-int/lit8 v7, v12, 0x2

    sub-int v6, v3, v7

    .line 1960
    .local v6, dragLayerY:I
    const/4 v10, 0x0

    .line 1961
    .local v10, dragVisualizeOffset:Landroid/graphics/Point;
    const/4 v11, 0x0

    .line 1962
    .local v11, dragRect:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/BubbleTextView;

    if-nez v3, :cond_51

    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/PagedViewIcon;

    if-eqz v3, :cond_a8

    .line 1963
    :cond_51
    const v3, 0x7f0a0020

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 1964
    .local v17, iconSize:I
    const v3, 0x7f0a0019

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 1965
    .local v16, iconPaddingTop:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v22

    .line 1966
    .local v22, top:I
    sub-int v3, v13, v17

    div-int/lit8 v18, v3, 0x2

    .line 1967
    .local v18, left:I
    add-int v21, v18, v17

    .line 1968
    .local v21, right:I
    add-int v14, v22, v17

    .line 1969
    .local v14, bottom:I
    add-int v6, v6, v22

    .line 1972
    new-instance v10, Landroid/graphics/Point;

    .end local v10           #dragVisualizeOffset:Landroid/graphics/Point;
    neg-int v3, v12

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v7, v12, 0x2

    sub-int v7, v16, v7

    invoke-direct {v10, v3, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 1973
    .restart local v10       #dragVisualizeOffset:Landroid/graphics/Point;
    new-instance v11, Landroid/graphics/Rect;

    .end local v11           #dragRect:Landroid/graphics/Rect;
    move/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-direct {v11, v0, v1, v2, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1980
    .end local v14           #bottom:I
    .end local v16           #iconPaddingTop:I
    .end local v17           #iconSize:I
    .end local v18           #left:I
    .end local v21           #right:I
    .end local v22           #top:I
    .restart local v11       #dragRect:Landroid/graphics/Rect;
    :cond_88
    :goto_88
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/BubbleTextView;

    if-eqz v3, :cond_95

    move-object/from16 v15, p1

    .line 1981
    check-cast v15, Lcom/android/launcher2/BubbleTextView;

    .line 1982
    .local v15, icon:Lcom/android/launcher2/BubbleTextView;
    invoke-virtual {v15}, Lcom/android/launcher2/BubbleTextView;->clearPressedOrFocusedBackground()V

    .line 1985
    .end local v15           #icon:Lcom/android/launcher2/BubbleTextView;
    :cond_95
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    sget v9, Lcom/android/launcher2/DragController;->DRAG_ACTION_MOVE:I

    move-object/from16 v7, p2

    invoke-virtual/range {v3 .. v11}, Lcom/android/launcher2/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 1987
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1988
    return-void

    .line 1974
    :cond_a8
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/FolderIcon;

    if-eqz v3, :cond_88

    .line 1975
    const v3, 0x7f0a0038

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 1976
    .local v19, previewSize:I
    new-instance v11, Landroid/graphics/Rect;

    .end local v11           #dragRect:Landroid/graphics/Rect;
    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    move/from16 v0, v19

    invoke-direct {v11, v3, v7, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v11       #dragRect:Landroid/graphics/Rect;
    goto :goto_88
.end method

.method public buildPageHardwareLayers()V
    .registers 5

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 357
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 358
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v0, :cond_19

    .line 359
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 360
    .local v1, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->buildChildrenLayer()V

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 363
    .end local v0           #childCount:I
    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    .end local v2           #i:I
    :cond_19
    return-void
.end method

.method public changeState(Lcom/android/launcher2/Workspace$State;)V
    .registers 3
    .parameter "shrinkState"

    .prologue
    .line 1566
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;Z)V

    .line 1567
    return-void
.end method

.method changeState(Lcom/android/launcher2/Workspace$State;Z)V
    .registers 4
    .parameter "state"
    .parameter "animated"

    .prologue
    .line 1570
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZI)V

    .line 1571
    return-void
.end method

.method changeState(Lcom/android/launcher2/Workspace$State;ZI)V
    .registers 30
    .parameter "state"
    .parameter "animated"
    .parameter "delay"

    .prologue
    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_d

    .line 1778
    :goto_c
    return-void

    .line 1577
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mFirstLayout:Z

    move/from16 v23, v0

    if-eqz v23, :cond_24

    .line 1580
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    .line 1581
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

    goto :goto_c

    .line 1586
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->initAnimationArrays()V

    .line 1589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v23, v0

    if-eqz v23, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1590
    :cond_38
    new-instance v23, Landroid/animation/AnimatorSet;

    invoke-direct/range {v23 .. v23}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    .line 1593
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mNextPage:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1e1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mNextPage:I

    move/from16 v23, v0

    :goto_57
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 1595
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 1596
    .local v12, oldState:Lcom/android/launcher2/Workspace$State;
    sget-object v23, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v23

    if-ne v12, v0, :cond_1e9

    const/4 v13, 0x1

    .line 1597
    .local v13, oldStateIsNormal:Z
    :goto_69
    sget-object v23, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v23

    if-ne v12, v0, :cond_1ec

    const/4 v14, 0x1

    .line 1598
    .local v14, oldStateIsSmall:Z
    :goto_70
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 1599
    sget-object v23, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1ef

    const/16 v17, 0x1

    .line 1600
    .local v17, stateIsNormal:Z
    :goto_80
    sget-object v23, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1f3

    const/16 v19, 0x1

    .line 1601
    .local v19, stateIsSpringLoaded:Z
    :goto_8a
    sget-object v23, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1f7

    const/16 v18, 0x1

    .line 1602
    .local v18, stateIsSmall:Z
    :goto_94
    const/high16 v9, 0x3f80

    .line 1603
    .local v9, finalScaleFactor:F
    if-eqz v19, :cond_1fb

    const/high16 v8, 0x3f80

    .line 1604
    .local v8, finalBackgroundAlpha:F
    :goto_9a
    const/16 v20, 0x0

    .line 1605
    .local v20, translationX:F
    const/16 v21, 0x0

    .line 1606
    .local v21, translationY:F
    const/16 v22, 0x1

    .line 1608
    .local v22, zoomIn:Z
    sget-object v23, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_20b

    .line 1609
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mSpringLoadedShrinkFactor:F

    move/from16 v24, v0

    if-eqz v18, :cond_1fe

    const v23, 0x3dcccccd

    :goto_b3
    sub-float v9, v24, v23

    .line 1610
    if-eqz v13, :cond_202

    if-eqz v18, :cond_202

    .line 1611
    const/16 v22, 0x0

    .line 1612
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher2/Workspace;->setLayoutScale(F)V

    .line 1613
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled()V

    .line 1622
    :goto_c3
    if-eqz v22, :cond_216

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090004

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 1625
    .local v5, duration:I
    :goto_d0
    const/4 v10, 0x0

    .local v10, i:I
    :goto_d1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_261

    .line 1626
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 1627
    .local v4, cl:Lcom/android/launcher2/CellLayout;
    const/4 v15, 0x0

    .line 1628
    .local v15, rotation:F
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getAlpha()F

    move-result v11

    .line 1629
    .local v11, initialAlpha:F
    const/high16 v7, 0x3f80

    .line 1630
    .local v7, finalAlphaMultiplierValue:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mFadeInAdjacentScreens:Z

    move/from16 v23, v0

    if-eqz v23, :cond_fc

    if-nez v19, :cond_fc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v10, v0, :cond_223

    :cond_fc
    const/high16 v6, 0x3f80

    .line 1634
    .local v6, finalAlpha:F
    :goto_fe
    if-eqz v14, :cond_102

    if-nez v17, :cond_106

    :cond_102
    if-eqz v13, :cond_115

    if-eqz v18, :cond_115

    .line 1638
    :cond_106
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-eq v10, v0, :cond_112

    if-nez p2, :cond_226

    .line 1639
    :cond_112
    const/high16 v6, 0x3f80

    .line 1640
    const/4 v7, 0x0

    .line 1648
    :cond_115
    :goto_115
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v23

    if-eqz v23, :cond_127

    .line 1649
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_22a

    .line 1650
    const/high16 v15, 0x4148

    .line 1659
    :cond_127
    :goto_127
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v23

    if-eqz v23, :cond_13f

    .line 1660
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v23

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v15, v1, v2}, Lcom/android/launcher2/Workspace;->getOffsetXForRotation(FII)F

    move-result v20

    .line 1663
    :cond_13f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldAlphas:[F

    move-object/from16 v23, v0

    aput v11, v23, v10

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    move-object/from16 v23, v0

    aput v6, v23, v10

    .line 1665
    if-eqz p2, :cond_238

    .line 1666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldTranslationXs:[F

    move-object/from16 v23, v0

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getTranslationX()F

    move-result v24

    aput v24, v23, v10

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldTranslationYs:[F

    move-object/from16 v23, v0

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getTranslationY()F

    move-result v24

    aput v24, v23, v10

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldScaleXs:[F

    move-object/from16 v23, v0

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v24

    aput v24, v23, v10

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldScaleYs:[F

    move-object/from16 v23, v0

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getScaleY()F

    move-result v24

    aput v24, v23, v10

    .line 1670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphas:[F

    move-object/from16 v23, v0

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getBackgroundAlpha()F

    move-result v24

    aput v24, v23, v10

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphaMultipliers:[F

    move-object/from16 v23, v0

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getBackgroundAlphaMultiplier()F

    move-result v24

    aput v24, v23, v10

    .line 1672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldRotationYs:[F

    move-object/from16 v23, v0

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getRotationY()F

    move-result v24

    aput v24, v23, v10

    .line 1674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    move-object/from16 v23, v0

    aput v20, v23, v10

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    move-object/from16 v23, v0

    aput v21, v23, v10

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    move-object/from16 v23, v0

    aput v9, v23, v10

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    move-object/from16 v23, v0

    aput v9, v23, v10

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    move-object/from16 v23, v0

    aput v8, v23, v10

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphaMultipliers:[F

    move-object/from16 v23, v0

    aput v7, v23, v10

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewRotationYs:[F

    move-object/from16 v23, v0

    aput v15, v23, v10

    .line 1625
    :goto_1dd
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_d1

    .line 1593
    .end local v4           #cl:Lcom/android/launcher2/CellLayout;
    .end local v5           #duration:I
    .end local v6           #finalAlpha:F
    .end local v7           #finalAlphaMultiplierValue:F
    .end local v8           #finalBackgroundAlpha:F
    .end local v9           #finalScaleFactor:F
    .end local v10           #i:I
    .end local v11           #initialAlpha:F
    .end local v12           #oldState:Lcom/android/launcher2/Workspace$State;
    .end local v13           #oldStateIsNormal:Z
    .end local v14           #oldStateIsSmall:Z
    .end local v15           #rotation:F
    .end local v17           #stateIsNormal:Z
    .end local v18           #stateIsSmall:Z
    .end local v19           #stateIsSpringLoaded:Z
    .end local v20           #translationX:F
    .end local v21           #translationY:F
    .end local v22           #zoomIn:Z
    :cond_1e1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move/from16 v23, v0

    goto/16 :goto_57

    .line 1596
    .restart local v12       #oldState:Lcom/android/launcher2/Workspace$State;
    :cond_1e9
    const/4 v13, 0x0

    goto/16 :goto_69

    .line 1597
    .restart local v13       #oldStateIsNormal:Z
    :cond_1ec
    const/4 v14, 0x0

    goto/16 :goto_70

    .line 1599
    .restart local v14       #oldStateIsSmall:Z
    :cond_1ef
    const/16 v17, 0x0

    goto/16 :goto_80

    .line 1600
    .restart local v17       #stateIsNormal:Z
    :cond_1f3
    const/16 v19, 0x0

    goto/16 :goto_8a

    .line 1601
    .restart local v19       #stateIsSpringLoaded:Z
    :cond_1f7
    const/16 v18, 0x0

    goto/16 :goto_94

    .line 1603
    .restart local v9       #finalScaleFactor:F
    .restart local v18       #stateIsSmall:Z
    :cond_1fb
    const/4 v8, 0x0

    goto/16 :goto_9a

    .line 1609
    .restart local v8       #finalBackgroundAlpha:F
    .restart local v20       #translationX:F
    .restart local v21       #translationY:F
    .restart local v22       #zoomIn:Z
    :cond_1fe
    const/16 v23, 0x0

    goto/16 :goto_b3

    .line 1615
    :cond_202
    const/high16 v8, 0x3f80

    .line 1616
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher2/Workspace;->setLayoutScale(F)V

    goto/16 :goto_c3

    .line 1619
    :cond_20b
    const/high16 v23, 0x3f80

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setLayoutScale(F)V

    goto/16 :goto_c3

    .line 1622
    :cond_216
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090010

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    goto/16 :goto_d0

    .line 1630
    .restart local v4       #cl:Lcom/android/launcher2/CellLayout;
    .restart local v5       #duration:I
    .restart local v7       #finalAlphaMultiplierValue:F
    .restart local v10       #i:I
    .restart local v11       #initialAlpha:F
    .restart local v15       #rotation:F
    :cond_223
    const/4 v6, 0x0

    goto/16 :goto_fe

    .line 1642
    .restart local v6       #finalAlpha:F
    :cond_226
    const/4 v11, 0x0

    .line 1643
    const/4 v6, 0x0

    goto/16 :goto_115

    .line 1651
    :cond_22a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-le v10, v0, :cond_127

    .line 1652
    const/high16 v15, -0x3eb8

    goto/16 :goto_127

    .line 1682
    :cond_238
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 1683
    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    .line 1684
    invoke-virtual {v4, v9}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 1685
    invoke-virtual {v4, v9}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 1686
    invoke-virtual {v4, v8}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    .line 1687
    invoke-virtual {v4, v7}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    .line 1688
    invoke-virtual {v4, v6}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    .line 1689
    invoke-virtual {v4, v15}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto/16 :goto_1dd

    .line 1694
    .end local v4           #cl:Lcom/android/launcher2/CellLayout;
    .end local v6           #finalAlpha:F
    .end local v7           #finalAlphaMultiplierValue:F
    .end local v11           #initialAlpha:F
    .end local v15           #rotation:F
    :cond_261
    if-eqz p2, :cond_317

    .line 1695
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_34a

    invoke-static/range {v23 .. v23}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v23

    int-to-long v0, v5

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 1698
    .local v3, animWithInterpolator:Landroid/animation/ValueAnimator;
    if-eqz v22, :cond_286

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1702
    :cond_286
    new-instance v23, Lcom/android/launcher2/Workspace$5;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v14}, Lcom/android/launcher2/Workspace$5;-><init>(Lcom/android/launcher2/Workspace;ZZ)V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1717
    new-instance v23, Lcom/android/launcher2/Workspace$6;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/Workspace$6;-><init>(Lcom/android/launcher2/Workspace;)V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1743
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_352

    invoke-static/range {v23 .. v23}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v23

    int-to-long v0, v5

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v16

    .line 1745
    .local v16, rotationAnim:Landroid/animation/ValueAnimator;
    new-instance v23, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v24, 0x4000

    invoke-direct/range {v23 .. v24}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1746
    new-instance v23, Lcom/android/launcher2/Workspace$7;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/Workspace$7;-><init>(Lcom/android/launcher2/Workspace;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v3, v24, v25

    const/16 v25, 0x1

    aput-object v16, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v23, v0

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/animation/AnimatorSet;->start()V

    .line 1767
    .end local v3           #animWithInterpolator:Landroid/animation/ValueAnimator;
    .end local v16           #rotationAnim:Landroid/animation/ValueAnimator;
    :cond_317
    if-eqz v19, :cond_33c

    .line 1771
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const/high16 v24, 0x7f09

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x42c8

    div-float v23, v23, v24

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace;->animateBackgroundGradient(FZ)V

    .line 1777
    :goto_337
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->syncChildrenLayersEnabledOnVisiblePages()V

    goto/16 :goto_c

    .line 1775
    :cond_33c
    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace;->animateBackgroundGradient(FZ)V

    goto :goto_337

    .line 1695
    :array_34a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1743
    :array_352
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method clearChildrenCache()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1398
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 1399
    .local v2, screenCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, v2, :cond_1d

    .line 1400
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1401
    .local v1, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1, v4}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1403
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1404
    invoke-virtual {v1, v4}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1399
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1407
    .end local v1           #layout:Lcom/android/launcher2/CellLayout;
    :cond_1d
    return-void
.end method

.method clearDropTargets()V
    .registers 8

    .prologue
    .line 3349
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v1

    .line 3350
    .local v1, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayoutChildren;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayoutChildren;

    .line 3351
    .local v4, layout:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 3352
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_19
    if-ge v3, v0, :cond_8

    .line 3353
    invoke-virtual {v4, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3354
    .local v5, v:Landroid/view/View;
    instance-of v6, v5, Lcom/android/launcher2/DropTarget;

    if-eqz v6, :cond_2a

    .line 3355
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    check-cast v5, Lcom/android/launcher2/DropTarget;

    .end local v5           #v:Landroid/view/View;
    invoke-virtual {v6, v5}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 3352
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 3359
    .end local v0           #childCount:I
    .end local v3           #j:I
    .end local v4           #layout:Lcom/android/launcher2/CellLayoutChildren;
    :cond_2d
    return-void
.end method

.method public computeScroll()V
    .registers 1

    .prologue
    .line 1003
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->computeScroll()V

    .line 1004
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->syncWallpaperOffsetWithScroll()V

    .line 1005
    return-void
.end method

.method public createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "v"
    .parameter "canvas"
    .parameter "padding"

    .prologue
    const/4 v6, 0x1

    .line 1833
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1836
    .local v2, outlineColor:I
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_40

    move-object v3, p1

    .line 1837
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v1, v3, v6

    .line 1838
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, p3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1845
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .local v0, b:Landroid/graphics/Bitmap;
    :goto_29
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1846
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 1847
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v3, v0, p2, v2}, Lcom/android/launcher2/HolographicOutlineHelper;->applyOuterBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V

    .line 1848
    iget v3, p0, Lcom/android/launcher2/Workspace;->mDragViewMultiplyColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1849
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1851
    return-object v0

    .line 1841
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_40
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, p3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #b:Landroid/graphics/Bitmap;
    goto :goto_29
.end method

.method createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher2/CellLayout;[IZLcom/android/launcher2/DragView;Ljava/lang/Runnable;)Z
    .registers 30
    .parameter "newView"
    .parameter "container"
    .parameter "target"
    .parameter "targetCell"
    .parameter "external"
    .parameter "dragView"
    .parameter "postAnimationRunnable"

    .prologue
    .line 2106
    const/4 v2, 0x0

    aget v2, p5, v2

    const/4 v3, 0x1

    aget v3, p5, v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v9

    .line 2107
    .local v9, v:Landroid/view/View;
    const/16 v19, 0x0

    .line 2108
    .local v19, hasntMoved:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v2, :cond_3e

    .line 2109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v17

    .line 2110
    .local v17, cellParent:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    const/4 v3, 0x0

    aget v3, p5, v3

    if-ne v2, v3, :cond_4a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    const/4 v3, 0x1

    aget v3, p5, v3

    if-ne v2, v3, :cond_4a

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_4a

    const/16 v19, 0x1

    .line 2114
    .end local v17           #cellParent:Lcom/android/launcher2/CellLayout;
    :cond_3e
    :goto_3e
    if-eqz v9, :cond_48

    if-nez v19, :cond_48

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v2, :cond_4d

    :cond_48
    const/4 v2, 0x0

    .line 2151
    :goto_49
    return v2

    .line 2110
    .restart local v17       #cellParent:Lcom/android/launcher2/CellLayout;
    :cond_4a
    const/16 v19, 0x0

    goto :goto_3e

    .line 2115
    .end local v17           #cellParent:Lcom/android/launcher2/CellLayout;
    :cond_4d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    .line 2116
    if-nez p5, :cond_d9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v6, v2, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    .line 2118
    .local v6, screen:I
    :goto_5a
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v15, v2, Lcom/android/launcher2/ShortcutInfo;

    .line 2119
    .local v15, aboveShortcut:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v0, v2, Lcom/android/launcher2/ShortcutInfo;

    move/from16 v20, v0

    .line 2121
    .local v20, willBecomeShortcut:Z
    if-eqz v15, :cond_ef

    if-eqz v20, :cond_ef

    .line 2122
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/ShortcutInfo;

    .line 2123
    .local v10, sourceInfo:Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/ShortcutInfo;

    .line 2125
    .local v18, destInfo:Lcom/android/launcher2/ShortcutInfo;
    if-nez p6, :cond_8f

    .line 2126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 2129
    :cond_8f
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 2130
    .local v12, folderLocation:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    invoke-virtual {v2, v9, v12}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v13

    .line 2131
    .local v13, scale:F
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 2133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v3, 0x0

    aget v7, p5, v3

    const/4 v3, 0x1

    aget v8, p5, v3

    move-object/from16 v3, p4

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher2/Launcher;->addFolder(Lcom/android/launcher2/CellLayout;JIII)Lcom/android/launcher2/FolderIcon;

    move-result-object v7

    .line 2135
    .local v7, fi:Lcom/android/launcher2/FolderIcon;
    const/4 v2, -0x1

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 2136
    const/4 v2, -0x1

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    .line 2137
    const/4 v2, -0x1

    iput v2, v10, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 2138
    const/4 v2, -0x1

    iput v2, v10, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    .line 2141
    if-eqz p7, :cond_e3

    const/16 v16, 0x1

    .line 2142
    .local v16, animate:Z
    :goto_cb
    if-eqz v16, :cond_e6

    move-object/from16 v8, v18

    move-object/from16 v11, p7

    move-object/from16 v14, p8

    .line 2143
    invoke-virtual/range {v7 .. v14}, Lcom/android/launcher2/FolderIcon;->performCreateAnimation(Lcom/android/launcher2/ShortcutInfo;Landroid/view/View;Lcom/android/launcher2/ShortcutInfo;Landroid/view/View;Landroid/graphics/Rect;FLjava/lang/Runnable;)V

    .line 2149
    :goto_d6
    const/4 v2, 0x1

    goto/16 :goto_49

    .line 2116
    .end local v6           #screen:I
    .end local v7           #fi:Lcom/android/launcher2/FolderIcon;
    .end local v10           #sourceInfo:Lcom/android/launcher2/ShortcutInfo;
    .end local v12           #folderLocation:Landroid/graphics/Rect;
    .end local v13           #scale:F
    .end local v15           #aboveShortcut:Z
    .end local v16           #animate:Z
    .end local v18           #destInfo:Lcom/android/launcher2/ShortcutInfo;
    .end local v20           #willBecomeShortcut:Z
    :cond_d9
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v6

    goto/16 :goto_5a

    .line 2141
    .restart local v6       #screen:I
    .restart local v7       #fi:Lcom/android/launcher2/FolderIcon;
    .restart local v10       #sourceInfo:Lcom/android/launcher2/ShortcutInfo;
    .restart local v12       #folderLocation:Landroid/graphics/Rect;
    .restart local v13       #scale:F
    .restart local v15       #aboveShortcut:Z
    .restart local v18       #destInfo:Lcom/android/launcher2/ShortcutInfo;
    .restart local v20       #willBecomeShortcut:Z
    :cond_e3
    const/16 v16, 0x0

    goto :goto_cb

    .line 2146
    .restart local v16       #animate:Z
    :cond_e6
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/launcher2/FolderIcon;->addItem(Lcom/android/launcher2/ShortcutInfo;)V

    .line 2147
    invoke-virtual {v7, v10}, Lcom/android/launcher2/FolderIcon;->addItem(Lcom/android/launcher2/ShortcutInfo;)V

    goto :goto_d6

    .line 2151
    .end local v7           #fi:Lcom/android/launcher2/FolderIcon;
    .end local v10           #sourceInfo:Lcom/android/launcher2/ShortcutInfo;
    .end local v12           #folderLocation:Landroid/graphics/Rect;
    .end local v13           #scale:F
    .end local v16           #animate:Z
    .end local v18           #destInfo:Lcom/android/launcher2/ShortcutInfo;
    :cond_ef
    const/4 v2, 0x0

    goto/16 :goto_49
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .registers 10
    .parameter "ev"

    .prologue
    const v7, 0x3f060a92

    .line 641
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v5

    if-nez v5, :cond_2a

    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v5, :cond_2a

    .line 642
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 643
    .local v0, deltaX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 645
    .local v1, deltaY:F
    const/4 v5, 0x0

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_2b

    .line 671
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    :cond_2a
    :goto_2a
    return-void

    .line 647
    .restart local v0       #deltaX:F
    .restart local v1       #deltaY:F
    :cond_2b
    div-float v3, v1, v0

    .line 648
    .local v3, slope:F
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    double-to-float v4, v5

    .line 650
    .local v4, theta:F
    iget v5, p0, Lcom/android/launcher2/Workspace;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-gtz v5, :cond_41

    iget v5, p0, Lcom/android/launcher2/Workspace;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-lez v5, :cond_44

    .line 651
    :cond_41
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelCurrentPageLongPress()V

    .line 654
    :cond_44
    const v5, 0x3f860a92

    cmpl-float v5, v4, v5

    if-gtz v5, :cond_2a

    .line 657
    cmpl-float v5, v4, v7

    if-lez v5, :cond_62

    .line 662
    sub-float/2addr v4, v7

    .line 663
    div-float v5, v4, v7

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v2, v5

    .line 665
    .local v2, extraRatio:F
    const/high16 v5, 0x3f80

    const/high16 v6, 0x4080

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    invoke-super {p0, p1, v5}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto :goto_2a

    .line 668
    .end local v2           #extraRatio:F
    :cond_62
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_2a
.end method

.method disableBackground()V
    .registers 2

    .prologue
    .line 1047
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    .line 1048
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 14
    .parameter "canvas"

    .prologue
    .line 1312
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1314
    iget-boolean v9, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-eqz v9, :cond_68

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v9

    if-nez v9, :cond_68

    .line 1315
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v8

    .line 1316
    .local v8, width:I
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getHeight()I

    move-result v1

    .line 1317
    .local v1, height:I
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 1320
    .local v6, pageHeight:I
    sub-int v9, v1, v6

    iget v10, p0, Lcom/android/launcher2/Workspace;->mPaddingTop:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/launcher2/Workspace;->mPaddingBottom:I

    sub-int/2addr v9, v10

    div-int/lit8 v3, v9, 0x2

    .line 1321
    .local v3, offset:I
    iget v9, p0, Lcom/android/launcher2/Workspace;->mPaddingTop:I

    add-int v5, v9, v3

    .line 1322
    .local v5, paddingTop:I
    iget v9, p0, Lcom/android/launcher2/Workspace;->mPaddingBottom:I

    add-int v4, v9, v3

    .line 1324
    .local v4, paddingBottom:I
    iget v9, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 1325
    .local v2, leftPage:Lcom/android/launcher2/CellLayout;
    iget v9, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    .line 1327
    .local v7, rightPage:Lcom/android/launcher2/CellLayout;
    if-eqz v2, :cond_69

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v9

    if-eqz v9, :cond_69

    .line 1328
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020031

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1329
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v9, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    iget v10, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    add-int/2addr v10, v11

    sub-int v11, v1, v4

    invoke-virtual {v0, v9, v5, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1331
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1339
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #height:I
    .end local v2           #leftPage:Lcom/android/launcher2/CellLayout;
    .end local v3           #offset:I
    .end local v4           #paddingBottom:I
    .end local v5           #paddingTop:I
    .end local v6           #pageHeight:I
    .end local v7           #rightPage:Lcom/android/launcher2/CellLayout;
    .end local v8           #width:I
    :cond_68
    :goto_68
    return-void

    .line 1332
    .restart local v1       #height:I
    .restart local v2       #leftPage:Lcom/android/launcher2/CellLayout;
    .restart local v3       #offset:I
    .restart local v4       #paddingBottom:I
    .restart local v5       #paddingTop:I
    .restart local v6       #pageHeight:I
    .restart local v7       #rightPage:Lcom/android/launcher2/CellLayout;
    .restart local v8       #width:I
    :cond_69
    if-eqz v7, :cond_68

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v9

    if-eqz v9, :cond_68

    .line 1333
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020032

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1334
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    iget v9, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    add-int/2addr v9, v8

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    add-int/2addr v10, v8

    sub-int v11, v1, v4

    invoke-virtual {v0, v9, v5, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1336
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_68
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 4
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_c

    .line 615
    :cond_a
    const/4 v0, 0x0

    .line 617
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_b
.end method

.method enableBackground()V
    .registers 2

    .prologue
    .line 1050
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    .line 1051
    return-void
.end method

.method enableChildrenCache(II)V
    .registers 9
    .parameter "fromPage"
    .parameter "toPage"

    .prologue
    const/4 v5, 0x1

    .line 1379
    if-le p1, p2, :cond_6

    .line 1380
    move v3, p1

    .line 1381
    .local v3, temp:I
    move p1, p2

    .line 1382
    move p2, v3

    .line 1385
    .end local v3           #temp:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 1387
    .local v2, screenCount:I
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1388
    add-int/lit8 v4, v2, -0x1

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1390
    move v0, p1

    .local v0, i:I
    :goto_16
    if-gt v0, p2, :cond_27

    .line 1391
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1392
    .local v1, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1393
    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1390
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1395
    .end local v1           #layout:Lcom/android/launcher2/CellLayout;
    :cond_27
    return-void
.end method

.method public estimateItemPosition(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;IIII)Landroid/graphics/RectF;
    .registers 15
    .parameter "cl"
    .parameter "pendingInfo"
    .parameter "hCell"
    .parameter "vCell"
    .parameter "hSpan"
    .parameter "vSpan"

    .prologue
    .line 341
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .local v5, r:Landroid/graphics/RectF;
    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    .line 342
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->cellToRect(IIIILandroid/graphics/RectF;)V

    .line 343
    instance-of v0, p2, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v0, :cond_3d

    move-object v7, p2

    .line 344
    check-cast v7, Lcom/android/launcher2/PendingAddWidgetInfo;

    .line 345
    .local v7, widgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    iget-object v1, v7, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 347
    .local v6, p:Landroid/graphics/Rect;
    iget v0, v5, Landroid/graphics/RectF;->top:F

    iget v1, v6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, v5, Landroid/graphics/RectF;->top:F

    .line 348
    iget v0, v5, Landroid/graphics/RectF;->left:F

    iget v1, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, v5, Landroid/graphics/RectF;->left:F

    .line 349
    iget v0, v5, Landroid/graphics/RectF;->right:F

    iget v1, v6, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, v5, Landroid/graphics/RectF;->right:F

    .line 350
    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, v5, Landroid/graphics/RectF;->bottom:F

    .line 352
    .end local v6           #p:Landroid/graphics/Rect;
    .end local v7           #widgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;
    :cond_3d
    return-object v5
.end method

.method public estimateItemSize(IILcom/android/launcher2/PendingAddItemInfo;Z)[I
    .registers 15
    .parameter "hSpan"
    .parameter "vSpan"
    .parameter "pendingItemInfo"
    .parameter "springLoaded"

    .prologue
    const v2, 0x7fffffff

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 322
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 323
    .local v8, size:[I
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_46

    .line 324
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .local v1, cl:Lcom/android/launcher2/CellLayout;
    move-object v0, p0

    move-object v2, p3

    move v4, v3

    move v5, p1

    move v6, p2

    .line 325
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->estimateItemPosition(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;IIII)Landroid/graphics/RectF;

    move-result-object v7

    .line 326
    .local v7, r:Landroid/graphics/RectF;
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    aput v0, v8, v3

    .line 327
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    aput v0, v8, v9

    .line 328
    if-eqz p4, :cond_45

    .line 329
    aget v0, v8, v3

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedShrinkFactor:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v8, v3

    .line 330
    aget v0, v8, v9

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedShrinkFactor:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v8, v9

    .line 336
    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    .end local v7           #r:Landroid/graphics/RectF;
    :cond_45
    :goto_45
    return-object v8

    .line 334
    :cond_46
    aput v2, v8, v3

    .line 335
    aput v2, v8, v9

    goto :goto_45
.end method

.method public exitWidgetResizeMode()V
    .registers 3

    .prologue
    .line 1540
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    .line 1541
    .local v0, dragLayer:Lcom/android/launcher2/DragLayer;
    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->clearAllResizeFrames()V

    .line 1542
    return-void
.end method

.method public getBackgroundAlpha()F
    .registers 2

    .prologue
    .line 1089
    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    return v0
.end method

.method public getChildrenOutlineAlpha()F
    .registers 2

    .prologue
    .line 1043
    iget v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineAlpha:F

    return v0
.end method

.method public getCurrentDropLayout()Lcom/android/launcher2/CellLayout;
    .registers 3

    .prologue
    .line 3094
    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    return-object v0

    :cond_e
    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    goto :goto_7
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .registers 6

    .prologue
    .line 3510
    iget v1, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2c

    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    .line 3511
    .local v0, page:I
    :goto_7
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0045

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3510
    .end local v0           #page:I
    :cond_2c
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    goto :goto_7
.end method

.method public getDescendantFocusability()I
    .registers 2

    .prologue
    .line 1356
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1357
    const/high16 v0, 0x6

    .line 1359
    :goto_8
    return v0

    :cond_9
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->getDescendantFocusability()I

    move-result v0

    goto :goto_8
.end method

.method public getDragInfo()Lcom/android/launcher2/CellLayout$CellInfo;
    .registers 2

    .prologue
    .line 3104
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    return-object v0
.end method

.method public getDropTargetDelegate(Lcom/android/launcher2/DropTarget$DragObject;)Lcom/android/launcher2/DropTarget;
    .registers 3
    .parameter "d"

    .prologue
    .line 2381
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher2/Folder;
    .registers 10
    .parameter "tag"

    .prologue
    .line 3318
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v1

    .line 3319
    .local v1, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayoutChildren;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayoutChildren;

    .line 3320
    .local v6, layout:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    .line 3321
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_19
    if-ge v4, v2, :cond_8

    .line 3322
    invoke-virtual {v6, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3323
    .local v0, child:Landroid/view/View;
    instance-of v7, v0, Lcom/android/launcher2/Folder;

    if-eqz v7, :cond_35

    move-object v3, v0

    .line 3324
    check-cast v3, Lcom/android/launcher2/Folder;

    .line 3325
    .local v3, f:Lcom/android/launcher2/Folder;
    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v7

    if-ne v7, p1, :cond_35

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-eqz v7, :cond_35

    .line 3331
    .end local v0           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #f:Lcom/android/launcher2/Folder;
    .end local v4           #i:I
    .end local v6           #layout:Lcom/android/launcher2/CellLayoutChildren;
    :goto_34
    return-object v3

    .line 3321
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #count:I
    .restart local v4       #i:I
    .restart local v6       #layout:Lcom/android/launcher2/CellLayoutChildren;
    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 3331
    .end local v0           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v6           #layout:Lcom/android/launcher2/CellLayoutChildren;
    :cond_38
    const/4 v3, 0x0

    goto :goto_34
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .registers 5
    .parameter "outRect"

    .prologue
    const/4 v2, 0x0

    .line 2878
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    iget v1, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2879
    return-void
.end method

.method public getHorizontalWallpaperOffset()F
    .registers 2

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v0

    return v0
.end method

.method public getLocationInDragLayer([I)V
    .registers 3
    .parameter "loc"

    .prologue
    .line 3516
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)V

    .line 3517
    return-void
.end method

.method getOpenFolder()Lcom/android/launcher2/Folder;
    .registers 7

    .prologue
    .line 442
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    .line 443
    .local v2, dragLayer:Lcom/android/launcher2/DragLayer;
    invoke-virtual {v2}, Lcom/android/launcher2/DragLayer;->getChildCount()I

    move-result v1

    .line 444
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_b
    if-ge v4, v1, :cond_24

    .line 445
    invoke-virtual {v2, v4}, Lcom/android/launcher2/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 446
    .local v0, child:Landroid/view/View;
    instance-of v5, v0, Lcom/android/launcher2/Folder;

    if-eqz v5, :cond_21

    move-object v3, v0

    .line 447
    check-cast v3, Lcom/android/launcher2/Folder;

    .line 448
    .local v3, folder:Lcom/android/launcher2/Folder;
    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-eqz v5, :cond_21

    .line 452
    .end local v0           #child:Landroid/view/View;
    .end local v3           #folder:Lcom/android/launcher2/Folder;
    :goto_20
    return-object v3

    .line 444
    .restart local v0       #child:Landroid/view/View;
    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 452
    .end local v0           #child:Landroid/view/View;
    :cond_24
    const/4 v3, 0x0

    goto :goto_20
.end method

.method getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;
    .registers 7
    .parameter "v"

    .prologue
    .line 3277
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v2

    .line 3278
    .local v2, layouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 3279
    .local v1, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher2/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_8

    .line 3283
    .end local v1           #layout:Lcom/android/launcher2/CellLayout;
    :goto_1f
    return-object v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method protected getScrollMode()I
    .registers 2

    .prologue
    .line 423
    const/4 v0, 0x1

    return v0
.end method

.method public getVerticalWallpaperOffset()F
    .registers 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrY()F

    move-result v0

    return v0
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .registers 9
    .parameter "tag"

    .prologue
    .line 3335
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v1

    .line 3336
    .local v1, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayoutChildren;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayoutChildren;

    .line 3337
    .local v5, layout:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    .line 3338
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_19
    if-ge v3, v2, :cond_8

    .line 3339
    invoke-virtual {v5, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3340
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_26

    .line 3345
    .end local v0           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #layout:Lcom/android/launcher2/CellLayoutChildren;
    :goto_25
    return-object v0

    .line 3338
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v5       #layout:Lcom/android/launcher2/CellLayoutChildren;
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 3345
    .end local v0           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #layout:Lcom/android/launcher2/CellLayoutChildren;
    :cond_29
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public getViewLocationRelativeToSelf(Landroid/view/View;[I)V
    .registers 10
    .parameter "v"
    .parameter "location"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2329
    invoke-virtual {p0, p2}, Lcom/android/launcher2/Workspace;->getLocationInWindow([I)V

    .line 2330
    aget v2, p2, v5

    .line 2331
    .local v2, x:I
    aget v3, p2, v6

    .line 2333
    .local v3, y:I
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2334
    aget v0, p2, v5

    .line 2335
    .local v0, vX:I
    aget v1, p2, v6

    .line 2337
    .local v1, vY:I
    sub-int v4, v0, v2

    aput v4, p2, v5

    .line 2338
    sub-int v4, v1, v3

    aput v4, p2, v6

    .line 2339
    return-void
.end method

.method getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/CellLayoutChildren;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3307
    .local v0, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayoutChildren;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 3308
    .local v2, screenCount:I
    const/4 v1, 0x0

    .local v1, screen:I
    :goto_a
    if-ge v1, v2, :cond_1c

    .line 3309
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3308
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3311
    :cond_1c
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 3312
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3314
    :cond_35
    return-object v0
.end method

.method getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/CellLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3291
    .local v0, layouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 3292
    .local v2, screenCount:I
    const/4 v1, 0x0

    .local v1, screen:I
    :goto_a
    if-ge v1, v2, :cond_18

    .line 3293
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3292
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3295
    :cond_18
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 3296
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3298
    :cond_2d
    return-object v0
.end method

.method hideOutlines()V
    .registers 5

    .prologue
    .line 1018
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_3e

    .line 1019
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1020
    :cond_13
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1021
    :cond_1c
    const-string v0, "childrenOutlineAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    .line 1022
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x177

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1023
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1024
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1026
    :cond_3e
    return-void
.end method

.method protected hitsNextPage(FF)Z
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 586
    iget v1, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    .line 590
    .local v0, current:I
    :goto_7
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_1a

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1, p1, p2}, Lcom/android/launcher2/Workspace;->hitsPage(IFF)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    :goto_16
    return v1

    .line 586
    .end local v0           #current:I
    :cond_17
    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    goto :goto_7

    .line 590
    .restart local v0       #current:I
    :cond_1a
    const/4 v1, 0x0

    goto :goto_16
.end method

.method protected hitsPreviousPage(FF)Z
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 575
    iget v1, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    .line 579
    .local v0, current:I
    :goto_7
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_1a

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1, p1, p2}, Lcom/android/launcher2/Workspace;->hitsPage(IFF)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    :goto_16
    return v1

    .line 575
    .end local v0           #current:I
    :cond_17
    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    goto :goto_7

    .line 579
    .restart local v0       #current:I
    :cond_1a
    const/4 v1, 0x0

    goto :goto_16
.end method

.method protected initWorkspace()V
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 381
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 382
    .local v1, context:Landroid/content/Context;
    iget v4, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    iput v4, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    .line 383
    iget v4, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-static {v4}, Lcom/android/launcher2/Launcher;->setScreen(I)V

    .line 384
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 385
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 386
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 387
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->setWillNotDraw(Z)V

    .line 388
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 391
    :try_start_26
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 392
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f020001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;
    :try_end_33
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_26 .. :try_end_33} :catch_6b

    .line 397
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_33
    new-instance v4, Lcom/android/launcher2/Workspace$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Workspace$1;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 412
    const/16 v4, 0x258

    iput v4, p0, Lcom/android/launcher2/Workspace;->mSnapVelocity:I

    .line 413
    new-instance v4, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    .line 414
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 415
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    .line 416
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    .line 417
    iget v4, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    iget v6, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    invoke-direct {p0, v5, v6}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    .line 419
    return-void

    .line 393
    .end local v2           #display:Landroid/view/Display;
    :catch_6b
    move-exception v4

    goto :goto_33
.end method

.method isDrawingBackgroundGradient()Z
    .registers 3

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isDropEnabled()Z
    .registers 2

    .prologue
    .line 3173
    const/4 v0, 0x1

    return v0
.end method

.method protected isScrollingIndicatorEnabled()Z
    .registers 3

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isSmall()Z
    .registers 3

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSwitchingState()Z
    .registers 2

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method isTouchActive()Z
    .registers 2

    .prologue
    .line 456
    iget v0, p0, Lcom/android/launcher2/Workspace;->mTouchState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method mapPointFromChildToSelf(Landroid/view/View;[F)V
    .registers 7
    .parameter "v"
    .parameter "xy"

    .prologue
    .line 2564
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2565
    const/4 v0, 0x0

    aget v1, p2, v0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v0

    .line 2566
    const/4 v0, 0x1

    aget v1, p2, v0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mScrollY:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v0

    .line 2567
    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[F)V
    .registers 4
    .parameter "v"
    .parameter "xy"

    .prologue
    .line 2525
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2526
    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V
    .registers 8
    .parameter "v"
    .parameter "xy"
    .parameter "cachedInverseMatrix"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2539
    if-nez p3, :cond_f

    .line 2540
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2541
    iget-object p3, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 2543
    :cond_f
    aget v0, p2, v2

    iget v1, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v2

    .line 2544
    aget v0, p2, v3

    iget v1, p0, Lcom/android/launcher2/Workspace;->mScrollY:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v3

    .line 2545
    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2546
    return-void
.end method

.method mapPointFromSelfToSibling(Landroid/view/View;[F)V
    .registers 7
    .parameter "v"
    .parameter "xy"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2553
    aget v0, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v2

    .line 2554
    aget v0, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v3

    .line 2555
    return-void
.end method

.method moveToDefaultScreen(Z)V
    .registers 3
    .parameter "animate"

    .prologue
    .line 3490
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3491
    if-eqz p1, :cond_17

    .line 3492
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 3497
    :cond_d
    :goto_d
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3498
    return-void

    .line 3494
    :cond_17
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_d
.end method

.method protected notifyPageSwitchListener()V
    .registers 2

    .prologue
    .line 727
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->notifyPageSwitchListener()V

    .line 728
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->setScreen(I)V

    .line 729
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 1233
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onAttachedToWindow()V

    .line 1234
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1235
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->computeScroll()V

    .line 1236
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->setWindowToken(Landroid/os/IBinder;)V

    .line 1237
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 1240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1241
    return-void
.end method

.method public onDragEnd()V
    .registers 2

    .prologue
    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 373
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled()V

    .line 374
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->unlockScreenOrientationOnLargeUI()V

    .line 375
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V
    .registers 4
    .parameter "d"

    .prologue
    .line 2342
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_f

    .line 2343
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2344
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2346
    :cond_f
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 2347
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2348
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 2352
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2353
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->showOutlines()V

    .line 2355
    :cond_29
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 36
    .parameter "event"

    .prologue
    .line 2413
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v26

    .line 2414
    .local v26, desc:Landroid/content/ClipDescription;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 2415
    .local v3, layout:Lcom/android/launcher2/CellLayout;
    const/4 v4, 0x2

    new-array v14, v4, [I

    .line 2416
    .local v14, pos:[I
    invoke-virtual {v3, v14}, Lcom/android/launcher2/CellLayout;->getLocationOnScreen([I)V

    .line 2418
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    aget v5, v14, v5

    sub-int v6, v4, v5

    .line 2419
    .local v6, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x1

    aget v5, v14, v5

    sub-int v7, v4, v5

    .line 2421
    .local v7, y:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_192

    .line 2515
    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/SmoothPagedView;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v4

    :goto_35
    return v4

    .line 2424
    :pswitch_36
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->validateDrag(Landroid/view/DragEvent;)Landroid/util/Pair;

    move-result-object v32

    .line 2425
    .local v32, test:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/util/List<Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;>;>;"
    if-eqz v32, :cond_5a

    .line 2426
    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v4, :cond_57

    const/16 v30, 0x1

    .line 2427
    .local v30, isShortcut:Z
    :goto_44
    if-eqz v30, :cond_73

    .line 2429
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v14, v4, v5}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v4

    if-nez v4, :cond_73

    .line 2430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage()V

    .line 2431
    const/4 v4, 0x0

    goto :goto_35

    .line 2426
    .end local v30           #isShortcut:Z
    :cond_57
    const/16 v30, 0x0

    goto :goto_44

    .line 2436
    :cond_5a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    const v8, 0x7f0c000c

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2438
    const/4 v4, 0x0

    goto :goto_35

    .line 2443
    .restart local v30       #isShortcut:Z
    :cond_73
    new-instance v25, Landroid/graphics/Canvas;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Canvas;-><init>()V

    .line 2444
    .local v25, canvas:Landroid/graphics/Canvas;
    sget v23, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 2445
    .local v23, bitmapPadding:I
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace;->createExternalDragOutline(Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 2448
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->showOutlines()V

    .line 2449
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 2450
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 2452
    const/4 v4, 0x1

    goto :goto_35

    .line 2456
    .end local v23           #bitmapPadding:I
    .end local v25           #canvas:Landroid/graphics/Canvas;
    .end local v30           #isShortcut:Z
    .end local v32           #test:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/util/List<Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;>;>;"
    :pswitch_9c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 2457
    const/4 v4, 0x1

    goto :goto_35

    .line 2460
    :pswitch_aa
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v31

    .line 2461
    .local v31, model:Lcom/android/launcher2/LauncherModel;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v18

    .line 2467
    .local v18, data:Landroid/content/ClipData;
    const/4 v4, 0x0

    aput v6, v14, v4

    .line 2468
    const/4 v4, 0x1

    aput v7, v14, v4

    .line 2469
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->validateDrag(Landroid/view/DragEvent;)Landroid/util/Pair;

    move-result-object v32

    .line 2470
    .restart local v32       #test:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/util/List<Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;>;>;"
    if-eqz v32, :cond_10d

    .line 2471
    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .line 2472
    .local v27, index:I
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/util/List;

    .line 2473
    .local v19, widgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;>;"
    if-nez v19, :cond_110

    const/16 v30, 0x1

    .line 2474
    .restart local v30       #isShortcut:Z
    :goto_d8
    invoke-virtual/range {v26 .. v27}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v17

    .line 2475
    .local v17, mimeType:Ljava/lang/String;
    if-eqz v30, :cond_113

    .line 2476
    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v29

    .line 2477
    .local v29, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/ClipData;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1, v5}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v28

    .line 2478
    .local v28, info:Lcom/android/launcher2/ShortcutInfo;
    if-eqz v28, :cond_10d

    .line 2479
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v7, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v4, v1, v3, v5}, Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;Z)V

    .line 2507
    .end local v17           #mimeType:Ljava/lang/String;
    .end local v19           #widgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;>;"
    .end local v27           #index:I
    .end local v28           #info:Lcom/android/launcher2/ShortcutInfo;
    .end local v29           #intent:Landroid/content/Intent;
    .end local v30           #isShortcut:Z
    :cond_10d
    :goto_10d
    const/4 v4, 0x1

    goto/16 :goto_35

    .line 2473
    .restart local v19       #widgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;>;"
    .restart local v27       #index:I
    :cond_110
    const/16 v30, 0x0

    goto :goto_d8

    .line 2482
    .restart local v17       #mimeType:Ljava/lang/String;
    .restart local v30       #isShortcut:Z
    :cond_113
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_141

    .line 2485
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;

    iget-object v0, v4, Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v33, v0

    .line 2486
    .local v33, widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v9, Lcom/android/launcher2/PendingAddWidgetInfo;

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v9, v0, v1, v2}, Lcom/android/launcher2/PendingAddWidgetInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2488
    .local v9, createInfo:Lcom/android/launcher2/PendingAddWidgetInfo;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const-wide/16 v10, -0x64

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v14}, Lcom/android/launcher2/Launcher;->addAppWidgetFromDrop(Lcom/android/launcher2/PendingAddWidgetInfo;JI[I[I)V

    goto :goto_10d

    .line 2493
    .end local v9           #createInfo:Lcom/android/launcher2/PendingAddWidgetInfo;
    .end local v33           #widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_141
    new-instance v15, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move/from16 v21, v0

    move-object/from16 v20, v3

    move-object/from16 v22, v14

    invoke-direct/range {v15 .. v22}, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;-><init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;Landroid/content/ClipData;Ljava/util/List;Lcom/android/launcher2/CellLayout;I[I)V

    .line 2496
    .local v15, adapter:Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;
    new-instance v24, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2498
    .local v24, builder:Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, v24

    invoke-virtual {v0, v15, v15}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2499
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2500
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    const v5, 0x7f0c000d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2502
    const v4, 0x7f02002d

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2503
    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_10d

    .line 2511
    .end local v15           #adapter:Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;
    .end local v17           #mimeType:Ljava/lang/String;
    .end local v18           #data:Landroid/content/ClipData;
    .end local v19           #widgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;>;"
    .end local v24           #builder:Landroid/app/AlertDialog$Builder;
    .end local v27           #index:I
    .end local v30           #isShortcut:Z
    .end local v31           #model:Lcom/android/launcher2/LauncherModel;
    .end local v32           #test:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/util/List<Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;>;>;"
    :pswitch_188
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2512
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->hideOutlines()V

    .line 2513
    const/4 v4, 0x1

    goto/16 :goto_35

    .line 2421
    nop

    :pswitch_data_192
    .packed-switch 0x1
        :pswitch_36
        :pswitch_9c
        :pswitch_aa
        :pswitch_188
    .end packed-switch
.end method

.method public onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V
    .registers 2
    .parameter "d"

    .prologue
    .line 2377
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->doDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 2378
    return-void
.end method

.method public onDragOver(Lcom/android/launcher2/DropTarget$DragObject;)V
    .registers 22
    .parameter "d"

    .prologue
    .line 2710
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-eqz v2, :cond_7

    .line 2828
    :cond_6
    :goto_6
    return-void

    .line 2711
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v2, :cond_6

    .line 2713
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 2714
    .local v18, r:Landroid/graphics/Rect;
    const/16 v17, 0x0

    .line 2715
    .local v17, layout:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/launcher2/ItemInfo;

    .line 2718
    .local v16, item:Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    if-ltz v2, :cond_28

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    if-gez v2, :cond_30

    :cond_28
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Improper spans found"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2719
    :cond_30
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/Workspace;->getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 2723
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v2

    if-eqz v2, :cond_24b

    .line 2724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    if-eqz v2, :cond_91

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->isExternalDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v2

    if-nez v2, :cond_91

    .line 2725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 2726
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 2727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v17

    .line 2730
    :cond_91
    if-nez v17, :cond_a8

    .line 2731
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/launcher2/Workspace;->findMatchingPageForDragOver(Lcom/android/launcher2/DragView;FFZ)Lcom/android/launcher2/CellLayout;

    move-result-object v17

    .line 2733
    :cond_a8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, v17

    if-eq v0, v2, :cond_101

    .line 2735
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->cleanupFolderCreation(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 2737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_c8

    .line 2738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2741
    :cond_c8
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 2742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_234

    .line 2743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 2749
    :goto_e3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v3, :cond_23b

    const/4 v14, 0x1

    .line 2750
    .local v14, isInSpringLoadedMode:Z
    :goto_ec
    if-eqz v14, :cond_101

    .line 2751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_23e

    .line 2752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    invoke-virtual {v2}, Lcom/android/launcher2/SpringLoadedDragController;->cancel()V

    .line 2781
    .end local v14           #isInSpringLoadedMode:Z
    :cond_101
    :goto_101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_6

    .line 2782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-nez v2, :cond_2be

    const/4 v11, 0x0

    .line 2785
    .local v11, child:Landroid/view/View;
    :goto_10e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2c6

    .line 2786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToSibling(Landroid/view/View;[F)V

    .line 2790
    :goto_12d
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher2/ItemInfo;

    .line 2792
    .local v13, info:Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    float-to-int v4, v2

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v12

    .line 2797
    .local v12, dragOverView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2, v3, v4}, Lcom/android/launcher2/Workspace;->willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IZ)Z

    move-result v19

    .line 2799
    .local v19, userFolderPending:Z
    instance-of v15, v12, Lcom/android/launcher2/FolderIcon;

    .line 2800
    .local v15, isOverFolder:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    if-eq v12, v2, :cond_1a2

    .line 2801
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->cancelFolderCreation()V

    .line 2802
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    if-eqz v2, :cond_1a2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/launcher2/FolderIcon;

    if-eqz v2, :cond_1a2

    .line 2803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    check-cast v2, Lcom/android/launcher2/FolderIcon;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderIcon;->onDragExit(Ljava/lang/Object;)V

    .line 2807
    :cond_1a2
    if-eqz v19, :cond_1d3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    if-eq v12, v2, :cond_1d3

    .line 2808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    new-instance v3, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;II)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/OnAlarmListener;)V

    .line 2810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 2813
    :cond_1d3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    if-eq v12, v2, :cond_1f2

    if-eqz v15, :cond_1f2

    move-object v2, v12

    .line 2814
    check-cast v2, Lcom/android/launcher2/FolderIcon;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderIcon;->onDragEnter(Ljava/lang/Object;)V

    .line 2815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_1f2

    .line 2816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    .line 2819
    :cond_1f2
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    .line 2821
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v2, :cond_6

    if-nez v15, :cond_6

    .line 2822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    aget v3, v3, v5

    float-to-int v5, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v3, v3, v6

    float-to-int v6, v3

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v3}, Lcom/android/launcher2/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v3}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v10

    move-object v3, v11

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/graphics/Point;Landroid/graphics/Rect;)V

    goto/16 :goto_6

    .line 2746
    .end local v11           #child:Landroid/view/View;
    .end local v12           #dragOverView:Landroid/view/View;
    .end local v13           #info:Lcom/android/launcher2/ItemInfo;
    .end local v15           #isOverFolder:Z
    .end local v19           #userFolderPending:Z
    :cond_234
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mLastDragOverView:Landroid/view/View;

    goto/16 :goto_e3

    .line 2749
    :cond_23b
    const/4 v14, 0x0

    goto/16 :goto_ec

    .line 2754
    .restart local v14       #isInSpringLoadedMode:Z
    :cond_23e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/SpringLoadedDragController;->setAlarm(Lcom/android/launcher2/CellLayout;)V

    goto/16 :goto_101

    .line 2760
    .end local v14           #isInSpringLoadedMode:Z
    :cond_24b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    if-eqz v2, :cond_284

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->isDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v2

    if-nez v2, :cond_284

    .line 2761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 2762
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_284

    .line 2763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v17

    .line 2766
    :cond_284
    if-nez v17, :cond_28a

    .line 2767
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v17

    .line 2769
    :cond_28a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, v17

    if-eq v0, v2, :cond_101

    .line 2770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_2a7

    .line 2771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2774
    :cond_2a7
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 2775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    goto/16 :goto_101

    .line 2782
    :cond_2be
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v11, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto/16 :goto_10e

    .line 2788
    .restart local v11       #child:Landroid/view/View;
    :cond_2c6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto/16 :goto_12d
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .registers 5
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 367
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled()V

    .line 368
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->lockScreenOrientationOnLargeUI()V

    .line 369
    return-void
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 1509
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 1512
    .local v1, canvas:Landroid/graphics/Canvas;
    sget v0, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 1515
    .local v0, bitmapPadding:I
    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1516
    return-void
.end method

.method public onDragStartedWithItem(Lcom/android/launcher2/PendingAddItemInfo;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .registers 12
    .parameter "info"
    .parameter "b"
    .parameter "alphaClipPaint"

    .prologue
    const/4 v4, 0x0

    .line 1519
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 1522
    .local v2, canvas:Landroid/graphics/Canvas;
    sget v3, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 1524
    .local v3, bitmapPadding:I
    iget v0, p1, Lcom/android/launcher2/PendingAddItemInfo;->spanX:I

    iget v1, p1, Lcom/android/launcher2/PendingAddItemInfo;->spanY:I

    invoke-virtual {p0, v0, v1, p1, v4}, Lcom/android/launcher2/Workspace;->estimateItemSize(IILcom/android/launcher2/PendingAddItemInfo;Z)[I

    move-result-object v7

    .line 1527
    .local v7, size:[I
    aget v4, v7, v4

    const/4 v0, 0x1

    aget v5, v7, v0

    move-object v0, p0

    move-object v1, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1528
    return-void
.end method

.method public onDragStopped(Z)V
    .registers 3
    .parameter "success"

    .prologue
    .line 1534
    if-nez p1, :cond_6

    .line 1535
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->doDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 1537
    :cond_6
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    .line 1266
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    .line 1269
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_35

    iget v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_35

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    if-eqz v1, :cond_35

    .line 1270
    iget v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1271
    .local v0, alpha:I
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1272
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1274
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1277
    .end local v0           #alpha:I
    :cond_35
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1278
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .registers 40
    .parameter "d"

    .prologue
    .line 2173
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher2/Workspace;->getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 2177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v4, :cond_47

    .line 2178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 2179
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToSibling(Landroid/view/View;[F)V

    .line 2185
    :cond_47
    :goto_47
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 2187
    .local v7, dropTargetLayout:Lcom/android/launcher2/CellLayout;
    const/16 v37, -0x1

    .line 2188
    .local v37, snapScreen:I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    move-object/from16 v0, p0

    if-eq v4, v0, :cond_8a

    .line 2189
    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v6, v6, v8

    float-to-int v6, v6

    aput v6, v5, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x1

    aget v6, v6, v8

    float-to-int v6, v6

    aput v6, v5, v4

    .line 2191
    .local v5, touchXY:[I
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;ZLcom/android/launcher2/DropTarget$DragObject;)V

    .line 2304
    .end local v5           #touchXY:[I
    :cond_7a
    :goto_7a
    return-void

    .line 2181
    .end local v7           #dropTargetLayout:Lcom/android/launcher2/CellLayout;
    .end local v37           #snapScreen:I
    :cond_7b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v8}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto :goto_47

    .line 2192
    .restart local v7       #dropTargetLayout:Lcom/android/launcher2/CellLayout;
    .restart local v37       #snapScreen:I
    :cond_8a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v4, :cond_7a

    .line 2193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v0, v4, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v25, v0

    .line 2195
    .local v25, cell:Landroid/view/View;
    if-eqz v7, :cond_275

    .line 2197
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    if-eq v4, v7, :cond_2c7

    const/16 v30, 0x1

    .line 2198
    .local v30, hasMovedLayouts:Z
    :goto_a6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4, v7}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v29

    .line 2199
    .local v29, hasMovedIntoHotseat:Z
    if-eqz v29, :cond_2cb

    const-wide/16 v15, -0x65

    .line 2202
    .local v15, container:J
    :goto_b2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    if-gez v4, :cond_2cf

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v4, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    move/from16 v36, v0

    .line 2204
    .local v36, screen:I
    :goto_c3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v4, :cond_2d7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v11, v4, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 2205
    .local v11, spanX:I
    :goto_cf
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v4, :cond_2da

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v12, v4, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 2208
    .local v12, spanY:I
    :goto_db
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x0

    aget v4, v4, v6

    float-to-int v9, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v4, v4, v6

    float-to-int v10, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v8, p0

    move-object v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2212
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-nez v4, :cond_11c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, v25

    move-object/from16 v17, v7

    invoke-virtual/range {v13 .. v21}, Lcom/android/launcher2/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher2/CellLayout;[IZLcom/android/launcher2/DragView;Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 2217
    :cond_11c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, v25

    move-object/from16 v19, v7

    move-object/from16 v21, p1

    invoke-virtual/range {v17 .. v22}, Lcom/android/launcher2/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher2/CellLayout;[ILcom/android/launcher2/DropTarget$DragObject;Z)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 2223
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x0

    aget v4, v4, v6

    float-to-int v0, v4

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v4, v4, v6

    float-to-int v0, v4

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v4, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v4, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v24, v0

    move-object/from16 v17, p0

    move-object/from16 v22, v25

    move-object/from16 v23, v7

    invoke-direct/range {v17 .. v24}, Lcom/android/launcher2/Workspace;->findNearestVacantArea(IIIILandroid/view/View;Lcom/android/launcher2/CellLayout;[I)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2227
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move/from16 v0, v36

    if-eq v4, v0, :cond_17d

    if-nez v29, :cond_17d

    .line 2228
    move/from16 v37, v36

    .line 2229
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 2232
    :cond_17d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    if-ltz v4, :cond_275

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    aget v4, v4, v6

    if-ltz v4, :cond_275

    .line 2233
    if-eqz v30, :cond_1c5

    .line 2235
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 2236
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v18, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    aget v19, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v4, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v4, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    move/from16 v21, v0

    move-object/from16 v13, p0

    move-object/from16 v14, v25

    move/from16 v17, v36

    invoke-virtual/range {v13 .. v21}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIII)V

    .line 2241
    :cond_1c5
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/ItemInfo;

    .line 2242
    .local v14, info:Lcom/android/launcher2/ItemInfo;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2243
    .local v32, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v8, 0x1

    aget v6, v6, v8

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v4, v6}, Lcom/android/launcher2/CellLayout;->onMove(Landroid/view/View;II)V

    .line 2244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    move-object/from16 v0, v32

    iput v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 2245
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    aget v4, v4, v6

    move-object/from16 v0, v32

    iput v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 2246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v4, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v18, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    aget v19, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v4, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v4, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    move/from16 v21, v0

    invoke-static/range {v15 .. v21}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/view/View;->setId(I)V

    .line 2249
    const-wide/16 v8, -0x65

    cmp-long v4, v15, v8

    if-eqz v4, :cond_260

    move-object/from16 v0, v25

    instance-of v4, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v4, :cond_260

    .line 2251
    move-object/from16 v26, v7

    .local v26, cellLayout:Lcom/android/launcher2/CellLayout;
    move-object/from16 v31, v25

    .line 2255
    check-cast v31, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 2256
    .local v31, hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;
    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v34

    .line 2257
    .local v34, pinfo:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, v34

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v4, :cond_260

    .line 2258
    new-instance v35, Lcom/android/launcher2/Workspace$8;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/launcher2/Workspace$8;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    .line 2264
    .local v35, resizeRunnable:Ljava/lang/Runnable;
    new-instance v4, Lcom/android/launcher2/Workspace$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v4, v0, v1}, Lcom/android/launcher2/Workspace$9;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 2276
    .end local v26           #cellLayout:Lcom/android/launcher2/CellLayout;
    .end local v31           #hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;
    .end local v34           #pinfo:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v35           #resizeRunnable:Ljava/lang/Runnable;
    :cond_260
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v18, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v19, v0

    move/from16 v17, v36

    invoke-static/range {v13 .. v19}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 2281
    .end local v11           #spanX:I
    .end local v12           #spanY:I
    .end local v14           #info:Lcom/android/launcher2/ItemInfo;
    .end local v15           #container:J
    .end local v29           #hasMovedIntoHotseat:Z
    .end local v30           #hasMovedLayouts:Z
    .end local v32           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v36           #screen:I
    :cond_275
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v33

    check-cast v33, Lcom/android/launcher2/CellLayout;

    .line 2285
    .local v33, parent:Lcom/android/launcher2/CellLayout;
    new-instance v27, Lcom/android/launcher2/Workspace$10;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/Workspace$10;-><init>(Lcom/android/launcher2/Workspace;)V

    .line 2292
    .local v27, disableHardwareLayersRunnable:Ljava/lang/Runnable;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/Workspace;->mAnimatingViewIntoPlace:Z

    .line 2293
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v4}, Lcom/android/launcher2/DragView;->hasDrawn()Z

    move-result v4

    if-eqz v4, :cond_2e0

    .line 2294
    if-gez v37, :cond_2dd

    const/16 v28, -0x1

    .line 2295
    .local v28, duration:I
    :goto_29b
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setFinalScrollForPageChange(I)V

    .line 2296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v0, v25

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v4, v6, v0, v1, v2}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;ILjava/lang/Runnable;)V

    .line 2298
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->resetFinalScrollForPageChange(I)V

    .line 2302
    .end local v28           #duration:I
    :goto_2be
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;)V

    goto/16 :goto_7a

    .line 2197
    .end local v27           #disableHardwareLayersRunnable:Ljava/lang/Runnable;
    .end local v33           #parent:Lcom/android/launcher2/CellLayout;
    :cond_2c7
    const/16 v30, 0x0

    goto/16 :goto_a6

    .line 2199
    .restart local v29       #hasMovedIntoHotseat:Z
    .restart local v30       #hasMovedLayouts:Z
    :cond_2cb
    const-wide/16 v15, -0x64

    goto/16 :goto_b2

    .line 2202
    .restart local v15       #container:J
    :cond_2cf
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v36

    goto/16 :goto_c3

    .line 2204
    .restart local v36       #screen:I
    :cond_2d7
    const/4 v11, 0x1

    goto/16 :goto_cf

    .line 2205
    .restart local v11       #spanX:I
    :cond_2da
    const/4 v12, 0x1

    goto/16 :goto_db

    .line 2294
    .end local v11           #spanX:I
    .end local v15           #container:J
    .end local v29           #hasMovedIntoHotseat:Z
    .end local v30           #hasMovedLayouts:Z
    .end local v36           #screen:I
    .restart local v27       #disableHardwareLayersRunnable:Ljava/lang/Runnable;
    .restart local v33       #parent:Lcom/android/launcher2/CellLayout;
    :cond_2dd
    const/16 v28, 0x12c

    goto :goto_29b

    .line 2300
    :cond_2e0
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2be
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;Z)V
    .registers 8
    .parameter "target"
    .parameter "d"
    .parameter "success"

    .prologue
    const/4 v3, 0x0

    .line 3143
    if-eqz p3, :cond_42

    .line 3144
    if-eq p1, p0, :cond_2b

    .line 3145
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v1, :cond_2b

    .line 3146
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 3147
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher2/DropTarget;

    if-eqz v1, :cond_2b

    .line 3148
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    check-cast v1, Lcom/android/launcher2/DropTarget;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 3165
    :cond_2b
    :goto_2b
    iget-boolean v1, p2, Lcom/android/launcher2/DropTarget$DragObject;->cancelled:Z

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v1, :cond_3d

    .line 3166
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3168
    :cond_3d
    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 3169
    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 3170
    return-void

    .line 3152
    :cond_42
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v1, :cond_2b

    .line 3156
    invoke-direct {p0, v3}, Lcom/android/launcher2/Workspace;->doDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 3158
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 3159
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 3163
    .local v0, cellLayout:Lcom/android/launcher2/CellLayout;
    :goto_5b
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;)V

    goto :goto_2b

    .line 3161
    .end local v0           #cellLayout:Lcom/android/launcher2/CellLayout;
    :cond_63
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .restart local v0       #cellLayout:Lcom/android/launcher2/CellLayout;
    goto :goto_5b
.end method

.method public onEnterScrollArea(III)Z
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "direction"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3207
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 3208
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3209
    .local v2, r:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/launcher2/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 3210
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_20

    move v3, v6

    .line 3238
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_1f
    :goto_1f
    return v3

    .line 3215
    :cond_20
    const/4 v3, 0x0

    .line 3216
    .local v3, result:Z
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v4

    if-nez v4, :cond_1f

    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v4, :cond_1f

    .line 3217
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 3219
    iget v7, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    if-nez p3, :cond_59

    const/4 v4, -0x1

    :goto_32
    add-int v1, v7, v4

    .line 3220
    .local v1, page:I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3221
    .local v0, layout:Lcom/android/launcher2/CellLayout;
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cancelFolderCreation()V

    .line 3223
    if-eqz v0, :cond_1f

    .line 3225
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v4, :cond_4d

    .line 3226
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 3227
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 3229
    :cond_4d
    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 3230
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 3234
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 3235
    const/4 v3, 0x1

    goto :goto_1f

    .end local v0           #layout:Lcom/android/launcher2/CellLayout;
    .end local v1           #page:I
    :cond_59
    move v4, v5

    .line 3219
    goto :goto_32
.end method

.method public onExitScrollArea()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3243
    const/4 v0, 0x0

    .line 3244
    .local v0, result:Z
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-eqz v1, :cond_20

    .line 3245
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_1e

    .line 3247
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 3248
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 3249
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 3253
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 3254
    const/4 v0, 0x1

    .line 3256
    :cond_1e
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 3258
    :cond_20
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 622
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    sparse-switch v1, :sswitch_data_32

    .line 636
    :cond_9
    :goto_9
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 624
    :sswitch_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    .line 625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    goto :goto_9

    .line 629
    :sswitch_1b
    iget v1, p0, Lcom/android/launcher2/Workspace;->mTouchState:I

    if-nez v1, :cond_9

    .line 630
    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 631
    .local v0, currentPage:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v1

    if-nez v1, :cond_9

    .line 632
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    goto :goto_9

    .line 622
    nop

    :sswitch_data_32
    .sparse-switch
        0x0 -> :sswitch_e
        0x1 -> :sswitch_1b
        0x6 -> :sswitch_1b
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1245
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mFirstLayout:Z

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    if-ltz v0, :cond_13

    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 1246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 1248
    :cond_13
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/SmoothPagedView;->onLayout(ZIIII)V

    .line 1252
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    if-eqz v0, :cond_25

    .line 1253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    .line 1256
    new-instance v0, Lcom/android/launcher2/Workspace$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Workspace$4;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1262
    :cond_25
    return-void
.end method

.method protected onPageBeginMoving()V
    .registers 3

    .prologue
    .line 679
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onPageBeginMoving()V

    .line 681
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 682
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled()V

    .line 695
    :goto_c
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 696
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->showOutlines()V

    .line 698
    :cond_15
    return-void

    .line 684
    :cond_16
    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    .line 686
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    iget v1, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Workspace;->enableChildrenCache(II)V

    goto :goto_c

    .line 690
    :cond_23
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Workspace;->enableChildrenCache(II)V

    goto :goto_c
.end method

.method protected onPageEndMoving()V
    .registers 2

    .prologue
    .line 701
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onPageEndMoving()V

    .line 703
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 704
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled()V

    .line 710
    :goto_c
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->dragging()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 712
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 713
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->hideOutlines()V

    .line 716
    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    .line 717
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/Workspace;->mOverScrollPageIndex:I

    .line 719
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2f

    .line 720
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 721
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 723
    :cond_2f
    return-void

    .line 706
    :cond_30
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->clearChildrenCache()V

    goto :goto_c
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 5
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1343
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1344
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1345
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_13

    .line 1346
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1351
    .end local v0           #openFolder:Lcom/android/launcher2/Folder;
    :goto_12
    return v1

    .line 1348
    .restart local v0       #openFolder:Lcom/android/launcher2/Folder;
    :cond_13
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_12

    .line 1351
    .end local v0           #openFolder:Lcom/android/launcher2/Folder;
    :cond_18
    const/4 v1, 0x0

    goto :goto_12
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 3178
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3179
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->setScreen(I)V

    .line 3180
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .registers 5
    .parameter "child"

    .prologue
    .line 428
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onViewAdded(Landroid/view/View;)V

    .line 429
    instance-of v1, p1, Lcom/android/launcher2/CellLayout;

    if-nez v1, :cond_f

    .line 430
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A Workspace can only have CellLayout children."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    move-object v0, p1

    .line 432
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 433
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 434
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setClickable(Z)V

    .line 435
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->enableHardwareLayers()V

    .line 436
    return-void
.end method

.method protected onWallpaperTap(Landroid/view/MotionEvent;)V
    .registers 11
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1428
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    .line 1429
    .local v8, position:[I
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->getLocationOnScreen([I)V

    .line 1431
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 1432
    .local v7, pointerIndex:I
    aget v0, v8, v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v5

    .line 1433
    aget v0, v8, v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v4

    .line 1435
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_36

    const-string v2, "android.wallpaper.tap"

    :goto_2d
    aget v3, v8, v5

    aget v4, v8, v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1439
    return-void

    .line 1435
    :cond_36
    const-string v2, "android.wallpaper.secondaryTap"

    goto :goto_2d
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Launcher;->onWindowVisibilityChanged(I)V

    .line 609
    return-void
.end method

.method protected overScroll(F)V
    .registers 3
    .parameter "amount"

    .prologue
    .line 1225
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1226
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->dampedOverScroll(F)V

    .line 1230
    :goto_9
    return-void

    .line 1228
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->acceleratedOverScroll(F)V

    goto :goto_9
.end method

.method overScrollBackgroundAlphaInterpolator(F)F
    .registers 5
    .parameter "r"

    .prologue
    .line 1130
    const v0, 0x3da3d70a

    .line 1132
    .local v0, threshold:F
    iget v1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_14

    .line 1133
    iput p1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    .line 1138
    :cond_b
    :goto_b
    div-float v1, p1, v0

    const/high16 v2, 0x3f80

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1

    .line 1134
    :cond_14
    iget v1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_b

    .line 1135
    iget p1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    goto :goto_b
.end method

.method overlaps(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragView;IILandroid/graphics/Matrix;)Z
    .registers 16
    .parameter "cl"
    .parameter "dragView"
    .parameter "dragViewX"
    .parameter "dragViewY"
    .parameter "cachedInverseMatrix"

    .prologue
    .line 2583
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempDragCoordinates:[F

    .line 2584
    .local v1, draggedItemTopLeft:[F
    const/4 v7, 0x0

    int-to-float v8, p3

    aput v8, v1, v7

    .line 2585
    const/4 v7, 0x1

    int-to-float v8, p4

    aput v8, v1, v7

    .line 2586
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempDragBottomRightCoordinates:[F

    .line 2587
    .local v0, draggedItemBottomRight:[F
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v1, v8

    invoke-virtual {p2}, Lcom/android/launcher2/DragView;->getDragRegionWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v0, v7

    .line 2588
    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v1, v8

    invoke-virtual {p2}, Lcom/android/launcher2/DragView;->getDragRegionHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v0, v7

    .line 2592
    invoke-virtual {p0, p1, v1, p5}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2593
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v1, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 2594
    .local v4, overlapRegionLeft:F
    const/4 v7, 0x0

    const/4 v8, 0x1

    aget v8, v1, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 2596
    .local v6, overlapRegionTop:F
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_7b

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_7b

    .line 2599
    invoke-virtual {p0, p1, v0, p5}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2600
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    aget v8, v0, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 2601
    .local v5, overlapRegionRight:F
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x1

    aget v8, v0, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2603
    .local v3, overlapRegionBottom:F
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_7b

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v3, v7

    if-gtz v7, :cond_7b

    .line 2604
    sub-float v7, v5, v4

    sub-float v8, v3, v6

    mul-float v2, v7, v8

    .line 2606
    .local v2, overlap:F
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_7b

    .line 2607
    const/4 v7, 0x1

    .line 2611
    .end local v2           #overlap:F
    .end local v3           #overlapRegionBottom:F
    .end local v5           #overlapRegionRight:F
    :goto_7a
    return v7

    :cond_7b
    const/4 v7, 0x0

    goto :goto_7a
.end method

.method removeItems(Ljava/util/ArrayList;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3362
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    .line 3364
    .local v4, widgets:Landroid/appwidget/AppWidgetManager;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 3365
    .local v3, packageNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3366
    .local v6, appCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_12
    if-ge v8, v6, :cond_26

    .line 3367
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    iget-object v0, v0, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3366
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 3370
    :cond_26
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v7

    .line 3371
    .local v7, cellLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 3372
    .local v5, layoutParent:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 3375
    .local v2, layout:Landroid/view/ViewGroup;
    new-instance v0, Lcom/android/launcher2/Workspace$13;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/Workspace$13;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;Ljava/util/HashSet;Landroid/appwidget/AppWidgetManager;Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_2e

    .line 3455
    .end local v2           #layout:Landroid/view/ViewGroup;
    .end local v5           #layoutParent:Lcom/android/launcher2/CellLayout;
    :cond_48
    return-void
.end method

.method public resetFinalScrollForPageChange(I)V
    .registers 4
    .parameter "screen"

    .prologue
    .line 2320
    if-ltz p1, :cond_17

    .line 2321
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2322
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    iget v1, p0, Lcom/android/launcher2/Workspace;->mSavedScrollX:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setScrollX(I)V

    .line 2323
    iget v1, p0, Lcom/android/launcher2/Workspace;->mSavedTranslationX:F

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 2324
    iget v1, p0, Lcom/android/launcher2/Workspace;->mSavedRotationY:F

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 2326
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    :cond_17
    return-void
.end method

.method public resetTransitionTransform(Lcom/android/launcher2/CellLayout;)V
    .registers 3
    .parameter "layout"

    .prologue
    .line 3075
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 3076
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleX:F

    .line 3077
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleY:F

    .line 3078
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationX:F

    .line 3079
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationY:F

    .line 3080
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getRotationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentRotationY:F

    .line 3081
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleX:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 3082
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleY:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 3083
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationX:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 3084
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationY:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    .line 3085
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentRotationY:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 3087
    :cond_3d
    return-void
.end method

.method protected screenScrolled(I)V
    .registers 3
    .parameter "screenCenter"

    .prologue
    .line 1213
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1216
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->screenScrolledLargeUI(I)V

    .line 1221
    :goto_9
    return-void

    .line 1218
    :cond_a
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->screenScrolled(I)V

    .line 1219
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->screenScrolledStandardUI(I)V

    goto :goto_9
.end method

.method public scrollLeft()V
    .registers 3

    .prologue
    .line 3184
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v1

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_d

    .line 3185
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->scrollLeft()V

    .line 3187
    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 3188
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_16

    .line 3189
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 3191
    :cond_16
    return-void
.end method

.method public scrollRight()V
    .registers 3

    .prologue
    .line 3195
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v1

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_d

    .line 3196
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->scrollRight()V

    .line 3198
    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 3199
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_16

    .line 3200
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 3202
    :cond_16
    return-void
.end method

.method public scrollTo(II)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1285
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->scrollTo(II)V

    .line 1286
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->syncChildrenLayersEnabledOnVisiblePages()V

    .line 1287
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .registers 3
    .parameter "alpha"

    .prologue
    .line 1082
    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 1083
    iput p1, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    .line 1084
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 1086
    :cond_b
    return-void
.end method

.method public setChildrenOutlineAlpha(F)V
    .registers 5
    .parameter "alpha"

    .prologue
    .line 1035
    iput p1, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineAlpha:F

    .line 1036
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 1037
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1038
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    .line 1036
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1040
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    :cond_15
    return-void
.end method

.method setFadeForOverScroll(F)V
    .registers 10
    .parameter "fade"

    .prologue
    const/high16 v7, 0x3f80

    const/high16 v6, 0x3f00

    .line 3520
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isScrollingIndicatorEnabled()Z

    move-result v5

    if-nez v5, :cond_b

    .line 3533
    :goto_a
    return-void

    .line 3522
    :cond_b
    iput p1, p0, Lcom/android/launcher2/Workspace;->mOverscrollFade:F

    .line 3523
    sub-float v5, v7, p1

    mul-float/2addr v5, v6

    add-float v3, v6, v5

    .line 3524
    .local v3, reducedFade:F
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3525
    .local v1, parent:Landroid/view/ViewGroup;
    const v5, 0x7f06001f

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object v2, v5

    check-cast v2, Landroid/widget/ImageView;

    .line 3526
    .local v2, qsbDivider:Landroid/widget/ImageView;
    const v5, 0x7f060020

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object v0, v5

    check-cast v0, Landroid/widget/ImageView;

    .line 3527
    .local v0, dockDivider:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollingIndicator()Landroid/widget/ImageView;

    move-result-object v4

    .line 3529
    .local v4, scrollIndicator:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelScrollingIndicatorAnimations()V

    .line 3530
    if-eqz v2, :cond_3c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3531
    :cond_3c
    if-eqz v0, :cond_41

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3532
    :cond_41
    sub-float v5, v7, p1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_a
.end method

.method public setFinalScrollForPageChange(I)V
    .registers 7
    .parameter "screen"

    .prologue
    const/4 v4, 0x0

    .line 2307
    if-ltz p1, :cond_2e

    .line 2308
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mSavedScrollX:I

    .line 2309
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2310
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getTranslationX()F

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mSavedTranslationX:F

    .line 2311
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getRotationY()F

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mSavedRotationY:F

    .line 2312
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getRelativeChildOffset(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 2313
    .local v1, newX:I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setScrollX(I)V

    .line 2314
    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 2315
    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 2317
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    .end local v1           #newX:I
    :cond_2e
    return-void
.end method

.method public setFinalTransitionTransform(Lcom/android/launcher2/CellLayout;)V
    .registers 4
    .parameter "layout"

    .prologue
    .line 3060
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 3061
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3062
    .local v0, index:I
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleX:F

    .line 3063
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getScaleY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleY:F

    .line 3064
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getTranslationX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationX:F

    .line 3065
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getTranslationY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationY:F

    .line 3066
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getRotationY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentRotationY:F

    .line 3067
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 3068
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 3069
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 3070
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    .line 3071
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewRotationYs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 3073
    .end local v0           #index:I
    :cond_4b
    return-void
.end method

.method public setHorizontalWallpaperOffset(F)V
    .registers 3
    .parameter "offset"

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalX(F)V

    .line 793
    return-void
.end method

.method public setVerticalWallpaperOffset(F)V
    .registers 3
    .parameter "offset"

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalY(F)V

    .line 787
    return-void
.end method

.method protected setWallpaperDimension()V
    .registers 6

    .prologue
    .line 764
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 765
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 766
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 767
    .local v1, maxDim:I
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 771
    .local v2, minDim:I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 772
    int-to-float v3, v1

    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 773
    iput v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    .line 778
    :goto_33
    new-instance v3, Lcom/android/launcher2/Workspace$2;

    const-string v4, "setWallpaperDimension"

    invoke-direct {v3, p0, v4}, Lcom/android/launcher2/Workspace$2;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace$2;->start()V

    .line 783
    return-void

    .line 775
    :cond_3e
    int-to-float v3, v2

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 776
    iput v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    goto :goto_33
.end method

.method setup(Lcom/android/launcher2/DragController;)V
    .registers 4
    .parameter "dragController"

    .prologue
    .line 3130
    new-instance v0, Lcom/android/launcher2/SpringLoadedDragController;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher2/SpringLoadedDragController;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    .line 3131
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    .line 3135
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled()V

    .line 3136
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->setWallpaperDimension()V

    .line 3137
    return-void
.end method

.method showOutlines()V
    .registers 5

    .prologue
    .line 1008
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_38

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_38

    .line 1009
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1010
    :cond_13
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1011
    :cond_1c
    const-string v0, "childrenOutlineAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    .line 1012
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1013
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1015
    :cond_38
    return-void
.end method

.method public showOutlinesTemporarily()V
    .registers 2

    .prologue
    .line 1029
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsPageMoving:Z

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1030
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1032
    :cond_f
    return-void
.end method

.method protected snapToPage(I)V
    .registers 2
    .parameter "whichPage"

    .prologue
    .line 870
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    .line 871
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->computeWallpaperScrollRatio(I)V

    .line 872
    return-void
.end method

.method startDrag(Lcom/android/launcher2/CellLayout$CellInfo;)V
    .registers 6
    .parameter "cellInfo"

    .prologue
    .line 1922
    iget-object v2, p1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1925
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1943
    :goto_8
    return-void

    .line 1929
    :cond_9
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 1930
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1932
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 1933
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1935
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 1938
    .local v1, canvas:Landroid/graphics/Canvas;
    sget v0, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 1941
    .local v0, bitmapPadding:I
    invoke-direct {p0, v2, v1, v0}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1942
    invoke-virtual {p0, v2, p0}, Lcom/android/launcher2/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher2/DragSource;)V

    goto :goto_8
.end method

.method public syncPageItems(IZ)V
    .registers 3
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 3506
    return-void
.end method

.method public syncPages()V
    .registers 1

    .prologue
    .line 3502
    return-void
.end method

.method public transitionStateShouldAllowDrop()Z
    .registers 3

    .prologue
    .line 2002
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/launcher2/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3f00

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected updateCurrentPageScroll()V
    .registers 2

    .prologue
    .line 864
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->updateCurrentPageScroll()V

    .line 865
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->computeWallpaperScrollRatio(I)V

    .line 866
    return-void
.end method

.method updateShortcuts(Ljava/util/ArrayList;)V
    .registers 21
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3458
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v4

    .line 3459
    .local v4, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayoutChildren;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_88

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayoutChildren;

    .line 3460
    .local v10, layout:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 3461
    .local v3, childCount:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_19
    if-ge v8, v3, :cond_8

    .line 3462
    invoke-virtual {v10, v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 3463
    .local v13, view:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    .line 3464
    .local v12, tag:Ljava/lang/Object;
    instance-of v14, v12, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v14, :cond_85

    move-object v6, v12

    .line 3465
    check-cast v6, Lcom/android/launcher2/ShortcutInfo;

    .line 3469
    .local v6, info:Lcom/android/launcher2/ShortcutInfo;
    iget-object v7, v6, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3470
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 3471
    .local v11, name:Landroid/content/ComponentName;
    iget v14, v6, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    if-nez v14, :cond_85

    const-string v14, "android.intent.action.MAIN"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_85

    if-eqz v11, :cond_85

    .line 3473
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3474
    .local v2, appCount:I
    const/4 v9, 0x0

    .local v9, k:I
    :goto_47
    if-ge v9, v2, :cond_85

    .line 3475
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 3476
    .local v1, app:Lcom/android/launcher2/ApplicationInfo;
    iget-object v14, v1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v14, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_82

    .line 3477
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    iget-object v15, v6, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v14, v15}, Lcom/android/launcher2/IconCache;->getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/android/launcher2/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    move-object v14, v13

    .line 3478
    check-cast v14, Landroid/widget/TextView;

    const/4 v15, 0x0

    new-instance v16, Lcom/android/launcher2/FastBitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/launcher2/ShortcutInfo;->getIcon(Lcom/android/launcher2/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3474
    :cond_82
    add-int/lit8 v9, v9, 0x1

    goto :goto_47

    .line 3461
    .end local v1           #app:Lcom/android/launcher2/ApplicationInfo;
    .end local v2           #appCount:I
    .end local v6           #info:Lcom/android/launcher2/ShortcutInfo;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v9           #k:I
    .end local v11           #name:Landroid/content/ComponentName;
    :cond_85
    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    .line 3487
    .end local v3           #childCount:I
    .end local v8           #j:I
    .end local v10           #layout:Lcom/android/launcher2/CellLayoutChildren;
    .end local v12           #tag:Ljava/lang/Object;
    .end local v13           #view:Landroid/view/View;
    :cond_88
    return-void
.end method

.method public updateWallpaperOffsetImmediately()V
    .registers 2

    .prologue
    .line 837
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 838
    return-void
.end method

.method willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher2/CellLayout;[I)Z
    .registers 10
    .parameter "dragInfo"
    .parameter "target"
    .parameter "targetCell"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2094
    aget v4, p3, v3

    aget v5, p3, v2

    invoke-virtual {p2, v4, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 2095
    .local v0, dropOverView:Landroid/view/View;
    instance-of v4, v0, Lcom/android/launcher2/FolderIcon;

    if-eqz v4, :cond_18

    move-object v1, v0

    .line 2096
    check-cast v1, Lcom/android/launcher2/FolderIcon;

    .line 2097
    .local v1, fi:Lcom/android/launcher2/FolderIcon;
    invoke-virtual {v1, p1}, Lcom/android/launcher2/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 2101
    .end local v1           #fi:Lcom/android/launcher2/FolderIcon;
    :goto_17
    return v2

    :cond_18
    move v2, v3

    goto :goto_17
.end method

.method willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IZ)Z
    .registers 14
    .parameter "info"
    .parameter "target"
    .parameter "targetCell"
    .parameter "considerTimeout"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2072
    aget v7, p3, v6

    aget v8, p3, v5

    invoke-virtual {p2, v7, v8}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 2074
    .local v2, dropOverView:Landroid/view/View;
    const/4 v3, 0x0

    .line 2075
    .local v3, hasntMoved:Z
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v7, :cond_2a

    .line 2076
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v7, v7, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v1

    .line 2077
    .local v1, cellParent:Lcom/android/launcher2/CellLayout;
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v7, v7, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    aget v8, p3, v6

    if-ne v7, v8, :cond_36

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v7, v7, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    aget v8, p3, v5

    if-ne v7, v8, :cond_36

    if-ne v1, p2, :cond_36

    move v3, v5

    .line 2081
    .end local v1           #cellParent:Lcom/android/launcher2/CellLayout;
    :cond_2a
    :goto_2a
    if-eqz v2, :cond_34

    if-nez v3, :cond_34

    if-eqz p4, :cond_38

    iget-boolean v7, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v7, :cond_38

    :cond_34
    move v5, v6

    .line 2090
    :cond_35
    :goto_35
    return v5

    .restart local v1       #cellParent:Lcom/android/launcher2/CellLayout;
    :cond_36
    move v3, v6

    .line 2077
    goto :goto_2a

    .line 2085
    .end local v1           #cellParent:Lcom/android/launcher2/CellLayout;
    :cond_38
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v0, v7, Lcom/android/launcher2/ShortcutInfo;

    .line 2086
    .local v0, aboveShortcut:Z
    iget v7, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-eqz v7, :cond_46

    iget v7, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-ne v7, v5, :cond_4d

    :cond_46
    move v4, v5

    .line 2090
    .local v4, willBecomeShortcut:Z
    :goto_47
    if-eqz v0, :cond_4b

    if-nez v4, :cond_35

    :cond_4b
    move v5, v6

    goto :goto_35

    .end local v4           #willBecomeShortcut:Z
    :cond_4d
    move v4, v6

    .line 2086
    goto :goto_47
.end method
