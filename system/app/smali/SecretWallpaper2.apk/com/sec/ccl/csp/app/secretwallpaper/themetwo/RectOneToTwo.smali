.class public Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;
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

    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->mbTextureLoaded:Z

    .line 49
    const/4 v3, 0x1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->textures:[I

    .line 51
    const/16 v3, 0xc

    new-array v3, v3, [F

    fill-array-data v3, :array_8e

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->vertices:[F

    .line 59
    const/16 v3, 0x8

    new-array v3, v3, [F

    fill-array-data v3, :array_aa

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->texture:[F

    .line 66
    const/4 v3, 0x6

    new-array v3, v3, [S

    fill-array-data v3, :array_be

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->indices:[S

    .line 82
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->vertices:[F

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

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 85
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->vertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->vertices:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 86
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->indices:[S

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

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->indexBuffer:Ljava/nio/ShortBuffer;

    .line 93
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->indexBuffer:Ljava/nio/ShortBuffer;

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->indices:[S

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 94
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->indexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->texture:[F

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

    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 99
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->textureBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->texture:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 100
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    iput-object p2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->mName:Ljava/lang/String;

    .line 103
    return-void

    .line 51
    :array_8e
    .array-data 0x4
        0x0t 0x0t 0x0t 0xc0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0xc0t
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
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->mbTextureLoaded:Z

    if-eqz v0, :cond_13

    .line 112
    if-eqz p1, :cond_13

    .line 113
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->textures:[I

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 114
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->mbTextureLoaded:Z

    .line 115
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->textures:[I

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

    .line 172
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->mbTextureLoaded:Z

    if-eqz v0, :cond_56

    .line 174
    invoke-interface {p1, p2, p3, p4, p5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 176
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->textures:[I

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 179
    const/16 v0, 0x901

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 181
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 183
    const/16 v0, 0x405

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 187
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 189
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 192
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 194
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 196
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->indices:[S

    array-length v1, v1

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->indexBuffer:Ljava/nio/ShortBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 199
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 200
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 202
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 204
    invoke-interface {p1, v4, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 206
    :cond_56
    return-void
.end method

.method public loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V
    .registers 14
    .parameter "gl"
    .parameter "context"
    .parameter "texture_id"
    .parameter "bBlur"

    .prologue
    const v8, 0x47012f00

    const v7, 0x46180400

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xde1

    .line 124
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->textures:[I

    invoke-interface {p1, v6, v3, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 126
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 129
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    if-ne p4, v6, :cond_19

    .line 130
    const/4 v3, 0x2

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 133
    :cond_19
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 134
    .local v1, is:Ljava/io/InputStream;
    if-nez v1, :cond_45

    .line 135
    const-string v3, "SecretWallpaper"

    const-string v4, "InputStream is null "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v3, "SecretWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object Name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_44
    return-void

    .line 140
    :cond_45
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_6e

    .line 142
    const-string v3, "SecretWallpaper"

    const-string v4, "bitmap is null "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v3, "SecretWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object Name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 148
    :cond_6e
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->textures:[I

    invoke-interface {p1, v6, v3, v5}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 151
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->textures:[I

    aget v3, v3, v5

    invoke-interface {p1, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 152
    const/16 v3, 0x2800

    invoke-interface {p1, v4, v3, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 153
    const/16 v3, 0x2801

    invoke-interface {p1, v4, v3, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 154
    const/16 v3, 0x2802

    invoke-interface {p1, v4, v3, v8}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 155
    const/16 v3, 0x2803

    invoke-interface {p1, v4, v3, v8}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 156
    invoke-static {v4, v5, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 159
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 160
    const/4 v0, 0x0

    .line 162
    iput-boolean v6, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->mbTextureLoaded:Z

    goto :goto_44
.end method
