.class public Lcom/google/android/filterpacks/facedetect/FaceTanFilter;
.super Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;
.source "FaceTanFilter.java"


# static fields
.field private static final TAN_SKIN_MATRIX:Ljava/lang/String; = "1.0, 0.0, 0.0, 0.0, 0.6043903, -0.7966884, 0.0, 0.7966884, 0.6043903"

.field private static final TAN_SKIN_MEAN:Ljava/lang/String; = "0.50137526, 0.4253831, 0.6052874"

.field private static final TAN_SKIN_SINGULAR_VALUES:Ljava/lang/String; = "0.1549749, 0.05620472, 0.0084233275"

.field private static final mFaceTanShader:Ljava/lang/String; = "precision highp float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nconst vec3 tan_mean = vec3(0.50137526, 0.4253831, 0.6052874);\nconst vec3 tan_scale = vec3(0.1549749, 0.05620472, 0.0084233275);\nconst mat3 tan_mat = mat3(1.0, 0.0, 0.0, 0.0, 0.6043903, -0.7966884, 0.0, 0.7966884, 0.6043903);\nconst mat4 coeff_rgb = mat4( 1.0,       1.0,       1.0,   0.0, -0.000001, -0.344135,  1.772, 0.0,  1.401999, -0.714136,  0.0,   0.0, -0.700999,  0.529135, -0.886, 1.000);\nuniform vec3 yuv_mean;\nuniform mat3 yuv_var;\nuniform vec3 yuv_scale;\nuniform float tbl_offset;\nuniform float tbl_scale;\nuniform vec2 face_center;\nuniform vec2 face_scale;\nuniform vec2 body_center;\nuniform vec2 body_scale;\nvarying vec2 v_texcoord;\nfloat computeSpatialWeight(sampler2D sampler, float dist) {\n  float value = min(dist * 0.2, 1.0);\n  float tbl_value = tbl_offset + tbl_scale * value;\n  vec4 weight_byte = texture2D(sampler, vec2(tbl_value, 0.5));\n  return weight_byte.g + 0.00390625 * weight_byte.r;\n}\nvoid main() {\n  vec3 yuv = texture2D(tex_sampler_0, v_texcoord).xyz;\n  float gray = yuv.r;\n  vec3 proj = yuv_var * (yuv - yuv_mean);\n  proj = yuv_scale * proj;\n  vec3 scaled_proj = tan_scale * proj;\n  vec3 new_yuv =  tan_mat * scaled_proj + tan_mean;\n  vec4 new_color = coeff_rgb * vec4(new_yuv, 1.0);\n  new_color = min(max(new_color, 0.0), 1.0);\n  float dist = sqrt(0.5 * dot(proj, proj));\n  float color_weight = computeSpatialWeight(tex_sampler_1, dist);\n  vec2 diff = v_texcoord - face_center;\n  dist = length(face_scale * diff);\n  float face_weight = computeSpatialWeight(tex_sampler_2, dist);\n  diff = v_texcoord - body_center;\n  dist = length(body_scale * diff);\n  float body_weight = computeSpatialWeight(tex_sampler_2, dist);\n  float alpha = max(face_weight, body_weight) * color_weight;\n  if (gray < 0.1) {\n    alpha = 0.0;\n  } else {\n    if (gray < 0.5) {\n      alpha *=  2.5 * (gray - 0.1);\n    }\n  }\n  vec4 orig = texture2D(tex_sampler_3, v_texcoord);\n  if (orig.a > alpha) {\n     gl_FragColor = orig;\n  } else { \n    gl_FragColor = vec4(new_color.rgb, alpha);\n  }\n}\n"


# instance fields
.field private mColorTanhFrame:Landroid/filterfw/core/Frame;

.field private mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

.field private mSpatialTanhFrame:Landroid/filterfw/core/Frame;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;-><init>(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method private createBodyRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 15
    .parameter "faceRect"

    .prologue
    .line 139
    const/4 v3, 0x0

    .line 140
    .local v3, kFaceToBodyXMove:I
    const/4 v5, 0x2

    .line 141
    .local v5, kFaceToBodyYMove:I
    const/4 v4, 0x3

    .line 142
    .local v4, kFaceToBodyXScale:I
    const/4 v6, 0x3

    .line 144
    .local v6, kFaceToBodyYScale:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v9

    mul-int/lit8 v9, v9, 0x0

    add-int v0, v8, v9

    .line 145
    .local v0, centerX:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int v1, v8, v9

    .line 146
    .local v1, centerY:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    mul-int/lit8 v7, v8, 0x3

    .line 147
    .local v7, width:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int/lit8 v2, v8, 0x3

    .line 149
    .local v2, height:I
    new-instance v8, Landroid/graphics/Rect;

    div-int/lit8 v9, v7, 0x2

    sub-int v9, v0, v9

    div-int/lit8 v10, v2, 0x2

    sub-int v10, v1, v10

    div-int/lit8 v11, v7, 0x2

    add-int/2addr v11, v0

    div-int/lit8 v12, v2, 0x2

    add-int/2addr v12, v1

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v8
.end method

.method private initParameters(Landroid/filterfw/core/FilterContext;)V
    .registers 8
    .parameter "context"

    .prologue
    const/high16 v3, 0x40a0

    .line 128
    const/16 v2, 0x1f4

    .line 130
    .local v2, tanhTableSize:I
    const v4, 0x3f933333

    const/high16 v5, 0x4020

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->createTanhTable(Landroid/filterfw/core/FilterContext;IFFF)Landroid/filterfw/core/Frame;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mColorTanhFrame:Landroid/filterfw/core/Frame;

    .line 132
    const/high16 v4, 0x3fa0

    const/high16 v5, 0x3f40

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->createTanhTable(Landroid/filterfw/core/FilterContext;IFFF)Landroid/filterfw/core/Frame;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mSpatialTanhFrame:Landroid/filterfw/core/Frame;

    .line 134
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "tbl_offset"

    const/high16 v3, 0x3f00

    int-to-float v4, v2

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "tbl_scale"

    int-to-float v3, v2

    const/high16 v4, 0x3f80

    sub-float/2addr v3, v4

    int-to-float v4, v2

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    return-void
.end method


# virtual methods
.method protected initPrograms(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 124
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "precision highp float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nconst vec3 tan_mean = vec3(0.50137526, 0.4253831, 0.6052874);\nconst vec3 tan_scale = vec3(0.1549749, 0.05620472, 0.0084233275);\nconst mat3 tan_mat = mat3(1.0, 0.0, 0.0, 0.0, 0.6043903, -0.7966884, 0.0, 0.7966884, 0.6043903);\nconst mat4 coeff_rgb = mat4( 1.0,       1.0,       1.0,   0.0, -0.000001, -0.344135,  1.772, 0.0,  1.401999, -0.714136,  0.0,   0.0, -0.700999,  0.529135, -0.886, 1.000);\nuniform vec3 yuv_mean;\nuniform mat3 yuv_var;\nuniform vec3 yuv_scale;\nuniform float tbl_offset;\nuniform float tbl_scale;\nuniform vec2 face_center;\nuniform vec2 face_scale;\nuniform vec2 body_center;\nuniform vec2 body_scale;\nvarying vec2 v_texcoord;\nfloat computeSpatialWeight(sampler2D sampler, float dist) {\n  float value = min(dist * 0.2, 1.0);\n  float tbl_value = tbl_offset + tbl_scale * value;\n  vec4 weight_byte = texture2D(sampler, vec2(tbl_value, 0.5));\n  return weight_byte.g + 0.00390625 * weight_byte.r;\n}\nvoid main() {\n  vec3 yuv = texture2D(tex_sampler_0, v_texcoord).xyz;\n  float gray = yuv.r;\n  vec3 proj = yuv_var * (yuv - yuv_mean);\n  proj = yuv_scale * proj;\n  vec3 scaled_proj = tan_scale * proj;\n  vec3 new_yuv =  tan_mat * scaled_proj + tan_mean;\n  vec4 new_color = coeff_rgb * vec4(new_yuv, 1.0);\n  new_color = min(max(new_color, 0.0), 1.0);\n  float dist = sqrt(0.5 * dot(proj, proj));\n  float color_weight = computeSpatialWeight(tex_sampler_1, dist);\n  vec2 diff = v_texcoord - face_center;\n  dist = length(face_scale * diff);\n  float face_weight = computeSpatialWeight(tex_sampler_2, dist);\n  diff = v_texcoord - body_center;\n  dist = length(body_scale * diff);\n  float body_weight = computeSpatialWeight(tex_sampler_2, dist);\n  float alpha = max(face_weight, body_weight) * color_weight;\n  if (gray < 0.1) {\n    alpha = 0.0;\n  } else {\n    if (gray < 0.5) {\n      alpha *=  2.5 * (gray - 0.1);\n    }\n  }\n  vec4 orig = texture2D(tex_sampler_3, v_texcoord);\n  if (orig.a > alpha) {\n     gl_FragColor = orig;\n  } else { \n    gl_FragColor = vec4(new_color.rgb, alpha);\n  }\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    .line 125
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 31
    .parameter "context"

    .prologue
    .line 156
    const-string v2, "image"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v20

    .line 157
    .local v20, input:Landroid/filterfw/core/Frame;
    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v21

    .line 160
    .local v21, inputFormat:Landroid/filterfw/core/FrameFormat;
    const-string v2, "faces"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v18

    .line 161
    .local v18, facesFrame:Landroid/filterfw/core/Frame;
    invoke-virtual/range {v18 .. v18}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    .line 162
    .local v17, faces:Lcom/google/android/filterpacks/facedetect/FaceMeta;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    move-result v15

    .line 164
    .local v15, faceCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    if-eqz v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mColorPcaProgram:Landroid/filterfw/core/NativeProgram;

    if-eqz v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mRgbToYuvProgram:Landroid/filterfw/core/ShaderProgram;

    if-eqz v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    if-nez v2, :cond_3e

    .line 166
    :cond_36
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "programs are missing at process."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_3e
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v4

    .line 171
    .local v4, yuvFrame:Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mRgbToYuvProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v4}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v12

    .line 175
    .local v12, bufferOne:Landroid/filterfw/core/Frame;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v13

    .local v13, bufferTwo:Landroid/filterfw/core/Frame;
    move-object v2, v12

    .line 180
    check-cast v2, Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 181
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 182
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    move-object v2, v13

    .line 183
    check-cast v2, Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 184
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 185
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 188
    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mWidth:I

    if-ne v2, v3, :cond_a9

    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mHeight:I

    if-eq v2, v3, :cond_bc

    .line 189
    :cond_a9
    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mWidth:I

    .line 190
    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mHeight:I

    .line 191
    invoke-direct/range {p0 .. p1}, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->initParameters(Landroid/filterfw/core/FilterContext;)V

    .line 194
    :cond_bc
    move-object/from16 v25, v12

    .line 195
    .local v25, source:Landroid/filterfw/core/Frame;
    move-object/from16 v26, v13

    .line 196
    .local v26, target:Landroid/filterfw/core/Frame;
    const/4 v2, 0x3

    new-array v6, v2, [F

    .line 197
    .local v6, color_mean:[F
    const/4 v2, 0x3

    new-array v7, v2, [F

    .line 198
    .local v7, eigen_values:[F
    const/16 v2, 0x9

    new-array v8, v2, [F

    .line 199
    .local v8, eigen_vectors:[F
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 200
    .local v5, faceRect:Landroid/graphics/Rect;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_d1
    move/from16 v0, v19

    if-ge v0, v15, :cond_2a9

    .line 201
    move-object/from16 v25, v26

    .line 202
    move-object/from16 v0, v25

    if-ne v0, v12, :cond_2a5

    move-object/from16 v26, v13

    .line 204
    :goto_dd
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mWidth:I

    int-to-float v2, v2

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX0(I)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v5, Landroid/graphics/Rect;->left:I

    .line 205
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mHeight:I

    int-to-float v2, v2

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY0(I)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v5, Landroid/graphics/Rect;->top:I

    .line 206
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mWidth:I

    int-to-float v2, v2

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX1(I)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v5, Landroid/graphics/Rect;->right:I

    .line 207
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mHeight:I

    int-to-float v2, v2

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY1(I)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 209
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->computeFaceColorPCA(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/Frame;Landroid/graphics/Rect;[F[F[F)V

    .line 212
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->createBodyRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    .line 213
    .local v10, bodyRect:Landroid/graphics/Rect;
    const/high16 v23, 0x3fe0

    .line 215
    .local v23, kSpatialFactor:F
    const/4 v2, 0x2

    new-array v14, v2, [F

    const/4 v2, 0x0

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v3, v3, v27

    aput v3, v14, v2

    const/4 v2, 0x1

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v3, v3, v27

    aput v3, v14, v2

    .line 217
    .local v14, faceCenter:[F
    const/4 v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v16, v0

    const/4 v2, 0x0

    const/high16 v3, 0x3fe0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v3, v3, v27

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v3, v3, v27

    aput v3, v16, v2

    const/4 v2, 0x1

    const/high16 v3, 0x3fe0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v3, v3, v27

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v3, v3, v27

    aput v3, v16, v2

    .line 220
    .local v16, faceScale:[F
    const/4 v2, 0x2

    new-array v9, v2, [F

    const/4 v2, 0x0

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v3, v3, v27

    aput v3, v9, v2

    const/4 v2, 0x1

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v3, v3, v27

    aput v3, v9, v2

    .line 222
    .local v9, bodyCenter:[F
    const/4 v2, 0x2

    new-array v11, v2, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3fe0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v3, v3, v27

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v3, v3, v27

    aput v3, v11, v2

    const/4 v2, 0x1

    const/high16 v3, 0x3fe0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v3, v3, v27

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v3, v3, v27

    aput v3, v11, v2

    .line 225
    .local v11, bodyScale:[F
    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v24, v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/16 v27, 0x0

    aget v27, v7, v27

    div-float v3, v3, v27

    aput v3, v24, v2

    const/4 v2, 0x1

    const/high16 v3, 0x3f80

    const/16 v27, 0x1

    aget v27, v7, v27

    div-float v3, v3, v27

    aput v3, v24, v2

    const/4 v2, 0x2

    const/high16 v3, 0x3f80

    const/16 v27, 0x2

    aget v27, v7, v27

    div-float v3, v3, v27

    aput v3, v24, v2

    .line 229
    .local v24, rgb_scale:[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v3, "yuv_mean"

    invoke-virtual {v2, v3, v6}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v3, "yuv_var"

    invoke-virtual {v2, v3, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v3, "yuv_scale"

    move-object/from16 v0, v24

    invoke-virtual {v2, v3, v0}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v3, "face_center"

    invoke-virtual {v2, v3, v14}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v3, "face_scale"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v3, "body_center"

    invoke-virtual {v2, v3, v14}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v3, "body_scale"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    const/4 v2, 0x4

    new-array v0, v2, [Landroid/filterfw/core/Frame;

    move-object/from16 v22, v0

    const/4 v2, 0x0

    aput-object v4, v22, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mColorTanhFrame:Landroid/filterfw/core/Frame;

    aput-object v3, v22, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mSpatialTanhFrame:Landroid/filterfw/core/Frame;

    aput-object v3, v22, v2

    const/4 v2, 0x3

    aput-object v25, v22, v2

    .line 240
    .local v22, inputs:[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->mFaceTanProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 200
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_d1

    .end local v9           #bodyCenter:[F
    .end local v10           #bodyRect:Landroid/graphics/Rect;
    .end local v11           #bodyScale:[F
    .end local v14           #faceCenter:[F
    .end local v16           #faceScale:[F
    .end local v22           #inputs:[Landroid/filterfw/core/Frame;
    .end local v23           #kSpatialFactor:F
    .end local v24           #rgb_scale:[F
    :cond_2a5
    move-object/from16 v26, v12

    .line 202
    goto/16 :goto_dd

    .line 243
    :cond_2a9
    const-string v2, "image"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Lcom/google/android/filterpacks/facedetect/FaceTanFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 244
    invoke-virtual {v12}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 245
    invoke-virtual {v13}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 246
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 247
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 120
    return-void
.end method
