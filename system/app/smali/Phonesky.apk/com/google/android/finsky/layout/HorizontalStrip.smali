.class public Lcom/google/android/finsky/layout/HorizontalStrip;
.super Lcom/google/android/finsky/layout/DraggableHorizontalStrip;
.source "HorizontalStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;,
        Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

.field protected final mChildBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mDimension:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

.field private mEdgeFadeColor:I

.field private mImageChildTappedListener:Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;

.field protected final mScreenScaleFactor:F

.field private mVideoChildTappedListener:Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/HorizontalStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attributeSet"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    sget-object v1, Lcom/android/vending/R$styleable;->HorizontalStrip:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mChildBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    .line 68
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mScreenScaleFactor:F

    .line 69
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mEdgeFadeColor:I

    .line 70
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->setWillNotDraw(Z)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/HorizontalStrip;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->syncChildViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/HorizontalStrip;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->recreateChildViews()V

    return-void
.end method

.method private getChildHeight(I)I
    .registers 5
    .parameter "childIndex"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    iget v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mScreenScaleFactor:F

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getImageDimensionAt(ILcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;F)V

    .line 158
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getHeight()I

    move-result v0

    return v0
.end method

.method private getChildWidth(I)I
    .registers 5
    .parameter "childIndex"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    iget v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mScreenScaleFactor:F

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getImageDimensionAt(ILcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;F)V

    .line 153
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getWidth()I

    move-result v0

    return v0
.end method

.method private recreateChildViews()V
    .registers 5

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->removeAllViews()V

    .line 94
    iget-object v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    if-nez v2, :cond_8

    .line 105
    :goto_7
    return-void

    .line 98
    :cond_8
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    iget-object v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v2}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 99
    iget-object v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iget-object v3, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p0, v1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getViewAt(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, childView:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mChildBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HorizontalStrip;->addView(Landroid/view/View;)V

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 104
    .end local v0           #childView:Landroid/view/View;
    :cond_24
    invoke-direct {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->syncChildViews()V

    goto :goto_7
.end method

.method private syncChildViews()V
    .registers 6

    .prologue
    .line 108
    const/4 v2, 0x1

    .line 109
    .local v2, hasAllImages:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v4}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_24

    .line 110
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, child:Landroid/view/View;
    instance-of v4, v0, Landroid/widget/ImageView;

    if-eqz v4, :cond_1f

    .line 112
    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v4, v3}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getImageAt(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 113
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_22

    .line 114
    check-cast v0, Landroid/widget/ImageView;

    .end local v0           #child:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ThumbnailUtils;->setImageDrawableWithFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 109
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 116
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_22
    const/4 v2, 0x0

    goto :goto_1f

    .line 120
    .end local v0           #child:Landroid/view/View;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_24
    if-eqz v2, :cond_29

    .line 121
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->requestLayout()V

    .line 123
    :cond_29
    return-void
.end method


# virtual methods
.method protected getLeftEdgeOfChildOnLeft(F)F
    .registers 8
    .parameter "xOffset"

    .prologue
    .line 185
    const/4 v3, 0x0

    .line 186
    .local v3, result:I
    const/4 v1, 0x0

    .line 187
    .local v1, currLeft:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1a

    .line 188
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 190
    int-to-float v4, v1

    cmpl-float v4, v4, p1

    if-lez v4, :cond_1c

    .line 195
    .end local v0           #childView:Landroid/view/View;
    :cond_1a
    int-to-float v4, v3

    return v4

    .line 193
    .restart local v0       #childView:Landroid/view/View;
    :cond_1c
    move v3, v1

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method protected getLeftEdgeOfChildOnRight(F)F
    .registers 8
    .parameter "xOffset"

    .prologue
    .line 200
    const/4 v3, 0x0

    .line 201
    .local v3, result:I
    const/4 v1, 0x0

    .line 202
    .local v1, currLeft:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1b

    .line 203
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 204
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 205
    move v3, v1

    .line 206
    int-to-float v4, v1

    cmpl-float v4, v4, p1

    if-lez v4, :cond_1d

    .line 210
    .end local v0           #childView:Landroid/view/View;
    :cond_1b
    int-to-float v4, v3

    return v4

    .line 202
    .restart local v0       #childView:Landroid/view/View;
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getScrollPosition()F

    move-result v2

    .line 221
    .local v2, scrollPosition:F
    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v4}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->hasLeadingMargin()Z

    move-result v4

    if-nez v4, :cond_15

    .line 222
    iget v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    .line 224
    :cond_15
    cmpl-float v4, v2, v3

    if-ltz v4, :cond_1a

    .line 232
    :goto_19
    return v3

    .line 227
    :cond_1a
    neg-float v1, v2

    .line 228
    .local v1, pixelsBeyondLeft:F
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 229
    .local v0, fadeLength:I
    int-to-float v3, v0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_27

    .line 230
    const/high16 v3, 0x3f80

    goto :goto_19

    .line 232
    :cond_27
    int-to-float v3, v0

    div-float v3, v1, v3

    goto :goto_19
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 242
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getScrollPosition()F

    move-result v3

    iget v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 243
    .local v1, pixelsBeyondRight:F
    cmpg-float v3, v1, v2

    if-gtz v3, :cond_14

    .line 250
    :goto_13
    return v2

    .line 246
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 247
    .local v0, fadeLength:I
    int-to-float v2, v0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_20

    .line 248
    const/high16 v2, 0x3f80

    goto :goto_13

    .line 250
    :cond_20
    int-to-float v2, v0

    div-float v2, v1, v2

    goto :goto_13
.end method

.method public getSolidColor()I
    .registers 2

    .prologue
    .line 285
    iget v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mEdgeFadeColor:I

    return v0
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HorizontalStrip;->setAdapter(Lcom/google/android/finsky/adapters/ImageStripAdapter;)V

    .line 290
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HorizontalStrip;->setImageChildTappedListener(Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;)V

    .line 291
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HorizontalStrip;->setVideoChildTappedListener(Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;)V

    .line 292
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 163
    sub-int v2, p5, p3

    .line 165
    .local v2, h:I
    const/4 v5, 0x0

    iput v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    .line 166
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getScrollPosition()F

    move-result v6

    add-float/2addr v5, v6

    iget v6, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v4, v5

    .line 167
    .local v4, x:I
    iget-object v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v5}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->hasLeadingMargin()Z

    move-result v5

    if-nez v5, :cond_23

    if-lez v4, :cond_23

    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    if-gt v4, v5, :cond_23

    .line 171
    const/4 v4, 0x0

    .line 173
    :cond_23
    const/4 v3, 0x0

    .local v3, i:I
    :goto_24
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_45

    .line 174
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 175
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 176
    .local v1, childWidth:I
    const/4 v5, 0x0

    add-int v6, v4, v1

    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/view/View;->layout(IIII)V

    .line 177
    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    add-int/2addr v5, v1

    add-int/2addr v4, v5

    .line 178
    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    int-to-float v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 180
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childWidth:I
    :cond_45
    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    iget v6, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    .line 181
    return-void
.end method

.method protected onMeasure(II)V
    .registers 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    .line 127
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 129
    .local v5, stripHeight:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_43

    .line 130
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 131
    .local v0, child:Landroid/view/View;
    instance-of v6, v0, Landroid/widget/ImageView;

    if-eqz v6, :cond_35

    .line 132
    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildWidth(I)I

    move-result v2

    .line 133
    .local v2, childWidth:I
    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildHeight(I)I

    move-result v1

    .line 134
    .local v1, childHeight:I
    int-to-float v6, v5

    int-to-float v7, v1

    div-float v4, v6, v7

    .line 135
    .local v4, scalingFactor:F
    float-to-double v6, v4

    const-wide/high16 v8, 0x3ff0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2b

    .line 138
    int-to-float v6, v2

    mul-float/2addr v6, v4

    float-to-int v2, v6

    .line 140
    :cond_2b
    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v6, p2}, Landroid/view/View;->measure(II)V

    .line 129
    .end local v1           #childHeight:I
    .end local v4           #scalingFactor:F
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 143
    .end local v2           #childWidth:I
    :cond_35
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v2, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 144
    .restart local v2       #childWidth:I
    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v6, p2}, Landroid/view/View;->measure(II)V

    goto :goto_32

    .line 148
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childWidth:I
    :cond_43
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {p0, v6, v5}, Lcom/google/android/finsky/layout/HorizontalStrip;->setMeasuredDimension(II)V

    .line 149
    return-void
.end method

.method protected onTouchEventTriggeredTap(F)Z
    .registers 7
    .parameter "x"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/HorizontalStrip;->findViewIndexAtX(F)I

    move-result v1

    .line 264
    .local v1, tappedIndex:I
    if-gez v1, :cond_9

    .line 280
    :cond_8
    :goto_8
    return v2

    .line 268
    :cond_9
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 269
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 270
    instance-of v4, v0, Landroid/widget/ImageView;

    if-eqz v4, :cond_25

    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mImageChildTappedListener:Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;

    if-eqz v4, :cond_25

    .line 271
    iget-object v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mImageChildTappedListener:Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;

    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v4, v1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->toImageIndex(I)I

    move-result v4

    invoke-interface {v2, v4}, Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;->onImageChildViewTap(I)V

    move v2, v3

    .line 272
    goto :goto_8

    .line 275
    :cond_25
    instance-of v4, v0, Lcom/google/android/finsky/layout/VideoFrame;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mVideoChildTappedListener:Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;

    if-eqz v4, :cond_8

    .line 276
    iget-object v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mVideoChildTappedListener:Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;

    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v4, v1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->toVideoIndex(I)I

    move-result v4

    invoke-interface {v2, v4}, Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;->onVideoChildViewTap(I)V

    move v2, v3

    .line 277
    goto :goto_8
.end method

.method public setAdapter(Lcom/google/android/finsky/adapters/ImageStripAdapter;)V
    .registers 4
    .parameter "adapter"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    if-eqz v0, :cond_10

    .line 76
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    new-instance v1, Lcom/google/android/finsky/layout/HorizontalStrip$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/HorizontalStrip$1;-><init>(Lcom/google/android/finsky/layout/HorizontalStrip;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 88
    :cond_10
    invoke-direct {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->recreateChildViews()V

    .line 89
    return-void
.end method

.method public setImageChildTappedListener(Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mImageChildTappedListener:Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;

    .line 255
    return-void
.end method

.method public setVideoChildTappedListener(Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mVideoChildTappedListener:Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;

    .line 259
    return-void
.end method
