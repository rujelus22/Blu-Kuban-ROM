.class public Lcom/google/android/apps/books/widget/AtlasRenderer;
.super Ljava/lang/Object;
.source "AtlasRenderer.java"


# instance fields
.field private mAntiAliasPaint:Landroid/graphics/Paint;

.field private mAtlasCoverRect:Landroid/graphics/Rect;

.field private mAtlasSampleFrontRect:Landroid/graphics/Rect;

.field private mAtlasSampleSpineRect:Landroid/graphics/Rect;

.field private mAtlasSpineBackEdge:Landroid/graphics/Rect;

.field private mBasisBitmap:Landroid/graphics/Bitmap;

.field private mBasisRect:Landroid/graphics/Rect;

.field private mDimPaint:Landroid/graphics/Paint;

.field private mEdgePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mSampleBackgroundPaint:Landroid/graphics/Paint;

.field private final mSampleBitmap:Landroid/graphics/Bitmap;

.field private final mSampleCanvas:Landroid/graphics/Canvas;

.field private final mSampleRect:Landroid/graphics/Rect;

.field private mSampleTextPaint:Landroid/graphics/Paint;

.field private mSampleTextString:Ljava/lang/String;

.field final mScaleFactors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/opengl/common/Float2;",
            ">;"
        }
    .end annotation
.end field

.field private mShadowRect:Landroid/graphics/Rect;

.field private mSliverBackEdge:Landroid/graphics/Rect;

.field private mSliverRect:Landroid/graphics/Rect;

.field private mSpineRect:Landroid/graphics/Rect;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;II)V
    .registers 14
    .parameter "res"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x6

    const/4 v8, -0x1

    const/16 v7, 0xff

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x17c

    const/16 v1, 0x38

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleBitmap:Landroid/graphics/Bitmap;

    .line 46
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleCanvas:Landroid/graphics/Canvas;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x17c

    const/16 v2, 0x38

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleRect:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mScaleFactors:Ljava/util/Map;

    .line 62
    iput p2, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    .line 63
    iput p3, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    iget v2, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mBasisRect:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAtlasCoverRect:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    add-int/lit8 v1, v1, -0x1c

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v6, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAtlasSampleFrontRect:Landroid/graphics/Rect;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    add-int/lit8 v2, v2, -0x1c

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    mul-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    iget v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAtlasSampleSpineRect:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v5, v5, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSliverRect:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x7

    invoke-direct {v0, v9, v5, v1, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSliverBackEdge:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    mul-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    iget v3, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v1, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSpineRect:Landroid/graphics/Rect;

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    invoke-direct {v0, v1, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAtlasSpineBackEdge:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    mul-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    iget v3, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    mul-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    invoke-direct {v0, v1, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mShadowRect:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAntiAliasPaint:Landroid/graphics/Paint;

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAntiAliasPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mEdgePaint:Landroid/graphics/Paint;

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mEdgePaint:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mDimPaint:Landroid/graphics/Paint;

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mDimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mDimPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-static {}, Lcom/google/android/apps/books/widget/AtlasRenderer;->buildDimMatrix()Landroid/graphics/ColorMatrix;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleBackgroundPaint:Landroid/graphics/Paint;

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleBackgroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleTextPaint:Landroid/graphics/Paint;

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleTextPaint:Landroid/graphics/Paint;

    const v1, 0x7f0a0004

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleTextPaint:Landroid/graphics/Paint;

    const/16 v1, 0x99

    invoke-virtual {v0, v1, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 99
    const v0, 0x7f0e005a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleTextString:Ljava/lang/String;

    .line 101
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/AtlasRenderer;->renderBasisBitmap(Landroid/content/res/Resources;)V

    .line 102
    return-void
.end method

.method private static buildDimMatrix()Landroid/graphics/ColorMatrix;
    .registers 5

    .prologue
    const v4, 0x3e99999a

    .line 214
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 215
    .local v0, desat:Landroid/graphics/ColorMatrix;
    const v3, 0x3e4ccccd

    invoke-virtual {v0, v3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 217
    const v2, 0x3e99999a

    .line 218
    .local v2, fractionLight:F
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 219
    .local v1, dim:Landroid/graphics/ColorMatrix;
    const/high16 v3, 0x3f80

    invoke-virtual {v1, v4, v4, v4, v3}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 221
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 222
    return-object v0
.end method

.method private calculateScaleFactor(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 9
    .parameter "cover"
    .parameter "volumeId"

    .prologue
    const/high16 v5, 0x3f80

    .line 168
    if-nez p2, :cond_5

    .line 181
    :goto_4
    return-void

    .line 170
    :cond_5
    new-instance v1, Lcom/google/android/opengl/common/Float2;

    invoke-direct {v1, v5, v5}, Lcom/google/android/opengl/common/Float2;-><init>(FF)V

    .line 172
    .local v1, scale:Lcom/google/android/opengl/common/Float2;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 173
    .local v0, aspectRatio:F
    const v3, 0x3f3d1942

    div-float/2addr v3, v0

    iput v3, v1, Lcom/google/android/opengl/common/Float2;->y:F

    .line 174
    iget v3, v1, Lcom/google/android/opengl/common/Float2;->y:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_30

    .line 176
    iget v3, v1, Lcom/google/android/opengl/common/Float2;->y:F

    div-float v2, v5, v3

    .line 177
    .local v2, scaleFactor:F
    iget v3, v1, Lcom/google/android/opengl/common/Float2;->x:F

    mul-float/2addr v3, v2

    iput v3, v1, Lcom/google/android/opengl/common/Float2;->x:F

    .line 178
    iget v3, v1, Lcom/google/android/opengl/common/Float2;->y:F

    mul-float/2addr v3, v2

    iput v3, v1, Lcom/google/android/opengl/common/Float2;->y:F

    .line 180
    .end local v2           #scaleFactor:F
    :cond_30
    iget-object v3, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mScaleFactors:Ljava/util/Map;

    invoke-interface {v3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method private drawSampleText(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 13
    .parameter "canvas"
    .parameter "cover"
    .parameter "volumnId"

    .prologue
    const/4 v7, 0x0

    .line 184
    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 185
    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mScaleFactors:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/opengl/common/Float2;

    .line 190
    .local v3, scale:Lcom/google/android/opengl/common/Float2;
    const/high16 v4, 0x43be

    iget v5, v3, Lcom/google/android/opengl/common/Float2;->x:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 191
    .local v2, sampleWidth:I
    iget v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    const/high16 v5, 0x41e0

    iget v6, v3, Lcom/google/android/opengl/common/Float2;->y:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v0, v4

    .line 192
    .local v0, sampleHeight:I
    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleCanvas:Landroid/graphics/Canvas;

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x38

    invoke-direct {v5, v7, v7, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v6, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 194
    const/high16 v4, 0x4260

    iget-object v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    rsub-int/lit8 v4, v4, 0x38

    add-int/lit8 v1, v4, -0x2

    .line 197
    .local v1, sampleTextVerticalOrigin:I
    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleTextString:Ljava/lang/String;

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    int-to-float v7, v1

    iget-object v8, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 203
    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 204
    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAtlasSampleFrontRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 205
    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAtlasSampleFrontRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 209
    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAtlasSampleSpineRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 210
    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAtlasSampleSpineRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 211
    return-void
.end method

.method private renderBasisBitmap(Landroid/content/res/Resources;)V
    .registers 12
    .parameter "res"

    .prologue
    const/4 v9, 0x0

    .line 105
    iget v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    iget v6, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mBasisBitmap:Landroid/graphics/Bitmap;

    .line 106
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mBasisBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 108
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 109
    .local v0, bitmapOptionsARGB:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 110
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 113
    const v5, 0x7f02000d

    invoke-static {p1, v5, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 115
    .local v4, shadowBitmap:Landroid/graphics/Bitmap;
    const v5, 0x7f02006f

    invoke-static {p1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 119
    .local v2, pageEdgeBitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mShadowRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAntiAliasPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v9, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 122
    new-instance v3, Landroid/graphics/Rect;

    iget v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    mul-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    mul-int/lit8 v6, v6, 0x7

    div-int/lit8 v6, v6, 0x8

    iget v7, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 123
    .local v3, pageEdgeRect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAntiAliasPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v9, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 124
    return-void
.end method


# virtual methods
.method public render(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZZLjava/lang/String;)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "cover"
    .parameter "spine"
    .parameter "dimmed"
    .parameter "sample"
    .parameter "volumeId"

    .prologue
    const/4 v6, 0x0

    .line 129
    iget v3, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    iget v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    .local v0, atlas:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 133
    .local v1, canvas:Landroid/graphics/Canvas;
    if-eqz p3, :cond_4b

    iget-object v2, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mDimPaint:Landroid/graphics/Paint;

    .line 136
    .local v2, paint:Landroid/graphics/Paint;
    :goto_14
    iget-object v3, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mBasisBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mBasisRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v6, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 137
    iget-object v3, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAtlasCoverRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v6, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 139
    invoke-direct {p0, p1, p5}, Lcom/google/android/apps/books/widget/AtlasRenderer;->calculateScaleFactor(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 143
    if-nez p2, :cond_4e

    .line 144
    iget-object v3, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSliverRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 145
    iget-object v3, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSliverBackEdge:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 146
    iget-object v3, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSliverRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSpineRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 147
    iget-object v3, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSliverBackEdge:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAtlasSpineBackEdge:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 153
    :goto_45
    if-eqz p4, :cond_4a

    .line 154
    invoke-direct {p0, v1, p1, p5}, Lcom/google/android/apps/books/widget/AtlasRenderer;->drawSampleText(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 157
    :cond_4a
    return-object v0

    .line 133
    .end local v2           #paint:Landroid/graphics/Paint;
    :cond_4b
    iget-object v2, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAntiAliasPaint:Landroid/graphics/Paint;

    goto :goto_14

    .line 149
    .restart local v2       #paint:Landroid/graphics/Paint;
    :cond_4e
    const-string v3, "AtlasRenderer"

    const-string v4, "AtlasRenderer.render(): Non-null spine not yet implemented"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method
