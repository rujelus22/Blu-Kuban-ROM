.class public Lcom/google/android/apps/plus/views/AlbumGridItemView;
.super Lcom/google/android/apps/plus/views/EsImageView;
.source "AlbumGridItemView.java"


# static fields
.field private static sCommentCountPaint:Landroid/text/TextPaint;

.field private static sCommentImage:Landroid/graphics/Bitmap;

.field private static sDefaultHeight:I

.field private static sDefaultWidth:I

.field private static final sHandler:Landroid/os/Handler;

.field private static sInfoHeight:I

.field private static sInfoInnerPadding:I

.field private static sInfoLeftMargin:I

.field private static sInfoPaint:Landroid/graphics/Paint;

.field private static sInfoRightMargin:I

.field private static sInitialized:Z

.field private static sNotifyImage:Landroid/graphics/Bitmap;

.field private static sNotifyRightMargin:I

.field private static sNotifyTopMargin:I

.field private static sPlusOneCountPaint:Landroid/text/TextPaint;

.field private static sPlusOneImage:Landroid/graphics/Bitmap;

.field private static sSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private static sVideoImage:Landroid/graphics/Bitmap;


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mCommentCount:Ljava/lang/CharSequence;

.field private mEnableFadeRunnable:Ljava/lang/Runnable;

.field private mFadeAnimEnabled:Z

.field private mIsSelected:Z

.field private mIsVideo:Z

.field private mNotify:Z

.field private mPlusOneCount:Ljava/lang/CharSequence;

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/EsImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mBounds:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Lcom/google/android/apps/plus/views/AlbumGridItemView$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/AlbumGridItemView$1;-><init>(Lcom/google/android/apps/plus/views/AlbumGridItemView;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mEnableFadeRunnable:Ljava/lang/Runnable;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->initialize(Landroid/content/res/Resources;)V

    .line 87
    sget v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sDefaultWidth:I

    iput v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailWidth:I

    .line 88
    sget v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sDefaultHeight:I

    iput v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailHeight:I

    .line 89
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/views/AlbumGridItemView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mFadeAnimEnabled:Z

    return p1
.end method

.method private static initialize(Landroid/content/res/Resources;)V
    .registers 6
    .parameter "res"

    .prologue
    const v4, 0x7f0d009a

    const v3, 0x7f0d0099

    const/4 v2, 0x1

    .line 341
    sget-boolean v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInitialized:Z

    if-eqz v0, :cond_c

    .line 381
    :goto_b
    return-void

    .line 345
    :cond_c
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    .line 346
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 347
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    const v1, 0x7f0a0056

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 348
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 349
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 351
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    .line 352
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 353
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    const v1, 0x7f0a0057

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 354
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 355
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-static {v0, v4}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 357
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoPaint:Landroid/graphics/Paint;

    .line 358
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoPaint:Landroid/graphics/Paint;

    const v1, 0x7f0a0055

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 361
    const v0, 0x7f0d009e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoInnerPadding:I

    .line 362
    const v0, 0x7f0d009c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoRightMargin:I

    .line 363
    const v0, 0x7f0d009d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoLeftMargin:I

    .line 364
    const v0, 0x7f0d009b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoHeight:I

    .line 366
    const v0, 0x7f0d009f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sNotifyRightMargin:I

    .line 367
    const v0, 0x7f0d00a0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sNotifyTopMargin:I

    .line 369
    const v0, 0x7f0201dc

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneImage:Landroid/graphics/Bitmap;

    .line 370
    const v0, 0x7f0201db

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentImage:Landroid/graphics/Bitmap;

    .line 371
    const v0, 0x7f02022e

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sNotifyImage:Landroid/graphics/Bitmap;

    .line 372
    const v0, 0x7f020188

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sVideoImage:Landroid/graphics/Bitmap;

    .line 375
    const v0, 0x7f0201bc

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 377
    const v0, 0x7f0d00a2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sDefaultHeight:I

    .line 378
    const v0, 0x7f0d00a1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sDefaultWidth:I

    .line 380
    sput-boolean v2, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInitialized:Z

    goto/16 :goto_b
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .parameter "canvas"

    .prologue
    .line 251
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v11

    .line 252
    .local v11, saveCount:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 253
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/EsImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 254
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 257
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_14

    .line 333
    :cond_13
    :goto_13
    return-void

    .line 262
    :cond_14
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mNotify:Z

    if-eqz v0, :cond_2f

    .line 263
    iget v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailWidth:I

    sget v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sNotifyRightMargin:I

    sub-int/2addr v0, v1

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sNotifyImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v8, v0, v1

    .line 264
    .local v8, drawLeft:I
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sNotifyImage:Landroid/graphics/Bitmap;

    int-to-float v1, v8

    sget v2, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sNotifyTopMargin:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 268
    .end local v8           #drawLeft:I
    :cond_2f
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mIsVideo:Z

    if-eqz v0, :cond_51

    .line 269
    iget v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailWidth:I

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sVideoImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v8, v0, 0x2

    .line 270
    .restart local v8       #drawLeft:I
    iget v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailHeight:I

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sVideoImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v9, v0, 0x2

    .line 271
    .local v9, drawTop:I
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sVideoImage:Landroid/graphics/Bitmap;

    int-to-float v1, v8

    int-to-float v2, v9

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 274
    .end local v8           #drawLeft:I
    .end local v9           #drawTop:I
    :cond_51
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mPlusOneCount:Ljava/lang/CharSequence;

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    if-nez v0, :cond_63

    .line 276
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mIsSelected:Z

    if-eqz v0, :cond_13

    .line 277
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_13

    .line 283
    :cond_63
    const/4 v12, 0x0

    .line 284
    .local v12, xPos:I
    iget v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailHeight:I

    sget v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoHeight:I

    sub-int v13, v0, v1

    .line 286
    .local v13, yPos:I
    const/4 v1, 0x0

    int-to-float v2, v13

    iget v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailWidth:I

    int-to-float v3, v0

    sget v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoHeight:I

    add-int/2addr v0, v13

    int-to-float v4, v0

    sget-object v5, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 288
    sget v12, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoLeftMargin:I

    .line 291
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mPlusOneCount:Ljava/lang/CharSequence;

    if-eqz v0, :cond_f1

    .line 292
    sget v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoHeight:I

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v13

    int-to-float v10, v0

    .line 293
    .local v10, iconYPos:F
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float v7, v0, v1

    .line 294
    .local v7, countHeight:F
    int-to-float v0, v13

    sget v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v7

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float v5, v0, v1

    .line 297
    .local v5, countYPos:F
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneImage:Landroid/graphics/Bitmap;

    int-to-float v1, v12

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 299
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoInnerPadding:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    .line 301
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mPlusOneCount:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mPlusOneCount:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v4, v12

    sget-object v6, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 305
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    if-eqz v0, :cond_f1

    .line 306
    iget v12, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailWidth:I

    .line 307
    sget v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoRightMargin:I

    sub-int/2addr v12, v0

    .line 308
    int-to-float v0, v12

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v12, v0

    .line 309
    sget v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoInnerPadding:I

    sub-int/2addr v12, v0

    .line 310
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v12, v0

    .line 315
    .end local v5           #countYPos:F
    .end local v7           #countHeight:F
    .end local v10           #iconYPos:F
    :cond_f1
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    if-eqz v0, :cond_142

    .line 316
    sget v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoHeight:I

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v13

    int-to-float v10, v0

    .line 317
    .restart local v10       #iconYPos:F
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float v7, v0, v1

    .line 318
    .restart local v7       #countHeight:F
    int-to-float v0, v13

    sget v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v7

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float v5, v0, v1

    .line 321
    .restart local v5       #countYPos:F
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentImage:Landroid/graphics/Bitmap;

    int-to-float v1, v12

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 323
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoInnerPadding:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    .line 325
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v4, v12

    sget-object v6, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 330
    .end local v5           #countYPos:F
    .end local v7           #countHeight:F
    .end local v10           #iconYPos:F
    :cond_142
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mIsSelected:Z

    if-eqz v0, :cond_13

    .line 331
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_13
.end method

.method protected onMeasure(II)V
    .registers 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v3, 0x4000

    const/4 v5, 0x0

    .line 179
    iget v2, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailWidth:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 180
    .local v1, widthSpec:I
    iget v2, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailHeight:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 181
    .local v0, heightSpec:I
    invoke-super {p0, v1, v0}, Lcom/google/android/apps/plus/views/EsImageView;->onMeasure(II)V

    .line 183
    iget-object v2, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailWidth:I

    iget v4, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailHeight:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 184
    sget-object v2, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sSelectedDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 185
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_2a

    .line 209
    :cond_9
    :goto_9
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/EsImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 192
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_9

    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setPressed(Z)V

    .line 194
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->invalidate()V

    goto :goto_9

    .line 202
    :pswitch_1c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_9

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setPressed(Z)V

    .line 204
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->invalidate()V

    goto :goto_9

    .line 189
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_e
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public setCommentCount(Ljava/lang/Integer;)V
    .registers 4
    .parameter "count"

    .prologue
    .line 95
    if-nez p1, :cond_6

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    .line 104
    :goto_5
    return-void

    .line 98
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x63

    if-le v0, v1, :cond_1c

    .line 99
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    goto :goto_5

    .line 101
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    goto :goto_5
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bm"

    .prologue
    .line 217
    if-nez p1, :cond_7

    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    :goto_6
    return-void

    .line 220
    :cond_7
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/EsImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .parameter "drawable"

    .prologue
    .line 229
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/EsImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mEnableFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 232
    if-eqz p1, :cond_33

    .line 233
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setBackgroundColor(I)V

    .line 234
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mFadeAnimEnabled:Z

    if-eqz v0, :cond_2f

    .line 235
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 243
    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mFadeAnimEnabled:Z

    .line 244
    return-void

    .line 238
    :cond_33
    const v0, 0x7f0201c8

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setBackgroundResource(I)V

    .line 240
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mEnableFadeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2f
.end method

.method public setIsSelected(Z)V
    .registers 4
    .parameter "isSelected"

    .prologue
    .line 132
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mIsSelected:Z

    if-eq p1, v1, :cond_d

    const/4 v0, 0x1

    .line 133
    .local v0, doInvalidate:Z
    :goto_5
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mIsSelected:Z

    .line 134
    if-eqz v0, :cond_c

    .line 135
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->invalidate()V

    .line 137
    :cond_c
    return-void

    .line 132
    .end local v0           #doInvalidate:Z
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setIsVideo(Z)V
    .registers 4
    .parameter "isVideo"

    .prologue
    .line 157
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mIsVideo:Z

    if-eq p1, v1, :cond_d

    const/4 v0, 0x1

    .line 158
    .local v0, doInvalidate:Z
    :goto_5
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mIsVideo:Z

    .line 159
    if-eqz v0, :cond_c

    .line 160
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->invalidate()V

    .line 162
    :cond_c
    return-void

    .line 157
    .end local v0           #doInvalidate:Z
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setNotification(Z)V
    .registers 2
    .parameter "notify"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mNotify:Z

    .line 126
    return-void
.end method

.method public setPlusOneCount(Ljava/lang/Integer;)V
    .registers 4
    .parameter "count"

    .prologue
    .line 110
    if-nez p1, :cond_6

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mPlusOneCount:Ljava/lang/CharSequence;

    .line 119
    :goto_5
    return-void

    .line 113
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x63

    if-le v0, v1, :cond_1c

    .line 114
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mPlusOneCount:Ljava/lang/CharSequence;

    goto :goto_5

    .line 116
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mPlusOneCount:Ljava/lang/CharSequence;

    goto :goto_5
.end method

.method public setSelected(Z)V
    .registers 4
    .parameter "selected"

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/EsImageView;->setSelected(Z)V

    .line 146
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mIsSelected:Z

    if-eq p1, v1, :cond_10

    const/4 v0, 0x1

    .line 147
    .local v0, doInvalidate:Z
    :goto_8
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mIsSelected:Z

    .line 148
    if-eqz v0, :cond_f

    .line 149
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->invalidate()V

    .line 151
    :cond_f
    return-void

    .line 146
    .end local v0           #doInvalidate:Z
    :cond_10
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setThumbnailSize(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 168
    iput p2, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailHeight:I

    .line 169
    iput p1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailWidth:I

    .line 170
    return-void
.end method
