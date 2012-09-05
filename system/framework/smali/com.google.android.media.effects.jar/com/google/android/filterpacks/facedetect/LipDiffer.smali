.class public Lcom/google/android/filterpacks/facedetect/LipDiffer;
.super Landroid/filterfw/core/Filter;
.source "LipDiffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;
    }
.end annotation


# static fields
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "LipDiffer"


# instance fields
.field private final MOUTH_TO_EYES_HORIZ_RATIO:F

.field private final MOUTH_TO_NOSE_VERT_RATIO:F

.field private final mDenoiseFragShader:Ljava/lang/String;

.field private mDenoiseProgram:Landroid/filterfw/core/ShaderProgram;

.field private final mFragShader:Ljava/lang/String;

.field private mLipDiffProgram:Landroid/filterfw/core/Program;

.field private mLipFrameFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mLipFrameSizes:[Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;

.field private mLipSignalFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mLipSignalProgram:Landroid/filterfw/core/ShaderProgram;

.field private final mVertexShader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 44
    const v0, 0x3f666666

    iput v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->MOUTH_TO_EYES_HORIZ_RATIO:F

    .line 45
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->MOUTH_TO_NOSE_VERT_RATIO:F

    .line 51
    const-string v0, "precision mediump float;\nconst mat3 kernel = mat3(0.09, 0.12, 0.09,\n                         0.12, 0.16, 0.12,\n                         0.09, 0.12, 0.09);\nuniform sampler2D tex_sampler_0;\nuniform float pix_width;\nuniform float pix_height;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec3 color = vec3(0.0, 0.0, 0.0);\n  for (int i = 0; i < 3; i++) {\n    for (int j = 0; j < 3; j++) {\n      vec2 coord = v_texcoord + vec2(float(i-1) * pix_width,\n                                     float(j-1) * pix_height);\n      color = color + kernel[i][j] * texture2D(tex_sampler_0, coord).rgb;\n    }\n  }\n  gl_FragColor = vec4(color, 1.0);\n}\n"

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mDenoiseFragShader:Ljava/lang/String;

    .line 73
    const-string v0, "attribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvarying vec2 v_vertcoord;\nvoid main() {\n  gl_Position = a_position;\n  v_texcoord = a_texcoord;\n  v_vertcoord = a_position.xy;\n}\n"

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mVertexShader:Ljava/lang/String;

    .line 89
    const-string v0, "precision mediump float;\nconst float pi = 3.141593;\nconst vec3 band_coefs = vec3(0.299, 0.587, 0.114);\nconst vec4 no_signal = vec4(0.0, 0.0, 0.0, 1.0);\nuniform sampler2D tex_sampler_0;\nuniform float pix_width;\nuniform float pix_height;\nvarying vec2 v_texcoord;\nvarying vec2 v_vertcoord;\nvoid main() {\n  vec3 pix = texture2D(tex_sampler_0, v_texcoord).rgb;\n  float intensity = dot(band_coefs, pix);\n  vec2 next_x = v_texcoord + vec2(pix_width, 0.0);\n  vec3 grad_x = texture2D(tex_sampler_0, next_x).rgb - pix;\n  vec2 next_y = v_texcoord + vec2(0.0, pix_height);\n  vec3 grad_y = texture2D(tex_sampler_0, next_y).rgb - pix;\n  vec3 sign_y = 2.0 * step(0.0, grad_y) - 1.0;\n  vec2 grad = vec2(dot(band_coefs, sign_y * grad_x),\n                   dot(band_coefs, sign_y * grad_y));\n  float grad_mag = length(grad);\n  float grad_dir = grad_mag > 0.0 ? atan(grad.y, grad.x) / pi : 0.0;\n  vec4 signal = vec4(grad_mag, grad_dir, 0.5 * v_vertcoord.y + 0.5, intensity);\n  gl_FragColor = length(v_vertcoord) < 1.0 ? signal : no_signal;\n}\n"

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mFragShader:Ljava/lang/String;

    .line 133
    return-void
.end method

.method private computeSourceRegion(Lcom/google/android/filterpacks/facedetect/FaceMeta;ILandroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Quad;
    .registers 15
    .parameter "faces"
    .parameter "index"
    .parameter "size"

    .prologue
    const/high16 v10, 0x3f00

    .line 271
    new-instance v0, Landroid/filterfw/geometry/Point;

    invoke-virtual {p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthX(I)F

    move-result v8

    invoke-virtual {p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthY(I)F

    move-result v9

    invoke-direct {v0, v8, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 272
    .local v0, center:Landroid/filterfw/geometry/Point;
    new-instance v3, Landroid/filterfw/geometry/Point;

    invoke-virtual {p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeX(I)F

    move-result v8

    invoke-virtual {p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeY(I)F

    move-result v9

    invoke-direct {v3, v8, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 273
    .local v3, eye_l:Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Point;

    invoke-virtual {p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeX(I)F

    move-result v8

    invoke-virtual {p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeY(I)F

    move-result v9

    invoke-direct {v4, v8, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 274
    .local v4, eye_r:Landroid/filterfw/geometry/Point;
    invoke-virtual {v3, v4}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v5

    .line 275
    .local v5, eyes_center:Landroid/filterfw/geometry/Point;
    invoke-virtual {v5, v0}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v7

    .line 276
    .local v7, vert_axis:Landroid/filterfw/geometry/Point;
    const v8, 0x3f666666

    invoke-virtual {v3, v4}, Landroid/filterfw/geometry/Point;->distanceTo(Landroid/filterfw/geometry/Point;)F

    move-result v9

    mul-float v1, v8, v9

    .line 277
    .local v1, dist_h:F
    invoke-virtual {v7}, Landroid/filterfw/geometry/Point;->length()F

    move-result v8

    mul-float v2, v10, v8

    .line 278
    .local v2, dist_v:F
    invoke-virtual {p3, v1, v2}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 279
    invoke-static {v0, v7, p3}, Landroid/filterfw/geometry/Rectangle;->fromCenterVerticalAxis(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Rectangle;

    move-result-object v6

    .line 289
    .local v6, rect:Landroid/filterfw/geometry/Rectangle;
    return-object v6
.end method

.method private lookupFrameSize(IILandroid/filterfw/geometry/Point;)Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;
    .registers 9
    .parameter "inputWidth"
    .parameter "inputHeight"
    .parameter "lipSize"

    .prologue
    const/4 v3, 0x0

    .line 167
    iget v2, p3, Landroid/filterfw/geometry/Point;->x:F

    cmpg-float v2, v2, v3

    if-lez v2, :cond_d

    iget v2, p3, Landroid/filterfw/geometry/Point;->y:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3a

    .line 168
    :cond_d
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal lip size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p3, Landroid/filterfw/geometry/Point;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p3, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_3a
    int-to-float v2, p1

    iget v3, p3, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v2, v3

    int-to-float v3, p2

    mul-float/2addr v2, v3

    iget v3, p3, Landroid/filterfw/geometry/Point;->y:F

    mul-float v0, v2, v3

    .line 172
    .local v0, areaInPixels:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_45
    iget-object v2, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipFrameSizes:[Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;

    array-length v2, v2

    if-ge v1, v2, :cond_5f

    .line 173
    iget-object v2, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipFrameSizes:[Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;->area()F

    move-result v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_5c

    .line 176
    iget-object v2, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipFrameSizes:[Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 180
    :goto_5b
    return-object v2

    .line 172
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 180
    :cond_5f
    const/4 v2, 0x0

    goto :goto_5b
.end method


# virtual methods
.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v3, 0x3

    .line 152
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "precision mediump float;\nconst mat3 kernel = mat3(0.09, 0.12, 0.09,\n                         0.12, 0.16, 0.12,\n                         0.09, 0.12, 0.09);\nuniform sampler2D tex_sampler_0;\nuniform float pix_width;\nuniform float pix_height;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec3 color = vec3(0.0, 0.0, 0.0);\n  for (int i = 0; i < 3; i++) {\n    for (int j = 0; j < 3; j++) {\n      vec2 coord = v_texcoord + vec2(float(i-1) * pix_width,\n                                     float(j-1) * pix_height);\n      color = color + kernel[i][j] * texture2D(tex_sampler_0, coord).rgb;\n    }\n  }\n  gl_FragColor = vec4(color, 1.0);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mDenoiseProgram:Landroid/filterfw/core/ShaderProgram;

    .line 153
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "attribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvarying vec2 v_vertcoord;\nvoid main() {\n  gl_Position = a_position;\n  v_texcoord = a_texcoord;\n  v_vertcoord = a_position.xy;\n}\n"

    const-string v2, "precision mediump float;\nconst float pi = 3.141593;\nconst vec3 band_coefs = vec3(0.299, 0.587, 0.114);\nconst vec4 no_signal = vec4(0.0, 0.0, 0.0, 1.0);\nuniform sampler2D tex_sampler_0;\nuniform float pix_width;\nuniform float pix_height;\nvarying vec2 v_texcoord;\nvarying vec2 v_vertcoord;\nvoid main() {\n  vec3 pix = texture2D(tex_sampler_0, v_texcoord).rgb;\n  float intensity = dot(band_coefs, pix);\n  vec2 next_x = v_texcoord + vec2(pix_width, 0.0);\n  vec3 grad_x = texture2D(tex_sampler_0, next_x).rgb - pix;\n  vec2 next_y = v_texcoord + vec2(0.0, pix_height);\n  vec3 grad_y = texture2D(tex_sampler_0, next_y).rgb - pix;\n  vec3 sign_y = 2.0 * step(0.0, grad_y) - 1.0;\n  vec2 grad = vec2(dot(band_coefs, sign_y * grad_x),\n                   dot(band_coefs, sign_y * grad_y));\n  float grad_mag = length(grad);\n  float grad_dir = grad_mag > 0.0 ? atan(grad.y, grad.x) / pi : 0.0;\n  vec4 signal = vec4(grad_mag, grad_dir, 0.5 * v_vertcoord.y + 0.5, intensity);\n  gl_FragColor = length(v_vertcoord) < 1.0 ? signal : no_signal;\n}\n"

    invoke-direct {v0, p1, v1, v2}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipSignalProgram:Landroid/filterfw/core/ShaderProgram;

    .line 154
    new-instance v0, Landroid/filterfw/core/NativeProgram;

    const-string v1, "filterpack_facedetect"

    const-string v2, "lip_differ"

    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipDiffProgram:Landroid/filterfw/core/Program;

    .line 157
    invoke-static {v3, v3}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipFrameFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 158
    invoke-static {v3, v3}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipSignalFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 160
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipFrameSizes:[Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;

    .line 162
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipFrameSizes:[Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;

    const/16 v3, 0x3c

    const/16 v4, 0x2d

    invoke-direct {v2, p0, v3, v4}, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;-><init>(Lcom/google/android/filterpacks/facedetect/LipDiffer;II)V

    aput-object v2, v0, v1

    .line 163
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipFrameSizes:[Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;

    const/16 v3, 0x24

    const/16 v4, 0x1b

    invoke-direct {v2, p0, v3, v4}, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;-><init>(Lcom/google/android/filterpacks/facedetect/LipDiffer;II)V

    aput-object v2, v0, v1

    .line 164
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 28
    .parameter "context"

    .prologue
    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    .line 187
    .local v7, frameManager:Landroid/filterfw/core/FrameManager;
    const-string v22, "image"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/LipDiffer;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v10

    .line 188
    .local v10, imageFrame:Landroid/filterfw/core/Frame;
    invoke-virtual {v10}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v12

    .line 189
    .local v12, inputWidth:I
    invoke-virtual {v10}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v11

    .line 190
    .local v11, inputHeight:I
    const-string v22, "faces"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/LipDiffer;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v5

    .line 192
    .local v5, facesFrame:Landroid/filterfw/core/Frame;
    invoke-virtual {v5}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    .line 194
    .local v4, faces:Lcom/google/android/filterpacks/facedetect/FaceMeta;
    const/16 v18, 0x0

    .line 195
    .local v18, lipSignalNativeFrame:Landroid/filterfw/core/Frame;
    const/16 v21, 0x0

    .line 196
    .local v21, outputFrame:Landroid/filterfw/core/Frame;
    invoke-virtual {v4}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    move-result v22

    if-nez v22, :cond_57

    .line 197
    const-class v22, Lcom/google/android/filterpacks/facedetect/LipDiff;

    const/16 v23, 0x0

    const/16 v24, 0x2

    invoke-static/range {v22 .. v24}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v20

    .line 200
    .local v20, outputFormat:Landroid/filterfw/core/FrameFormat;
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v21

    .line 266
    .end local v20           #outputFormat:Landroid/filterfw/core/FrameFormat;
    :cond_48
    const-string v22, "diffs"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/android/filterpacks/facedetect/LipDiffer;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 267
    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 268
    return-void

    .line 202
    :cond_57
    const/4 v9, 0x0

    .local v9, i:I
    :goto_58
    invoke-virtual {v4}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_48

    .line 204
    new-instance v19, Landroid/filterfw/geometry/Point;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 205
    .local v19, lipSize:Landroid/filterfw/geometry/Point;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v4, v9, v1}, Lcom/google/android/filterpacks/facedetect/LipDiffer;->computeSourceRegion(Lcom/google/android/filterpacks/facedetect/FaceMeta;ILandroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Quad;

    move-result-object v16

    .line 206
    .local v16, lipRegion:Landroid/filterfw/geometry/Quad;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v11, v1}, Lcom/google/android/filterpacks/facedetect/LipDiffer;->lookupFrameSize(IILandroid/filterfw/geometry/Point;)Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;

    move-result-object v8

    .line 210
    .local v8, frameSize:Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;
    if-eqz v8, :cond_1c8

    invoke-virtual/range {v16 .. v16}, Landroid/filterfw/geometry/Quad;->IsInUnitRange()Z

    move-result v22

    if-eqz v22, :cond_1c8

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipFrameFormat:Landroid/filterfw/core/MutableFrameFormat;

    move-object/from16 v22, v0

    iget v0, v8, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;->width:I

    move/from16 v23, v0

    iget v0, v8, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;->height:I

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipFrameFormat:Landroid/filterfw/core/MutableFrameFormat;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v15

    .line 215
    .local v15, lipFrame:Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mDenoiseProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mDenoiseProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    const-string v23, "pix_width"

    const/high16 v24, 0x3f80

    int-to-float v0, v12

    move/from16 v25, v0

    div-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mDenoiseProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    const-string v23, "pix_height"

    const/high16 v24, 0x3f80

    int-to-float v0, v11

    move/from16 v25, v0

    div-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mDenoiseProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v15}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipSignalFormat:Landroid/filterfw/core/MutableFrameFormat;

    move-object/from16 v22, v0

    iget v0, v8, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;->width:I

    move/from16 v23, v0

    iget v0, v8, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;->height:I

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipSignalFormat:Landroid/filterfw/core/MutableFrameFormat;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v17

    .line 223
    .local v17, lipSignalFrame:Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipSignalProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    const-string v23, "pix_width"

    const/high16 v24, 0x3f80

    iget v0, v8, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;->width:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipSignalProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    const-string v23, "pix_height"

    const/high16 v24, 0x3f80

    iget v0, v8, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;->height:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipSignalProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 226
    invoke-virtual {v15}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 229
    const/16 v22, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/filterfw/core/FrameManager;->duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;

    move-result-object v18

    .line 232
    invoke-virtual/range {v17 .. v17}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 243
    .end local v15           #lipFrame:Landroid/filterfw/core/Frame;
    .end local v17           #lipSignalFrame:Landroid/filterfw/core/Frame;
    :goto_15a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipDiffProgram:Landroid/filterfw/core/Program;

    move-object/from16 v22, v0

    const-string v23, "faceId"

    invoke-virtual {v4, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getId(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipDiffProgram:Landroid/filterfw/core/Program;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipDiffProgram:Landroid/filterfw/core/Program;

    move-object/from16 v22, v0

    const-string v23, "num_lipdiffs"

    invoke-virtual/range {v22 .. v23}, Landroid/filterfw/core/Program;->getHostValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 248
    .local v14, lipDiffCountStr:Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 249
    .local v13, lipDiffCount:I
    const-class v22, Lcom/google/android/filterpacks/facedetect/LipDiff;

    const/16 v23, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v13, v1}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v20

    .line 254
    .restart local v20       #outputFormat:Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v4}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    move-result v22

    add-int/lit8 v23, v9, 0x1

    sub-int v6, v22, v23

    .line 255
    .local v6, facesLeft:I
    if-nez v6, :cond_1bf

    .line 256
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v21

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/LipDiffer;->mLipDiffProgram:Landroid/filterfw/core/Program;

    move-object/from16 v23, v0

    const/16 v22, 0x0

    check-cast v22, Landroid/filterfw/core/Frame;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 260
    :cond_1bf
    invoke-virtual/range {v18 .. v18}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 261
    const/16 v18, 0x0

    .line 202
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_58

    .line 236
    .end local v6           #facesLeft:I
    .end local v13           #lipDiffCount:I
    .end local v14           #lipDiffCountStr:Ljava/lang/String;
    .end local v20           #outputFormat:Landroid/filterfw/core/FrameFormat;
    :cond_1c8
    const/16 v22, 0x0

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/filterfw/format/PrimitiveFormat;->createByteFormat(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v3

    .line 238
    .local v3, emptyNativeFrameFormat:Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v7, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v18

    goto :goto_15a
.end method

.method public setupPorts()V
    .registers 6

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 138
    invoke-static {v3, v3}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    .line 140
    .local v1, imageFormat:Landroid/filterfw/core/FrameFormat;
    const-class v3, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    invoke-static {v3, v4}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 142
    .local v0, faceFormat:Landroid/filterfw/core/FrameFormat;
    const-class v3, Lcom/google/android/filterpacks/facedetect/LipDiff;

    invoke-static {v3, v4}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v2

    .line 145
    .local v2, lipDiffFormat:Landroid/filterfw/core/FrameFormat;
    const-string v3, "image"

    invoke-virtual {p0, v3, v1}, Lcom/google/android/filterpacks/facedetect/LipDiffer;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 146
    const-string v3, "faces"

    invoke-virtual {p0, v3, v0}, Lcom/google/android/filterpacks/facedetect/LipDiffer;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 147
    const-string v3, "diffs"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/filterpacks/facedetect/LipDiffer;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 148
    return-void
.end method
