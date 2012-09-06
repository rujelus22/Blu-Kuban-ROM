.class public Lcom/google/android/finsky/layout/DecoratedTextView;
.super Landroid/widget/TextView;
.source "DecoratedTextView.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# instance fields
.field private mBorderPaint:Landroid/graphics/Paint;

.field private mDecorationPosition:I

.field private mDrawBorder:Z

.field private mUseWhitescale:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/DecoratedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    sget-object v1, Lcom/android/vending/R$styleable;->DecoratedTextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    .local v0, attrArray:Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/DecoratedTextView;->mDecorationPosition:I

    .line 45
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/DecoratedTextView;->mUseWhitescale:Z

    .line 46
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/layout/DecoratedTextView;->mBorderPaint:Landroid/graphics/Paint;

    .line 49
    iget-object v1, p0, Lcom/google/android/finsky/layout/DecoratedTextView;->mBorderPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    iget-object v1, p0, Lcom/google/android/finsky/layout/DecoratedTextView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setWillNotDraw(Z)V

    .line 53
    return-void
.end method

.method private static getWhitescale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "bitmap"

    .prologue
    const/4 v7, 0x0

    .line 148
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 149
    .local v1, config:Landroid/graphics/Bitmap$Config;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 150
    .local v4, result:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 152
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 153
    .local v3, paint:Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/LightingColorFilter;

    const/4 v5, -0x1

    const v6, 0xffffff

    invoke-direct {v2, v5, v6}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 154
    .local v2, lcf:Landroid/graphics/LightingColorFilter;
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 156
    invoke-virtual {v0, p0, v7, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 157
    return-object v4
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "response"

    .prologue
    const/4 v2, 0x0

    .line 99
    iget-boolean v1, p0, Lcom/google/android/finsky/layout/DecoratedTextView;->mUseWhitescale:Z

    if-eqz v1, :cond_9

    .line 100
    invoke-static {p1}, Lcom/google/android/finsky/layout/DecoratedTextView;->getWhitescale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 102
    :cond_9
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DecoratedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 103
    .local v0, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    iget v1, p0, Lcom/google/android/finsky/layout/DecoratedTextView;->mDecorationPosition:I

    packed-switch v1, :pswitch_data_20

    .line 111
    :goto_17
    return-void

    .line 105
    :pswitch_18
    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/google/android/finsky/layout/DecoratedTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    .line 108
    :pswitch_1c
    invoke-virtual {p0, v2, v2, v0, v2}, Lcom/google/android/finsky/layout/DecoratedTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    .line 103
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_18
        :pswitch_1c
    .end packed-switch
.end method

.method private setDrawable(I)V
    .registers 4
    .parameter "drawable"

    .prologue
    const/4 v1, 0x0

    .line 114
    iget v0, p0, Lcom/google/android/finsky/layout/DecoratedTextView;->mDecorationPosition:I

    packed-switch v0, :pswitch_data_10

    .line 122
    :goto_6
    return-void

    .line 116
    :pswitch_7
    invoke-virtual {p0, p1, v1, v1, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_6

    .line 119
    :pswitch_b
    invoke-virtual {p0, v1, v1, p1, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_6

    .line 114
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public loadDecoration(I)V
    .registers 2
    .parameter "decorationResourceId"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/DecoratedTextView;->setDrawable(I)V

    .line 67
    return-void
.end method

.method public loadDecoration(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;I)V
    .registers 12
    .parameter "bitmapLoader"
    .parameter "imageUrl"
    .parameter "imageDimension"

    .prologue
    .line 56
    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v3, p0

    move v4, p3

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v6

    .line 59
    .local v6, container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 60
    .local v7, loadedBitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_13

    .line 61
    invoke-direct {p0, v7}, Lcom/google/android/finsky/layout/DecoratedTextView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 63
    :cond_13
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    const/high16 v1, 0x3f80

    .line 140
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 142
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/DecoratedTextView;->mDrawBorder:Z

    if-eqz v0, :cond_1e

    .line 143
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DecoratedTextView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DecoratedTextView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/android/finsky/layout/DecoratedTextView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 145
    :cond_1e
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .registers 3
    .parameter "bitmapContainer"

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    .local v0, response:Landroid/graphics/Bitmap;
    if-nez v0, :cond_7

    .line 84
    :goto_6
    return-void

    .line 83
    :cond_7
    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/DecoratedTextView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DecoratedTextView;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method

.method public setContentColorId(IZ)V
    .registers 5
    .parameter "contentColorId"
    .parameter "drawBorder"

    .prologue
    .line 125
    iget-boolean v1, p0, Lcom/google/android/finsky/layout/DecoratedTextView;->mUseWhitescale:Z

    if-eqz v1, :cond_7

    .line 126
    const p1, 0x7f0a0002

    .line 128
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DecoratedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 130
    .local v0, color:I
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DecoratedTextView;->setTextColor(I)V

    .line 131
    iput-boolean p2, p0, Lcom/google/android/finsky/layout/DecoratedTextView;->mDrawBorder:Z

    .line 132
    iget-boolean v1, p0, Lcom/google/android/finsky/layout/DecoratedTextView;->mDrawBorder:Z

    if-eqz v1, :cond_1d

    .line 133
    iget-object v1, p0, Lcom/google/android/finsky/layout/DecoratedTextView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DecoratedTextView;->invalidate()V

    .line 136
    return-void
.end method

.method public useWhitescale()Z
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/DecoratedTextView;->mUseWhitescale:Z

    return v0
.end method
