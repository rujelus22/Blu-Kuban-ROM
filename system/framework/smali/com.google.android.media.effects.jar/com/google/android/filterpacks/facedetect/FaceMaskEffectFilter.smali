.class public abstract Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;
.super Landroid/filterfw/core/Filter;
.source "FaceMaskEffectFilter.java"


# static fields
.field private static final PCA_DATA_SIZE:I = 0xf

.field protected static final RGB_TO_YUV_MATRIX:Ljava/lang/String; = "0.299, -0.168736,  0.5,      0.000, 0.587, -0.331264, -0.418688, 0.000, 0.114,  0.5,      -0.081312, 0.000, 0.000,  0.5,       0.5,      1.000 "

.field protected static final YUV_TO_RGB_MATRIX:Ljava/lang/String; = " 1.0,       1.0,       1.0,   0.0, -0.000001, -0.344135,  1.772, 0.0,  1.401999, -0.714136,  0.0,   0.0, -0.700999,  0.529135, -0.886, 1.000"

.field private static final mRgbToYuvShader:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nconst mat4 coeff_yuv = mat4(0.299, -0.168736,  0.5,      0.000, 0.587, -0.331264, -0.418688, 0.000, 0.114,  0.5,      -0.081312, 0.000, 0.000,  0.5,       0.5,      1.000 );\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 rgb = vec4(texture2D(tex_sampler_0, v_texcoord).rgb, 1.);\n  gl_FragColor = coeff_yuv * rgb;\n}\n"


# instance fields
.field protected mColorPcaProgram:Landroid/filterfw/core/NativeProgram;

.field protected mHeight:I

.field protected mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

.field protected mRgbToYuvProgram:Landroid/filterfw/core/ShaderProgram;

.field protected mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 67
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mWidth:I

    .line 68
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mHeight:I

    .line 76
    return-void
.end method


# virtual methods
.method protected computeFaceColorPCA(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/Frame;Landroid/graphics/Rect;[F[F[F)V
    .registers 18
    .parameter "context"
    .parameter "input"
    .parameter "faceRect"
    .parameter "mean_vec"
    .parameter "eigen_values"
    .parameter "eigen_vectors"

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->cropRectRegion(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/Frame;Landroid/graphics/Rect;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 192
    .local v0, faceFrame:Landroid/filterfw/core/Frame;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v0, v9}, Landroid/filterfw/core/FrameManager;->duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;

    move-result-object v4

    .line 194
    .local v4, nativeFace:Landroid/filterfw/core/Frame;
    const/16 v8, 0xf

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/filterfw/format/PrimitiveFormat;->createFloatFormat(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v6

    .line 196
    .local v6, outputFormat:Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v5

    .line 198
    .local v5, output:Landroid/filterfw/core/Frame;
    iget-object v8, p0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mColorPcaProgram:Landroid/filterfw/core/NativeProgram;

    const-string v9, "width"

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v10

    invoke-virtual {v10}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    iget-object v8, p0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mColorPcaProgram:Landroid/filterfw/core/NativeProgram;

    const-string v9, "height"

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v10

    invoke-virtual {v10}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    iget-object v8, p0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mColorPcaProgram:Landroid/filterfw/core/NativeProgram;

    invoke-virtual {v8, v4, v5}, Landroid/filterfw/core/NativeProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 201
    invoke-virtual {v5}, Landroid/filterfw/core/Frame;->getFloats()[F

    move-result-object v7

    .line 204
    .local v7, pcaParams:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4c
    const/4 v8, 0x3

    if-ge v1, v8, :cond_6d

    .line 205
    aget v8, v7, v1

    aput v8, p4, v1

    .line 206
    add-int/lit8 v8, v1, 0x3

    aget v8, v7, v8

    aput v8, p5, v1

    .line 208
    const/4 v3, 0x0

    .local v3, j:I
    :goto_5a
    const/4 v8, 0x3

    if-ge v3, v8, :cond_6a

    .line 209
    mul-int/lit8 v8, v1, 0x3

    add-int v2, v8, v3

    .line 210
    .local v2, idx:I
    add-int/lit8 v8, v2, 0x6

    aget v8, v7, v8

    aput v8, p6, v2

    .line 208
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 204
    .end local v2           #idx:I
    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 215
    .end local v3           #j:I
    :cond_6d
    invoke-virtual {v5}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 216
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 217
    return-void
.end method

.method protected createBoundedRect(Landroid/filterfw/core/Frame;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 11
    .parameter "input"
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 139
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v1

    .line 140
    .local v1, inputWidth:I
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v0

    .line 143
    .local v0, inputHeight:I
    iget v6, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 144
    .local v3, xStart:I
    iget v6, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 145
    .local v5, yStart:I
    iget v6, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v1, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 146
    .local v2, xEnd:I
    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v7, v0, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 148
    .local v4, yEnd:I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3, v5, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6
.end method

.method protected createTanhTable(Landroid/filterfw/core/FilterContext;IFFF)Landroid/filterfw/core/Frame;
    .registers 16
    .parameter "context"
    .parameter "tableSize"
    .parameter "maxValue"
    .parameter "offset"
    .parameter "scale"

    .prologue
    .line 117
    const v2, 0x477fff00

    .line 118
    .local v2, precision:F
    int-to-float v7, p2

    const/high16 v8, 0x3f80

    sub-float/2addr v7, v8

    div-float v3, p3, v7

    .line 119
    .local v3, stepSize:F
    new-array v0, p2, [I

    .line 120
    .local v0, array:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, p2, :cond_2a

    .line 121
    neg-float v7, p5

    int-to-float v8, v1

    mul-float/2addr v8, v3

    sub-float/2addr v8, p4

    mul-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v7

    double-to-float v7, v7

    const/high16 v8, 0x3f00

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f00

    add-float v6, v7, v8

    .line 123
    .local v6, value:F
    const v7, 0x477fff00

    mul-float/2addr v7, v6

    float-to-int v7, v7

    aput v7, v0, v1

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 125
    .end local v6           #value:F
    :cond_2a
    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-static {p2, v7, v8, v9}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v4

    .line 127
    .local v4, tableFormat:Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v5

    .line 128
    .local v5, tableFrame:Landroid/filterfw/core/Frame;
    invoke-virtual {v5, v0}, Landroid/filterfw/core/Frame;->setInts([I)V

    .line 130
    return-object v5
.end method

.method protected cropRectRegion(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/Frame;Landroid/graphics/Rect;)Landroid/filterfw/core/Frame;
    .registers 23
    .parameter "context"
    .parameter "input"
    .parameter "rect"

    .prologue
    .line 157
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->createBoundedRect(Landroid/filterfw/core/Frame;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 158
    .local v3, cropRect:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 159
    .local v13, width:I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 161
    .local v4, height:I
    invoke-virtual/range {p2 .. p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v14

    invoke-virtual {v14}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v6

    .line 162
    .local v6, inputWidth:I
    invoke-virtual/range {p2 .. p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v14

    invoke-virtual {v14}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v5

    .line 165
    .local v5, inputHeight:I
    const/4 v14, 0x3

    const/4 v15, 0x3

    invoke-static {v13, v4, v14, v15}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v8

    .line 168
    .local v8, outputFormat:Landroid/filterfw/core/FrameFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v7

    .line 170
    .local v7, output:Landroid/filterfw/core/Frame;
    iget v14, v3, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    int-to-float v15, v6

    div-float v11, v14, v15

    .line 171
    .local v11, rectX:F
    iget v14, v3, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    int-to-float v15, v5

    div-float v12, v14, v15

    .line 172
    .local v12, rectY:F
    int-to-float v14, v13

    int-to-float v15, v6

    div-float v10, v14, v15

    .line 173
    .local v10, rectWidth:F
    int-to-float v14, v4

    int-to-float v15, v5

    div-float v9, v14, v15

    .line 174
    .local v9, rectHeight:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v14, v11, v12, v10, v9}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 175
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    const/high16 v18, 0x3f80

    invoke-virtual/range {v14 .. v18}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 176
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v7}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 178
    return-object v7
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .parameter "portName"
    .parameter "inputFormat"

    .prologue
    .line 90
    return-object p2
.end method

.method protected abstract initPrograms(Landroid/filterfw/core/FilterContext;)V
.end method

.method protected prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 95
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nconst mat4 coeff_yuv = mat4(0.299, -0.168736,  0.5,      0.000, 0.587, -0.331264, -0.418688, 0.000, 0.114,  0.5,      -0.081312, 0.000, 0.000,  0.5,       0.5,      1.000 );\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 rgb = vec4(texture2D(tex_sampler_0, v_texcoord).rgb, 1.);\n  gl_FragColor = coeff_yuv * rgb;\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mRgbToYuvProgram:Landroid/filterfw/core/ShaderProgram;

    .line 96
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    .line 97
    new-instance v0, Landroid/filterfw/core/NativeProgram;

    const-string v1, "filterpack_facedetect"

    const-string v2, "color_pca"

    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mColorPcaProgram:Landroid/filterfw/core/NativeProgram;

    .line 99
    invoke-virtual {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->initPrograms(Landroid/filterfw/core/FilterContext;)V

    .line 100
    return-void
.end method

.method public setupPorts()V
    .registers 4

    .prologue
    .line 80
    const-class v1, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 82
    .local v0, facesFormat:Landroid/filterfw/core/FrameFormat;
    const-string v1, "faces"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 84
    const-string v1, "image"

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 85
    const-string v1, "image"

    const-string v2, "image"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method
