.class public Lcom/google/android/finsky/layout/HeroGraphicView;
.super Landroid/view/ViewGroup;
.source "HeroGraphicView.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# instance fields
.field private mAccessibilityOverlay:Landroid/view/View;

.field private mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

.field private mBlackCurtain:Landroid/view/View;

.field private mHeroCaptionView:Landroid/widget/TextView;

.field private mHeroImageView:Landroid/widget/ImageView;

.field private mMaxHeight:I

.field private mPlayImageView:Landroid/widget/ImageView;

.field private mRestrictHeight:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/HeroGraphicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/HeroGraphicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    sget-object v1, Lcom/android/vending/R$styleable;->HeroGraphicView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, viewAttrs:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    .line 65
    return-void
.end method


# virtual methods
.method public load(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;Z)V
    .registers 10
    .parameter "bitmapLoader"
    .parameter "url"
    .parameter "restrictHeight"

    .prologue
    .line 109
    iput-boolean p3, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mRestrictHeight:Z

    .line 110
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 113
    .local v5, height:I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 114
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_25

    .line 115
    :cond_1a
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 117
    :cond_25
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 118
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mHeroImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    :cond_38
    :goto_38
    return-void

    .line 121
    :cond_39
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HeroGraphicView;->setVisibility(I)V

    goto :goto_38
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    if-eqz v0, :cond_9

    .line 234
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 236
    :cond_9
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 237
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 76
    const v0, 0x7f080122

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HeroGraphicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mHeroImageView:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f080123

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HeroGraphicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mPlayImageView:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f080124

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HeroGraphicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mHeroCaptionView:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f080121

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HeroGraphicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBlackCurtain:Landroid/view/View;

    .line 80
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HeroGraphicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    .line 81
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 19
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->getWidth()I

    move-result v7

    .line 200
    .local v7, width:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->getHeight()I

    move-result v0

    .line 201
    .local v0, height:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->getPaddingRight()I

    move-result v5

    .line 202
    .local v5, paddingRight:I
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mHeroImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_3e

    .line 203
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mHeroImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    .line 204
    .local v2, heroMeasuredWidth:I
    sub-int v8, v7, v2

    sub-int/2addr v8, v5

    div-int/lit8 v3, v8, 0x2

    .line 205
    .local v3, imageLeft:I
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mHeroImageView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    add-int v10, v3, v2

    invoke-virtual {v8, v3, v9, v10, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 206
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mHeroCaptionView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3e

    .line 207
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mHeroCaptionView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mHeroCaptionView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    sub-int v9, v0, v9

    add-int v10, v3, v2

    invoke-virtual {v8, v3, v9, v10, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 212
    .end local v2           #heroMeasuredWidth:I
    .end local v3           #imageLeft:I
    :cond_3e
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_64

    .line 213
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    .line 214
    .local v6, playMeasuredWidth:I
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    .line 215
    .local v1, heroMeasuredHeight:I
    sub-int v8, v7, v6

    sub-int/2addr v8, v5

    div-int/lit8 v3, v8, 0x2

    .line 216
    .restart local v3       #imageLeft:I
    sub-int v8, v0, v1

    div-int/lit8 v4, v8, 0x2

    .line 217
    .local v4, imageTop:I
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mPlayImageView:Landroid/widget/ImageView;

    add-int v9, v3, v6

    add-int v10, v4, v1

    invoke-virtual {v8, v3, v4, v9, v10}, Landroid/widget/ImageView;->layout(IIII)V

    .line 221
    .end local v1           #heroMeasuredHeight:I
    .end local v3           #imageLeft:I
    .end local v4           #imageTop:I
    .end local v6           #playMeasuredWidth:I
    :cond_64
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBlackCurtain:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_7f

    .line 222
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBlackCurtain:Landroid/view/View;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBlackCurtain:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    iget-object v12, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBlackCurtain:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 226
    :cond_7f
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_8e

    .line 227
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v7, v0}, Landroid/view/View;->layout(IIII)V

    .line 229
    :cond_8e
    return-void
.end method

.method protected onMeasure(II)V
    .registers 20
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 142
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/HeroGraphicView;->mPlayImageView:Landroid/widget/ImageView;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/ImageView;->measure(II)V

    .line 143
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Landroid/view/View;->measure(II)V

    .line 145
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 146
    .local v2, availableWidth:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/HeroGraphicView;->mHeroImageView:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 147
    .local v5, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_2d

    .line 148
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14}, Lcom/google/android/finsky/layout/HeroGraphicView;->setMeasuredDimension(II)V

    .line 195
    :goto_2c
    return-void

    .line 151
    :cond_2d
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 152
    .local v7, imWidth:I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 153
    .local v6, imHeight:I
    mul-int v14, v2, v6

    div-int v10, v14, v7

    .line 154
    .local v10, scaledHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->getPaddingRight()I

    move-result v9

    .line 155
    .local v9, paddingRight:I
    sub-int v14, v2, v9

    const/high16 v15, 0x4000

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 158
    .local v4, curtainWidthMeasureSpec:I
    const/high16 v14, 0x4000

    invoke-static {v10, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 159
    .local v11, scaledHeightSpec:I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/finsky/layout/HeroGraphicView;->mRestrictHeight:Z

    if-eqz v14, :cond_c3

    .line 160
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    if-gt v10, v14, :cond_81

    .line 161
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/HeroGraphicView;->mHeroImageView:Landroid/widget/ImageView;

    move/from16 v0, p1

    invoke-virtual {v14, v0, v11}, Landroid/widget/ImageView;->measure(II)V

    .line 162
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/HeroGraphicView;->mHeroCaptionView:Landroid/widget/TextView;

    const/4 v15, 0x0

    move/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/widget/TextView;->measure(II)V

    .line 163
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBlackCurtain:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_7b

    .line 164
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBlackCurtain:Landroid/view/View;

    invoke-virtual {v14, v4, v11}, Landroid/view/View;->measure(II)V

    .line 166
    :cond_7b
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lcom/google/android/finsky/layout/HeroGraphicView;->setMeasuredDimension(II)V

    goto :goto_2c

    .line 168
    :cond_81
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    mul-int/2addr v14, v7

    div-int v12, v14, v6

    .line 169
    .local v12, scaledWidth:I
    const/high16 v14, 0x4000

    invoke-static {v12, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 171
    .local v13, scaledWidthSpec:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    const/high16 v15, 0x4000

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 173
    .local v8, maxHeightSpec:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/HeroGraphicView;->mHeroImageView:Landroid/widget/ImageView;

    invoke-virtual {v14, v13, v8}, Landroid/widget/ImageView;->measure(II)V

    .line 174
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/HeroGraphicView;->mHeroCaptionView:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v13, v15}, Landroid/widget/TextView;->measure(II)V

    .line 175
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBlackCurtain:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_b8

    .line 176
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBlackCurtain:Landroid/view/View;

    invoke-virtual {v14, v4, v8}, Landroid/view/View;->measure(II)V

    .line 178
    :cond_b8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14}, Lcom/google/android/finsky/layout/HeroGraphicView;->setMeasuredDimension(II)V

    goto/16 :goto_2c

    .line 181
    .end local v8           #maxHeightSpec:I
    .end local v12           #scaledWidth:I
    .end local v13           #scaledWidthSpec:I
    :cond_c3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v14, v10, :cond_d4

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iput v10, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->requestLayout()V

    .line 185
    :cond_d4
    const/high16 v14, 0x4000

    invoke-static {v2, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 187
    .local v3, availableWidthSpec:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/HeroGraphicView;->mHeroImageView:Landroid/widget/ImageView;

    invoke-virtual {v14, v3, v11}, Landroid/widget/ImageView;->measure(II)V

    .line 188
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/HeroGraphicView;->mHeroCaptionView:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v3, v15}, Landroid/widget/TextView;->measure(II)V

    .line 189
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBlackCurtain:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_fa

    .line 190
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBlackCurtain:Landroid/view/View;

    invoke-virtual {v14, v4, v11}, Landroid/view/View;->measure(II)V

    .line 192
    :cond_fa
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lcom/google/android/finsky/layout/HeroGraphicView;->setMeasuredDimension(II)V

    goto/16 :goto_2c
.end method

.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .registers 4
    .parameter "bitmapContainer"

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    .local v0, response:Landroid/graphics/Bitmap;
    if-nez v0, :cond_c

    .line 130
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/HeroGraphicView;->setVisibility(I)V

    .line 138
    :goto_b
    return-void

    .line 134
    :cond_c
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/HeroGraphicView;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mHeroImageView:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/google/android/finsky/utils/ThumbnailUtils;->setImageBitmapWithFade(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 137
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->requestLayout()V

    goto :goto_b
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/HeroGraphicView;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method

.method public setHeight(I)V
    .registers 3
    .parameter "height"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    iput p1, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    .line 70
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->requestLayout()V

    .line 71
    return-void
.end method

.method public showBlackCurtain()V
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBlackCurtain:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    return-void
.end method

.method public showOverlayCaption(Ljava/lang/String;)V
    .registers 4
    .parameter "overlayCaption"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mHeroCaptionView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mHeroCaptionView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    return-void
.end method

.method public showPlayIcon(Ljava/lang/String;)V
    .registers 4
    .parameter "youtubeUrl"

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    new-instance v1, Lcom/google/android/finsky/layout/HeroGraphicView$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/layout/HeroGraphicView$1;-><init>(Lcom/google/android/finsky/layout/HeroGraphicView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method
