.class public abstract Lcom/android/musicfx/seekbar/AbsSeekBar;
.super Lcom/android/musicfx/seekbar/ProgressBar;
.source "AbsSeekBar.java"


# instance fields
.field private mDisabledAlpha:F

.field mIsUserSeekable:Z

.field mIsVertical:Z

.field private mKeyProgressIncrement:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field mTouchProgressOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-direct {p0, p1}, Lcom/android/musicfx/seekbar/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 41
    iput-boolean v1, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsUserSeekable:Z

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    .line 48
    iput v1, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/musicfx/seekbar/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-boolean v1, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsUserSeekable:Z

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    .line 48
    iput v1, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/musicfx/seekbar/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput-boolean v5, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsUserSeekable:Z

    .line 43
    iput-boolean v4, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    .line 48
    iput v5, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    .line 64
    sget-object v3, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 67
    .local v1, thumb:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 71
    .local v2, thumbOffset:I
    invoke-virtual {p0, v2}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setThumbOffset(I)V

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    const/4 v3, 0x3

    const/high16 v4, 0x3f00

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mDisabledAlpha:F

    .line 77
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return-void
.end method

.method private attemptClaimDrag()V
    .registers 3

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_a

    .line 471
    iget-object v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 473
    :cond_a
    return-void
.end method

.method private setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V
    .registers 18
    .parameter "w"
    .parameter "h"
    .parameter "thumb"
    .parameter "scale"
    .parameter "gap"

    .prologue
    .line 302
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 303
    .local v8, thumbWidth:I
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 304
    .local v6, thumbHeight:I
    iget-boolean v10, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v10, :cond_39

    .line 305
    iget v10, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingTop:I

    sub-int v10, p2, v10

    iget v11, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingBottom:I

    sub-int/2addr v10, v11

    sub-int v1, v10, v6

    .line 311
    .local v1, available:I
    :goto_15
    iget v10, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v1, v10

    .line 314
    iget-boolean v10, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v10, :cond_48

    .line 315
    const/high16 v10, 0x3f80

    sub-float v10, v10, p4

    int-to-float v11, v1

    mul-float/2addr v10, v11

    float-to-int v7, v10

    .line 317
    .local v7, thumbPos:I
    const/high16 v10, -0x8000

    move/from16 v0, p5

    if-ne v0, v10, :cond_43

    .line 318
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 319
    .local v4, oldBounds:Landroid/graphics/Rect;
    iget v3, v4, Landroid/graphics/Rect;->left:I

    .line 320
    .local v3, leftBound:I
    iget v5, v4, Landroid/graphics/Rect;->right:I

    .line 327
    .end local v4           #oldBounds:Landroid/graphics/Rect;
    .local v5, rightBound:I
    :goto_33
    add-int v10, v7, v6

    invoke-virtual {p3, v3, v7, v5, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 343
    .end local v3           #leftBound:I
    .end local v5           #rightBound:I
    :goto_38
    return-void

    .line 307
    .end local v1           #available:I
    .end local v7           #thumbPos:I
    :cond_39
    iget v10, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingLeft:I

    sub-int v10, p1, v10

    iget v11, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingRight:I

    sub-int/2addr v10, v11

    sub-int v1, v10, v8

    .restart local v1       #available:I
    goto :goto_15

    .line 322
    .restart local v7       #thumbPos:I
    :cond_43
    move/from16 v3, p5

    .line 323
    .restart local v3       #leftBound:I
    add-int v5, p5, v8

    .restart local v5       #rightBound:I
    goto :goto_33

    .line 329
    .end local v3           #leftBound:I
    .end local v5           #rightBound:I
    .end local v7           #thumbPos:I
    :cond_48
    int-to-float v10, v1

    mul-float v10, v10, p4

    float-to-int v7, v10

    .line 331
    .restart local v7       #thumbPos:I
    const/high16 v10, -0x8000

    move/from16 v0, p5

    if-ne v0, v10, :cond_60

    .line 332
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 333
    .restart local v4       #oldBounds:Landroid/graphics/Rect;
    iget v9, v4, Landroid/graphics/Rect;->top:I

    .line 334
    .local v9, topBound:I
    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 341
    .end local v4           #oldBounds:Landroid/graphics/Rect;
    .local v2, bottomBound:I
    :goto_5a
    add-int v10, v7, v8

    invoke-virtual {p3, v7, v9, v10, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_38

    .line 336
    .end local v2           #bottomBound:I
    .end local v9           #topBound:I
    :cond_60
    move/from16 v9, p5

    .line 337
    .restart local v9       #topBound:I
    add-int v2, p5, v6

    .restart local v2       #bottomBound:I
    goto :goto_5a
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .registers 13
    .parameter "event"

    .prologue
    .line 427
    const/4 v3, 0x0

    .line 428
    .local v3, progress:F
    iget-boolean v8, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v8, :cond_3f

    .line 429
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getHeight()I

    move-result v1

    .line 430
    .local v1, height:I
    iget v8, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingTop:I

    sub-int v8, v1, v8

    iget v9, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingBottom:I

    sub-int v0, v8, v9

    .line 431
    .local v0, available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 433
    .local v7, y:I
    iget v8, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingTop:I

    if-ge v7, v8, :cond_29

    .line 434
    const/high16 v4, 0x3f80

    .line 442
    .local v4, scale:F
    :goto_1c
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getMax()I

    move-result v2

    .line 443
    .local v2, max:I
    int-to-float v8, v2

    mul-float/2addr v8, v4

    add-float/2addr v3, v8

    .line 462
    .end local v1           #height:I
    .end local v7           #y:I
    :goto_23
    float-to-int v8, v3

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setProgress(IZ)V

    .line 463
    return-void

    .line 435
    .end local v2           #max:I
    .end local v4           #scale:F
    .restart local v1       #height:I
    .restart local v7       #y:I
    :cond_29
    iget v8, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingBottom:I

    sub-int v8, v1, v8

    if-le v7, v8, :cond_31

    .line 436
    const/4 v4, 0x0

    .restart local v4       #scale:F
    goto :goto_1c

    .line 438
    .end local v4           #scale:F
    :cond_31
    const/high16 v8, 0x3f80

    iget v9, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingTop:I

    sub-int v9, v7, v9

    int-to-float v9, v9

    int-to-float v10, v0

    div-float/2addr v9, v10

    sub-float v4, v8, v9

    .line 439
    .restart local v4       #scale:F
    iget v3, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1c

    .line 445
    .end local v0           #available:I
    .end local v1           #height:I
    .end local v4           #scale:F
    .end local v7           #y:I
    :cond_3f
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getWidth()I

    move-result v5

    .line 446
    .local v5, width:I
    iget v8, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingLeft:I

    sub-int v8, v5, v8

    iget v9, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingRight:I

    sub-int v0, v8, v9

    .line 447
    .restart local v0       #available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 449
    .local v6, x:I
    iget v8, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingLeft:I

    if-ge v6, v8, :cond_5d

    .line 450
    const/4 v4, 0x0

    .line 458
    .restart local v4       #scale:F
    :goto_55
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getMax()I

    move-result v2

    .line 459
    .restart local v2       #max:I
    int-to-float v8, v2

    mul-float/2addr v8, v4

    add-float/2addr v3, v8

    goto :goto_23

    .line 451
    .end local v2           #max:I
    .end local v4           #scale:F
    :cond_5d
    iget v8, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingRight:I

    sub-int v8, v5, v8

    if-le v6, v8, :cond_66

    .line 452
    const/high16 v4, 0x3f80

    .restart local v4       #scale:F
    goto :goto_55

    .line 454
    .end local v4           #scale:F
    :cond_66
    iget v8, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingLeft:I

    sub-int v8, v6, v8

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v4, v8, v9

    .line 455
    .restart local v4       #scale:F
    iget v3, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_55
.end method

.method private updateThumbPos(II)V
    .registers 16
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 230
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 231
    .local v6, d:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 232
    .local v3, thumb:Landroid/graphics/drawable/Drawable;
    iget-boolean v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v0, :cond_72

    .line 233
    if-nez v3, :cond_4d

    move v10, v5

    .line 236
    .local v10, thumbWidth:I
    :goto_f
    iget v0, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mMaxWidth:I

    iget v1, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingLeft:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingRight:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 238
    .local v12, trackWidth:I
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getMax()I

    move-result v8

    .line 239
    .local v8, max:I
    if-lez v8, :cond_2a

    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v8

    div-float v4, v0, v1

    .line 241
    .local v4, scale:F
    :cond_2a
    if-le v10, v12, :cond_52

    .line 242
    if-eqz v3, :cond_34

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 243
    invoke-direct/range {v0 .. v5}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    .line 245
    :cond_34
    sub-int v0, v10, v12

    div-int/lit8 v7, v0, 0x2

    .line 246
    .local v7, gapForCenteringTrack:I
    if-eqz v6, :cond_4c

    .line 248
    iget v0, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingRight:I

    sub-int v0, p1, v0

    sub-int/2addr v0, v7

    iget v1, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingBottom:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v6, v7, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 295
    .end local v7           #gapForCenteringTrack:I
    .end local v10           #thumbWidth:I
    .end local v12           #trackWidth:I
    :cond_4c
    :goto_4c
    return-void

    .line 233
    .end local v4           #scale:F
    .end local v8           #max:I
    :cond_4d
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    goto :goto_f

    .line 253
    .restart local v4       #scale:F
    .restart local v8       #max:I
    .restart local v10       #thumbWidth:I
    .restart local v12       #trackWidth:I
    :cond_52
    if-eqz v6, :cond_65

    .line 255
    iget v0, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingRight:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingBottom:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v6, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 258
    :cond_65
    sub-int v0, v12, v10

    div-int/lit8 v5, v0, 0x2

    .line 259
    .local v5, gap:I
    if-eqz v3, :cond_4c

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 260
    invoke-direct/range {v0 .. v5}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_4c

    .line 264
    .end local v4           #scale:F
    .end local v5           #gap:I
    .end local v8           #max:I
    .end local v10           #thumbWidth:I
    .end local v12           #trackWidth:I
    :cond_72
    if-nez v3, :cond_b3

    move v9, v5

    .line 267
    .local v9, thumbHeight:I
    :goto_75
    iget v0, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mMaxHeight:I

    iget v1, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingTop:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingBottom:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 269
    .local v11, trackHeight:I
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getMax()I

    move-result v8

    .line 270
    .restart local v8       #max:I
    if-lez v8, :cond_90

    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v8

    div-float v4, v0, v1

    .line 272
    .restart local v4       #scale:F
    :cond_90
    if-le v9, v11, :cond_b8

    .line 273
    if-eqz v3, :cond_9a

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 274
    invoke-direct/range {v0 .. v5}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    .line 276
    :cond_9a
    sub-int v0, v9, v11

    div-int/lit8 v7, v0, 0x2

    .line 277
    .restart local v7       #gapForCenteringTrack:I
    if-eqz v6, :cond_4c

    .line 279
    iget v0, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingRight:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingBottom:I

    sub-int v1, p2, v1

    sub-int/2addr v1, v7

    iget v2, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v6, v5, v7, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4c

    .line 264
    .end local v4           #scale:F
    .end local v7           #gapForCenteringTrack:I
    .end local v8           #max:I
    .end local v9           #thumbHeight:I
    .end local v11           #trackHeight:I
    :cond_b3
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    goto :goto_75

    .line 284
    .restart local v4       #scale:F
    .restart local v8       #max:I
    .restart local v9       #thumbHeight:I
    .restart local v11       #trackHeight:I
    :cond_b8
    if-eqz v6, :cond_cb

    .line 286
    iget v0, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingRight:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingBottom:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v6, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 289
    :cond_cb
    sub-int v0, v11, v9

    div-int/lit8 v5, v0, 0x2

    .line 290
    .restart local v5       #gap:I
    if-eqz v3, :cond_4c

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 291
    invoke-direct/range {v0 .. v5}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    goto/16 :goto_4c
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 5

    .prologue
    .line 195
    invoke-super {p0}, Lcom/android/musicfx/seekbar/ProgressBar;->drawableStateChanged()V

    .line 197
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 198
    .local v0, progressDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_14

    .line 199
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v2, 0xff

    :goto_11
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 202
    :cond_14
    iget-object v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 203
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 204
    .local v1, state:[I
    iget-object v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 206
    .end local v1           #state:[I
    :cond_29
    return-void

    .line 199
    :cond_2a
    const/high16 v2, 0x437f

    iget v3, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_11
.end method

.method public getThumbOffset()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 189
    invoke-super {p0}, Lcom/android/musicfx/seekbar/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 190
    iget-object v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 191
    :cond_c
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    .line 347
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/android/musicfx/seekbar/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 348
    iget-object v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_23

    .line 349
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 352
    iget-boolean v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v0, :cond_25

    .line 353
    iget v0, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingLeft:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingTop:I

    iget v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 354
    iget-object v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 355
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_3a

    .line 362
    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    .line 357
    :cond_25
    :try_start_25
    iget v0, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingLeft:I

    iget v1, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 358
    iget-object v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 359
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_39
    .catchall {:try_start_25 .. :try_end_39} :catchall_3a

    goto :goto_23

    .line 347
    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onKeyChange()V
    .registers 1

    .prologue
    .line 492
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 496
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 497
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getProgress()I

    move-result v0

    .line 498
    .local v0, progress:I
    const/16 v2, 0x15

    if-ne p1, v2, :cond_13

    iget-boolean v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_1b

    :cond_13
    const/16 v2, 0x14

    if-ne p1, v2, :cond_28

    iget-boolean v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_28

    .line 500
    :cond_1b
    if-lez v0, :cond_48

    .line 501
    iget v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setProgress(IZ)V

    .line 502
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->onKeyChange()V

    .line 515
    .end local v0           #progress:I
    :goto_27
    return v1

    .line 505
    .restart local v0       #progress:I
    :cond_28
    const/16 v2, 0x16

    if-ne p1, v2, :cond_30

    iget-boolean v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_38

    :cond_30
    const/16 v2, 0x13

    if-ne p1, v2, :cond_48

    iget-boolean v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_48

    .line 507
    :cond_38
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_48

    .line 508
    iget v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setProgress(IZ)V

    .line 509
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->onKeyChange()V

    goto :goto_27

    .line 515
    .end local v0           #progress:I
    :cond_48
    invoke-super {p0, p1, p2}, Lcom/android/musicfx/seekbar/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_27
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 366
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 368
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_5a

    .line 369
    .local v3, thumbHeight:I
    :goto_a
    const/4 v2, 0x0

    .line 370
    .local v2, dw:I
    const/4 v1, 0x0

    .line 371
    .local v1, dh:I
    if-eqz v0, :cond_32

    .line 372
    iget v4, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mMinWidth:I

    iget v5, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 373
    iget v4, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mMinHeight:I

    iget v5, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 374
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 376
    :cond_32
    iget v4, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingLeft:I

    iget v5, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 377
    iget v4, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingTop:I

    iget v5, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 379
    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Lcom/android/musicfx/seekbar/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Lcom/android/musicfx/seekbar/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setMeasuredDimension(II)V

    .line 384
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getMeasuredWidth()I

    move-result v5

    if-le v4, v5, :cond_58

    .line 385
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z
    :try_end_58
    .catchall {:try_start_2 .. :try_end_58} :catchall_61

    .line 387
    :cond_58
    monitor-exit p0

    return-void

    .line 368
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v3           #thumbHeight:I
    :cond_5a
    :try_start_5a
    iget-object v4, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_61

    move-result v3

    goto :goto_a

    .line 366
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :catchall_61
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .registers 9
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 210
    invoke-super {p0, p1, p2}, Lcom/android/musicfx/seekbar/ProgressBar;->onProgressRefresh(FZ)V

    .line 211
    iget-object v3, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 212
    .local v3, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_19

    .line 213
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getHeight()I

    move-result v2

    const/high16 v5, -0x8000

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    .line 219
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->invalidate()V

    .line 221
    :cond_19
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/android/musicfx/seekbar/AbsSeekBar;->updateThumbPos(II)V

    .line 227
    return-void
.end method

.method onStartTrackingTouch()V
    .registers 1

    .prologue
    .line 479
    return-void
.end method

.method onStopTrackingTouch()V
    .registers 1

    .prologue
    .line 486
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 391
    iget-boolean v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_e

    :cond_c
    move v0, v1

    .line 423
    :goto_d
    return v0

    .line 395
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_3e

    goto :goto_d

    .line 397
    :pswitch_16
    invoke-virtual {p0, v0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setPressed(Z)V

    .line 398
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->onStartTrackingTouch()V

    .line 399
    invoke-direct {p0, p1}, Lcom/android/musicfx/seekbar/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_d

    .line 403
    :pswitch_20
    invoke-direct {p0, p1}, Lcom/android/musicfx/seekbar/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 404
    invoke-direct {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_d

    .line 408
    :pswitch_27
    invoke-direct {p0, p1}, Lcom/android/musicfx/seekbar/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 409
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->onStopTrackingTouch()V

    .line 410
    invoke-virtual {p0, v1}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setPressed(Z)V

    .line 414
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->invalidate()V

    goto :goto_d

    .line 418
    :pswitch_34
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->onStopTrackingTouch()V

    .line 419
    invoke-virtual {p0, v1}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setPressed(Z)V

    .line 420
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->invalidate()V

    goto :goto_d

    .line 395
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_16
        :pswitch_27
        :pswitch_20
        :pswitch_34
    .end packed-switch
.end method

.method public setKeyProgressIncrement(I)V
    .registers 2
    .parameter "increment"

    .prologue
    .line 156
    if-gez p1, :cond_3

    neg-int p1, p1

    .end local p1
    :cond_3
    iput p1, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    .line 157
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .registers 5
    .parameter "max"

    .prologue
    .line 173
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/android/musicfx/seekbar/ProgressBar;->setMax(I)V

    .line 175
    iget v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_27

    .line 178
    :cond_13
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 180
    :cond_27
    monitor-exit p0

    return-void

    .line 173
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .parameter "thumb"

    .prologue
    .line 93
    iget-object v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_5d

    .line 94
    iget-object v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 95
    const/4 v0, 0x1

    .line 99
    .local v0, needUpdate:Z
    :goto_f
    if-eqz p1, :cond_3d

    .line 100
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 105
    iget-boolean v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_5f

    .line 106
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumbOffset:I

    .line 112
    :goto_20
    if-eqz v0, :cond_3d

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_3a

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_3d

    .line 115
    :cond_3a
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->requestLayout()V

    .line 118
    :cond_3d
    iput-object p1, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 119
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->invalidate()V

    .line 120
    if-eqz v0, :cond_5c

    .line 121
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/musicfx/seekbar/AbsSeekBar;->updateThumbPos(II)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 125
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 126
    .local v1, state:[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 129
    .end local v1           #state:[I
    :cond_5c
    return-void

    .line 97
    .end local v0           #needUpdate:Z
    :cond_5d
    const/4 v0, 0x0

    .restart local v0       #needUpdate:Z
    goto :goto_f

    .line 108
    :cond_5f
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumbOffset:I

    goto :goto_20
.end method

.method public setThumbOffset(I)V
    .registers 2
    .parameter "thumbOffset"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumbOffset:I

    .line 146
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->invalidate()V

    .line 147
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_a

    invoke-super {p0, p1}, Lcom/android/musicfx/seekbar/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
