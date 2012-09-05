.class public final Lcom/cooliris/media/LoadingLayer;
.super Lcom/cooliris/media/Layer;
.source "LoadingLayer.java"


# static fields
.field private static final PRELOAD_RESOURCES_ASYNC_SCALED:[I

.field private static final PRELOAD_RESOURCES_ASYNC_UNSCALED:[I


# instance fields
.field private mLoaded:Z

.field private final mOpacity:Lcom/cooliris/media/FloatAnim;

.field private mVertexBuffer:Ljava/nio/IntBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 35
    const/16 v0, 0xa

    new-array v0, v0, [I

    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f02007b

    aput v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f020014

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f02007c

    aput v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f02007d

    aput v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f020008

    aput v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f020080

    aput v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f020013

    aput v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f020012

    aput v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f020042

    aput v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f02004e

    aput v2, v0, v1

    sput-object v0, Lcom/cooliris/media/LoadingLayer;->PRELOAD_RESOURCES_ASYNC_UNSCALED:[I

    .line 42
    new-array v0, v3, [I

    sput-object v0, Lcom/cooliris/media/LoadingLayer;->PRELOAD_RESOURCES_ASYNC_SCALED:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 196
    invoke-direct {p0}, Lcom/cooliris/media/Layer;-><init>()V

    .line 190
    iput-boolean v5, p0, Lcom/cooliris/media/LoadingLayer;->mLoaded:Z

    .line 192
    new-instance v3, Lcom/cooliris/media/FloatAnim;

    const/high16 v4, 0x3f80

    invoke-direct {v3, v4}, Lcom/cooliris/media/FloatAnim;-><init>(F)V

    iput-object v3, p0, Lcom/cooliris/media/LoadingLayer;->mOpacity:Lcom/cooliris/media/FloatAnim;

    .line 198
    const/high16 v0, 0x2710

    .line 199
    .local v0, dimension:I
    const/16 v3, 0xc

    new-array v2, v3, [I

    neg-int v3, v0

    aput v3, v2, v5

    const/4 v3, 0x1

    neg-int v4, v0

    aput v4, v2, v3

    const/4 v3, 0x2

    aput v5, v2, v3

    const/4 v3, 0x3

    aput v0, v2, v3

    const/4 v3, 0x4

    neg-int v4, v0

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v5, v2, v3

    const/4 v3, 0x6

    neg-int v4, v0

    aput v4, v2, v3

    const/4 v3, 0x7

    aput v0, v2, v3

    const/16 v3, 0x8

    aput v5, v2, v3

    const/16 v3, 0x9

    aput v0, v2, v3

    const/16 v3, 0xa

    aput v0, v2, v3

    const/16 v3, 0xb

    aput v5, v2, v3

    .line 203
    .local v2, vertices:[I
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 204
    .local v1, vertexByteBuffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 205
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/cooliris/media/LoadingLayer;->mVertexBuffer:Ljava/nio/IntBuffer;

    .line 206
    iget-object v3, p0, Lcom/cooliris/media/LoadingLayer;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 207
    iget-object v3, p0, Lcom/cooliris/media/LoadingLayer;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 208
    return-void
.end method


# virtual methods
.method public generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V
    .registers 7
    .parameter "view"
    .parameter "lists"

    .prologue
    .line 217
    iget-object v2, p2, Lcom/cooliris/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v1, Lcom/cooliris/media/LoadingLayer;->PRELOAD_RESOURCES_ASYNC_UNSCALED:[I

    .line 221
    .local v1, textures:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    array-length v2, v1

    if-eq v0, v2, :cond_18

    .line 222
    aget v2, v1, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/cooliris/media/RenderView;->getResource(IZ)Lcom/cooliris/media/ResourceTexture;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/cooliris/media/RenderView;->loadTexture(Lcom/cooliris/media/Texture;)V

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 224
    :cond_18
    sget-object v1, Lcom/cooliris/media/LoadingLayer;->PRELOAD_RESOURCES_ASYNC_SCALED:[I

    .line 225
    const/4 v0, 0x0

    :goto_1b
    array-length v2, v1

    if-eq v0, v2, :cond_2a

    .line 226
    aget v2, v1, v0

    invoke-virtual {p1, v2}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/cooliris/media/RenderView;->loadTexture(Lcom/cooliris/media/Texture;)V

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 228
    :cond_2a
    return-void
.end method

.method public renderBlended(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 13
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 233
    iget-boolean v5, p0, Lcom/cooliris/media/LoadingLayer;->mLoaded:Z

    if-nez v5, :cond_3e

    .line 235
    invoke-virtual {p1}, Lcom/cooliris/media/RenderView;->processAllTextures()V

    .line 238
    sget-object v4, Lcom/cooliris/media/LoadingLayer;->PRELOAD_RESOURCES_ASYNC_SCALED:[I

    .line 239
    .local v4, textures:[I
    const/4 v1, 0x1

    .line 240
    .local v1, complete:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b
    array-length v5, v4

    if-eq v3, v5, :cond_1a

    .line 241
    aget v5, v4, v3

    invoke-virtual {p1, v5}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v5

    iget v5, v5, Lcom/cooliris/media/Texture;->mState:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_87

    .line 242
    const/4 v1, 0x0

    .line 246
    :cond_1a
    sget-object v4, Lcom/cooliris/media/LoadingLayer;->PRELOAD_RESOURCES_ASYNC_UNSCALED:[I

    .line 247
    const/4 v3, 0x0

    :goto_1d
    array-length v5, v4

    if-eq v3, v5, :cond_2d

    .line 248
    aget v5, v4, v3

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lcom/cooliris/media/RenderView;->getResource(IZ)Lcom/cooliris/media/ResourceTexture;

    move-result-object v5

    iget v5, v5, Lcom/cooliris/media/Texture;->mState:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_8a

    .line 249
    const/4 v1, 0x0

    .line 253
    :cond_2d
    if-eqz v1, :cond_3e

    .line 254
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/cooliris/media/LoadingLayer;->mLoaded:Z

    .line 255
    iget-object v5, p0, Lcom/cooliris/media/LoadingLayer;->mOpacity:Lcom/cooliris/media/FloatAnim;

    const/4 v6, 0x0

    const/high16 v7, 0x3f00

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/cooliris/media/FloatAnim;->animateValue(FFJ)V

    .line 260
    .end local v1           #complete:Z
    .end local v3           #i:I
    .end local v4           #textures:[I
    :cond_3e
    iget-object v5, p0, Lcom/cooliris/media/LoadingLayer;->mOpacity:Lcom/cooliris/media/FloatAnim;

    invoke-virtual {p1}, Lcom/cooliris/media/RenderView;->getFrameTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/cooliris/media/FloatAnim;->getValue(J)F

    move-result v0

    .line 261
    .local v0, alpha:F
    const v5, 0x3b83126f

    cmpl-float v5, v0, v5

    if-lez v5, :cond_8d

    .line 262
    const v5, 0x3dcccccd

    mul-float v2, v5, v0

    .line 263
    .local v2, gray:F
    const/16 v5, 0x2300

    const/16 v6, 0x2200

    const/high16 v7, 0x4604

    invoke-interface {p2, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 264
    invoke-interface {p2, v2, v2, v2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 265
    const/4 v5, 0x3

    const/16 v6, 0x140c

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/cooliris/media/LoadingLayer;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p2, v5, v6, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 266
    const/16 v5, 0xde1

    invoke-interface {p2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 267
    const/16 v5, 0xb71

    invoke-interface {p2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 268
    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-interface {p2, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 269
    const/16 v5, 0xb71

    invoke-interface {p2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 270
    const/16 v5, 0xde1

    invoke-interface {p2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 271
    invoke-virtual {p1}, Lcom/cooliris/media/RenderView;->resetColor()V

    .line 276
    .end local v2           #gray:F
    :goto_86
    return-void

    .line 240
    .end local v0           #alpha:F
    .restart local v1       #complete:Z
    .restart local v3       #i:I
    .restart local v4       #textures:[I
    :cond_87
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 247
    :cond_8a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 274
    .end local v1           #complete:Z
    .end local v3           #i:I
    .end local v4           #textures:[I
    .restart local v0       #alpha:F
    :cond_8d
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/cooliris/media/LoadingLayer;->setHidden(Z)V

    goto :goto_86
.end method

.method reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 279
    iput-boolean v2, p0, Lcom/cooliris/media/LoadingLayer;->mLoaded:Z

    .line 280
    iget-object v0, p0, Lcom/cooliris/media/LoadingLayer;->mOpacity:Lcom/cooliris/media/FloatAnim;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/cooliris/media/FloatAnim;->setValue(F)V

    .line 281
    invoke-virtual {p0, v2}, Lcom/cooliris/media/LoadingLayer;->setHidden(Z)V

    .line 282
    return-void
.end method
