.class public Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;
.super Landroid/filterfw/core/Filter;
.source "FaceRegionMaskFilter.java"


# instance fields
.field private mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private maskFormatFor(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 5
    .parameter "format"

    .prologue
    const/4 v2, 0x1

    .line 66
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 67
    .local v0, maskFormat:Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v0, v2}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    .line 68
    const-string v1, "colorspace"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setMetaValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    return-object v0
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 6
    .parameter "portName"
    .parameter "inputFormat"

    .prologue
    .line 60
    const-string v0, "mask"

    if-ne p1, v0, :cond_9

    .line 61
    invoke-direct {p0, p2}, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->maskFormatFor(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    return-object v0

    .line 62
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown output port name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 74
    new-instance v0, Landroid/filterfw/core/NativeProgram;

    const-string v1, "filterpack_facedetect"

    const-string v2, "face_createmask"

    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 75
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 12
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    .line 80
    const-string v6, "image"

    invoke-virtual {p0, v6}, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v4

    .line 81
    .local v4, input:Landroid/filterfw/core/Frame;
    const-string v6, "faces"

    invoke-virtual {p0, v6}, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 83
    .local v0, facemetaFrame:Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    .line 85
    .local v1, faces:Lcom/google/android/filterpacks/facedetect/FaceMeta;
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    .line 88
    .local v3, inFormat:Landroid/filterfw/core/FrameFormat;
    iget-object v6, p0, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v7, "width"

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    iget-object v6, p0, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v7, "height"

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    iget-object v6, p0, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v7, "maskOnly"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    invoke-direct {p0, v3}, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->maskFormatFor(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v5

    .line 96
    .local v5, maskFrame:Landroid/filterfw/core/Frame;
    const/4 v6, 0x2

    new-array v2, v6, [Landroid/filterfw/core/Frame;

    const/4 v6, 0x0

    aput-object v4, v2, v6

    aput-object v0, v2, v9

    .line 97
    .local v2, frames:[Landroid/filterfw/core/Frame;
    iget-object v6, p0, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v6, v2, v5}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 100
    const-string v6, "mask"

    invoke-virtual {p0, v6, v5}, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 103
    invoke-virtual {v5}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 104
    return-void
.end method

.method public setupPorts()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 50
    const-string v1, "image"

    invoke-static {v3, v3}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 52
    const-class v1, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    invoke-static {v1, v3}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 54
    .local v0, facesFormat:Landroid/filterfw/core/FrameFormat;
    const-string v1, "faces"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 55
    const-string v1, "mask"

    const-string v2, "image"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method
