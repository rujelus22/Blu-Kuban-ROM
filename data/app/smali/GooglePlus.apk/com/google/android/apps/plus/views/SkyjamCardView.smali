.class public Lcom/google/android/apps/plus/views/SkyjamCardView;
.super Lcom/google/android/apps/plus/views/StreamCardView;
.source "SkyjamCardView.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;


# static fields
.field private static sAlbumBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field protected static sEmptyThumbnailBitmap:Landroid/graphics/Bitmap;

.field private static sGoogleMusicBitmap:Landroid/graphics/Bitmap;

.field protected static sListenBuyTextPaint:Landroid/text/TextPaint;

.field protected static sNonTitleTextPaint:Landroid/text/TextPaint;

.field private static sPlayOverlayBitmap:Landroid/graphics/Bitmap;

.field private static sSkyjamCardViewInitialized:Z

.field protected static sSkyjamMediaBorderDimension:I

.field protected static sSkyjamMediaDimension:I

.field protected static sTitleTextPaint:Landroid/text/TextPaint;


# instance fields
.field protected mAlbum:Ljava/lang/String;

.field protected mAlbumLayout:Landroid/text/StaticLayout;

.field protected mArtist:Ljava/lang/String;

.field protected mArtistLayout:Landroid/text/StaticLayout;

.field protected mAutoPlayButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

.field protected mListenBuyLayout:Landroid/text/StaticLayout;

.field protected mMediaImage:Lcom/google/android/apps/plus/views/MediaImage;

.field protected mThumbnailUrl:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;

.field protected mTitleLayout:Landroid/text/StaticLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/SkyjamCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v6, 0x7f0d01c6

    const v5, 0x7f0d01c5

    const v4, 0x7f0d01c4

    const/4 v3, 0x1

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/StreamCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    sget-boolean v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sSkyjamCardViewInitialized:Z

    if-nez v1, :cond_c3

    .line 71
    sput-boolean v3, Lcom/google/android/apps/plus/views/SkyjamCardView;->sSkyjamCardViewInitialized:Z

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sTitleTextPaint:Landroid/text/TextPaint;

    .line 76
    sget-object v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 77
    sget-object v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sTitleTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0113

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 78
    sget-object v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 80
    sget-object v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sTitleTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 83
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sNonTitleTextPaint:Landroid/text/TextPaint;

    .line 84
    sget-object v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sNonTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 85
    sget-object v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sNonTitleTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0114

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 86
    sget-object v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sNonTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 88
    sget-object v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sNonTitleTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 91
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sListenBuyTextPaint:Landroid/text/TextPaint;

    .line 92
    sget-object v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sListenBuyTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 93
    sget-object v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sListenBuyTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0115

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 94
    sget-object v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sListenBuyTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 96
    sget-object v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sListenBuyTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v6}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 99
    const v1, 0x7f020069

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sEmptyThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 101
    const v1, 0x7f02006f

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sGoogleMusicBitmap:Landroid/graphics/Bitmap;

    .line 102
    const v1, 0x7f02015a

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sPlayOverlayBitmap:Landroid/graphics/Bitmap;

    .line 103
    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sAlbumBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 106
    const v1, 0x7f0d01c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sSkyjamMediaDimension:I

    .line 107
    const v1, 0x7f0d01c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sSkyjamMediaBorderDimension:I

    .line 110
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_c3
    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;IIII)I
    .registers 16
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 235
    sget v0, Lcom/google/android/apps/plus/views/SkyjamCardView;->sYDoublePadding:I

    add-int/2addr v0, p5

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/SkyjamCardView;->getMediaHeightPercentage()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v8, v0

    .line 236
    .local v8, contentHeight:I
    invoke-virtual {p0, p1, p4, v8}, Lcom/google/android/apps/plus/views/SkyjamCardView;->drawMediaTopAreaStageWithTiledBackground(Landroid/graphics/Canvas;II)V

    .line 238
    move v3, p3

    .line 239
    .local v3, startY:I
    sget v0, Lcom/google/android/apps/plus/views/SkyjamCardView;->sSkyjamMediaBorderDimension:I

    sget v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sSkyjamMediaDimension:I

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    .line 241
    .local v7, border:I
    sget-object v0, Lcom/google/android/apps/plus/views/SkyjamCardView;->sAlbumBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    sget v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sSkyjamMediaBorderDimension:I

    add-int/2addr v1, p2

    sget v2, Lcom/google/android/apps/plus/views/SkyjamCardView;->sSkyjamMediaBorderDimension:I

    add-int/2addr v2, p3

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 243
    sget-object v0, Lcom/google/android/apps/plus/views/SkyjamCardView;->sAlbumBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 245
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mMediaImage:Lcom/google/android/apps/plus/views/MediaImage;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MediaImage;->refreshIfInvalidated()V

    .line 246
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mMediaImage:Lcom/google/android/apps/plus/views/MediaImage;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MediaImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 247
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-nez v6, :cond_34

    .line 248
    sget-object v6, Lcom/google/android/apps/plus/views/SkyjamCardView;->sEmptyThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 251
    :cond_34
    sget-object v0, Lcom/google/android/apps/plus/views/SkyjamCardView;->sDrawRect:Landroid/graphics/Rect;

    add-int v1, p2, v7

    add-int v2, p3, v7

    add-int v4, p2, v7

    sget v5, Lcom/google/android/apps/plus/views/SkyjamCardView;->sSkyjamMediaDimension:I

    add-int/2addr v4, v5

    add-int v5, p3, v7

    sget v9, Lcom/google/android/apps/plus/views/SkyjamCardView;->sSkyjamMediaDimension:I

    add-int/2addr v5, v9

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 253
    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sDrawRect:Landroid/graphics/Rect;

    sget-object v2, Lcom/google/android/apps/plus/views/SkyjamCardView;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 255
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mAutoPlayButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    if-eqz v0, :cond_58

    .line 256
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mAutoPlayButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ClickableImageButton;->draw(Landroid/graphics/Canvas;)V

    .line 259
    :cond_58
    invoke-virtual {p0, p1, p4, p5}, Lcom/google/android/apps/plus/views/SkyjamCardView;->drawMediaTopAreaShadow(Landroid/graphics/Canvas;II)V

    .line 261
    sget v0, Lcom/google/android/apps/plus/views/SkyjamCardView;->sSkyjamMediaBorderDimension:I

    sget v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sContentXPadding:I

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 262
    sget v0, Lcom/google/android/apps/plus/views/SkyjamCardView;->sSkyjamMediaBorderDimension:I

    sget v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sContentXPadding:I

    add-int/2addr v0, v1

    sub-int/2addr p4, v0

    .line 264
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mTitleLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_83

    .line 265
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 266
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mTitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 267
    neg-int v0, p2

    int-to-float v0, v0

    neg-int v1, p3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 268
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mTitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr p3, v0

    .line 271
    :cond_83
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mArtistLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_9f

    .line 272
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 273
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mArtistLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 274
    neg-int v0, p2

    int-to-float v0, v0

    neg-int v1, p3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 275
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mArtistLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr p3, v0

    .line 278
    :cond_9f
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mAlbumLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_bb

    .line 279
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 280
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mAlbumLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 281
    neg-int v0, p2

    int-to-float v0, v0

    neg-int v1, p3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 282
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mAlbumLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr p3, v0

    .line 285
    :cond_bb
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mListenBuyLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_d7

    .line 286
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 287
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mListenBuyLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 288
    neg-int v0, p2

    int-to-float v0, v0

    neg-int v1, p3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 289
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mListenBuyLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/2addr p3, v0

    .line 292
    :cond_d7
    sub-int v0, v8, p3

    sget-object v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sGoogleMusicBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_f0

    .line 293
    sget-object v0, Lcom/google/android/apps/plus/views/SkyjamCardView;->sGoogleMusicBitmap:Landroid/graphics/Bitmap;

    int-to-float v1, p2

    int-to-float v2, p3

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 294
    sget-object v0, Lcom/google/android/apps/plus/views/SkyjamCardView;->sGoogleMusicBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/2addr p3, v0

    .line 297
    :cond_f0
    sget v0, Lcom/google/android/apps/plus/views/SkyjamCardView;->sSkyjamMediaBorderDimension:I

    sget v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sContentXPadding:I

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 298
    sget v0, Lcom/google/android/apps/plus/views/SkyjamCardView;->sSkyjamMediaBorderDimension:I

    sget v1, Lcom/google/android/apps/plus/views/SkyjamCardView;->sContentXPadding:I

    add-int/2addr v0, v1

    add-int/2addr p4, v0

    .line 300
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/SkyjamCardView;->drawPlusOneBar(Landroid/graphics/Canvas;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    .line 301
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/views/SkyjamCardView;->drawMediaBottomArea(Landroid/graphics/Canvas;IIII)I

    .line 302
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/SkyjamCardView;->drawWhatsHot(Landroid/graphics/Canvas;)V

    .line 303
    return p5
.end method

.method public init(Landroid/database/Cursor;IILandroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/views/StreamCardView$ViewedListener;Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;)V
    .registers 15
    .parameter "cursor"
    .parameter "displaySizeType"
    .parameter "size"
    .parameter "onClickListener"
    .parameter "itemClickListener"
    .parameter "viewedListener"
    .parameter "plusBarClickListener"

    .prologue
    .line 116
    invoke-super/range {p0 .. p7}, Lcom/google/android/apps/plus/views/StreamCardView;->init(Landroid/database/Cursor;IILandroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/views/StreamCardView$ViewedListener;Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;)V

    .line 119
    const/16 v6, 0x8

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 120
    .local v4, mediaBytes:[B
    if-eqz v4, :cond_48

    .line 121
    invoke-static {v4}, Lcom/google/android/apps/plus/content/DbMedia;->deserialize([B)[Lcom/google/android/apps/plus/content/DbMedia;

    move-result-object v0

    .line 122
    .local v0, dbMediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v0

    .local v2, length:I
    :goto_11
    if-ge v1, v2, :cond_48

    .line 123
    aget-object v6, v0, v1

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v3

    .line 124
    .local v3, media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v5

    .line 126
    .local v5, type:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    sget-object v6, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->SKYJAM_ALBUM:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    if-eq v5, v6, :cond_25

    sget-object v6, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->SKYJAM_SONG:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    if-ne v5, v6, :cond_50

    .line 127
    :cond_25
    const v6, 0x7f080442

    iput v6, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mAutoText:I

    .line 128
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasContentHtml()Z

    move-result v6

    if-eqz v6, :cond_49

    .line 129
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mTitle:Ljava/lang/String;

    .line 130
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbum()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mAlbum:Ljava/lang/String;

    .line 134
    :goto_3c
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbumArtist()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mArtist:Ljava/lang/String;

    .line 135
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mThumbnailUrl:Ljava/lang/String;

    .line 140
    .end local v0           #dbMediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    .end local v5           #type:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    :cond_48
    return-void

    .line 132
    .restart local v0       #dbMediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    .restart local v1       #i:I
    .restart local v2       #length:I
    .restart local v3       #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    .restart local v5       #type:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    :cond_49
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbum()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mTitle:Ljava/lang/String;

    goto :goto_3c

    .line 122
    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method protected layoutElements(IIII)I
    .registers 14
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 161
    sget v4, Lcom/google/android/apps/plus/views/SkyjamCardView;->sYDoublePadding:I

    add-int/2addr v4, p4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/SkyjamCardView;->getMediaHeightPercentage()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 162
    .local v1, contentHeight:I
    move v3, p2

    .line 164
    .local v3, startY:I
    iget-object v4, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mThumbnailUrl:Ljava/lang/String;

    if-eqz v4, :cond_2a

    .line 165
    new-instance v4, Lcom/google/android/apps/plus/views/MediaImage;

    new-instance v5, Lcom/google/android/apps/plus/content/MediaImageRequest;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mThumbnailUrl:Ljava/lang/String;

    sget-object v7, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/google/android/apps/plus/views/SkyjamCardView;->sSkyjamMediaDimension:I

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/apps/plus/content/MediaImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, p0, v5}, Lcom/google/android/apps/plus/views/MediaImage;-><init>(Landroid/view/View;Lcom/google/android/apps/plus/content/MediaImageRequest;)V

    iput-object v4, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mMediaImage:Lcom/google/android/apps/plus/views/MediaImage;

    .line 167
    iget-object v4, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mMediaImage:Lcom/google/android/apps/plus/views/MediaImage;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/MediaImage;->invalidate()V

    .line 170
    :cond_2a
    sget v4, Lcom/google/android/apps/plus/views/SkyjamCardView;->sSkyjamMediaBorderDimension:I

    sget v5, Lcom/google/android/apps/plus/views/SkyjamCardView;->sSkyjamMediaDimension:I

    sub-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    .line 172
    .local v0, border:I
    iget-object v4, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mAlbum:Ljava/lang/String;

    if-eqz v4, :cond_64

    .line 173
    iget-object v4, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mClickableItems:Ljava/util/Set;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mAutoPlayButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 174
    new-instance v4, Lcom/google/android/apps/plus/views/ClickableImageButton;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/SkyjamCardView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/google/android/apps/plus/views/SkyjamCardView;->sPlayOverlayBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7, p0}, Lcom/google/android/apps/plus/views/ClickableImageButton;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;)V

    iput-object v4, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mAutoPlayButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    .line 176
    iget-object v4, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mAutoPlayButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    add-int v5, p1, v0

    add-int v6, p2, v0

    sget v7, Lcom/google/android/apps/plus/views/SkyjamCardView;->sSkyjamMediaDimension:I

    add-int/2addr v6, v7

    sget-object v7, Lcom/google/android/apps/plus/views/SkyjamCardView;->sPlayOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/plus/views/ClickableImageButton;->setPosition(II)V

    .line 178
    iget-object v4, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mClickableItems:Ljava/util/Set;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mAutoPlayButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_64
    sget v4, Lcom/google/android/apps/plus/views/SkyjamCardView;->sSkyjamMediaBorderDimension:I

    sget v5, Lcom/google/android/apps/plus/views/SkyjamCardView;->sContentXPadding:I

    add-int/2addr v4, v5

    add-int/2addr p1, v4

    .line 182
    sget v4, Lcom/google/android/apps/plus/views/SkyjamCardView;->sSkyjamMediaBorderDimension:I

    sget v5, Lcom/google/android/apps/plus/views/SkyjamCardView;->sContentXPadding:I

    add-int/2addr v4, v5

    sub-int/2addr p3, v4

    .line 184
    iget-object v4, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9d

    .line 185
    sub-int v4, v1, p2

    sget-object v5, Lcom/google/android/apps/plus/views/SkyjamCardView;->sTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    sget-object v6, Lcom/google/android/apps/plus/views/SkyjamCardView;->sTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    div-int v2, v4, v5

    .line 187
    .local v2, maxLines:I
    if-lez v2, :cond_9d

    .line 188
    sget-object v4, Lcom/google/android/apps/plus/views/SkyjamCardView;->sTitleTextPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mTitle:Ljava/lang/String;

    invoke-static {v4, v5, p3, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->createConstrainedStaticLayout(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/text/StaticLayout;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mTitleLayout:Landroid/text/StaticLayout;

    .line 190
    iget-object v4, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mTitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    add-int/2addr p2, v4

    .line 194
    .end local v2           #maxLines:I
    :cond_9d
    iget-object v4, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mArtist:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ca

    .line 195
    sub-int v4, v1, p2

    sget-object v5, Lcom/google/android/apps/plus/views/SkyjamCardView;->sNonTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    sget-object v6, Lcom/google/android/apps/plus/views/SkyjamCardView;->sNonTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    div-int v2, v4, v5

    .line 197
    .restart local v2       #maxLines:I
    if-lez v2, :cond_ca

    .line 198
    sget-object v4, Lcom/google/android/apps/plus/views/SkyjamCardView;->sNonTitleTextPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mArtist:Ljava/lang/String;

    invoke-static {v4, v5, p3, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->createConstrainedStaticLayout(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/text/StaticLayout;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mArtistLayout:Landroid/text/StaticLayout;

    .line 200
    iget-object v4, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mArtistLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    add-int/2addr p2, v4

    .line 204
    .end local v2           #maxLines:I
    :cond_ca
    iget-object v4, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mAlbum:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f7

    .line 205
    sub-int v4, v1, p2

    sget-object v5, Lcom/google/android/apps/plus/views/SkyjamCardView;->sNonTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    sget-object v6, Lcom/google/android/apps/plus/views/SkyjamCardView;->sNonTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    div-int v2, v4, v5

    .line 207
    .restart local v2       #maxLines:I
    if-lez v2, :cond_f7

    .line 208
    sget-object v4, Lcom/google/android/apps/plus/views/SkyjamCardView;->sNonTitleTextPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mAlbum:Ljava/lang/String;

    invoke-static {v4, v5, p3, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->createConstrainedStaticLayout(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/text/StaticLayout;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mAlbumLayout:Landroid/text/StaticLayout;

    .line 210
    iget-object v4, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mAlbumLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    add-int/2addr p2, v4

    .line 215
    .end local v2           #maxLines:I
    :cond_f7
    sub-int v4, v1, p2

    sget-object v5, Lcom/google/android/apps/plus/views/SkyjamCardView;->sListenBuyTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    sget-object v6, Lcom/google/android/apps/plus/views/SkyjamCardView;->sListenBuyTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    div-int v2, v4, v5

    .line 217
    .restart local v2       #maxLines:I
    if-lez v2, :cond_125

    .line 218
    sget-object v4, Lcom/google/android/apps/plus/views/SkyjamCardView;->sListenBuyTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/SkyjamCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0801be

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p3, v2}, Lcom/google/android/apps/plus/util/TextPaintUtils;->createConstrainedStaticLayout(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/text/StaticLayout;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mListenBuyLayout:Landroid/text/StaticLayout;

    .line 220
    iget-object v4, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mListenBuyLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    add-int/2addr p2, v4

    .line 224
    :cond_125
    sget v4, Lcom/google/android/apps/plus/views/SkyjamCardView;->sSkyjamMediaBorderDimension:I

    sget v5, Lcom/google/android/apps/plus/views/SkyjamCardView;->sContentXPadding:I

    add-int/2addr v4, v5

    sub-int/2addr p1, v4

    .line 225
    sget v4, Lcom/google/android/apps/plus/views/SkyjamCardView;->sSkyjamMediaBorderDimension:I

    sget v5, Lcom/google/android/apps/plus/views/SkyjamCardView;->sContentXPadding:I

    add-int/2addr v4, v5

    add-int/2addr p3, v4

    .line 227
    sget v4, Lcom/google/android/apps/plus/views/SkyjamCardView;->sTopBorderPadding:I

    add-int/2addr v4, v1

    sget v5, Lcom/google/android/apps/plus/views/SkyjamCardView;->sYPadding:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, p1, v4, p3}, Lcom/google/android/apps/plus/views/SkyjamCardView;->createPlusOneBar(III)I

    .line 228
    invoke-virtual {p0, p1, v3, p3, p4}, Lcom/google/android/apps/plus/views/SkyjamCardView;->createMediaBottomArea(IIII)I

    .line 230
    return p4
.end method

.method public onClickableImageButtonClick(Lcom/google/android/apps/plus/views/ClickableImageButton;)V
    .registers 6
    .parameter "button"

    .prologue
    .line 308
    iget-object v2, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mAutoPlayButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    if-ne p1, v2, :cond_1b

    .line 309
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/SkyjamCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 310
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mActivityId:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getStreamOneUpActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 312
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "auto_play_music"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 313
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 315
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1b
    return-void
.end method

.method public onRecycle()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-super {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->onRecycle()V

    .line 146
    iput-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mTitle:Ljava/lang/String;

    .line 147
    iput-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mArtist:Ljava/lang/String;

    .line 148
    iput-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mAlbum:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mThumbnailUrl:Ljava/lang/String;

    .line 151
    iput-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mTitleLayout:Landroid/text/StaticLayout;

    .line 152
    iput-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mArtistLayout:Landroid/text/StaticLayout;

    .line 153
    iput-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mAlbumLayout:Landroid/text/StaticLayout;

    .line 154
    iput-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mListenBuyLayout:Landroid/text/StaticLayout;

    .line 155
    iput-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mMediaImage:Lcom/google/android/apps/plus/views/MediaImage;

    .line 156
    iput-object v0, p0, Lcom/google/android/apps/plus/views/SkyjamCardView;->mAutoPlayButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    .line 157
    return-void
.end method
