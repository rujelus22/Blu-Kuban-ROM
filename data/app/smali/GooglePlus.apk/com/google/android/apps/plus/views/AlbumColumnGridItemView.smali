.class public Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;
.super Lcom/google/android/apps/plus/views/EsImageView;
.source "AlbumColumnGridItemView.java"


# static fields
.field private static sCommentCountPaint:Landroid/text/TextPaint;

.field private static sCommentImage:Landroid/graphics/Bitmap;

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

.field private static sVideoImage:Landroid/graphics/Bitmap;


# instance fields
.field private mCommentCount:Ljava/lang/CharSequence;

.field private mIsVideo:Z

.field private mNotify:Z

.field private mPlusOneCount:Ljava/lang/CharSequence;

.field private final mSelector:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/EsImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02021f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->initialize(Landroid/content/res/Resources;)V

    .line 73
    return-void
.end method

.method private static initialize(Landroid/content/res/Resources;)V
    .registers 6
    .parameter "res"

    .prologue
    const v4, 0x7f0d009a

    const v3, 0x7f0d0099

    const/4 v2, 0x1

    .line 249
    sget-boolean v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sInitialized:Z

    if-eqz v0, :cond_c

    .line 283
    :goto_b
    return-void

    .line 253
    :cond_c
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    .line 254
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 255
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    const v1, 0x7f0a0056

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 256
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 257
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 259
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    .line 260
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 261
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    const v1, 0x7f0a0057

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 262
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 263
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-static {v0, v4}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 265
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sInfoPaint:Landroid/graphics/Paint;

    .line 266
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sInfoPaint:Landroid/graphics/Paint;

    const v1, 0x7f0a0055

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sInfoPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 269
    const v0, 0x7f0d009e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sInfoInnerPadding:I

    .line 270
    const v0, 0x7f0d009c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sInfoRightMargin:I

    .line 271
    const v0, 0x7f0d009d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sInfoLeftMargin:I

    .line 272
    const v0, 0x7f0d009b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sInfoHeight:I

    .line 274
    const v0, 0x7f0d009f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sNotifyRightMargin:I

    .line 275
    const v0, 0x7f0d00a0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sNotifyTopMargin:I

    .line 277
    const v0, 0x7f0201dc

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sPlusOneImage:Landroid/graphics/Bitmap;

    .line 278
    const v0, 0x7f0201db

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sCommentImage:Landroid/graphics/Bitmap;

    .line 279
    const v0, 0x7f02022e

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sNotifyImage:Landroid/graphics/Bitmap;

    .line 280
    const v0, 0x7f020188

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sVideoImage:Landroid/graphics/Bitmap;

    .line 282
    sput-boolean v2, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sInitialized:Z

    goto/16 :goto_b
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 238
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->invalidate()V

    .line 240
    invoke-super {p0}, Lcom/google/android/apps/plus/views/EsImageView;->drawableStateChanged()V

    .line 241
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .parameter "canvas"

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v11

    .line 141
    .local v11, saveCount:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 142
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/EsImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 143
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 146
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_28

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 219
    :cond_27
    :goto_27
    return-void

    .line 153
    :cond_28
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mNotify:Z

    if-eqz v0, :cond_45

    .line 154
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->getWidth()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sNotifyRightMargin:I

    sub-int/2addr v0, v1

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sNotifyImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v8, v0, v1

    .line 155
    .local v8, drawLeft:I
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sNotifyImage:Landroid/graphics/Bitmap;

    int-to-float v1, v8

    sget v2, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sNotifyTopMargin:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 159
    .end local v8           #drawLeft:I
    :cond_45
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mIsVideo:Z

    if-eqz v0, :cond_6b

    .line 160
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->getWidth()I

    move-result v0

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sVideoImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v8, v0, 0x2

    .line 161
    .restart local v8       #drawLeft:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->getHeight()I

    move-result v0

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sVideoImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v9, v0, 0x2

    .line 162
    .local v9, drawTop:I
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sVideoImage:Landroid/graphics/Bitmap;

    int-to-float v1, v8

    int-to-float v2, v9

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 165
    .end local v8           #drawLeft:I
    .end local v9           #drawTop:I
    :cond_6b
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mPlusOneCount:Ljava/lang/CharSequence;

    if-nez v0, :cond_88

    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    if-nez v0, :cond_88

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_27

    .line 172
    :cond_88
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->getHeight()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sInfoHeight:I

    sub-int v13, v0, v1

    .line 173
    .local v13, yPos:I
    const/4 v1, 0x0

    int-to-float v2, v13

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sInfoPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 174
    sget v12, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sInfoLeftMargin:I

    .line 177
    .local v12, xPos:I
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mPlusOneCount:Ljava/lang/CharSequence;

    if-eqz v0, :cond_11c

    .line 178
    sget v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sInfoHeight:I

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sPlusOneImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v13

    int-to-float v10, v0

    .line 179
    .local v10, iconYPos:F
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float v7, v0, v1

    .line 180
    .local v7, countHeight:F
    int-to-float v0, v13

    sget v1, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sInfoHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v7

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float v5, v0, v1

    .line 183
    .local v5, countYPos:F
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sPlusOneImage:Landroid/graphics/Bitmap;

    int-to-float v1, v12

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 185
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sPlusOneImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sInfoInnerPadding:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    .line 187
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mPlusOneCount:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mPlusOneCount:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v4, v12

    sget-object v6, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 191
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    if-eqz v0, :cond_11c

    .line 192
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->getWidth()I

    move-result v12

    .line 193
    sget v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sInfoRightMargin:I

    sub-int/2addr v12, v0

    .line 194
    int-to-float v0, v12

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v12, v0

    .line 195
    sget v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sInfoInnerPadding:I

    sub-int/2addr v12, v0

    .line 196
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sCommentImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v12, v0

    .line 201
    .end local v5           #countYPos:F
    .end local v7           #countHeight:F
    .end local v10           #iconYPos:F
    :cond_11c
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    if-eqz v0, :cond_16d

    .line 202
    sget v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sInfoHeight:I

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sCommentImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v13

    int-to-float v10, v0

    .line 203
    .restart local v10       #iconYPos:F
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float v7, v0, v1

    .line 204
    .restart local v7       #countHeight:F
    int-to-float v0, v13

    sget v1, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sInfoHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v7

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    sget-object v1, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float v5, v0, v1

    .line 207
    .restart local v5       #countYPos:F
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sCommentImage:Landroid/graphics/Bitmap;

    int-to-float v1, v12

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 209
    sget-object v0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sCommentImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sInfoInnerPadding:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    .line 211
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v4, v12

    sget-object v6, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->sCommentCountPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 215
    .end local v5           #countYPos:F
    .end local v7           #countHeight:F
    .end local v10           #iconYPos:F
    :cond_16d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_179

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 216
    :cond_179
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_27
.end method

.method public setCommentCount(Ljava/lang/Integer;)V
    .registers 4
    .parameter "count"

    .prologue
    .line 79
    if-nez p1, :cond_6

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    .line 88
    :goto_5
    return-void

    .line 82
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x63

    if-le v0, v1, :cond_1c

    .line 83
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    goto :goto_5

    .line 85
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mCommentCount:Ljava/lang/CharSequence;

    goto :goto_5
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bm"

    .prologue
    .line 128
    if-nez p1, :cond_7

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :goto_6
    return-void

    .line 131
    :cond_7
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/EsImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6
.end method

.method public setIsVideo(Z)V
    .registers 4
    .parameter "isVideo"

    .prologue
    .line 116
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mIsVideo:Z

    if-eq p1, v1, :cond_d

    const/4 v0, 0x1

    .line 117
    .local v0, doInvalidate:Z
    :goto_5
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mIsVideo:Z

    .line 118
    if-eqz v0, :cond_c

    .line 119
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->invalidate()V

    .line 121
    :cond_c
    return-void

    .line 116
    .end local v0           #doInvalidate:Z
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setNotification(Z)V
    .registers 2
    .parameter "notify"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mNotify:Z

    .line 110
    return-void
.end method

.method public setPlusOneCount(Ljava/lang/Integer;)V
    .registers 4
    .parameter "count"

    .prologue
    .line 94
    if-nez p1, :cond_6

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mPlusOneCount:Ljava/lang/CharSequence;

    .line 103
    :goto_5
    return-void

    .line 97
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x63

    if-le v0, v1, :cond_1c

    .line 98
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mPlusOneCount:Ljava/lang/CharSequence;

    goto :goto_5

    .line 100
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mPlusOneCount:Ljava/lang/CharSequence;

    goto :goto_5
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumColumnGridItemView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_6

    .line 227
    const/4 v0, 0x1

    .line 229
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/EsImageView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    goto :goto_5
.end method
