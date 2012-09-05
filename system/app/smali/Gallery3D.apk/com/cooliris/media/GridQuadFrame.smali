.class final Lcom/cooliris/media/GridQuadFrame;
.super Ljava/lang/Object;
.source "GridQuadFrame.java"


# instance fields
.field private mH:I

.field private mIndexBuffer:Ljava/nio/CharBuffer;

.field private mIndexBufferIndex:I

.field private mSecTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mSecTextureCoordBufferIndex:I

.field private mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mTextureCoordBufferIndex:I

.field private mVertBufferIndex:I

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mW:I


# direct methods
.method public constructor <init>()V
    .registers 15

    .prologue
    const/4 v13, 0x6

    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v10, 0x0

    const/16 v9, 0xe

    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v5, 0x4

    .line 97
    .local v5, vertsAcross:I
    const/4 v6, 0x4

    .line 98
    .local v6, vertsDown:I
    iput v5, p0, Lcom/cooliris/media/GridQuadFrame;->mW:I

    .line 99
    iput v6, p0, Lcom/cooliris/media/GridQuadFrame;->mH:I

    .line 100
    mul-int v4, v5, v6

    .line 101
    .local v4, size:I
    const/4 v1, 0x4

    .line 102
    .local v1, FLOAT_SIZE:I
    const/4 v0, 0x2

    .line 103
    .local v0, CHAR_SIZE:I
    const/16 v7, 0xc0

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/cooliris/media/GridQuadFrame;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 105
    const/16 v7, 0x80

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/cooliris/media/GridQuadFrame;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 107
    const/16 v7, 0x80

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/cooliris/media/GridQuadFrame;->mSecTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 110
    const/16 v3, 0x19

    .line 111
    .local v3, indexCount:I
    const/16 v7, 0x32

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/cooliris/media/GridQuadFrame;->mIndexBuffer:Ljava/nio/CharBuffer;

    .line 120
    iget-object v2, p0, Lcom/cooliris/media/GridQuadFrame;->mIndexBuffer:Ljava/nio/CharBuffer;

    .line 121
    .local v2, buffer:Ljava/nio/CharBuffer;
    invoke-virtual {v2, v10, v10}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 122
    const/4 v7, 0x1

    invoke-virtual {v2, v7, v11}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 123
    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 124
    const/4 v7, 0x3

    invoke-virtual {v2, v7, v12}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 125
    const/4 v7, 0x2

    invoke-virtual {v2, v11, v7}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 126
    invoke-virtual {v2, v12, v13}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 127
    const/4 v7, 0x3

    invoke-virtual {v2, v13, v7}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 128
    const/4 v7, 0x7

    const/4 v8, 0x7

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 129
    const/16 v7, 0x8

    const/16 v8, 0xb

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 130
    const/16 v7, 0x9

    invoke-virtual {v2, v7, v13}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 131
    const/16 v7, 0xa

    const/16 v8, 0xa

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 132
    const/16 v7, 0xb

    invoke-virtual {v2, v7, v9}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 133
    const/16 v7, 0xc

    const/16 v8, 0xb

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 134
    const/16 v7, 0xd

    const/16 v8, 0xf

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 135
    const/16 v7, 0xf

    invoke-virtual {v2, v9, v7}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 136
    const/16 v7, 0xf

    invoke-virtual {v2, v7, v9}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 137
    const/16 v7, 0x10

    invoke-virtual {v2, v7, v9}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 138
    const/16 v7, 0x11

    const/16 v8, 0xa

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 139
    const/16 v7, 0x12

    const/16 v8, 0xd

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 140
    const/16 v7, 0x13

    const/16 v8, 0x9

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 141
    const/16 v7, 0x14

    const/16 v8, 0xc

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 142
    const/16 v7, 0x15

    const/16 v8, 0x8

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 143
    const/16 v7, 0x16

    invoke-virtual {v2, v7, v11}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 144
    const/16 v7, 0x17

    const/16 v8, 0x9

    invoke-virtual {v2, v7, v8}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 145
    const/16 v7, 0x18

    invoke-virtual {v2, v7, v12}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 146
    iput v10, p0, Lcom/cooliris/media/GridQuadFrame;->mVertBufferIndex:I

    .line 147
    return-void
.end method

.method public static createFrame(FFII)Lcom/cooliris/media/GridQuadFrame;
    .registers 23
    .parameter "width"
    .parameter "height"
    .parameter "itemWidth"
    .parameter "itemHeight"

    .prologue
    .line 54
    new-instance v1, Lcom/cooliris/media/GridQuadFrame;

    invoke-direct {v1}, Lcom/cooliris/media/GridQuadFrame;-><init>()V

    .line 55
    .local v1, frame:Lcom/cooliris/media/GridQuadFrame;
    const/high16 v18, 0x4280

    .line 56
    .local v18, textureSize:F
    const/high16 v14, 0x40e0

    .line 57
    .local v14, numPixelsYOriginShift:F
    const/high16 v13, 0x40c0

    .line 58
    .local v13, inset:F
    const/high16 v2, 0x3f80

    move/from16 v0, p3

    int-to-float v3, v0

    div-float v17, v2, v3

    .line 59
    .local v17, ratio:F
    const/high16 v2, 0x4200

    mul-float v10, v2, v17

    .line 60
    .local v10, frameXThickness:F
    const/high16 v2, 0x4200

    mul-float v12, v2, v17

    .line 61
    .local v12, frameYThickness:F
    const/high16 v2, 0x3f00

    mul-float v2, v2, p0

    const/high16 v3, 0x3f00

    mul-float/2addr v3, v10

    add-float/2addr v2, v3

    const/high16 v3, 0x40c0

    mul-float v3, v3, v17

    sub-float v9, v2, v3

    .line 62
    .local v9, frameX:F
    const/high16 v2, 0x3f00

    mul-float v2, v2, p1

    const/high16 v3, 0x3f00

    mul-float/2addr v3, v12

    add-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float v3, v3, v17

    add-float v11, v2, v3

    .line 63
    .local v11, frameY:F
    const/4 v15, 0x0

    .line 64
    .local v15, originX:F
    const/high16 v2, 0x40e0

    mul-float v16, v2, v17

    .line 66
    .local v16, originY:F
    const/4 v2, 0x0

    const/4 v3, 0x0

    neg-float v4, v9

    const/4 v5, 0x0

    add-float/2addr v4, v5

    neg-float v5, v11

    add-float v5, v5, v16

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    invoke-virtual/range {v1 .. v8}, Lcom/cooliris/media/GridQuadFrame;->set(IIFFFFF)V

    .line 67
    const/4 v2, 0x1

    const/4 v3, 0x0

    neg-float v4, v9

    const/4 v5, 0x0

    add-float/2addr v4, v5

    add-float/2addr v4, v10

    neg-float v5, v11

    add-float v5, v5, v16

    const/4 v6, 0x0

    const/high16 v7, 0x3f00

    const/high16 v8, 0x3f80

    invoke-virtual/range {v1 .. v8}, Lcom/cooliris/media/GridQuadFrame;->set(IIFFFFF)V

    .line 68
    const/4 v2, 0x2

    const/4 v3, 0x0

    sub-float v4, v9, v10

    const/4 v5, 0x0

    add-float/2addr v4, v5

    neg-float v5, v11

    add-float v5, v5, v16

    const/4 v6, 0x0

    const/high16 v7, 0x3f00

    const/high16 v8, 0x3f80

    invoke-virtual/range {v1 .. v8}, Lcom/cooliris/media/GridQuadFrame;->set(IIFFFFF)V

    .line 69
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    add-float/2addr v4, v9

    neg-float v5, v11

    add-float v5, v5, v16

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    invoke-virtual/range {v1 .. v8}, Lcom/cooliris/media/GridQuadFrame;->set(IIFFFFF)V

    .line 71
    sub-float/2addr v11, v12

    .line 73
    const/4 v2, 0x0

    const/4 v3, 0x1

    neg-float v4, v9

    const/4 v5, 0x0

    add-float/2addr v4, v5

    neg-float v5, v11

    add-float v5, v5, v16

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f00

    invoke-virtual/range {v1 .. v8}, Lcom/cooliris/media/GridQuadFrame;->set(IIFFFFF)V

    .line 74
    const/4 v2, 0x1

    const/4 v3, 0x1

    neg-float v4, v9

    add-float/2addr v4, v10

    const/4 v5, 0x0

    add-float/2addr v4, v5

    neg-float v5, v11

    add-float v5, v5, v16

    const/4 v6, 0x0

    const/high16 v7, 0x3f00

    const/high16 v8, 0x3f00

    invoke-virtual/range {v1 .. v8}, Lcom/cooliris/media/GridQuadFrame;->set(IIFFFFF)V

    .line 75
    const/4 v2, 0x2

    const/4 v3, 0x1

    sub-float v4, v9, v10

    const/4 v5, 0x0

    add-float/2addr v4, v5

    neg-float v5, v11

    add-float v5, v5, v16

    const/4 v6, 0x0

    const/high16 v7, 0x3f00

    const/high16 v8, 0x3f00

    invoke-virtual/range {v1 .. v8}, Lcom/cooliris/media/GridQuadFrame;->set(IIFFFFF)V

    .line 76
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    add-float/2addr v4, v9

    neg-float v5, v11

    add-float v5, v5, v16

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f00

    invoke-virtual/range {v1 .. v8}, Lcom/cooliris/media/GridQuadFrame;->set(IIFFFFF)V

    .line 78
    const/high16 v2, 0x3f00

    mul-float v2, v2, p1

    sub-float v11, v2, v12

    .line 80
    const/4 v2, 0x0

    const/4 v3, 0x2

    neg-float v4, v9

    const/4 v5, 0x0

    add-float/2addr v4, v5

    add-float v5, v11, v16

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f00

    invoke-virtual/range {v1 .. v8}, Lcom/cooliris/media/GridQuadFrame;->set(IIFFFFF)V

    .line 81
    const/4 v2, 0x1

    const/4 v3, 0x2

    neg-float v4, v9

    add-float/2addr v4, v10

    const/4 v5, 0x0

    add-float/2addr v4, v5

    add-float v5, v11, v16

    const/4 v6, 0x0

    const/high16 v7, 0x3f00

    const/high16 v8, 0x3f00

    invoke-virtual/range {v1 .. v8}, Lcom/cooliris/media/GridQuadFrame;->set(IIFFFFF)V

    .line 82
    const/4 v2, 0x2

    const/4 v3, 0x2

    sub-float v4, v9, v10

    const/4 v5, 0x0

    add-float/2addr v4, v5

    add-float v5, v11, v16

    const/4 v6, 0x0

    const/high16 v7, 0x3f00

    const/high16 v8, 0x3f00

    invoke-virtual/range {v1 .. v8}, Lcom/cooliris/media/GridQuadFrame;->set(IIFFFFF)V

    .line 83
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    add-float/2addr v4, v9

    add-float v5, v11, v16

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f00

    invoke-virtual/range {v1 .. v8}, Lcom/cooliris/media/GridQuadFrame;->set(IIFFFFF)V

    .line 85
    add-float/2addr v11, v12

    .line 87
    const/4 v2, 0x0

    const/4 v3, 0x3

    neg-float v4, v9

    const/4 v5, 0x0

    add-float/2addr v4, v5

    add-float v5, v11, v16

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/cooliris/media/GridQuadFrame;->set(IIFFFFF)V

    .line 88
    const/4 v2, 0x1

    const/4 v3, 0x3

    neg-float v4, v9

    add-float/2addr v4, v10

    const/4 v5, 0x0

    add-float/2addr v4, v5

    add-float v5, v11, v16

    const/4 v6, 0x0

    const/high16 v7, 0x3f00

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/cooliris/media/GridQuadFrame;->set(IIFFFFF)V

    .line 89
    const/4 v2, 0x2

    const/4 v3, 0x3

    sub-float v4, v9, v10

    const/4 v5, 0x0

    add-float/2addr v4, v5

    add-float v5, v11, v16

    const/4 v6, 0x0

    const/high16 v7, 0x3f00

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/cooliris/media/GridQuadFrame;->set(IIFFFFF)V

    .line 90
    const/4 v2, 0x3

    const/4 v3, 0x3

    const/4 v4, 0x0

    add-float/2addr v4, v9

    add-float v5, v11, v16

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/cooliris/media/GridQuadFrame;->set(IIFFFFF)V

    .line 92
    return-object v1
.end method

.method public static final draw(Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 5
    .parameter "gl11"

    .prologue
    .line 190
    const/4 v0, 0x5

    const/16 v1, 0x19

    const/16 v2, 0x1403

    const/4 v3, 0x0

    invoke-interface {p0, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 191
    return-void
.end method


# virtual methods
.method public bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 8
    .parameter "gl"

    .prologue
    const/4 v5, 0x2

    const v4, 0x8892

    const/16 v3, 0x1406

    const/4 v2, 0x0

    .line 174
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 176
    .local v0, gl11:Ljavax/microedition/khronos/opengles/GL11;
    iget v1, p0, Lcom/cooliris/media/GridQuadFrame;->mVertBufferIndex:I

    invoke-interface {v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 177
    const/4 v1, 0x3

    invoke-interface {v0, v1, v3, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 179
    iget v1, p0, Lcom/cooliris/media/GridQuadFrame;->mTextureCoordBufferIndex:I

    invoke-interface {v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 180
    invoke-interface {v0, v5, v3, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 181
    const v1, 0x84c1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 182
    iget v1, p0, Lcom/cooliris/media/GridQuadFrame;->mSecTextureCoordBufferIndex:I

    invoke-interface {v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 183
    invoke-interface {v0, v5, v3, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 184
    const v1, 0x84c0

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 185
    const v1, 0x8893

    iget v2, p0, Lcom/cooliris/media/GridQuadFrame;->mIndexBufferIndex:I

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 186
    return-void
.end method

.method public forgetHardwareBuffers()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 209
    iput v0, p0, Lcom/cooliris/media/GridQuadFrame;->mVertBufferIndex:I

    .line 210
    iput v0, p0, Lcom/cooliris/media/GridQuadFrame;->mIndexBufferIndex:I

    .line 211
    iput v0, p0, Lcom/cooliris/media/GridQuadFrame;->mTextureCoordBufferIndex:I

    .line 212
    iput v0, p0, Lcom/cooliris/media/GridQuadFrame;->mSecTextureCoordBufferIndex:I

    .line 213
    return-void
.end method

.method public freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7
    .parameter "gl"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 219
    iget v2, p0, Lcom/cooliris/media/GridQuadFrame;->mVertBufferIndex:I

    if-eqz v2, :cond_2e

    .line 220
    instance-of v2, p1, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v2, :cond_2b

    move-object v1, p1

    .line 221
    check-cast v1, Ljavax/microedition/khronos/opengles/GL11;

    .line 222
    .local v1, gl11:Ljavax/microedition/khronos/opengles/GL11;
    new-array v0, v4, [I

    .line 223
    .local v0, buffer:[I
    iget v2, p0, Lcom/cooliris/media/GridQuadFrame;->mVertBufferIndex:I

    aput v2, v0, v3

    .line 224
    invoke-interface {v1, v4, v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 226
    iget v2, p0, Lcom/cooliris/media/GridQuadFrame;->mTextureCoordBufferIndex:I

    aput v2, v0, v3

    .line 227
    invoke-interface {v1, v4, v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 229
    iget v2, p0, Lcom/cooliris/media/GridQuadFrame;->mSecTextureCoordBufferIndex:I

    aput v2, v0, v3

    .line 230
    invoke-interface {v1, v4, v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 232
    iget v2, p0, Lcom/cooliris/media/GridQuadFrame;->mIndexBufferIndex:I

    aput v2, v0, v3

    .line 233
    invoke-interface {v1, v4, v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 235
    .end local v0           #buffer:[I
    .end local v1           #gl11:Ljavax/microedition/khronos/opengles/GL11;
    :cond_2b
    invoke-virtual {p0}, Lcom/cooliris/media/GridQuadFrame;->forgetHardwareBuffers()V

    .line 237
    :cond_2e
    return-void
.end method

.method public generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 14
    .parameter "gl"

    .prologue
    const v11, 0x8893

    const v10, 0x88e4

    const/4 v9, 0x1

    const v8, 0x8892

    const/4 v7, 0x0

    .line 248
    iget v6, p0, Lcom/cooliris/media/GridQuadFrame;->mVertBufferIndex:I

    if-nez v6, :cond_96

    .line 249
    instance-of v6, p1, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v6, :cond_96

    move-object v1, p1

    .line 250
    check-cast v1, Ljavax/microedition/khronos/opengles/GL11;

    .line 251
    .local v1, gl11:Ljavax/microedition/khronos/opengles/GL11;
    new-array v0, v9, [I

    .line 254
    .local v0, buffer:[I
    invoke-interface {v1, v9, v0, v7}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 255
    aget v6, v0, v7

    iput v6, p0, Lcom/cooliris/media/GridQuadFrame;->mVertBufferIndex:I

    .line 256
    iget v6, p0, Lcom/cooliris/media/GridQuadFrame;->mVertBufferIndex:I

    invoke-interface {v1, v8, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 257
    iget-object v6, p0, Lcom/cooliris/media/GridQuadFrame;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 258
    iget-object v6, p0, Lcom/cooliris/media/GridQuadFrame;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v6

    mul-int/lit8 v5, v6, 0x4

    .line 259
    .local v5, vertexSize:I
    iget-object v6, p0, Lcom/cooliris/media/GridQuadFrame;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v1, v8, v5, v6, v10}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 263
    invoke-interface {v1, v9, v0, v7}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 264
    aget v6, v0, v7

    iput v6, p0, Lcom/cooliris/media/GridQuadFrame;->mTextureCoordBufferIndex:I

    .line 265
    iget v6, p0, Lcom/cooliris/media/GridQuadFrame;->mTextureCoordBufferIndex:I

    invoke-interface {v1, v8, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 266
    iget-object v6, p0, Lcom/cooliris/media/GridQuadFrame;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v6

    mul-int/lit8 v4, v6, 0x4

    .line 267
    .local v4, texCoordSize:I
    iget-object v6, p0, Lcom/cooliris/media/GridQuadFrame;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 268
    iget-object v6, p0, Lcom/cooliris/media/GridQuadFrame;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v1, v8, v4, v6, v10}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 272
    invoke-interface {v1, v9, v0, v7}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 273
    aget v6, v0, v7

    iput v6, p0, Lcom/cooliris/media/GridQuadFrame;->mSecTextureCoordBufferIndex:I

    .line 274
    iget v6, p0, Lcom/cooliris/media/GridQuadFrame;->mSecTextureCoordBufferIndex:I

    invoke-interface {v1, v8, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 275
    iget-object v6, p0, Lcom/cooliris/media/GridQuadFrame;->mSecTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    .line 276
    .local v3, secTexCoordSize:I
    iget-object v6, p0, Lcom/cooliris/media/GridQuadFrame;->mSecTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 277
    iget-object v6, p0, Lcom/cooliris/media/GridQuadFrame;->mSecTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v1, v8, v3, v6, v10}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 281
    invoke-interface {v1, v8, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 284
    invoke-interface {v1, v9, v0, v7}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 285
    aget v6, v0, v7

    iput v6, p0, Lcom/cooliris/media/GridQuadFrame;->mIndexBufferIndex:I

    .line 286
    iget v6, p0, Lcom/cooliris/media/GridQuadFrame;->mIndexBufferIndex:I

    invoke-interface {v1, v11, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 288
    iget-object v6, p0, Lcom/cooliris/media/GridQuadFrame;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->capacity()I

    move-result v6

    mul-int/lit8 v2, v6, 0x2

    .line 289
    .local v2, indexSize:I
    iget-object v6, p0, Lcom/cooliris/media/GridQuadFrame;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v6, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 290
    iget-object v6, p0, Lcom/cooliris/media/GridQuadFrame;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-interface {v1, v11, v2, v6, v10}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 294
    invoke-interface {v1, v11, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 297
    .end local v0           #buffer:[I
    .end local v1           #gl11:Ljavax/microedition/khronos/opengles/GL11;
    .end local v2           #indexSize:I
    .end local v3           #secTexCoordSize:I
    .end local v4           #texCoordSize:I
    .end local v5           #vertexSize:I
    :cond_96
    return-void
.end method

.method set(IIFFFFF)V
    .registers 14
    .parameter "i"
    .parameter "j"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "u"
    .parameter "v"

    .prologue
    .line 150
    if-ltz p1, :cond_6

    iget v4, p0, Lcom/cooliris/media/GridQuadFrame;->mW:I

    if-lt p1, v4, :cond_e

    .line 151
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "i"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 153
    :cond_e
    if-ltz p2, :cond_14

    iget v4, p0, Lcom/cooliris/media/GridQuadFrame;->mH:I

    if-lt p2, v4, :cond_1c

    .line 154
    :cond_14
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "j"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 157
    :cond_1c
    iget v4, p0, Lcom/cooliris/media/GridQuadFrame;->mW:I

    mul-int/2addr v4, p2

    add-int v0, v4, p1

    .line 159
    .local v0, index:I
    mul-int/lit8 v1, v0, 0x3

    .line 160
    .local v1, posIndex:I
    iget-object v4, p0, Lcom/cooliris/media/GridQuadFrame;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 161
    iget-object v4, p0, Lcom/cooliris/media/GridQuadFrame;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 162
    iget-object v4, p0, Lcom/cooliris/media/GridQuadFrame;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {v4, v5, p5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 164
    mul-int/lit8 v3, v0, 0x2

    .line 165
    .local v3, texIndex:I
    iget-object v4, p0, Lcom/cooliris/media/GridQuadFrame;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v3, p6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 166
    iget-object v4, p0, Lcom/cooliris/media/GridQuadFrame;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5, p7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 168
    mul-int/lit8 v2, v0, 0x2

    .line 169
    .local v2, secTexIndex:I
    iget-object v4, p0, Lcom/cooliris/media/GridQuadFrame;->mSecTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v2, p6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 170
    iget-object v4, p0, Lcom/cooliris/media/GridQuadFrame;->mSecTexCoordBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5, p7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 171
    return-void
.end method

.method public unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5
    .parameter "gl"

    .prologue
    const/4 v2, 0x0

    .line 194
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 195
    .local v0, gl11:Ljavax/microedition/khronos/opengles/GL11;
    const v1, 0x8892

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 196
    const v1, 0x8893

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 197
    return-void
.end method
