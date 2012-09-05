.class public abstract Lcom/cooliris/media/CanvasTexture;
.super Ljava/lang/Object;
.source "CanvasTexture.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private mCachedGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private mHeight:I

.field private mNeedsDraw:Z

.field private mNeedsResize:Z

.field private mNormalizedHeight:F

.field private mNormalizedWidth:F

.field private mTextureHeight:I

.field private mTextureId:I

.field private mTextureWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap$Config;)V
    .registers 5
    .parameter "bitmapConfig"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    .line 45
    iput-object v2, p0, Lcom/cooliris/media/CanvasTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 47
    iput-boolean v1, p0, Lcom/cooliris/media/CanvasTexture;->mNeedsDraw:Z

    .line 49
    iput-boolean v1, p0, Lcom/cooliris/media/CanvasTexture;->mNeedsResize:Z

    .line 51
    iput-object v2, p0, Lcom/cooliris/media/CanvasTexture;->mCachedGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 54
    iput-object p1, p0, Lcom/cooliris/media/CanvasTexture;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 55
    return-void
.end method


# virtual methods
.method public bind(Ljavax/microedition/khronos/opengles/GL11;)Z
    .registers 16
    .parameter "gl"

    .prologue
    .line 96
    if-nez p1, :cond_4

    .line 97
    const/4 v11, 0x0

    .line 182
    :goto_3
    return v11

    .line 100
    :cond_4
    if-eqz p1, :cond_13

    iget-object v11, p0, Lcom/cooliris/media/CanvasTexture;->mCachedGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    .line 101
    iput-object p1, p0, Lcom/cooliris/media/CanvasTexture;->mCachedGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 102
    invoke-virtual {p0}, Lcom/cooliris/media/CanvasTexture;->resetTexture()V

    .line 104
    :cond_13
    iget v10, p0, Lcom/cooliris/media/CanvasTexture;->mWidth:I

    .line 105
    .local v10, width:I
    iget v3, p0, Lcom/cooliris/media/CanvasTexture;->mHeight:I

    .line 106
    .local v3, height:I
    iget v7, p0, Lcom/cooliris/media/CanvasTexture;->mTextureId:I

    .line 107
    .local v7, textureId:I
    iget v9, p0, Lcom/cooliris/media/CanvasTexture;->mTextureWidth:I

    .line 108
    .local v9, textureWidth:I
    iget v6, p0, Lcom/cooliris/media/CanvasTexture;->mTextureHeight:I

    .line 109
    .local v6, textureHeight:I
    iget-object v1, p0, Lcom/cooliris/media/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    .line 110
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v0, p0, Lcom/cooliris/media/CanvasTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 112
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-boolean v11, p0, Lcom/cooliris/media/CanvasTexture;->mNeedsResize:Z

    if-nez v11, :cond_29

    iget v11, p0, Lcom/cooliris/media/CanvasTexture;->mTextureId:I

    if-nez v11, :cond_9f

    .line 114
    :cond_29
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/cooliris/media/CanvasTexture;->mNeedsDraw:Z

    .line 117
    invoke-static {v10}, Lcom/cooliris/media/Shared;->nextPowerOf2(I)I

    move-result v5

    .line 118
    .local v5, newTextureWidth:I
    invoke-static {v3}, Lcom/cooliris/media/Shared;->nextPowerOf2(I)I

    move-result v4

    .line 123
    .local v4, newTextureHeight:I
    if-ne v9, v5, :cond_3c

    if-ne v6, v4, :cond_3c

    iget v11, p0, Lcom/cooliris/media/CanvasTexture;->mTextureId:I

    if-nez v11, :cond_9f

    .line 126
    :cond_3c
    if-nez v7, :cond_7b

    .line 127
    const/4 v11, 0x1

    new-array v8, v11, [I

    .line 128
    .local v8, textureIdOut:[I
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-interface {p1, v11, v8, v12}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    .line 129
    const/4 v11, 0x0

    aget v7, v8, v11

    .line 130
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/cooliris/media/CanvasTexture;->mNeedsResize:Z

    .line 131
    iput v7, p0, Lcom/cooliris/media/CanvasTexture;->mTextureId:I

    .line 134
    const/16 v11, 0xde1

    invoke-interface {p1, v11, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 135
    const/16 v11, 0xde1

    const/16 v12, 0x2802

    const v13, 0x812f

    invoke-interface {p1, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 137
    const/16 v11, 0xde1

    const/16 v12, 0x2803

    const v13, 0x812f

    invoke-interface {p1, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 139
    const/16 v11, 0xde1

    const/16 v12, 0x2801

    const v13, 0x46180400

    invoke-interface {p1, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 141
    const/16 v11, 0xde1

    const/16 v12, 0x2800

    const v13, 0x46180400

    invoke-interface {p1, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 146
    .end local v8           #textureIdOut:[I
    :cond_7b
    move v9, v5

    .line 147
    move v6, v4

    .line 148
    iput v5, p0, Lcom/cooliris/media/CanvasTexture;->mTextureWidth:I

    .line 149
    iput v4, p0, Lcom/cooliris/media/CanvasTexture;->mTextureHeight:I

    .line 150
    int-to-float v11, v10

    int-to-float v12, v9

    div-float/2addr v11, v12

    iput v11, p0, Lcom/cooliris/media/CanvasTexture;->mNormalizedWidth:F

    .line 151
    int-to-float v11, v3

    int-to-float v12, v6

    div-float/2addr v11, v12

    iput v11, p0, Lcom/cooliris/media/CanvasTexture;->mNormalizedHeight:F

    .line 154
    if-eqz v0, :cond_90

    .line 155
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 156
    :cond_90
    if-lez v9, :cond_9f

    if-lez v6, :cond_9f

    .line 157
    iget-object v11, p0, Lcom/cooliris/media/CanvasTexture;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v6, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 159
    iput-object v0, p0, Lcom/cooliris/media/CanvasTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 165
    .end local v4           #newTextureHeight:I
    .end local v5           #newTextureWidth:I
    :cond_9f
    if-nez v7, :cond_a4

    .line 166
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 168
    :cond_a4
    const/16 v11, 0xde1

    invoke-interface {p1, v11, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 171
    iget-boolean v11, p0, Lcom/cooliris/media/CanvasTexture;->mNeedsDraw:Z

    if-eqz v11, :cond_d4

    .line 172
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/cooliris/media/CanvasTexture;->mNeedsDraw:Z

    .line 173
    invoke-virtual {p0, v1, v0, v10, v3}, Lcom/cooliris/media/CanvasTexture;->renderCanvas(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    .line 174
    const/4 v11, 0x4

    new-array v2, v11, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v2, v11

    const/4 v11, 0x1

    aput v3, v2, v11

    const/4 v11, 0x2

    aput v10, v2, v11

    const/4 v11, 0x3

    neg-int v12, v3

    aput v12, v2, v11

    .line 177
    .local v2, cropRect:[I
    const/16 v11, 0xde1

    const v12, 0x8b9d

    const/4 v13, 0x0

    invoke-interface {p1, v11, v12, v2, v13}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 178
    const/16 v11, 0xde1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v12, v0, v13}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 182
    .end local v2           #cropRect:[I
    :cond_d4
    const/4 v11, 0x1

    goto/16 :goto_3
.end method

.method public draw(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;II)V
    .registers 11
    .parameter "view"
    .parameter "gl"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 186
    invoke-virtual {p0, p2}, Lcom/cooliris/media/CanvasTexture;->bind(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 187
    int-to-float v1, p3

    int-to-float v2, p4

    const/4 v3, 0x0

    iget v0, p0, Lcom/cooliris/media/CanvasTexture;->mWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/cooliris/media/CanvasTexture;->mHeight:I

    int-to-float v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/cooliris/media/RenderView;->draw2D(FFFFF)V

    .line 189
    :cond_13
    return-void
.end method

.method public drawWithEffect(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;FFFFFF)V
    .registers 17
    .parameter "view"
    .parameter "gl"
    .parameter "x"
    .parameter "y"
    .parameter "anchorX"
    .parameter "anchorY"
    .parameter "alpha"
    .parameter "scale"

    .prologue
    .line 193
    invoke-virtual {p0, p2}, Lcom/cooliris/media/CanvasTexture;->bind(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 194
    iget v0, p0, Lcom/cooliris/media/CanvasTexture;->mWidth:I

    int-to-float v4, v0

    .line 195
    .local v4, width:F
    iget v0, p0, Lcom/cooliris/media/CanvasTexture;->mHeight:I

    int-to-float v5, v0

    .line 198
    .local v5, height:F
    const/high16 v0, 0x3f80

    cmpl-float v0, p8, v0

    if-eqz v0, :cond_26

    .line 199
    mul-float v0, p5, v4

    add-float v6, p3, v0

    .line 200
    .local v6, originX:F
    mul-float v0, p6, v5

    add-float v7, p4, v0

    .line 201
    .local v7, originY:F
    mul-float v4, v4, p8

    .line 202
    mul-float v5, v5, p8

    .line 203
    mul-float v0, p5, v4

    sub-float p3, v6, v0

    .line 204
    mul-float v0, p6, v5

    sub-float p4, v7, v0

    .line 208
    .end local v6           #originX:F
    .end local v7           #originY:F
    :cond_26
    const/high16 v0, 0x3f80

    cmpl-float v0, p7, v0

    if-eqz v0, :cond_2f

    .line 209
    invoke-virtual {p1, p7}, Lcom/cooliris/media/RenderView;->setAlpha(F)V

    .line 211
    :cond_2f
    const/4 v3, 0x0

    move-object v0, p1

    move v1, p3

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cooliris/media/RenderView;->draw2D(FFFFF)V

    .line 212
    const/high16 v0, 0x3f80

    cmpl-float v0, p7, v0

    if-eqz v0, :cond_3f

    .line 213
    invoke-virtual {p1}, Lcom/cooliris/media/RenderView;->resetColor()V

    .line 216
    .end local v4           #width:F
    .end local v5           #height:F
    :cond_3f
    return-void
.end method

.method public final getHeight()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/cooliris/media/CanvasTexture;->mHeight:I

    return v0
.end method

.method public final getWidth()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/cooliris/media/CanvasTexture;->mWidth:I

    return v0
.end method

.method protected abstract onSizeChanged()V
.end method

.method protected abstract renderCanvas(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V
.end method

.method public resetTexture()V
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/CanvasTexture;->mTextureId:I

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/CanvasTexture;->mNeedsResize:Z

    .line 91
    return-void
.end method

.method public final setNeedsDraw()V
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/CanvasTexture;->mNeedsDraw:Z

    .line 59
    return-void
.end method

.method public final setSize(II)V
    .registers 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, -0x1

    .line 78
    iput p1, p0, Lcom/cooliris/media/CanvasTexture;->mWidth:I

    .line 79
    iput p2, p0, Lcom/cooliris/media/CanvasTexture;->mHeight:I

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/CanvasTexture;->mNeedsResize:Z

    .line 81
    iput v1, p0, Lcom/cooliris/media/CanvasTexture;->mTextureWidth:I

    .line 82
    iput v1, p0, Lcom/cooliris/media/CanvasTexture;->mTextureHeight:I

    .line 83
    invoke-virtual {p0}, Lcom/cooliris/media/CanvasTexture;->onSizeChanged()V

    .line 84
    return-void
.end method
