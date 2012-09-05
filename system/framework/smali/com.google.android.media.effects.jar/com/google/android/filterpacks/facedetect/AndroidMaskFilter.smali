.class public Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;
.super Landroid/filterfw/core/Filter;
.source "AndroidMaskFilter.java"


# instance fields
.field private mAndroidCenterX:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "EyeCenterX"
    .end annotation
.end field

.field private mAndroidCenterY:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "EyeCenterY"
    .end annotation
.end field

.field private mAndroidEyeDist:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "EyeDistance"
    .end annotation
.end field

.field private mOverlayProgram:Landroid/filterfw/core/ShaderProgram;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private rotate2D([F[FF)[F
    .registers 12
    .parameter "x"
    .parameter "center"
    .parameter "angle"

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 84
    new-array v1, v4, [F

    aget v2, p1, v6

    aget v3, p2, v6

    sub-float/2addr v2, v3

    aput v2, v1, v6

    aget v2, p1, v7

    aget v3, p2, v7

    sub-float/2addr v2, v3

    aput v2, v1, v7

    .line 85
    .local v1, xx:[F
    new-array v0, v4, [F

    aget v2, v1, v6

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    aget v3, v1, v7

    float-to-double v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v0, v6

    aget v2, v1, v6

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    aget v3, v1, v7

    float-to-double v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v7

    .line 87
    .local v0, ret:[F
    return-object v0
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .parameter "portName"
    .parameter "inputFormat"

    .prologue
    .line 73
    return-object p2
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 78
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    .line 79
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setBlendEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setBlendFunc(II)V

    .line 81
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 41
    .parameter "context"

    .prologue
    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v17

    .line 95
    .local v17, frameManager:Landroid/filterfw/core/FrameManager;
    const-string v34, "image"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v19

    .line 96
    .local v19, imageFrame:Landroid/filterfw/core/Frame;
    const-string v34, "faces"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v14

    .line 97
    .local v14, facesFrame:Landroid/filterfw/core/Frame;
    const-string v34, "android"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v6

    .line 100
    .local v6, androidFrame:Landroid/filterfw/core/Frame;
    invoke-virtual/range {v19 .. v19}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v23

    .line 101
    .local v23, outputFormat:Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    .line 103
    .local v5, androidFormat:Landroid/filterfw/core/FrameFormat;
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v22

    .line 104
    .local v22, output:Landroid/filterfw/core/Frame;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 106
    invoke-virtual {v14}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    .line 108
    .local v13, face:Lcom/google/android/filterpacks/facedetect/FaceMeta;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/high16 v37, 0x3f80

    const/high16 v38, 0x3f80

    invoke-virtual/range {v34 .. v38}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/high16 v37, 0x3f80

    const/high16 v38, 0x3f80

    invoke-virtual/range {v34 .. v38}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 111
    invoke-virtual {v13}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    move-result v21

    .line 112
    .local v21, num_face:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_67
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_223

    .line 113
    new-instance v15, Landroid/filterfw/geometry/Point;

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX0(I)F

    move-result v34

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY0(I)F

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-direct {v15, v0, v1}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 114
    .local v15, fr0:Landroid/filterfw/geometry/Point;
    new-instance v16, Landroid/filterfw/geometry/Point;

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX1(I)F

    move-result v34

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY1(I)F

    move-result v35

    move-object/from16 v0, v16

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 115
    .local v16, fr1:Landroid/filterfw/geometry/Point;
    new-instance v20, Landroid/filterfw/geometry/Point;

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeX(I)F

    move-result v34

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeY(I)F

    move-result v35

    move-object/from16 v0, v20

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 116
    .local v20, le:Landroid/filterfw/geometry/Point;
    new-instance v28, Landroid/filterfw/geometry/Point;

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeX(I)F

    move-result v34

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeY(I)F

    move-result v35

    move-object/from16 v0, v28

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 117
    .local v28, re:Landroid/filterfw/geometry/Point;
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v34

    const/high16 v35, 0x3f00

    invoke-virtual/range {v34 .. v35}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v10

    .line 118
    .local v10, center:Landroid/filterfw/geometry/Point;
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/filterfw/geometry/Point;->length()F

    move-result v12

    .line 119
    .local v12, dist:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mAndroidEyeDist:F

    move/from16 v34, v0

    div-float v30, v12, v34

    .line 120
    .local v30, s:F
    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v31, v34, v35

    .line 121
    .local v31, s1:F
    invoke-virtual/range {v23 .. v23}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v23 .. v23}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v32, v34, v35

    .line 122
    .local v32, s2:F
    div-float v33, v30, v31

    .line 123
    .local v33, sy:F
    new-instance v8, Landroid/filterfw/geometry/Point;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mAndroidCenterX:F

    move/from16 v34, v0

    mul-float v34, v34, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mAndroidCenterY:F

    move/from16 v35, v0

    mul-float v35, v35, v33

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-direct {v8, v0, v1}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 124
    .local v8, c:Landroid/filterfw/geometry/Point;
    new-instance v9, Landroid/filterfw/geometry/Point;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mAndroidCenterX:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mAndroidCenterY:F

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-direct {v9, v0, v1}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 125
    .local v9, c0:Landroid/filterfw/geometry/Point;
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v11

    .line 126
    .local v11, d:Landroid/filterfw/geometry/Point;
    iget v0, v11, Landroid/filterfw/geometry/Point;->y:F

    move/from16 v34, v0

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    iget v0, v11, Landroid/filterfw/geometry/Point;->x:F

    move/from16 v36, v0

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-float v7, v0

    .line 127
    .local v7, angle:F
    new-instance v34, Landroid/filterfw/geometry/Point;

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-direct/range {v34 .. v36}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Landroid/filterfw/geometry/Point;->rotated(F)Landroid/filterfw/geometry/Point;

    move-result-object v34

    const/high16 v35, 0x3f80

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v24

    .line 128
    .local v24, p0:Landroid/filterfw/geometry/Point;
    new-instance v34, Landroid/filterfw/geometry/Point;

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Landroid/filterfw/geometry/Point;->rotated(F)Landroid/filterfw/geometry/Point;

    move-result-object v34

    const/high16 v35, 0x3f80

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v25

    .line 129
    .local v25, p1:Landroid/filterfw/geometry/Point;
    new-instance v34, Landroid/filterfw/geometry/Point;

    move-object/from16 v0, v34

    move/from16 v1, v30

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Landroid/filterfw/geometry/Point;->rotated(F)Landroid/filterfw/geometry/Point;

    move-result-object v34

    const/high16 v35, 0x3f80

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v26

    .line 130
    .local v26, p2:Landroid/filterfw/geometry/Point;
    new-instance v34, Landroid/filterfw/geometry/Point;

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v30

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Landroid/filterfw/geometry/Point;->rotated(F)Landroid/filterfw/geometry/Point;

    move-result-object v34

    const/high16 v35, 0x3f80

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v27

    .line 131
    .local v27, p3:Landroid/filterfw/geometry/Point;
    new-instance v29, Landroid/filterfw/geometry/Quad;

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 132
    .local v29, region:Landroid/filterfw/geometry/Quad;
    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/filterfw/geometry/Quad;->translated(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Quad;

    move-result-object v29

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 112
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_67

    .line 138
    .end local v7           #angle:F
    .end local v8           #c:Landroid/filterfw/geometry/Point;
    .end local v9           #c0:Landroid/filterfw/geometry/Point;
    .end local v10           #center:Landroid/filterfw/geometry/Point;
    .end local v11           #d:Landroid/filterfw/geometry/Point;
    .end local v12           #dist:F
    .end local v15           #fr0:Landroid/filterfw/geometry/Point;
    .end local v16           #fr1:Landroid/filterfw/geometry/Point;
    .end local v20           #le:Landroid/filterfw/geometry/Point;
    .end local v24           #p0:Landroid/filterfw/geometry/Point;
    .end local v25           #p1:Landroid/filterfw/geometry/Point;
    .end local v26           #p2:Landroid/filterfw/geometry/Point;
    .end local v27           #p3:Landroid/filterfw/geometry/Point;
    .end local v28           #re:Landroid/filterfw/geometry/Point;
    .end local v29           #region:Landroid/filterfw/geometry/Quad;
    .end local v30           #s:F
    .end local v31           #s1:F
    .end local v32           #s2:F
    .end local v33           #sy:F
    :cond_223
    const-string v34, "image"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 141
    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 142
    return-void
.end method

.method public setupPorts()V
    .registers 5

    .prologue
    const/4 v2, 0x3

    .line 59
    invoke-static {v2, v2}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    .line 61
    .local v1, imageFormat:Landroid/filterfw/core/FrameFormat;
    const-class v2, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 65
    .local v0, facesFormat:Landroid/filterfw/core/FrameFormat;
    const-string v2, "image"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 66
    const-string v2, "faces"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 67
    const-string v2, "android"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 68
    const-string v2, "image"

    const-string v3, "image"

    invoke-virtual {p0, v2, v3}, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
