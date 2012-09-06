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

.field private final mIsInDoubleColumnLayout:Z

.field protected final mScreenScaleFactor:F

.field private mVideoChildTappedListener:Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/HorizontalStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attributeSet"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    sget-object v2, Lcom/android/vending/R$styleable;->HorizontalStrip:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mChildBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    new-instance v2, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    invoke-direct {v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 72
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mScreenScaleFactor:F

    .line 73
    const v2, 0x7f0a0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mEdgeFadeColor:I

    .line 74
    const v2, 0x7f090007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mIsInDoubleColumnLayout:Z

    .line 75
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->setWillNotDraw(Z)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/HorizontalStrip;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->syncChildViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/HorizontalStrip;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->recreateChildViews()V

    return-void
.end method

.method private getChildHeight(I)I
    .registers 5
    .parameter "childIndex"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    iget v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mScreenScaleFactor:F

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getImageDimensionAt(ILcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;F)V

    .line 170
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getHeight()I

    move-result v0

    return v0
.end method

.method private getChildWidth(I)I
    .registers 5
    .parameter "childIndex"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    iget v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mScreenScaleFactor:F

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getImageDimensionAt(ILcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;F)V

    .line 165
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getWidth()I

    move-result v0

    return v0
.end method

.method private recreateChildViews()V
    .registers 5

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->removeAllViews()V

    .line 99
    iget-object v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    if-nez v2, :cond_8

    .line 110
    :goto_7
    return-void

    .line 103
    :cond_8
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    iget-object v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v2}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 104
    iget-object v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iget-object v3, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p0, v1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getViewAt(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, childView:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mChildBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HorizontalStrip;->addView(Landroid/view/View;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 109
    .end local v0           #childView:Landroid/view/View;
    :cond_24
    invoke-direct {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->syncChildViews()V

    goto :goto_7
.end method

.method private syncChildViews()V
    .registers 7

    .prologue
    .line 113
    const/4 v2, 0x1

    .line 114
    .local v2, hasAllImages:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v5}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_31

    .line 115
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, child:Landroid/view/View;
    iget-object v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v5, v3}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getImageAt(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 117
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v5, v0, Landroid/widget/ImageView;

    if-eqz v5, :cond_24

    .line 118
    if-eqz v1, :cond_22

    .line 119
    check-cast v0, Landroid/widget/ImageView;

    .end local v0           #child:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ThumbnailUtils;->setImageDrawableWithFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 114
    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 121
    .restart local v0       #child:Landroid/view/View;
    :cond_22
    const/4 v2, 0x0

    goto :goto_1f

    .line 123
    :cond_24
    instance-of v5, v0, Lcom/google/android/finsky/layout/VideoFrame;

    if-eqz v5, :cond_1f

    move-object v4, v0

    .line 125
    check-cast v4, Lcom/google/android/finsky/layout/VideoFrame;

    .line 126
    .local v4, videoFrame:Lcom/google/android/finsky/layout/VideoFrame;
    if-eqz v1, :cond_1f

    .line 127
    invoke-virtual {v4, v1}, Lcom/google/android/finsky/layout/VideoFrame;->configurePreviewWithFlatOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1f

    .line 131
    .end local v0           #child:Landroid/view/View;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #videoFrame:Lcom/google/android/finsky/layout/VideoFrame;
    :cond_31
    if-eqz v2, :cond_36

    .line 132
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->requestLayout()V

    .line 134
    :cond_36
    return-void
.end method


# virtual methods
.method protected getLeftEdgeOfChildOnLeft(F)F
    .registers 8
    .parameter "xOffset"

    .prologue
    .line 212
    const/4 v3, 0x0

    .line 213
    .local v3, result:I
    const/4 v1, 0x0

    .line 214
    .local v1, currLeft:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1a

    .line 215
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 216
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 217
    int-to-float v4, v1

    cmpl-float v4, v4, p1

    if-lez v4, :cond_1c

    .line 222
    .end local v0           #childView:Landroid/view/View;
    :cond_1a
    int-to-float v4, v3

    return v4

    .line 220
    .restart local v0       #childView:Landroid/view/View;
    :cond_1c
    move v3, v1

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method protected getLeftEdgeOfChildOnRight(F)F
    .registers 8
    .parameter "xOffset"

    .prologue
    .line 227
    const/4 v3, 0x0

    .line 228
    .local v3, result:I
    const/4 v1, 0x0

    .line 229
    .local v1, currLeft:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1b

    .line 230
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 231
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 232
    move v3, v1

    .line 233
    int-to-float v4, v1

    cmpl-float v4, v4, p1

    if-lez v4, :cond_1d

    .line 237
    .end local v0           #childView:Landroid/view/View;
    :cond_1b
    int-to-float v4, v3

    return v4

    .line 229
    .restart local v0       #childView:Landroid/view/View;
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getScrollPosition()F

    move-result v2

    .line 248
    .local v2, scrollPosition:F
    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v4}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->hasLeadingMargin()Z

    move-result v4

    if-nez v4, :cond_15

    .line 249
    iget v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    .line 251
    :cond_15
    cmpl-float v4, v2, v3

    if-ltz v4, :cond_1a

    .line 259
    :goto_19
    return v3

    .line 254
    :cond_1a
    neg-float v1, v2

    .line 255
    .local v1, pixelsBeyondLeft:F
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 256
    .local v0, fadeLength:I
    int-to-float v3, v0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_27

    .line 257
    const/high16 v3, 0x3f80

    goto :goto_19

    .line 259
    :cond_27
    int-to-float v3, v0

    div-float v3, v1, v3

    goto :goto_19
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 269
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getScrollPosition()F

    move-result v3

    iget v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 270
    .local v1, pixelsBeyondRight:F
    cmpg-float v3, v1, v2

    if-gtz v3, :cond_14

    .line 277
    :goto_13
    return v2

    .line 273
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 274
    .local v0, fadeLength:I
    int-to-float v2, v0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_20

    .line 275
    const/high16 v2, 0x3f80

    goto :goto_13

    .line 277
    :cond_20
    int-to-float v2, v0

    div-float v2, v1, v2

    goto :goto_13
.end method

.method public getSolidColor()I
    .registers 2

    .prologue
    .line 312
    iget v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mEdgeFadeColor:I

    return v0
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HorizontalStrip;->setAdapter(Lcom/google/android/finsky/adapters/ImageStripAdapter;)V

    .line 317
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HorizontalStrip;->setImageChildTappedListener(Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;)V

    .line 318
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HorizontalStrip;->setVideoChildTappedListener(Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;)V

    .line 319
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
    .line 175
    iget-object v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    if-nez v5, :cond_5

    .line 208
    :cond_4
    :goto_4
    return-void

    .line 178
    :cond_5
    sub-int v2, p5, p3

    .line 180
    .local v2, h:I
    const/4 v5, 0x0

    iput v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    .line 181
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getScrollPosition()F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v4, v5

    .line 182
    .local v4, x:I
    iget-boolean v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mIsInDoubleColumnLayout:Z

    if-nez v5, :cond_1c

    .line 183
    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    add-int/2addr v4, v5

    .line 185
    :cond_1c
    iget-object v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v5}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->hasLeadingMargin()Z

    move-result v5

    if-nez v5, :cond_2b

    if-lez v4, :cond_2b

    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    if-gt v4, v5, :cond_2b

    .line 189
    const/4 v4, 0x0

    .line 191
    :cond_2b
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2c
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_4d

    .line 192
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 194
    .local v1, childWidth:I
    const/4 v5, 0x0

    add-int v6, v4, v1

    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/view/View;->layout(IIII)V

    .line 195
    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    add-int/2addr v5, v1

    add-int/2addr v4, v5

    .line 196
    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    int-to-float v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 199
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childWidth:I
    :cond_4d
    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    iget v6, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    .line 200
    iget-boolean v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mIsInDoubleColumnLayout:Z

    if-nez v5, :cond_4

    .line 202
    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    iget v6, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    .line 204
    iget-object v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v5}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->hasLeadingMargin()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 205
    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    iget v6, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .registers 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    .line 138
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 140
    .local v5, stripHeight:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_50

    .line 141
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 142
    .local v0, child:Landroid/view/View;
    instance-of v6, v0, Landroid/widget/ImageView;

    if-eqz v6, :cond_35

    .line 143
    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildWidth(I)I

    move-result v2

    .line 144
    .local v2, childWidth:I
    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildHeight(I)I

    move-result v1

    .line 145
    .local v1, childHeight:I
    int-to-float v6, v5

    int-to-float v7, v1

    div-float v4, v6, v7

    .line 146
    .local v4, scalingFactor:F
    float-to-double v6, v4

    const-wide/high16 v8, 0x3ff0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2b

    .line 149
    int-to-float v6, v2

    mul-float/2addr v6, v4

    float-to-int v2, v6

    .line 151
    :cond_2b
    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v6, p2}, Landroid/view/View;->measure(II)V

    .line 140
    .end local v1           #childHeight:I
    .end local v4           #scalingFactor:F
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 154
    .end local v2           #childWidth:I
    :cond_35
    iget-object v6, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v6, v3}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->hasImageDimensionAt(I)Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildWidth(I)I

    move-result v2

    .line 156
    .restart local v2       #childWidth:I
    :goto_41
    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v6, p2}, Landroid/view/View;->measure(II)V

    goto :goto_32

    .line 154
    .end local v2           #childWidth:I
    :cond_49
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v2, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_41

    .line 160
    .end local v0           #child:Landroid/view/View;
    :cond_50
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {p0, v6, v5}, Lcom/google/android/finsky/layout/HorizontalStrip;->setMeasuredDimension(II)V

    .line 161
    return-void
.end method

.method protected onTouchEventTriggeredTap(F)Z
    .registers 7
    .parameter "x"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 290
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/HorizontalStrip;->findViewIndexAtX(F)I

    move-result v1

    .line 291
    .local v1, tappedIndex:I
    if-gez v1, :cond_9

    .line 307
    :cond_8
    :goto_8
    return v2

    .line 295
    :cond_9
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 296
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 297
    instance-of v4, v0, Landroid/widget/ImageView;

    if-eqz v4, :cond_25

    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mImageChildTappedListener:Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;

    if-eqz v4, :cond_25

    .line 298
    iget-object v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mImageChildTappedListener:Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;

    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v4, v1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->toImageIndex(I)I

    move-result v4

    invoke-interface {v2, v4}, Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;->onImageChildViewTap(I)V

    move v2, v3

    .line 299
    goto :goto_8

    .line 302
    :cond_25
    instance-of v4, v0, Lcom/google/android/finsky/layout/VideoFrame;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mVideoChildTappedListener:Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;

    if-eqz v4, :cond_8

    .line 303
    iget-object v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mVideoChildTappedListener:Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;

    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v4, v1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->toVideoIndex(I)I

    move-result v4

    invoke-interface {v2, v4}, Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;->onVideoChildViewTap(I)V

    move v2, v3

    .line 304
    goto :goto_8
.end method

.method public setAdapter(Lcom/google/android/finsky/adapters/ImageStripAdapter;)V
    .registers 4
    .parameter "adapter"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    if-eqz v0, :cond_10

    .line 81
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    new-instance v1, Lcom/google/android/finsky/layout/HorizontalStrip$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/HorizontalStrip$1;-><init>(Lcom/google/android/finsky/layout/HorizontalStrip;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 93
    :cond_10
    invoke-direct {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->recreateChildViews()V

    .line 94
    return-void
.end method

.method public setImageChildTappedListener(Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mImageChildTappedListener:Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;

    .line 282
    return-void
.end method

.method public setVideoChildTappedListener(Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mVideoChildTappedListener:Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;

    .line 286
    return-void
.end method
