.class public Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;
.super Landroid/filterfw/core/Filter;
.source "FaceMetaFixedRotationFilter.java"


# instance fields
.field private mRotation:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "rotation"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->mRotation:I

    .line 46
    return-void
.end method

.method private RotatePointInFrame(IFF)Landroid/filterfw/geometry/Point;
    .registers 7
    .parameter "rotation"
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v2, 0x3f80

    .line 113
    sparse-switch p1, :sswitch_data_24

    .line 119
    new-instance v0, Landroid/filterfw/geometry/Point;

    invoke-direct {v0, p2, p3}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    :goto_a
    return-object v0

    .line 114
    :sswitch_b
    new-instance v0, Landroid/filterfw/geometry/Point;

    sub-float v1, v2, p3

    invoke-direct {v0, v1, p2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    goto :goto_a

    .line 115
    :sswitch_13
    new-instance v0, Landroid/filterfw/geometry/Point;

    sub-float v1, v2, p2

    sub-float/2addr v2, p3

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    goto :goto_a

    .line 116
    :sswitch_1c
    new-instance v0, Landroid/filterfw/geometry/Point;

    sub-float v1, v2, p2

    invoke-direct {v0, p3, v1}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    goto :goto_a

    .line 113
    :sswitch_data_24
    .sparse-switch
        0x5a -> :sswitch_b
        0xb4 -> :sswitch_13
        0x10e -> :sswitch_1c
    .end sparse-switch
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 13
    .parameter "context"

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    .line 63
    .local v2, frameManager:Landroid/filterfw/core/FrameManager;
    const-string v8, "faces"

    invoke-virtual {p0, v8}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 64
    .local v1, facesFrame:Landroid/filterfw/core/Frame;
    iget v8, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->mRotation:I

    if-nez v8, :cond_14

    .line 65
    const-string v8, "faces"

    invoke-virtual {p0, v8, v1}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 111
    :goto_13
    return-void

    .line 70
    :cond_14
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    .line 71
    .local v0, faces:Lcom/google/android/filterpacks/facedetect/FaceMeta;
    const-class v8, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    invoke-virtual {v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    move-result v9

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v6

    .line 74
    .local v6, outputFormat:Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v2, v6}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v5

    .line 75
    .local v5, output:Landroid/filterfw/core/Frame;
    invoke-virtual {v5}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    .line 76
    .local v4, outfaces:Lcom/google/android/filterpacks/facedetect/FaceMeta;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_30
    invoke-virtual {v4}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    move-result v8

    if-ge v3, v8, :cond_e9

    .line 77
    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getId(I)I

    move-result v8

    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setId(II)V

    .line 78
    iget v8, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->mRotation:I

    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX0(I)F

    move-result v9

    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY0(I)F

    move-result v10

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->RotatePointInFrame(IFF)Landroid/filterfw/geometry/Point;

    move-result-object v7

    .line 79
    .local v7, p:Landroid/filterfw/geometry/Point;
    iget v8, v7, Landroid/filterfw/geometry/Point;->x:F

    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setFaceX0(IF)V

    .line 80
    iget v8, v7, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setFaceY0(IF)V

    .line 82
    iget v8, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->mRotation:I

    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX1(I)F

    move-result v9

    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY1(I)F

    move-result v10

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->RotatePointInFrame(IFF)Landroid/filterfw/geometry/Point;

    move-result-object v7

    .line 83
    iget v8, v7, Landroid/filterfw/geometry/Point;->x:F

    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setFaceX1(IF)V

    .line 84
    iget v8, v7, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setFaceY1(IF)V

    .line 86
    iget v8, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->mRotation:I

    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeX(I)F

    move-result v9

    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeY(I)F

    move-result v10

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->RotatePointInFrame(IFF)Landroid/filterfw/geometry/Point;

    move-result-object v7

    .line 87
    iget v8, v7, Landroid/filterfw/geometry/Point;->x:F

    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setLeftEyeX(IF)V

    .line 88
    iget v8, v7, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setLeftEyeY(IF)V

    .line 90
    iget v8, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->mRotation:I

    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeX(I)F

    move-result v9

    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeY(I)F

    move-result v10

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->RotatePointInFrame(IFF)Landroid/filterfw/geometry/Point;

    move-result-object v7

    .line 91
    iget v8, v7, Landroid/filterfw/geometry/Point;->x:F

    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setRightEyeX(IF)V

    .line 92
    iget v8, v7, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setRightEyeY(IF)V

    .line 94
    iget v8, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->mRotation:I

    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthX(I)F

    move-result v9

    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthY(I)F

    move-result v10

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->RotatePointInFrame(IFF)Landroid/filterfw/geometry/Point;

    move-result-object v7

    .line 95
    iget v8, v7, Landroid/filterfw/geometry/Point;->x:F

    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setMouthX(IF)V

    .line 96
    iget v8, v7, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setMouthY(IF)V

    .line 98
    iget v8, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->mRotation:I

    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getUpperLipX(I)F

    move-result v9

    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getUpperLipY(I)F

    move-result v10

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->RotatePointInFrame(IFF)Landroid/filterfw/geometry/Point;

    move-result-object v7

    .line 99
    iget v8, v7, Landroid/filterfw/geometry/Point;->x:F

    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setUpperLipX(IF)V

    .line 100
    iget v8, v7, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setUpperLipY(IF)V

    .line 102
    iget v8, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->mRotation:I

    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLowerLipX(I)F

    move-result v9

    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLowerLipY(I)F

    move-result v10

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->RotatePointInFrame(IFF)Landroid/filterfw/geometry/Point;

    move-result-object v7

    .line 103
    iget v8, v7, Landroid/filterfw/geometry/Point;->x:F

    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setLowerLipX(IF)V

    .line 104
    iget v8, v7, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setLowerLipY(IF)V

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_30

    .line 107
    .end local v7           #p:Landroid/filterfw/geometry/Point;
    :cond_e9
    const-string v8, "faces"

    invoke-virtual {p0, v8, v5}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 110
    invoke-virtual {v5}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    goto/16 :goto_13
.end method

.method public setupPorts()V
    .registers 4

    .prologue
    .line 51
    const-class v1, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 54
    .local v0, facesFormat:Landroid/filterfw/core/FrameFormat;
    const-string v1, "faces"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 55
    const-string v1, "faces"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 56
    return-void
.end method
