.class public Lcom/google/android/filterpacks/facedetect/FaceliftFilter;
.super Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;
.source "FaceliftFilter.java"


# static fields
.field private static final DEFAULT_ROW_BUFFERS:I = 0x800


# instance fields
.field private mColumnSmoothProgram:Landroid/filterfw/core/ShaderProgram;

.field private final mColumnSmoothShader:Ljava/lang/String;

.field private mCropProgram:Landroid/filterfw/core/ShaderProgram;

.field private mGlCoordOffset:F
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "glCoordOffset"
    .end annotation
.end field

.field private mIntensityProgram:Landroid/filterfw/core/ShaderProgram;

.field private final mIntensityShader:Ljava/lang/String;

.field private mPadSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "padSize"
    .end annotation
.end field

.field private mRangeSigma:F
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "rangeSigma"
    .end annotation
.end field

.field private mRangeSteps:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "rangeSteps"
    .end annotation
.end field

.field private mRgbToRgbaProgram:Landroid/filterfw/core/ShaderProgram;

.field private final mRgbToRgbaShader:Ljava/lang/String;

.field private mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

.field private final mRowSmoothShader:Ljava/lang/String;

.field private mSliceSize:I

.field private mTableFrame:Landroid/filterfw/core/Frame;

.field private mTanhFrame:Landroid/filterfw/core/Frame;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xa

    .line 200
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;-><init>(Ljava/lang/String;)V

    .line 46
    iput v1, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRangeSteps:I

    .line 52
    const v0, 0x3c23d70a

    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRangeSigma:F

    .line 59
    iput v1, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mPadSize:I

    .line 66
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mGlCoordOffset:F

    .line 69
    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 disp;\nvarying vec2 v_texcoord;\nvoid main() {\n  const vec3 weights = vec3(0.299, 0.587, 0.114);\n  vec3 color = 2.0 * texture2D(tex_sampler_0, v_texcoord).rgb;\n  color -= 0.5 * texture2D(tex_sampler_0, (v_texcoord + vec2(0, disp.y))).rgb;\n  color -= 0.5 *texture2D(tex_sampler_0, (v_texcoord + vec2(disp.x, 0))).rgb;\n  gl_FragColor = vec4(color, dot(weights, color));\n}\n"

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRgbToRgbaShader:Ljava/lang/String;

    .line 83
    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float tbl_scale;\nuniform float tbl_offset;\nuniform float coord_offset;\nuniform float tex_offset;\nuniform float tex_scale;\nuniform float rangeSteps;\nuniform float k_scale;\nvarying vec2 v_texcoord;\nvoid main() {\n  float k_value = mod(gl_FragCoord.y - coord_offset, rangeSteps);\n  vec2 coord;\n  coord.x = v_texcoord.x;\n  coord.y = tex_offset + tex_scale * (gl_FragCoord.y - coord_offset - k_value);\n  vec4 color = texture2D(tex_sampler_0, coord);\n  k_value *= k_scale;\n  coord.x = tbl_offset + tbl_scale * abs(k_value - color.a);\n  coord.y = 0.5;\n  vec4 weight_byte = texture2D(tex_sampler_1, coord);\n  float weight = weight_byte.g + 0.00390625 * weight_byte.r;\n  gl_FragColor = vec4(color.rgb, weight);\n}\n"

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIntensityShader:Ljava/lang/String;

    .line 111
    const-string v0, "precision highp float;\nuniform sampler2D tex_sampler_0;\nuniform float stepsize;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec4 result = vec4(color.a * color.rgb, color.a);\n  vec2 coord = vec2(0.0, stepsize);\n  color = texture2D(tex_sampler_0, v_texcoord + coord * 6.0);\n  result += vec4(color.a * color.rgb, color.a);\n  color = texture2D(tex_sampler_0, v_texcoord + coord * 4.0);\n  result += vec4(color.a * color.rgb, color.a);\n  color = texture2D(tex_sampler_0, v_texcoord + coord * 2.0);\n  result += vec4(color.a * color.rgb, color.a);\n  color = texture2D(tex_sampler_0, v_texcoord - coord * 2.0);\n  result += vec4(color.a * color.rgb, color.a);\n  color = texture2D(tex_sampler_0, v_texcoord - coord * 4.0);\n  result += vec4(color.a * color.rgb, color.a);\n  color = texture2D(tex_sampler_0, v_texcoord - coord * 6.0);\n  result += vec4(color.a * color.rgb, color.a);\n  result.rgb = result.rgb / result.a;\n  gl_FragColor = vec4(result.rgb, result.a / 6.0);\n}\n"

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mColumnSmoothShader:Ljava/lang/String;

    .line 136
    const-string v0, "precision highp float;\nconst mat4 coeff_yuv = mat4(0.299, -0.168736,  0.5,      0.000, 0.587, -0.331264, -0.418688, 0.000, 0.114,  0.5,      -0.081312, 0.000, 0.000,  0.5,       0.5,      1.000 );\nconst float byte_scale = 0.00390625;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform vec3 yuv_mean;\nuniform mat3 yuv_var;\nuniform vec3 yuv_scale;\nuniform float tanh_offset;\nuniform float tanh_scale;\nuniform float row_offset;\nuniform float tbl_offset;\nuniform float range_scale;\nuniform float stepsize;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 rgba = texture2D(tex_sampler_0, v_texcoord);\n  vec4 yuv = coeff_yuv * vec4(rgba.rgb, 1.0);\n  vec3 proj = yuv_var * (yuv.xyz - yuv_mean);\n  proj = yuv_scale * proj;\n  float dist = sqrt(0.3333 * dot(proj, proj));\n  dist = min(1.0, dist * 0.2);\n  float tanh_value = tanh_offset + tanh_scale * dist;\n  vec4 weight_byte = texture2D(tex_sampler_2, vec2(tanh_value, 0.5));\n  float alpha = weight_byte.g +  byte_scale * weight_byte.r;\n  float k_value = rgba.a * range_scale;\n  vec2 coord = v_texcoord;\n  coord.y = tbl_offset + v_texcoord.y - row_offset + k_value;\n  vec4 color = texture2D(tex_sampler_1, coord);\n  vec4 result = vec4(color.a * color.rgb, color.a);\n  vec2 disp = vec2(stepsize, 0.0);\n  color =  texture2D(tex_sampler_1, coord + disp * 5.5);\n  result += vec4(color.a * color.rgb, color.a);\n  color =  texture2D(tex_sampler_1, coord + disp * 3.5);\n  result += vec4(color.a * color.rgb, color.a);\n  color =  texture2D(tex_sampler_1, coord + disp * 1.5);\n  result += vec4(color.a * color.rgb, color.a);\n  color =  texture2D(tex_sampler_1, coord - disp * 1.5);\n  result += vec4(color.a * color.rgb, color.a);\n  color =  texture2D(tex_sampler_1, coord - disp * 3.5);\n  result += vec4(color.a * color.rgb, color.a);\n  color =  texture2D(tex_sampler_1, coord - disp * 5.5);\n  result += vec4(color.a * color.rgb, color.a);\n  result.rgb = result.rgb / result.a;\n  gl_FragColor = vec4(result.rgb, alpha);\n}\n"

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothShader:Ljava/lang/String;

    .line 189
    iput-object v2, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    .line 190
    iput-object v2, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTanhFrame:Landroid/filterfw/core/Frame;

    .line 201
    return-void
.end method

.method private createExpTable(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Frame;
    .registers 15
    .parameter "context"

    .prologue
    const/4 v12, 0x3

    const/16 v11, 0x100

    .line 258
    const/16 v7, 0x100

    .line 259
    .local v7, tableSize:I
    const v4, 0x3b808081

    .line 260
    .local v4, stepSize:F
    const v2, 0x477fff00

    .line 262
    .local v2, precision:F
    new-array v0, v11, [I

    .line 263
    .local v0, array:[I
    const v9, 0x37810183

    iget v10, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRangeSigma:F

    div-float v3, v9, v10

    .line 265
    .local v3, scale:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    if-ge v1, v11, :cond_32

    .line 266
    neg-float v9, v3

    int-to-float v10, v1

    mul-float/2addr v9, v10

    int-to-float v10, v1

    mul-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v9

    double-to-float v8, v9

    .line 267
    .local v8, value:F
    const v9, 0x477fff00

    mul-float/2addr v9, v8

    float-to-int v9, v9

    aput v9, v0, v1

    .line 269
    aget v9, v0, v1

    if-ge v9, v11, :cond_2f

    .line 270
    aput v11, v0, v1

    .line 265
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 273
    .end local v8           #value:F
    :cond_32
    const/4 v9, 0x1

    invoke-static {v11, v9, v12, v12}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v5

    .line 277
    .local v5, tableFormat:Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    .line 278
    .local v6, tableFrame:Landroid/filterfw/core/Frame;
    invoke-virtual {v6, v0}, Landroid/filterfw/core/Frame;->setInts([I)V

    .line 280
    return-object v6
.end method

.method private initParameters(Landroid/filterfw/core/FilterContext;)V
    .registers 13
    .parameter "context"

    .prologue
    const/high16 v10, 0x3f00

    const/high16 v9, 0x3f80

    .line 228
    const/16 v7, 0x100

    .line 229
    .local v7, expTableSize:I
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_f

    .line 230
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 231
    :cond_f
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->createExpTable(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Frame;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    .line 233
    const/16 v2, 0x1f4

    .line 234
    .local v2, tanhTableSize:I
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTanhFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_20

    .line 235
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTanhFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 236
    :cond_20
    const/high16 v3, 0x40a0

    const v4, 0x3f933333

    const/high16 v5, 0x4020

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->createTanhTable(Landroid/filterfw/core/FilterContext;IFFF)Landroid/filterfw/core/Frame;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTanhFrame:Landroid/filterfw/core/Frame;

    .line 238
    const/4 v0, 0x2

    new-array v6, v0, [F

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mWidth:I

    int-to-float v1, v1

    div-float v1, v9, v1

    aput v1, v6, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mHeight:I

    int-to-float v1, v1

    div-float v1, v9, v1

    aput v1, v6, v0

    .line 239
    .local v6, disp:[F
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRgbToRgbaProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "disp"

    invoke-virtual {v0, v1, v6}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    iget v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRangeSteps:I

    int-to-float v0, v0

    sub-float/2addr v0, v9

    div-float v8, v9, v0

    .line 242
    .local v8, k_scale:F
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIntensityProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "k_scale"

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIntensityProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "coord_offset"

    iget v3, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mGlCoordOffset:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIntensityProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "rangeSteps"

    iget v3, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRangeSteps:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIntensityProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "tbl_offset"

    int-to-float v3, v7

    div-float v3, v10, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIntensityProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "tbl_scale"

    int-to-float v3, v7

    sub-float/2addr v3, v9

    int-to-float v4, v7

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "stepsize"

    iget v3, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mWidth:I

    int-to-float v3, v3

    div-float v3, v9, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "tanh_offset"

    int-to-float v3, v2

    div-float v3, v10, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "tanh_scale"

    int-to-float v3, v2

    sub-float/2addr v3, v9

    int-to-float v4, v2

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    const/16 v0, 0x800

    iget v1, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRangeSteps:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mPadSize:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mSliceSize:I

    .line 255
    return-void
.end method

.method private processOneSlice(Landroid/filterfw/core/FilterContext;IIIILandroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V
    .registers 33
    .parameter "context"
    .parameter "startX"
    .parameter "endX"
    .parameter "startY"
    .parameter "endY"
    .parameter "input"
    .parameter "tempFrame"
    .parameter "output"

    .prologue
    .line 286
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v8, v0, [Landroid/filterfw/core/Frame;

    .line 288
    .local v8, inputs:[Landroid/filterfw/core/Frame;
    sub-int v20, p3, p2

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mPadSize:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    add-int v19, v20, v21

    .line 289
    .local v19, width:I
    sub-int v20, p5, p4

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mPadSize:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    add-int v7, v20, v21

    .line 291
    .local v7, height:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mPadSize:I

    move/from16 v20, v0

    sub-int v20, p2, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v13, v20, v21

    .line 292
    .local v13, rectX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mPadSize:I

    move/from16 v20, v0

    sub-int v20, p4, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v14, v20, v21

    .line 293
    .local v14, rectY:F
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v12, v20, v21

    .line 294
    .local v12, rectWidth:F
    int-to-float v0, v7

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v11, v20, v21

    .line 297
    .local v11, rectHeight:F
    const/16 v20, 0x3

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v7, v1, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v15

    .line 300
    .local v15, rgbaFormat:Landroid/filterfw/core/FrameFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v16

    .line 301
    .local v16, rgbaFrame:Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRgbToRgbaProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v14, v12, v11}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRgbToRgbaProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p6

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRangeSteps:I

    move/from16 v20, v0

    mul-int v20, v20, v7

    const/16 v21, 0x3

    const/16 v22, 0x3

    invoke-static/range {v19 .. v22}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v9

    .line 308
    .local v9, intensityFormat:Landroid/filterfw/core/FrameFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v10

    .line 309
    .local v10, intensityFrame:Landroid/filterfw/core/Frame;
    const/16 v20, 0x0

    aput-object v16, v8, v20

    .line 310
    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    move-object/from16 v21, v0

    aput-object v21, v8, v20

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIntensityProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v20, v0

    const-string v21, "tex_offset"

    const/high16 v22, 0x3f00

    int-to-float v0, v7

    move/from16 v23, v0

    div-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIntensityProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v20, v0

    const-string v21, "tex_scale"

    const/high16 v22, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRangeSteps:I

    move/from16 v23, v0

    mul-int v23, v23, v7

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIntensityProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v10}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 316
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v17

    .line 317
    .local v17, smoothFrame:Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mColumnSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v20, v0

    const-string v21, "stepsize"

    const/high16 v22, 0x3f80

    int-to-float v0, v7

    move/from16 v23, v0

    div-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mColumnSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v20, v0

    const-string v21, "row_offset"

    const/high16 v22, 0x3f00

    int-to-float v0, v7

    move/from16 v23, v0

    div-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v20, v0

    const-string v21, "tbl_offset"

    const/high16 v22, 0x3f00

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRangeSteps:I

    move/from16 v23, v0

    mul-int v23, v23, v7

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v20, v0

    const-string v21, "range_scale"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRangeSteps:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x3f80

    sub-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRangeSteps:I

    move/from16 v23, v0

    mul-int v23, v23, v7

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v14, v12, v11}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 326
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Landroid/filterfw/core/Frame;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    aput-object v16, v18, v20

    const/16 v20, 0x1

    aput-object v17, v18, v20

    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTanhFrame:Landroid/filterfw/core/Frame;

    move-object/from16 v21, v0

    aput-object v21, v18, v20

    .line 327
    .local v18, stageInputs:[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 330
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v5, v20, v21

    .line 331
    .local v5, blkX:F
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v6, v20, v21

    .line 332
    .local v6, blkY:F
    sub-int v20, p3, p2

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v4, v20, v21

    .line 333
    .local v4, blkWidth:F
    sub-int v20, p5, p4

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v3, v20, v21

    .line 334
    .local v3, blkHeight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6, v4, v3}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6, v4, v3}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 339
    invoke-virtual/range {v16 .. v16}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 340
    invoke-virtual {v10}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 341
    invoke-virtual/range {v17 .. v17}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 342
    return-void
.end method

.method private rescaleRect(Landroid/filterfw/core/Frame;Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .registers 14
    .parameter "input"
    .parameter "rect"
    .parameter "ratio"

    .prologue
    const-wide/high16 v8, 0x3fe0

    .line 345
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    float-to-double v2, p3

    mul-double/2addr v2, v8

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    float-to-double v3, p3

    mul-double/2addr v3, v8

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    float-to-double v4, p3

    mul-double/2addr v4, v8

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    float-to-double v5, p3

    mul-double/2addr v5, v8

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-double v7, v7

    mul-double/2addr v5, v7

    double-to-int v5, v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 349
    .local v0, newRect:Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v0}, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->createBoundedRect(Landroid/filterfw/core/Frame;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected initPrograms(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 218
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float tbl_scale;\nuniform float tbl_offset;\nuniform float coord_offset;\nuniform float tex_offset;\nuniform float tex_scale;\nuniform float rangeSteps;\nuniform float k_scale;\nvarying vec2 v_texcoord;\nvoid main() {\n  float k_value = mod(gl_FragCoord.y - coord_offset, rangeSteps);\n  vec2 coord;\n  coord.x = v_texcoord.x;\n  coord.y = tex_offset + tex_scale * (gl_FragCoord.y - coord_offset - k_value);\n  vec4 color = texture2D(tex_sampler_0, coord);\n  k_value *= k_scale;\n  coord.x = tbl_offset + tbl_scale * abs(k_value - color.a);\n  coord.y = 0.5;\n  vec4 weight_byte = texture2D(tex_sampler_1, coord);\n  float weight = weight_byte.g + 0.00390625 * weight_byte.r;\n  gl_FragColor = vec4(color.rgb, weight);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIntensityProgram:Landroid/filterfw/core/ShaderProgram;

    .line 220
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 disp;\nvarying vec2 v_texcoord;\nvoid main() {\n  const vec3 weights = vec3(0.299, 0.587, 0.114);\n  vec3 color = 2.0 * texture2D(tex_sampler_0, v_texcoord).rgb;\n  color -= 0.5 * texture2D(tex_sampler_0, (v_texcoord + vec2(0, disp.y))).rgb;\n  color -= 0.5 *texture2D(tex_sampler_0, (v_texcoord + vec2(disp.x, 0))).rgb;\n  gl_FragColor = vec4(color, dot(weights, color));\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRgbToRgbaProgram:Landroid/filterfw/core/ShaderProgram;

    .line 222
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "precision highp float;\nuniform sampler2D tex_sampler_0;\nuniform float stepsize;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec4 result = vec4(color.a * color.rgb, color.a);\n  vec2 coord = vec2(0.0, stepsize);\n  color = texture2D(tex_sampler_0, v_texcoord + coord * 6.0);\n  result += vec4(color.a * color.rgb, color.a);\n  color = texture2D(tex_sampler_0, v_texcoord + coord * 4.0);\n  result += vec4(color.a * color.rgb, color.a);\n  color = texture2D(tex_sampler_0, v_texcoord + coord * 2.0);\n  result += vec4(color.a * color.rgb, color.a);\n  color = texture2D(tex_sampler_0, v_texcoord - coord * 2.0);\n  result += vec4(color.a * color.rgb, color.a);\n  color = texture2D(tex_sampler_0, v_texcoord - coord * 4.0);\n  result += vec4(color.a * color.rgb, color.a);\n  color = texture2D(tex_sampler_0, v_texcoord - coord * 6.0);\n  result += vec4(color.a * color.rgb, color.a);\n  result.rgb = result.rgb / result.a;\n  gl_FragColor = vec4(result.rgb, result.a / 6.0);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mColumnSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    .line 224
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "precision highp float;\nconst mat4 coeff_yuv = mat4(0.299, -0.168736,  0.5,      0.000, 0.587, -0.331264, -0.418688, 0.000, 0.114,  0.5,      -0.081312, 0.000, 0.000,  0.5,       0.5,      1.000 );\nconst float byte_scale = 0.00390625;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform vec3 yuv_mean;\nuniform mat3 yuv_var;\nuniform vec3 yuv_scale;\nuniform float tanh_offset;\nuniform float tanh_scale;\nuniform float row_offset;\nuniform float tbl_offset;\nuniform float range_scale;\nuniform float stepsize;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 rgba = texture2D(tex_sampler_0, v_texcoord);\n  vec4 yuv = coeff_yuv * vec4(rgba.rgb, 1.0);\n  vec3 proj = yuv_var * (yuv.xyz - yuv_mean);\n  proj = yuv_scale * proj;\n  float dist = sqrt(0.3333 * dot(proj, proj));\n  dist = min(1.0, dist * 0.2);\n  float tanh_value = tanh_offset + tanh_scale * dist;\n  vec4 weight_byte = texture2D(tex_sampler_2, vec2(tanh_value, 0.5));\n  float alpha = weight_byte.g +  byte_scale * weight_byte.r;\n  float k_value = rgba.a * range_scale;\n  vec2 coord = v_texcoord;\n  coord.y = tbl_offset + v_texcoord.y - row_offset + k_value;\n  vec4 color = texture2D(tex_sampler_1, coord);\n  vec4 result = vec4(color.a * color.rgb, color.a);\n  vec2 disp = vec2(stepsize, 0.0);\n  color =  texture2D(tex_sampler_1, coord + disp * 5.5);\n  result += vec4(color.a * color.rgb, color.a);\n  color =  texture2D(tex_sampler_1, coord + disp * 3.5);\n  result += vec4(color.a * color.rgb, color.a);\n  color =  texture2D(tex_sampler_1, coord + disp * 1.5);\n  result += vec4(color.a * color.rgb, color.a);\n  color =  texture2D(tex_sampler_1, coord - disp * 1.5);\n  result += vec4(color.a * color.rgb, color.a);\n  color =  texture2D(tex_sampler_1, coord - disp * 3.5);\n  result += vec4(color.a * color.rgb, color.a);\n  color =  texture2D(tex_sampler_1, coord - disp * 5.5);\n  result += vec4(color.a * color.rgb, color.a);\n  result.rgb = result.rgb / result.a;\n  gl_FragColor = vec4(result.rgb, alpha);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    .line 225
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 27
    .parameter "context"

    .prologue
    .line 355
    const-string v2, "image"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v15

    .line 356
    .local v15, input:Landroid/filterfw/core/Frame;
    invoke-virtual {v15}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v22

    .line 359
    .local v22, inputFormat:Landroid/filterfw/core/FrameFormat;
    const-string v2, "faces"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v20

    .line 360
    .local v20, facesFrame:Landroid/filterfw/core/Frame;
    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    .line 361
    .local v19, faces:Lcom/google/android/filterpacks/facedetect/FaceMeta;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    move-result v18

    .line 363
    .local v18, faceCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    if-eqz v2, :cond_48

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mColorPcaProgram:Landroid/filterfw/core/NativeProgram;

    if-eqz v2, :cond_48

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRgbToYuvProgram:Landroid/filterfw/core/ShaderProgram;

    if-eqz v2, :cond_48

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIntensityProgram:Landroid/filterfw/core/ShaderProgram;

    if-eqz v2, :cond_48

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRgbToRgbaProgram:Landroid/filterfw/core/ShaderProgram;

    if-eqz v2, :cond_48

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mColumnSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    if-eqz v2, :cond_48

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    if-nez v2, :cond_50

    .line 367
    :cond_48
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "programs are missing at process."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 371
    :cond_50
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v4

    .line 372
    .local v4, yuvFrame:Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRgbToYuvProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v15, v4}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 374
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v16

    .line 377
    .local v16, tempFrame:Landroid/filterfw/core/Frame;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v17

    .local v17, output:Landroid/filterfw/core/Frame;
    move-object/from16 v2, v17

    .line 380
    check-cast v2, Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 381
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v2, v3, v9, v10}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 382
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 385
    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mWidth:I

    if-ne v2, v3, :cond_9c

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mHeight:I

    if-eq v2, v3, :cond_af

    .line 386
    :cond_9c
    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mWidth:I

    .line 387
    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mHeight:I

    .line 388
    invoke-direct/range {p0 .. p1}, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->initParameters(Landroid/filterfw/core/FilterContext;)V

    .line 391
    :cond_af
    const/4 v2, 0x3

    new-array v6, v2, [F

    .line 392
    .local v6, color_mean:[F
    const/4 v2, 0x3

    new-array v7, v2, [F

    .line 393
    .local v7, eigen_values:[F
    const/16 v2, 0x9

    new-array v8, v2, [F

    .line 394
    .local v8, eigen_vectors:[F
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 395
    .local v5, faceRect:Landroid/graphics/Rect;
    const/16 v21, 0x0

    .local v21, i:I
    :goto_c0
    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_196

    .line 397
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mWidth:I

    int-to-float v2, v2

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX0(I)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v5, Landroid/graphics/Rect;->left:I

    .line 398
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mHeight:I

    int-to-float v2, v2

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY0(I)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v5, Landroid/graphics/Rect;->top:I

    .line 399
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mWidth:I

    int-to-float v2, v2

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX1(I)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v5, Landroid/graphics/Rect;->right:I

    .line 400
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mHeight:I

    int-to-float v2, v2

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY1(I)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 402
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->computeFaceColorPCA(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/Frame;Landroid/graphics/Rect;[F[F[F)V

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v3, "yuv_mean"

    invoke-virtual {v2, v3, v6}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v3, "yuv_var"

    invoke-virtual {v2, v3, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 407
    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v23, v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v9, 0x0

    aget v9, v7, v9

    div-float/2addr v3, v9

    aput v3, v23, v2

    const/4 v2, 0x1

    const/high16 v3, 0x3f80

    const/4 v9, 0x1

    aget v9, v7, v9

    div-float/2addr v3, v9

    aput v3, v23, v2

    const/4 v2, 0x2

    const/high16 v3, 0x3f80

    const/4 v9, 0x2

    aget v9, v7, v9

    div-float/2addr v3, v9

    aput v3, v23, v2

    .line 410
    .local v23, rgb_scale:[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v3, "yuv_scale"

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 412
    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5, v2}, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->rescaleRect(Landroid/filterfw/core/Frame;Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v24

    .line 413
    .local v24, smoothRect:Landroid/graphics/Rect;
    move-object/from16 v0, v24

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 414
    .local v13, startIdx:I
    :goto_166
    move-object/from16 v0, v24

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v2, :cond_192

    .line 415
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mSliceSize:I

    add-int/2addr v2, v13

    add-int/lit8 v14, v2, -0x1

    .line 416
    .local v14, endIdx:I
    move-object/from16 v0, v24

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-le v14, v2, :cond_17d

    move-object/from16 v0, v24

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    .line 418
    :cond_17d
    move-object/from16 v0, v24

    iget v11, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v24

    iget v12, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v17}, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->processOneSlice(Landroid/filterfw/core/FilterContext;IIIILandroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 420
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mSliceSize:I

    add-int/2addr v13, v2

    .line 421
    goto :goto_166

    .line 395
    .end local v14           #endIdx:I
    :cond_192
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_c0

    .line 424
    .end local v13           #startIdx:I
    .end local v23           #rgb_scale:[F
    .end local v24           #smoothRect:Landroid/graphics/Rect;
    :cond_196
    const-string v2, "image"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 425
    invoke-virtual/range {v17 .. v17}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 426
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 427
    invoke-virtual/range {v16 .. v16}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 428
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_c

    .line 206
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 207
    iput-object v1, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    .line 209
    :cond_c
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTanhFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_17

    .line 210
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTanhFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 211
    iput-object v1, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTanhFrame:Landroid/filterfw/core/Frame;

    .line 213
    :cond_17
    return-void
.end method
