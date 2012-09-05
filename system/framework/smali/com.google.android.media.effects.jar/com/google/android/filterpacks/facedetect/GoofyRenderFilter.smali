.class public Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;
.super Landroid/filterfw/core/Filter;
.source "GoofyRenderFilter.java"


# static fields
.field private static final BIG_EYES:I = 0x1

.field private static final BIG_MOUTH:I = 0x2

.field private static final BIG_NOSE:I = 0x4

.field private static final NUM_EFFECTS:I = 0x6

.field private static final SMALL_EYES:I = 0x5

.field private static final SMALL_MOUTH:I = 0x3

.field private static final SQUEEZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GoofyRenderFilter"


# instance fields
.field private mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

.field private final mBigEyesShader:Ljava/lang/String;

.field private mCurrentEffect:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "currentEffect"
    .end annotation
.end field

.field private mDistortionAmount:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "distortionAmount"
    .end annotation
.end field

.field private mGoofyProgram:Landroid/filterfw/core/ShaderProgram;

.field private final mGoofyShader:Ljava/lang/String;

.field private mShrinkFunc:Z

.field private mTableFrame:Landroid/filterfw/core/Frame;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mCurrentEffect:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mDistortionAmount:F

    .line 75
    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform vec2 center;\nuniform vec2 weight;\nuniform float dist_offset;\nuniform float dist_mult;\nuniform bool use_shrink;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 point = v_texcoord - center;\n  vec2 spoint;\n  spoint = weight * point;\n  float dist = length(spoint) * dist_mult + dist_offset;\n  vec4 scale_byte = texture2D(tex_sampler_1, vec2(dist, 0.5));\n  float scale = scale_byte.g + scale_byte.r * 0.00390625;\n  if (use_shrink) {\n    scale = 1.0 + scale;\n  } else {\n    scale = 1.0 - scale;\n  }\n  if (dist >= 1.0) { \n     scale = 1.0;\n  } \n  gl_FragColor = texture2D(tex_sampler_0, center + scale * point);\n}\n"

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mGoofyShader:Ljava/lang/String;

    .line 103
    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform vec2 left_eye;\nuniform vec2 right_eye;\nuniform vec2 scale;\nuniform float dist_offset;\nuniform float dist_mult;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 left_eye_offset = (v_texcoord - left_eye); \n  float left_eye_dist = length(left_eye_offset * scale); \n  vec2 right_eye_offset = (v_texcoord - right_eye); \n  float right_eye_dist = length(right_eye_offset * scale); \n  float dist;\n  vec2 offset;\n  vec2 center;\n  if (left_eye_dist < 1.0 || right_eye_dist < 1.0){\n    float dist_left = left_eye_dist * dist_mult + dist_offset;\n    vec4 value_byte = texture2D(tex_sampler_1, vec2(dist_left, 0.5));\n    float value_left = (value_byte.g + value_byte.r * 0.00390625);\n    vec4 color_left = texture2D(tex_sampler_0,\n            left_eye + (1.0 - value_left) * left_eye_offset);\n    float dist_right = right_eye_dist * dist_mult + dist_offset;\n    value_byte = texture2D(tex_sampler_1, vec2(dist_right, 0.5));\n    float value_right = (value_byte.g + value_byte.r * 0.00390625);\n    vec4 color_right = texture2D(tex_sampler_0,\n            right_eye + (1.0 - value_right) * right_eye_offset);\n    float alpha = value_left / (value_left + value_right);\n    gl_FragColor = mix(color_right, color_left, alpha);\n  } else {\n    gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n  }\n}\n"

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mBigEyesShader:Ljava/lang/String;

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mShrinkFunc:Z

    .line 149
    return-void
.end method

.method private createLookupTable(Landroid/filterfw/core/FilterContext;)V
    .registers 21
    .parameter "context"

    .prologue
    .line 187
    const/16 v9, 0x7d0

    .line 188
    .local v9, tableSize:I
    const v5, 0x477fff00

    .line 189
    .local v5, precision:F
    const v4, 0x40490fda

    .line 191
    .local v4, pi:F
    const/16 v11, 0x7d0

    new-array v1, v11, [I

    .line 193
    .local v1, array:[I
    const/high16 v6, 0x3f80

    .line 194
    .local v6, scale:F
    const/4 v3, 0x0

    .local v3, j:I
    :goto_f
    const/16 v11, 0x7d0

    if-ge v3, v11, :cond_b5

    .line 195
    int-to-float v11, v3

    const/high16 v12, 0x44fa

    div-float v2, v11, v12

    .line 196
    .local v2, dist:F
    const/4 v10, 0x0

    .line 197
    .local v10, value:F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mCurrentEffect:I

    packed-switch v11, :pswitch_data_138

    .line 232
    :goto_20
    const v11, 0x477fff00

    mul-float/2addr v11, v10

    float-to-int v11, v11

    aput v11, v1, v3

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 201
    :pswitch_2a
    const v7, 0x3e99999a

    .line 206
    .local v7, sigma:F
    if-nez v3, :cond_3e

    const-wide/high16 v11, 0x4090

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    float-to-double v13, v7

    mul-double/2addr v11, v13

    float-to-double v13, v7

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v6, v11

    .line 207
    :cond_3e
    const/high16 v11, 0x3f80

    cmpl-float v11, v6, v11

    if-lez v11, :cond_45

    mul-float/2addr v2, v6

    .line 210
    :cond_45
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mDistortionAmount:F

    const v12, 0x3f4ccccd

    mul-float/2addr v11, v12

    const/high16 v12, 0x4000

    neg-float v13, v2

    mul-float/2addr v13, v2

    mul-float v14, v7, v7

    div-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    move-result-wide v13

    double-to-float v13, v13

    sub-float/2addr v12, v13

    const/high16 v13, 0x4000

    const/high16 v14, 0x3f80

    const/high16 v15, 0x3e80

    add-float/2addr v15, v2

    float-to-double v15, v15

    const-wide/high16 v17, 0x4010

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    neg-double v15, v15

    const-wide/high16 v17, 0x4000

    mul-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->exp(D)D

    move-result-wide v15

    double-to-float v15, v15

    add-float/2addr v14, v15

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    mul-float v10, v11, v12

    .line 213
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mShrinkFunc:Z

    goto :goto_20

    .line 219
    .end local v7           #sigma:F
    :pswitch_7e
    const v7, 0x3f333333

    .line 224
    .restart local v7       #sigma:F
    if-nez v3, :cond_92

    const-wide/high16 v11, 0x4090

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    float-to-double v13, v7

    mul-double/2addr v11, v13

    float-to-double v13, v7

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v6, v11

    .line 225
    :cond_92
    const/high16 v11, 0x3f80

    cmpl-float v11, v6, v11

    if-lez v11, :cond_99

    mul-float/2addr v2, v6

    .line 226
    :cond_99
    const v11, 0x3f266666

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mDistortionAmount:F

    mul-float/2addr v11, v12

    neg-float v12, v2

    mul-float/2addr v12, v2

    mul-float v13, v7, v7

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float v10, v11, v12

    .line 228
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mShrinkFunc:Z

    goto/16 :goto_20

    .line 235
    .end local v2           #dist:F
    .end local v7           #sigma:F
    .end local v10           #value:F
    :cond_b5
    const/16 v11, 0x7d0

    const/4 v12, 0x1

    const/4 v13, 0x3

    const/4 v14, 0x3

    invoke-static {v11, v12, v13, v14}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v8

    .line 238
    .local v8, tableFormat:Landroid/filterfw/core/FrameFormat;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    if-eqz v11, :cond_cb

    .line 239
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v11}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 241
    :cond_cb
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    .line 242
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v11, v1}, Landroid/filterfw/core/Frame;->setInts([I)V

    .line 244
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mCurrentEffect:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_106

    .line 245
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v12, "dist_offset"

    const v13, 0x3a03126f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v12, "dist_mult"

    const v13, 0x3f7fdf3b

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    :goto_105
    return-void

    .line 248
    :cond_106
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mGoofyProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v12, "dist_offset"

    const v13, 0x3a03126f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mGoofyProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v12, "dist_mult"

    const v13, 0x3f7fdf3b

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mGoofyProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v12, "use_shrink"

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mShrinkFunc:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_105

    .line 197
    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_7e
        :pswitch_7e
        :pswitch_2a
        :pswitch_7e
        :pswitch_2a
    .end packed-switch
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .parameter "name"
    .parameter "context"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mGoofyProgram:Landroid/filterfw/core/ShaderProgram;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    if-eqz v0, :cond_b

    .line 182
    invoke-direct {p0, p2}, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->createLookupTable(Landroid/filterfw/core/FilterContext;)V

    .line 184
    :cond_b
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .parameter "portName"
    .parameter "inputFormat"

    .prologue
    .line 167
    return-object p2
.end method

.method protected prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 172
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform vec2 center;\nuniform vec2 weight;\nuniform float dist_offset;\nuniform float dist_mult;\nuniform bool use_shrink;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 point = v_texcoord - center;\n  vec2 spoint;\n  spoint = weight * point;\n  float dist = length(spoint) * dist_mult + dist_offset;\n  vec4 scale_byte = texture2D(tex_sampler_1, vec2(dist, 0.5));\n  float scale = scale_byte.g + scale_byte.r * 0.00390625;\n  if (use_shrink) {\n    scale = 1.0 + scale;\n  } else {\n    scale = 1.0 - scale;\n  }\n  if (dist >= 1.0) { \n     scale = 1.0;\n  } \n  gl_FragColor = texture2D(tex_sampler_0, center + scale * point);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mGoofyProgram:Landroid/filterfw/core/ShaderProgram;

    .line 174
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform vec2 left_eye;\nuniform vec2 right_eye;\nuniform vec2 scale;\nuniform float dist_offset;\nuniform float dist_mult;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 left_eye_offset = (v_texcoord - left_eye); \n  float left_eye_dist = length(left_eye_offset * scale); \n  vec2 right_eye_offset = (v_texcoord - right_eye); \n  float right_eye_dist = length(right_eye_offset * scale); \n  float dist;\n  vec2 offset;\n  vec2 center;\n  if (left_eye_dist < 1.0 || right_eye_dist < 1.0){\n    float dist_left = left_eye_dist * dist_mult + dist_offset;\n    vec4 value_byte = texture2D(tex_sampler_1, vec2(dist_left, 0.5));\n    float value_left = (value_byte.g + value_byte.r * 0.00390625);\n    vec4 color_left = texture2D(tex_sampler_0,\n            left_eye + (1.0 - value_left) * left_eye_offset);\n    float dist_right = right_eye_dist * dist_mult + dist_offset;\n    value_byte = texture2D(tex_sampler_1, vec2(dist_right, 0.5));\n    float value_right = (value_byte.g + value_byte.r * 0.00390625);\n    vec4 color_right = texture2D(tex_sampler_0,\n            right_eye + (1.0 - value_right) * right_eye_offset);\n    float alpha = value_left / (value_left + value_right);\n    gl_FragColor = mix(color_right, color_left, alpha);\n  } else {\n    gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n  }\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    .line 176
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->createLookupTable(Landroid/filterfw/core/FilterContext;)V

    .line 177
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 43
    .parameter "context"

    .prologue
    .line 258
    const-string v36, "image"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v19

    .line 259
    .local v19, input:Landroid/filterfw/core/Frame;
    invoke-virtual/range {v19 .. v19}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v20

    .line 261
    .local v20, inputFormat:Landroid/filterfw/core/FrameFormat;
    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v35

    .line 262
    .local v35, width:I
    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v17

    .line 263
    .local v17, height:I
    move/from16 v0, v35

    move/from16 v1, v17

    if-le v0, v1, :cond_231

    .line 264
    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v5, v0, [F

    const/16 v36, 0x0

    const/high16 v37, 0x3f80

    aput v37, v5, v36

    const/16 v36, 0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v37, v37, v38

    aput v37, v5, v36

    .line 268
    .local v5, aspectRatio:[F
    :goto_38
    const-string v36, "faces"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v16

    .line 269
    .local v16, facesFrame:Landroid/filterfw/core/Frame;
    invoke-virtual/range {v16 .. v16}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    .line 271
    .local v15, faces:Lcom/google/android/filterpacks/facedetect/FaceMeta;
    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v10, v0, [F

    .line 272
    .local v10, center:[F
    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [F

    move-object/from16 v34, v0

    .line 274
    .local v34, weight:[F
    invoke-virtual {v15}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    move-result v13

    .line 275
    .local v13, face_count:I
    if-lez v13, :cond_491

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v36

    invoke-virtual/range {v19 .. v19}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v8

    .line 277
    .local v8, buf1:Landroid/filterfw/core/Frame;
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 278
    const/4 v9, 0x0

    .line 279
    .local v9, buf2:Landroid/filterfw/core/Frame;
    const/16 v36, 0x1

    move/from16 v0, v36

    if-le v13, v0, :cond_80

    .line 280
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v36

    invoke-virtual/range {v19 .. v19}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v9

    .line 282
    :cond_80
    move-object/from16 v32, v19

    .local v32, source:Landroid/filterfw/core/Frame;
    move-object/from16 v26, v8

    .line 283
    .local v26, output:Landroid/filterfw/core/Frame;
    const/16 v18, 0x0

    .local v18, i:I
    :goto_86
    move/from16 v0, v18

    if-ge v0, v13, :cond_47d

    .line 285
    const/16 v36, 0x1

    move/from16 v0, v36

    if-le v13, v0, :cond_a5

    if-lez v18, :cond_a5

    .line 286
    rem-int/lit8 v36, v18, 0x2

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_24f

    .line 287
    move-object/from16 v32, v8

    .line 288
    move-object/from16 v26, v9

    .line 289
    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 297
    :cond_a5
    :goto_a5
    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v36, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeX(I)F

    move-result v37

    aput v37, v23, v36

    const/16 v36, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeY(I)F

    move-result v37

    aput v37, v23, v36

    .line 298
    .local v23, leftEye:[F
    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [F

    move-object/from16 v30, v0

    const/16 v36, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeX(I)F

    move-result v37

    aput v37, v30, v36

    const/16 v36, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeY(I)F

    move-result v37

    aput v37, v30, v36

    .line 299
    .local v30, rightEye:[F
    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v36, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthX(I)F

    move-result v37

    aput v37, v25, v36

    const/16 v36, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthY(I)F

    move-result v37

    aput v37, v25, v36

    .line 300
    .local v25, mouth:[F
    const/16 v36, 0x0

    aget v36, v23, v36

    const/16 v37, 0x0

    aget v37, v30, v37

    sub-float v36, v36, v37

    const/16 v37, 0x0

    aget v37, v5, v37

    mul-float v11, v36, v37

    .line 301
    .local v11, dx:F
    const/16 v36, 0x1

    aget v36, v23, v36

    const/16 v37, 0x1

    aget v37, v30, v37

    sub-float v36, v36, v37

    const/16 v37, 0x1

    aget v37, v5, v37

    mul-float v12, v36, v37

    .line 302
    .local v12, dy:F
    mul-float v36, v11, v11

    mul-float v37, v12, v12

    add-float v36, v36, v37

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-float v6, v0

    .line 304
    .local v6, baseline:F
    const/high16 v14, 0x3f80

    .line 306
    .local v14, face_size:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mCurrentEffect:I

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_25a

    .line 307
    move v14, v6

    .line 309
    move/from16 v24, v14

    .line 311
    .local v24, length:F
    const/16 v36, 0x1

    aget v36, v23, v36

    sub-float v36, v36, v24

    const/16 v37, 0x1

    aget v37, v30, v37

    sub-float v37, v37, v24

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->min(FF)F

    move-result v33

    .line 312
    .local v33, top:F
    const/16 v36, 0x0

    aget v36, v23, v36

    sub-float v36, v36, v24

    const/16 v37, 0x0

    aget v37, v30, v37

    sub-float v37, v37, v24

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->min(FF)F

    move-result v22

    .line 314
    .local v22, left:F
    const/16 v36, 0x1

    aget v36, v23, v36

    add-float v36, v36, v24

    const/16 v37, 0x1

    aget v37, v30, v37

    add-float v37, v37, v24

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 315
    .local v7, bottom:F
    const/16 v36, 0x0

    aget v36, v23, v36

    add-float v36, v36, v24

    const/16 v37, 0x0

    aget v37, v30, v37

    add-float v37, v37, v24

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(FF)F

    move-result v29

    .line 317
    .local v29, right:F
    new-instance v27, Landroid/filterfw/geometry/Rectangle;

    sub-float v36, v29, v22

    sub-float v37, v7, v33

    move-object/from16 v0, v27

    move/from16 v1, v22

    move/from16 v2, v33

    move/from16 v3, v36

    move/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Rectangle;-><init>(FFFF)V

    .line 318
    .local v27, rect:Landroid/filterfw/geometry/Rectangle;
    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/geometry/Rectangle;->translated(FF)Landroid/filterfw/geometry/Quad;

    move-result-object v28

    .line 320
    .local v28, region:Landroid/filterfw/geometry/Quad;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v36, v0

    const-string v37, "left_eye"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v36, v0

    const-string v37, "right_eye"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    aget v37, v5, v37

    div-float v37, v37, v14

    aput v37, v31, v36

    const/16 v36, 0x1

    const/16 v37, 0x1

    aget v37, v5, v37

    div-float v37, v37, v14

    aput v37, v31, v36

    .line 323
    .local v31, scales:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v36, v0

    const-string v37, "scale"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    .line 329
    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [Landroid/filterfw/core/Frame;

    move-object/from16 v21, v0

    const/16 v36, 0x0

    aput-object v32, v21, v36

    const/16 v36, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    move-object/from16 v37, v0

    aput-object v37, v21, v36

    .line 330
    .local v21, inputs:[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 283
    .end local v7           #bottom:F
    .end local v22           #left:F
    .end local v24           #length:F
    .end local v29           #right:F
    .end local v31           #scales:[F
    .end local v33           #top:F
    :goto_22d
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_86

    .line 266
    .end local v5           #aspectRatio:[F
    .end local v6           #baseline:F
    .end local v8           #buf1:Landroid/filterfw/core/Frame;
    .end local v9           #buf2:Landroid/filterfw/core/Frame;
    .end local v10           #center:[F
    .end local v11           #dx:F
    .end local v12           #dy:F
    .end local v13           #face_count:I
    .end local v14           #face_size:F
    .end local v15           #faces:Lcom/google/android/filterpacks/facedetect/FaceMeta;
    .end local v16           #facesFrame:Landroid/filterfw/core/Frame;
    .end local v18           #i:I
    .end local v21           #inputs:[Landroid/filterfw/core/Frame;
    .end local v23           #leftEye:[F
    .end local v25           #mouth:[F
    .end local v26           #output:Landroid/filterfw/core/Frame;
    .end local v27           #rect:Landroid/filterfw/geometry/Rectangle;
    .end local v28           #region:Landroid/filterfw/geometry/Quad;
    .end local v30           #rightEye:[F
    .end local v32           #source:Landroid/filterfw/core/Frame;
    .end local v34           #weight:[F
    :cond_231
    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v5, v0, [F

    const/16 v36, 0x0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v37, v37, v38

    aput v37, v5, v36

    const/16 v36, 0x1

    const/high16 v37, 0x3f80

    aput v37, v5, v36

    .restart local v5       #aspectRatio:[F
    goto/16 :goto_38

    .line 291
    .restart local v8       #buf1:Landroid/filterfw/core/Frame;
    .restart local v9       #buf2:Landroid/filterfw/core/Frame;
    .restart local v10       #center:[F
    .restart local v13       #face_count:I
    .restart local v15       #faces:Lcom/google/android/filterpacks/facedetect/FaceMeta;
    .restart local v16       #facesFrame:Landroid/filterfw/core/Frame;
    .restart local v18       #i:I
    .restart local v26       #output:Landroid/filterfw/core/Frame;
    .restart local v32       #source:Landroid/filterfw/core/Frame;
    .restart local v34       #weight:[F
    :cond_24f
    move-object/from16 v32, v9

    .line 292
    move-object/from16 v26, v8

    .line 293
    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    goto/16 :goto_a5

    .line 333
    .restart local v6       #baseline:F
    .restart local v11       #dx:F
    .restart local v12       #dy:F
    .restart local v14       #face_size:F
    .restart local v23       #leftEye:[F
    .restart local v25       #mouth:[F
    .restart local v30       #rightEye:[F
    :cond_25a
    const/16 v36, 0x0

    const/high16 v37, 0x3f80

    aput v37, v34, v36

    .line 334
    const/16 v36, 0x1

    const/high16 v37, 0x3f80

    aput v37, v34, v36

    .line 336
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mCurrentEffect:I

    move/from16 v36, v0

    packed-switch v36, :pswitch_data_49e

    .line 371
    :pswitch_26f
    new-instance v36, Ljava/lang/RuntimeException;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Undefined effect: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mCurrentEffect:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 338
    :pswitch_28e
    const v36, 0x3f4ccccd

    mul-float v14, v36, v6

    .line 340
    const/16 v36, 0x0

    const/high16 v37, 0x3f00

    const/16 v38, 0x0

    aget v38, v23, v38

    mul-float v37, v37, v38

    const/high16 v38, 0x3f00

    const/16 v39, 0x0

    aget v39, v30, v39

    mul-float v38, v38, v39

    add-float v37, v37, v38

    const v38, 0x38d1b717

    const/16 v39, 0x0

    aget v39, v25, v39

    mul-float v38, v38, v39

    add-float v37, v37, v38

    aput v37, v10, v36

    .line 341
    const/16 v36, 0x1

    const/high16 v37, 0x3f00

    const/16 v38, 0x1

    aget v38, v23, v38

    mul-float v37, v37, v38

    const/high16 v38, 0x3f00

    const/16 v39, 0x1

    aget v39, v30, v39

    mul-float v38, v38, v39

    add-float v37, v37, v38

    const v38, 0x38d1b717

    const/16 v39, 0x1

    aget v39, v25, v39

    mul-float v38, v38, v39

    add-float v37, v37, v38

    aput v37, v10, v36

    .line 343
    const/16 v36, 0x0

    const-wide v37, 0x3ff3333333333333L

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v37

    move-wide/from16 v0, v37

    double-to-float v0, v0

    move/from16 v37, v0

    aput v37, v34, v36

    .line 344
    const/16 v36, 0x1

    const-wide v37, 0x3ff3333333333333L

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v37

    move-wide/from16 v0, v37

    double-to-float v0, v0

    move/from16 v37, v0

    aput v37, v34, v36

    .line 374
    :goto_2f9
    const/16 v36, 0x0

    aget v37, v34, v36

    div-float v37, v37, v14

    aput v37, v34, v36

    .line 375
    const/16 v36, 0x1

    aget v37, v34, v36

    div-float v37, v37, v14

    aput v37, v34, v36

    .line 376
    const/16 v36, 0x0

    aget v37, v34, v36

    const/16 v38, 0x0

    aget v38, v5, v38

    mul-float v37, v37, v38

    aput v37, v34, v36

    .line 377
    const/16 v36, 0x1

    aget v37, v34, v36

    const/16 v38, 0x1

    aget v38, v5, v38

    mul-float v37, v37, v38

    aput v37, v34, v36

    .line 379
    new-instance v27, Landroid/filterfw/geometry/Rectangle;

    const/high16 v36, -0x4080

    const/16 v37, 0x0

    aget v37, v34, v37

    div-float v36, v36, v37

    const/high16 v37, -0x4080

    const/16 v38, 0x1

    aget v38, v34, v38

    div-float v37, v37, v38

    const/high16 v38, 0x4000

    const/16 v39, 0x0

    aget v39, v34, v39

    div-float v38, v38, v39

    const/high16 v39, 0x4000

    const/16 v40, 0x1

    aget v40, v34, v40

    div-float v39, v39, v40

    move-object/from16 v0, v27

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Rectangle;-><init>(FFFF)V

    .line 382
    .restart local v27       #rect:Landroid/filterfw/geometry/Rectangle;
    const/16 v36, 0x0

    aget v36, v10, v36

    const/16 v37, 0x1

    aget v37, v10, v37

    move-object/from16 v0, v27

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/geometry/Rectangle;->translated(FF)Landroid/filterfw/geometry/Quad;

    move-result-object v28

    .line 385
    .restart local v28       #region:Landroid/filterfw/geometry/Quad;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mGoofyProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v36, v0

    const-string v37, "center"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v10}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mGoofyProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v36, v0

    const-string v37, "weight"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mGoofyProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mGoofyProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    .line 392
    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [Landroid/filterfw/core/Frame;

    move-object/from16 v21, v0

    const/16 v36, 0x0

    aput-object v32, v21, v36

    const/16 v36, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    move-object/from16 v37, v0

    aput-object v37, v21, v36

    .line 393
    .restart local v21       #inputs:[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mGoofyProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    goto/16 :goto_22d

    .line 348
    .end local v21           #inputs:[Landroid/filterfw/core/Frame;
    .end local v27           #rect:Landroid/filterfw/geometry/Rectangle;
    .end local v28           #region:Landroid/filterfw/geometry/Quad;
    :pswitch_3c3
    const/high16 v36, 0x3f00

    mul-float v14, v36, v6

    .line 349
    const/16 v36, 0x0

    const/16 v37, 0x0

    aget v37, v25, v37

    aput v37, v10, v36

    .line 350
    const/16 v36, 0x1

    const/16 v37, 0x1

    aget v37, v25, v37

    aput v37, v10, v36

    goto/16 :goto_2f9

    .line 354
    :pswitch_3d9
    const/high16 v36, 0x4020

    mul-float v14, v36, v6

    .line 355
    const/16 v36, 0x0

    const/16 v37, 0x0

    aget v37, v25, v37

    aput v37, v10, v36

    .line 356
    const/16 v36, 0x1

    const/16 v37, 0x1

    aget v37, v25, v37

    aput v37, v10, v36

    goto/16 :goto_2f9

    .line 360
    :pswitch_3ef
    const v36, 0x3f8ccccd

    mul-float v14, v36, v6

    .line 361
    const/16 v36, 0x0

    const/high16 v37, 0x3e80

    const/16 v38, 0x0

    aget v38, v23, v38

    mul-float v37, v37, v38

    const/high16 v38, 0x3e80

    const/16 v39, 0x0

    aget v39, v30, v39

    mul-float v38, v38, v39

    add-float v37, v37, v38

    const/high16 v38, 0x3f00

    const/16 v39, 0x0

    aget v39, v25, v39

    mul-float v38, v38, v39

    add-float v37, v37, v38

    aput v37, v10, v36

    .line 362
    const/16 v36, 0x1

    const/high16 v37, 0x3e80

    const/16 v38, 0x1

    aget v38, v23, v38

    mul-float v37, v37, v38

    const/high16 v38, 0x3e80

    const/16 v39, 0x1

    aget v39, v30, v39

    mul-float v38, v38, v39

    add-float v37, v37, v38

    const/high16 v38, 0x3f00

    const/16 v39, 0x1

    aget v39, v25, v39

    mul-float v38, v38, v39

    add-float v37, v37, v38

    aput v37, v10, v36

    goto/16 :goto_2f9

    .line 366
    :pswitch_436
    const v36, 0x3f4ccccd

    mul-float v14, v36, v6

    .line 367
    const/16 v36, 0x0

    const/high16 v37, 0x3e80

    const/16 v38, 0x0

    aget v38, v23, v38

    mul-float v37, v37, v38

    const/high16 v38, 0x3e80

    const/16 v39, 0x0

    aget v39, v30, v39

    mul-float v38, v38, v39

    add-float v37, v37, v38

    const/high16 v38, 0x3f00

    const/16 v39, 0x0

    aget v39, v25, v39

    mul-float v38, v38, v39

    add-float v37, v37, v38

    aput v37, v10, v36

    .line 368
    const/16 v36, 0x1

    const/high16 v37, 0x3e80

    const/16 v38, 0x1

    aget v38, v23, v38

    mul-float v37, v37, v38

    const/high16 v38, 0x3e80

    const/16 v39, 0x1

    aget v39, v30, v39

    mul-float v38, v38, v39

    add-float v37, v37, v38

    const/high16 v38, 0x3f00

    const/16 v39, 0x1

    aget v39, v25, v39

    mul-float v38, v38, v39

    add-float v37, v37, v38

    aput v37, v10, v36

    goto/16 :goto_2f9

    .line 396
    .end local v6           #baseline:F
    .end local v11           #dx:F
    .end local v12           #dy:F
    .end local v14           #face_size:F
    .end local v23           #leftEye:[F
    .end local v25           #mouth:[F
    .end local v30           #rightEye:[F
    :cond_47d
    const-string v36, "outimage"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 397
    invoke-virtual {v8}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 398
    if-eqz v9, :cond_490

    .line 399
    invoke-virtual {v9}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 403
    .end local v8           #buf1:Landroid/filterfw/core/Frame;
    .end local v9           #buf2:Landroid/filterfw/core/Frame;
    .end local v18           #i:I
    .end local v26           #output:Landroid/filterfw/core/Frame;
    .end local v32           #source:Landroid/filterfw/core/Frame;
    :cond_490
    :goto_490
    return-void

    .line 401
    :cond_491
    const-string v36, "outimage"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    goto :goto_490

    .line 336
    nop

    :pswitch_data_49e
    .packed-switch 0x0
        :pswitch_436
        :pswitch_26f
        :pswitch_3d9
        :pswitch_3c3
        :pswitch_3ef
        :pswitch_28e
    .end packed-switch
.end method

.method public setupPorts()V
    .registers 5

    .prologue
    const/4 v2, 0x3

    .line 154
    invoke-static {v2, v2}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    .line 156
    .local v1, imageFormat:Landroid/filterfw/core/FrameFormat;
    const-class v2, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 160
    .local v0, facesFormat:Landroid/filterfw/core/FrameFormat;
    const-string v2, "image"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 161
    const-string v2, "faces"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 162
    const-string v2, "outimage"

    const-string v3, "image"

    invoke-virtual {p0, v2, v3}, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method
