.class public Lcom/vlingo/client/asr/MicrophoneImageView;
.super Landroid/widget/ImageView;
.source "MicrophoneImageView.java"


# instance fields
.field private fillBitmap:Landroid/graphics/Bitmap;

.field private level:I

.field private micBitmap:Landroid/graphics/Bitmap;

.field private final mode:Landroid/graphics/PorterDuffXfermode;

.field private showFill:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-boolean v0, p0, Lcom/vlingo/client/asr/MicrophoneImageView;->showFill:Z

    .line 28
    iput v0, p0, Lcom/vlingo/client/asr/MicrophoneImageView;->level:I

    .line 30
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/vlingo/client/asr/MicrophoneImageView;->mode:Landroid/graphics/PorterDuffXfermode;

    .line 35
    invoke-virtual {p0}, Lcom/vlingo/client/asr/MicrophoneImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/asr/MicrophoneImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    return-void
.end method

.method private initBitmaps()V
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vlingo/client/asr/MicrophoneImageView;->micBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/vlingo/client/asr/MicrophoneImageView;->fillBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_22

    .line 44
    :cond_8
    invoke-virtual {p0}, Lcom/vlingo/client/asr/MicrophoneImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e9

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/asr/MicrophoneImageView;->micBitmap:Landroid/graphics/Bitmap;

    .line 45
    invoke-virtual {p0}, Lcom/vlingo/client/asr/MicrophoneImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020060

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/asr/MicrophoneImageView;->fillBitmap:Landroid/graphics/Bitmap;

    .line 47
    :cond_22
    return-void
.end method


# virtual methods
.method public isOpaque()Z
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 22
    .parameter "canvas"

    .prologue
    .line 98
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vlingo/client/asr/MicrophoneImageView;->showFill:Z

    if-eqz v1, :cond_a3

    .line 101
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 102
    .local v10, paint:Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/asr/MicrophoneImageView;->getWidth()I

    move-result v14

    .line 105
    .local v14, w:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vlingo/client/asr/MicrophoneImageView;->fillBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 106
    .local v15, wf:I
    sub-int v1, v15, v14

    neg-int v1, v1

    div-int/lit8 v16, v1, 0x2

    .line 107
    .local v16, xf:I
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/asr/MicrophoneImageView;->getHeight()I

    move-result v19

    .line 108
    .local v19, yfBot:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vlingo/client/asr/MicrophoneImageView;->fillBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v17, v1, 0x6

    .line 109
    .local v17, yRange:I
    div-int/lit8 v1, v17, 0x11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vlingo/client/asr/MicrophoneImageView;->level:I

    mul-int/2addr v1, v2

    sub-int v18, v19, v1

    .line 110
    .local v18, yf:I
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/asr/MicrophoneImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/asr/MicrophoneImageView;->micBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v13, v1, v2

    .line 113
    .local v13, scale:F
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/asr/MicrophoneImageView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/asr/MicrophoneImageView;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v12

    .line 120
    .local v12, sc:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vlingo/client/asr/MicrophoneImageView;->micBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v13

    float-to-int v8, v1

    .line 121
    .local v8, newW:I
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/asr/MicrophoneImageView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v8

    div-int/lit8 v9, v1, 0x2

    .line 122
    .local v9, newX:I
    new-instance v11, Landroid/graphics/Rect;

    const/4 v1, 0x0

    add-int v2, v9, v8

    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/asr/MicrophoneImageView;->getHeight()I

    move-result v3

    invoke-direct {v11, v9, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 123
    .local v11, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vlingo/client/asr/MicrophoneImageView;->micBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v11, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vlingo/client/asr/MicrophoneImageView;->mode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vlingo/client/asr/MicrophoneImageView;->fillBitmap:Landroid/graphics/Bitmap;

    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v0, v18

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 127
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 129
    .end local v8           #newW:I
    .end local v9           #newX:I
    .end local v10           #paint:Landroid/graphics/Paint;
    .end local v11           #r:Landroid/graphics/Rect;
    .end local v12           #sc:I
    .end local v13           #scale:F
    .end local v14           #w:I
    .end local v15           #wf:I
    .end local v16           #xf:I
    .end local v17           #yRange:I
    .end local v18           #yf:I
    .end local v19           #yfBot:I
    :cond_a3
    return-void
.end method

.method public preloadCache()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/vlingo/client/asr/MicrophoneImageView;->initBitmaps()V

    .line 76
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 51
    if-eqz p1, :cond_b

    .line 52
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/vlingo/client/asr/MicrophoneImageView;->setAlpha(I)V

    .line 57
    :goto_a
    return-void

    .line 55
    :cond_b
    const/16 v0, 0x4b

    invoke-virtual {p0, v0}, Lcom/vlingo/client/asr/MicrophoneImageView;->setAlpha(I)V

    goto :goto_a
.end method

.method public setRMSLevel(F)V
    .registers 4
    .parameter "rmsdB"

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, level:I
    float-to-int v1, p1

    add-int/lit8 v0, v1, -0x2b

    .line 87
    const/16 v1, 0x11

    if-le v0, v1, :cond_a

    .line 88
    const/16 v0, 0x11

    .line 89
    :cond_a
    if-gez v0, :cond_d

    .line 90
    const/4 v0, 0x0

    .line 92
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vlingo/client/asr/MicrophoneImageView;->showFill:Z

    .line 93
    iput v0, p0, Lcom/vlingo/client/asr/MicrophoneImageView;->level:I

    .line 94
    invoke-virtual {p0}, Lcom/vlingo/client/asr/MicrophoneImageView;->invalidate()V

    .line 95
    return-void
.end method

.method public setVisibility(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    if-nez p1, :cond_d

    .line 63
    invoke-direct {p0}, Lcom/vlingo/client/asr/MicrophoneImageView;->initBitmaps()V

    .line 64
    iput-boolean v0, p0, Lcom/vlingo/client/asr/MicrophoneImageView;->showFill:Z

    .line 65
    iput v0, p0, Lcom/vlingo/client/asr/MicrophoneImageView;->level:I

    .line 67
    :cond_d
    return-void
.end method
