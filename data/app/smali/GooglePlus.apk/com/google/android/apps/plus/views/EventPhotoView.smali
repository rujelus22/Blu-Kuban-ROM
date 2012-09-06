.class public Lcom/google/android/apps/plus/views/EventPhotoView;
.super Lcom/google/android/apps/plus/views/EsImageView;
.source "EventPhotoView.java"


# static fields
.field private static sCommentCountPaint:Landroid/text/TextPaint;

.field private static sCommentImage:Landroid/graphics/Bitmap;

.field private static sInfoHeight:I

.field private static sInfoInnerPadding:I

.field private static sInfoPaint:Landroid/graphics/Paint;

.field private static sInfoRightMargin:I

.field private static sInitialized:Z

.field private static sMinVisibleImageHeight:I

.field private static sNoImageImage:Landroid/graphics/Bitmap;

.field private static sPlusOneCountPaint:Landroid/text/TextPaint;

.field private static sPlusOneImage:Landroid/graphics/Bitmap;


# instance fields
.field private mCommentCount:Ljava/lang/String;

.field private mCommentCountXPos:I

.field private mCommentCountYPos:F

.field private mCommentIconXPos:I

.field private mCommentIconYPos:F

.field private mImageHeight:I

.field private mImageLoaded:Z

.field private mImageRequested:Z

.field private mImageUrl:Ljava/lang/String;

.field private mImageWidth:I

.field private mMaxHeight:I

.field private mPlusOneCount:Ljava/lang/String;

.field private mPlusOneCountXPos:I

.field private mPlusOneCountYPos:F

.field private mPlusOneIconXPos:I

.field private mPlusOneIconYPos:F

.field private mPreferredImageHeight:I

.field private mPreferredImageWidth:I

.field private mShowInfo:Z

.field private mShowNoImage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/EsImageView;-><init>(Landroid/content/Context;)V

    .line 87
    sget-boolean v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sInitialized:Z

    if-nez v0, :cond_11

    .line 88
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventPhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/views/EventPhotoView;->initialize(Landroid/content/res/Resources;)V

    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sInitialized:Z

    .line 76
    :cond_11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/EsImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    sget-boolean v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sInitialized:Z

    if-nez v0, :cond_11

    .line 88
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventPhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/views/EventPhotoView;->initialize(Landroid/content/res/Resources;)V

    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sInitialized:Z

    .line 80
    :cond_11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/EsImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    sget-boolean v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sInitialized:Z

    if-nez v0, :cond_11

    .line 88
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventPhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/views/EventPhotoView;->initialize(Landroid/content/res/Resources;)V

    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sInitialized:Z

    .line 84
    :cond_11
    return-void
.end method

.method private drawInfo(Landroid/graphics/Canvas;)V
    .registers 13
    .parameter "canvas"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 330
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventPhotoView;->getWidth()I

    move-result v8

    .line 331
    .local v8, width:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventPhotoView;->getHeight()I

    move-result v7

    .line 333
    .local v7, height:I
    const/4 v1, 0x0

    sget v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sInfoHeight:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    int-to-float v3, v8

    int-to-float v4, v7

    sget-object v5, Lcom/google/android/apps/plus/views/EventPhotoView;->sInfoPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 335
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPlusOneCount:Ljava/lang/String;

    if-eqz v0, :cond_3a

    .line 336
    sget-object v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sPlusOneImage:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPlusOneIconXPos:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPlusOneIconYPos:F

    invoke-virtual {p1, v0, v1, v2, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 337
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPlusOneCount:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPlusOneCount:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v0, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPlusOneCountXPos:I

    int-to-float v4, v0

    iget v5, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPlusOneCountYPos:F

    sget-object v6, Lcom/google/android/apps/plus/views/EventPhotoView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    move-object v0, p1

    move v2, v9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 341
    :cond_3a
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mCommentCount:Ljava/lang/String;

    if-eqz v0, :cond_5c

    .line 342
    sget-object v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sCommentImage:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mCommentIconXPos:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mCommentIconYPos:F

    invoke-virtual {p1, v0, v1, v2, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 343
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mCommentCount:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mCommentCount:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v0, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mCommentCountXPos:I

    int-to-float v4, v0

    iget v5, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mCommentCountYPos:F

    sget-object v6, Lcom/google/android/apps/plus/views/EventPhotoView;->sCommentCountPaint:Landroid/text/TextPaint;

    move-object v0, p1

    move v2, v9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 346
    :cond_5c
    return-void
.end method

.method private static initialize(Landroid/content/res/Resources;)V
    .registers 6
    .parameter "res"

    .prologue
    const v4, 0x7f0d013b

    const v3, 0x7f0d013a

    const/4 v2, 0x1

    .line 97
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sCommentCountPaint:Landroid/text/TextPaint;

    .line 98
    sget-object v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 99
    sget-object v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sCommentCountPaint:Landroid/text/TextPaint;

    const v1, 0x7f0a008e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 100
    sget-object v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 102
    sget-object v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 105
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    .line 106
    sget-object v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 107
    sget-object v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    const v1, 0x7f0a008f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 108
    sget-object v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 110
    sget-object v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-static {v0, v4}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sInfoPaint:Landroid/graphics/Paint;

    .line 114
    sget-object v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sInfoPaint:Landroid/graphics/Paint;

    const v1, 0x7f0a008d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    sget-object v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sInfoPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    const v0, 0x7f0d0139

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sInfoInnerPadding:I

    .line 119
    const v0, 0x7f0d0138

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sInfoRightMargin:I

    .line 120
    const v0, 0x7f0d0137

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sInfoHeight:I

    .line 122
    sget v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sInfoHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3e80

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sMinVisibleImageHeight:I

    .line 124
    const v0, 0x7f0201dc

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sPlusOneImage:Landroid/graphics/Bitmap;

    .line 125
    const v0, 0x7f0201db

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sCommentImage:Landroid/graphics/Bitmap;

    .line 126
    const v0, 0x7f02012e

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/EventPhotoView;->sNoImageImage:Landroid/graphics/Bitmap;

    .line 127
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 319
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/EsImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 321
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mImageLoaded:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mShowInfo:Z

    if-eqz v0, :cond_e

    .line 322
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/EventPhotoView;->drawInfo(Landroid/graphics/Canvas;)V

    .line 324
    :cond_e
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 12
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 303
    invoke-super/range {p0 .. p5}, Lcom/google/android/apps/plus/views/EsImageView;->onLayout(ZIIII)V

    .line 304
    sub-int v0, p5, p3

    if-lez v0, :cond_2f

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mImageRequested:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mImageRequested:Z

    .line 307
    iget v0, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPreferredImageWidth:I

    const/16 v2, 0x640

    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mImageUrl:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/plus/util/ImageUtils;->getResizedUrl(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, imageUrl:Ljava/lang/String;
    new-instance v0, Lcom/google/android/apps/plus/content/MediaImageRequest;

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPreferredImageWidth:I

    iget v4, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPreferredImageHeight:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/content/MediaImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventPhotoView;->setRequest(Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 312
    .end local v1           #imageUrl:Ljava/lang/String;
    :cond_2f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v7, 0x1

    const/high16 v12, 0x4000

    const/4 v8, 0x0

    .line 204
    const/4 v3, 0x0

    .line 205
    .local v3, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 207
    .local v4, widthMode:I
    const/high16 v9, 0x4000

    if-ne v4, v9, :cond_e9

    .line 208
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 214
    :cond_11
    :goto_11
    iget v9, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mImageWidth:I

    if-eqz v9, :cond_19

    iget v9, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mImageHeight:I

    if-nez v9, :cond_f7

    .line 215
    :cond_19
    iput v3, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPreferredImageWidth:I

    .line 216
    iget v0, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mMaxHeight:I

    .line 230
    .local v0, height:I
    :cond_1d
    :goto_1d
    iput v0, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPreferredImageHeight:I

    .line 232
    iget-object v9, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mCommentCount:Ljava/lang/String;

    if-nez v9, :cond_27

    iget-object v9, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPlusOneCount:Ljava/lang/String;

    if-eqz v9, :cond_113

    .line 233
    :cond_27
    iput-boolean v7, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mShowInfo:Z

    .line 234
    sget v9, Lcom/google/android/apps/plus/views/EventPhotoView;->sMinVisibleImageHeight:I

    if-ge v0, v9, :cond_30

    .line 235
    sget v9, Lcom/google/android/apps/plus/views/EventPhotoView;->sInfoHeight:I

    add-int/2addr v0, v9

    .line 238
    :cond_30
    sget v9, Lcom/google/android/apps/plus/views/EventPhotoView;->sInfoHeight:I

    sub-int v6, v0, v9

    .line 239
    .local v6, yPos:I
    sget v9, Lcom/google/android/apps/plus/views/EventPhotoView;->sInfoRightMargin:I

    sub-int v5, v3, v9

    .line 241
    .local v5, xPos:I
    iget-object v9, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mCommentCount:Ljava/lang/String;

    if-eqz v9, :cond_8b

    .line 242
    sget v9, Lcom/google/android/apps/plus/views/EventPhotoView;->sInfoHeight:I

    sget-object v10, Lcom/google/android/apps/plus/views/EventPhotoView;->sCommentImage:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v6

    int-to-float v9, v9

    iput v9, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mCommentIconYPos:F

    .line 243
    sget-object v9, Lcom/google/android/apps/plus/views/EventPhotoView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->descent()F

    move-result v9

    sget-object v10, Lcom/google/android/apps/plus/views/EventPhotoView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->ascent()F

    move-result v10

    sub-float v2, v9, v10

    .line 244
    .local v2, textHeight:F
    int-to-float v9, v6

    sget v10, Lcom/google/android/apps/plus/views/EventPhotoView;->sInfoHeight:I

    int-to-float v10, v10

    sub-float/2addr v10, v2

    div-float/2addr v10, v12

    add-float/2addr v9, v10

    sget-object v10, Lcom/google/android/apps/plus/views/EventPhotoView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->ascent()F

    move-result v10

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mCommentCountYPos:F

    .line 247
    iget-object v9, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mCommentCount:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    .line 249
    .local v1, length:I
    int-to-float v9, v5

    sget-object v10, Lcom/google/android/apps/plus/views/EventPhotoView;->sCommentCountPaint:Landroid/text/TextPaint;

    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mCommentCount:Ljava/lang/String;

    invoke-virtual {v10, v11, v8, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-int v5, v9

    .line 250
    iput v5, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mCommentCountXPos:I

    .line 252
    sget-object v9, Lcom/google/android/apps/plus/views/EventPhotoView;->sCommentImage:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sget v10, Lcom/google/android/apps/plus/views/EventPhotoView;->sInfoInnerPadding:I

    add-int/2addr v9, v10

    sub-int/2addr v5, v9

    .line 253
    iput v5, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mCommentIconXPos:I

    .line 255
    sget v9, Lcom/google/android/apps/plus/views/EventPhotoView;->sInfoRightMargin:I

    sub-int/2addr v5, v9

    .line 259
    .end local v1           #length:I
    .end local v2           #textHeight:F
    :cond_8b
    iget-object v9, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPlusOneCount:Ljava/lang/String;

    if-eqz v9, :cond_db

    .line 260
    sget v9, Lcom/google/android/apps/plus/views/EventPhotoView;->sInfoHeight:I

    sget-object v10, Lcom/google/android/apps/plus/views/EventPhotoView;->sPlusOneImage:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v6

    int-to-float v9, v9

    iput v9, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPlusOneIconYPos:F

    .line 261
    sget-object v9, Lcom/google/android/apps/plus/views/EventPhotoView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->descent()F

    move-result v9

    sget-object v10, Lcom/google/android/apps/plus/views/EventPhotoView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->ascent()F

    move-result v10

    sub-float v2, v9, v10

    .line 262
    .restart local v2       #textHeight:F
    int-to-float v9, v6

    sget v10, Lcom/google/android/apps/plus/views/EventPhotoView;->sInfoHeight:I

    int-to-float v10, v10

    sub-float/2addr v10, v2

    div-float/2addr v10, v12

    add-float/2addr v9, v10

    sget-object v10, Lcom/google/android/apps/plus/views/EventPhotoView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->ascent()F

    move-result v10

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPlusOneCountYPos:F

    .line 265
    iget-object v9, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPlusOneCount:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    .line 267
    .restart local v1       #length:I
    int-to-float v9, v5

    sget-object v10, Lcom/google/android/apps/plus/views/EventPhotoView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    iget-object v11, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPlusOneCount:Ljava/lang/String;

    invoke-virtual {v10, v11, v8, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-int v5, v9

    .line 268
    iput v5, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPlusOneCountXPos:I

    .line 270
    sget-object v9, Lcom/google/android/apps/plus/views/EventPhotoView;->sPlusOneImage:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sget v10, Lcom/google/android/apps/plus/views/EventPhotoView;->sInfoInnerPadding:I

    add-int/2addr v9, v10

    sub-int/2addr v5, v9

    .line 271
    iput v5, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPlusOneIconXPos:I

    .line 277
    .end local v1           #length:I
    .end local v2           #textHeight:F
    .end local v5           #xPos:I
    .end local v6           #yPos:I
    :cond_db
    :goto_db
    sget-object v9, Lcom/google/android/apps/plus/views/EventPhotoView;->sNoImageImage:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-le v0, v9, :cond_116

    :goto_e3
    iput-boolean v7, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mShowNoImage:Z

    .line 279
    invoke-virtual {p0, v3, v0}, Lcom/google/android/apps/plus/views/EventPhotoView;->setMeasuredDimension(II)V

    .line 280
    return-void

    .line 209
    .end local v0           #height:I
    :cond_e9
    const/high16 v9, -0x8000

    if-ne v4, v9, :cond_11

    .line 210
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto/16 :goto_11

    .line 218
    :cond_f7
    iget v9, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mImageWidth:I

    if-le v3, v9, :cond_109

    .line 219
    iget v9, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mImageWidth:I

    iput v9, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPreferredImageWidth:I

    .line 220
    iget v0, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mImageHeight:I

    .line 225
    .restart local v0       #height:I
    :goto_101
    iget v9, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mMaxHeight:I

    if-le v0, v9, :cond_1d

    .line 226
    iget v0, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mMaxHeight:I

    goto/16 :goto_1d

    .line 222
    .end local v0           #height:I
    :cond_109
    iput v3, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPreferredImageWidth:I

    .line 223
    iget v9, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mImageHeight:I

    mul-int/2addr v9, v3

    iget v10, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mImageWidth:I

    div-int v0, v9, v10

    .restart local v0       #height:I
    goto :goto_101

    .line 274
    :cond_113
    iput-boolean v8, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mShowInfo:Z

    goto :goto_db

    :cond_116
    move v7, v8

    .line 277
    goto :goto_e3
.end method

.method public setCommentCount(I)V
    .registers 5
    .parameter "count"

    .prologue
    .line 162
    if-nez p1, :cond_11

    .line 163
    const/4 v0, 0x0

    .line 172
    .local v0, string:Ljava/lang/String;
    :goto_3
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mCommentCount:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 173
    iput-object v0, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mCommentCount:Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventPhotoView;->requestLayout()V

    .line 176
    :cond_10
    return-void

    .line 165
    .end local v0           #string:Ljava/lang/String;
    :cond_11
    const/16 v1, 0x63

    if-le p1, v1, :cond_21

    .line 166
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventPhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #string:Ljava/lang/String;
    goto :goto_3

    .line 168
    .end local v0           #string:Ljava/lang/String;
    :cond_21
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #string:Ljava/lang/String;
    goto :goto_3
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bm"

    .prologue
    .line 287
    if-eqz p1, :cond_12

    .line 288
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventPhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventPhotoView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mImageLoaded:Z

    .line 295
    :cond_e
    :goto_e
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/EsImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 296
    return-void

    .line 291
    :cond_12
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mShowNoImage:Z

    if-eqz v0, :cond_e

    .line 292
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventPhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 293
    sget-object p1, Lcom/google/android/apps/plus/views/EventPhotoView;->sNoImageImage:Landroid/graphics/Bitmap;

    goto :goto_e
.end method

.method public setMaxHeight(I)V
    .registers 2
    .parameter "maxHeight"

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/EsImageView;->setMaxHeight(I)V

    .line 135
    iput p1, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mMaxHeight:I

    .line 136
    return-void
.end method

.method public setPhoto(Ljava/lang/String;II)V
    .registers 6
    .parameter "url"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mImageUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventPhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iput-object p1, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mImageUrl:Ljava/lang/String;

    .line 149
    iput p2, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mImageWidth:I

    .line 150
    iput p3, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mImageHeight:I

    .line 151
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mImageRequested:Z

    .line 152
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mImageLoaded:Z

    .line 153
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventPhotoView;->requestLayout()V

    .line 155
    :cond_1a
    return-void
.end method

.method public setPlusOneCount(J)V
    .registers 6
    .parameter "count"

    .prologue
    .line 183
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_15

    .line 184
    const/4 v0, 0x0

    .line 193
    .local v0, string:Ljava/lang/String;
    :goto_7
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPlusOneCount:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 194
    iput-object v0, p0, Lcom/google/android/apps/plus/views/EventPhotoView;->mPlusOneCount:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventPhotoView;->requestLayout()V

    .line 197
    :cond_14
    return-void

    .line 186
    .end local v0           #string:Ljava/lang/String;
    :cond_15
    const-wide/16 v1, 0x63

    cmp-long v1, p1, v1

    if-lez v1, :cond_27

    .line 187
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventPhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #string:Ljava/lang/String;
    goto :goto_7

    .line 189
    .end local v0           #string:Ljava/lang/String;
    :cond_27
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #string:Ljava/lang/String;
    goto :goto_7
.end method
