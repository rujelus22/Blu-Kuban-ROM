.class public Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;
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

    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->mbTextureLoaded:Z

    .line 48
    const/4 v3, 0x1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->textures:[I

    .line 50
    const/16 v3, 0xc

    new-array v3, v3, [F

    fill-array-data v3, :array_8e

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->vertices:[F

    .line 58
    const/16 v3, 0x8

    new-array v3, v3, [F

    fill-array-data v3, :array_aa

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->texture:[F

    .line 66
    const/4 v3, 0x6

    new-array v3, v3, [S

    fill-array-data v3, :array_be

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->indices:[S

    .line 81
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->vertices:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 82
    .local v2, vbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 83
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 84
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->vertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->vertices:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 85
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 89
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->indices:[S

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 90
    .local v1, ibb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 91
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->indexBuffer:Ljava/nio/ShortBuffer;

    .line 92
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->indexBuffer:Ljava/nio/ShortBuffer;

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->indices:[S

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 93
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->indexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 95
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->texture:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 96
    .local v0, byteBuf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 97
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 98
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->textureBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->texture:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 99
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 101
    iput-object p2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->mName:Ljava/lang/String;

    .line 102
    return-void

    .line 50
    :array_8e
    .array-data 0x4
        0x0t 0x0t 0x0t 0xc2t
        0x0t 0x0t 0x0t 0xc0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x42t
        0x0t 0x0t 0x0t 0xc0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x42t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0xc2t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 58
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

    .line 111
    if-eqz p1, :cond_f

    .line 112
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->textures:[I

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 113
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->mbTextureLoaded:Z

    .line 114
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->textures:[I

    aput v2, v0, v2

    .line 116
    :cond_f
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

    .line 120
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->textures:[I

    invoke-interface {p1, v5, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 123
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->textures:[I

    invoke-interface {p1, v5, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 124
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 126
    .local v0, width:I
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->textures:[I

    aget v1, v1, v3

    invoke-interface {p1, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 127
    const/16 v1, 0x2800

    const v2, 0x46180400

    invoke-interface {p1, v4, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 128
    const/16 v1, 0x2801

    const/high16 v2, 0x4618

    invoke-interface {p1, v4, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 130
    invoke-static {v4, v3, p3, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 133
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 134
    const/4 p3, 0x0

    .line 136
    iput-boolean v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->mbTextureLoaded:Z

    .line 138
    return-void
.end method
