.class public Lcom/google/android/apps/unveil/env/gl/NV21Quad;
.super Ljava/lang/Object;
.source "NV21Quad.java"


# instance fields
.field private final height:I

.field private nv21Data:Ljava/nio/ByteBuffer;

.field private final program:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

.field quad:Lcom/google/android/apps/unveil/env/gl/Polygon;

.field private final size:I

.field private final texCoords:Ljava/nio/FloatBuffer;

.field private final uvTex:Lcom/google/android/apps/unveil/env/gl/Texture;

.field private valid:Z

.field private final width:I

.field private final yTex:Lcom/google/android/apps/unveil/env/gl/Texture;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/env/gl/ShaderProgram;IIZ)V
    .registers 14
    .parameter "program"
    .parameter "width"
    .parameter "height"
    .parameter "rotate"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->program:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    .line 56
    iput p2, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->width:I

    .line 57
    iput p3, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->height:I

    .line 59
    const-wide/high16 v3, 0x4000

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->size:I

    .line 61
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x4000

    const/high16 v6, 0x4000

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/apps/unveil/env/gl/Polygon;->generateRect(FFFF)Lcom/google/android/apps/unveil/env/gl/Polygon;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->quad:Lcom/google/android/apps/unveil/env/gl/Polygon;

    .line 65
    int-to-float v3, p2

    iget v4, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->size:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 66
    .local v1, xRatio:F
    int-to-float v3, p3

    iget v4, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->size:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 68
    .local v2, yRatio:F
    if-eqz p4, :cond_88

    .line 70
    const/16 v3, 0x8

    new-array v0, v3, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v0, v3

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v0, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput v4, v0, v3

    const/4 v3, 0x4

    aput v1, v0, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v0, v3

    const/4 v3, 0x6

    aput v1, v0, v3

    const/4 v3, 0x7

    aput v2, v0, v3

    .line 76
    .local v0, texCoordData:[F
    invoke-static {v0}, Lcom/google/android/apps/unveil/env/gl/Utils;->generateFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->texCoords:Ljava/nio/FloatBuffer;

    .line 88
    :goto_66
    new-instance v3, Lcom/google/android/apps/unveil/env/gl/Texture;

    iget v4, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->size:I

    iget v5, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->size:I

    sget-object v6, Lcom/google/android/apps/unveil/env/gl/Texture$Format;->LUMINANCE:Lcom/google/android/apps/unveil/env/gl/Texture$Format;

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/apps/unveil/env/gl/Texture;-><init>(IILcom/google/android/apps/unveil/env/gl/Texture$Format;)V

    iput-object v3, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->yTex:Lcom/google/android/apps/unveil/env/gl/Texture;

    .line 89
    new-instance v3, Lcom/google/android/apps/unveil/env/gl/Texture;

    iget v4, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->size:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->size:I

    div-int/lit8 v5, v5, 0x2

    sget-object v6, Lcom/google/android/apps/unveil/env/gl/Texture$Format;->LUMINANCE_ALPHA:Lcom/google/android/apps/unveil/env/gl/Texture$Format;

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/apps/unveil/env/gl/Texture;-><init>(IILcom/google/android/apps/unveil/env/gl/Texture$Format;)V

    iput-object v3, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->uvTex:Lcom/google/android/apps/unveil/env/gl/Texture;

    .line 91
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->valid:Z

    .line 92
    return-void

    .line 79
    .end local v0           #texCoordData:[F
    :cond_88
    const/16 v3, 0x8

    new-array v0, v3, [F

    const/4 v3, 0x0

    aput v1, v0, v3

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v0, v3

    const/4 v3, 0x3

    aput v2, v0, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput v4, v0, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v0, v3

    const/4 v3, 0x6

    aput v1, v0, v3

    const/4 v3, 0x7

    const/4 v4, 0x0

    aput v4, v0, v3

    .line 85
    .restart local v0       #texCoordData:[F
    invoke-static {v0}, Lcom/google/android/apps/unveil/env/gl/Utils;->generateFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->texCoords:Ljava/nio/FloatBuffer;

    goto :goto_66
.end method


# virtual methods
.method public LoadNV21Data([B)V
    .registers 3
    .parameter "nV21data"

    .prologue
    .line 160
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->nv21Data:Ljava/nio/ByteBuffer;

    .line 161
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->release()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 150
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 152
    return-void

    .line 150
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getHeight()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->height:I

    return v0
.end method

.method getWidth()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->width:I

    return v0
.end method

.method public release()V
    .registers 2

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->valid:Z

    if-eqz v0, :cond_11

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->valid:Z

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->yTex:Lcom/google/android/apps/unveil/env/gl/Texture;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/gl/Texture;->release()V

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->uvTex:Lcom/google/android/apps/unveil/env/gl/Texture;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/gl/Texture;->release()V

    .line 143
    :cond_11
    return-void
.end method

.method public render()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->nv21Data:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_6

    .line 135
    :goto_5
    return-void

    .line 112
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->program:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->use()V

    .line 115
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->program:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    sget-object v2, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;->TEXUV:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->getAttribute(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;)I

    move-result v0

    .line 116
    .local v0, tPtr:I
    const/4 v1, 0x2

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->texCoords:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 117
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 120
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->nv21Data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->yTex:Lcom/google/android/apps/unveil/env/gl/Texture;

    const v2, 0x84c0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/Texture;->bindTU(I)V

    .line 122
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->yTex:Lcom/google/android/apps/unveil/env/gl/Texture;

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->nv21Data:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->width:I

    iget v5, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->height:I

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/apps/unveil/env/gl/Texture;->setData(Ljava/nio/ByteBuffer;II)V

    .line 125
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->nv21Data:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->width:I

    iget v4, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->height:I

    mul-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->uvTex:Lcom/google/android/apps/unveil/env/gl/Texture;

    const v2, 0x84c1

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/Texture;->bindTU(I)V

    .line 127
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->uvTex:Lcom/google/android/apps/unveil/env/gl/Texture;

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->nv21Data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget v4, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->width:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->height:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/apps/unveil/env/gl/Texture;->setData(Ljava/nio/ByteBuffer;II)V

    .line 129
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->program:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    sget-object v2, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->TEX_Y:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->getUniform(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;)I

    move-result v1

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 130
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->program:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    sget-object v2, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->TEX_UV:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->getUniform(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 133
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->quad:Lcom/google/android/apps/unveil/env/gl/Polygon;

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->program:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    sget-object v3, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;->VERTEX:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->getAttribute(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/Polygon;->bind(I)V

    .line 134
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/NV21Quad;->quad:Lcom/google/android/apps/unveil/env/gl/Polygon;

    sget-object v2, Lcom/google/android/apps/unveil/env/gl/Polygon$DrawMode;->SOLID:Lcom/google/android/apps/unveil/env/gl/Polygon$DrawMode;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/Polygon;->draw(Lcom/google/android/apps/unveil/env/gl/Polygon$DrawMode;)V

    goto/16 :goto_5
.end method
