.class public Lcom/google/android/apps/plus/views/SlidingPanel;
.super Lcom/google/android/apps/plus/views/ScrollableViewGroup;
.source "SlidingPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/SlidingPanel$OnPanelSelectedListener;
    }
.end annotation


# static fields
.field private static sTabHeaderOverlayLeft:Landroid/graphics/drawable/Drawable;

.field private static sTabHeaderOverlayRight:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mChildIndices:[I

.field private mFirstVisiblePanel:I

.field private mLastVisiblePanel:I

.field private mOnPanelSelectedListener:Lcom/google/android/apps/plus/views/SlidingPanel$OnPanelSelectedListener;

.field private mPanelCount:I

.field private mPanelHeight:I

.field private mPanelWidth:I

.field private mSelectedPanel:I

.field private mSelectedTabLineBounds:Landroid/graphics/Rect;

.field private mSelectedTabLineHeight:I

.field private mSelectedTabLinePaint:Landroid/graphics/Paint;

.field private mSelectedTextPaint:Landroid/text/TextPaint;

.field private mStripBackgroundPaint:Landroid/graphics/Paint;

.field private mStripHeight:I

.field private mTabLineBounds:Landroid/graphics/Rect;

.field private mTabLineHeight:I

.field private mTabLinePaint:Landroid/graphics/Paint;

.field private mText:[Ljava/lang/CharSequence;

.field private mTextHeight:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextX:[I

.field private mTextY:I

.field private mTitleBoldWidths:[I

.field private mTitleSpacing:I

.field private mTitleWidths:[I

.field private mTitles:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12
    .parameter "context"
    .parameter "attributes"

    .prologue
    const v8, 0x7f09001a

    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mText:[Ljava/lang/CharSequence;

    .line 52
    new-array v4, v6, [I

    iput-object v4, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTextX:[I

    .line 61
    iput v5, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mFirstVisiblePanel:I

    .line 62
    iput v5, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mLastVisiblePanel:I

    .line 63
    iput v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedPanel:I

    .line 65
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTabLineBounds:Landroid/graphics/Rect;

    .line 66
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedTabLineBounds:Landroid/graphics/Rect;

    .line 71
    new-array v4, v7, [Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitles:[Ljava/lang/CharSequence;

    .line 72
    new-array v4, v7, [I

    iput-object v4, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitleWidths:[I

    .line 73
    new-array v4, v7, [I

    iput-object v4, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitleBoldWidths:[I

    .line 74
    new-array v4, v7, [I

    iput-object v4, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mChildIndices:[I

    .line 84
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/views/SlidingPanel;->setVertical(Z)V

    .line 85
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/views/SlidingPanel;->setFlingable(Z)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 88
    .local v1, resources:Landroid/content/res/Resources;
    const v4, 0x7f0c0046

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mStripHeight:I

    .line 89
    const v4, 0x7f0c0047

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitleSpacing:I

    .line 91
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mStripBackgroundPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v4, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mStripBackgroundPaint:Landroid/graphics/Paint;

    const v5, 0x7f090005

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    const v4, 0x7f0c0048

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTabLineHeight:I

    .line 95
    const v4, 0x7f0c0049

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedTabLineHeight:I

    .line 98
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedTabLinePaint:Landroid/graphics/Paint;

    .line 99
    iget-object v4, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedTabLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    const v4, 0x7f090006

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 102
    .local v2, textColor:I
    const v4, 0x7f0c004a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 103
    .local v3, textSize:F
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-direct {p0, v4, v2, v3}, Lcom/google/android/apps/plus/views/SlidingPanel;->createTextPaint(Landroid/graphics/Typeface;IF)Landroid/text/TextPaint;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTextPaint:Landroid/text/TextPaint;

    .line 104
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-direct {p0, v4, v2, v3}, Lcom/google/android/apps/plus/views/SlidingPanel;->createTextPaint(Landroid/graphics/Typeface;IF)Landroid/text/TextPaint;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedTextPaint:Landroid/text/TextPaint;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 106
    .local v0, bounds:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedTextPaint:Landroid/text/TextPaint;

    const-string v5, "X"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v7, v6, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 107
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTextHeight:I

    .line 109
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTabLinePaint:Landroid/graphics/Paint;

    .line 110
    iget-object v4, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTabLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    sget-object v4, Lcom/google/android/apps/plus/views/SlidingPanel;->sTabHeaderOverlayLeft:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_dd

    .line 113
    const v4, 0x7f020134

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/google/android/apps/plus/views/SlidingPanel;->sTabHeaderOverlayLeft:Landroid/graphics/drawable/Drawable;

    .line 114
    const v4, 0x7f020135

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/google/android/apps/plus/views/SlidingPanel;->sTabHeaderOverlayRight:Landroid/graphics/drawable/Drawable;

    .line 116
    :cond_dd
    return-void
.end method

.method private computePanelHeaderX(II)I
    .registers 15
    .parameter "x"
    .parameter "panel"

    .prologue
    .line 387
    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    mul-int v5, v9, p2

    .line 389
    .local v5, panelX:I
    if-ltz p2, :cond_3c

    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelCount:I

    if-ge p2, v9, :cond_3c

    .line 390
    iget-object v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitleWidths:[I

    aget v8, v9, p2

    .line 396
    .local v8, textWidth:I
    :goto_e
    if-gt v5, p1, :cond_3e

    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    add-int/2addr v9, v5

    if-ge p1, v9, :cond_3e

    .line 397
    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    sub-int/2addr v9, v8

    div-int/lit8 v7, v9, 0x2

    .line 398
    .local v7, start:I
    const/4 v0, 0x0

    .line 401
    .local v0, end:I
    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge p2, v9, :cond_35

    .line 402
    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    iget-object v10, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitleWidths:[I

    add-int/lit8 v11, p2, 0x1

    aget v10, v10, v11

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitleSpacing:I

    sub-int/2addr v9, v10

    sub-int v1, v9, v8

    .line 404
    .local v1, maxEnd:I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 407
    .end local v1           #maxEnd:I
    :cond_35
    sub-int v9, p1, v5

    invoke-direct {p0, v7, v0, v9}, Lcom/google/android/apps/plus/views/SlidingPanel;->interpolate(III)I

    move-result v9

    .line 458
    .end local v0           #end:I
    .end local v7           #start:I
    :goto_3b
    return v9

    .line 392
    .end local v8           #textWidth:I
    :cond_3c
    const/4 v8, 0x0

    .restart local v8       #textWidth:I
    goto :goto_e

    .line 411
    :cond_3e
    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    add-int/2addr v9, v5

    if-gt v9, p1, :cond_8c

    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v5

    if-ge p1, v9, :cond_8c

    .line 412
    const/4 v7, 0x0

    .line 415
    .restart local v7       #start:I
    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge p2, v9, :cond_65

    .line 416
    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    iget-object v10, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitleWidths:[I

    add-int/lit8 v11, p2, 0x1

    aget v10, v10, v11

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitleSpacing:I

    sub-int/2addr v9, v10

    sub-int v2, v9, v8

    .line 418
    .local v2, maxStart:I
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 421
    .end local v2           #maxStart:I
    :cond_65
    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    neg-int v0, v9

    .line 422
    .restart local v0       #end:I
    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelCount:I

    add-int/lit8 v9, v9, -0x2

    if-ge p2, v9, :cond_82

    .line 423
    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    iget-object v10, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitleWidths:[I

    add-int/lit8 v11, p2, 0x1

    aget v10, v10, v11

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitleSpacing:I

    sub-int/2addr v9, v10

    sub-int v1, v9, v8

    .line 425
    .restart local v1       #maxEnd:I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 428
    .end local v1           #maxEnd:I
    :cond_82
    sub-int v9, p1, v5

    iget v10, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v7, v0, v9}, Lcom/google/android/apps/plus/views/SlidingPanel;->interpolate(III)I

    move-result v9

    goto :goto_3b

    .line 432
    .end local v0           #end:I
    .end local v7           #start:I
    :cond_8c
    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    sub-int v9, v5, v9

    if-gt v9, p1, :cond_b9

    if-ge p1, v5, :cond_b9

    .line 433
    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    sub-int/2addr v9, v8

    div-int/lit8 v7, v9, 0x2

    .line 434
    .restart local v7       #start:I
    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    sub-int v0, v9, v8

    .line 435
    .restart local v0       #end:I
    if-lez p2, :cond_b2

    .line 436
    iget-object v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitleWidths:[I

    add-int/lit8 v10, p2, -0x1

    aget v6, v9, v10

    .line 437
    .local v6, prevTextWidth:I
    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    add-int/2addr v9, v6

    div-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitleSpacing:I

    add-int v3, v9, v10

    .line 438
    .local v3, minEnd:I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 440
    .end local v3           #minEnd:I
    .end local v6           #prevTextWidth:I
    :cond_b2
    sub-int v9, v5, p1

    invoke-direct {p0, v7, v0, v9}, Lcom/google/android/apps/plus/views/SlidingPanel;->interpolate(III)I

    move-result v9

    goto :goto_3b

    .line 444
    .end local v0           #end:I
    .end local v7           #start:I
    :cond_b9
    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    mul-int/lit8 v9, v9, 0x2

    sub-int v9, v5, v9

    if-gt v9, p1, :cond_f1

    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    sub-int v9, v5, v9

    if-ge p1, v9, :cond_f1

    .line 445
    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    sub-int v7, v9, v8

    .line 448
    .restart local v7       #start:I
    if-lez p2, :cond_e0

    .line 449
    iget-object v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitleWidths:[I

    add-int/lit8 v10, p2, -0x1

    aget v6, v9, v10

    .line 450
    .restart local v6       #prevTextWidth:I
    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    add-int/2addr v9, v6

    div-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitleSpacing:I

    add-int v4, v9, v10

    .line 451
    .local v4, minStart:I
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 454
    .end local v4           #minStart:I
    .end local v6           #prevTextWidth:I
    :cond_e0
    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    mul-int/lit8 v9, v9, 0x2

    sub-int v0, v9, v8

    .line 455
    .restart local v0       #end:I
    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    sub-int v9, v5, v9

    sub-int/2addr v9, p1

    invoke-direct {p0, v7, v0, v9}, Lcom/google/android/apps/plus/views/SlidingPanel;->interpolate(III)I

    move-result v9

    goto/16 :goto_3b

    .line 458
    .end local v0           #end:I
    .end local v7           #start:I
    :cond_f1
    const/4 v9, 0x0

    goto/16 :goto_3b
.end method

.method private createTextPaint(Landroid/graphics/Typeface;IF)Landroid/text/TextPaint;
    .registers 6
    .parameter "typeface"
    .parameter "color"
    .parameter "textSize"

    .prologue
    .line 521
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 522
    .local v0, paint:Landroid/text/TextPaint;
    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 523
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 524
    invoke-virtual {v0, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 525
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 526
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 527
    return-object v0
.end method

.method private drawStripText(ILandroid/graphics/Canvas;)V
    .registers 10
    .parameter "panel"
    .parameter "canvas"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mText:[Ljava/lang/CharSequence;

    aget-object v1, v0, p1

    .line 504
    .local v1, text:Ljava/lang/CharSequence;
    if-nez v1, :cond_7

    .line 510
    :goto_6
    return-void

    .line 508
    :cond_7
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e

    iget-object v6, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedTextPaint:Landroid/text/TextPaint;

    .line 509
    .local v6, paint:Landroid/graphics/Paint;
    :goto_c
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v0, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTextX:[I

    aget v0, v0, p1

    int-to-float v4, v0

    iget v0, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTextY:I

    int-to-float v5, v0

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 508
    .end local v6           #paint:Landroid/graphics/Paint;
    :cond_1e
    iget-object v6, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTextPaint:Landroid/text/TextPaint;

    goto :goto_c
.end method

.method private interpolate(III)I
    .registers 7
    .parameter "left"
    .parameter "right"
    .parameter "offset"

    .prologue
    .line 462
    int-to-float v1, p3

    iget v2, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 463
    .local v0, part:F
    int-to-float v1, p1

    sub-int v2, p2, p1

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private update(I)V
    .registers 16
    .parameter "x"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 320
    iget v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    if-nez v7, :cond_9

    .line 375
    :goto_8
    return-void

    .line 324
    :cond_9
    iget v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    div-int v1, p1, v7

    .line 325
    .local v1, firstPanel:I
    iget v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    rem-int v7, p1, v7

    if-nez v7, :cond_43

    move v7, v8

    :goto_14
    add-int v3, v1, v7

    .line 326
    .local v3, lastPanel:I
    iget v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mFirstVisiblePanel:I

    if-ne v1, v7, :cond_1e

    iget v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mLastVisiblePanel:I

    if-eq v3, v7, :cond_4a

    .line 327
    :cond_1e
    iput v1, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mFirstVisiblePanel:I

    .line 328
    iput v3, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mLastVisiblePanel:I

    .line 330
    const/4 v2, 0x0

    .local v2, i:I
    :goto_23
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/SlidingPanel;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_4a

    .line 331
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/SlidingPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 332
    .local v0, child:Landroid/view/View;
    iget-object v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mChildIndices:[I

    iget v10, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mFirstVisiblePanel:I

    aget v7, v7, v10

    if-lt v2, v7, :cond_45

    iget-object v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mChildIndices:[I

    iget v10, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mLastVisiblePanel:I

    aget v7, v7, v10

    if-gt v2, v7, :cond_45

    .line 334
    invoke-direct {p0, v0, v8}, Lcom/google/android/apps/plus/views/SlidingPanel;->updateVisibility(Landroid/view/View;I)V

    .line 330
    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .end local v0           #child:Landroid/view/View;
    .end local v2           #i:I
    .end local v3           #lastPanel:I
    :cond_43
    move v7, v9

    .line 325
    goto :goto_14

    .line 336
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #i:I
    .restart local v3       #lastPanel:I
    :cond_45
    const/4 v7, 0x4

    invoke-direct {p0, v0, v7}, Lcom/google/android/apps/plus/views/SlidingPanel;->updateVisibility(Landroid/view/View;I)V

    goto :goto_40

    .line 341
    .end local v0           #child:Landroid/view/View;
    .end local v2           #i:I
    :cond_4a
    iget v4, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedPanel:I

    .line 343
    .local v4, panel:I
    if-nez v4, :cond_b6

    .line 344
    iget-object v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mText:[Ljava/lang/CharSequence;

    aput-object v13, v7, v8

    .line 349
    :goto_52
    iget-object v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mText:[Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitles:[Ljava/lang/CharSequence;

    aget-object v10, v10, v4

    aput-object v10, v7, v9

    .line 351
    add-int/lit8 v7, v4, 0x1

    iget v10, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelCount:I

    if-ge v7, v10, :cond_c1

    .line 352
    iget-object v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mText:[Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitles:[Ljava/lang/CharSequence;

    add-int/lit8 v11, v4, 0x1

    aget-object v10, v10, v11

    aput-object v10, v7, v12

    .line 357
    :goto_6a
    if-lez v4, :cond_76

    .line 358
    iget-object v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTextX:[I

    add-int/lit8 v10, v4, -0x1

    invoke-direct {p0, p1, v10}, Lcom/google/android/apps/plus/views/SlidingPanel;->computePanelHeaderX(II)I

    move-result v10

    aput v10, v7, v8

    .line 361
    :cond_76
    iget-object v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTextX:[I

    invoke-direct {p0, p1, v4}, Lcom/google/android/apps/plus/views/SlidingPanel;->computePanelHeaderX(II)I

    move-result v8

    aput v8, v7, v9

    .line 363
    add-int/lit8 v7, v4, 0x1

    iget v8, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelCount:I

    if-ge v7, v8, :cond_8e

    .line 364
    iget-object v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTextX:[I

    add-int/lit8 v8, v4, 0x1

    invoke-direct {p0, p1, v8}, Lcom/google/android/apps/plus/views/SlidingPanel;->computePanelHeaderX(II)I

    move-result v8

    aput v8, v7, v12

    .line 367
    :cond_8e
    iget-object v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitleBoldWidths:[I

    aget v7, v7, v4

    iget v8, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitleSpacing:I

    add-int v5, v7, v8

    .line 368
    .local v5, tabWidth:I
    iget v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelCount:I

    if-ne v7, v9, :cond_9c

    .line 369
    iget v5, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    .line 372
    :cond_9c
    iget-object v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTextX:[I

    aget v7, v7, v9

    iget v8, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitleSpacing:I

    div-int/lit8 v8, v8, 0x2

    sub-int v6, v7, v8

    .line 373
    .local v6, tabX:I
    iget-object v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedTabLineBounds:Landroid/graphics/Rect;

    iget v8, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mStripHeight:I

    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedTabLineHeight:I

    sub-int/2addr v8, v9

    add-int v9, v6, v5

    iget v10, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mStripHeight:I

    invoke-virtual {v7, v6, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_8

    .line 346
    .end local v5           #tabWidth:I
    .end local v6           #tabX:I
    :cond_b6
    iget-object v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mText:[Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitles:[Ljava/lang/CharSequence;

    add-int/lit8 v11, v4, -0x1

    aget-object v10, v10, v11

    aput-object v10, v7, v8

    goto :goto_52

    .line 354
    :cond_c1
    iget-object v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mText:[Ljava/lang/CharSequence;

    aput-object v13, v7, v12

    goto :goto_6a
.end method

.method private updateSelectedPanel(I)V
    .registers 5
    .parameter "panel"

    .prologue
    .line 484
    iget v2, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedPanel:I

    if-eq v2, p1, :cond_16

    iget v2, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelCount:I

    if-ge p1, v2, :cond_16

    .line 485
    iget v0, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedPanel:I

    .line 486
    .local v0, from:I
    move v1, p1

    .line 488
    .local v1, to:I
    iput p1, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedPanel:I

    .line 490
    iget-object v2, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mOnPanelSelectedListener:Lcom/google/android/apps/plus/views/SlidingPanel$OnPanelSelectedListener;

    if-eqz v2, :cond_16

    .line 491
    iget-object v2, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mOnPanelSelectedListener:Lcom/google/android/apps/plus/views/SlidingPanel$OnPanelSelectedListener;

    invoke-interface {v2, v0, v1}, Lcom/google/android/apps/plus/views/SlidingPanel$OnPanelSelectedListener;->onPanelSelected(II)V

    .line 494
    .end local v0           #from:I
    .end local v1           #to:I
    :cond_16
    return-void
.end method

.method private updateVisibility(Landroid/view/View;I)V
    .registers 4
    .parameter "view"
    .parameter "visibility"

    .prologue
    .line 473
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p2, :cond_9

    .line 474
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 476
    :cond_9
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 260
    iget v0, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelCount:I

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/SlidingPanel;->getChildCount()I

    move-result v0

    if-nez v0, :cond_c

    .line 284
    :cond_b
    :goto_b
    return-void

    .line 264
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/SlidingPanel;->getScrollX()I

    move-result v7

    .line 266
    .local v7, scrollX:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 267
    int-to-float v0, v7

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 269
    iget v0, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mStripHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mStripBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 271
    const/4 v6, 0x0

    .local v6, i:I
    :goto_25
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mText:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-ge v6, v0, :cond_30

    .line 272
    invoke-direct {p0, v6, p1}, Lcom/google/android/apps/plus/views/SlidingPanel;->drawStripText(ILandroid/graphics/Canvas;)V

    .line 271
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 275
    :cond_30
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTabLineBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTabLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 276
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedTabLineBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedTabLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 278
    sget-object v0, Lcom/google/android/apps/plus/views/SlidingPanel;->sTabHeaderOverlayLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 279
    sget-object v0, Lcom/google/android/apps/plus/views/SlidingPanel;->sTabHeaderOverlayRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 281
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 283
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_b
.end method

.method public getSelectedPanel()I
    .registers 2

    .prologue
    .line 171
    iget v0, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedPanel:I

    return v0
.end method

.method public hasPanels()Z
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitles:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onLayout(ZIIII)V
    .registers 18
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 195
    iget v6, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelCount:I

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/SlidingPanel;->getChildCount()I

    move-result v6

    if-nez v6, :cond_b

    .line 236
    :cond_a
    :goto_a
    return-void

    .line 199
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/SlidingPanel;->getScrollX()I

    move-result v4

    .line 201
    .local v4, scrollX:I
    sub-int v6, p4, p2

    iput v6, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    .line 202
    sub-int v6, p5, p3

    iget v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mStripHeight:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelHeight:I

    .line 203
    iget v6, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mStripHeight:I

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTextHeight:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTextY:I

    .line 205
    iget p3, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mStripHeight:I

    .line 206
    iget v6, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelHeight:I

    add-int p5, p3, v6

    .line 207
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2c
    iget-object v6, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitles:[Ljava/lang/CharSequence;

    array-length v6, v6

    if-ge v2, v6, :cond_8f

    .line 208
    iget-object v6, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mChildIndices:[I

    aget v6, v6, v2

    if-ltz v6, :cond_4b

    .line 209
    iget-object v6, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mChildIndices:[I

    aget v6, v6, v2

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/views/SlidingPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 210
    .local v1, child:Landroid/view/View;
    iget v6, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    mul-int p2, v6, v2

    .line 211
    iget v6, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    add-int/2addr v6, p2

    move/from16 v0, p5

    invoke-virtual {v1, p2, p3, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 214
    .end local v1           #child:Landroid/view/View;
    :cond_4b
    iget-object v6, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitles:[Ljava/lang/CharSequence;

    aget-object v5, v6, v2

    .line 215
    .local v5, text:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitles:[Ljava/lang/CharSequence;

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_87

    iget v3, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    .line 217
    .local v3, maxWidth:I
    :goto_57
    iget-object v6, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitles:[Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedTextPaint:Landroid/text/TextPaint;

    int-to-float v8, v3

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v5, v7, v8, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v2

    .line 218
    iget-object v6, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitleWidths:[I

    iget-object v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTextPaint:Landroid/text/TextPaint;

    const/4 v8, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v7, v5, v8, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    float-to-int v7, v7

    aput v7, v6, v2

    .line 219
    iget-object v6, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitleBoldWidths:[I

    iget-object v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedTextPaint:Landroid/text/TextPaint;

    const/4 v8, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v7, v5, v8, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    float-to-int v7, v7

    aput v7, v6, v2

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 215
    .end local v3           #maxWidth:I
    :cond_87
    iget v6, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    int-to-float v6, v6

    const/high16 v7, 0x3f00

    mul-float/2addr v6, v7

    float-to-int v3, v6

    goto :goto_57

    .line 221
    .end local v5           #text:Ljava/lang/CharSequence;
    :cond_8f
    const/4 v6, 0x0

    iget v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    iget v8, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelCount:I

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/google/android/apps/plus/views/SlidingPanel;->setScrollLimits(II)V

    .line 223
    iget v6, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedPanel:I

    iget v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    mul-int/2addr v6, v7

    if-eq v4, v6, :cond_e2

    .line 224
    iget v6, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedPanel:I

    iget v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    mul-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/views/SlidingPanel;->scrollTo(I)V

    .line 229
    :goto_a9
    sget-object v6, Lcom/google/android/apps/plus/views/SlidingPanel;->sTabHeaderOverlayLeft:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/google/android/apps/plus/views/SlidingPanel;->sTabHeaderOverlayLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget v10, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mStripHeight:I

    iget v11, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTabLineHeight:I

    sub-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 232
    sget-object v6, Lcom/google/android/apps/plus/views/SlidingPanel;->sTabHeaderOverlayRight:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    sget-object v8, Lcom/google/android/apps/plus/views/SlidingPanel;->sTabHeaderOverlayRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    iget v10, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mStripHeight:I

    iget v11, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTabLineHeight:I

    sub-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 235
    iget-object v6, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTabLineBounds:Landroid/graphics/Rect;

    const/4 v7, 0x0

    iget v8, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mStripHeight:I

    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTabLineHeight:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    iget v10, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mStripHeight:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_a

    .line 226
    :cond_e2
    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/views/SlidingPanel;->update(I)V

    goto :goto_a9
.end method

.method public onMeasure(II)V
    .registers 10
    .parameter "widthRequest"
    .parameter "heightRequest"

    .prologue
    const/high16 v6, 0x4000

    .line 243
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 244
    .local v4, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 245
    .local v1, height:I
    invoke-virtual {p0, v4, v1}, Lcom/google/android/apps/plus/views/SlidingPanel;->setMeasuredDimension(II)V

    .line 247
    iget v5, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mStripHeight:I

    sub-int/2addr v1, v5

    .line 248
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 249
    .local v0, exactWidth:I
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 250
    .local v3, maximumHeight:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_19
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/SlidingPanel;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_29

    .line 251
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/SlidingPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Landroid/view/View;->measure(II)V

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 253
    :cond_29
    return-void
.end method

.method public onScrollChanged(IIII)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "oldX"
    .parameter "oldY"

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/SlidingPanel;->update(I)V

    .line 292
    return-void
.end method

.method protected onScrollFinished(I)V
    .registers 6
    .parameter "direction"

    .prologue
    .line 299
    iget v2, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    if-nez v2, :cond_5

    .line 312
    :goto_4
    return-void

    .line 303
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/SlidingPanel;->getScrollX()I

    move-result v1

    .line 305
    .local v1, scrollX:I
    if-gez p1, :cond_1e

    .line 306
    iget v2, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    div-int v2, v1, v2

    iget v3, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    mul-int v0, v2, v3

    .line 310
    .local v0, panelEdge:I
    :goto_13
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/SlidingPanel;->smoothScrollTo(I)V

    .line 311
    iget v2, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    div-int v2, v0, v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/views/SlidingPanel;->updateSelectedPanel(I)V

    goto :goto_4

    .line 308
    .end local v0           #panelEdge:I
    :cond_1e
    iget v2, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    div-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelWidth:I

    mul-int v0, v2, v3

    .restart local v0       #panelEdge:I
    goto :goto_13
.end method

.method public setIndices([I)V
    .registers 4
    .parameter "indices"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitles:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-nez v0, :cond_d

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setIndices must be called after setTitles!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitles:[Ljava/lang/CharSequence;

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_1b

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mTitles.length must equal indices.length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_1b
    iput-object p1, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mChildIndices:[I

    .line 154
    return-void
.end method

.method public setOnPanelSelectedListener(Lcom/google/android/apps/plus/views/SlidingPanel$OnPanelSelectedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mOnPanelSelectedListener:Lcom/google/android/apps/plus/views/SlidingPanel$OnPanelSelectedListener;

    .line 188
    return-void
.end method

.method public setSelectedPanel(I)V
    .registers 3
    .parameter "panel"

    .prologue
    .line 162
    iget v0, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedPanel:I

    if-eq v0, p1, :cond_a

    iget v0, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelCount:I

    if-ge p1, v0, :cond_a

    .line 163
    iput p1, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedPanel:I

    .line 165
    :cond_a
    return-void
.end method

.method public setTitles([Ljava/lang/String;)V
    .registers 6
    .parameter "titles"

    .prologue
    .line 124
    array-length v0, p1

    .line 125
    .local v0, count:I
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitles:[Ljava/lang/CharSequence;

    .line 126
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitleWidths:[I

    .line 127
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitleBoldWidths:[I

    .line 128
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v0, :cond_1d

    .line 129
    iget-object v2, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mTitles:[Ljava/lang/CharSequence;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 132
    :cond_1d
    iput v0, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mPanelCount:I

    .line 133
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/apps/plus/views/SlidingPanel;->mSelectedPanel:I

    .line 135
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/SlidingPanel;->requestLayout()V

    .line 136
    return-void
.end method
