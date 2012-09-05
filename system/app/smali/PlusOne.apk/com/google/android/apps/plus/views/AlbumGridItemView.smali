.class public Lcom/google/android/apps/plus/views/AlbumGridItemView;
.super Landroid/widget/ImageView;
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

.field private static sServerImage:Landroid/graphics/Bitmap;

.field private static sServerImageLeftMargin:I

.field private static sServerImageTopMargin:I

.field private static sVideoImage:Landroid/graphics/Bitmap;


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mCommentCount:Ljava/lang/CharSequence;

.field private mEnableFadeRunnable:Ljava/lang/Runnable;

.field private mFadeAnimEnabled:Z

.field private mIsSelected:Z

.field private mIsServerImage:Z

.field private mIsVideo:Z

.field private mNotify:Z

.field private mPlusOneCount:Ljava/lang/CharSequence;

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 62
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
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mBounds:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Lcom/google/android/apps/plus/views/AlbumGridItemView$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/AlbumGridItemView$1;-><init>(Lcom/google/android/apps/plus/views/AlbumGridItemView;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mEnableFadeRunnable:Ljava/lang/Runnable;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->initialize(Landroid/content/res/Resources;)V

    .line 90
    sget v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sDefaultWidth:I

    iput v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailWidth:I

    .line 91
    sget v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sDefaultHeight:I

    iput v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailHeight:I

    .line 92
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/views/AlbumGridItemView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mFadeAnimEnabled:Z

    return p1
.end method

.method private static initialize(Landroid/content/res/Resources;)V
    .registers 4
    .parameter "res"

    .prologue
    const/4 v2, 0x1

    .line 313
    sget-boolean v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInitialized:Z

    if-eqz v0, :cond_6

    .line 355
    :goto_5
    return-void

    .line 317
    :cond_6
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    .line 318
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 319
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    const v1, 0x7f090035

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 320
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    const v1, 0x7f0c0063

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 322
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    .line 323
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 324
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    const v1, 0x7f090036

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 325
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    const v1, 0x7f0c0064

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 327
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoPaint:Landroid/graphics/Paint;

    .line 328
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoPaint:Landroid/graphics/Paint;

    const v1, 0x7f090034

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 331
    const v0, 0x7f0c0068

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoInnerPadding:I

    .line 332
    const v0, 0x7f0c0066

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoRightMargin:I

    .line 333
    const v0, 0x7f0c0067

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoLeftMargin:I

    .line 334
    const v0, 0x7f0c0065

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoHeight:I

    .line 336
    const v0, 0x7f0c0069

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sNotifyRightMargin:I

    .line 337
    const v0, 0x7f0c006a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sNotifyTopMargin:I

    .line 339
    const v0, 0x7f0c006b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sServerImageLeftMargin:I

    .line 340
    const v0, 0x7f0c006c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sServerImageTopMargin:I

    .line 342
    const v0, 0x7f020104

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneImage:Landroid/graphics/Bitmap;

    .line 343
    const v0, 0x7f020103

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentImage:Landroid/graphics/Bitmap;

    .line 344
    const v0, 0x7f020140

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sNotifyImage:Landroid/graphics/Bitmap;

    .line 345
    const v0, 0x7f0200ce

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sVideoImage:Landroid/graphics/Bitmap;

    .line 346
    const v0, 0x7f0200cd

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sServerImage:Landroid/graphics/Bitmap;

    .line 349
    const v0, 0x7f0200d7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 351
    const v0, 0x7f0c0062

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sDefaultHeight:I

    .line 352
    const v0, 0x7f0c0061

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sDefaultWidth:I

    .line 354
    sput-boolean v2, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInitialized:Z

    goto/16 :goto_5
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .parameter "canvas"

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v11

    .line 221
    .local v11, saveCount:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 222
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 223
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 226
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_14

    .line 307
    :cond_13
    :goto_13
    return-void

    .line 231
    :cond_14
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mNotify:Z

    if-eqz v0, :cond_2f

    .line 232
    iget v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailWidth:I

    sget v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sNotifyRightMargin:I

    sub-int/2addr v0, v1

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sNotifyImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v8, v0, v1

    .line 233
    .local v8, drawLeft:I
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sNotifyImage:Landroid/graphics/Bitmap;

    int-to-float v1, v8

    sget v2, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sNotifyTopMargin:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 237
    .end local v8           #drawLeft:I
    :cond_2f
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mIsVideo:Z

    if-eqz v0, :cond_51

    .line 238
    iget v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailWidth:I

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sVideoImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v8, v0, 0x2

    .line 239
    .restart local v8       #drawLeft:I
    iget v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailHeight:I

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sVideoImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v9, v0, 0x2

    .line 240
    .local v9, drawTop:I
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sVideoImage:Landroid/graphics/Bitmap;

    int-to-float v1, v8

    int-to-float v2, v9

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 244
    .end local v8           #drawLeft:I
    .end local v9           #drawTop:I
    :cond_51
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mIsServerImage:Z

    if-eqz v0, :cond_61

    .line 245
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sServerImage:Landroid/graphics/Bitmap;

    sget v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sServerImageLeftMargin:I

    int-to-float v1, v1

    sget v2, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sServerImageTopMargin:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 248
    :cond_61
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mPlusOneCount:Ljava/lang/CharSequence;

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    if-nez v0, :cond_73

    .line 250
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mIsSelected:Z

    if-eqz v0, :cond_13

    .line 251
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_13

    .line 257
    :cond_73
    const/4 v12, 0x0

    .line 258
    .local v12, xPos:I
    iget v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailHeight:I

    sget v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoHeight:I

    sub-int v13, v0, v1

    .line 260
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

    .line 262
    sget v12, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoLeftMargin:I

    .line 265
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mPlusOneCount:Ljava/lang/CharSequence;

    if-eqz v0, :cond_101

    .line 266
    sget v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoHeight:I

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v13

    int-to-float v10, v0

    .line 267
    .local v10, iconYPos:F
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float v7, v0, v1

    .line 268
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

    .line 271
    .local v5, countYPos:F
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneImage:Landroid/graphics/Bitmap;

    int-to-float v1, v12

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 273
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoInnerPadding:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    .line 275
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mPlusOneCount:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mPlusOneCount:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v4, v12

    sget-object v6, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 279
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    if-eqz v0, :cond_101

    .line 280
    iget v12, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailWidth:I

    .line 281
    sget v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoRightMargin:I

    sub-int/2addr v12, v0

    .line 282
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

    .line 283
    sget v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoInnerPadding:I

    sub-int/2addr v12, v0

    .line 284
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v12, v0

    .line 289
    .end local v5           #countYPos:F
    .end local v7           #countHeight:F
    .end local v10           #iconYPos:F
    :cond_101
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    if-eqz v0, :cond_152

    .line 290
    sget v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoHeight:I

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v13

    int-to-float v10, v0

    .line 291
    .restart local v10       #iconYPos:F
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float v7, v0, v1

    .line 292
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

    .line 295
    .restart local v5       #countYPos:F
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentImage:Landroid/graphics/Bitmap;

    int-to-float v1, v12

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 297
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sInfoInnerPadding:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    .line 299
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v4, v12

    sget-object v6, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 304
    .end local v5           #countYPos:F
    .end local v7           #countHeight:F
    .end local v10           #iconYPos:F
    :cond_152
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mIsSelected:Z

    if-eqz v0, :cond_13

    .line 305
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

    .line 167
    iget v2, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailWidth:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 168
    .local v1, widthSpec:I
    iget v2, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailHeight:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 169
    .local v0, heightSpec:I
    invoke-super {p0, v1, v0}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 171
    iget-object v2, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailWidth:I

    iget v4, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailHeight:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 172
    sget-object v2, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sSelectedDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 173
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_1e

    .line 191
    :goto_9
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 179
    :pswitch_e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setPressed(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->invalidate()V

    goto :goto_9

    .line 186
    :pswitch_16
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setPressed(Z)V

    .line 187
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->invalidate()V

    goto :goto_9

    .line 177
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public setCommentCount(Ljava/lang/Integer;)V
    .registers 4
    .parameter "count"

    .prologue
    .line 98
    if-nez p1, :cond_6

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    .line 107
    :goto_5
    return-void

    .line 101
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x63

    if-le v0, v1, :cond_1c

    .line 102
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    goto :goto_5

    .line 104
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    goto :goto_5
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .parameter "drawable"

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    if-eqz p1, :cond_33

    .line 202
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setBackgroundColor(I)V

    .line 203
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mEnableFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mFadeAnimEnabled:Z

    if-eqz v0, :cond_32

    .line 205
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mFadeAnimEnabled:Z

    .line 213
    :cond_32
    :goto_32
    return-void

    .line 209
    :cond_33
    const v0, 0x7f0200e1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->setBackgroundResource(I)V

    .line 211
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mEnableFadeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_32
.end method

.method public setIsSelected(Z)V
    .registers 2
    .parameter "isSelected"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mIsSelected:Z

    .line 136
    return-void
.end method

.method public setIsServerImage(Z)V
    .registers 2
    .parameter "isServerImage"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mIsServerImage:Z

    .line 150
    return-void
.end method

.method public setIsVideo(Z)V
    .registers 2
    .parameter "isVideo"

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mIsVideo:Z

    .line 143
    return-void
.end method

.method public setNotification(Z)V
    .registers 2
    .parameter "notify"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mNotify:Z

    .line 129
    return-void
.end method

.method public setPlusOneCount(Ljava/lang/Integer;)V
    .registers 4
    .parameter "count"

    .prologue
    .line 113
    if-nez p1, :cond_6

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mPlusOneCount:Ljava/lang/CharSequence;

    .line 122
    :goto_5
    return-void

    .line 116
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x63

    if-le v0, v1, :cond_1c

    .line 117
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mPlusOneCount:Ljava/lang/CharSequence;

    goto :goto_5

    .line 119
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mPlusOneCount:Ljava/lang/CharSequence;

    goto :goto_5
.end method

.method public setThumbnailSize(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 156
    iput p2, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailHeight:I

    .line 157
    iput p1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView;->mThumbnailWidth:I

    .line 158
    return-void
.end method
