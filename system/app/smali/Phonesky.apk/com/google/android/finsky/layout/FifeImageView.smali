.class public Lcom/google/android/finsky/layout/FifeImageView;
.super Landroid/widget/ImageView;
.source "FifeImageView.java"


# instance fields
.field mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private mImage:Lcom/google/android/finsky/remoting/protos/Doc$Image;

.field mIsLoaded:Z

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mNoPlaceholder:Z

.field private mPressedDrawable:Landroid/graphics/drawable/Drawable;

.field mRequestCount:I

.field private mToFadeInAfterLoad:Z

.field private mToLoadOnce:Z

.field private mViewToFadeIn:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/FifeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/FifeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput v2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    .line 37
    iput v2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxWidth:I

    .line 60
    sget-object v1, Lcom/android/vending/R$styleable;->HeroGraphicView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, viewAttrs:Landroid/content/res/TypedArray;
    const v1, 0x7fffffff

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    sget-object v1, Lcom/android/vending/R$styleable;->FifeImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mToLoadOnce:Z

    .line 68
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mToFadeInAfterLoad:Z

    .line 70
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mNoPlaceholder:Z

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    return-void
.end method

.method private getFifeUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "baseUrl"

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 195
    const/4 v2, 0x0

    .line 196
    .local v2, width:I
    const/4 v0, 0x0

    .line 197
    .local v0, height:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 198
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v5, :cond_2b

    .line 199
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getWidth()I

    move-result v2

    .line 200
    iget v4, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxWidth:I

    if-lez v4, :cond_1a

    .line 201
    iget v4, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxWidth:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 203
    :cond_1a
    if-nez v2, :cond_1d

    .line 224
    :cond_1c
    :goto_1c
    return-object v3

    .line 206
    :cond_1d
    iget v3, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_26

    .line 207
    iget v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    .line 224
    :cond_26
    :goto_26
    invoke-static {p1, v2, v0}, Lcom/google/android/finsky/utils/ThumbnailUtils;->buildFifeUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1c

    .line 209
    :cond_2b
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v4, :cond_3a

    .line 210
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getWidth()I

    move-result v2

    .line 211
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_26

    .line 212
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_26

    .line 214
    :cond_3a
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v5, :cond_26

    .line 215
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getHeight()I

    move-result v0

    .line 216
    iget v4, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    if-lez v4, :cond_4c

    .line 217
    iget v4, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 219
    :cond_4c
    if-eqz v0, :cond_1c

    .line 222
    iget v2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxWidth:I

    goto :goto_26
.end method

.method private getImageUrlToLoad(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Ljava/lang/String;
    .registers 5
    .parameter "image"

    .prologue
    const/4 v1, 0x0

    .line 111
    if-nez p1, :cond_5

    move-object v0, v1

    .line 123
    :cond_4
    :goto_4
    return-object v0

    .line 115
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, imageUrl:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object v0, v1

    .line 117
    goto :goto_4

    .line 120
    :cond_11
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getSupportsFifeUrlOptions()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 121
    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/FifeImageView;->getFifeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 1

    .prologue
    .line 245
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 246
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->invalidate()V

    .line 247
    return-void
.end method

.method protected getImageToLoad()Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mImage:Lcom/google/android/finsky/remoting/protos/Doc$Image;

    return-object v0
.end method

.method protected getPlaceholder()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized isLoaded()Z
    .registers 2

    .prologue
    .line 99
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mIsLoaded:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method loadImageIfNecessary()V
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mToLoadOnce:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mRequestCount:I

    if-lez v0, :cond_a

    .line 189
    :cond_9
    :goto_9
    return-void

    .line 136
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getWidth()I

    move-result v4

    .line 137
    .local v4, width:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getHeight()I

    move-result v5

    .line 138
    .local v5, height:I
    if-nez v4, :cond_16

    if-eqz v5, :cond_9

    .line 142
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getImageToLoad()Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v7

    .line 143
    .local v7, imageToLoad:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    invoke-direct {p0, v7}, Lcom/google/android/finsky/layout/FifeImageView;->getImageUrlToLoad(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, urlToLoad:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 145
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 146
    .local v10, oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz v10, :cond_9

    .line 147
    invoke-virtual {v10}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 148
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/FifeImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_9

    .line 154
    .end local v10           #oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    :cond_33
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 155
    .restart local v10       #oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz v10, :cond_4e

    invoke-virtual {v10}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 156
    invoke-virtual {v10}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 159
    invoke-virtual {v10}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 164
    :cond_4e
    iget v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mRequestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mRequestCount:I

    .line 165
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mNoPlaceholder:Z

    if-eqz v0, :cond_7a

    .line 166
    .local v2, placeholder:Landroid/graphics/Bitmap;
    :goto_58
    new-instance v3, Lcom/google/android/finsky/layout/FifeImageView$1;

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mToFadeInAfterLoad:Z

    iget-object v11, p0, Lcom/google/android/finsky/layout/FifeImageView;->mViewToFadeIn:Landroid/view/View;

    invoke-direct {v3, p0, p0, v0, v11}, Lcom/google/android/finsky/layout/FifeImageView$1;-><init>(Lcom/google/android/finsky/layout/FifeImageView;Landroid/widget/ImageView;ZLandroid/view/View;)V

    .line 180
    .local v3, thumbnailListener:Lcom/google/android/finsky/layout/ThumbnailListener;
    iget-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v9

    .line 182
    .local v9, newContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {p0, v9}, Lcom/google/android/finsky/layout/FifeImageView;->setTag(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {v9}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 184
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_9

    .line 185
    if-eq v6, v2, :cond_7f

    const/4 v8, 0x1

    .line 186
    .local v8, isLoaded:Z
    :goto_73
    invoke-virtual {p0, v6}, Lcom/google/android/finsky/layout/FifeImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/layout/FifeImageView;->setLoaded(Z)V

    goto :goto_9

    .line 165
    .end local v2           #placeholder:Landroid/graphics/Bitmap;
    .end local v3           #thumbnailListener:Lcom/google/android/finsky/layout/ThumbnailListener;
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #isLoaded:Z
    .end local v9           #newContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    :cond_7a
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getPlaceholder()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_58

    .line 185
    .restart local v2       #placeholder:Landroid/graphics/Bitmap;
    .restart local v3       #thumbnailListener:Lcom/google/android/finsky/layout/ThumbnailListener;
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #newContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    :cond_7f
    const/4 v8, 0x0

    goto :goto_73
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 236
    .local v0, oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz v0, :cond_b

    .line 237
    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 240
    :cond_b
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 241
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 251
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 253
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 254
    iget-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_21

    .line 255
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 257
    :cond_21
    iget-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 258
    iget-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 269
    :cond_33
    :goto_33
    return-void

    .line 262
    :cond_34
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 263
    iget-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4b

    .line 264
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    .line 266
    :cond_4b
    iget-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 267
    iget-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_33
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 229
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 230
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->loadImageIfNecessary()V

    .line 231
    return-void
.end method

.method public setImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .registers 4
    .parameter "image"
    .parameter "bitmapLoader"

    .prologue
    const/4 v0, 0x0

    .line 86
    iput-object p1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mImage:Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 87
    iput-object p2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 88
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FifeImageView;->setLoaded(Z)V

    .line 89
    iput v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mRequestCount:I

    .line 91
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->loadImageIfNecessary()V

    .line 92
    return-void
.end method

.method declared-synchronized setLoaded(Z)V
    .registers 3
    .parameter "isLoaded"

    .prologue
    .line 103
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mIsLoaded:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 104
    monitor-exit p0

    return-void

    .line 103
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaxHeight(I)V
    .registers 2
    .parameter "maxHeight"

    .prologue
    .line 82
    iput p1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    .line 83
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2
    .parameter "maxWidth"

    .prologue
    .line 77
    iput p1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxWidth:I

    .line 78
    return-void
.end method

.method public setViewToFadeIn(Landroid/view/View;)V
    .registers 2
    .parameter "viewToFadeIn"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mViewToFadeIn:Landroid/view/View;

    .line 96
    return-void
.end method
