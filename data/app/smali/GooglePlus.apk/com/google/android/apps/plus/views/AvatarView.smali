.class public Lcom/google/android/apps/plus/views/AvatarView;
.super Landroid/view/View;
.source "AvatarView.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;
.implements Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;


# static fields
.field private static sBoundsRect:Landroid/graphics/RectF;

.field private static sImageSelectedPaint:Landroid/graphics/Paint;


# instance fields
.field private mAllowNonSquare:Z

.field private mAvatarBitmap:Landroid/graphics/Bitmap;

.field private final mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

.field private mAvatarInvalidated:Z

.field private mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

.field private mAvatarSize:I

.field private mDimmed:Z

.field private mGaiaId:Ljava/lang/String;

.field private mResizePaint:Landroid/graphics/Paint;

.field private mResizeRectDest:Landroid/graphics/Rect;

.field private mResizeRectSrc:Landroid/graphics/Rect;

.field private mResizeRequired:Z

.field private mRound:Z

.field private mScale:Z

.field private mSelector:Landroid/graphics/drawable/Drawable;

.field private mSizeInPixels:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/AvatarView;->sBoundsRect:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/AvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/AvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    .local v0, resources:Landroid/content/res/Resources;
    sget-object v4, Lcom/google/android/apps/plus/views/AvatarView;->sImageSelectedPaint:Landroid/graphics/Paint;

    if-nez v4, :cond_33

    .line 71
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    sput-object v4, Lcom/google/android/apps/plus/views/AvatarView;->sImageSelectedPaint:Landroid/graphics/Paint;

    .line 72
    sget-object v4, Lcom/google/android/apps/plus/views/AvatarView;->sImageSelectedPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    sget-object v4, Lcom/google/android/apps/plus/views/AvatarView;->sImageSelectedPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x4080

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    sget-object v4, Lcom/google/android/apps/plus/views/AvatarView;->sImageSelectedPaint:Landroid/graphics/Paint;

    const v5, 0x7f0a003c

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    sget-object v4, Lcom/google/android/apps/plus/views/AvatarView;->sImageSelectedPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    :cond_33
    const v4, 0x7f02021f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 79
    iget-object v4, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 81
    invoke-static {p1}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 83
    if-eqz p2, :cond_8a

    .line 84
    const-string v4, "size"

    invoke-interface {p2, v6, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, size:Ljava/lang/String;
    if-nez v3, :cond_59

    .line 86
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Missing \'size\' attribute"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 89
    :cond_59
    const-string v4, "round"

    invoke-interface {p2, v6, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, round:Ljava/lang/String;
    if-eqz v1, :cond_67

    .line 91
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/apps/plus/views/AvatarView;->mRound:Z

    .line 94
    :cond_67
    const-string v4, "scale"

    invoke-interface {p2, v6, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, scale:Ljava/lang/String;
    if-eqz v2, :cond_75

    .line 96
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/apps/plus/views/AvatarView;->mScale:Z

    .line 99
    :cond_75
    invoke-static {v3}, Lcom/google/android/apps/plus/content/AvatarRequest;->sizeFromString(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarSize:I

    .line 100
    const-string v4, "allowNonSquare"

    const/4 v5, 0x0

    invoke-interface {p2, v6, v4, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAllowNonSquare:Z

    .line 106
    .end local v1           #round:Ljava/lang/String;
    .end local v2           #scale:Ljava/lang/String;
    .end local v3           #size:Ljava/lang/String;
    :goto_84
    iget v4, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarSize:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/views/AvatarView;->setAvatarSize(I)V

    .line 107
    return-void

    .line 103
    :cond_8a
    const/4 v4, 0x2

    iput v4, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarSize:I

    goto :goto_84
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 324
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->invalidate()V

    .line 326
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 327
    return-void
.end method

.method public getGaiaId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mGaiaId:Ljava/lang/String;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 181
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->registerAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 183
    return-void
.end method

.method public onAvatarChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "gaiaId"

    .prologue
    .line 199
    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mGaiaId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    if-eqz v0, :cond_18

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarInvalidated:Z

    .line 201
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->invalidate()V

    .line 203
    :cond_18
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 190
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 191
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->unregisterAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 192
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 334
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarInvalidated:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    if-eqz v1, :cond_13

    .line 335
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarInvalidated:Z

    .line 336
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/ImageCache;->refreshImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 339
    :cond_13
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_49

    .line 340
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mDimmed:Z

    if-eqz v1, :cond_33

    .line 341
    sget-object v1, Lcom/google/android/apps/plus/views/AvatarView;->sBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 342
    sget-object v1, Lcom/google/android/apps/plus/views/AvatarView;->sBoundsRect:Landroid/graphics/RectF;

    const/16 v2, 0x69

    const/16 v3, 0x1f

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 344
    :cond_33
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mResizeRequired:Z

    if-eqz v1, :cond_70

    .line 345
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/AvatarView;->mResizeRectSrc:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/AvatarView;->mResizeRectDest:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/AvatarView;->mResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 350
    :goto_42
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mDimmed:Z

    if-eqz v1, :cond_49

    .line 351
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 355
    :cond_49
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_6f

    :cond_55
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mDimmed:Z

    if-nez v1, :cond_6f

    .line 356
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mRound:Z

    if-eqz v1, :cond_77

    .line 357
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->getWidth()I

    move-result v0

    .line 358
    .local v0, radius:I
    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    sget-object v4, Lcom/google/android/apps/plus/views/AvatarView;->sImageSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 363
    .end local v0           #radius:I
    :cond_6f
    :goto_6f
    return-void

    .line 348
    :cond_70
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_42

    .line 360
    :cond_77
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_6f
.end method

.method protected onLayout(ZIIII)V
    .registers 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 267
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 268
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mRound:Z

    if-nez v0, :cond_11

    .line 269
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSelector:Landroid/graphics/drawable/Drawable;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 271
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_20

    .line 272
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    if-eqz v0, :cond_21

    .line 273
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/ImageCache;->loadImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 278
    :cond_20
    :goto_20
    return-void

    .line 275
    :cond_21
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/views/AvatarView;->setBitmap(Landroid/graphics/Bitmap;Z)V

    goto :goto_20
.end method

.method protected onMeasure(II)V
    .registers 15
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v11, -0x8000

    const/high16 v10, 0x4000

    const/4 v9, 0x0

    .line 210
    iget v2, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSizeInPixels:I

    .line 211
    .local v2, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 213
    .local v3, widthMode:I
    if-ne v3, v10, :cond_66

    .line 214
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 219
    :cond_11
    :goto_11
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 221
    .local v1, heightMode:I
    iget-boolean v8, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAllowNonSquare:Z

    if-eqz v8, :cond_71

    .line 222
    iget v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSizeInPixels:I

    .line 223
    .local v0, height:I
    if-eq v1, v10, :cond_1f

    if-ne v1, v11, :cond_27

    .line 224
    :cond_1f
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 235
    :cond_27
    :goto_27
    iget v8, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSizeInPixels:I

    if-eq v2, v8, :cond_83

    const/4 v8, 0x1

    :goto_2c
    iput-boolean v8, p0, Lcom/google/android/apps/plus/views/AvatarView;->mResizeRequired:Z

    .line 236
    iget-boolean v8, p0, Lcom/google/android/apps/plus/views/AvatarView;->mResizeRequired:Z

    if-eqz v8, :cond_62

    .line 237
    iget-object v8, p0, Lcom/google/android/apps/plus/views/AvatarView;->mResizePaint:Landroid/graphics/Paint;

    if-nez v8, :cond_45

    .line 238
    new-instance v8, Landroid/graphics/Paint;

    const/4 v10, 0x2

    invoke-direct {v8, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/google/android/apps/plus/views/AvatarView;->mResizePaint:Landroid/graphics/Paint;

    .line 239
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/google/android/apps/plus/views/AvatarView;->mResizeRectDest:Landroid/graphics/Rect;

    .line 242
    :cond_45
    iget-object v8, p0, Lcom/google/android/apps/plus/views/AvatarView;->mResizeRectDest:Landroid/graphics/Rect;

    invoke-virtual {v8, v9, v9, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 243
    iget v8, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSizeInPixels:I

    if-le v8, v2, :cond_9f

    .line 244
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/google/android/apps/plus/views/AvatarView;->mResizeRectSrc:Landroid/graphics/Rect;

    .line 245
    iget-boolean v8, p0, Lcom/google/android/apps/plus/views/AvatarView;->mScale:Z

    if-eqz v8, :cond_85

    .line 246
    iget-object v8, p0, Lcom/google/android/apps/plus/views/AvatarView;->mResizeRectSrc:Landroid/graphics/Rect;

    iget v10, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSizeInPixels:I

    iget v11, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSizeInPixels:I

    invoke-virtual {v8, v9, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 259
    :cond_62
    :goto_62
    invoke-virtual {p0, v2, v0}, Lcom/google/android/apps/plus/views/AvatarView;->setMeasuredDimension(II)V

    .line 260
    return-void

    .line 215
    .end local v0           #height:I
    .end local v1           #heightMode:I
    :cond_66
    if-ne v3, v11, :cond_11

    .line 216
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_11

    .line 228
    .restart local v1       #heightMode:I
    :cond_71
    if-ne v1, v10, :cond_7c

    .line 229
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .restart local v0       #height:I
    goto :goto_27

    .line 231
    .end local v0           #height:I
    :cond_7c
    iget v8, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSizeInPixels:I

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .restart local v0       #height:I
    goto :goto_27

    :cond_83
    move v8, v9

    .line 235
    goto :goto_2c

    .line 248
    :cond_85
    iget v8, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSizeInPixels:I

    sub-int/2addr v8, v2

    div-int/lit8 v4, v8, 0x2

    .line 249
    .local v4, xLeft:I
    iget v8, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSizeInPixels:I

    add-int/2addr v8, v2

    div-int/lit8 v5, v8, 0x2

    .line 250
    .local v5, xRight:I
    iget v8, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSizeInPixels:I

    sub-int/2addr v8, v0

    div-int/lit8 v7, v8, 0x2

    .line 251
    .local v7, yTop:I
    iget v8, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSizeInPixels:I

    add-int/2addr v8, v0

    div-int/lit8 v6, v8, 0x2

    .line 252
    .local v6, yBottom:I
    iget-object v8, p0, Lcom/google/android/apps/plus/views/AvatarView;->mResizeRectSrc:Landroid/graphics/Rect;

    invoke-virtual {v8, v4, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_62

    .line 255
    .end local v4           #xLeft:I
    .end local v5           #xRight:I
    .end local v6           #yBottom:I
    .end local v7           #yTop:I
    :cond_9f
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/google/android/apps/plus/views/AvatarView;->mResizeRectSrc:Landroid/graphics/Rect;

    goto :goto_62
.end method

.method public setAvatarSize(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 119
    iput p1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarSize:I

    .line 120
    iget v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarSize:I

    packed-switch v0, :pswitch_data_28

    .line 131
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumAvatarSize(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSizeInPixels:I

    .line 134
    :goto_11
    return-void

    .line 122
    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getTinyAvatarSize(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSizeInPixels:I

    goto :goto_11

    .line 126
    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallAvatarSize(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSizeInPixels:I

    goto :goto_11

    .line 120
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1d
    .end packed-switch
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 5
    .parameter "bitmap"
    .parameter "loading"

    .prologue
    .line 285
    if-nez p1, :cond_32

    .line 286
    iget v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarSize:I

    packed-switch v0, :pswitch_data_36

    .line 303
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->invalidate()V

    .line 304
    return-void

    .line 288
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mRound:Z

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getTinyDefaultAvatar(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    goto :goto_7

    .line 292
    :pswitch_18
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mRound:Z

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallDefaultAvatar(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    goto :goto_7

    .line 296
    :pswitch_25
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mRound:Z

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumDefaultAvatar(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    goto :goto_7

    .line 300
    :cond_32
    iput-object p1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    goto :goto_7

    .line 286
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_b
        :pswitch_18
        :pswitch_25
    .end packed-switch
.end method

.method public setDimmed(Z)V
    .registers 2
    .parameter "dimmed"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mDimmed:Z

    .line 173
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->invalidate()V

    .line 174
    return-void
.end method

.method public setGaiaId(Ljava/lang/String;)V
    .registers 6
    .parameter "gaiaId"

    .prologue
    const/4 v3, 0x0

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mGaiaId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 145
    iput-object p1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mGaiaId:Ljava/lang/String;

    .line 146
    if-eqz p1, :cond_1e

    .line 147
    new-instance v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    iget v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarSize:I

    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/AvatarView;->mRound:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 151
    :goto_18
    iput-object v3, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    .line 152
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->requestLayout()V

    .line 154
    :cond_1d
    return-void

    .line 149
    :cond_1e
    iput-object v3, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    goto :goto_18
.end method

.method public setRounded(Z)V
    .registers 2
    .parameter "rounded"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mRound:Z

    .line 111
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_6

    .line 313
    const/4 v0, 0x1

    .line 315
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    goto :goto_5
.end method
