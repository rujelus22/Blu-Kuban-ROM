.class public Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;
.super Landroid/filterfw/core/Filter;
.source "GoofyFastRenderFilter.java"


# static fields
.field private static final BIG_EYES:I = 0x1

.field private static final BIG_MOUTH:I = 0x2

.field private static final BIG_NOSE:I = 0x4

.field private static final NUM_EFFECTS:I = 0x6

.field private static final SMALL_EYES:I = 0x5

.field private static final SMALL_MOUTH:I = 0x3

.field private static final SQUEEZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GoofyFastRenderFilter"


# instance fields
.field private mAnimateCurrent:F

.field private mAnimationStartTimeStamp:J

.field private mAspect:[F

.field private mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

.field private mCurrentEffect:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "currentEffect"
    .end annotation
.end field

.field private mCurrentTimeStamp:J

.field private mDistortionAmount:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "distortionAmount"
    .end annotation
.end field

.field private final mDistortionVertexShader:Ljava/lang/String;

.field private final mDistortionVertexShader2:Ljava/lang/String;

.field private mEnableAnimation:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "enableAnimation"
    .end annotation
.end field

.field private mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

.field private final mIdentityShader:Ljava/lang/String;

.field private mMeshDistortionFrame:Landroid/filterfw/core/VertexFrame;

.field private mPureIdentityProgram:Landroid/filterfw/core/ShaderProgram;

.field private mSmoothness:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "smoothness"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentEffect:I

    .line 63
    iput v1, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mDistortionAmount:F

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mEnableAnimation:Z

    .line 78
    const v0, 0x3e99999a

    iput v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mSmoothness:F

    .line 92
    iput v1, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimateCurrent:F

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_28

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAspect:[F

    .line 97
    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityShader:Ljava/lang/String;

    .line 105
    const-string v0, "uniform vec2 center;\nuniform vec2 weight;\nuniform mat2 rotate;\nuniform float amount;\nattribute vec4 positions;\nattribute vec2 texcoords;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 mesh_point = (rotate * positions.xy) * weight *2.0 +\n                    2.0 * (center - vec2(0.5, 0.5));\n  gl_Position = positions;\n  gl_Position.x = mesh_point.x;\n  gl_Position.y = mesh_point.y;\n  vec2 p = (1.0 + texcoords * amount) * positions.xy;\n  v_texcoord = (rotate * p) * weight  + center;\n}\n"

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mDistortionVertexShader:Ljava/lang/String;

    .line 123
    const-string v0, "uniform vec2 center;\nuniform mat2 rotate;\nuniform vec2 weight;\nuniform float amount;\nattribute vec4 positions;\nattribute vec2 texcoords;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 mesh_point = (rotate * (positions.xy * vec2(3.0, 2.0))) * weight +\n                    2.0 * (center - vec2(0.5, 0.5));\n  gl_Position = positions;\n  gl_Position.x = mesh_point.x;\n  gl_Position.y = mesh_point.y;\n  float x = (1.0 + amount * texcoords.x) * positions.x + amount * texcoords.y;\n  float y = positions.y * (1.0 + texcoords.x * amount);\n  vec2 p = vec2(x,y);\n  v_texcoord = (rotate * (p * vec2(3.0,2.0))) * weight * 0.5 + center;\n}\n"

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mDistortionVertexShader2:Ljava/lang/String;

    .line 151
    return-void

    .line 95
    :array_28
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private createMesh(Landroid/filterfw/core/FilterContext;)V
    .registers 34
    .parameter "context"

    .prologue
    .line 282
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mDistortionAmount:F

    .line 283
    .local v12, amount:F
    const/high16 v3, 0x42c8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mSmoothness:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v20, v0

    .line 284
    .local v20, nrows:I
    const/high16 v3, 0x42c8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mSmoothness:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v19, v0

    .line 286
    .local v19, ncols:I
    const/4 v11, 0x4

    .line 287
    .local v11, FLOAT_SIZE:I
    const/16 v18, 0x6

    .line 288
    .local v18, kNumVerticesPerGrid:I
    const/16 v17, 0x4

    .line 290
    .local v17, kNumValuesPerVertex:I
    mul-int v3, v20, v19

    mul-int/lit8 v3, v3, 0x6

    mul-int/lit8 v21, v3, 0x4

    .line 291
    .local v21, num_floats:I
    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v23, v0

    .line 292
    .local v23, positions:[F
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2a
    move/from16 v0, v20

    if-ge v14, v0, :cond_c1

    .line 293
    const/4 v15, 0x0

    .local v15, j:I
    :goto_2f
    move/from16 v0, v19

    if-ge v15, v0, :cond_bd

    .line 294
    mul-int v3, v14, v19

    add-int/2addr v3, v15

    mul-int/lit8 v3, v3, 0x6

    mul-int/lit8 v22, v3, 0x4

    .line 296
    .local v22, p:I
    int-to-float v3, v15

    move/from16 v0, v19

    int-to-float v4, v0

    div-float v27, v3, v4

    .line 297
    .local v27, x0:F
    int-to-float v3, v14

    move/from16 v0, v20

    int-to-float v4, v0

    div-float v30, v3, v4

    .line 298
    .local v30, y0:F
    add-int/lit8 v3, v15, 0x1

    int-to-float v3, v3

    move/from16 v0, v19

    int-to-float v4, v0

    div-float v28, v3, v4

    .line 299
    .local v28, x1:F
    add-int/lit8 v3, v14, 0x1

    int-to-float v3, v3

    move/from16 v0, v20

    int-to-float v4, v0

    div-float v31, v3, v4

    .line 300
    .local v31, y1:F
    const/16 v16, 0x0

    .local v16, k:I
    :goto_58
    const/4 v3, 0x6

    move/from16 v0, v16

    if-ge v0, v3, :cond_b9

    .line 301
    const/16 v26, 0x0

    .line 302
    .local v26, x:F
    const/16 v29, 0x0

    .line 303
    .local v29, y:F
    packed-switch v16, :pswitch_data_170

    .line 323
    :goto_64
    const/high16 v3, 0x3f00

    sub-float v3, v26, v3

    const/high16 v4, 0x4000

    mul-float v26, v3, v4

    .line 324
    const/high16 v3, 0x3f00

    sub-float v3, v29, v3

    const/high16 v4, 0x4000

    mul-float v29, v3, v4

    .line 325
    mul-int/lit8 v3, v16, 0x4

    add-int v3, v3, v22

    aput v26, v23, v3

    .line 326
    mul-int/lit8 v3, v16, 0x4

    add-int v3, v3, v22

    add-int/lit8 v3, v3, 0x1

    aput v29, v23, v3

    .line 327
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->getTexturePosition(FFF)[F

    move-result-object v24

    .line 328
    .local v24, texture_pos:[F
    mul-int/lit8 v3, v16, 0x4

    add-int v3, v3, v22

    add-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    aget v4, v24, v4

    aput v4, v23, v3

    .line 329
    mul-int/lit8 v3, v16, 0x4

    add-int v3, v3, v22

    add-int/lit8 v3, v3, 0x3

    const/4 v4, 0x1

    aget v4, v24, v4

    aput v4, v23, v3

    .line 300
    add-int/lit8 v16, v16, 0x1

    goto :goto_58

    .line 305
    .end local v24           #texture_pos:[F
    :pswitch_a5
    move/from16 v26, v27

    .line 306
    move/from16 v29, v30

    .line 307
    goto :goto_64

    .line 310
    :pswitch_aa
    move/from16 v26, v27

    .line 311
    move/from16 v29, v31

    .line 312
    goto :goto_64

    .line 315
    :pswitch_af
    move/from16 v26, v28

    .line 316
    move/from16 v29, v30

    .line 317
    goto :goto_64

    .line 319
    :pswitch_b4
    move/from16 v26, v28

    .line 320
    move/from16 v29, v31

    goto :goto_64

    .line 293
    .end local v26           #x:F
    .end local v29           #y:F
    :cond_b9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2f

    .line 292
    .end local v16           #k:I
    .end local v22           #p:I
    .end local v27           #x0:F
    .end local v28           #x1:F
    .end local v30           #y0:F
    .end local v31           #y1:F
    :cond_bd
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2a

    .line 334
    .end local v15           #j:I
    :cond_c1
    const/4 v3, 0x4

    move/from16 v0, v21

    invoke-static {v0, v3}, Landroid/filterfw/format/PrimitiveFormat;->createFloatFormat(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v25

    .line 337
    .local v25, vertexFormat:Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v13

    .line 338
    .local v13, frameManager:Landroid/filterfw/core/FrameManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mMeshDistortionFrame:Landroid/filterfw/core/VertexFrame;

    if-eqz v3, :cond_d9

    .line 339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mMeshDistortionFrame:Landroid/filterfw/core/VertexFrame;

    invoke-virtual {v3}, Landroid/filterfw/core/VertexFrame;->release()Landroid/filterfw/core/Frame;

    .line 340
    :cond_d9
    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    check-cast v3, Landroid/filterfw/core/VertexFrame;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mMeshDistortionFrame:Landroid/filterfw/core/VertexFrame;

    .line 341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mMeshDistortionFrame:Landroid/filterfw/core/VertexFrame;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/filterfw/core/VertexFrame;->setFloats([F)V

    .line 343
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentEffect:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_132

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v4, "positions"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mMeshDistortionFrame:Landroid/filterfw/core/VertexFrame;

    const/16 v6, 0x1406

    const/4 v7, 0x2

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/filterfw/core/ShaderProgram;->setAttributeValues(Ljava/lang/String;Landroid/filterfw/core/VertexFrame;IIIIZ)V

    .line 351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v4, "texcoords"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mMeshDistortionFrame:Landroid/filterfw/core/VertexFrame;

    const/16 v6, 0x1406

    const/4 v7, 0x2

    const/16 v8, 0x10

    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/filterfw/core/ShaderProgram;->setAttributeValues(Ljava/lang/String;Landroid/filterfw/core/VertexFrame;IIIIZ)V

    .line 358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    mul-int v4, v20, v19

    mul-int/lit8 v4, v4, 0x6

    invoke-virtual {v3, v4}, Landroid/filterfw/core/ShaderProgram;->setVertexCount(I)V

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/filterfw/core/ShaderProgram;->setDrawMode(I)V

    .line 378
    :goto_131
    return-void

    .line 361
    :cond_132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v4, "positions"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mMeshDistortionFrame:Landroid/filterfw/core/VertexFrame;

    const/16 v6, 0x1406

    const/4 v7, 0x2

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/filterfw/core/ShaderProgram;->setAttributeValues(Ljava/lang/String;Landroid/filterfw/core/VertexFrame;IIIIZ)V

    .line 368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v4, "texcoords"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mMeshDistortionFrame:Landroid/filterfw/core/VertexFrame;

    const/16 v6, 0x1406

    const/4 v7, 0x2

    const/16 v8, 0x10

    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/filterfw/core/ShaderProgram;->setAttributeValues(Ljava/lang/String;Landroid/filterfw/core/VertexFrame;IIIIZ)V

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    mul-int v4, v20, v19

    mul-int/lit8 v4, v4, 0x6

    invoke-virtual {v3, v4}, Landroid/filterfw/core/ShaderProgram;->setVertexCount(I)V

    .line 376
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/filterfw/core/ShaderProgram;->setDrawMode(I)V

    goto :goto_131

    .line 303
    nop

    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_a5
        :pswitch_aa
        :pswitch_af
        :pswitch_aa
        :pswitch_b4
        :pswitch_af
    .end packed-switch
.end method

.method private createProgram(Landroid/filterfw/core/FilterContext;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 174
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "uniform vec2 center;\nuniform vec2 weight;\nuniform mat2 rotate;\nuniform float amount;\nattribute vec4 positions;\nattribute vec2 texcoords;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 mesh_point = (rotate * positions.xy) * weight *2.0 +\n                    2.0 * (center - vec2(0.5, 0.5));\n  gl_Position = positions;\n  gl_Position.x = mesh_point.x;\n  gl_Position.y = mesh_point.y;\n  vec2 p = (1.0 + texcoords * amount) * positions.xy;\n  v_texcoord = (rotate * p) * weight  + center;\n}\n"

    const-string v2, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    invoke-direct {v0, p1, v1, v2}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    .line 176
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "uniform vec2 center;\nuniform mat2 rotate;\nuniform vec2 weight;\nuniform float amount;\nattribute vec4 positions;\nattribute vec2 texcoords;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 mesh_point = (rotate * (positions.xy * vec2(3.0, 2.0))) * weight +\n                    2.0 * (center - vec2(0.5, 0.5));\n  gl_Position = positions;\n  gl_Position.x = mesh_point.x;\n  gl_Position.y = mesh_point.y;\n  float x = (1.0 + amount * texcoords.x) * positions.x + amount * texcoords.y;\n  float y = positions.y * (1.0 + texcoords.x * amount);\n  vec2 p = vec2(x,y);\n  v_texcoord = (rotate * (p * vec2(3.0,2.0))) * weight * 0.5 + center;\n}\n"

    const-string v2, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    invoke-direct {v0, p1, v1, v2}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    .line 177
    return-void
.end method

.method private getDistortionScale(FF)F
    .registers 15
    .parameter "x"
    .parameter "amount"

    .prologue
    const v5, 0x3e4ccccd

    const/high16 v11, 0x3f80

    const/high16 v10, 0x4000

    .line 188
    move v3, p1

    .line 189
    .local v3, value:F
    move v0, p1

    .line 190
    .local v0, dist:F
    iget v4, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentEffect:I

    packed-switch v4, :pswitch_data_84

    .line 220
    :goto_e
    return v3

    .line 192
    :pswitch_f
    const v2, 0x3e99999a

    .line 194
    .local v2, sigma:F
    add-float v4, v0, v5

    neg-float v4, v4

    add-float/2addr v5, v0

    mul-float/2addr v4, v5

    const/high16 v5, 0x4040

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x3f63126f

    div-float/2addr v4, v5

    add-float/2addr v4, v11

    div-float v4, v10, v4

    sub-float v4, v10, v4

    mul-float v3, p2, v4

    .line 195
    goto :goto_e

    .line 199
    .end local v2           #sigma:F
    :pswitch_2c
    const v2, 0x3e99999a

    .line 202
    .restart local v2       #sigma:F
    const v4, 0x3f4ccccd

    mul-float/2addr v4, p2

    neg-float v5, v0

    mul-float/2addr v5, v0

    mul-float v6, v2, v2

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    double-to-float v5, v5

    sub-float v5, v10, v5

    const/high16 v6, 0x3e80

    add-float/2addr v6, v0

    float-to-double v6, v6

    const-wide/high16 v8, 0x4010

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    neg-double v6, v6

    const-wide/high16 v8, 0x4000

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    double-to-float v6, v6

    add-float/2addr v6, v11

    div-float v6, v10, v6

    sub-float/2addr v5, v6

    mul-float v3, v4, v5

    .line 204
    goto :goto_e

    .line 209
    .end local v2           #sigma:F
    :pswitch_5a
    const v2, 0x3f333333

    .line 214
    .restart local v2       #sigma:F
    const-wide/high16 v4, 0x4090

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    float-to-double v6, v2

    mul-double/2addr v4, v6

    float-to-double v6, v2

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 215
    .local v1, scale:F
    cmpl-float v4, v1, v11

    if-lez v4, :cond_71

    mul-float/2addr v0, v1

    .line 216
    :cond_71
    const v4, -0x40d9999a

    mul-float/2addr v4, p2

    neg-float v5, v0

    mul-float/2addr v5, v0

    mul-float v6, v2, v2

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v3, v4, v5

    .line 217
    goto :goto_e

    .line 190
    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_f
        :pswitch_5a
        :pswitch_5a
        :pswitch_2c
        :pswitch_5a
        :pswitch_2c
    .end packed-switch
.end method

.method private getTexturePosition(FFF)[F
    .registers 23
    .parameter "x"
    .parameter "y"
    .parameter "amount"

    .prologue
    .line 241
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v15, v0, [F

    fill-array-data v15, :array_10c

    .line 242
    .local v15, texture_pos:[F
    const/4 v6, 0x0

    .line 243
    .local v6, dist2:F
    const/high16 v11, 0x3f80

    .line 244
    .local v11, scale:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentEffect:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_76

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->getEffectAspectRatio()[F

    move-result-object v7

    .line 246
    .local v7, e_aspect:[F
    const/16 v16, 0x0

    aget v16, v7, v16

    const/16 v17, 0x1

    aget v17, v7, v17

    cmpg-float v16, v16, v17

    if-gez v16, :cond_71

    const/16 v16, 0x1

    aget v2, v7, v16

    .line 248
    .local v2, as_ratio:F
    :goto_2e
    mul-float v16, p1, p1

    const/16 v17, 0x0

    aget v17, v7, v17

    div-float v16, v16, v17

    const/16 v17, 0x0

    aget v17, v7, v17

    div-float v16, v16, v17

    mul-float v17, p2, p2

    const/16 v18, 0x1

    aget v18, v7, v18

    div-float v17, v17, v18

    const/16 v18, 0x1

    aget v18, v7, v18

    div-float v17, v17, v18

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v5, v0

    .line 250
    .local v5, dist:F
    const/high16 v16, 0x3f80

    cmpg-float v16, v5, v16

    if-gtz v16, :cond_70

    .line 251
    const/high16 v16, 0x3f80

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v5, v1}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->getDistortionScale(FF)F

    move-result v11

    .line 252
    const/16 v16, 0x0

    aput v11, v15, v16

    .line 253
    const/16 v16, 0x1

    aput v11, v15, v16

    .line 278
    .end local v2           #as_ratio:F
    .end local v7           #e_aspect:[F
    :cond_70
    :goto_70
    return-object v15

    .line 246
    .end local v5           #dist:F
    .restart local v7       #e_aspect:[F
    :cond_71
    const/16 v16, 0x0

    aget v2, v7, v16

    goto :goto_2e

    .line 260
    .end local v7           #e_aspect:[F
    :cond_76
    const/high16 v8, 0x3f80

    .line 261
    .local v8, kBigEyeScale:F
    const/high16 v16, 0x4000

    mul-float v16, v16, v8

    const/high16 v17, 0x3f80

    add-float v14, v16, v17

    .line 262
    .local v14, size:F
    div-float v9, v8, v14

    .line 263
    .local v9, left:F
    const/high16 v16, 0x3f80

    sub-float v10, v16, v9

    .line 264
    .local v10, right:F
    const/high16 v16, 0x3f00

    sub-float v16, v9, v16

    const/high16 v17, 0x4000

    mul-float v9, v16, v17

    .line 265
    const/high16 v16, 0x3f00

    sub-float v16, v10, v16

    const/high16 v17, 0x4000

    mul-float v10, v16, v17

    .line 266
    sub-float v3, p1, v9

    .line 267
    .local v3, dL:F
    const/high16 v16, 0x4000

    div-float v16, v14, v16

    mul-float v17, v3, v3

    mul-float v18, p2, p2

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v5, v16, v17

    .line 268
    .restart local v5       #dist:F
    sub-float v4, p1, v10

    .line 269
    .local v4, dR:F
    const/high16 v16, 0x4000

    div-float v16, v14, v16

    mul-float v17, v4, v4

    mul-float v18, p2, p2

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v6, v16, v17

    .line 270
    const/high16 v16, 0x3f80

    cmpg-float v16, v5, v16

    if-ltz v16, :cond_da

    const/high16 v16, 0x3f80

    cmpg-float v16, v6, v16

    if-gez v16, :cond_70

    .line 271
    :cond_da
    const/high16 v16, 0x3f80

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v5, v1}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->getDistortionScale(FF)F

    move-result v12

    .line 272
    .local v12, scale1:F
    const/high16 v16, 0x3f80

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->getDistortionScale(FF)F

    move-result v13

    .line 273
    .local v13, scale2:F
    const/16 v16, 0x0

    mul-float v17, v12, v12

    mul-float v18, v13, v13

    add-float v17, v17, v18

    add-float v18, v12, v13

    div-float v17, v17, v18

    aput v17, v15, v16

    .line 275
    const/16 v16, 0x1

    sub-float v17, v12, v13

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v9

    aput v17, v15, v16

    goto/16 :goto_70

    .line 241
    nop

    :array_10c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .parameter "name"
    .parameter "context"

    .prologue
    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimateCurrent:F

    .line 182
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    if-eqz v0, :cond_e

    .line 183
    invoke-direct {p0, p2}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->createMesh(Landroid/filterfw/core/FilterContext;)V

    .line 185
    :cond_e
    return-void
.end method

.method getEffectAspectRatio()[F
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 223
    iget v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentEffect:I

    packed-switch v0, :pswitch_data_30

    .line 237
    new-array v0, v1, [F

    fill-array-data v0, :array_40

    :goto_b
    return-object v0

    .line 225
    :pswitch_c
    new-array v0, v1, [F

    fill-array-data v0, :array_48

    goto :goto_b

    .line 227
    :pswitch_12
    new-array v0, v1, [F

    fill-array-data v0, :array_50

    goto :goto_b

    .line 229
    :pswitch_18
    new-array v0, v1, [F

    fill-array-data v0, :array_58

    goto :goto_b

    .line 231
    :pswitch_1e
    new-array v0, v1, [F

    fill-array-data v0, :array_60

    goto :goto_b

    .line 233
    :pswitch_24
    new-array v0, v1, [F

    fill-array-data v0, :array_68

    goto :goto_b

    .line 235
    :pswitch_2a
    new-array v0, v1, [F

    fill-array-data v0, :array_70

    goto :goto_b

    .line 223
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_c
        :pswitch_12
        :pswitch_2a
        :pswitch_18
        :pswitch_24
    .end packed-switch

    .line 237
    :array_40
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 225
    :array_48
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 227
    :array_50
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x19t 0x3ft
    .end array-data

    .line 229
    :array_58
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
    .end array-data

    .line 231
    :array_60
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x33t 0x33t 0x33t 0x3ft
    .end array-data

    .line 233
    :array_68
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0xcct 0x3et
    .end array-data

    .line 235
    :array_70
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x19t 0x3ft
    .end array-data
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .parameter "portName"
    .parameter "inputFormat"

    .prologue
    .line 170
    return-object p2
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 51
    .parameter "context"

    .prologue
    .line 383
    const-string v44, "image"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v22

    .line 384
    .local v22, input:Landroid/filterfw/core/Frame;
    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v44

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentTimeStamp:J

    .line 386
    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v23

    .line 388
    .local v23, inputFormat:Landroid/filterfw/core/FrameFormat;
    invoke-virtual/range {v23 .. v23}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v43

    .line 389
    .local v43, width:I
    invoke-virtual/range {v23 .. v23}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v20

    .line 390
    .local v20, height:I
    move/from16 v0, v43

    move/from16 v1, v20

    if-le v0, v1, :cond_398

    .line 391
    const/16 v44, 0x2

    move/from16 v0, v44

    new-array v9, v0, [F

    const/16 v44, 0x0

    const/high16 v45, 0x3f80

    aput v45, v9, v44

    const/16 v44, 0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v45, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v46, v0

    div-float v45, v45, v46

    aput v45, v9, v44

    .line 395
    .local v9, aspectRatio:[F
    :goto_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v44, v0

    if-nez v44, :cond_3b6

    .line 396
    invoke-direct/range {p0 .. p1}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->createProgram(Landroid/filterfw/core/FilterContext;)V

    .line 397
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAspect:[F

    .line 398
    invoke-direct/range {p0 .. p1}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->createMesh(Landroid/filterfw/core/FilterContext;)V

    .line 405
    :cond_54
    :goto_54
    const-string v44, "faces"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v19

    .line 406
    .local v19, facesFrame:Landroid/filterfw/core/Frame;
    invoke-virtual/range {v19 .. v19}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    .line 408
    .local v18, faces:Lcom/google/android/filterpacks/facedetect/FaceMeta;
    const/16 v44, 0x2

    move/from16 v0, v44

    new-array v13, v0, [F

    .line 409
    .local v13, center:[F
    const/16 v44, 0x2

    move/from16 v0, v44

    new-array v0, v0, [F

    move-object/from16 v42, v0

    .line 411
    .local v42, weight:[F
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    move-result v17

    .line 412
    .local v17, face_count:I
    if-lez v17, :cond_690

    .line 413
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mDistortionAmount:F

    .line 414
    .local v5, amount:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mEnableAnimation:Z

    move/from16 v44, v0

    if-eqz v44, :cond_d5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimateCurrent:F

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mDistortionAmount:F

    move/from16 v45, v0

    cmpg-float v44, v44, v45

    if-gez v44, :cond_d5

    .line 415
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentTimeStamp:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-lez v44, :cond_40f

    .line 416
    const/high16 v24, 0x44fa

    .line 418
    .local v24, kAnimationDuration:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimateCurrent:F

    move/from16 v44, v0

    const/16 v45, 0x0

    cmpl-float v44, v44, v45

    if-nez v44, :cond_3e3

    .line 419
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentTimeStamp:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimationStartTimeStamp:J

    .line 420
    const v44, 0x3a83126f

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimateCurrent:F

    .line 428
    .end local v24           #kAnimationDuration:F
    :goto_c3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimateCurrent:F

    .line 429
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mDistortionAmount:F

    move/from16 v44, v0

    cmpl-float v44, v5, v44

    if-lez v44, :cond_d5

    .line 430
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mDistortionAmount:F

    .line 432
    :cond_d5
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v44

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v11

    .line 433
    .local v11, buf1:Landroid/filterfw/core/Frame;
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 434
    const/4 v12, 0x0

    .line 435
    .local v12, buf2:Landroid/filterfw/core/Frame;
    const/16 v44, 0x1

    move/from16 v0, v17

    move/from16 v1, v44

    if-le v0, v1, :cond_fb

    .line 436
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v44

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v12

    .line 438
    :cond_fb
    move-object/from16 v36, v22

    .local v36, source:Landroid/filterfw/core/Frame;
    move-object/from16 v29, v11

    .line 439
    .local v29, output:Landroid/filterfw/core/Frame;
    const/16 v21, 0x0

    .local v21, i:I
    :goto_101
    move/from16 v0, v21

    move/from16 v1, v17

    if-ge v0, v1, :cond_67c

    .line 441
    const/16 v44, 0x1

    move/from16 v0, v17

    move/from16 v1, v44

    if-le v0, v1, :cond_124

    if-lez v21, :cond_124

    .line 442
    rem-int/lit8 v44, v21, 0x2

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_422

    .line 443
    move-object/from16 v36, v11

    .line 444
    move-object/from16 v29, v12

    .line 445
    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 453
    :cond_124
    :goto_124
    const/16 v44, 0x2

    move/from16 v0, v44

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v44, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeX(I)F

    move-result v45

    aput v45, v26, v44

    const/16 v44, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeY(I)F

    move-result v45

    aput v45, v26, v44

    .line 454
    .local v26, leftEye:[F
    const/16 v44, 0x2

    move/from16 v0, v44

    new-array v0, v0, [F

    move-object/from16 v33, v0

    const/16 v44, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeX(I)F

    move-result v45

    aput v45, v33, v44

    const/16 v44, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeY(I)F

    move-result v45

    aput v45, v33, v44

    .line 455
    .local v33, rightEye:[F
    const/16 v44, 0x2

    move/from16 v0, v44

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v44, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthX(I)F

    move-result v45

    aput v45, v28, v44

    const/16 v44, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthY(I)F

    move-result v45

    aput v45, v28, v44

    .line 456
    .local v28, mouth:[F
    const/16 v44, 0x1

    aget v44, v33, v44

    const/16 v45, 0x1

    aget v45, v26, v45

    sub-float v44, v44, v45

    const/16 v45, 0x1

    aget v45, v9, v45

    mul-float v44, v44, v45

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    const/16 v46, 0x0

    aget v46, v33, v46

    const/16 v47, 0x0

    aget v47, v26, v47

    sub-float v46, v46, v47

    const/16 v47, 0x0

    aget v47, v9, v47

    mul-float v46, v46, v47

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    invoke-static/range {v44 .. v47}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v44

    move-wide/from16 v0, v44

    double-to-float v7, v0

    .line 458
    .local v7, angleEyes:F
    const/16 v44, 0x0

    aget v44, v33, v44

    const/16 v45, 0x0

    aget v45, v26, v45

    add-float v44, v44, v45

    const/high16 v45, 0x4000

    div-float v44, v44, v45

    const/16 v45, 0x0

    aget v45, v28, v45

    sub-float v40, v44, v45

    .line 459
    .local v40, v_axis_x:F
    const/16 v44, 0x1

    aget v44, v33, v44

    const/16 v45, 0x1

    aget v45, v26, v45

    add-float v44, v44, v45

    const/high16 v45, 0x4000

    div-float v44, v44, v45

    const/16 v45, 0x1

    aget v45, v28, v45

    sub-float v41, v44, v45

    .line 460
    .local v41, v_axis_y:F
    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v44, v0

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v46, v0

    invoke-static/range {v44 .. v47}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v44

    move-wide/from16 v0, v44

    double-to-float v8, v0

    .line 461
    .local v8, angleFace:F
    float-to-double v0, v8

    move-wide/from16 v44, v0

    const-wide v46, 0x3ff921fb54442d18L

    sub-double v44, v44, v46

    move-wide/from16 v0, v44

    double-to-float v8, v0

    .line 463
    const/16 v44, 0x0

    aget v44, v26, v44

    const/16 v45, 0x0

    aget v45, v33, v45

    sub-float v44, v44, v45

    const/16 v45, 0x0

    aget v45, v9, v45

    mul-float v14, v44, v45

    .line 464
    .local v14, dx:F
    const/16 v44, 0x1

    aget v44, v26, v44

    const/16 v45, 0x1

    aget v45, v33, v45

    sub-float v44, v44, v45

    const/16 v45, 0x1

    aget v45, v9, v45

    mul-float v15, v44, v45

    .line 465
    .local v15, dy:F
    mul-float v44, v14, v14

    mul-float v45, v15, v15

    add-float v44, v44, v45

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v44

    move-wide/from16 v0, v44

    double-to-float v0, v0

    move/from16 v27, v0

    .line 467
    .local v27, length:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentEffect:I

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_42d

    .line 468
    const/16 v44, 0x1

    aget v44, v26, v44

    sub-float v44, v44, v27

    const/16 v45, 0x1

    aget v45, v33, v45

    sub-float v45, v45, v27

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->min(FF)F

    move-result v39

    .line 469
    .local v39, top:F
    const/16 v44, 0x0

    aget v44, v26, v44

    sub-float v44, v44, v27

    const/16 v45, 0x0

    aget v45, v33, v45

    sub-float v45, v45, v27

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->min(FF)F

    move-result v25

    .line 471
    .local v25, left:F
    const/16 v44, 0x1

    aget v44, v26, v44

    add-float v44, v44, v27

    const/16 v45, 0x1

    aget v45, v33, v45

    add-float v45, v45, v27

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 472
    .local v10, bottom:F
    const/16 v44, 0x0

    aget v44, v26, v44

    add-float v44, v44, v27

    const/16 v45, 0x0

    aget v45, v33, v45

    add-float v45, v45, v27

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(FF)F

    move-result v32

    .line 474
    .local v32, right:F
    new-instance v30, Landroid/filterfw/geometry/Rectangle;

    sub-float v44, v32, v25

    sub-float v45, v10, v39

    move-object/from16 v0, v30

    move/from16 v1, v25

    move/from16 v2, v39

    move/from16 v3, v44

    move/from16 v4, v45

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Rectangle;-><init>(FFFF)V

    .line 475
    .local v30, rect:Landroid/filterfw/geometry/Rectangle;
    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/geometry/Rectangle;->translated(FF)Landroid/filterfw/geometry/Quad;

    move-result-object v31

    .line 477
    .local v31, region:Landroid/filterfw/geometry/Quad;
    const/16 v44, 0x0

    const/16 v45, 0x0

    aget v45, v26, v45

    const/16 v46, 0x0

    aget v46, v33, v46

    add-float v45, v45, v46

    const/high16 v46, 0x4000

    div-float v45, v45, v46

    aput v45, v13, v44

    .line 478
    const/16 v44, 0x1

    const/16 v45, 0x1

    aget v45, v26, v45

    const/16 v46, 0x1

    aget v46, v33, v46

    add-float v45, v45, v46

    const/high16 v46, 0x4000

    div-float v45, v45, v46

    aput v45, v13, v44

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v44, v0

    const-string v45, "center"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v13}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 480
    const/16 v44, 0x4

    move/from16 v0, v44

    new-array v0, v0, [F

    move-object/from16 v34, v0

    const/16 v44, 0x0

    float-to-double v0, v7

    move-wide/from16 v45, v0

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->cos(D)D

    move-result-wide v45

    move-wide/from16 v0, v45

    double-to-float v0, v0

    move/from16 v45, v0

    aput v45, v34, v44

    const/16 v44, 0x1

    float-to-double v0, v7

    move-wide/from16 v45, v0

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->sin(D)D

    move-result-wide v45

    move-wide/from16 v0, v45

    double-to-float v0, v0

    move/from16 v45, v0

    aput v45, v34, v44

    const/16 v44, 0x2

    float-to-double v0, v7

    move-wide/from16 v45, v0

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->sin(D)D

    move-result-wide v45

    move-wide/from16 v0, v45

    neg-double v0, v0

    move-wide/from16 v45, v0

    move-wide/from16 v0, v45

    double-to-float v0, v0

    move/from16 v45, v0

    aput v45, v34, v44

    const/16 v44, 0x3

    float-to-double v0, v7

    move-wide/from16 v45, v0

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->cos(D)D

    move-result-wide v45

    move-wide/from16 v0, v45

    double-to-float v0, v0

    move/from16 v45, v0

    aput v45, v34, v44

    .line 482
    .local v34, rotate:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v44, v0

    const-string v45, "rotate"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 483
    const/16 v44, 0x2

    move/from16 v0, v44

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v44, 0x0

    const/16 v45, 0x0

    aget v45, v9, v45

    div-float v45, v27, v45

    aput v45, v35, v44

    const/16 v44, 0x1

    const/16 v45, 0x1

    aget v45, v9, v45

    div-float v45, v27, v45

    aput v45, v35, v44

    .line 484
    .local v35, scales:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v44, v0

    const-string v45, "weight"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v44, v0

    const-string v45, "amount"

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v36

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 439
    .end local v10           #bottom:F
    .end local v25           #left:F
    .end local v32           #right:F
    .end local v35           #scales:[F
    .end local v39           #top:F
    :goto_394
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_101

    .line 393
    .end local v5           #amount:F
    .end local v7           #angleEyes:F
    .end local v8           #angleFace:F
    .end local v9           #aspectRatio:[F
    .end local v11           #buf1:Landroid/filterfw/core/Frame;
    .end local v12           #buf2:Landroid/filterfw/core/Frame;
    .end local v13           #center:[F
    .end local v14           #dx:F
    .end local v15           #dy:F
    .end local v17           #face_count:I
    .end local v18           #faces:Lcom/google/android/filterpacks/facedetect/FaceMeta;
    .end local v19           #facesFrame:Landroid/filterfw/core/Frame;
    .end local v21           #i:I
    .end local v26           #leftEye:[F
    .end local v27           #length:F
    .end local v28           #mouth:[F
    .end local v29           #output:Landroid/filterfw/core/Frame;
    .end local v30           #rect:Landroid/filterfw/geometry/Rectangle;
    .end local v31           #region:Landroid/filterfw/geometry/Quad;
    .end local v33           #rightEye:[F
    .end local v34           #rotate:[F
    .end local v36           #source:Landroid/filterfw/core/Frame;
    .end local v40           #v_axis_x:F
    .end local v41           #v_axis_y:F
    .end local v42           #weight:[F
    :cond_398
    const/16 v44, 0x2

    move/from16 v0, v44

    new-array v9, v0, [F

    const/16 v44, 0x0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v45, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v46, v0

    div-float v45, v45, v46

    aput v45, v9, v44

    const/16 v44, 0x1

    const/high16 v45, 0x3f80

    aput v45, v9, v44

    .restart local v9       #aspectRatio:[F
    goto/16 :goto_42

    .line 400
    :cond_3b6
    const/16 v44, 0x0

    aget v44, v9, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAspect:[F

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aget v45, v45, v46

    cmpl-float v44, v44, v45

    if-nez v44, :cond_3da

    const/16 v44, 0x1

    aget v44, v9, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAspect:[F

    move-object/from16 v45, v0

    const/16 v46, 0x1

    aget v45, v45, v46

    cmpl-float v44, v44, v45

    if-eqz v44, :cond_54

    .line 401
    :cond_3da
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAspect:[F

    .line 402
    invoke-direct/range {p0 .. p1}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->createMesh(Landroid/filterfw/core/FilterContext;)V

    goto/16 :goto_54

    .line 422
    .restart local v5       #amount:F
    .restart local v13       #center:[F
    .restart local v17       #face_count:I
    .restart local v18       #faces:Lcom/google/android/filterpacks/facedetect/FaceMeta;
    .restart local v19       #facesFrame:Landroid/filterfw/core/Frame;
    .restart local v24       #kAnimationDuration:F
    .restart local v42       #weight:[F
    :cond_3e3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentTimeStamp:J

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimationStartTimeStamp:J

    move-wide/from16 v46, v0

    sub-long v37, v44, v46

    .line 423
    .local v37, t:J
    const-wide/32 v44, 0xf4240

    div-long v37, v37, v44

    .line 424
    move-wide/from16 v0, v37

    long-to-float v0, v0

    move/from16 v44, v0

    const/high16 v45, 0x44fa

    div-float v44, v44, v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mDistortionAmount:F

    move/from16 v45, v0

    mul-float v44, v44, v45

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimateCurrent:F

    goto/16 :goto_c3

    .line 427
    .end local v24           #kAnimationDuration:F
    .end local v37           #t:J
    :cond_40f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimateCurrent:F

    move/from16 v44, v0

    const v45, 0x3cf5c28f

    add-float v44, v44, v45

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimateCurrent:F

    goto/16 :goto_c3

    .line 447
    .restart local v11       #buf1:Landroid/filterfw/core/Frame;
    .restart local v12       #buf2:Landroid/filterfw/core/Frame;
    .restart local v21       #i:I
    .restart local v29       #output:Landroid/filterfw/core/Frame;
    .restart local v36       #source:Landroid/filterfw/core/Frame;
    :cond_422
    move-object/from16 v36, v12

    .line 448
    move-object/from16 v29, v11

    .line 449
    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    goto/16 :goto_124

    .line 494
    .restart local v7       #angleEyes:F
    .restart local v8       #angleFace:F
    .restart local v14       #dx:F
    .restart local v15       #dy:F
    .restart local v26       #leftEye:[F
    .restart local v27       #length:F
    .restart local v28       #mouth:[F
    .restart local v33       #rightEye:[F
    .restart local v40       #v_axis_x:F
    .restart local v41       #v_axis_y:F
    :cond_42d
    move v6, v8

    .line 495
    .local v6, angle:F
    const/high16 v16, 0x3f80

    .line 496
    .local v16, effectSize:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentEffect:I

    move/from16 v44, v0

    packed-switch v44, :pswitch_data_69c

    .line 538
    :pswitch_439
    new-instance v44, Ljava/lang/RuntimeException;

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Undefined effect: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentEffect:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v44

    .line 499
    :pswitch_458
    const/16 v44, 0x0

    const/high16 v45, 0x3f00

    const/16 v46, 0x0

    aget v46, v26, v46

    mul-float v45, v45, v46

    const/high16 v46, 0x3f00

    const/16 v47, 0x0

    aget v47, v33, v47

    mul-float v46, v46, v47

    add-float v45, v45, v46

    const v46, 0x38d1b717

    const/16 v47, 0x0

    aget v47, v28, v47

    mul-float v46, v46, v47

    add-float v45, v45, v46

    aput v45, v13, v44

    .line 500
    const/16 v44, 0x1

    const/high16 v45, 0x3f00

    const/16 v46, 0x1

    aget v46, v26, v46

    mul-float v45, v45, v46

    const/high16 v46, 0x3f00

    const/16 v47, 0x1

    aget v47, v33, v47

    mul-float v46, v46, v47

    add-float v45, v45, v46

    const v46, 0x38d1b717

    const/16 v47, 0x1

    aget v47, v28, v47

    mul-float v46, v46, v47

    add-float v45, v45, v46

    aput v45, v13, v44

    .line 501
    const/high16 v16, 0x3f80

    .line 503
    move v6, v7

    .line 541
    :goto_49d
    const/16 v44, 0x0

    mul-float v45, v16, v27

    const/16 v46, 0x0

    aget v46, v9, v46

    div-float v45, v45, v46

    aput v45, v42, v44

    .line 542
    const/16 v44, 0x1

    mul-float v45, v16, v27

    const/16 v46, 0x1

    aget v46, v9, v46

    div-float v45, v45, v46

    aput v45, v42, v44

    .line 543
    new-instance v30, Landroid/filterfw/geometry/Rectangle;

    const/high16 v44, -0x4080

    const/16 v45, 0x0

    aget v45, v42, v45

    mul-float v44, v44, v45

    const/high16 v45, -0x4080

    const/16 v46, 0x1

    aget v46, v42, v46

    mul-float v45, v45, v46

    const/high16 v46, 0x4000

    const/16 v47, 0x0

    aget v47, v42, v47

    mul-float v46, v46, v47

    const/high16 v47, 0x4000

    const/16 v48, 0x1

    aget v48, v42, v48

    mul-float v47, v47, v48

    move-object/from16 v0, v30

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Rectangle;-><init>(FFFF)V

    .line 546
    .restart local v30       #rect:Landroid/filterfw/geometry/Rectangle;
    const/16 v44, 0x0

    aget v44, v13, v44

    const/16 v45, 0x1

    aget v45, v13, v45

    move-object/from16 v0, v30

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/geometry/Rectangle;->translated(FF)Landroid/filterfw/geometry/Quad;

    move-result-object v31

    .line 549
    .restart local v31       #region:Landroid/filterfw/geometry/Quad;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v44, v0

    const-string v45, "center"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v13}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v44, v0

    const-string v45, "weight"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 551
    const/16 v44, 0x4

    move/from16 v0, v44

    new-array v0, v0, [F

    move-object/from16 v34, v0

    const/16 v44, 0x0

    float-to-double v0, v6

    move-wide/from16 v45, v0

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->cos(D)D

    move-result-wide v45

    move-wide/from16 v0, v45

    double-to-float v0, v0

    move/from16 v45, v0

    aput v45, v34, v44

    const/16 v44, 0x1

    float-to-double v0, v6

    move-wide/from16 v45, v0

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->sin(D)D

    move-result-wide v45

    move-wide/from16 v0, v45

    double-to-float v0, v0

    move/from16 v45, v0

    aput v45, v34, v44

    const/16 v44, 0x2

    float-to-double v0, v6

    move-wide/from16 v45, v0

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->sin(D)D

    move-result-wide v45

    move-wide/from16 v0, v45

    neg-double v0, v0

    move-wide/from16 v45, v0

    move-wide/from16 v0, v45

    double-to-float v0, v0

    move/from16 v45, v0

    aput v45, v34, v44

    const/16 v44, 0x3

    float-to-double v0, v6

    move-wide/from16 v45, v0

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->cos(D)D

    move-result-wide v45

    move-wide/from16 v0, v45

    double-to-float v0, v0

    move/from16 v45, v0

    aput v45, v34, v44

    .line 553
    .restart local v34       #rotate:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v44, v0

    const-string v45, "rotate"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v44, v0

    const-string v45, "amount"

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v36

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    goto/16 :goto_394

    .line 509
    .end local v30           #rect:Landroid/filterfw/geometry/Rectangle;
    .end local v31           #region:Landroid/filterfw/geometry/Quad;
    .end local v34           #rotate:[F
    :pswitch_5ae
    const/16 v44, 0x0

    const/16 v45, 0x0

    aget v45, v28, v45

    const v46, 0x3d75c28f

    mul-float v46, v46, v40

    sub-float v45, v45, v46

    aput v45, v13, v44

    .line 510
    const/16 v44, 0x1

    const/16 v45, 0x1

    aget v45, v28, v45

    const v46, 0x3d75c28f

    mul-float v46, v46, v41

    sub-float v45, v45, v46

    aput v45, v13, v44

    .line 511
    const v16, 0x3f333333

    .line 512
    goto/16 :goto_49d

    .line 517
    :pswitch_5d1
    const/16 v44, 0x0

    const/16 v45, 0x0

    aget v45, v28, v45

    const v46, 0x3d75c28f

    mul-float v46, v46, v40

    sub-float v45, v45, v46

    aput v45, v13, v44

    .line 518
    const/16 v44, 0x1

    const/16 v45, 0x1

    aget v45, v28, v45

    const v46, 0x3d75c28f

    mul-float v46, v46, v41

    sub-float v45, v45, v46

    aput v45, v13, v44

    .line 519
    const/high16 v16, 0x4020

    .line 520
    goto/16 :goto_49d

    .line 525
    :pswitch_5f3
    const/16 v44, 0x0

    const/high16 v45, 0x3e80

    const/16 v46, 0x0

    aget v46, v26, v46

    mul-float v45, v45, v46

    const/high16 v46, 0x3e80

    const/16 v47, 0x0

    aget v47, v33, v47

    mul-float v46, v46, v47

    add-float v45, v45, v46

    const/high16 v46, 0x3f00

    const/16 v47, 0x0

    aget v47, v28, v47

    mul-float v46, v46, v47

    add-float v45, v45, v46

    aput v45, v13, v44

    .line 526
    const/16 v44, 0x1

    const/high16 v45, 0x3e80

    const/16 v46, 0x1

    aget v46, v26, v46

    mul-float v45, v45, v46

    const/high16 v46, 0x3e80

    const/16 v47, 0x1

    aget v47, v33, v47

    mul-float v46, v46, v47

    add-float v45, v45, v46

    const/high16 v46, 0x3f00

    const/16 v47, 0x1

    aget v47, v28, v47

    mul-float v46, v46, v47

    add-float v45, v45, v46

    aput v45, v13, v44

    .line 527
    const v16, 0x3f8ccccd

    .line 528
    goto/16 :goto_49d

    .line 533
    :pswitch_638
    const/16 v44, 0x0

    const/high16 v45, 0x3e80

    const/16 v46, 0x0

    aget v46, v26, v46

    mul-float v45, v45, v46

    const/high16 v46, 0x3e80

    const/16 v47, 0x0

    aget v47, v33, v47

    mul-float v46, v46, v47

    add-float v45, v45, v46

    const/high16 v46, 0x3f00

    const/16 v47, 0x0

    aget v47, v28, v47

    mul-float v46, v46, v47

    add-float v45, v45, v46

    aput v45, v13, v44

    .line 534
    const/16 v44, 0x1

    const/high16 v45, 0x3e80

    const/16 v46, 0x1

    aget v46, v26, v46

    mul-float v45, v45, v46

    const/high16 v46, 0x3e80

    const/16 v47, 0x1

    aget v47, v33, v47

    mul-float v46, v46, v47

    add-float v45, v45, v46

    const/high16 v46, 0x3f00

    const/16 v47, 0x1

    aget v47, v28, v47

    mul-float v46, v46, v47

    add-float v45, v45, v46

    aput v45, v13, v44

    .line 535
    const/high16 v16, 0x4000

    .line 536
    goto/16 :goto_49d

    .line 563
    .end local v6           #angle:F
    .end local v7           #angleEyes:F
    .end local v8           #angleFace:F
    .end local v14           #dx:F
    .end local v15           #dy:F
    .end local v16           #effectSize:F
    .end local v26           #leftEye:[F
    .end local v27           #length:F
    .end local v28           #mouth:[F
    .end local v33           #rightEye:[F
    .end local v40           #v_axis_x:F
    .end local v41           #v_axis_y:F
    :cond_67c
    const-string v44, "outimage"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 564
    invoke-virtual {v11}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 565
    if-eqz v12, :cond_68f

    .line 566
    invoke-virtual {v12}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 570
    .end local v5           #amount:F
    .end local v11           #buf1:Landroid/filterfw/core/Frame;
    .end local v12           #buf2:Landroid/filterfw/core/Frame;
    .end local v21           #i:I
    .end local v29           #output:Landroid/filterfw/core/Frame;
    .end local v36           #source:Landroid/filterfw/core/Frame;
    :cond_68f
    :goto_68f
    return-void

    .line 568
    :cond_690
    const-string v44, "outimage"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    goto :goto_68f

    .line 496
    :pswitch_data_69c
    .packed-switch 0x0
        :pswitch_638
        :pswitch_439
        :pswitch_5d1
        :pswitch_5ae
        :pswitch_5f3
        :pswitch_458
    .end packed-switch
.end method

.method public setupPorts()V
    .registers 5

    .prologue
    const/4 v2, 0x3

    .line 157
    invoke-static {v2, v2}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    .line 159
    .local v1, imageFormat:Landroid/filterfw/core/FrameFormat;
    const-class v2, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 163
    .local v0, facesFormat:Landroid/filterfw/core/FrameFormat;
    const-string v2, "image"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 164
    const-string v2, "faces"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 165
    const-string v2, "outimage"

    const-string v3, "image"

    invoke-virtual {p0, v2, v3}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method
