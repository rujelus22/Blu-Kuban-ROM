.class public final Lcom/cooliris/media/GridQuad;
.super Ljava/lang/Object;
.source "GridQuad.java"


# instance fields
.field private final CACHE_CHECK_END:Ljava/lang/String;

.field private mAnimHeight:F

.field private mAnimU:F

.field private mAnimV:F

.field private mAnimWidth:F

.field private mBaseTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mBaseTexCoordBufferB:Ljava/nio/ByteBuffer;

.field private mBaseTextureCoordBufferIndex:I

.field private final mCoordsIn:[F

.field private final mCoordsOut:[F

.field private mDefaultAspectRatio:F

.field private mDynamicVBO:Z

.field private final mH:I

.field private mHeight:F

.field private mIndexBuffer:Ljava/nio/CharBuffer;

.field private mIndexBufferB:Ljava/nio/ByteBuffer;

.field private mIndexBufferIndex:I

.field private mMatrix:Lcom/cooliris/media/MatrixStack;

.field private final mOrientedQuad:Z

.field private mOverlayTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mOverlayTexCoordBufferB:Ljava/nio/ByteBuffer;

.field private mOverlayTextureCoordBufferIndex:I

.field private mQuadChanged:Z

.field private mU:F

.field private mV:F

.field private mVertBufferIndex:I

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexBufferB:Ljava/nio/ByteBuffer;

.field private final mW:I

.field private mWidth:F


# direct methods
.method public constructor <init>(Z)V
    .registers 13
    .parameter "generateOrientedQuads"

    .prologue
    const/4 v10, 0x4

    .line 158
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-array v9, v10, [F

    iput-object v9, p0, Lcom/cooliris/media/GridQuad;->mCoordsIn:[F

    .line 96
    new-array v9, v10, [F

    iput-object v9, p0, Lcom/cooliris/media/GridQuad;->mCoordsOut:[F

    .line 106
    const-string v9, "CHECK__END"

    iput-object v9, p0, Lcom/cooliris/media/GridQuad;->CACHE_CHECK_END:Ljava/lang/String;

    .line 159
    iput-boolean p1, p0, Lcom/cooliris/media/GridQuad;->mOrientedQuad:Z

    .line 160
    iget-boolean v9, p0, Lcom/cooliris/media/GridQuad;->mOrientedQuad:Z

    if-eqz v9, :cond_22

    .line 161
    new-instance v9, Lcom/cooliris/media/MatrixStack;

    invoke-direct {v9}, Lcom/cooliris/media/MatrixStack;-><init>()V

    iput-object v9, p0, Lcom/cooliris/media/GridQuad;->mMatrix:Lcom/cooliris/media/MatrixStack;

    .line 162
    iget-object v9, p0, Lcom/cooliris/media/GridQuad;->mMatrix:Lcom/cooliris/media/MatrixStack;

    invoke-virtual {v9}, Lcom/cooliris/media/MatrixStack;->glLoadIdentity()V

    .line 164
    :cond_22
    const/4 v7, 0x2

    .line 165
    .local v7, vertsAcross:I
    const/4 v8, 0x2

    .line 166
    .local v8, vertsDown:I
    iput v7, p0, Lcom/cooliris/media/GridQuad;->mW:I

    .line 167
    iput v8, p0, Lcom/cooliris/media/GridQuad;->mH:I

    .line 168
    mul-int v6, v7, v8

    .line 169
    .local v6, size:I
    const/4 v1, 0x4

    .line 170
    .local v1, FLOAT_SIZE:I
    const/4 v0, 0x2

    .line 171
    .local v0, CHAR_SIZE:I
    if-nez p1, :cond_a2

    const/4 v5, 0x1

    .line 172
    .local v5, orientationCount:I
    :goto_2f
    sget-boolean v9, Lcom/cooliris/media/Utils;->mUseDualCore:Z

    if-eqz v9, :cond_a5

    .line 183
    mul-int/lit8 v9, v5, 0x30

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/cooliris/media/GridQuad;->mVertexBufferB:Ljava/nio/ByteBuffer;

    .line 185
    mul-int/lit8 v9, v5, 0x20

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/cooliris/media/GridQuad;->mOverlayTexCoordBufferB:Ljava/nio/ByteBuffer;

    .line 187
    mul-int/lit8 v9, v5, 0x20

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/cooliris/media/GridQuad;->mBaseTexCoordBufferB:Ljava/nio/ByteBuffer;

    .line 189
    iget-object v9, p0, Lcom/cooliris/media/GridQuad;->mVertexBufferB:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/cooliris/media/GridQuad;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 190
    iget-object v9, p0, Lcom/cooliris/media/GridQuad;->mOverlayTexCoordBufferB:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/cooliris/media/GridQuad;->mOverlayTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 191
    iget-object v9, p0, Lcom/cooliris/media/GridQuad;->mBaseTexCoordBufferB:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/cooliris/media/GridQuad;->mBaseTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 193
    const/4 v4, 0x4

    .line 197
    .local v4, indexCount:I
    mul-int/lit8 v9, v5, 0x8

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/cooliris/media/GridQuad;->mIndexBufferB:Ljava/nio/ByteBuffer;

    .line 199
    iget-object v9, p0, Lcom/cooliris/media/GridQuad;->mIndexBufferB:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/cooliris/media/GridQuad;->mIndexBuffer:Ljava/nio/CharBuffer;

    .line 220
    :goto_94
    iget-object v2, p0, Lcom/cooliris/media/GridQuad;->mIndexBuffer:Ljava/nio/CharBuffer;

    .line 221
    .local v2, buffer:Ljava/nio/CharBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_97
    mul-int/lit8 v9, v5, 0x4

    if-ge v3, v9, :cond_f7

    .line 222
    int-to-char v9, v3

    invoke-virtual {v2, v3, v9}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto :goto_97

    .line 171
    .end local v2           #buffer:Ljava/nio/CharBuffer;
    .end local v3           #i:I
    .end local v4           #indexCount:I
    .end local v5           #orientationCount:I
    :cond_a2
    const/16 v5, 0x168

    goto :goto_2f

    .line 202
    .restart local v5       #orientationCount:I
    :cond_a5
    mul-int/lit8 v9, v5, 0x30

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/cooliris/media/GridQuad;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 204
    mul-int/lit8 v9, v5, 0x20

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/cooliris/media/GridQuad;->mOverlayTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 207
    mul-int/lit8 v9, v5, 0x20

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/cooliris/media/GridQuad;->mBaseTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 211
    const/4 v4, 0x4

    .line 212
    .restart local v4       #indexCount:I
    mul-int/lit8 v9, v5, 0x8

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/cooliris/media/GridQuad;->mIndexBuffer:Ljava/nio/CharBuffer;

    goto :goto_94

    .line 224
    .restart local v2       #buffer:Ljava/nio/CharBuffer;
    .restart local v3       #i:I
    :cond_f7
    const/4 v9, 0x0

    iput v9, p0, Lcom/cooliris/media/GridQuad;->mVertBufferIndex:I

    .line 225
    return-void
.end method

.method public static createGridQuad(FFFFFFZ)Lcom/cooliris/media/GridQuad;
    .registers 30
    .parameter "width"
    .parameter "height"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "uExtents"
    .parameter "vExtents"
    .parameter "generateOrientedQuads"

    .prologue
    .line 111
    new-instance v1, Lcom/cooliris/media/GridQuad;

    move/from16 v0, p6

    invoke-direct {v1, v0}, Lcom/cooliris/media/GridQuad;-><init>(Z)V

    .line 112
    .local v1, grid:Lcom/cooliris/media/GridQuad;
    move/from16 v0, p0

    iput v0, v1, Lcom/cooliris/media/GridQuad;->mWidth:F

    .line 113
    move/from16 v0, p1

    iput v0, v1, Lcom/cooliris/media/GridQuad;->mHeight:F

    .line 114
    move/from16 v0, p0

    iput v0, v1, Lcom/cooliris/media/GridQuad;->mAnimWidth:F

    .line 115
    move/from16 v0, p1

    iput v0, v1, Lcom/cooliris/media/GridQuad;->mAnimHeight:F

    .line 116
    div-float v2, p0, p1

    iput v2, v1, Lcom/cooliris/media/GridQuad;->mDefaultAspectRatio:F

    .line 117
    const/high16 v2, 0x3f00

    mul-float v22, p0, v2

    .line 118
    .local v22, widthBy2:F
    const/high16 v2, 0x3f00

    mul-float v21, p1, v2

    .line 119
    .local v21, heightBy2:F
    move/from16 v8, p5

    .line 120
    .local v8, v:F
    move/from16 v7, p4

    .line 121
    .local v7, u:F
    if-nez p6, :cond_72

    .line 122
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v22

    neg-float v4, v0

    add-float v4, v4, p2

    move/from16 v0, v21

    neg-float v5, v0

    add-float v5, v5, p3

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/cooliris/media/GridQuad;->set(IIFFFFF)V

    .line 123
    const/4 v10, 0x1

    const/4 v11, 0x0

    add-float v12, v22, p2

    move/from16 v0, v21

    neg-float v2, v0

    add-float v13, v2, p3

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v1

    move/from16 v16, v8

    invoke-virtual/range {v9 .. v16}, Lcom/cooliris/media/GridQuad;->set(IIFFFFF)V

    .line 124
    const/4 v10, 0x0

    const/4 v11, 0x1

    move/from16 v0, v22

    neg-float v2, v0

    add-float v12, v2, p2

    add-float v13, v21, p3

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v9, v1

    move v15, v7

    invoke-virtual/range {v9 .. v16}, Lcom/cooliris/media/GridQuad;->set(IIFFFFF)V

    .line 125
    const/4 v10, 0x1

    const/4 v11, 0x1

    add-float v12, v22, p2

    add-float v13, v21, p3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v1

    invoke-virtual/range {v9 .. v16}, Lcom/cooliris/media/GridQuad;->set(IIFFFFF)V

    .line 153
    :cond_69
    :goto_69
    move/from16 v0, p4

    iput v0, v1, Lcom/cooliris/media/GridQuad;->mU:F

    .line 154
    move/from16 v0, p4

    iput v0, v1, Lcom/cooliris/media/GridQuad;->mV:F

    .line 155
    return-object v1

    .line 127
    :cond_72
    sget-boolean v2, Lcom/cooliris/media/Utils;->mUseDualCore:Z

    if-eqz v2, :cond_db

    .line 129
    invoke-virtual {v1}, Lcom/cooliris/media/GridQuad;->setBuffersFromFile()Z

    move-result v2

    if-nez v2, :cond_69

    .line 130
    const/4 v10, 0x0

    .local v10, i:I
    :goto_7d
    const/16 v2, 0x168

    if-ge v10, v2, :cond_d7

    .line 131
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v22

    neg-float v4, v0

    add-float v4, v4, p2

    move/from16 v0, v21

    neg-float v5, v0

    add-float v5, v5, p3

    const/4 v6, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v1 .. v10}, Lcom/cooliris/media/GridQuad;->set(IIFFFFFZI)V

    .line 133
    const/4 v12, 0x1

    const/4 v13, 0x0

    add-float v14, v22, p2

    move/from16 v0, v21

    neg-float v2, v0

    add-float v15, v2, p3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x1

    move-object v11, v1

    move/from16 v18, v8

    move/from16 v20, v10

    invoke-direct/range {v11 .. v20}, Lcom/cooliris/media/GridQuad;->set(IIFFFFFZI)V

    .line 135
    const/4 v12, 0x0

    const/4 v13, 0x1

    move/from16 v0, v22

    neg-float v2, v0

    add-float v14, v2, p2

    add-float v15, v21, p3

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v11, v1

    move/from16 v17, v7

    move/from16 v20, v10

    invoke-direct/range {v11 .. v20}, Lcom/cooliris/media/GridQuad;->set(IIFFFFFZI)V

    .line 137
    const/4 v12, 0x1

    const/4 v13, 0x1

    add-float v14, v22, p2

    add-float v15, v21, p3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v11, v1

    move/from16 v20, v10

    invoke-direct/range {v11 .. v20}, Lcom/cooliris/media/GridQuad;->set(IIFFFFFZI)V

    .line 130
    add-int/lit8 v10, v10, 0x1

    goto :goto_7d

    .line 140
    :cond_d7
    invoke-virtual {v1}, Lcom/cooliris/media/GridQuad;->writeBuffersToFile()V

    goto :goto_69

    .line 144
    .end local v10           #i:I
    :cond_db
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_dc
    const/16 v2, 0x168

    if-ge v10, v2, :cond_69

    .line 145
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v22

    neg-float v4, v0

    add-float v4, v4, p2

    move/from16 v0, v21

    neg-float v5, v0

    add-float v5, v5, p3

    const/4 v6, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v1 .. v10}, Lcom/cooliris/media/GridQuad;->set(IIFFFFFZI)V

    .line 146
    const/4 v12, 0x1

    const/4 v13, 0x0

    add-float v14, v22, p2

    move/from16 v0, v21

    neg-float v2, v0

    add-float v15, v2, p3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x1

    move-object v11, v1

    move/from16 v18, v8

    move/from16 v20, v10

    invoke-direct/range {v11 .. v20}, Lcom/cooliris/media/GridQuad;->set(IIFFFFFZI)V

    .line 147
    const/4 v12, 0x0

    const/4 v13, 0x1

    move/from16 v0, v22

    neg-float v2, v0

    add-float v14, v2, p2

    add-float v15, v21, p3

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v11, v1

    move/from16 v17, v7

    move/from16 v20, v10

    invoke-direct/range {v11 .. v20}, Lcom/cooliris/media/GridQuad;->set(IIFFFFFZI)V

    .line 148
    const/4 v12, 0x1

    const/4 v13, 0x1

    add-float v14, v22, p2

    add-float v15, v21, p3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v11, v1

    move/from16 v20, v10

    invoke-direct/range {v11 .. v20}, Lcom/cooliris/media/GridQuad;->set(IIFFFFFZI)V

    .line 144
    add-int/lit8 v10, v10, 0x1

    goto :goto_dc
.end method

.method public static final draw(Ljavax/microedition/khronos/opengles/GL11;F)V
    .registers 7
    .parameter "gl11"
    .parameter "orientationDegrees"

    .prologue
    .line 393
    invoke-static {p1}, Lcom/cooliris/media/Shared;->normalizePositive(F)F

    move-result v1

    float-to-int v0, v1

    .line 394
    .local v0, orientation:I
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/16 v3, 0x1403

    mul-int/lit8 v4, v0, 0x4

    invoke-interface {p0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 396
    return-void
.end method

.method private set(IIFFFFFZI)V
    .registers 25
    .parameter "i"
    .parameter "j"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "u"
    .parameter "v"
    .parameter "modifyOverlay"
    .parameter "orientationId"

    .prologue
    .line 312
    if-ltz p1, :cond_8

    iget v9, p0, Lcom/cooliris/media/GridQuad;->mW:I

    move/from16 v0, p1

    if-lt v0, v9, :cond_10

    .line 313
    :cond_8
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "i"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 315
    :cond_10
    if-ltz p2, :cond_18

    iget v9, p0, Lcom/cooliris/media/GridQuad;->mH:I

    move/from16 v0, p2

    if-lt v0, v9, :cond_20

    .line 316
    :cond_18
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "j"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 318
    :cond_20
    mul-int/lit8 v9, p9, 0x4

    iget v10, p0, Lcom/cooliris/media/GridQuad;->mW:I

    mul-int v10, v10, p2

    add-int/2addr v9, v10

    add-int v2, v9, p1

    .line 319
    .local v2, index:I
    mul-int/lit8 v5, v2, 0x3

    .line 320
    .local v5, posIndex:I
    iget-object v9, p0, Lcom/cooliris/media/GridQuad;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move/from16 v0, p3

    invoke-virtual {v9, v5, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 321
    iget-object v9, p0, Lcom/cooliris/media/GridQuad;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v10, v5, 0x1

    move/from16 v0, p4

    invoke-virtual {v9, v10, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 322
    iget-object v9, p0, Lcom/cooliris/media/GridQuad;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v10, v5, 0x2

    move/from16 v0, p5

    invoke-virtual {v9, v10, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 323
    mul-int/lit8 v1, v2, 0x2

    .line 325
    .local v1, baseTexIndex:I
    iget-object v4, p0, Lcom/cooliris/media/GridQuad;->mMatrix:Lcom/cooliris/media/MatrixStack;

    .line 326
    .local v4, matrix:Lcom/cooliris/media/MatrixStack;
    if-eqz v4, :cond_d7

    .line 327
    mul-int/lit8 p9, p9, 0x2

    .line 328
    invoke-virtual {v4}, Lcom/cooliris/media/MatrixStack;->glLoadIdentity()V

    .line 329
    const/high16 v9, 0x3f00

    const/high16 v10, 0x3f00

    const/4 v11, 0x0

    invoke-virtual {v4, v9, v10, v11}, Lcom/cooliris/media/MatrixStack;->glTranslatef(FFF)V

    .line 330
    move/from16 v0, p9

    int-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    double-to-float v3, v9

    .line 331
    .local v3, itheta:F
    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v7, v9

    .line 332
    .local v7, sini:F
    const/high16 v9, 0x3f80

    mul-float v10, v7, v7

    const v11, 0x3eaaaaab

    mul-float/2addr v10, v11

    add-float v6, v9, v10

    .line 333
    .local v6, scale:F
    const/high16 v9, 0x3f80

    div-float v6, v9, v6

    .line 334
    move/from16 v0, p9

    neg-int v9, v0

    int-to-float v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    invoke-virtual {v4, v9, v10, v11, v12}, Lcom/cooliris/media/MatrixStack;->glRotatef(FFFF)V

    .line 335
    const/high16 v9, 0x3f80

    invoke-virtual {v4, v6, v6, v9}, Lcom/cooliris/media/MatrixStack;->glScalef(FFF)V

    .line 336
    const/high16 v9, -0x4100

    const/high16 v10, 0x3e00

    mul-float/2addr v10, v7

    div-float/2addr v10, v6

    add-float/2addr v9, v10

    const/high16 v10, -0x4100

    const/high16 v11, 0x3f00

    mul-float/2addr v11, v3

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x3fd0

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    double-to-float v11, v11

    add-float/2addr v10, v11

    const/4 v11, 0x0

    invoke-virtual {v4, v9, v10, v11}, Lcom/cooliris/media/MatrixStack;->glTranslatef(FFF)V

    .line 341
    iget-object v9, p0, Lcom/cooliris/media/GridQuad;->mCoordsIn:[F

    const/4 v10, 0x0

    aput p6, v9, v10

    .line 342
    iget-object v9, p0, Lcom/cooliris/media/GridQuad;->mCoordsIn:[F

    const/4 v10, 0x1

    aput p7, v9, v10

    .line 343
    iget-object v9, p0, Lcom/cooliris/media/GridQuad;->mCoordsIn:[F

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 344
    iget-object v9, p0, Lcom/cooliris/media/GridQuad;->mCoordsIn:[F

    const/4 v10, 0x3

    const/high16 v11, 0x3f80

    aput v11, v9, v10

    .line 345
    iget-object v9, p0, Lcom/cooliris/media/GridQuad;->mCoordsIn:[F

    iget-object v10, p0, Lcom/cooliris/media/GridQuad;->mCoordsOut:[F

    invoke-virtual {v4, v9, v10}, Lcom/cooliris/media/MatrixStack;->apply([F[F)V

    .line 346
    iget-object v9, p0, Lcom/cooliris/media/GridQuad;->mCoordsOut:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p0, Lcom/cooliris/media/GridQuad;->mCoordsOut:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    div-float p6, v9, v10

    .line 347
    iget-object v9, p0, Lcom/cooliris/media/GridQuad;->mCoordsOut:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p0, Lcom/cooliris/media/GridQuad;->mCoordsOut:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    div-float p7, v9, v10

    .line 349
    .end local v3           #itheta:F
    .end local v6           #scale:F
    .end local v7           #sini:F
    :cond_d7
    iget-object v9, p0, Lcom/cooliris/media/GridQuad;->mBaseTexCoordBuffer:Ljava/nio/FloatBuffer;

    move/from16 v0, p6

    invoke-virtual {v9, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 350
    iget-object v9, p0, Lcom/cooliris/media/GridQuad;->mBaseTexCoordBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v10, v1, 0x1

    move/from16 v0, p7

    invoke-virtual {v9, v10, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 351
    if-eqz p8, :cond_fb

    .line 352
    mul-int/lit8 v8, v2, 0x2

    .line 353
    .local v8, texIndex:I
    iget-object v9, p0, Lcom/cooliris/media/GridQuad;->mOverlayTexCoordBuffer:Ljava/nio/FloatBuffer;

    move/from16 v0, p6

    invoke-virtual {v9, v8, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 354
    iget-object v9, p0, Lcom/cooliris/media/GridQuad;->mOverlayTexCoordBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v10, v8, 0x1

    move/from16 v0, p7

    invoke-virtual {v9, v10, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 356
    .end local v8           #texIndex:I
    :cond_fb
    return-void
.end method


# virtual methods
.method public bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 11
    .parameter "gl"

    .prologue
    const/4 v8, 0x2

    const v7, 0x88e8

    const/16 v6, 0x1406

    const v5, 0x8892

    const/4 v4, 0x0

    .line 359
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 361
    .local v0, gl11:Ljavax/microedition/khronos/opengles/GL11;
    iget v3, p0, Lcom/cooliris/media/GridQuad;->mVertBufferIndex:I

    invoke-interface {v0, v5, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 362
    const/4 v3, 0x3

    invoke-interface {v0, v3, v6, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 364
    iget v3, p0, Lcom/cooliris/media/GridQuad;->mOverlayTextureCoordBufferIndex:I

    invoke-interface {v0, v5, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 365
    iget-boolean v3, p0, Lcom/cooliris/media/GridQuad;->mDynamicVBO:Z

    if-eqz v3, :cond_35

    iget-boolean v3, p0, Lcom/cooliris/media/GridQuad;->mQuadChanged:Z

    if-eqz v3, :cond_35

    .line 366
    iget-object v3, p0, Lcom/cooliris/media/GridQuad;->mOverlayTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v3

    mul-int/lit8 v1, v3, 0x4

    .line 367
    .local v1, texCoordSize:I
    iget-object v3, p0, Lcom/cooliris/media/GridQuad;->mOverlayTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 368
    iget-object v3, p0, Lcom/cooliris/media/GridQuad;->mOverlayTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v5, v1, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 371
    .end local v1           #texCoordSize:I
    :cond_35
    invoke-interface {v0, v8, v6, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 372
    const v3, 0x84c1

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 373
    iget-boolean v3, p0, Lcom/cooliris/media/GridQuad;->mDynamicVBO:Z

    if-eqz v3, :cond_58

    iget-boolean v3, p0, Lcom/cooliris/media/GridQuad;->mQuadChanged:Z

    if-eqz v3, :cond_58

    .line 374
    iget-object v3, p0, Lcom/cooliris/media/GridQuad;->mBaseTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v3

    mul-int/lit8 v1, v3, 0x4

    .line 375
    .restart local v1       #texCoordSize:I
    iget-object v3, p0, Lcom/cooliris/media/GridQuad;->mBaseTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 376
    iget-object v3, p0, Lcom/cooliris/media/GridQuad;->mBaseTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v5, v1, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 379
    .end local v1           #texCoordSize:I
    :cond_58
    invoke-interface {v0, v8, v6, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 380
    const v3, 0x84c0

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 381
    iget-boolean v3, p0, Lcom/cooliris/media/GridQuad;->mDynamicVBO:Z

    if-eqz v3, :cond_82

    iget-boolean v3, p0, Lcom/cooliris/media/GridQuad;->mQuadChanged:Z

    if-eqz v3, :cond_82

    .line 382
    iput-boolean v4, p0, Lcom/cooliris/media/GridQuad;->mQuadChanged:Z

    .line 383
    iget v3, p0, Lcom/cooliris/media/GridQuad;->mVertBufferIndex:I

    invoke-interface {v0, v5, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 384
    iget-object v3, p0, Lcom/cooliris/media/GridQuad;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v3

    mul-int/lit8 v2, v3, 0x4

    .line 385
    .local v2, vertexSize:I
    iget-object v3, p0, Lcom/cooliris/media/GridQuad;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 386
    iget-object v3, p0, Lcom/cooliris/media/GridQuad;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v5, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 388
    .end local v2           #vertexSize:I
    :cond_82
    const v3, 0x8893

    iget v4, p0, Lcom/cooliris/media/GridQuad;->mIndexBufferIndex:I

    invoke-interface {v0, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 389
    return-void
.end method

.method public commit()V
    .registers 2

    .prologue
    .line 251
    iget v0, p0, Lcom/cooliris/media/GridQuad;->mWidth:F

    iput v0, p0, Lcom/cooliris/media/GridQuad;->mAnimWidth:F

    .line 252
    iget v0, p0, Lcom/cooliris/media/GridQuad;->mHeight:F

    iput v0, p0, Lcom/cooliris/media/GridQuad;->mAnimHeight:F

    .line 253
    iget v0, p0, Lcom/cooliris/media/GridQuad;->mU:F

    iput v0, p0, Lcom/cooliris/media/GridQuad;->mAnimU:F

    .line 254
    iget v0, p0, Lcom/cooliris/media/GridQuad;->mV:F

    iput v0, p0, Lcom/cooliris/media/GridQuad;->mAnimV:F

    .line 255
    return-void
.end method

.method public forgetHardwareBuffers()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 414
    iput v0, p0, Lcom/cooliris/media/GridQuad;->mVertBufferIndex:I

    .line 415
    iput v0, p0, Lcom/cooliris/media/GridQuad;->mIndexBufferIndex:I

    .line 416
    iput v0, p0, Lcom/cooliris/media/GridQuad;->mOverlayTextureCoordBufferIndex:I

    .line 417
    return-void
.end method

.method public freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7
    .parameter "gl"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 423
    iget v2, p0, Lcom/cooliris/media/GridQuad;->mVertBufferIndex:I

    if-eqz v2, :cond_27

    .line 424
    instance-of v2, p1, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v2, :cond_24

    move-object v1, p1

    .line 425
    check-cast v1, Ljavax/microedition/khronos/opengles/GL11;

    .line 426
    .local v1, gl11:Ljavax/microedition/khronos/opengles/GL11;
    new-array v0, v4, [I

    .line 427
    .local v0, buffer:[I
    iget v2, p0, Lcom/cooliris/media/GridQuad;->mVertBufferIndex:I

    aput v2, v0, v3

    .line 428
    invoke-interface {v1, v4, v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 430
    iget v2, p0, Lcom/cooliris/media/GridQuad;->mOverlayTextureCoordBufferIndex:I

    aput v2, v0, v3

    .line 431
    invoke-interface {v1, v4, v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 433
    iget v2, p0, Lcom/cooliris/media/GridQuad;->mIndexBufferIndex:I

    aput v2, v0, v3

    .line 434
    invoke-interface {v1, v4, v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 437
    .end local v0           #buffer:[I
    .end local v1           #gl11:Ljavax/microedition/khronos/opengles/GL11;
    :cond_24
    invoke-virtual {p0}, Lcom/cooliris/media/GridQuad;->forgetHardwareBuffers()V

    .line 439
    :cond_27
    return-void
.end method

.method public generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 14
    .parameter "gl"

    .prologue
    const v6, 0x88e4

    const v11, 0x8893

    const/4 v10, 0x1

    const v9, 0x8892

    const/4 v8, 0x0

    .line 451
    iget v7, p0, Lcom/cooliris/media/GridQuad;->mVertBufferIndex:I

    if-nez v7, :cond_95

    .line 452
    instance-of v7, p1, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v7, :cond_95

    move-object v2, p1

    .line 453
    check-cast v2, Ljavax/microedition/khronos/opengles/GL11;

    .line 454
    .local v2, gl11:Ljavax/microedition/khronos/opengles/GL11;
    new-array v0, v10, [I

    .line 457
    .local v0, buffer:[I
    invoke-interface {v2, v10, v0, v8}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 458
    aget v7, v0, v8

    iput v7, p0, Lcom/cooliris/media/GridQuad;->mVertBufferIndex:I

    .line 459
    iget v7, p0, Lcom/cooliris/media/GridQuad;->mVertBufferIndex:I

    invoke-interface {v2, v9, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 460
    iget-object v7, p0, Lcom/cooliris/media/GridQuad;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v7

    mul-int/lit8 v5, v7, 0x4

    .line 461
    .local v5, vertexSize:I
    iget-boolean v7, p0, Lcom/cooliris/media/GridQuad;->mDynamicVBO:Z

    if-eqz v7, :cond_96

    const v1, 0x88e8

    .line 462
    .local v1, bufferType:I
    :goto_33
    iget-object v7, p0, Lcom/cooliris/media/GridQuad;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 463
    iget-object v7, p0, Lcom/cooliris/media/GridQuad;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v2, v9, v5, v7, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 466
    invoke-interface {v2, v10, v0, v8}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 467
    aget v7, v0, v8

    iput v7, p0, Lcom/cooliris/media/GridQuad;->mOverlayTextureCoordBufferIndex:I

    .line 468
    iget v7, p0, Lcom/cooliris/media/GridQuad;->mOverlayTextureCoordBufferIndex:I

    invoke-interface {v2, v9, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 469
    iget-object v7, p0, Lcom/cooliris/media/GridQuad;->mOverlayTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v7

    mul-int/lit8 v4, v7, 0x4

    .line 470
    .local v4, texCoordSize:I
    iget-object v7, p0, Lcom/cooliris/media/GridQuad;->mOverlayTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 471
    iget-object v7, p0, Lcom/cooliris/media/GridQuad;->mOverlayTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v2, v9, v4, v7, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 474
    invoke-interface {v2, v10, v0, v8}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 475
    aget v7, v0, v8

    iput v7, p0, Lcom/cooliris/media/GridQuad;->mBaseTextureCoordBufferIndex:I

    .line 476
    iget v7, p0, Lcom/cooliris/media/GridQuad;->mBaseTextureCoordBufferIndex:I

    invoke-interface {v2, v9, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 477
    iget-object v7, p0, Lcom/cooliris/media/GridQuad;->mBaseTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 478
    iget-object v7, p0, Lcom/cooliris/media/GridQuad;->mBaseTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v2, v9, v4, v7, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 482
    invoke-interface {v2, v9, v8}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 485
    invoke-interface {v2, v10, v0, v8}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 486
    aget v7, v0, v8

    iput v7, p0, Lcom/cooliris/media/GridQuad;->mIndexBufferIndex:I

    .line 487
    iget v7, p0, Lcom/cooliris/media/GridQuad;->mIndexBufferIndex:I

    invoke-interface {v2, v11, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 489
    iget-object v7, p0, Lcom/cooliris/media/GridQuad;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v7}, Ljava/nio/CharBuffer;->capacity()I

    move-result v7

    mul-int/lit8 v3, v7, 0x2

    .line 490
    .local v3, indexSize:I
    iget-object v7, p0, Lcom/cooliris/media/GridQuad;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v7, v8}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 491
    iget-object v7, p0, Lcom/cooliris/media/GridQuad;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-interface {v2, v11, v3, v7, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 495
    invoke-interface {v2, v11, v8}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 498
    .end local v0           #buffer:[I
    .end local v1           #bufferType:I
    .end local v2           #gl11:Ljavax/microedition/khronos/opengles/GL11;
    .end local v3           #indexSize:I
    .end local v4           #texCoordSize:I
    .end local v5           #vertexSize:I
    :cond_95
    return-void

    .restart local v0       #buffer:[I
    .restart local v2       #gl11:Ljavax/microedition/khronos/opengles/GL11;
    .restart local v5       #vertexSize:I
    :cond_96
    move v1, v6

    .line 461
    goto :goto_33
.end method

.method public getHeight()F
    .registers 2

    .prologue
    .line 239
    iget v0, p0, Lcom/cooliris/media/GridQuad;->mHeight:F

    return v0
.end method

.method public getWidth()F
    .registers 2

    .prologue
    .line 235
    iget v0, p0, Lcom/cooliris/media/GridQuad;->mWidth:F

    return v0
.end method

.method public recomputeQuad()V
    .registers 24

    .prologue
    .line 258
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/GridQuad;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 259
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/GridQuad;->mBaseTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 260
    move-object/from16 v0, p0

    iget v1, v0, Lcom/cooliris/media/GridQuad;->mAnimWidth:F

    const/high16 v2, 0x3f00

    mul-float v20, v1, v2

    .line 261
    .local v20, widthBy2:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/cooliris/media/GridQuad;->mAnimHeight:F

    const/high16 v2, 0x3f00

    mul-float v19, v1, v2

    .line 262
    .local v19, heightBy2:F
    const/16 v21, 0x0

    .line 263
    .local v21, xOffset:F
    const/16 v22, 0x0

    .line 264
    .local v22, yOffset:F
    move-object/from16 v0, p0

    iget v7, v0, Lcom/cooliris/media/GridQuad;->mU:F

    .line 265
    .local v7, u:F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/cooliris/media/GridQuad;->mV:F

    .line 266
    .local v8, v:F
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v20

    neg-float v1, v0

    add-float v4, v1, v21

    move/from16 v0, v19

    neg-float v1, v0

    add-float v5, v1, v22

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/cooliris/media/GridQuad;->set(IIFFFFFZI)V

    .line 267
    const/4 v10, 0x1

    const/4 v11, 0x0

    add-float v12, v20, v21

    move/from16 v0, v19

    neg-float v1, v0

    add-float v13, v1, v22

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v9, p0

    move/from16 v16, v8

    invoke-direct/range {v9 .. v18}, Lcom/cooliris/media/GridQuad;->set(IIFFFFFZI)V

    .line 268
    const/4 v10, 0x0

    const/4 v11, 0x1

    move/from16 v0, v20

    neg-float v1, v0

    add-float v12, v1, v21

    add-float v13, v19, v22

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v9, p0

    move v15, v7

    invoke-direct/range {v9 .. v18}, Lcom/cooliris/media/GridQuad;->set(IIFFFFFZI)V

    .line 269
    const/4 v10, 0x1

    const/4 v11, 0x1

    add-float v12, v20, v21

    add-float v13, v19, v22

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v18}, Lcom/cooliris/media/GridQuad;->set(IIFFFFFZI)V

    .line 270
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/cooliris/media/GridQuad;->mQuadChanged:Z

    .line 271
    return-void
.end method

.method public resizeQuad(FFFFF)V
    .registers 13
    .parameter "viewAspect"
    .parameter "u"
    .parameter "v"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    .line 277
    iput p2, p0, Lcom/cooliris/media/GridQuad;->mU:F

    .line 278
    iput p3, p0, Lcom/cooliris/media/GridQuad;->mV:F

    .line 279
    div-float v1, p4, p5

    .line 280
    .local v1, imageAspect:F
    iget v5, p0, Lcom/cooliris/media/GridQuad;->mDefaultAspectRatio:F

    .line 281
    .local v5, width:F
    const/high16 v0, 0x3f80

    .line 282
    .local v0, height:F
    const/high16 v6, 0x3f80

    cmpg-float v6, p1, v6

    if-gez v6, :cond_29

    .line 283
    iget v6, p0, Lcom/cooliris/media/GridQuad;->mDefaultAspectRatio:F

    div-float/2addr v6, v1

    mul-float/2addr v0, v6

    .line 284
    div-float v2, v5, p1

    .line 285
    .local v2, maxHeight:F
    cmpl-float v6, v0, v2

    if-lez v6, :cond_1e

    .line 287
    div-float v4, v0, v2

    .line 288
    .local v4, ratio:F
    div-float/2addr v0, v4

    .line 289
    div-float/2addr v5, v4

    .line 300
    .end local v2           #maxHeight:F
    .end local v4           #ratio:F
    :cond_1e
    :goto_1e
    iput v5, p0, Lcom/cooliris/media/GridQuad;->mWidth:F

    .line 301
    iput v0, p0, Lcom/cooliris/media/GridQuad;->mHeight:F

    .line 302
    invoke-virtual {p0}, Lcom/cooliris/media/GridQuad;->commit()V

    .line 303
    invoke-virtual {p0}, Lcom/cooliris/media/GridQuad;->recomputeQuad()V

    .line 304
    return-void

    .line 292
    :cond_29
    iget v6, p0, Lcom/cooliris/media/GridQuad;->mDefaultAspectRatio:F

    div-float v6, v1, v6

    mul-float/2addr v5, v6

    .line 293
    mul-float v3, v0, p1

    .line 294
    .local v3, maxWidth:F
    cmpl-float v6, v5, v3

    if-lez v6, :cond_1e

    .line 295
    div-float v4, v5, v3

    .line 296
    .restart local v4       #ratio:F
    div-float/2addr v5, v4

    .line 297
    div-float/2addr v0, v4

    goto :goto_1e
.end method

.method public set(IIFFFFF)V
    .registers 18
    .parameter "i"
    .parameter "j"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "u"
    .parameter "v"

    .prologue
    .line 307
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/cooliris/media/GridQuad;->set(IIFFFFFZI)V

    .line 308
    return-void
.end method

.method public setBuffersFromFile()Z
    .registers 12

    .prologue
    const/4 v6, 0x0

    .line 503
    const/4 v4, 0x0

    .line 505
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/Android/data/com.cooliris.media/cache/.gridcalc.res"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_95
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_8d

    .line 507
    .end local v4           #fis:Ljava/io/FileInputStream;
    .local v5, fis:Ljava/io/FileInputStream;
    :try_start_1e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 508
    .local v3, fc:Ljava/nio/channels/FileChannel;
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_9a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_9d

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gtz v7, :cond_31

    .line 536
    invoke-static {v5}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v4, v5

    .end local v3           #fc:Ljava/nio/channels/FileChannel;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :goto_30
    return v6

    .line 511
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fc:Ljava/nio/channels/FileChannel;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :cond_31
    const/16 v7, 0xa

    :try_start_33
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 513
    .local v0, bBuf:Ljava/nio/ByteBuffer;
    iget-object v7, p0, Lcom/cooliris/media/GridQuad;->mVertexBufferB:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 514
    iget-object v7, p0, Lcom/cooliris/media/GridQuad;->mBaseTexCoordBufferB:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 515
    iget-object v7, p0, Lcom/cooliris/media/GridQuad;->mOverlayTexCoordBufferB:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 517
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 518
    invoke-virtual {v3, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 519
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>([B)V

    .line 520
    .local v1, checkName:Ljava/lang/String;
    const-string v7, "CHECK__END"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_78

    .line 521
    const-string v7, "GridQuad"

    const-string v8, "Cache end check dirty!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v7, p0, Lcom/cooliris/media/GridQuad;->mVertexBufferB:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 523
    iget-object v7, p0, Lcom/cooliris/media/GridQuad;->mBaseTexCoordBufferB:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 524
    iget-object v7, p0, Lcom/cooliris/media/GridQuad;->mOverlayTexCoordBufferB:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_73
    .catchall {:try_start_33 .. :try_end_73} :catchall_9a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_73} :catch_9d

    .line 536
    invoke-static {v5}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_30

    .line 528
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :cond_78
    :try_start_78
    iget-object v7, p0, Lcom/cooliris/media/GridQuad;->mVertexBufferB:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 529
    iget-object v7, p0, Lcom/cooliris/media/GridQuad;->mBaseTexCoordBufferB:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 530
    iget-object v7, p0, Lcom/cooliris/media/GridQuad;->mOverlayTexCoordBufferB:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_87
    .catchall {:try_start_78 .. :try_end_87} :catchall_9a
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_87} :catch_9d

    .line 531
    const/4 v6, 0x1

    .line 536
    invoke-static {v5}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_30

    .line 532
    .end local v0           #bBuf:Ljava/nio/ByteBuffer;
    .end local v1           #checkName:Ljava/lang/String;
    .end local v3           #fc:Ljava/nio/channels/FileChannel;
    :catch_8d
    move-exception v2

    .line 533
    .local v2, e:Ljava/lang/Exception;
    :goto_8e
    :try_start_8e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_95

    .line 536
    invoke-static {v4}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_30

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_95
    move-exception v6

    :goto_96
    invoke-static {v4}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catchall_9a
    move-exception v6

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_96

    .line 532
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_9d
    move-exception v2

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_8e
.end method

.method public setDynamic(Z)V
    .registers 4
    .parameter "dynamic"

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/cooliris/media/GridQuad;->mDynamicVBO:Z

    .line 229
    iget-boolean v0, p0, Lcom/cooliris/media/GridQuad;->mOrientedQuad:Z

    if-eqz v0, :cond_e

    .line 230
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Dynamic Quads can\'t have orientations"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_e
    return-void
.end method

.method public setQuad(FFFFFFZ)V
    .registers 32
    .parameter "width"
    .parameter "height"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "uExtents"
    .parameter "vExtents"
    .parameter "generateOrientedQuads"

    .prologue
    .line 563
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cooliris/media/GridQuad;->mWidth:F

    .line 564
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cooliris/media/GridQuad;->mHeight:F

    .line 565
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cooliris/media/GridQuad;->mAnimWidth:F

    .line 566
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cooliris/media/GridQuad;->mAnimHeight:F

    .line 567
    div-float v2, p1, p2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/cooliris/media/GridQuad;->mDefaultAspectRatio:F

    .line 569
    const/high16 v2, 0x3f00

    mul-float v23, p1, v2

    .line 570
    .local v23, widthBy2:F
    const/high16 v2, 0x3f00

    mul-float v22, p2, v2

    .line 571
    .local v22, heightBy2:F
    move/from16 v9, p6

    .line 572
    .local v9, v:F
    move/from16 v8, p5

    .line 573
    .local v8, u:F
    if-nez p7, :cond_87

    .line 574
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v23

    neg-float v2, v0

    add-float v5, v2, p3

    move/from16 v0, v22

    neg-float v2, v0

    add-float v6, v2, p4

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/cooliris/media/GridQuad;->set(IIFFFFF)V

    .line 575
    const/4 v11, 0x1

    const/4 v12, 0x0

    add-float v13, v23, p3

    move/from16 v0, v22

    neg-float v2, v0

    add-float v14, v2, p4

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Lcom/cooliris/media/GridQuad;->set(IIFFFFF)V

    .line 576
    const/4 v11, 0x0

    const/4 v12, 0x1

    move/from16 v0, v23

    neg-float v2, v0

    add-float v13, v2, p3

    add-float v14, v22, p4

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move/from16 v16, v8

    invoke-virtual/range {v10 .. v17}, Lcom/cooliris/media/GridQuad;->set(IIFFFFF)V

    .line 577
    const/4 v11, 0x1

    const/4 v12, 0x1

    add-float v13, v23, p3

    add-float v14, v22, p4

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v17}, Lcom/cooliris/media/GridQuad;->set(IIFFFFF)V

    .line 586
    :cond_74
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cooliris/media/GridQuad;->mU:F

    .line 587
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cooliris/media/GridQuad;->mV:F

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/GridQuad;->commit()V

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/GridQuad;->recomputeQuad()V

    .line 591
    return-void

    .line 579
    :cond_87
    const/4 v11, 0x0

    .local v11, i:I
    :goto_88
    const/16 v2, 0x168

    if-ge v11, v2, :cond_74

    .line 580
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v23

    neg-float v2, v0

    add-float v5, v2, p3

    move/from16 v0, v22

    neg-float v2, v0

    add-float v6, v2, p4

    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/cooliris/media/GridQuad;->set(IIFFFFFZI)V

    .line 581
    const/4 v13, 0x1

    const/4 v14, 0x0

    add-float v15, v23, p3

    move/from16 v0, v22

    neg-float v2, v0

    add-float v16, v2, p4

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x1

    move-object/from16 v12, p0

    move/from16 v19, v9

    move/from16 v21, v11

    invoke-direct/range {v12 .. v21}, Lcom/cooliris/media/GridQuad;->set(IIFFFFFZI)V

    .line 582
    const/4 v13, 0x0

    const/4 v14, 0x1

    move/from16 v0, v23

    neg-float v2, v0

    add-float v15, v2, p3

    add-float v16, v22, p4

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v12, p0

    move/from16 v18, v8

    move/from16 v21, v11

    invoke-direct/range {v12 .. v21}, Lcom/cooliris/media/GridQuad;->set(IIFFFFFZI)V

    .line 583
    const/4 v13, 0x1

    const/4 v14, 0x1

    add-float v15, v23, p3

    add-float v16, v22, p4

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v12, p0

    move/from16 v21, v11

    invoke-direct/range {v12 .. v21}, Lcom/cooliris/media/GridQuad;->set(IIFFFFFZI)V

    .line 579
    add-int/lit8 v11, v11, 0x1

    goto :goto_88
.end method

.method public unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5
    .parameter "gl"

    .prologue
    const/4 v2, 0x0

    .line 399
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 400
    .local v0, gl11:Ljavax/microedition/khronos/opengles/GL11;
    const v1, 0x8892

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 401
    const v1, 0x8893

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 402
    return-void
.end method

.method public update(F)V
    .registers 4
    .parameter "timeElapsed"

    .prologue
    .line 243
    iget v0, p0, Lcom/cooliris/media/GridQuad;->mAnimWidth:F

    iget v1, p0, Lcom/cooliris/media/GridQuad;->mWidth:F

    invoke-static {v0, v1, p1}, Lcom/cooliris/media/FloatUtils;->animate(FFF)F

    move-result v0

    iput v0, p0, Lcom/cooliris/media/GridQuad;->mAnimWidth:F

    .line 244
    iget v0, p0, Lcom/cooliris/media/GridQuad;->mAnimHeight:F

    iget v1, p0, Lcom/cooliris/media/GridQuad;->mHeight:F

    invoke-static {v0, v1, p1}, Lcom/cooliris/media/FloatUtils;->animate(FFF)F

    move-result v0

    iput v0, p0, Lcom/cooliris/media/GridQuad;->mAnimHeight:F

    .line 245
    iget v0, p0, Lcom/cooliris/media/GridQuad;->mAnimU:F

    iget v1, p0, Lcom/cooliris/media/GridQuad;->mU:F

    invoke-static {v0, v1, p1}, Lcom/cooliris/media/FloatUtils;->animate(FFF)F

    move-result v0

    iput v0, p0, Lcom/cooliris/media/GridQuad;->mAnimU:F

    .line 246
    iget v0, p0, Lcom/cooliris/media/GridQuad;->mAnimV:F

    iget v1, p0, Lcom/cooliris/media/GridQuad;->mV:F

    invoke-static {v0, v1, p1}, Lcom/cooliris/media/FloatUtils;->animate(FFF)F

    move-result v0

    iput v0, p0, Lcom/cooliris/media/GridQuad;->mAnimV:F

    .line 247
    invoke-virtual {p0}, Lcom/cooliris/media/GridQuad;->recomputeQuad()V

    .line 248
    return-void
.end method

.method public writeBuffersToFile()V
    .registers 8

    .prologue
    .line 541
    const/4 v3, 0x0

    .line 543
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Android/data/com.cooliris.media/cache/.gridcalc.res"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_4a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_42

    .line 545
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_1d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 547
    .local v2, fc:Ljava/nio/channels/FileChannel;
    iget-object v5, p0, Lcom/cooliris/media/GridQuad;->mVertexBufferB:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 548
    iget-object v5, p0, Lcom/cooliris/media/GridQuad;->mBaseTexCoordBufferB:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 549
    iget-object v5, p0, Lcom/cooliris/media/GridQuad;->mOverlayTexCoordBufferB:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 550
    const-string v5, "CHECK__END"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 551
    .local v0, bBuf:Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_3d
    .catchall {:try_start_1d .. :try_end_3d} :catchall_4f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3d} :catch_52

    .line 555
    invoke-static {v4}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 557
    .end local v0           #bBuf:Ljava/nio/ByteBuffer;
    .end local v2           #fc:Ljava/nio/channels/FileChannel;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :goto_41
    return-void

    .line 552
    :catch_42
    move-exception v1

    .line 553
    .local v1, e:Ljava/lang/Exception;
    :goto_43
    :try_start_43
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4a

    .line 555
    invoke-static {v3}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_41

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_4a
    move-exception v5

    :goto_4b
    invoke-static {v3}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v5

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_4f
    move-exception v5

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_4b

    .line 552
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_52
    move-exception v1

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_43
.end method
