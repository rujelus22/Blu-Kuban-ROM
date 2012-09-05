.class public abstract Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;
.super Lcom/sec/android/touchwiz/widget/TwProgressBar;
.source "TwAbsSeekBar.java"


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

.field private mDisabledAlpha:F

.field private mIsTouch:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mScale:F

.field private mSeekThumbFontColor:I

.field private mSeekThumbFontEnable:Z

.field private mSeekThumbFontPainter:Landroid/graphics/Paint;

.field private mSeekThumbFontSize:F

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mThumbPosX:I

.field private mThumbPosY:I

.field mTouchProgressOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 93
    const v0, 0x2010006

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v7, 0x3f00

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScale:F

    .line 59
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsUserSeekable:Z

    .line 65
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    .line 70
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    .line 74
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontEnable:Z

    .line 76
    const/high16 v2, 0x4210

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

    .line 105
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScale:F

    .line 106
    sget-object v2, Ltouchwiz/R$styleable;->TwSeekBar:[I

    invoke-virtual {p1, p2, v2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 107
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 108
    .local v1, thumb:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_80

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2020038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 114
    :goto_40
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getThumbOffset()I

    move-result v2

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 117
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mDisabledAlpha:F

    .line 118
    const/4 v2, 0x5

    const/high16 v3, 0x205

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontColor:I

    .line 119
    const/4 v2, 0x6

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScale:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v7

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    .line 120
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontEnable:Z

    .line 121
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    .line 124
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 128
    return-void

    .line 111
    :cond_80
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_40
.end method

.method private attemptClaimDrag()V
    .registers 3

    .prologue
    .line 566
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_a

    .line 567
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 569
    :cond_a
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .registers 16
    .parameter "w"
    .parameter "thumb"
    .parameter "scale"
    .parameter "gap"

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 361
    .local v3, progress:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v4, v9, 0x2

    .line 363
    .local v4, progressSpacing:I
    if-gtz v4, :cond_d

    .line 364
    const/4 v4, 0x0

    .line 366
    :cond_d
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v9, p1, v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int/2addr v9, v10

    sub-int v0, v9, v4

    .line 367
    .local v0, available:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 368
    .local v7, thumbWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 369
    .local v5, thumbHeight:I
    sub-int/2addr v0, v7

    .line 372
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v0, v9

    .line 374
    int-to-float v9, v0

    mul-float/2addr v9, p3

    float-to-int v9, v9

    add-int v6, v9, v4

    .line 377
    .local v6, thumbPos:I
    const/high16 v9, -0x8000

    if-ne p4, v9, :cond_3f

    .line 378
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 379
    .local v2, oldBounds:Landroid/graphics/Rect;
    iget v8, v2, Landroid/graphics/Rect;->top:I

    .line 380
    .local v8, topBound:I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 387
    .end local v2           #oldBounds:Landroid/graphics/Rect;
    .local v1, bottomBound:I
    :goto_35
    add-int v9, v6, v7

    invoke-virtual {p2, v6, v8, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 388
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    .line 389
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    .line 390
    return-void

    .line 382
    .end local v1           #bottomBound:I
    .end local v8           #topBound:I
    :cond_3f
    move v8, p4

    .line 383
    .restart local v8       #topBound:I
    add-int v1, p4, v5

    .restart local v1       #bottomBound:I
    goto :goto_35
.end method

.method private setThumbVerticalPos(ILandroid/graphics/drawable/Drawable;FI)V
    .registers 14
    .parameter "h"
    .parameter "thumb"
    .parameter "scale"
    .parameter "gap"

    .prologue
    .line 396
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v7, p1, v7

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int v0, v7, v8

    .line 397
    .local v0, available:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 398
    .local v6, thumbWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 400
    .local v4, thumbHeight:I
    const/high16 v7, 0x3f80

    sub-float/2addr v7, p3

    int-to-float v8, v0

    mul-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v8, v4, 0x2

    sub-int v5, v7, v8

    .line 403
    .local v5, thumbPos:I
    const/high16 v7, -0x8000

    if-ne p4, v7, :cond_30

    .line 404
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 405
    .local v2, oldBounds:Landroid/graphics/Rect;
    iget v1, v2, Landroid/graphics/Rect;->left:I

    .line 406
    .local v1, leftBound:I
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 413
    .end local v2           #oldBounds:Landroid/graphics/Rect;
    .local v3, rightBound:I
    :goto_26
    add-int v7, v5, v4

    invoke-virtual {p2, v1, v5, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 415
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    .line 416
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    .line 417
    return-void

    .line 408
    .end local v1           #leftBound:I
    .end local v3           #rightBound:I
    :cond_30
    move v1, p4

    .line 409
    .restart local v1       #leftBound:I
    add-int v3, p4, v6

    .restart local v3       #rightBound:I
    goto :goto_26
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .registers 13
    .parameter "event"

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getWidth()I

    move-result v5

    .line 525
    .local v5, width:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHeight()I

    move-result v1

    .line 527
    .local v1, height:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 528
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 530
    .local v7, y:I
    const/4 v3, 0x0

    .line 531
    .local v3, progress:F
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v2

    .line 533
    .local v2, max:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v8

    if-nez v8, :cond_5f

    .line 534
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v8, v5, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int v0, v8, v9

    .line 535
    .local v0, available:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    if-ge v6, v8, :cond_4b

    .line 536
    const/4 v4, 0x0

    .line 554
    .local v4, scale:F
    :goto_2a
    int-to-float v8, v2

    mul-float/2addr v8, v4

    add-float/2addr v3, v8

    .line 556
    const-string v8, "ABS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "progress = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    float-to-int v8, v3

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    .line 559
    return-void

    .line 537
    .end local v4           #scale:F
    :cond_4b
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int v8, v5, v8

    if-le v6, v8, :cond_54

    .line 538
    const/high16 v4, 0x3f80

    .restart local v4       #scale:F
    goto :goto_2a

    .line 540
    .end local v4           #scale:F
    :cond_54
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v8, v6, v8

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v4, v8, v9

    .line 541
    .restart local v4       #scale:F
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_2a

    .line 544
    .end local v0           #available:I
    .end local v4           #scale:F
    :cond_5f
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v8, v1, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int v0, v8, v9

    .line 545
    .restart local v0       #available:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    if-ge v7, v8, :cond_6e

    .line 546
    const/high16 v4, 0x3f80

    .restart local v4       #scale:F
    goto :goto_2a

    .line 547
    .end local v4           #scale:F
    :cond_6e
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int v8, v1, v8

    if-le v7, v8, :cond_76

    .line 548
    const/4 v4, 0x0

    .restart local v4       #scale:F
    goto :goto_2a

    .line 550
    .end local v4           #scale:F
    :cond_76
    const/high16 v8, 0x3f80

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v9, v7, v9

    int-to-float v9, v9

    int-to-float v10, v0

    div-float/2addr v9, v10

    sub-float v4, v8, v9

    .line 551
    .restart local v4       #scale:F
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_2a
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 5

    .prologue
    .line 259
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->drawableStateChanged()V

    .line 261
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 262
    .local v0, progressDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_14

    .line 263
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v2, 0xff

    :goto_11
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 266
    :cond_14
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 267
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 268
    .local v1, state:[I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 270
    .end local v1           #state:[I
    :cond_29
    return-void

    .line 263
    :cond_2a
    const/high16 v2, 0x437f

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_11
.end method

.method public getKeyProgressIncrement()I
    .registers 2

    .prologue
    .line 190
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getSeekThumbFontColor()I
    .registers 2

    .prologue
    .line 239
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontColor:I

    return v0
.end method

.method public getSeekThumbFontSize()I
    .registers 2

    .prologue
    .line 222
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    float-to-int v0, v0

    return v0
.end method

.method public getThumbCenterPosX()I
    .registers 4

    .prologue
    .line 316
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 318
    .local v0, thumbCenterPosX:I
    return v0
.end method

.method public getThumbCenterPosY()I
    .registers 4

    .prologue
    .line 327
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 329
    .local v0, thumbCenterPosY:I
    return v0
.end method

.method public getThumbHeight()I
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getThumbOffset()I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public getThumbWidth()I
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 14
    .parameter "canvas"

    .prologue
    .line 421
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 423
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHeight()I

    move-result v0

    .line 424
    .local v0, height:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_a0

    .line 425
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 428
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 429
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 432
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontEnable:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9d

    .line 434
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgress()I

    move-result v1

    .line 435
    .local v1, progress:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 436
    .local v7, thumbWidth:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 437
    .local v5, thumbHeight:I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 438
    .local v6, thumbText:Ljava/lang/CharSequence;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 441
    .local v2, rectText:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 442
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontColor:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 443
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 445
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v8

    if-nez v8, :cond_a2

    .line 446
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int v9, v7, v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v3, v8

    .line 447
    .local v3, textX:F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int v8, v0, v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v4, v8

    .line 453
    .local v4, textY:F
    :goto_82
    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x31

    if-ne v8, v9, :cond_94

    .line 454
    const/high16 v8, 0x3f80

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScale:F

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f00

    add-float/2addr v8, v9

    sub-float/2addr v3, v8

    .line 457
    :cond_94
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v3, v4, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 460
    .end local v1           #progress:I
    .end local v2           #rectText:Landroid/graphics/Rect;
    .end local v3           #textX:F
    .end local v4           #textY:F
    .end local v5           #thumbHeight:I
    .end local v6           #thumbText:Ljava/lang/CharSequence;
    .end local v7           #thumbWidth:I
    :cond_9d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_a0
    .catchall {:try_start_1 .. :try_end_a0} :catchall_ba

    .line 462
    :cond_a0
    monitor-exit p0

    return-void

    .line 449
    .restart local v1       #progress:I
    .restart local v2       #rectText:Landroid/graphics/Rect;
    .restart local v5       #thumbHeight:I
    .restart local v6       #thumbText:Ljava/lang/CharSequence;
    .restart local v7       #thumbWidth:I
    :cond_a2
    :try_start_a2
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int v9, v7, v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v3, v8

    .line 450
    .restart local v3       #textX:F
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v9, v5

    div-int/lit8 v9, v9, 0x2
    :try_end_b7
    .catchall {:try_start_a2 .. :try_end_b7} :catchall_ba

    add-int/2addr v8, v9

    int-to-float v4, v8

    .restart local v4       #textY:F
    goto :goto_82

    .line 421
    .end local v0           #height:I
    .end local v1           #progress:I
    .end local v2           #rectText:Landroid/graphics/Rect;
    .end local v3           #textX:F
    .end local v4           #textY:F
    .end local v5           #thumbHeight:I
    .end local v6           #thumbText:Ljava/lang/CharSequence;
    .end local v7           #thumbWidth:I
    :catchall_ba
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method onKeyChange()V
    .registers 1

    .prologue
    .line 588
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 592
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgress()I

    move-result v0

    .line 594
    .local v0, progress:I
    packed-switch p1, :pswitch_data_60

    .line 620
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_c
    return v1

    .line 596
    :pswitch_d
    if-lez v0, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v2

    if-eq v2, v1, :cond_8

    .line 597
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    .line 598
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onKeyChange()V

    goto :goto_c

    .line 602
    :pswitch_20
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v2

    if-eq v2, v1, :cond_8

    .line 603
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    .line 604
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onKeyChange()V

    goto :goto_c

    .line 608
    :pswitch_36
    if-lez v0, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v2

    if-eqz v2, :cond_8

    .line 609
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    .line 610
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onKeyChange()V

    goto :goto_c

    .line 614
    :pswitch_49
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v2

    if-eqz v2, :cond_8

    .line 615
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    .line 616
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onKeyChange()V

    goto :goto_c

    .line 594
    nop

    :pswitch_data_60
    .packed-switch 0x13
        :pswitch_49
        :pswitch_36
        :pswitch_d
        :pswitch_20
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 466
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 468
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4b

    const/4 v3, 0x0

    .line 469
    .local v3, thumbHeight:I
    :goto_a
    const/4 v2, 0x0

    .line 470
    .local v2, dw:I
    const/4 v1, 0x0

    .line 471
    .local v1, dh:I
    if-eqz v0, :cond_32

    .line 472
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinWidth:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 473
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 474
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 476
    :cond_32
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 477
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 479
    invoke-static {v2, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->resolveSize(II)I

    move-result v4

    invoke-static {v1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->resolveSize(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setMeasuredDimension(II)V
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_52

    .line 481
    monitor-exit p0

    return-void

    .line 468
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v3           #thumbHeight:I
    :cond_4b
    :try_start_4b
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_52

    move-result v3

    goto :goto_a

    .line 466
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :catchall_52
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .registers 6
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    const/high16 v2, -0x8000

    .line 274
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 275
    .local v0, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_16

    .line 276
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v1

    if-nez v1, :cond_17

    .line 277
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 286
    :goto_13
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    .line 288
    :cond_16
    return-void

    .line 279
    :cond_17
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHeight()I

    move-result v1

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbVerticalPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_13
.end method

.method protected onSizeChanged(IIII)V
    .registers 12
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 293
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 294
    .local v3, thumb:Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_29

    const/4 v4, 0x0

    .line 295
    .local v4, thumbHeight:I
    :goto_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v1

    .line 296
    .local v1, max:I
    if-lez v1, :cond_2e

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgress()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v2, v5, v6

    .line 299
    .local v2, scale:F
    :goto_13
    if-eqz v3, :cond_28

    .line 300
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v5

    if-nez v5, :cond_30

    .line 301
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v5, p2, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    div-int/lit8 v0, v5, 0x2

    .line 302
    .local v0, gap:I
    invoke-direct {p0, p1, v3, v2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 308
    .end local v0           #gap:I
    :cond_28
    :goto_28
    return-void

    .line 294
    .end local v1           #max:I
    .end local v2           #scale:F
    .end local v4           #thumbHeight:I
    :cond_29
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_5

    .line 296
    .restart local v1       #max:I
    .restart local v4       #thumbHeight:I
    :cond_2e
    const/4 v2, 0x0

    goto :goto_13

    .line 304
    .restart local v2       #scale:F
    :cond_30
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v5, p1, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x2

    .line 305
    .restart local v0       #gap:I
    invoke-direct {p0, p2, v3, v2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbVerticalPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_28
.end method

.method onStartTrackingTouch()V
    .registers 1

    .prologue
    .line 575
    return-void
.end method

.method onStopTrackingTouch()V
    .registers 1

    .prologue
    .line 582
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 485
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsUserSeekable:Z

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_e

    :cond_c
    move v0, v1

    .line 520
    :goto_d
    return v0

    .line 489
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_46

    goto :goto_d

    .line 491
    :pswitch_16
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setPressed(Z)V

    .line 492
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    .line 493
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStartTrackingTouch()V

    .line 494
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 495
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    goto :goto_d

    .line 499
    :pswitch_25
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 500
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->attemptClaimDrag()V

    goto :goto_d

    .line 504
    :pswitch_2c
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 505
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStopTrackingTouch()V

    .line 506
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setPressed(Z)V

    .line 507
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    .line 511
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    goto :goto_d

    .line 515
    :pswitch_3b
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStopTrackingTouch()V

    .line 516
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setPressed(Z)V

    .line 517
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    goto :goto_d

    .line 489
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_16
        :pswitch_2c
        :pswitch_25
        :pswitch_3b
    .end packed-switch
.end method

.method public setKeyProgressIncrement(I)V
    .registers 2
    .parameter "increment"

    .prologue
    .line 178
    if-gez p1, :cond_3

    neg-int p1, p1

    .end local p1
    :cond_3
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    .line 179
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .registers 5
    .parameter "max"

    .prologue
    .line 195
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setMax(I)V

    .line 197
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_27

    .line 200
    :cond_13
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 202
    :cond_27
    monitor-exit p0

    return-void

    .line 195
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSeekThumbFontColor(I)V
    .registers 2
    .parameter "resourceID"

    .prologue
    .line 231
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontColor:I

    .line 232
    return-void
.end method

.method public setSeekThumbFontEnable(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontEnable:Z

    .line 250
    return-void
.end method

.method public setSeekThumbFontSize(I)V
    .registers 4
    .parameter "fontSize"

    .prologue
    .line 209
    if-gez p1, :cond_d

    .line 210
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    .line 214
    :goto_c
    return-void

    .line 212
    :cond_d
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    goto :goto_c
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "thumb"

    .prologue
    .line 140
    if-eqz p1, :cond_d

    .line 141
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 146
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    .line 148
    :cond_d
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 149
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    .line 150
    return-void
.end method

.method public setThumbOffset(I)V
    .registers 2
    .parameter "thumbOffset"

    .prologue
    .line 167
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    .line 168
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    .line 169
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_a

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
