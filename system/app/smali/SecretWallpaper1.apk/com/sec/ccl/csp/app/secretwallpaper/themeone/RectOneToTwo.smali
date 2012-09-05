.class public Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;
.super Ljava/lang/Object;
.source "RectOneToTwo.java"


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

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->mbTextureLoaded:Z

    .line 48
    const/4 v3, 0x1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->textures:[I

    .line 51
    const/16 v3, 0xc

    new-array v3, v3, [F

    fill-array-data v3, :array_8e

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->vertices:[F

    .line 59
    const/16 v3, 0x8

    new-array v3, v3, [F

    fill-array-data v3, :array_aa

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->texture:[F

    .line 67
    const/4 v3, 0x6

    new-array v3, v3, [S

    fill-array-data v3, :array_be

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->indices:[S

    .line 83
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->vertices:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 84
    .local v2, vbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 85
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 86
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->vertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->vertices:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 87
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 91
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->indices:[S

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 92
    .local v1, ibb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->indexBuffer:Ljava/nio/ShortBuffer;

    .line 94
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->indexBuffer:Ljava/nio/ShortBuffer;

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->indices:[S

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 95
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->indexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->texture:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 98
    .local v0, byteBuf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 99
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 100
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->textureBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->texture:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 101
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 103
    iput-object p2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->mName:Ljava/lang/String;

    .line 104
    return-void

    .line 51
    :array_8e
    .array-data 0x4
        0x0t 0x0t 0x80t 0xc0t
        0x0t 0x0t 0x0t 0xc0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x0t 0xc0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xc0t
        0x0t 0x0t 0x0t 0x40t
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

    .line 67
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

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->textures:[I

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 113
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->mbTextureLoaded:Z

    .line 114
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->textures:[I

    aput v2, v0, v2

    .line 116
    :cond_f
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

    .line 166
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->mbTextureLoaded:Z

    if-nez v0, :cond_f

    .line 202
    :goto_e
    return-void

    .line 170
    :cond_f
    invoke-interface {p1, p2, p3, p4, p5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 172
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->textures:[I

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 175
    const/16 v0, 0x901

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 177
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 179
    const/16 v0, 0x405

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 183
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 185
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 188
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 190
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 192
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->indices:[S

    array-length v1, v1

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->indexBuffer:Ljava/nio/ShortBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 195
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 196
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 198
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 200
    invoke-interface {p1, v4, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    goto :goto_e
.end method

.method public loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V
    .registers 13
    .parameter "gl"
    .parameter "context"
    .parameter "texture_id"
    .parameter "bBlur"

    .prologue
    const v7, 0x46180400

    const/16 v6, 0xde1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 121
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->textures:[I

    invoke-interface {p1, v5, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 123
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 125
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    if-ne p4, v5, :cond_16

    .line 126
    const/4 v3, 0x2

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 129
    :cond_16
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 130
    .local v1, is:Ljava/io/InputStream;
    if-nez v1, :cond_42

    .line 131
    const-string v3, "SecretWallpaper"

    const-string v4, "InputStream is null "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v3, "SecretWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object Name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_41
    return-void

    .line 136
    :cond_42
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 137
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_6b

    .line 138
    const-string v3, "SecretWallpaper"

    const-string v4, "bitmap is null "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v3, "SecretWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object Name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 144
    :cond_6b
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->textures:[I

    invoke-interface {p1, v5, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 147
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->textures:[I

    aget v3, v3, v4

    invoke-interface {p1, v6, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 148
    const/16 v3, 0x2800

    invoke-interface {p1, v6, v3, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 149
    const/16 v3, 0x2801

    invoke-interface {p1, v6, v3, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 150
    invoke-static {v6, v4, v0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 153
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    const/4 v0, 0x0

    .line 156
    iput-boolean v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->mbTextureLoaded:Z

    goto :goto_41
.end method
