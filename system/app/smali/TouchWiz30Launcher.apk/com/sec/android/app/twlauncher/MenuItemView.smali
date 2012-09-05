.class public Lcom/sec/android/app/twlauncher/MenuItemView;
.super Landroid/widget/LinearLayout;
.source "MenuItemView.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# static fields
.field private static final mRoundedRectSolid:Lcom/sec/android/app/twlauncher/RoundedRectSolid;

.field static mUninstallLockPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mBadgeCenterOffsetFromCenter:I

.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mBadgeTopOffset:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDeleteIconLeftOffsetFromCenter:I

.field private mDeleteIconTopOffset:I

.field private mDrawBadgeCount:Z

.field private mEditLeftOffsetFromIconLeft:I

.field private mEditTopOffsetFromIconTop:I

.field private mExternalStorageDrawable:Landroid/graphics/drawable/Drawable;

.field private mExternalStorageOffset:I

.field private mFocusMargin:I

.field private mFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private mFontSizeDefault:I

.field private mFontSizeSmall:I

.field protected mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

.field protected mIconView:Landroid/widget/ImageView;

.field private mIgnoreDrawableStateChanges:Z

.field private mIsDragging:Z

.field private mIsFocused:Z

.field private mIsPressed:Z

.field private mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

.field protected mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

.field protected mNameView:Landroid/widget/TextView;

.field private mPaint:Landroid/graphics/Paint;

.field private mPhantomMode:Z

.field private mShowAppIsRunning:Z

.field private mShownBadgeCnt:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 101
    new-instance v0, Lcom/sec/android/app/twlauncher/RoundedRectSolid;

    const v1, 0x3dcccccd

    const v2, 0x3c888889

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/RoundedRectSolid;-><init>(FF)V

    sput-object v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mRoundedRectSolid:Lcom/sec/android/app/twlauncher/RoundedRectSolid;

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mUninstallLockPackages:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/MenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsDragging:Z

    .line 41
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIgnoreDrawableStateChanges:Z

    .line 43
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mShownBadgeCnt:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mDrawBadgeCount:Z

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect2:Landroid/graphics/Rect;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    .line 83
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPhantomMode:Z

    .line 85
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mShowAppIsRunning:Z

    .line 113
    :try_start_26
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->init()V
    :try_end_29
    .catch Ljava/lang/OutOfMemoryError; {:try_start_26 .. :try_end_29} :catch_2a

    .line 118
    :goto_29
    return-void

    .line 115
    :catch_2a
    move-exception v0

    goto :goto_29
.end method

.method private drawGLBadge(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .registers 30
    .parameter "canvas"
    .parameter "info"

    .prologue
    .line 394
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getBadgeCount()I

    move-result v5

    .line 395
    .local v5, badgeCount:I
    if-lez v5, :cond_1b4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mDrawBadgeCount:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1b4

    .line 396
    const/16 v22, 0x0

    .line 397
    .local v22, width:I
    const/4 v13, 0x0

    .line 399
    .local v13, height:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mShownBadgeCnt:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v5, v0, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v23, v0

    if-nez v23, :cond_17d

    .line 400
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1b5

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 407
    :goto_49
    const/16 v23, 0x64

    move/from16 v0, v23

    if-lt v5, v0, :cond_1cd

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeSmall:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 413
    :goto_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 414
    .local v15, iwidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    .line 415
    .local v14, iheight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    .line 417
    .local v18, paddingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    .line 418
    .local v20, paddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    .line 419
    .local v17, paddingBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    .line 420
    .local v19, paddingRight:I
    sub-int v23, v15, v18

    sub-int v12, v23, v19

    .line 421
    .local v12, defaultContentsWidth:I
    sub-int v23, v14, v20

    sub-int v11, v23, v17

    .line 423
    .local v11, defaultContentsHeight:I
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 424
    .local v6, badgeText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect2:Landroid/graphics/Rect;

    .line 425
    .local v7, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v6, v1, v2, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 427
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 428
    .local v10, contentsWidth:I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 429
    .local v9, contentsHeight:I
    if-ge v10, v12, :cond_e6

    .line 430
    move v10, v12

    .line 432
    :cond_e6
    if-ge v9, v11, :cond_e9

    .line 433
    move v9, v11

    .line 435
    :cond_e9
    add-int v23, v10, v18

    add-int v22, v23, v19

    .line 436
    add-int v23, v9, v20

    add-int v13, v23, v17

    .line 438
    sget-object v23, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v13, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 439
    .local v4, b:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 441
    .local v8, c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 444
    div-int/lit8 v23, v22, 0x2

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-int/lit8 v24, v13, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Paint;->ascent()F

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Paint;->descent()F

    move-result v26

    add-float v25, v25, v26

    const/high16 v26, 0x4000

    div-float v25, v25, v26

    sub-float v24, v24, v25

    const/high16 v25, 0x3f80

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v8, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v23, v0

    if-nez v23, :cond_172

    .line 448
    new-instance v23, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct/range {v23 .. v23}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 450
    :cond_172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 453
    .end local v4           #b:Landroid/graphics/Bitmap;
    .end local v6           #badgeText:Ljava/lang/String;
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v8           #c:Landroid/graphics/Canvas;
    .end local v9           #contentsHeight:I
    .end local v10           #contentsWidth:I
    .end local v11           #defaultContentsHeight:I
    .end local v12           #defaultContentsWidth:I
    .end local v14           #iheight:I
    .end local v15           #iwidth:I
    .end local v17           #paddingBottom:I
    .end local v18           #paddingLeft:I
    .end local v19           #paddingRight:I
    .end local v20           #paddingTop:I
    :cond_17d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getWidth()I

    move-result v23

    sub-int v23, v23, v22

    div-int/lit8 v23, v23, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeCenterOffsetFromCenter:I

    move/from16 v24, v0

    add-int v16, v23, v24

    .line 455
    .local v16, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getPaddingTop()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeTopOffset:I

    move/from16 v24, v0

    add-int v21, v23, v24

    .line 457
    .local v21, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v23, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    .line 459
    .end local v13           #height:I
    .end local v16           #left:I
    .end local v21           #top:I
    .end local v22           #width:I
    :cond_1b4
    return-void

    .line 404
    .restart local v13       #height:I
    .restart local v22       #width:I
    :cond_1b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/16 :goto_49

    .line 410
    :cond_1cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeDefault:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_63
.end method

.method private drawGLDeleteIcon(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuItemDeleteIconSurface(Lcom/sec/android/app/twlauncher/GLCanvas;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v1

    .line 463
    .local v1, s:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    if-eqz v1, :cond_1d

    .line 464
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mDeleteIconLeftOffsetFromCenter:I

    add-int v0, v2, v3

    .line 465
    .local v0, left:I
    int-to-float v2, v0

    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mDeleteIconTopOffset:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    .line 467
    .end local v0           #left:I
    :cond_1d
    return-void
.end method

.method private drawGLEditCorner(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuItemEditCornerSurface(Lcom/sec/android/app/twlauncher/GLCanvas;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v1

    .line 471
    .local v1, s:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    if-eqz v1, :cond_25

    .line 472
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mEditLeftOffsetFromIconLeft:I

    add-int v0, v3, v4

    .line 473
    .local v0, left:I
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mEditTopOffsetFromIconTop:I

    add-int v2, v3, v4

    .line 474
    .local v2, top:I
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v1, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    .line 476
    .end local v0           #left:I
    .end local v2           #top:I
    :cond_25
    return-void
.end method

.method private drawGLFocusedBackground(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 377
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusMargin:I

    .line 378
    .local v3, offset:I
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v5, :cond_38

    .line 379
    new-instance v5, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v5}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 380
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getWidth()I

    move-result v5

    mul-int/lit8 v6, v3, 0x2

    add-int v4, v5, v6

    .line 381
    .local v4, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getHeight()I

    move-result v5

    mul-int/lit8 v6, v3, 0x2

    add-int v2, v5, v6

    .line 383
    .local v2, height:I
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7, v7, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 384
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 385
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 386
    .local v1, c:Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 388
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v5, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 390
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v2           #height:I
    .end local v4           #width:I
    :cond_38
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    neg-int v6, v3

    int-to-float v6, v6

    neg-int v7, v3

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    .line 391
    return-void
.end method

.method private init()V
    .registers 5

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 128
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusMargin:I

    .line 130
    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 132
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v2, 0x7f00

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 133
    const v1, 0x7f0b0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeTopOffset:I

    .line 134
    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeCenterOffsetFromCenter:I

    .line 135
    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mDeleteIconTopOffset:I

    .line 136
    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mDeleteIconLeftOffsetFromCenter:I

    .line 137
    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mEditLeftOffsetFromIconLeft:I

    .line 138
    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mEditTopOffsetFromIconTop:I

    .line 142
    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mExternalStorageDrawable:Landroid/graphics/drawable/Drawable;

    .line 143
    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mExternalStorageOffset:I

    .line 145
    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeDefault:I

    .line 146
    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeSmall:I

    .line 147
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeDefault:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 149
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 151
    return-void
.end method


# virtual methods
.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 16
    .parameter "canvas"

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 254
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e3

    const/4 v13, 0x1

    .line 255
    .local v13, visible:Z
    :goto_a
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    if-nez v0, :cond_1a

    .line 256
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/twlauncher/Launcher;

    .line 257
    .local v9, launcher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 259
    .end local v9           #launcher:Lcom/sec/android/app/twlauncher/Launcher;
    :cond_1a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    .line 260
    .local v11, parent:Landroid/view/ViewParent;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e6

    instance-of v0, v11, Lcom/sec/android/app/twlauncher/AppMenu;

    if-nez v0, :cond_2f

    instance-of v0, v11, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    if-eqz v0, :cond_e6

    :cond_2f
    const/4 v6, 0x1

    .line 262
    .local v6, editMode:Z
    :goto_30
    if-eqz v13, :cond_45

    .line 263
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 264
    const v0, 0x3ecccccd

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 265
    :cond_3e
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    if-eqz v0, :cond_45

    .line 266
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->drawGLFocusedBackground(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 269
    :cond_45
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v12

    .line 270
    .local v12, tag:Ljava/lang/Object;
    if-eqz v6, :cond_50

    if-eqz v12, :cond_50

    .line 271
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->drawGLEditCorner(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 274
    :cond_50
    if-eqz v13, :cond_e1

    .line 275
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameView:Landroid/widget/TextView;

    .line 276
    .local v10, nv:Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {v10}, Landroid/widget/TextView;->getTop()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v10}, Landroid/widget/TextView;->getRight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {v10}, Landroid/widget/TextView;->getBottom()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 278
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    if-eqz v0, :cond_7d

    .line 279
    const/high16 v0, 0x3f00

    const/high16 v1, 0x3f00

    const/high16 v2, 0x3f00

    const/high16 v3, 0x3f80

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 281
    :cond_7d
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 282
    .local v8, iv:Landroid/view/View;
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mShowAppIsRunning:Z

    if-eqz v0, :cond_b9

    .line 283
    sget-object v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mRoundedRectSolid:Lcom/sec/android/app/twlauncher/RoundedRectSolid;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setGeometry(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)V

    .line 286
    const/4 v0, 0x0

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 287
    const/high16 v0, 0x41f0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->rotateX(F)V

    .line 288
    const/4 v0, 0x0

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 291
    const/high16 v0, 0x3f80

    const/high16 v1, 0x3f80

    const/high16 v2, 0x41a0

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FFF)V

    .line 293
    :cond_b9
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 294
    if-eqz v12, :cond_e1

    instance-of v0, v12, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v0, :cond_e1

    move-object v7, v12

    .line 295
    check-cast v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 296
    .local v7, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-nez v6, :cond_e9

    .line 297
    invoke-direct {p0, p1, v7}, Lcom/sec/android/app/twlauncher/MenuItemView;->drawGLBadge(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 330
    .end local v7           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v8           #iv:Landroid/view/View;
    .end local v10           #nv:Landroid/view/View;
    :cond_e1
    :goto_e1
    const/4 v0, 0x0

    return v0

    .line 254
    .end local v6           #editMode:Z
    .end local v11           #parent:Landroid/view/ViewParent;
    .end local v12           #tag:Ljava/lang/Object;
    .end local v13           #visible:Z
    :cond_e3
    const/4 v13, 0x0

    goto/16 :goto_a

    .line 260
    .restart local v11       #parent:Landroid/view/ViewParent;
    .restart local v13       #visible:Z
    :cond_e6
    const/4 v6, 0x0

    goto/16 :goto_30

    .line 298
    .restart local v6       #editMode:Z
    .restart local v7       #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v8       #iv:Landroid/view/View;
    .restart local v10       #nv:Landroid/view/View;
    .restart local v12       #tag:Ljava/lang/Object;
    :cond_e9
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_e1

    .line 326
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->drawGLDeleteIcon(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    goto :goto_e1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 13
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 508
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    if-ne p2, v6, :cond_72

    .line 510
    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    if-eqz v6, :cond_30

    move-object v2, p2

    .line 511
    check-cast v2, Landroid/widget/ImageView;

    .line 512
    .local v2, iv:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 513
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_16

    .line 514
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 516
    :cond_16
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 517
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_21

    .line 518
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 520
    :cond_21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    .line 522
    .local v5, ret:Z
    if-eqz v1, :cond_2a

    .line 523
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 524
    :cond_2a
    if-eqz v0, :cond_2f

    .line 525
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 545
    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #iv:Landroid/widget/ImageView;
    .end local v5           #ret:Z
    :cond_2f
    :goto_2f
    return v5

    .line 528
    :cond_30
    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    if-eqz v6, :cond_6d

    .line 529
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusMargin:I

    .line 530
    .local v3, offset:I
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    .line 531
    .local v4, r:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 532
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 533
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 534
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 535
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 536
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 537
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    .line 538
    .restart local v5       #ret:Z
    goto :goto_2f

    .line 540
    .end local v3           #offset:I
    .end local v4           #r:Landroid/graphics/Rect;
    .end local v5           #ret:Z
    :cond_6d
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    .restart local v5       #ret:Z
    goto :goto_2f

    .line 545
    .end local v5           #ret:Z
    :cond_72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    goto :goto_2f
.end method

.method protected drawableStateChanged()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 335
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 336
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIgnoreDrawableStateChanges:Z

    if-eqz v5, :cond_a

    .line 370
    :cond_9
    :goto_9
    return-void

    .line 340
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getDrawableState()[I

    move-result-object v4

    .line 342
    .local v4, state:[I
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 343
    .local v3, imageView:Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 344
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_19

    .line 345
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 348
    :cond_19
    array-length v0, v4

    .line 349
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1b
    if-ge v2, v0, :cond_42

    .line 350
    aget v5, v4, v2

    const v6, 0x10100a7

    if-ne v5, v6, :cond_2d

    .line 351
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    .line 352
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->invalidate()V

    .line 353
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    goto :goto_9

    .line 355
    :cond_2d
    aget v5, v4, v2

    const v6, 0x101009c

    if-ne v5, v6, :cond_3f

    .line 356
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    .line 357
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    .line 358
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->invalidate()V

    .line 359
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    goto :goto_9

    .line 349
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 364
    :cond_42
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    if-nez v5, :cond_4a

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    if-eqz v5, :cond_9

    .line 365
    :cond_4a
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    .line 366
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    .line 367
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->invalidate()V

    .line 368
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    goto :goto_9
.end method

.method public forceReload()V
    .registers 2

    .prologue
    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 210
    return-void
.end method

.method public freeResources()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 246
    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 247
    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 248
    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 249
    return-void
.end method

.method public getIconView()Landroid/view/View;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 6
    .parameter "location"
    .parameter "dirty"

    .prologue
    const/4 v2, 0x1

    .line 606
    aget v0, p1, v2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v0, :cond_14

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    .line 608
    :cond_14
    aget v0, p1, v2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v0, :cond_27

    .line 609
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    .line 610
    :cond_27
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public isPhantom()Z
    .registers 2

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPhantomMode:Z

    return v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 171
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameView:Landroid/widget/TextView;

    .line 172
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 173
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 122
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 123
    return-void
.end method

.method public preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-nez v0, :cond_f

    .line 232
    new-instance v0, Lcom/sec/android/app/twlauncher/GLChildSurface;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    sget-object v2, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RECYCLE:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLChildSurface;-><init>(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 235
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-nez v0, :cond_1e

    .line 236
    new-instance v0, Lcom/sec/android/app/twlauncher/GLChildSurface;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameView:Landroid/widget/TextView;

    sget-object v2, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RECYCLE:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLChildSurface;-><init>(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 240
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLChildSurface;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLChildSurface;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 242
    return-void
.end method

.method public setAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 581
    if-nez p1, :cond_b

    .line 582
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 602
    :goto_a
    return-void

    .line 586
    :cond_b
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isFiltered()Z

    move-result v0

    if-nez v0, :cond_21

    .line 587
    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 588
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setFiltered(Z)V

    .line 600
    :cond_21
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setTag(Ljava/lang/Object;)V

    .line 601
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->updateBadgeCount()I

    goto :goto_a
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3
    .parameter "resid"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 202
    return-void
.end method

.method public setDrawBadgeCountOn(Z)V
    .registers 2
    .parameter "on"

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mDrawBadgeCount:Z

    .line 374
    return-void
.end method

.method public setIgnoreDrawableStateChanges(Z)V
    .registers 4
    .parameter "aIgnore"

    .prologue
    const/4 v1, 0x0

    .line 158
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIgnoreDrawableStateChanges:Z

    .line 159
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIgnoreDrawableStateChanges:Z

    if-eqz v0, :cond_b

    .line 160
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    .line 161
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    .line 163
    :cond_b
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    return-void
.end method

.method public setIsDragging(Z)V
    .registers 2
    .parameter "val"

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsDragging:Z

    .line 206
    return-void
.end method

.method public setPhantom(Z)V
    .registers 3
    .parameter "aPhantomMode"

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPhantomMode:Z

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuItemView;->setVisibility(I)V

    .line 224
    return-void
.end method

.method public setShowAppIsRunning(Z)V
    .registers 2
    .parameter "running"

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mShowAppIsRunning:Z

    .line 228
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 4
    .parameter "obj"

    .prologue
    .line 550
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 551
    if-eqz p1, :cond_33

    instance-of v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v1, :cond_33

    move-object v0, p1

    .line 552
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 553
    .local v0, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v1, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 554
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v1, :cond_21

    .line 556
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    .line 559
    :cond_21
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v1, :cond_2a

    .line 560
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    .line 563
    :cond_2a
    iget-object v1, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->bg:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_33

    .line 564
    iget-object v1, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->bg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 567
    .end local v0           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_33
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    return-void
.end method

.method public updateVisualsIfRequired()V
    .registers 5

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 571
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v2, :cond_39

    move-object v0, v1

    .line 572
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 573
    .local v0, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameView:Landroid/widget/TextView;

    if-eqz v2, :cond_26

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 574
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    :cond_26
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_39

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eq v2, v3, :cond_39

    .line 576
    iget-object v2, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 578
    .end local v0           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_39
    return-void
.end method
