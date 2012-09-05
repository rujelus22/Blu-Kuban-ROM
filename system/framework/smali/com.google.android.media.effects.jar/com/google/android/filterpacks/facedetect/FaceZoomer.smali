.class public Lcom/google/android/filterpacks/facedetect/FaceZoomer;
.super Landroid/filterfw/core/Filter;
.source "FaceZoomer.java"


# instance fields
.field private mDebugFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mEnableDebugStream:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "enableDebugStream"
    .end annotation
.end field

.field private final mFragShader:Ljava/lang/String;

.field private mMaxOutputSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxOutputSize"
    .end annotation
.end field

.field private mMinFramesPerSpeaker:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "minFramesPerSpeaker"
    .end annotation
.end field

.field private mMinFramesPerTransition:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "minFramesPerTransition"
    .end annotation
.end field

.field private mMinFramesPerZoomOut:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "minFramesPerZoomOut"
    .end annotation
.end field

.field private mMinTransitionMagnitude:F
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "minTransitionMagnitude"
    .end annotation
.end field

.field private mMinTransitionMagnitudeFast:F
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "minTransitionMagnitudeFast"
    .end annotation
.end field

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mOutputTransitionsOnly:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "outputTransitionsOnly"
    .end annotation
.end field

.field private mRegionFrameFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mRenderRegionProgram:Landroid/filterfw/core/ShaderProgram;

.field private mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

.field private mSelectRegionProgramInputs:[Landroid/filterfw/core/Frame;

.field private mTransitionSeconds:F
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "transitionSeconds"
    .end annotation
.end field

.field private mTransitionSigma:F
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "transitionSigma"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    const/4 v1, 0x1

    .line 99
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 44
    const/16 v0, 0x140

    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMaxOutputSize:I

    .line 50
    const v0, 0x3eb33333

    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMinTransitionMagnitudeFast:F

    .line 52
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMinTransitionMagnitude:F

    .line 55
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMinFramesPerSpeaker:I

    .line 57
    iput v1, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMinFramesPerTransition:I

    .line 59
    const/16 v0, 0x19

    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMinFramesPerZoomOut:I

    .line 62
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mTransitionSeconds:F

    .line 64
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mTransitionSigma:F

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mEnableDebugStream:Z

    .line 70
    iput-boolean v1, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mOutputTransitionsOnly:Z

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 80
    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  const vec2 lo = vec2(0.0, 0.0);\n  const vec2 hi = vec2(1.0, 1.0);\n  const vec4 black = vec4(0.0, 0.0, 0.0, 1.0);\n  bool out_of_bounds =\n    any(lessThan(v_texcoord, lo)) ||\n    any(greaterThan(v_texcoord, hi));\n  if (out_of_bounds) {\n    gl_FragColor = black;\n  } else {\n    gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n  }\n}\n"

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mFragShader:Ljava/lang/String;

    .line 100
    return-void
.end method

.method private getSelectedRegion(Landroid/filterfw/core/Frame;)Landroid/filterfw/geometry/Quad;
    .registers 9
    .parameter "regionFrame"

    .prologue
    const/4 v6, 0x0

    .line 229
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/filterpacks/facedetect/RectFrame;

    .line 230
    .local v2, rectFrame:Lcom/google/android/filterpacks/facedetect/RectFrame;
    invoke-virtual {v2}, Lcom/google/android/filterpacks/facedetect/RectFrame;->count()I

    move-result v0

    .line 231
    .local v0, numRects:I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_27

    .line 232
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal RectFrame size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 234
    :cond_27
    new-instance v1, Landroid/filterfw/geometry/Rectangle;

    invoke-virtual {v2, v6}, Lcom/google/android/filterpacks/facedetect/RectFrame;->getX(I)F

    move-result v3

    invoke-virtual {v2, v6}, Lcom/google/android/filterpacks/facedetect/RectFrame;->getY(I)F

    move-result v4

    invoke-virtual {v2, v6}, Lcom/google/android/filterpacks/facedetect/RectFrame;->getWidth(I)F

    move-result v5

    invoke-virtual {v2, v6}, Lcom/google/android/filterpacks/facedetect/RectFrame;->getHeight(I)F

    move-result v6

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/filterfw/geometry/Rectangle;-><init>(FFFF)V

    .line 237
    .local v1, rect:Landroid/filterfw/geometry/Rectangle;
    return-object v1
.end method

.method private setOutputFormat(Landroid/filterfw/core/FrameFormat;)V
    .registers 8
    .parameter "inputFormat"

    .prologue
    const/4 v5, 0x3

    .line 208
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    .line 209
    .local v3, w:I
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v0

    .line 210
    .local v0, h:I
    const/4 v2, 0x0

    .line 211
    .local v2, ow:I
    const/4 v1, 0x0

    .line 212
    .local v1, oh:I
    if-le v3, v0, :cond_27

    .line 213
    iget v4, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMaxOutputSize:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 214
    mul-int v4, v2, v0

    div-int v1, v4, v3

    .line 219
    :goto_17
    iget-object v4, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    if-nez v4, :cond_21

    .line 220
    invoke-static {v2, v1, v5, v5}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 225
    :cond_21
    iget-object v4, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v4, v2, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 226
    return-void

    .line 216
    :cond_27
    iget v4, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMaxOutputSize:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 217
    mul-int v4, v1, v3

    div-int v2, v4, v0

    goto :goto_17
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .parameter "portName"
    .parameter "inputFormat"

    .prologue
    .line 124
    return-object p2
.end method

.method protected prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x2

    .line 130
    const-class v0, Lcom/google/android/filterpacks/facedetect/RectFrame;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mRegionFrameFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 135
    new-array v0, v2, [Landroid/filterfw/core/Frame;

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgramInputs:[Landroid/filterfw/core/Frame;

    .line 136
    new-instance v0, Landroid/filterfw/core/NativeProgram;

    const-string v1, "filterpack_facedetect"

    const-string v2, "face_zoomer"

    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    .line 138
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  const vec2 lo = vec2(0.0, 0.0);\n  const vec2 hi = vec2(1.0, 1.0);\n  const vec4 black = vec4(0.0, 0.0, 0.0, 1.0);\n  bool out_of_bounds =\n    any(lessThan(v_texcoord, lo)) ||\n    any(greaterThan(v_texcoord, hi));\n  if (out_of_bounds) {\n    gl_FragColor = black;\n  } else {\n    gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n  }\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mRenderRegionProgram:Landroid/filterfw/core/ShaderProgram;

    .line 141
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    const-string v1, "minTransitionMagnitudeFast"

    iget v2, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMinTransitionMagnitudeFast:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    const-string v1, "minTransitionMagnitude"

    iget v2, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMinTransitionMagnitude:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    const-string v1, "minFramesPerSpeaker"

    iget v2, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMinFramesPerSpeaker:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    const-string v1, "minFramesPerTransition"

    iget v2, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMinFramesPerTransition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    const-string v1, "minFramesPerZoomOut"

    iget v2, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mMinFramesPerZoomOut:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    const-string v1, "transitionSeconds"

    iget v2, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mTransitionSeconds:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    const-string v1, "transitionSigma"

    iget v2, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mTransitionSigma:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    const-string v1, "enableDebugStream"

    iget-boolean v2, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mEnableDebugStream:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    const-string v1, "outputTransitionsOnly"

    iget-boolean v2, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mOutputTransitionsOnly:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 17
    .parameter "context"

    .prologue
    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    .line 158
    .local v3, frameManager:Landroid/filterfw/core/FrameManager;
    const-string v12, "image"

    invoke-virtual {p0, v12}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v4

    .line 159
    .local v4, imageFrame:Landroid/filterfw/core/Frame;
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v9

    .line 160
    .local v9, timestamp:J
    const-string v12, "faces"

    invoke-virtual {p0, v12}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 161
    .local v2, facesFrame:Landroid/filterfw/core/Frame;
    const-string v12, "lips"

    invoke-virtual {p0, v12}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v6

    .line 162
    .local v6, lipsFrame:Landroid/filterfw/core/Frame;
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    .line 163
    .local v5, inputFormat:Landroid/filterfw/core/FrameFormat;
    invoke-direct {p0, v5}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->setOutputFormat(Landroid/filterfw/core/FrameFormat;)V

    .line 166
    iget-object v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgramInputs:[Landroid/filterfw/core/Frame;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    .line 167
    iget-object v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgramInputs:[Landroid/filterfw/core/Frame;

    const/4 v13, 0x1

    aput-object v6, v12, v13

    .line 168
    iget-object v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mRegionFrameFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v3, v12}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v7

    .line 169
    .local v7, regionFrame:Landroid/filterfw/core/Frame;
    iget-object v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    iget-object v13, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgramInputs:[Landroid/filterfw/core/Frame;

    invoke-virtual {v12, v13, v7}, Landroid/filterfw/core/NativeProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 172
    invoke-direct {p0, v7}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->getSelectedRegion(Landroid/filterfw/core/Frame;)Landroid/filterfw/geometry/Quad;

    move-result-object v8

    .line 173
    .local v8, selectedRegion:Landroid/filterfw/geometry/Quad;
    invoke-virtual {v8}, Landroid/filterfw/geometry/Quad;->getBoundingWidth()F

    move-result v12

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-lez v12, :cond_4e

    invoke-virtual {v8}, Landroid/filterfw/geometry/Quad;->getBoundingHeight()F

    move-result v12

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_7f

    .line 175
    :cond_4e
    new-instance v12, Ljava/lang/RuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Illegal selected region size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Landroid/filterfw/geometry/Quad;->getBoundingWidth()F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " x "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Landroid/filterfw/geometry/Quad;->getBoundingHeight()F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 182
    :cond_7f
    iget-object v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mRenderRegionProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v12, v8}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 183
    const-wide/16 v12, -0x1

    cmp-long v12, v9, v12

    if-eqz v12, :cond_95

    .line 184
    iget-object v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    const-string v13, "timestamp"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    :cond_95
    iget-object v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v3, v12}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v11

    .line 187
    .local v11, zoomedImageFrame:Landroid/filterfw/core/Frame;
    iget-object v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mRenderRegionProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v12, v4, v11}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 190
    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 191
    const-string v12, "image"

    invoke-virtual {p0, v12, v11}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 192
    invoke-virtual {v11}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 194
    iget-boolean v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mEnableDebugStream:Z

    if-eqz v12, :cond_eb

    .line 195
    iget-object v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mSelectRegionProgram:Landroid/filterfw/core/NativeProgram;

    const-string v13, "debug"

    invoke-virtual {v12, v13}, Landroid/filterfw/core/NativeProgram;->getHostValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 197
    .local v1, debugString:Ljava/lang/String;
    iget-object v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mDebugFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v3, v12}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 198
    .local v0, debugFrame:Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_e0

    iget-boolean v12, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mOutputTransitionsOnly:Z

    if-eqz v12, :cond_e0

    .line 199
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    :cond_e0
    invoke-virtual {v0, v1}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    .line 202
    const-string v12, "debug"

    invoke-virtual {p0, v12, v0}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 203
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 205
    .end local v0           #debugFrame:Landroid/filterfw/core/Frame;
    .end local v1           #debugString:Ljava/lang/String;
    :cond_eb
    return-void
.end method

.method public setupPorts()V
    .registers 6

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 105
    invoke-static {v3, v3}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    .line 107
    .local v1, imageFormat:Landroid/filterfw/core/FrameFormat;
    const-class v3, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    invoke-static {v3, v4}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 109
    .local v0, facesFormat:Landroid/filterfw/core/FrameFormat;
    const-class v3, Lcom/google/android/filterpacks/facedetect/LipDiff;

    invoke-static {v3, v4}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v2

    .line 112
    .local v2, lipsFormat:Landroid/filterfw/core/FrameFormat;
    const-string v3, "image"

    invoke-virtual {p0, v3, v1}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 113
    const-string v3, "faces"

    invoke-virtual {p0, v3, v0}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 114
    const-string v3, "lips"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 115
    const-string v3, "image"

    const-string v4, "image"

    invoke-virtual {p0, v3, v4}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-boolean v3, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mEnableDebugStream:Z

    if-eqz v3, :cond_3c

    .line 117
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mDebugFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 118
    const-string v3, "debug"

    iget-object v4, p0, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->mDebugFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/filterpacks/facedetect/FaceZoomer;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 120
    :cond_3c
    return-void
.end method
