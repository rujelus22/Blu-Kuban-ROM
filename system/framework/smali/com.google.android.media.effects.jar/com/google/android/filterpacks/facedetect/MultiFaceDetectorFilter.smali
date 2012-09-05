.class public Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;
.super Landroid/filterfw/core/Filter;
.source "MultiFaceDetectorFilter.java"


# instance fields
.field private mInputChannels:I

.field private mInputHeight:I

.field private mInputWidth:I

.field private mIsInitialized:Z

.field private mProgram:Landroid/filterfw/core/Program;
    .annotation runtime Landroid/filterfw/core/GenerateProgramPorts;
        value = {
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "modulePath"
                type = Ljava/lang/String;
            .end subannotation,
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "ffModule"
                type = Ljava/lang/String;
            .end subannotation,
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "lmModule"
                type = Ljava/lang/String;
            .end subannotation,
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "minEyeDist"
                type = F
            .end subannotation,
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "rollRange"
                type = F
            .end subannotation,
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "numChannelsDetector"
                type = I
            .end subannotation
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 55
    iput-boolean v0, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->mIsInitialized:Z

    .line 56
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->mInputWidth:I

    .line 57
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->mInputHeight:I

    .line 58
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->mInputChannels:I

    .line 62
    return-void
.end method


# virtual methods
.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 5
    .parameter "environment"

    .prologue
    .line 79
    new-instance v0, Landroid/filterfw/core/NativeProgram;

    const-string v1, "filterpack_facedetect"

    const-string v2, "multiface_detector"

    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 80
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->initProgramInputs(Landroid/filterfw/core/Program;Landroid/filterfw/core/FilterContext;)V

    .line 81
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 11
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 86
    const-string v5, "image"

    invoke-virtual {p0, v5}, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 89
    .local v1, input:Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 90
    .local v2, inputFormat:Landroid/filterfw/core/FrameFormat;
    iget-boolean v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->mIsInitialized:Z

    if-nez v5, :cond_7e

    .line 91
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->mInputWidth:I

    .line 92
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->mInputHeight:I

    .line 93
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v5

    iput v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->mInputChannels:I

    .line 94
    iget-object v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v7, "imgWidth"

    iget v8, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->mInputWidth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    iget-object v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v7, "imgHeight"

    iget v8, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->mInputHeight:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    iget-object v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v7, "imgChannels"

    iget v8, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->mInputChannels:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->mIsInitialized:Z

    .line 106
    :cond_4b
    iget-object v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v5, v1, v6}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 109
    iget-object v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v7, "num_faces"

    invoke-virtual {v5, v7}, Landroid/filterfw/core/Program;->getHostValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 110
    .local v0, faceCount:I
    const-class v5, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    const/4 v7, 0x2

    invoke-static {v5, v0, v7}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v4

    .line 113
    .local v4, outputFormat:Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 116
    .local v3, output:Landroid/filterfw/core/Frame;
    iget-object v7, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->mProgram:Landroid/filterfw/core/Program;

    move-object v5, v6

    check-cast v5, Landroid/filterfw/core/Frame;

    invoke-virtual {v7, v5, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 119
    const-string v5, "faces"

    invoke-virtual {p0, v5, v3}, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 122
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 123
    return-void

    .line 98
    .end local v0           #faceCount:I
    .end local v3           #output:Landroid/filterfw/core/Frame;
    .end local v4           #outputFormat:Landroid/filterfw/core/FrameFormat;
    :cond_7e
    iget v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->mInputWidth:I

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v7

    if-ne v5, v7, :cond_96

    iget v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->mInputHeight:I

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v7

    if-ne v5, v7, :cond_96

    iget v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->mInputChannels:I

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v7

    if-eq v5, v7, :cond_4b

    .line 101
    :cond_96
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "MultiFaceDetectorFilter does not support varying frame input sizes!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public setupPorts()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 67
    const/4 v2, 0x1

    invoke-static {v2, v3}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 69
    .local v0, imageFormat:Landroid/filterfw/core/FrameFormat;
    const-class v2, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    invoke-static {v2, v3}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    .line 73
    .local v1, outputFormat:Landroid/filterfw/core/FrameFormat;
    const-string v2, "image"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 74
    const-string v2, "faces"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/filterpacks/facedetect/MultiFaceDetectorFilter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 75
    return-void
.end method
