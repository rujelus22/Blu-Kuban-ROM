.class public Landroid/support/v4/view/PagerTitleStrip;
.super Landroid/view/ViewGroup;
.source "PagerTitleStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$Decor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/PagerTitleStrip$1;,
        Landroid/support/v4/view/PagerTitleStrip$PageListener;
    }
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field mCurrText:Landroid/widget/TextView;

.field private mGravity:I

.field private mLastKnownCurrentPage:I

.field private mLastKnownPositionOffset:F

.field mNextText:Landroid/widget/TextView;

.field private mNonPrimaryAlpha:I

.field private final mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

.field mPager:Landroid/support/v4/view/ViewPager;

.field mPrevText:Landroid/widget/TextView;

.field private mScaledTextSpacing:I

.field mTextColor:I

.field private mUpdatingPositions:Z

.field private mUpdatingText:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->ATTRS:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x34t 0x0t 0x1t 0x1t
        0x95t 0x0t 0x1t 0x1t
        0x98t 0x0t 0x1t 0x1t
        0xaft 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v5, -0x1

    iput v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 52
    const/high16 v5, -0x4080

    iput v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 59
    new-instance v5, Landroid/support/v4/view/PagerTitleStrip$PageListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/support/v4/view/PagerTitleStrip$PageListener;-><init>(Landroid/support/v4/view/PagerTitleStrip;Landroid/support/v4/view/PagerTitleStrip$1;)V

    iput-object v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    .line 81
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 82
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 83
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 85
    sget-object v5, Landroid/support/v4/view/PagerTitleStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 87
    .local v2, textAppearance:I
    if-eqz v2, :cond_4d

    .line 88
    iget-object v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v5, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 89
    iget-object v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v5, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 90
    iget-object v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v5, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 92
    :cond_4d
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 93
    .local v4, textSize:I
    if-eqz v4, :cond_58

    .line 94
    int-to-float v5, v4

    invoke-virtual {p0, v7, v5}, Landroid/support/v4/view/PagerTitleStrip;->setTextSize(IF)V

    .line 96
    :cond_58
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 97
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 98
    .local v3, textColor:I
    iget-object v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    iget-object v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .end local v3           #textColor:I
    :cond_71
    const/4 v5, 0x3

    const/16 v6, 0x50

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    iget-object v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    iput v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    .line 106
    const v5, 0x3f19999a

    invoke-virtual {p0, v5}, Landroid/support/v4/view/PagerTitleStrip;->setNonPrimaryAlpha(F)V

    .line 108
    iget-object v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 109
    iget-object v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 110
    iget-object v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 111
    iget-object v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->setSingleLine()V

    .line 112
    iget-object v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->setSingleLine()V

    .line 113
    iget-object v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->setSingleLine()V

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->density:F

    .line 116
    .local v1, density:F
    const/high16 v5, 0x4180

    mul-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    .line 117
    return-void
.end method


# virtual methods
.method public getTextSpacing()I
    .registers 2

    .prologue
    .line 133
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 6

    .prologue
    .line 191
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 193
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 194
    .local v2, parent:Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/support/v4/view/ViewPager;

    if-nez v3, :cond_13

    .line 195
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "PagerTitleStrip must be a direct child of a ViewPager."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_13
    move-object v1, v2

    .line 199
    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 200
    .local v1, pager:Landroid/support/v4/view/ViewPager;
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 202
    .local v0, adapter:Landroid/support/v4/view/PagerAdapter;
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 203
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 204
    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    .line 205
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 206
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 210
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 211
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1d

    .line 212
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 213
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 214
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 215
    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    .line 217
    :cond_1d
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 405
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_f

    .line 406
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 408
    :cond_f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 368
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 369
    .local v9, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 370
    .local v4, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 371
    .local v10, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 373
    .local v5, heightSize:I
    const/high16 v11, 0x4000

    if-eq v9, v11, :cond_1c

    .line 374
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Must measure with an exact width"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 377
    :cond_1c
    move v1, v5

    .line 378
    .local v1, childHeight:I
    const/4 v6, 0x0

    .line 379
    .local v6, minHeight:I
    const/4 v7, 0x0

    .line 380
    .local v7, padding:I
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 381
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_29

    .line 382
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 384
    :cond_29
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v11

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v12

    add-int v7, v11, v12

    .line 385
    sub-int/2addr v1, v7

    .line 387
    int-to-float v11, v10

    const v12, 0x3f4ccccd

    mul-float/2addr v11, v12

    float-to-int v11, v11

    const/high16 v12, -0x8000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 389
    .local v3, childWidthSpec:I
    const/high16 v11, -0x8000

    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 391
    .local v2, childHeightSpec:I
    iget-object v11, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v11, v3, v2}, Landroid/widget/TextView;->measure(II)V

    .line 392
    iget-object v11, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v11, v3, v2}, Landroid/widget/TextView;->measure(II)V

    .line 393
    iget-object v11, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v11, v3, v2}, Landroid/widget/TextView;->measure(II)V

    .line 395
    const/high16 v11, 0x4000

    if-ne v4, v11, :cond_5d

    .line 396
    invoke-virtual {p0, v10, v5}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    .line 401
    :goto_5c
    return-void

    .line 398
    :cond_5d
    iget-object v11, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    .line 399
    .local v8, textHeight:I
    add-int v11, v8, v7

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {p0, v10, v11}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    goto :goto_5c
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 258
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    if-nez v0, :cond_7

    .line 259
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 261
    :cond_7
    return-void
.end method

.method public setGravity(I)V
    .registers 2
    .parameter "gravity"

    .prologue
    .line 185
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    .line 186
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 187
    return-void
.end method

.method public setNonPrimaryAlpha(F)V
    .registers 6
    .parameter "alpha"

    .prologue
    .line 142
    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    .line 143
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int v0, v1, v2

    .line 144
    .local v0, transparentColor:I
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    return-void
.end method

.method public setTextColor(I)V
    .registers 6
    .parameter "color"

    .prologue
    .line 155
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    .line 156
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int v0, v1, v2

    .line 158
    .local v0, transparentColor:I
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    return-void
.end method

.method public setTextSize(IF)V
    .registers 4
    .parameter "unit"
    .parameter "size"

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 174
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 175
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 176
    return-void
.end method

.method public setTextSpacing(I)V
    .registers 2
    .parameter "spacingPixels"

    .prologue
    .line 125
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    .line 126
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 127
    return-void
.end method

.method updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .registers 4
    .parameter "oldAdapter"
    .parameter "newAdapter"

    .prologue
    .line 264
    if-eqz p1, :cond_7

    .line 265
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 267
    :cond_7
    if-eqz p2, :cond_e

    .line 268
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 270
    :cond_e
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_25

    .line 271
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 272
    const/high16 v0, -0x4080

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 273
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    .line 274
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 276
    :cond_25
    return-void
.end method

.method updateText(ILandroid/support/v4/view/PagerAdapter;)V
    .registers 13
    .parameter "currentItem"
    .parameter "adapter"

    .prologue
    const/4 v7, 0x1

    const/high16 v9, -0x8000

    const/4 v6, 0x0

    .line 220
    if-eqz p2, :cond_82

    invoke-virtual {p2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .line 221
    .local v3, itemCount:I
    :goto_a
    iput-boolean v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    .line 223
    const/4 v4, 0x0

    .line 224
    .local v4, text:Ljava/lang/CharSequence;
    if-lt p1, v7, :cond_17

    if-eqz p2, :cond_17

    .line 225
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p2, v7}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 227
    :cond_17
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v8, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    if-eqz p2, :cond_84

    invoke-virtual {p2, p1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_24
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    const/4 v4, 0x0

    .line 232
    add-int/lit8 v7, p1, 0x1

    if-ge v7, v3, :cond_34

    if-eqz p2, :cond_34

    .line 233
    add-int/lit8 v7, p1, 0x1

    invoke-virtual {p2, v7}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 235
    :cond_34
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v8

    sub-int v5, v7, v8

    .line 239
    .local v5, width:I
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v8

    sub-int v0, v7, v8

    .line 240
    .local v0, childHeight:I
    int-to-float v7, v5

    const v8, 0x3f4ccccd

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 242
    .local v2, childWidthSpec:I
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 243
    .local v1, childHeightSpec:I
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v7, v2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 244
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7, v2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 245
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v7, v2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 247
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 249
    iget-boolean v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    if-nez v7, :cond_7f

    .line 250
    iget v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    invoke-virtual {p0, p1, v7, v6}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 253
    :cond_7f
    iput-boolean v6, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    .line 254
    return-void

    .end local v0           #childHeight:I
    .end local v1           #childHeightSpec:I
    .end local v2           #childWidthSpec:I
    .end local v3           #itemCount:I
    .end local v4           #text:Ljava/lang/CharSequence;
    .end local v5           #width:I
    :cond_82
    move v3, v6

    .line 220
    goto :goto_a

    .line 229
    .restart local v3       #itemCount:I
    .restart local v4       #text:Ljava/lang/CharSequence;
    :cond_84
    const/4 v7, 0x0

    goto :goto_24
.end method

.method updateTextPositions(IFZ)V
    .registers 49
    .parameter "position"
    .parameter "positionOffset"
    .parameter "force"

    .prologue
    .line 279
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    move/from16 v42, v0

    move/from16 v0, p1

    move/from16 v1, v42

    if-eq v0, v1, :cond_188

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v42

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    .line 285
    :cond_1f
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v36

    .line 288
    .local v36, prevWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v18

    .line 289
    .local v18, currWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v26

    .line 290
    .local v26, nextWidth:I
    div-int/lit8 v19, v18, 0x2

    .line 292
    .local v19, halfCurrWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v38

    .line 293
    .local v38, stripWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v37

    .line 294
    .local v37, stripHeight:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v29

    .line 295
    .local v29, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v30

    .line 296
    .local v30, paddingRight:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v31

    .line 297
    .local v31, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v28

    .line 298
    .local v28, paddingBottom:I
    add-int v39, v29, v19

    .line 299
    .local v39, textPaddedLeft:I
    add-int v40, v30, v19

    .line 300
    .local v40, textPaddedRight:I
    sub-int v42, v38, v39

    sub-int v10, v42, v40

    .line 302
    .local v10, contentWidth:I
    const/high16 v42, 0x3f00

    add-float v14, p2, v42

    .line 303
    .local v14, currOffset:F
    const/high16 v42, 0x3f80

    cmpl-float v42, v14, v42

    if-lez v42, :cond_75

    .line 304
    const/high16 v42, 0x3f80

    sub-float v14, v14, v42

    .line 306
    :cond_75
    sub-int v42, v38, v40

    int-to-float v0, v10

    move/from16 v43, v0

    mul-float v43, v43, v14

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    sub-int v12, v42, v43

    .line 307
    .local v12, currCenter:I
    div-int/lit8 v42, v18, 0x2

    sub-int v13, v12, v42

    .line 308
    .local v13, currLeft:I
    add-int v15, v13, v18

    .line 310
    .local v15, currRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getBaseline()I

    move-result v32

    .line 311
    .local v32, prevBaseline:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getBaseline()I

    move-result v11

    .line 312
    .local v11, currBaseline:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getBaseline()I

    move-result v22

    .line 313
    .local v22, nextBaseline:I
    move/from16 v0, v32

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v42

    move/from16 v0, v42

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 314
    .local v20, maxBaseline:I
    sub-int v35, v20, v32

    .line 315
    .local v35, prevTopOffset:I
    sub-int v17, v20, v11

    .line 316
    .local v17, currTopOffset:I
    sub-int v25, v20, v22

    .line 317
    .local v25, nextTopOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v42

    add-int v7, v35, v42

    .line 318
    .local v7, alignedPrevHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v42

    add-int v5, v17, v42

    .line 319
    .local v5, alignedCurrHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v42

    add-int v6, v25, v42

    .line 320
    .local v6, alignedNextHeight:I
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v42

    move/from16 v0, v42

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 323
    .local v21, maxTextHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    move/from16 v42, v0

    and-int/lit8 v41, v42, 0x70

    .line 328
    .local v41, vgrav:I
    sparse-switch v41, :sswitch_data_1b2

    .line 331
    add-int v34, v31, v35

    .line 332
    .local v34, prevTop:I
    add-int v16, v31, v17

    .line 333
    .local v16, currTop:I
    add-int v24, v31, v25

    .line 350
    .local v24, nextTop:I
    :goto_fa
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v43

    add-int v43, v43, v16

    move-object/from16 v0, v42

    move/from16 v1, v16

    move/from16 v2, v43

    invoke-virtual {v0, v13, v1, v15, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 353
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    move/from16 v42, v0

    sub-int v42, v13, v42

    sub-int v42, v42, v36

    move/from16 v0, v29

    move/from16 v1, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v33

    .line 354
    .local v33, prevLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    add-int v43, v33, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v44

    add-int v44, v44, v34

    move-object/from16 v0, v42

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v43

    move/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 357
    sub-int v42, v38, v30

    sub-int v42, v42, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    move/from16 v43, v0

    add-int v43, v43, v15

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 359
    .local v23, nextLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    add-int v43, v23, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v44

    add-int v44, v44, v24

    move-object/from16 v0, v42

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v43

    move/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 362
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 363
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    .line 364
    .end local v5           #alignedCurrHeight:I
    .end local v6           #alignedNextHeight:I
    .end local v7           #alignedPrevHeight:I
    .end local v10           #contentWidth:I
    .end local v11           #currBaseline:I
    .end local v12           #currCenter:I
    .end local v13           #currLeft:I
    .end local v14           #currOffset:F
    .end local v15           #currRight:I
    .end local v16           #currTop:I
    .end local v17           #currTopOffset:I
    .end local v18           #currWidth:I
    .end local v19           #halfCurrWidth:I
    .end local v20           #maxBaseline:I
    .end local v21           #maxTextHeight:I
    .end local v22           #nextBaseline:I
    .end local v23           #nextLeft:I
    .end local v24           #nextTop:I
    .end local v25           #nextTopOffset:I
    .end local v26           #nextWidth:I
    .end local v28           #paddingBottom:I
    .end local v29           #paddingLeft:I
    .end local v30           #paddingRight:I
    .end local v31           #paddingTop:I
    .end local v32           #prevBaseline:I
    .end local v33           #prevLeft:I
    .end local v34           #prevTop:I
    .end local v35           #prevTopOffset:I
    .end local v36           #prevWidth:I
    .end local v37           #stripHeight:I
    .end local v38           #stripWidth:I
    .end local v39           #textPaddedLeft:I
    .end local v40           #textPaddedRight:I
    .end local v41           #vgrav:I
    :goto_187
    return-void

    .line 281
    :cond_188
    if-nez p3, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    move/from16 v42, v0

    cmpl-float v42, p2, v42

    if-nez v42, :cond_1f

    goto :goto_187

    .line 336
    .restart local v5       #alignedCurrHeight:I
    .restart local v6       #alignedNextHeight:I
    .restart local v7       #alignedPrevHeight:I
    .restart local v10       #contentWidth:I
    .restart local v11       #currBaseline:I
    .restart local v12       #currCenter:I
    .restart local v13       #currLeft:I
    .restart local v14       #currOffset:F
    .restart local v15       #currRight:I
    .restart local v17       #currTopOffset:I
    .restart local v18       #currWidth:I
    .restart local v19       #halfCurrWidth:I
    .restart local v20       #maxBaseline:I
    .restart local v21       #maxTextHeight:I
    .restart local v22       #nextBaseline:I
    .restart local v25       #nextTopOffset:I
    .restart local v26       #nextWidth:I
    .restart local v28       #paddingBottom:I
    .restart local v29       #paddingLeft:I
    .restart local v30       #paddingRight:I
    .restart local v31       #paddingTop:I
    .restart local v32       #prevBaseline:I
    .restart local v35       #prevTopOffset:I
    .restart local v36       #prevWidth:I
    .restart local v37       #stripHeight:I
    .restart local v38       #stripWidth:I
    .restart local v39       #textPaddedLeft:I
    .restart local v40       #textPaddedRight:I
    .restart local v41       #vgrav:I
    :sswitch_195
    sub-int v42, v37, v31

    sub-int v27, v42, v28

    .line 337
    .local v27, paddedHeight:I
    sub-int v42, v27, v21

    div-int/lit8 v9, v42, 0x2

    .line 338
    .local v9, centeredTop:I
    add-int v34, v9, v35

    .line 339
    .restart local v34       #prevTop:I
    add-int v16, v9, v17

    .line 340
    .restart local v16       #currTop:I
    add-int v24, v9, v25

    .line 341
    .restart local v24       #nextTop:I
    goto/16 :goto_fa

    .line 343
    .end local v9           #centeredTop:I
    .end local v16           #currTop:I
    .end local v24           #nextTop:I
    .end local v27           #paddedHeight:I
    .end local v34           #prevTop:I
    :sswitch_1a5
    sub-int v42, v37, v28

    sub-int v8, v42, v21

    .line 344
    .local v8, bottomGravTop:I
    add-int v34, v8, v35

    .line 345
    .restart local v34       #prevTop:I
    add-int v16, v8, v17

    .line 346
    .restart local v16       #currTop:I
    add-int v24, v8, v25

    .restart local v24       #nextTop:I
    goto/16 :goto_fa

    .line 328
    nop

    :sswitch_data_1b2
    .sparse-switch
        0x10 -> :sswitch_195
        0x50 -> :sswitch_1a5
    .end sparse-switch
.end method
