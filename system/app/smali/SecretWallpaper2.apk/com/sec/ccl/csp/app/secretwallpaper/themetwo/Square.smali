.class public Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;
.super Ljava/lang/Object;
.source "Square.java"


# instance fields
.field private indexBuffer:Ljava/nio/ShortBuffer;

.field private indices:[S

.field private mName:Ljava/lang/String;

.field private mbTextureLoaded:Z

.field private texture:[F

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field private textureR:[F

.field private textures:[I

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private vertices:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .parameter "context"
    .parameter "strName"

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->mbTextureLoaded:Z

    .line 48
    const/4 v2, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->textures:[I

    .line 50
    const/16 v2, 0xc

    new-array v2, v2, [F

    fill-array-data v2, :array_74

    iput-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->vertices:[F

    .line 58
    new-array v2, v3, [F

    fill-array-data v2, :array_90

    iput-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->texture:[F

    .line 63
    new-array v2, v3, [F

    fill-array-data v2, :array_a4

    iput-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->textureR:[F

    .line 69
    const/4 v2, 0x6

    new-array v2, v2, [S

    fill-array-data v2, :array_b8

    iput-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->indices:[S

    .line 88
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->vertices:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 89
    .local v1, vbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 90
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 91
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->vertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->vertices:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 92
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->indices:[S

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 97
    .local v0, ibb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 98
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->indexBuffer:Ljava/nio/ShortBuffer;

    .line 99
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->indexBuffer:Ljava/nio/ShortBuffer;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->indices:[S

    invoke-virtual {v2, v3}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 100
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->indexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    iput-object p2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->mName:Ljava/lang/String;

    .line 104
    return-void

    .line 50
    nop

    :array_74
    .array-data 0x4
        0x0t 0x0t 0x0t 0xc1t
        0x0t 0x0t 0x0t 0xc1t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0xc1t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0xc1t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 58
    :array_90
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

    .line 63
    :array_a4
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 69
    :array_b8
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

    .line 108
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->mbTextureLoaded:Z

    if-eqz v0, :cond_13

    .line 110
    if-eqz p1, :cond_13

    .line 111
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->textures:[I

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 112
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->mbTextureLoaded:Z

    .line 113
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->textures:[I

    aput v2, v0, v2

    .line 117
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

    .line 187
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->mbTextureLoaded:Z

    if-eqz v0, :cond_56

    .line 190
    invoke-interface {p1, p2, p3, p4, p5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 193
    const/16 v0, 0x901

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 195
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 197
    const/16 v0, 0x405

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 199
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->textures:[I

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 202
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 203
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 206
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 207
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 209
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->indices:[S

    array-length v1, v1

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->indexBuffer:Ljava/nio/ShortBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 212
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 213
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 215
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 217
    invoke-interface {p1, v4, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 219
    :cond_56
    return-void
.end method

.method public getTextureLoaded()Z
    .registers 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->mbTextureLoaded:Z

    return v0
.end method

.method public loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V
    .registers 11
    .parameter "gl"
    .parameter "context"
    .parameter "texture_id"
    .parameter "bBlur"

    .prologue
    .line 124
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZZ)V

    .line 125
    return-void
.end method

.method public loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZZ)V
    .registers 14
    .parameter "gl"
    .parameter "context"
    .parameter "texture_id"
    .parameter "bBlur"
    .parameter "bReflect"

    .prologue
    .line 130
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->textures:[I

    const/4 v7, 0x0

    invoke-interface {p1, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 132
    if-eqz p5, :cond_61

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->textureR:[F

    .line 133
    .local v4, tex:[F
    :goto_b
    array-length v5, v4

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 134
    .local v1, byteBuf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 135
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 136
    iget-object v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 137
    iget-object v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->textureBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 139
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 142
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    if-ne p4, v5, :cond_35

    .line 143
    const/4 v5, 0x2

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 146
    :cond_35
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 147
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_64

    .line 148
    const-string v5, "SecretWallpaper"

    const-string v6, "InputStream is null "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v5, "SecretWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Object Name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_60
    return-void

    .line 132
    .end local v1           #byteBuf:Ljava/nio/ByteBuffer;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #tex:[F
    :cond_61
    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->texture:[F

    goto :goto_b

    .line 153
    .restart local v1       #byteBuf:Ljava/nio/ByteBuffer;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #tex:[F
    :cond_64
    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_8d

    .line 155
    const-string v5, "SecretWallpaper"

    const-string v6, "bitmap is null "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v5, "SecretWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Object Name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 161
    :cond_8d
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->textures:[I

    const/4 v7, 0x0

    invoke-interface {p1, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 164
    const/16 v5, 0xde1

    iget-object v6, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->textures:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-interface {p1, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 165
    const/16 v5, 0xde1

    const/16 v6, 0x2800

    const v7, 0x46180400

    invoke-interface {p1, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 166
    const/16 v5, 0xde1

    const/16 v6, 0x2801

    const/high16 v7, 0x4618

    invoke-interface {p1, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 168
    const/16 v5, 0xde1

    const/16 v6, 0x2802

    const v7, 0x47012f00

    invoke-interface {p1, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 169
    const/16 v5, 0xde1

    const/16 v6, 0x2803

    const v7, 0x47012f00

    invoke-interface {p1, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 171
    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v0, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 174
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 175
    const/4 v0, 0x0

    .line 177
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->mbTextureLoaded:Z

    goto :goto_60
.end method
