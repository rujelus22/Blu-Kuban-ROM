.class public Lcom/sec/android/app/twlauncher/BubbleTextView;
.super Landroid/widget/LinearLayout;
.source "BubbleTextView.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLEasySurface$OnDrawLstnr;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# instance fields
.field private mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mBadgeCenterOffsetFromCenter:I

.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mBadgeTopOffset:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCornerRadius:F

.field private mDrawBadgeCount:Z

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

.field protected mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

.field protected mNameView:Landroid/widget/TextView;

.field private mRoundRectPaint:Landroid/graphics/Paint;

.field private mShownBadgeCnt:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIgnoreDrawableStateChanges:Z

    .line 80
    iput v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mShownBadgeCnt:I

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTmpRect2:Landroid/graphics/Rect;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mDrawBadgeCount:Z

    .line 91
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->init()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIgnoreDrawableStateChanges:Z

    .line 80
    iput v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mShownBadgeCnt:I

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTmpRect2:Landroid/graphics/Rect;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mDrawBadgeCount:Z

    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->init()V

    .line 97
    return-void
.end method

.method private drawGLBadge(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .registers 31
    .parameter "canvas"

    .prologue
    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v22

    .line 395
    .local v22, tag:Ljava/lang/Object;
    if-eqz v22, :cond_16

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move/from16 v25, v0

    if-eqz v25, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsDragging:Z

    move/from16 v25, v0

    if-eqz v25, :cond_17

    .line 472
    :cond_16
    :goto_16
    return-void

    :cond_17
    move-object/from16 v15, v22

    .line 398
    check-cast v15, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 399
    .local v15, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getBadgeCount(Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    move-result v5

    .line 400
    .local v5, badgeCount:I
    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_35

    .line 401
    const/16 v25, 0x3e8

    move/from16 v0, v25

    if-lt v5, v0, :cond_35

    .line 402
    const/16 v5, 0x3e7

    .line 405
    :cond_35
    invoke-virtual {v15, v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setBadgeCount(I)V

    .line 406
    const/16 v25, 0x1

    move/from16 v0, v25

    if-lt v5, v0, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mDrawBadgeCount:Z

    move/from16 v25, v0

    if-eqz v25, :cond_16

    .line 410
    const/16 v24, 0x0

    .line 411
    .local v24, width:I
    const/4 v13, 0x0

    .line 413
    .local v13, height:I
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 414
    .local v6, badgeText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTmpRect2:Landroid/graphics/Rect;

    .line 415
    .local v7, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v6, v1, v2, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 418
    .local v16, iwidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    .line 419
    .local v14, iheight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    .line 421
    .local v19, paddingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    .line 422
    .local v21, paddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    .line 423
    .local v18, paddingBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    .line 424
    .local v20, paddingRight:I
    sub-int v25, v16, v19

    sub-int v12, v25, v20

    .line 425
    .local v12, defaultContentsWidth:I
    sub-int v25, v14, v21

    sub-int v11, v25, v18

    .line 427
    .local v11, defaultContentsHeight:I
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 428
    .local v10, contentsWidth:I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 429
    .local v9, contentsHeight:I
    if-ge v10, v12, :cond_cc

    .line 430
    move v10, v12

    .line 432
    :cond_cc
    if-ge v9, v11, :cond_cf

    .line 433
    move v9, v11

    .line 435
    :cond_cf
    add-int v25, v10, v19

    add-int v24, v25, v20

    .line 436
    add-int v25, v9, v21

    add-int v13, v25, v18

    .line 438
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mShownBadgeCnt:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v5, v0, :cond_e9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v25, v0

    if-nez v25, :cond_1b9

    .line 439
    :cond_e9
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mShownBadgeCnt:I

    .line 440
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    move/from16 v25, v0

    if-eqz v25, :cond_202

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 447
    :goto_113
    const/16 v25, 0x64

    move/from16 v0, v25

    if-lt v5, v0, :cond_21a

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeSmall:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 453
    :goto_12d
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v13, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 454
    .local v4, b:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 456
    .local v8, c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 459
    div-int/lit8 v25, v24, 0x2

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-int/lit8 v26, v13, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Paint;->ascent()F

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Paint;->descent()F

    move-result v28

    add-float v27, v27, v28

    const/high16 v28, 0x4000

    div-float v27, v27, v28

    sub-float v26, v26, v27

    const/high16 v27, 0x3f80

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    move/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v8, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v25, v0

    if-nez v25, :cond_1ae

    .line 463
    new-instance v25, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 465
    :cond_1ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 468
    .end local v4           #b:Landroid/graphics/Bitmap;
    .end local v8           #c:Landroid/graphics/Canvas;
    :cond_1b9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mScrollX:I

    move/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getWidth()I

    move-result v26

    sub-int v26, v26, v24

    div-int/lit8 v26, v26, 0x2

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeCenterOffsetFromCenter:I

    move/from16 v26, v0

    add-int v17, v25, v26

    .line 469
    .local v17, left:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mScrollY:I

    move/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getPaddingTop()I

    move-result v26

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeTopOffset:I

    move/from16 v26, v0

    add-int v23, v25, v26

    .line 471
    .local v23, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v25, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    goto/16 :goto_16

    .line 444
    .end local v17           #left:I
    .end local v23           #top:I
    :cond_202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/16 :goto_113

    .line 450
    :cond_21a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeDefault:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_12d
.end method

.method private drawGLFocusedBackground(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 316
    iget v3, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFocusMargin:I

    .line 317
    .local v3, offset:I
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v5, :cond_38

    .line 318
    new-instance v5, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v5}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 319
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getWidth()I

    move-result v5

    mul-int/lit8 v6, v3, 0x2

    add-int v4, v5, v6

    .line 320
    .local v4, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getHeight()I

    move-result v5

    mul-int/lit8 v6, v3, 0x2

    add-int v2, v5, v6

    .line 322
    .local v2, height:I
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7, v7, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 323
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 324
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 325
    .local v1, c:Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 327
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v5, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 329
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v2           #height:I
    .end local v4           #width:I
    :cond_38
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    neg-int v6, v3

    int-to-float v6, v6

    neg-int v7, v3

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    .line 330
    return-void
.end method

.method private getBadgeCount(Lcom/sec/android/app/twlauncher/ApplicationInfo;)I
    .registers 6
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 132
    if-eqz p1, :cond_c

    instance-of v2, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v2, :cond_c

    .line 133
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getBadgeCount()I

    move-result v1

    .line 143
    :cond_b
    :goto_b
    return v1

    .line 135
    :cond_c
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 138
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->getApplicationInfo(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    .line 140
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-eqz v0, :cond_b

    .line 141
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getBadgeCount()I

    move-result v1

    goto :goto_b
.end method

.method private init()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 100
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setFocusable(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 104
    .local v1, scale:F
    const/high16 v2, 0x4100

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCornerRadius:F

    .line 105
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v3, 0x7f00

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 106
    const v2, 0x7f020020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 107
    const v2, 0x7f0b0021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeDefault:I

    .line 108
    const v2, 0x7f0b0022

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeSmall:I

    .line 109
    const v2, 0x7f0b001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeCenterOffsetFromCenter:I

    .line 113
    const v2, 0x7f020046

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mExternalStorageDrawable:Landroid/graphics/drawable/Drawable;

    .line 114
    const v2, 0x7f0b0050

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mExternalStorageOffset:I

    .line 116
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    .line 117
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeDefault:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 119
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 122
    const v2, 0x7f0b001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFocusMargin:I

    .line 123
    const v2, 0x7f020010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    .line 124
    const v2, 0x7f0b0020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeTopOffset:I

    .line 126
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRoundRectPaint:Landroid/graphics/Paint;

    .line 127
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRoundRectPaint:Landroid/graphics/Paint;

    const v3, 0x7f070003

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    return-void
.end method

.method private preload(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 5
    .parameter "canvas"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameView:Landroid/widget/TextView;

    if-nez v0, :cond_a

    .line 179
    :cond_8
    const/4 v0, 0x0

    .line 188
    :goto_9
    return v0

    .line 181
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-nez v0, :cond_19

    .line 182
    new-instance v0, Lcom/sec/android/app/twlauncher/GLChildSurface;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconView:Landroid/widget/ImageView;

    sget-object v2, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RECYCLE:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLChildSurface;-><init>(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 185
    :cond_19
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->updateTextView()V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLChildSurface;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLEasySurface;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 188
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private updateTextView()V
    .registers 6

    .prologue
    .line 192
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

    if-nez v1, :cond_17

    .line 193
    new-instance v1, Lcom/sec/android/app/twlauncher/GLEasySurface;

    sget-object v2, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RECYCLE:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {v1, v2}, Lcom/sec/android/app/twlauncher/GLEasySurface;-><init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/twlauncher/GLEasySurface;->setViewForInvalidate(Landroid/view/View;)V

    .line 195
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/twlauncher/GLEasySurface;->addOnDrawLstnr(Lcom/sec/android/app/twlauncher/GLEasySurface$OnDrawLstnr;)V

    .line 197
    :cond_17
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 198
    .local v0, loc:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/GLEasySurface;->setLoc(Landroid/graphics/RectF;)V

    .line 199
    return-void
.end method


# virtual methods
.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 4
    .parameter "canvas"

    .prologue
    .line 213
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 214
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/BubbleTextView;->drawGLInternal(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    .line 216
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 15
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 347
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconView:Landroid/widget/ImageView;

    if-ne p2, v6, :cond_72

    .line 349
    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    if-eqz v6, :cond_30

    move-object v2, p2

    .line 350
    check-cast v2, Landroid/widget/ImageView;

    .line 351
    .local v2, iv:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 352
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_16

    .line 353
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 355
    :cond_16
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 356
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_21

    .line 357
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 359
    :cond_21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    .line 361
    .local v5, ret:Z
    if-eqz v1, :cond_2a

    .line 362
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 364
    :cond_2a
    if-eqz v0, :cond_2f

    .line 365
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 389
    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #iv:Landroid/widget/ImageView;
    .end local v5           #ret:Z
    :cond_2f
    :goto_2f
    return v5

    .line 368
    :cond_30
    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsFocused:Z

    if-eqz v6, :cond_6d

    .line 369
    iget v3, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFocusMargin:I

    .line 370
    .local v3, offset:I
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTmpRect:Landroid/graphics/Rect;

    .line 371
    .local v4, r:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 372
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 373
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 374
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 375
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 376
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 377
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    .line 378
    .restart local v5       #ret:Z
    goto :goto_2f

    .line 380
    .end local v3           #offset:I
    .end local v4           #r:Landroid/graphics/Rect;
    .end local v5           #ret:Z
    :cond_6d
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    .restart local v5       #ret:Z
    goto :goto_2f

    .line 384
    .end local v5           #ret:Z
    :cond_72
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameView:Landroid/widget/TextView;

    if-ne p2, v6, :cond_8e

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

    if-eqz v6, :cond_8e

    .line 385
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/GLEasySurface;->getLoc()Landroid/graphics/RectF;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCornerRadius:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCornerRadius:F

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 386
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    .line 387
    .restart local v5       #ret:Z
    goto :goto_2f

    .line 389
    .end local v5           #ret:Z
    :cond_8e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    goto :goto_2f
.end method

.method protected drawGLInternal(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 11
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    const/high16 v1, 0x3f00

    .line 221
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/BubbleTextView;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 241
    :cond_9
    :goto_9
    return v8

    .line 225
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_48

    const/4 v7, 0x1

    .line 226
    .local v7, visible:Z
    :goto_11
    if-eqz v7, :cond_9

    .line 227
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsFocused:Z

    if-eqz v0, :cond_1a

    .line 228
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/BubbleTextView;->drawGLFocusedBackground(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 230
    :cond_1a
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    if-eqz v0, :cond_23

    .line 231
    const/high16 v0, 0x3f80

    invoke-virtual {p1, v1, v1, v1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 233
    :cond_23
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLEasySurface;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 235
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconView:Landroid/widget/ImageView;

    .line 238
    .local v6, iv:Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 239
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/BubbleTextView;->drawGLBadge(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    goto :goto_9

    .end local v6           #iv:Landroid/view/View;
    .end local v7           #visible:Z
    :cond_48
    move v7, v8

    .line 225
    goto :goto_11
.end method

.method protected drawableStateChanged()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 278
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 279
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIgnoreDrawableStateChanges:Z

    if-eqz v5, :cond_a

    .line 313
    :cond_9
    :goto_9
    return-void

    .line 283
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getDrawableState()[I

    move-result-object v4

    .line 285
    .local v4, state:[I
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconView:Landroid/widget/ImageView;

    .line 286
    .local v3, imageView:Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 287
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_19

    .line 288
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 291
    :cond_19
    array-length v0, v4

    .line 292
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1b
    if-ge v2, v0, :cond_42

    .line 293
    aget v5, v4, v2

    const v6, 0x10100a7

    if-ne v5, v6, :cond_2d

    .line 294
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    .line 295
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->invalidate()V

    .line 296
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    goto :goto_9

    .line 298
    :cond_2d
    aget v5, v4, v2

    const v6, 0x101009c

    if-ne v5, v6, :cond_3f

    .line 299
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsFocused:Z

    .line 300
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    .line 301
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->invalidate()V

    .line 302
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    goto :goto_9

    .line 292
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 307
    :cond_42
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    if-nez v5, :cond_4a

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsFocused:Z

    if-eqz v5, :cond_9

    .line 308
    :cond_4a
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    .line 309
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsFocused:Z

    .line 310
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->invalidate()V

    .line 311
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    goto :goto_9
.end method

.method public invalidate()V
    .registers 1

    .prologue
    .line 262
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 263
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 6
    .parameter "location"
    .parameter "dirty"

    .prologue
    const/4 v2, 0x1

    .line 246
    aget v0, p1, v2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v0, :cond_14

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    .line 248
    :cond_14
    aget v0, p1, v2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

    if-eqz v0, :cond_27

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLEasySurface;->invalidate()V

    .line 250
    :cond_27
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateIconSurface()V
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v0, :cond_9

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    .line 258
    :cond_9
    return-void
.end method

.method public onDraw(Lcom/sec/android/app/twlauncher/GLEasySurface;Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "aSurface"
    .parameter "aCanvas"

    .prologue
    const/4 v4, 0x0

    .line 475
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLEasySurface;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCornerRadius:F

    iget v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCornerRadius:F

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {p1, p2, v0, v4, v4}, Lcom/sec/android/app/twlauncher/GLEasySurface;->drawView(Landroid/graphics/Canvas;Landroid/view/View;FF)V

    .line 477
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 207
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameView:Landroid/widget/TextView;

    .line 208
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconView:Landroid/widget/ImageView;

    .line 209
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6
    .parameter "aChanged"
    .parameter "aLeft"
    .parameter "aTop"
    .parameter "aRight"
    .parameter "aBottom"

    .prologue
    .line 481
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 482
    if-eqz p1, :cond_8

    .line 483
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->updateTextView()V

    .line 485
    :cond_8
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    return-void
.end method

.method public setIsDragging(Z)V
    .registers 2
    .parameter "val"

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsDragging:Z

    .line 148
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "aText"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->updateTextView()V

    .line 268
    return-void
.end method
