.class public Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;
.super Ljava/lang/Object;
.source "RectOneToSixteen.java"


# instance fields
.field private indexBuffer:Ljava/nio/ShortBuffer;

.field private indices:[S

.field private mName:Ljava/lang/String;

.field private mbTextureLoaded:Z

.field private texture:[F

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field private textures:[I

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private vertices:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .parameter "context"
    .parameter "strName"

    .prologue
    const/4 v5, 0x0

    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->mbTextureLoaded:Z

    .line 49
    const/4 v3, 0x1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->textures:[I

    .line 51
    const/16 v3, 0xc

    new-array v3, v3, [F

    fill-array-data v3, :array_8e

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->vertices:[F

    .line 59
    const/16 v3, 0x8

    new-array v3, v3, [F

    fill-array-data v3, :array_aa

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->texture:[F

    .line 66
    const/4 v3, 0x6

    new-array v3, v3, [S

    fill-array-data v3, :array_be

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->indices:[S

    .line 82
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->vertices:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 83
    .local v2, vbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 85
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->vertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->vertices:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 86
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->indices:[S

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 91
    .local v1, ibb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->indexBuffer:Ljava/nio/ShortBuffer;

    .line 93
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->indexBuffer:Ljava/nio/ShortBuffer;

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->indices:[S

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 94
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->indexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->texture:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 97
    .local v0, byteBuf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 98
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 99
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->textureBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->texture:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 100
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    iput-object p2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->mName:Ljava/lang/String;

    .line 103
    return-void

    .line 51
    :array_8e
    .array-data 0x4
        0x0t 0x0t 0x80t 0xc1t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x41t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x41t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xc1t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 59
    :array_aa
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 66
    :array_be
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x0t 0x0t
        0x2t 0x0t
        0x3t 0x0t
    .end array-data
.end method


# virtual methods
.method public deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V
    .registers 6
    .parameter "gl"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->mbTextureLoaded:Z

    if-eqz v0, :cond_13

    .line 112
    if-eqz p1, :cond_13

    .line 113
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->textures:[I

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 114
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->mbTextureLoaded:Z

    .line 115
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->textures:[I

    aput v2, v0, v2

    .line 119
    :cond_13
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .registers 13
    .parameter "gl"
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "opacity"

    .prologue
    const v6, 0x8074

    const/16 v3, 0x1406

    const/16 v5, 0xb44

    const/4 v2, 0x0

    const/high16 v4, 0x3f80

    .line 194
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->mbTextureLoaded:Z

    if-eqz v0, :cond_56

    .line 196
    invoke-interface {p1, p2, p3, p4, p5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 198
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->textures:[I

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 201
    const/16 v0, 0x901

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 203
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 205
    const/16 v0, 0x405

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 209
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 211
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 214
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 216
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 218
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->indices:[S

    array-length v1, v1

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->indexBuffer:Ljava/nio/ShortBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 221
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 222
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 224
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 226
    invoke-interface {p1, v4, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 228
    :cond_56
    return-void
.end method

.method public loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .registers 10
    .parameter "gl"
    .parameter "context"
    .parameter "bitmap"

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0xde1

    const/4 v3, 0x0

    .line 124
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->textures:[I

    invoke-interface {p1, v5, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 127
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->textures:[I

    invoke-interface {p1, v5, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 128
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 130
    .local v0, width:I
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->textures:[I

    aget v1, v1, v3

    invoke-interface {p1, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 131
    const/16 v1, 0x2800

    const v2, 0x46180400

    invoke-interface {p1, v4, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 132
    const/16 v1, 0x2801

    const/high16 v2, 0x4618

    invoke-interface {p1, v4, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 134
    invoke-static {v4, v3, p3, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 137
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 138
    const/4 p3, 0x0

    .line 140
    iput-boolean v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->mbTextureLoaded:Z

    .line 142
    return-void
.end method
