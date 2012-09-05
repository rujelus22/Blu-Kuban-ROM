.class public Lcom/google/android/apps/books/widget/BooksCarouselView;
.super Lcom/google/android/opengl/carousel/CarouselView;
.source "BooksCarouselView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/widget/BooksCarouselView$1;,
        Lcom/google/android/apps/books/widget/BooksCarouselView$BookCardRenderer;,
        Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;
    }
.end annotation


# instance fields
.field private final mCardSlots:I

.field private final mCoverCache:Lcom/google/android/apps/books/util/GenerationCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/util/GenerationCache",
            "<",
            "Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterpolationMode:I

.field private final mVisibleSlots:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 178
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/books/widget/BooksCarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/books/widget/BooksCarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 186
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v6, Lcom/google/android/apps/books/util/GenerationCache;

    const/16 v7, 0x18

    invoke-direct {v6, v7}, Lcom/google/android/apps/books/util/GenerationCache;-><init>(I)V

    iput-object v6, p0, Lcom/google/android/apps/books/widget/BooksCarouselView;->mCoverCache:Lcom/google/android/apps/books/util/GenerationCache;

    .line 258
    const/4 v6, 0x1

    iput v6, p0, Lcom/google/android/apps/books/widget/BooksCarouselView;->mInterpolationMode:I

    .line 188
    const/4 v6, 0x0

    sget-object v7, Lcom/google/android/apps/books/R$styleable;->Theme:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 189
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 191
    .local v2, carouselBackground:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 192
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 196
    .local v4, resources:Landroid/content/res/Resources;
    const v6, 0x7f0a0009

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setRadius(F)V

    .line 197
    const/4 v6, 0x7

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setPrefetchCardCount(I)V

    .line 198
    const/16 v6, 0x102

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setDetailTextureAlignment(I)V

    .line 200
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setDrawRuler(Z)V

    .line 201
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setSwaySensitivity(F)V

    .line 202
    const/high16 v6, 0x41a0

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setFrictionCoefficient(F)V

    .line 203
    const/high16 v6, -0x40c0

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setDragFactor(F)V

    .line 204
    const v6, -0x4036f025

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setCardRotation(F)V

    .line 205
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setCardsFaceTangent(Z)V

    .line 206
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setDragModel(I)V

    .line 207
    const-wide/16 v6, 0x64

    invoke-virtual {p0, v6, v7}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setFadeInDuration(J)V

    .line 208
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setFillDirection(I)V

    .line 210
    const/4 v6, 0x1

    const v7, 0x7f090002

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/google/android/apps/books/widget/BooksCarouselView;->mCardSlots:I

    .line 211
    iget v6, p0, Lcom/google/android/apps/books/widget/BooksCarouselView;->mCardSlots:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setSlotCount(I)V

    .line 212
    const v6, 0x41c90fdb

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setVelocityUpLimit(F)V

    .line 214
    const/4 v6, 0x3

    new-array v3, v6, [F

    const/4 v6, 0x0

    const v7, 0x7f0a0006

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    aput v7, v3, v6

    const/4 v6, 0x1

    const v7, 0x7f0a0007

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    aput v7, v3, v6

    const/4 v6, 0x2

    const v7, 0x7f0a0008

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    aput v7, v3, v6

    .line 218
    .local v3, eye:[F
    const/high16 v6, 0x7f09

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setRowCount(I)V

    .line 219
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setFirstCardTop(Z)V

    .line 221
    const/high16 v6, 0x3fa0

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setCardGlowScale(F)V

    .line 223
    const v6, 0x7f090001

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/google/android/apps/books/widget/BooksCarouselView;->mVisibleSlots:I

    .line 224
    const v6, 0x7f0a0005

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setRowSpacing(F)V

    .line 226
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_f9

    .line 228
    const/4 v6, 0x3

    new-array v1, v6, [F

    fill-array-data v1, :array_10a

    .line 229
    .local v1, at:[F
    const/4 v6, 0x3

    new-array v5, v6, [F

    fill-array-data v5, :array_114

    .line 230
    .local v5, up:[F
    invoke-virtual {p0, v3, v1, v5}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setLookAt([F[F[F)V

    .line 238
    :goto_e0
    iget v6, p0, Lcom/google/android/apps/books/widget/BooksCarouselView;->mVisibleSlots:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setVisibleDetails(I)V

    .line 239
    iget v6, p0, Lcom/google/android/apps/books/widget/BooksCarouselView;->mVisibleSlots:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setVisibleSlots(I)V

    .line 240
    new-instance v6, Lcom/google/android/apps/books/widget/BooksCarouselView$BookCardRenderer;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/google/android/apps/books/widget/BooksCarouselView$BookCardRenderer;-><init>(Lcom/google/android/apps/books/widget/BooksCarouselView;Lcom/google/android/apps/books/widget/BooksCarouselView$1;)V

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setCardRenderer(Lcom/google/android/opengl/carousel/ICardRenderer;)V

    .line 241
    const/high16 v6, 0x41d0

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setCameraFov(F)V

    .line 244
    return-void

    .line 232
    .end local v1           #at:[F
    .end local v5           #up:[F
    :cond_f9
    const/4 v6, 0x3

    new-array v1, v6, [F

    fill-array-data v1, :array_11e

    .line 233
    .restart local v1       #at:[F
    const/4 v6, 0x3

    new-array v5, v6, [F

    fill-array-data v5, :array_128

    .line 234
    .restart local v5       #up:[F
    invoke-virtual {p0, v3, v1, v5}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setLookAt([F[F[F)V

    goto :goto_e0

    .line 228
    nop

    :array_10a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x20t 0xc1t
    .end array-data

    .line 229
    :array_114
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 232
    :array_11e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x20t 0xc1t
    .end array-data

    .line 233
    :array_128
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private configureStartAngle(I)V
    .registers 8
    .parameter "numBooks"

    .prologue
    .line 309
    const v2, 0x40c90fdb

    iget v3, p0, Lcom/google/android/apps/books/widget/BooksCarouselView;->mCardSlots:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 313
    .local v0, slotSectorAngle:F
    iget v2, p0, Lcom/google/android/apps/books/widget/BooksCarouselView;->mVisibleSlots:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 314
    .local v1, startOffset:I
    const-wide v2, 0x3ff921fb54442d18L

    const/high16 v4, -0x4080

    int-to-float v5, v1

    mul-float/2addr v4, v5

    mul-float/2addr v4, v0

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    float-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setStartAngle(F)V

    .line 316
    return-void
.end method


# virtual methods
.method public cacheCover(Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "key"
    .parameter "bitmap"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselView;->mCoverCache:Lcom/google/android/apps/books/util/GenerationCache;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/books/util/GenerationCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method public clearCoverCache()V
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselView;->mCoverCache:Lcom/google/android/apps/books/util/GenerationCache;

    invoke-virtual {v0}, Lcom/google/android/apps/books/util/GenerationCache;->clear()V

    .line 299
    return-void
.end method

.method public createCards(I)V
    .registers 3
    .parameter "n"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/BooksCarouselView;->configureStartAngle(I)V

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setCarouselRotationAngle(F)V

    .line 255
    invoke-super {p0, p1}, Lcom/google/android/opengl/carousel/CarouselView;->createCards(I)V

    .line 256
    return-void
.end method

.method public interpretLongPressEvents()Z
    .registers 2

    .prologue
    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public lookupCover(Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "key"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselView;->mCoverCache:Lcom/google/android/apps/books/util/GenerationCache;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/util/GenerationCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public rotateCarouselBackToOrigin()V
    .registers 5

    .prologue
    .line 261
    const/4 v0, 0x0

    const/16 v1, 0x2ee

    const/4 v2, 0x1

    const/high16 v3, 0x4130

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setCarouselRotationAngle(FIIF)V

    .line 262
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 323
    const-wide/16 v0, 0x32

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    .line 326
    :goto_5
    return-void

    .line 324
    :catch_6
    move-exception v0

    goto :goto_5
.end method
