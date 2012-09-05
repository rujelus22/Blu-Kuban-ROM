.class public Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;
.super Landroid/filterfw/core/Filter;
.source "MultiFaceTrackerFilter.java"


# instance fields
.field private mInputChannels:I

.field private mInputHeight:I

.field private mInputWidth:I

.field private mIsInitialized:Z

.field private mProgram:Landroid/filterfw/core/NativeProgram;
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
                name = "numSkipFrames"
                type = I
            .end subannotation,
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "trackingError"
                type = F
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
                name = "quality"
                type = F
            .end subannotation,
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "smoothness"
                type = F
            .end subannotation,
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "mouthOnlySmoothing"
                type = I
            .end subannotation,
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "useAffineCorrection"
                type = I
            .end subannotation,
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "numChannelsDetector"
                type = I
            .end subannotation,
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "patchSize"
                type = I
            .end subannotation
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    .line 72
    iput-boolean v1, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mIsInitialized:Z

    .line 73
    iput v1, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputWidth:I

    .line 74
    iput v1, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputHeight:I

    .line 75
    iput v1, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputChannels:I

    .line 79
    return-void
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    invoke-virtual {v0}, Landroid/filterfw/core/NativeProgram;->reset()V

    .line 108
    :cond_9
    return-void
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 5
    .parameter "environment"

    .prologue
    .line 96
    new-instance v0, Landroid/filterfw/core/NativeProgram;

    const-string v1, "filterpack_facedetect"

    const-string v2, "multiface_tracker"

    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    .line 97
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->initProgramInputs(Landroid/filterfw/core/Program;Landroid/filterfw/core/FilterContext;)V

    .line 98
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 11
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 113
    const-string v5, "image"

    invoke-virtual {p0, v5}, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 116
    .local v1, input:Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 117
    .local v2, inputFormat:Landroid/filterfw/core/FrameFormat;
    iget-boolean v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mIsInitialized:Z

    if-nez v5, :cond_7e

    .line 118
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputWidth:I

    .line 119
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputHeight:I

    .line 120
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v5

    iput v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputChannels:I

    .line 121
    iget-object v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    const-string v7, "imgWidth"

    iget v8, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputWidth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    iget-object v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    const-string v7, "imgHeight"

    iget v8, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputHeight:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    iget-object v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    const-string v7, "imgChannels"

    iget v8, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputChannels:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mIsInitialized:Z

    .line 138
    :cond_4b
    :goto_4b
    iget-object v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    invoke-virtual {v5, v1, v6}, Landroid/filterfw/core/NativeProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 141
    iget-object v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    const-string v7, "num_faces"

    invoke-virtual {v5, v7}, Landroid/filterfw/core/NativeProgram;->getHostValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 142
    .local v0, faceCount:I
    const-class v5, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    const/4 v7, 0x2

    invoke-static {v5, v0, v7}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v4

    .line 145
    .local v4, outputFormat:Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 148
    .local v3, output:Landroid/filterfw/core/Frame;
    iget-object v7, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    move-object v5, v6

    check-cast v5, Landroid/filterfw/core/Frame;

    invoke-virtual {v7, v5, v3}, Landroid/filterfw/core/NativeProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 151
    const-string v5, "faces"

    invoke-virtual {p0, v5, v3}, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 154
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 155
    return-void

    .line 125
    .end local v0           #faceCount:I
    .end local v3           #output:Landroid/filterfw/core/Frame;
    .end local v4           #outputFormat:Landroid/filterfw/core/FrameFormat;
    :cond_7e
    iget v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputWidth:I

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v7

    if-ne v5, v7, :cond_96

    iget v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputHeight:I

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v7

    if-ne v5, v7, :cond_96

    iget v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputChannels:I

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v7

    if-eq v5, v7, :cond_4b

    .line 128
    :cond_96
    iget-object v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    invoke-virtual {v5}, Landroid/filterfw/core/NativeProgram;->reset()V

    .line 129
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputWidth:I

    .line 130
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputHeight:I

    .line 131
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v5

    iput v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputChannels:I

    .line 132
    iget-object v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    const-string v7, "imgWidth"

    iget v8, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputWidth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    iget-object v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    const-string v7, "imgHeight"

    iget v8, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputHeight:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    iget-object v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    const-string v7, "imgChannels"

    iget v8, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputChannels:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4b
.end method

.method public setupPorts()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 84
    const/4 v2, 0x1

    invoke-static {v2, v3}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 86
    .local v0, imageFormat:Landroid/filterfw/core/FrameFormat;
    const-class v2, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    invoke-static {v2, v3}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    .line 90
    .local v1, outputFormat:Landroid/filterfw/core/FrameFormat;
    const-string v2, "image"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 91
    const-string v2, "faces"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 92
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    invoke-virtual {v0}, Landroid/filterfw/core/NativeProgram;->tearDown()V

    .line 103
    :cond_9
    return-void
.end method
