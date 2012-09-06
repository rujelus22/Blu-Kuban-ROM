.class public Lcom/google/android/finsky/layout/HeroGraphicView;
.super Lcom/google/android/finsky/layout/YoutubeFrameView;
.source "HeroGraphicView.java"


# instance fields
.field private mMaxHeight:I

.field private mRestrictHeight:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/HeroGraphicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/HeroGraphicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/YoutubeFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    sget-object v1, Lcom/android/vending/R$styleable;->HeroGraphicView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, viewAttrs:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    .line 46
    return-void
.end method


# virtual methods
.method public bindLightboxImage(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;Z)V
    .registers 6
    .parameter "doc"
    .parameter "navigationManager"
    .parameter "usePromoImage"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    new-instance v1, Lcom/google/android/finsky/layout/HeroGraphicView$1;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/google/android/finsky/layout/HeroGraphicView$1;-><init>(Lcom/google/android/finsky/layout/HeroGraphicView;ZLcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method public hideAccessibilityOverlay()V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    return-void
.end method

.method public load(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Z)V
    .registers 11
    .parameter "bitmapLoader"
    .parameter "doc"
    .parameter "url"
    .parameter "restrictHeight"

    .prologue
    .line 49
    iput-boolean p4, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mRestrictHeight:Z

    .line 50
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 53
    .local v5, height:I
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 54
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_25

    .line 55
    :cond_1a
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p3

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 57
    :cond_25
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 63
    :cond_38
    :goto_38
    return-void

    .line 61
    :cond_39
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HeroGraphicView;->setVisibility(I)V

    goto :goto_38
.end method

.method protected onLayout(ZIIII)V
    .registers 17
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->getWidth()I

    move-result v7

    .line 132
    .local v7, width:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->getHeight()I

    move-result v0

    .line 133
    .local v0, height:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->getPaddingRight()I

    move-result v5

    .line 134
    .local v5, paddingRight:I
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_27

    .line 135
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    .line 136
    .local v2, heroMeasuredWidth:I
    sub-int v8, v7, v2

    sub-int/2addr v8, v5

    div-int/lit8 v3, v8, 0x2

    .line 137
    .local v3, imageLeft:I
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    add-int v10, v3, v2

    invoke-virtual {v8, v3, v9, v10, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 140
    .end local v2           #heroMeasuredWidth:I
    .end local v3           #imageLeft:I
    :cond_27
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_4d

    .line 141
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    .line 142
    .local v6, playMeasuredWidth:I
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    .line 143
    .local v1, heroMeasuredHeight:I
    sub-int v8, v7, v6

    sub-int/2addr v8, v5

    div-int/lit8 v3, v8, 0x2

    .line 144
    .restart local v3       #imageLeft:I
    sub-int v8, v0, v1

    div-int/lit8 v4, v8, 0x2

    .line 145
    .local v4, imageTop:I
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mPlayImageView:Landroid/widget/ImageView;

    add-int v9, v3, v6

    add-int v10, v4, v1

    invoke-virtual {v8, v3, v4, v9, v10}, Landroid/widget/ImageView;->layout(IIII)V

    .line 149
    .end local v1           #heroMeasuredHeight:I
    .end local v3           #imageLeft:I
    .end local v4           #imageTop:I
    .end local v6           #playMeasuredWidth:I
    :cond_4d
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_5c

    .line 150
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v7, v0}, Landroid/view/View;->layout(IIII)V

    .line 152
    :cond_5c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x4000

    .line 89
    iget-object v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, v12, v12}, Landroid/widget/ImageView;->measure(II)V

    .line 90
    iget-object v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v10, p1, p2}, Landroid/view/View;->measure(II)V

    .line 92
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 93
    .local v0, availableWidth:I
    iget-object v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 94
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_21

    .line 95
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-virtual {p0, v0, v10}, Lcom/google/android/finsky/layout/HeroGraphicView;->setMeasuredDimension(II)V

    .line 127
    :goto_20
    return-void

    .line 98
    :cond_21
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 99
    .local v4, imWidth:I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 100
    .local v3, imHeight:I
    mul-int v10, v0, v3

    div-int v6, v10, v4

    .line 102
    .local v6, scaledHeight:I
    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 103
    .local v7, scaledHeightSpec:I
    iget-boolean v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mRestrictHeight:Z

    if-eqz v10, :cond_5c

    .line 104
    iget v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    if-gt v6, v10, :cond_42

    .line 105
    iget-object v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, p1, v7}, Landroid/widget/ImageView;->measure(II)V

    .line 106
    invoke-virtual {p0, v0, v6}, Lcom/google/android/finsky/layout/HeroGraphicView;->setMeasuredDimension(II)V

    goto :goto_20

    .line 108
    :cond_42
    iget v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    mul-int/2addr v10, v4

    div-int v8, v10, v3

    .line 109
    .local v8, scaledWidth:I
    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 111
    .local v9, scaledWidthSpec:I
    iget v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 113
    .local v5, maxHeightSpec:I
    iget-object v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, v9, v5}, Landroid/widget/ImageView;->measure(II)V

    .line 114
    iget v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    invoke-virtual {p0, v0, v10}, Lcom/google/android/finsky/layout/HeroGraphicView;->setMeasuredDimension(II)V

    goto :goto_20

    .line 117
    .end local v5           #maxHeightSpec:I
    .end local v8           #scaledWidth:I
    .end local v9           #scaledWidthSpec:I
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v10, v6, :cond_6d

    .line 118
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v6, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 119
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->requestLayout()V

    .line 121
    :cond_6d
    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 123
    .local v1, availableWidthSpec:I
    iget-object v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, v1, v7}, Landroid/widget/ImageView;->measure(II)V

    .line 124
    invoke-virtual {p0, v0, v6}, Lcom/google/android/finsky/layout/HeroGraphicView;->setMeasuredDimension(II)V

    goto :goto_20
.end method
