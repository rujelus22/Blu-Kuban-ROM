.class public Lcom/google/android/music/VerticalTextSpinner;
.super Landroid/view/View;
.source "VerticalTextSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/VerticalTextSpinner$OnChangedListener;
    }
.end annotation


# static fields
.field private static SCROLL_DISTANCE:I

.field private static TEXT1_Y:I

.field private static TEXT2_Y:I

.field private static TEXT3_Y:I

.field private static TEXT4_Y:I

.field private static TEXT5_Y:I

.field private static TEXT_MARGIN_RIGHT:I

.field private static TEXT_SIZE:I

.field private static TEXT_SPACING:I


# instance fields
.field private isDraggingSelector:Z

.field private final mBackgroundFocused:Landroid/graphics/drawable/Drawable;

.field private mCurrentSelectedPos:I

.field private mDelayBetweenAnimations:J

.field private mDistanceOfEachAnimation:I

.field private mDownY:I

.field private mIsAnimationRunning:Z

.field private mListener:Lcom/google/android/music/VerticalTextSpinner$OnChangedListener;

.field private mNumberOfAnimations:I

.field private mScrollInterval:J

.field private mScrollMode:I

.field private mSelector:Landroid/graphics/drawable/Drawable;

.field private final mSelectorDefaultY:I

.field private final mSelectorFocused:Landroid/graphics/drawable/Drawable;

.field private final mSelectorHeight:I

.field private final mSelectorMaxY:I

.field private final mSelectorMinY:I

.field private final mSelectorNormal:Landroid/graphics/drawable/Drawable;

.field private mSelectorY:I

.field private mStopAnimation:Z

.field private mText1:Ljava/lang/String;

.field private mText2:Ljava/lang/String;

.field private mText3:Ljava/lang/String;

.field private mText4:Ljava/lang/String;

.field private mText5:Ljava/lang/String;

.field private mTextList:[Ljava/lang/String;

.field private final mTextPaintDark:Landroid/text/TextPaint;

.field private final mTextPaintLight:Landroid/text/TextPaint;

.field private mTotalAnimatedDistance:I

.field private mWrapAround:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/VerticalTextSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/music/VerticalTextSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput-boolean v4, p0, Lcom/google/android/music/VerticalTextSpinner;->mWrapAround:Z

    .line 95
    invoke-virtual {p0}, Lcom/google/android/music/VerticalTextSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 96
    .local v0, scale:F
    const/high16 v1, 0x4190

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Lcom/google/android/music/VerticalTextSpinner;->TEXT_SPACING:I

    .line 97
    const/high16 v1, 0x41c8

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Lcom/google/android/music/VerticalTextSpinner;->TEXT_MARGIN_RIGHT:I

    .line 98
    const/high16 v1, 0x41b0

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Lcom/google/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    .line 99
    sget v1, Lcom/google/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    sget v2, Lcom/google/android/music/VerticalTextSpinner;->TEXT_SPACING:I

    add-int/2addr v1, v2

    sput v1, Lcom/google/android/music/VerticalTextSpinner;->SCROLL_DISTANCE:I

    .line 100
    sget v1, Lcom/google/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    mul-int/lit8 v1, v1, 0x0

    sget v2, Lcom/google/android/music/VerticalTextSpinner;->TEXT_SPACING:I

    mul-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    sput v1, Lcom/google/android/music/VerticalTextSpinner;->TEXT1_Y:I

    .line 101
    sget v1, Lcom/google/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    mul-int/lit8 v1, v1, 0x1

    sget v2, Lcom/google/android/music/VerticalTextSpinner;->TEXT_SPACING:I

    mul-int/lit8 v2, v2, 0x0

    add-int/2addr v1, v2

    sput v1, Lcom/google/android/music/VerticalTextSpinner;->TEXT2_Y:I

    .line 102
    sget v1, Lcom/google/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lcom/google/android/music/VerticalTextSpinner;->TEXT_SPACING:I

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/google/android/music/VerticalTextSpinner;->TEXT3_Y:I

    .line 103
    sget v1, Lcom/google/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    mul-int/lit8 v1, v1, 0x3

    sget v2, Lcom/google/android/music/VerticalTextSpinner;->TEXT_SPACING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sput v1, Lcom/google/android/music/VerticalTextSpinner;->TEXT4_Y:I

    .line 104
    sget v1, Lcom/google/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    mul-int/lit8 v1, v1, 0x4

    sget v2, Lcom/google/android/music/VerticalTextSpinner;->TEXT_SPACING:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    sput v1, Lcom/google/android/music/VerticalTextSpinner;->TEXT5_Y:I

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02020e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mBackgroundFocused:Landroid/graphics/drawable/Drawable;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02020f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorFocused:Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020210

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorNormal:Landroid/graphics/drawable/Drawable;

    .line 110
    iget-object v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorFocused:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorHeight:I

    .line 111
    iget-object v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mBackgroundFocused:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget v2, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorDefaultY:I

    .line 112
    iput v5, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorMinY:I

    .line 113
    iget-object v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mBackgroundFocused:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget v2, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorMaxY:I

    .line 115
    iget-object v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorNormal:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 116
    iget v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorDefaultY:I

    iput v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorY:I

    .line 118
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mTextPaintDark:Landroid/text/TextPaint;

    .line 119
    iget-object v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mTextPaintDark:Landroid/text/TextPaint;

    sget v2, Lcom/google/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 120
    iget-object v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mTextPaintDark:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 123
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mTextPaintLight:Landroid/text/TextPaint;

    .line 124
    iget-object v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mTextPaintLight:Landroid/text/TextPaint;

    sget v2, Lcom/google/android/music/VerticalTextSpinner;->TEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 125
    iget-object v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mTextPaintLight:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 128
    iput v5, p0, Lcom/google/android/music/VerticalTextSpinner;->mScrollMode:I

    .line 129
    const-wide/16 v1, 0x190

    iput-wide v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mScrollInterval:J

    .line 130
    invoke-direct {p0}, Lcom/google/android/music/VerticalTextSpinner;->calculateAnimationValues()V

    .line 131
    return-void
.end method

.method private calculateAnimationValues()V
    .registers 5

    .prologue
    const/4 v2, 0x4

    .line 448
    iget-wide v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mScrollInterval:J

    long-to-int v0, v0

    sget v1, Lcom/google/android/music/VerticalTextSpinner;->SCROLL_DISTANCE:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mNumberOfAnimations:I

    .line 449
    iget v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mNumberOfAnimations:I

    if-ge v0, v2, :cond_1b

    .line 450
    iput v2, p0, Lcom/google/android/music/VerticalTextSpinner;->mNumberOfAnimations:I

    .line 451
    sget v0, Lcom/google/android/music/VerticalTextSpinner;->SCROLL_DISTANCE:I

    iget v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mNumberOfAnimations:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mDistanceOfEachAnimation:I

    .line 452
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mDelayBetweenAnimations:J

    .line 457
    :goto_1a
    return-void

    .line 454
    :cond_1b
    sget v0, Lcom/google/android/music/VerticalTextSpinner;->SCROLL_DISTANCE:I

    iget v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mNumberOfAnimations:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mDistanceOfEachAnimation:I

    .line 455
    iget-wide v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mScrollInterval:J

    iget v2, p0, Lcom/google/android/music/VerticalTextSpinner;->mNumberOfAnimations:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mDelayBetweenAnimations:J

    goto :goto_1a
.end method

.method private calculateTextPositions()V
    .registers 2

    .prologue
    .line 405
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/google/android/music/VerticalTextSpinner;->getTextToDraw(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mText1:Ljava/lang/String;

    .line 406
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/VerticalTextSpinner;->getTextToDraw(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mText2:Ljava/lang/String;

    .line 407
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/VerticalTextSpinner;->getTextToDraw(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mText3:Ljava/lang/String;

    .line 408
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/VerticalTextSpinner;->getTextToDraw(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mText4:Ljava/lang/String;

    .line 409
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/music/VerticalTextSpinner;->getTextToDraw(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mText5:Ljava/lang/String;

    .line 410
    return-void
.end method

.method private canScrollDown()Z
    .registers 2

    .prologue
    .line 179
    iget v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    if-gtz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mWrapAround:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private canScrollUp()Z
    .registers 3

    .prologue
    .line 183
    iget v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    iget-object v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mWrapAround:Z

    if-eqz v0, :cond_f

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V
    .registers 9
    .parameter "canvas"
    .parameter "text"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 460
    invoke-virtual {p4, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v0, v2

    .line 461
    .local v0, width:I
    invoke-virtual {p0}, Lcom/google/android/music/VerticalTextSpinner;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v0

    sget v3, Lcom/google/android/music/VerticalTextSpinner;->TEXT_MARGIN_RIGHT:I

    sub-int v1, v2, v3

    .line 462
    .local v1, x:I
    int-to-float v2, v1

    int-to-float v3, p3

    invoke-virtual {p1, p2, v2, v3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 463
    return-void
.end method

.method private getNewIndex(I)I
    .registers 5
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 421
    iget v2, p0, Lcom/google/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    add-int v0, v2, p1

    .line 422
    .local v0, index:I
    if-gez v0, :cond_11

    .line 423
    iget-boolean v2, p0, Lcom/google/android/music/VerticalTextSpinner;->mWrapAround:Z

    if-eqz v2, :cond_10

    .line 424
    iget-object v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_f
    :goto_f
    move v1, v0

    .line 435
    :cond_10
    return v1

    .line 428
    :cond_11
    iget-object v2, p0, Lcom/google/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_f

    .line 429
    iget-boolean v2, p0, Lcom/google/android/music/VerticalTextSpinner;->mWrapAround:Z

    if-eqz v2, :cond_10

    .line 430
    iget-object v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v0, v1

    goto :goto_f
.end method

.method private getTextToDraw(I)Ljava/lang/String;
    .registers 4
    .parameter "offset"

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcom/google/android/music/VerticalTextSpinner;->getNewIndex(I)I

    move-result v0

    .line 414
    .local v0, index:I
    if-gez v0, :cond_9

    .line 415
    const-string v1, ""

    .line 417
    :goto_8
    return-object v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_8
.end method

.method private scroll()V
    .registers 2

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mIsAnimationRunning:Z

    if-eqz v0, :cond_5

    .line 445
    :goto_4
    return-void

    .line 442
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mIsAnimationRunning:Z

    .line 444
    invoke-virtual {p0}, Lcom/google/android/music/VerticalTextSpinner;->invalidate()V

    goto :goto_4
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 33
    .parameter "canvas"

    .prologue
    .line 251
    const/4 v13, 0x0

    .line 252
    .local v13, selectorLeft:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorY:I

    .line 253
    .local v15, selectorTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/VerticalTextSpinner;->getWidth()I

    move-result v14

    .line 254
    .local v14, selectorRight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorHeight:I

    move/from16 v28, v0

    add-int v12, v27, v28

    .line 257
    .local v12, selectorBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v1, v15, v14, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    move-object/from16 v27, v0

    if-nez v27, :cond_3c

    .line 397
    :cond_3b
    :goto_3b
    return-void

    .line 266
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mTextPaintDark:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    .line 267
    .local v21, textPaintDark:Landroid/text/TextPaint;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/VerticalTextSpinner;->hasFocus()Z

    move-result v27

    if-eqz v27, :cond_283

    .line 270
    const/16 v24, 0x0

    .line 271
    .local v24, topLeft:I
    const/16 v26, 0x0

    .line 272
    .local v26, topTop:I
    move/from16 v25, v14

    .line 273
    .local v25, topRight:I
    add-int/lit8 v23, v15, 0xf

    .line 276
    .local v23, topBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mText1:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 277
    .local v16, text1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mText2:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 278
    .local v17, text2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mText3:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 279
    .local v18, text3:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mText4:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 280
    .local v19, text4:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mText5:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 281
    .local v20, text5:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mTextPaintLight:Landroid/text/TextPaint;

    move-object/from16 v22, v0

    .line 287
    .local v22, textPaintLight:Landroid/text/TextPaint;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 288
    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v25

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 289
    sget v27, Lcom/google/android/music/VerticalTextSpinner;->TEXT1_Y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, v27

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 291
    sget v27, Lcom/google/android/music/VerticalTextSpinner;->TEXT2_Y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v27

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 293
    sget v27, Lcom/google/android/music/VerticalTextSpinner;->TEXT3_Y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v27

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 295
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 302
    const/16 v27, 0x0

    add-int/lit8 v28, v15, 0xf

    add-int/lit8 v29, v12, -0xf

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v14, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 304
    sget v27, Lcom/google/android/music/VerticalTextSpinner;->TEXT2_Y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v27

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 306
    sget v27, Lcom/google/android/music/VerticalTextSpinner;->TEXT3_Y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v27

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 308
    sget v27, Lcom/google/android/music/VerticalTextSpinner;->TEXT4_Y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, v27

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 310
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 313
    const/4 v6, 0x0

    .line 314
    .local v6, bottomLeft:I
    add-int/lit8 v8, v12, -0xf

    .line 315
    .local v8, bottomTop:I
    move v7, v14

    .line 316
    .local v7, bottomRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/VerticalTextSpinner;->getMeasuredHeight()I

    move-result v5

    .line 322
    .local v5, bottomBottom:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 323
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8, v7, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 324
    sget v27, Lcom/google/android/music/VerticalTextSpinner;->TEXT3_Y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v27

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 326
    sget v27, Lcom/google/android/music/VerticalTextSpinner;->TEXT4_Y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, v27

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 328
    sget v27, Lcom/google/android/music/VerticalTextSpinner;->TEXT5_Y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v27

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 335
    .end local v5           #bottomBottom:I
    .end local v6           #bottomLeft:I
    .end local v7           #bottomRight:I
    .end local v8           #bottomTop:I
    .end local v16           #text1:Ljava/lang/String;
    .end local v17           #text2:Ljava/lang/String;
    .end local v18           #text3:Ljava/lang/String;
    .end local v19           #text4:Ljava/lang/String;
    .end local v20           #text5:Ljava/lang/String;
    .end local v22           #textPaintLight:Landroid/text/TextPaint;
    .end local v23           #topBottom:I
    .end local v24           #topLeft:I
    .end local v25           #topRight:I
    .end local v26           #topTop:I
    :goto_188
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mIsAnimationRunning:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3b

    .line 336
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mDistanceOfEachAnimation:I

    move/from16 v28, v0

    add-int v27, v27, v28

    sget v28, Lcom/google/android/music/VerticalTextSpinner;->SCROLL_DISTANCE:I

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_2fa

    .line 337
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    .line 338
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mScrollMode:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_29a

    .line 339
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    .line 340
    .local v10, oldPos:I
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/google/android/music/VerticalTextSpinner;->getNewIndex(I)I

    move-result v9

    .line 341
    .local v9, newPos:I
    if-ltz v9, :cond_1f9

    .line 342
    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mListener:Lcom/google/android/music/VerticalTextSpinner$OnChangedListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1f9

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mListener:Lcom/google/android/music/VerticalTextSpinner$OnChangedListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v10, v2, v3}, Lcom/google/android/music/VerticalTextSpinner$OnChangedListener;->onChanged(Lcom/google/android/music/VerticalTextSpinner;II[Ljava/lang/String;)V

    .line 347
    :cond_1f9
    if-ltz v9, :cond_214

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    if-lt v9, v0, :cond_21c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mWrapAround:Z

    move/from16 v27, v0

    if-nez v27, :cond_21c

    .line 348
    :cond_214
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 350
    :cond_21c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/VerticalTextSpinner;->calculateTextPositions()V

    .line 365
    .end local v9           #newPos:I
    .end local v10           #oldPos:I
    :cond_21f
    :goto_21f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mStopAnimation:Z

    move/from16 v27, v0

    if-eqz v27, :cond_268

    .line 366
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/music/VerticalTextSpinner;->mScrollMode:I

    .line 371
    .local v11, previousScrollMode:I
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/VerticalTextSpinner;->mIsAnimationRunning:Z

    .line 372
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 373
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/VerticalTextSpinner;->mScrollMode:I

    .line 378
    const-string v27, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    move/from16 v29, v0

    aget-object v28, v28, v29

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_268

    .line 379
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/music/VerticalTextSpinner;->mScrollMode:I

    .line 380
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/VerticalTextSpinner;->scroll()V

    .line 381
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 391
    .end local v11           #previousScrollMode:I
    :cond_268
    :goto_268
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mDelayBetweenAnimations:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x0

    cmp-long v27, v27, v29

    if-lez v27, :cond_342

    .line 392
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mDelayBetweenAnimations:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/VerticalTextSpinner;->postInvalidateDelayed(J)V

    goto/16 :goto_3b

    .line 333
    :cond_283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mText3:Ljava/lang/String;

    move-object/from16 v27, v0

    sget v28, Lcom/google/android/music/VerticalTextSpinner;->TEXT3_Y:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move/from16 v3, v28

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/VerticalTextSpinner;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/text/TextPaint;)V

    goto/16 :goto_188

    .line 351
    :cond_29a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mScrollMode:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_21f

    .line 352
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    .line 353
    .restart local v10       #oldPos:I
    const/16 v27, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/google/android/music/VerticalTextSpinner;->getNewIndex(I)I

    move-result v9

    .line 354
    .restart local v9       #newPos:I
    if-ltz v9, :cond_2e1

    .line 355
    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mListener:Lcom/google/android/music/VerticalTextSpinner$OnChangedListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2e1

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mListener:Lcom/google/android/music/VerticalTextSpinner$OnChangedListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v10, v2, v3}, Lcom/google/android/music/VerticalTextSpinner$OnChangedListener;->onChanged(Lcom/google/android/music/VerticalTextSpinner;II[Ljava/lang/String;)V

    .line 360
    :cond_2e1
    if-ltz v9, :cond_2ed

    if-nez v9, :cond_2f5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mWrapAround:Z

    move/from16 v27, v0

    if-nez v27, :cond_2f5

    .line 361
    :cond_2ed
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 363
    :cond_2f5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/VerticalTextSpinner;->calculateTextPositions()V

    goto/16 :goto_21f

    .line 385
    .end local v9           #newPos:I
    .end local v10           #oldPos:I
    :cond_2fa
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mScrollMode:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_31e

    .line 386
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mDistanceOfEachAnimation:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    goto/16 :goto_268

    .line 387
    :cond_31e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mScrollMode:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_268

    .line 388
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/VerticalTextSpinner;->mDistanceOfEachAnimation:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/VerticalTextSpinner;->mTotalAnimatedDistance:I

    goto/16 :goto_268

    .line 394
    :cond_342
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/VerticalTextSpinner;->invalidate()V

    goto/16 :goto_3b
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 189
    if-eqz p1, :cond_c

    .line 190
    iget-object v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mBackgroundFocused:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/VerticalTextSpinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorFocused:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 197
    :goto_b
    return-void

    .line 193
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/VerticalTextSpinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorNormal:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 195
    iget v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorDefaultY:I

    iput v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorY:I

    goto :goto_b
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 164
    const/16 v1, 0x13

    if-ne p1, v1, :cond_14

    invoke-direct {p0}, Lcom/google/android/music/VerticalTextSpinner;->canScrollDown()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 165
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mScrollMode:I

    .line 166
    invoke-direct {p0}, Lcom/google/android/music/VerticalTextSpinner;->scroll()V

    .line 167
    iput-boolean v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 175
    :goto_13
    return v0

    .line 169
    :cond_14
    const/16 v1, 0x14

    if-ne p1, v1, :cond_26

    invoke-direct {p0}, Lcom/google/android/music/VerticalTextSpinner;->canScrollUp()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 170
    iput v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mScrollMode:I

    .line 171
    invoke-direct {p0}, Lcom/google/android/music/VerticalTextSpinner;->scroll()V

    .line 172
    iput-boolean v0, p0, Lcom/google/android/music/VerticalTextSpinner;->mStopAnimation:Z

    goto :goto_13

    .line 175
    :cond_26
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_13
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "event"

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 202
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 204
    .local v2, y:I
    packed-switch v0, :pswitch_data_76

    .line 239
    :pswitch_f
    iget v3, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorDefaultY:I

    iput v3, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorY:I

    .line 240
    iput-boolean v4, p0, Lcom/google/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 241
    invoke-virtual {p0}, Lcom/google/android/music/VerticalTextSpinner;->invalidate()V

    .line 244
    :cond_18
    :goto_18
    return v4

    .line 206
    :pswitch_19
    invoke-virtual {p0}, Lcom/google/android/music/VerticalTextSpinner;->requestFocus()Z

    .line 207
    iput v2, p0, Lcom/google/android/music/VerticalTextSpinner;->mDownY:I

    .line 208
    iget v5, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorY:I

    if-lt v2, v5, :cond_2e

    iget v5, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorY:I

    iget-object v6, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-gt v2, v5, :cond_2e

    move v3, v4

    :cond_2e
    iput-boolean v3, p0, Lcom/google/android/music/VerticalTextSpinner;->isDraggingSelector:Z

    goto :goto_18

    .line 213
    :pswitch_31
    iget-boolean v5, p0, Lcom/google/android/music/VerticalTextSpinner;->isDraggingSelector:Z

    if-eqz v5, :cond_18

    .line 214
    iget v5, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorDefaultY:I

    iget v6, p0, Lcom/google/android/music/VerticalTextSpinner;->mDownY:I

    sub-int v6, v2, v6

    add-int v1, v5, v6

    .line 215
    .local v1, top:I
    iget v5, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorMinY:I

    if-gt v1, v5, :cond_57

    invoke-direct {p0}, Lcom/google/android/music/VerticalTextSpinner;->canScrollDown()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 216
    iget v5, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorMinY:I

    iput v5, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorY:I

    .line 217
    iput-boolean v3, p0, Lcom/google/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 218
    iget v3, p0, Lcom/google/android/music/VerticalTextSpinner;->mScrollMode:I

    if-eq v3, v7, :cond_18

    .line 219
    iput v7, p0, Lcom/google/android/music/VerticalTextSpinner;->mScrollMode:I

    .line 220
    invoke-direct {p0}, Lcom/google/android/music/VerticalTextSpinner;->scroll()V

    goto :goto_18

    .line 222
    :cond_57
    iget v5, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorMaxY:I

    if-lt v1, v5, :cond_71

    invoke-direct {p0}, Lcom/google/android/music/VerticalTextSpinner;->canScrollUp()Z

    move-result v5

    if-eqz v5, :cond_71

    .line 223
    iget v5, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorMaxY:I

    iput v5, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorY:I

    .line 224
    iput-boolean v3, p0, Lcom/google/android/music/VerticalTextSpinner;->mStopAnimation:Z

    .line 225
    iget v3, p0, Lcom/google/android/music/VerticalTextSpinner;->mScrollMode:I

    if-eq v3, v4, :cond_18

    .line 226
    iput v4, p0, Lcom/google/android/music/VerticalTextSpinner;->mScrollMode:I

    .line 227
    invoke-direct {p0}, Lcom/google/android/music/VerticalTextSpinner;->scroll()V

    goto :goto_18

    .line 230
    :cond_71
    iput v1, p0, Lcom/google/android/music/VerticalTextSpinner;->mSelectorY:I

    .line 231
    iput-boolean v4, p0, Lcom/google/android/music/VerticalTextSpinner;->mStopAnimation:Z

    goto :goto_18

    .line 204
    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_19
        :pswitch_f
        :pswitch_31
    .end packed-switch
.end method

.method public setItems([Ljava/lang/String;)V
    .registers 2
    .parameter "textList"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/music/VerticalTextSpinner;->mTextList:[Ljava/lang/String;

    .line 139
    invoke-direct {p0}, Lcom/google/android/music/VerticalTextSpinner;->calculateTextPositions()V

    .line 140
    return-void
.end method

.method public setOnChangeListener(Lcom/google/android/music/VerticalTextSpinner$OnChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/music/VerticalTextSpinner;->mListener:Lcom/google/android/music/VerticalTextSpinner$OnChangedListener;

    .line 135
    return-void
.end method

.method public setScrollInterval(J)V
    .registers 3
    .parameter "interval"

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/google/android/music/VerticalTextSpinner;->mScrollInterval:J

    .line 150
    invoke-direct {p0}, Lcom/google/android/music/VerticalTextSpinner;->calculateAnimationValues()V

    .line 151
    return-void
.end method

.method public setSelectedPos(I)V
    .registers 2
    .parameter "selectedPos"

    .prologue
    .line 143
    iput p1, p0, Lcom/google/android/music/VerticalTextSpinner;->mCurrentSelectedPos:I

    .line 144
    invoke-direct {p0}, Lcom/google/android/music/VerticalTextSpinner;->calculateTextPositions()V

    .line 145
    invoke-virtual {p0}, Lcom/google/android/music/VerticalTextSpinner;->postInvalidate()V

    .line 146
    return-void
.end method

.method public setWrapAround(Z)V
    .registers 2
    .parameter "wrap"

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/google/android/music/VerticalTextSpinner;->mWrapAround:Z

    .line 155
    return-void
.end method
