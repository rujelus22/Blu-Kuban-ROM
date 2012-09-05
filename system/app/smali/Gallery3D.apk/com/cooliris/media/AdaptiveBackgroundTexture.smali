.class public final Lcom/cooliris/media/AdaptiveBackgroundTexture;
.super Lcom/cooliris/media/Texture;
.source "AdaptiveBackgroundTexture.java"


# static fields
.field private static final KERNEL_NORM:[I


# instance fields
.field private mBaseTexture:Lcom/cooliris/media/Texture;

.field private final mHeight:I

.field private final mSource:Landroid/graphics/Bitmap;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 44
    const/16 v1, 0x900

    new-array v1, v1, [I

    sput-object v1, Lcom/cooliris/media/AdaptiveBackgroundTexture;->KERNEL_NORM:[I

    .line 62
    const/16 v0, 0x8ff

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_13

    .line 63
    sget-object v1, Lcom/cooliris/media/AdaptiveBackgroundTexture;->KERNEL_NORM:[I

    div-int/lit8 v2, v0, 0x9

    aput v2, v1, v0

    .line 62
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 65
    :cond_13
    return-void
.end method

.method public constructor <init>(Lcom/cooliris/media/Texture;II)V
    .registers 5
    .parameter "texture"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/cooliris/media/Texture;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/cooliris/media/AdaptiveBackgroundTexture;->mBaseTexture:Lcom/cooliris/media/Texture;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/media/AdaptiveBackgroundTexture;->mSource:Landroid/graphics/Bitmap;

    .line 77
    iput p2, p0, Lcom/cooliris/media/AdaptiveBackgroundTexture;->mWidth:I

    .line 78
    iput p3, p0, Lcom/cooliris/media/AdaptiveBackgroundTexture;->mHeight:I

    .line 79
    return-void
.end method

.method private static boxBlurFilter([I[IIII)V
    .registers 24
    .parameter "in"
    .parameter "out"
    .parameter "width"
    .parameter "height"
    .parameter "startFadeX"

    .prologue
    .line 172
    const/4 v7, 0x0

    .line 173
    .local v7, inPos:I
    add-int/lit8 v8, p2, -0x1

    .line 174
    .local v8, maxX:I
    const/16 v16, 0x0

    .local v16, y:I
    :goto_5
    move/from16 v0, v16

    move/from16 v1, p3

    if-ge v0, v1, :cond_ca

    .line 176
    const/4 v14, 0x0

    .line 177
    .local v14, red:I
    const/4 v5, 0x0

    .line 178
    .local v5, green:I
    const/4 v4, 0x0

    .line 179
    .local v4, blue:I
    const/4 v6, -0x4

    .local v6, i:I
    :goto_f
    const/16 v17, 0x4

    move/from16 v0, v17

    if-gt v6, v0, :cond_3b

    .line 180
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v6, v0, v8}, Lcom/cooliris/media/FloatUtils;->clamp(III)I

    move-result v17

    add-int v17, v17, v7

    aget v3, p0, v17

    .line 181
    .local v3, argb:I
    const/high16 v17, 0xff

    and-int v17, v17, v3

    shr-int/lit8 v17, v17, 0x10

    add-int v14, v14, v17

    .line 182
    const v17, 0xff00

    and-int v17, v17, v3

    shr-int/lit8 v17, v17, 0x8

    add-int v5, v5, v17

    .line 183
    and-int/lit16 v0, v3, 0xff

    move/from16 v17, v0

    add-int v4, v4, v17

    .line 179
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 186
    .end local v3           #argb:I
    :cond_3b
    move/from16 v0, v16

    move/from16 v1, p4

    if-ge v0, v1, :cond_b5

    const/16 v2, 0xff

    .line 189
    .local v2, alpha:I
    :goto_43
    move/from16 v11, v16

    .line 190
    .local v11, outPos:I
    const/4 v15, 0x0

    .local v15, x:I
    :goto_46
    move/from16 v0, p2

    if-eq v15, v0, :cond_c4

    .line 192
    shl-int/lit8 v17, v2, 0x18

    sget-object v18, Lcom/cooliris/media/AdaptiveBackgroundTexture;->KERNEL_NORM:[I

    aget v18, v18, v14

    shl-int/lit8 v18, v18, 0x10

    or-int v17, v17, v18

    sget-object v18, Lcom/cooliris/media/AdaptiveBackgroundTexture;->KERNEL_NORM:[I

    aget v18, v18, v5

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    sget-object v18, Lcom/cooliris/media/AdaptiveBackgroundTexture;->KERNEL_NORM:[I

    aget v18, v18, v4

    or-int v17, v17, v18

    aput v17, p1, v11

    .line 196
    add-int/lit8 v17, v15, -0x4

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v8}, Lcom/cooliris/media/FloatUtils;->clamp(III)I

    move-result v13

    .line 197
    .local v13, prevX:I
    add-int/lit8 v17, v15, 0x4

    add-int/lit8 v17, v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v8}, Lcom/cooliris/media/FloatUtils;->clamp(III)I

    move-result v10

    .line 198
    .local v10, nextX:I
    add-int v17, v7, v13

    aget v12, p0, v17

    .line 199
    .local v12, prevArgb:I
    add-int v17, v7, v10

    aget v9, p0, v17

    .line 200
    .local v9, nextArgb:I
    const/high16 v17, 0xff

    and-int v17, v17, v9

    const/high16 v18, 0xff

    and-int v18, v18, v12

    sub-int v17, v17, v18

    shr-int/lit8 v17, v17, 0x10

    add-int v14, v14, v17

    .line 201
    const v17, 0xff00

    and-int v17, v17, v9

    const v18, 0xff00

    and-int v18, v18, v12

    sub-int v17, v17, v18

    shr-int/lit8 v17, v17, 0x8

    add-int v5, v5, v17

    .line 202
    and-int/lit16 v0, v9, 0xff

    move/from16 v17, v0

    and-int/lit16 v0, v12, 0xff

    move/from16 v18, v0

    sub-int v17, v17, v18

    add-int v4, v4, v17

    .line 203
    add-int v11, v11, p3

    .line 190
    add-int/lit8 v15, v15, 0x1

    goto :goto_46

    .line 186
    .end local v2           #alpha:I
    .end local v9           #nextArgb:I
    .end local v10           #nextX:I
    .end local v11           #outPos:I
    .end local v12           #prevArgb:I
    .end local v13           #prevX:I
    .end local v15           #x:I
    :cond_b5
    sub-int v17, p3, v16

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    sub-int v18, p3, p4

    div-int v2, v17, v18

    goto :goto_43

    .line 205
    .restart local v2       #alpha:I
    .restart local v11       #outPos:I
    .restart local v15       #x:I
    :cond_c4
    add-int v7, v7, p2

    .line 174
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_5

    .line 207
    .end local v2           #alpha:I
    .end local v4           #blue:I
    .end local v5           #green:I
    .end local v6           #i:I
    .end local v11           #outPos:I
    .end local v14           #red:I
    .end local v15           #x:I
    :cond_ca
    return-void
.end method


# virtual methods
.method public isCached()Z
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method protected load(Lcom/cooliris/media/RenderView;)Landroid/graphics/Bitmap;
    .registers 26
    .parameter "view"

    .prologue
    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/AdaptiveBackgroundTexture;->mSource:Landroid/graphics/Bitmap;

    .line 96
    .local v2, source:Landroid/graphics/Bitmap;
    if-nez v2, :cond_1e

    .line 97
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/AdaptiveBackgroundTexture;->mBaseTexture:Lcom/cooliris/media/Texture;

    if-eqz v4, :cond_1b

    .line 98
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/AdaptiveBackgroundTexture;->mBaseTexture:Lcom/cooliris/media/Texture;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/cooliris/media/Texture;->load(Lcom/cooliris/media/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 99
    if-nez v2, :cond_1e

    .line 100
    const/16 v17, 0x0

    .line 168
    :goto_1a
    return-object v17

    .line 103
    :cond_1b
    const/16 v17, 0x0

    goto :goto_1a

    .line 106
    :cond_1e
    const/16 v4, 0x80

    invoke-static {v2, v4}, Lcom/cooliris/media/Utils;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 107
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 108
    .local v21, sourceWidth:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    .line 109
    .local v20, sourceHeight:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/cooliris/media/AdaptiveBackgroundTexture;->mWidth:I

    .line 110
    .local v12, destWidth:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/cooliris/media/AdaptiveBackgroundTexture;->mHeight:I

    .line 111
    .local v11, destHeight:I
    move/from16 v0, v21

    int-to-float v4, v0

    int-to-float v8, v12

    div-float v14, v4, v8

    .line 112
    .local v14, fitX:F
    move/from16 v0, v20

    int-to-float v4, v0

    int-to-float v8, v11

    div-float v15, v4, v8

    .line 118
    .local v15, fitY:F
    cmpg-float v4, v14, v15

    if-gez v4, :cond_bc

    .line 120
    move/from16 v5, v21

    .line 121
    .local v5, cropWidth:I
    int-to-float v4, v11

    mul-float/2addr v4, v14

    float-to-int v9, v4

    .line 122
    .local v9, cropHeight:I
    const/4 v6, 0x0

    .line 123
    .local v6, cropX:I
    sub-int v4, v20, v9

    div-int/lit8 v7, v4, 0x2

    .line 124
    .local v7, cropY:I
    const/high16 v4, 0x3f80

    div-float v19, v4, v14

    .line 135
    .local v19, scale:F
    :goto_52
    mul-int v16, v5, v9

    .line 136
    .local v16, numPixels:I
    move/from16 v0, v16

    new-array v3, v0, [I

    .line 137
    .local v3, in:[I
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 140
    .local v22, tmp:[I
    const/4 v4, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 149
    move-object/from16 v0, v22

    invoke-static {v3, v0, v5, v9, v5}, Lcom/cooliris/media/AdaptiveBackgroundTexture;->boxBlurFilter([I[IIII)V

    .line 150
    const/16 v4, 0x60

    move-object/from16 v0, v22

    invoke-static {v0, v3, v9, v5, v4}, Lcom/cooliris/media/AdaptiveBackgroundTexture;->boxBlurFilter([I[IIII)V

    .line 153
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v9, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 156
    .local v13, filtered:Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v11, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 157
    .local v17, output:Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 158
    .local v10, canvas:Landroid/graphics/Canvas;
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 159
    .local v18, paint:Landroid/graphics/Paint;
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 160
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 161
    new-instance v4, Landroid/graphics/LightingColorFilter;

    const v8, -0x555556

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-direct {v4, v8, v0}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 162
    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 163
    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v10, v13, v4, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 164
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 167
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cooliris/media/AdaptiveBackgroundTexture;->mBaseTexture:Lcom/cooliris/media/Texture;

    goto/16 :goto_1a

    .line 127
    .end local v3           #in:[I
    .end local v5           #cropWidth:I
    .end local v6           #cropX:I
    .end local v7           #cropY:I
    .end local v9           #cropHeight:I
    .end local v10           #canvas:Landroid/graphics/Canvas;
    .end local v13           #filtered:Landroid/graphics/Bitmap;
    .end local v16           #numPixels:I
    .end local v17           #output:Landroid/graphics/Bitmap;
    .end local v18           #paint:Landroid/graphics/Paint;
    .end local v19           #scale:F
    .end local v22           #tmp:[I
    :cond_bc
    int-to-float v4, v11

    mul-float/2addr v4, v15

    float-to-int v5, v4

    .line 128
    .restart local v5       #cropWidth:I
    move/from16 v9, v20

    .line 129
    .restart local v9       #cropHeight:I
    sub-int v4, v21, v5

    div-int/lit8 v6, v4, 0x2

    .line 130
    .restart local v6       #cropX:I
    const/4 v7, 0x0

    .line 131
    .restart local v7       #cropY:I
    const/high16 v4, 0x3f80

    div-float v19, v4, v15

    .restart local v19       #scale:F
    goto :goto_52
.end method

.method protected shouldQueue()Z
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method
